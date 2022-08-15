package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.services.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/active")
public class ActivePage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        req.setAttribute("mess", "Active success");
        UserService userService = new UserService();
        userService.setActiveCustomer(id, 1);
        RequestDispatcher rd = req.getRequestDispatcher("success.jsp");
        rd.forward(req, resp);
    }
}
