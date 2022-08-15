package com.nhom10.broadstore.api;

import com.nhom10.broadstore.beans.*;
import com.nhom10.broadstore.services.CartService;
import com.nhom10.broadstore.services.ProductService;
import com.nhom10.broadstore.util.Define;
import com.nhom10.broadstore.util.JsonUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/CartController")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter printWriter = resp.getWriter();
        HttpSession session = req.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);
        Cart cart = CartService.getInstance().getCart(user.getId());
        printWriter.println(new JsonUtil().toJSon(cart));
        printWriter.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CartService cartService = new CartService();

        String productId = req.getParameter("productId");
        System.out.println(productId);
        System.out.println(req.getParameter("qty"));
        int quantity = Integer.parseInt(req.getParameter("qty"));

        PrintWriter printWriter = resp.getWriter();
        HttpSession session = req.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);
        Cart cart = CartService.getInstance().getCart(user.getId());

        Product product = ProductService.getInstance().findById(productId);

        List<CartItem> cartItems = cart.getCartItemList();

        if (cartItems.stream().anyMatch(cartItem -> cartItem.getProductId().equals(productId))) {

            CartItem cartItem = cartItems.stream().filter(cartItem1 -> cartItem1.getProductId().equals(productId)).findFirst().get();
            if (product.getInventory() >= quantity) {
                if (quantity != 0)
                    CartService.getInstance().updateQty(cart.getId(), productId, quantity, (quantity) * product.getPriceWasDiscount());
                else {
                    cartService.deleteCartItem(cartItem.getCartId(), cartItem.getProductId());
                }
            } else {
                resp.setStatus(404);
                printWriter.println(new JsonUtil().toJSon(new ResponseModel(201, "Product out of stock", "")));
            }
        }
        printWriter.close();

    }
}
