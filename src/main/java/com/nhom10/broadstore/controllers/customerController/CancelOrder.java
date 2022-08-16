package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.beans.Order;
import com.nhom10.broadstore.services.OrderServices;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/cancel_order")
public class CancelOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        OrderServices orderServices = new OrderServices();
        Order order = orderServices.findById(id);
        if (order.getStatus() == 0) {
            orderServices.cancelOrder(order);
            req.setAttribute("mess", "Order canceled success");
        } else {
            req.setAttribute("mess", "Order canceled fail");
        }

        RequestDispatcher rd = req.getRequestDispatcher("success.jsp");
        rd.forward(req, resp);
    }
}
