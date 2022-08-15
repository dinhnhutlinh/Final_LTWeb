package com.nhom10.broadstore.controllers.customerController;

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

@WebServlet(urlPatterns = "/AddToCart")
public class AddToCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter printWriter = response.getWriter();
        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);
        System.out.println(user);
        if (user == null) {
            response.setStatus(404);
            printWriter.println(new JsonUtil().toJSon(new ResponseModel(404, "You must login to add cart", "")));
            printWriter.close();

        } else {

            Cart cart = CartService.getInstance().getCart(user.getId());
            String productId = String.valueOf(request.getParameter("productId"));
            Product product = ProductService.getInstance().findById(productId);

            List<CartItem> cartItems = cart.getCartItemList();

            if (cartItems.stream().anyMatch(cartItem -> cartItem.getProductId().equals(productId))) {
                System.out.println("old");
                CartItem cartItem = cartItems.stream().filter(cartItem1 -> cartItem1.getProductId().equals(productId)).findFirst().get();
                if (product.getInventory() >= cartItem.getQuantity() + 1) {
                    CartService.getInstance().updateQty(cart.getId(), productId, cartItem.getQuantity() + 1, (cartItem.getQuantity() + 1) * product.getPriceWasDiscount());
                    printWriter.println(new JsonUtil().toJSon(new ResponseModel(200, "Product " + product.getName() + " was add in your cart", 0)));
                    printWriter.close();
                } else {
                    printWriter.println(new JsonUtil().toJSon(new ResponseModel(201, "Product out of stock", "")));
                    printWriter.close();
                }
            } else {
                System.out.println(product);
                if (product.getInventory() > 0) {
                    CartService.getInstance().insertCartItem(new CartItem(cart.getId(), productId, 1, 1 * product.getPriceWasDiscount()));
                    printWriter.println(new JsonUtil().toJSon(new ResponseModel(200, "Product " + product.getName() + " was add in your cart", 0)));
                    printWriter.close();
                } else {
                    printWriter.println(new JsonUtil().toJSon(new ResponseModel(201, "Product out of stock", "")));
                    printWriter.close();
                }
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
