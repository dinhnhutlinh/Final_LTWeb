package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.beans.Cart;
import com.nhom10.broadstore.beans.ResponseModel;
import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.services.CartService;
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

@WebServlet(urlPatterns = "/CartQty")
public class CartQty extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter printWriter = resp.getWriter();
        HttpSession session = req.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);

        if (user == null) {
            printWriter.println(new JsonUtil().toJSon(new ResponseModel(404, "You must login to add cart", 0)));
            printWriter.close();
        } else {
            Cart cart = CartService.getInstance().getCart(user.getId());
            int total = cart.getTotal();
            printWriter.println(new JsonUtil().toJSon(new ResponseModel(404, "You must login to add cart", total)));
            printWriter.close();
        }
        printWriter.close();
    }
}
