package com.nhom10.broadstore.api;

import com.nhom10.broadstore.beans.ResponseModel;
import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.services.UserService;
import com.nhom10.broadstore.util.JsonUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/CustomerController")
public class CustomerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action.equalsIgnoreCase("all")) {
            UserService userService = new UserService();
            List<User> users = userService.listCustomer();
            PrintWriter printWriter = resp.getWriter();
            printWriter.println(new JsonUtil().toJSon(users));
            printWriter.flush();
            printWriter.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter printWriter = resp.getWriter();

        String id = req.getParameter("id");
        String active = req.getParameter("active");
        UserService userService = new UserService();

        try {
            userService.setActiveAdmin(id, Integer.parseInt(active));
            printWriter.println(new JsonUtil().toJSon(new ResponseModel<String>(200, "Success !!!", null)));
            printWriter.close();
        } catch (Exception e) {
            resp.setStatus(400);
            printWriter.println("Error");
            printWriter.close();
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");
        UserService userService = new UserService();
        PrintWriter printWriter = resp.getWriter();
        try {
            userService.deleteCustomer(id);
            printWriter.println("Delete Done");
            printWriter.close();
        } catch (Exception e) {
            resp.setStatus(400);
            printWriter.println("Error");
            printWriter.close();
        }
    }
}
