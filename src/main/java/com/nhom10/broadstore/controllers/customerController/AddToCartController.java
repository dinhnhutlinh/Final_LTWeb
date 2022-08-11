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

@WebServlet(urlPatterns = "/AddToCart")
public class AddToCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);
//System.out.println(user.getId());

        String cartId = CartService.getInstance().getCart(user.getId()).getId();
        System.out.println(cartId);
        String productId = String.valueOf(request.getParameter("idproduct"));
        System.out.println(productId);
        Product product= ProductService.getInstance().getProductById(productId);
        System.out.println(product);
        int qty = Integer.parseInt(String.valueOf(request.getParameter("qty")));
        CartService.getInstance().insertCartItem(new CartItem(cartId, productId,qty, qty*product.getPrice()));

//        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
