package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.beans.Cart;
import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.services.CartService;
import com.nhom10.broadstore.util.Define;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/cart")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter printWriter = resp.getWriter();
        HttpSession session = req.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);

        if (user == null) {
            req.setAttribute("mess", "You need login");
            RequestDispatcher rd = req.getRequestDispatcher("success.jsp");
            rd.forward(req, resp);
            return;
        }

        Cart cart = CartService.getInstance().getCart(user.getId());
        req.setAttribute("cart", cart);

        RequestDispatcher rd = req.getRequestDispatcher("cart.jsp");
        rd.forward(req, resp);

    }
}
