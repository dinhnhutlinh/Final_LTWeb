package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.beans.*;
import com.nhom10.broadstore.services.CartService;
import com.nhom10.broadstore.services.OrderServices;
import com.nhom10.broadstore.util.Define;
import com.nhom10.broadstore.util.StringUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(urlPatterns = "/checkout")
public class CheckOutPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);
        Cart cart = CartService.getInstance().getCart(user.getId());
        req.setAttribute("cart", cart);
        RequestDispatcher rd = req.getRequestDispatcher("checkout.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);
        if (user == null) {
            resp.sendRedirect("Login");
            return;
        }
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String city = req.getParameter("city");
        String district = req.getParameter("district");
        String address = req.getParameter("address");
        Cart cart = CartService.getInstance().getCart(user.getId());
        req.setAttribute("cart", cart);

        if (name.equals("") || email.equals("") || phone.equals("") || city.equals("") || district.equals("") || address.equals("")) {
            req.setAttribute("cart", cart);
            req.setAttribute("mess", "Field is not empty");
        } else {
            Order order = new Order();
            order.setId(StringUtil.genIDWithLength(10));
            order.setName(name);
            order.setCustomerId(user.getId());
            order.setPhone(phone);
            order.setEmail(email);
            order.setStatus(OrderStatus.TRANSMISSION);
            order.setAddress(address + " " + district + " " + city);

            boolean isValue = cart.getCartItemList().stream().allMatch(cartItem -> cartItem.getQuantity() <= cartItem.getProduct().getInventory());
            if (isValue) {
                List<OrderItem> orderItems = cart.getCartItemList().stream().map(cartItem -> {
                    OrderItem orderItem = new OrderItem();
                    orderItem.setOrderId(order.getId());
                    orderItem.setPrice(cartItem.getPrice());
                    orderItem.setProductId(cartItem.getProductId());
                    orderItem.setProduct(cartItem.getProduct());
                    orderItem.setQuantity(cartItem.getQuantity());
                    return orderItem;
                }).collect(Collectors.toList());
                order.setTotal(cart.getTotalPrice());
                order.setShipPrice(2);
                order.setOrderItems(orderItems);
                OrderServices orderServices = new OrderServices();
                orderServices.insert(order);
                CartService cartService = new CartService();
                cartService.setCartEmpty(cart);

                req.setAttribute("mess", "Order success");
                RequestDispatcher rd = req.getRequestDispatcher("success.jsp");
                rd.forward(req, resp);
                return;
            } else {
                req.setAttribute("mess", "Some item is out of stock");
            }
        }
        RequestDispatcher rd = req.getRequestDispatcher("checkout.jsp");
        rd.forward(req, resp);
    }
}
