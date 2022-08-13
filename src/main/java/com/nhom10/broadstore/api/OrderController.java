package com.nhom10.broadstore.api;

import com.nhom10.broadstore.beans.Order;
import com.nhom10.broadstore.services.OrderServices;
import com.nhom10.broadstore.util.JsonUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/OrderController")
public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        PrintWriter printWriter = resp.getWriter();
        if (action.equalsIgnoreCase("all")) {
            OrderServices orderService = new OrderServices();
            List<Order> orders= orderService.list();
            System.out.println(orders==null);
            System.out.println(orders.toString());
            printWriter.println(new JsonUtil().toJSon(orders));
        }
        printWriter.close();
    }
}
