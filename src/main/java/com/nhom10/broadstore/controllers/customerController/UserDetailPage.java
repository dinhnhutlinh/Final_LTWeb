package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.beans.Order;
import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.services.OrderServices;
import com.nhom10.broadstore.util.Define;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/user_detail")
public class UserDetailPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);
        if(user==null){
            resp.sendRedirect("Login");
            return;
        }
        OrderServices orderServices = new OrderServices();
        List<Order> orders = orderServices.findByCustomerId(user.getId());
        req.setAttribute("user", user);
        System.out.println(user.toString());
        req.setAttribute("orders", orders);
        RequestDispatcher rd = req.getRequestDispatcher("user_detail.jsp");
        rd.forward(req, resp);
    }
}
