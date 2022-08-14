package com.nhom10.broadstore.api;

import com.nhom10.broadstore.beans.Cart;
import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.services.CartService;
import com.nhom10.broadstore.util.Define;
import com.nhom10.broadstore.util.JsonUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

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
}
