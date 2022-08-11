package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.beans.CartItem;
import com.nhom10.broadstore.beans.Product;
import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.services.CartService;
import com.nhom10.broadstore.services.ProductService;
import com.nhom10.broadstore.util.Define;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/Header")
public class HeaderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);
        String cartId = CartService.getInstance().getCart(user.getId()).getId();
        String productId = String.valueOf(request.getParameter("idproduct"));
        Product product= ProductService.getInstance().getProductById(productId);
        int qty = Integer.parseInt(request.getParameter("qty"));
        CartService.getInstance().insertCartItem(new CartItem(cartId, productId,qty, qty*product.getPrice()));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
