package com.nhom10.broadstore.controllers.admin;

import com.nhom10.broadstore.beans.Order;
import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.emun.Role;
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

@WebServlet(urlPatterns = "/order_edit")
public class OrderEditController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);
        if (user == null || user.getRole() == Role.CUSTOMER) {
            resp.sendRedirect("Login");
            return;
        }
        String id = req.getParameter("id");
        OrderServices orderServices = new OrderServices();
        Order order = orderServices.findById(id);

        req.setAttribute("order", order);
        System.out.println(order.getTotal());
        RequestDispatcher rd = req.getRequestDispatcher("admin/order_edit.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");

        int status = Integer.parseInt(req.getParameter("status") != null ? req.getParameter("status") : "-1");
        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String address = req.getParameter("address");

        OrderServices orderServices = new OrderServices();
        Order order = orderServices.findById(id);
        order.setStatus(status);
        order.setName(name);
        order.setPhone(phone);
        order.setAddress(address);

        if (status == 1) {
            orderServices.cancelOrder(order);
        } else {
            orderServices.update(order);
        }
        String mess = "Success";
        req.setAttribute("mess", mess);
        req.setAttribute("order", order);
        RequestDispatcher rd = req.getRequestDispatcher("admin/order_edit.jsp");
        rd.forward(req, resp);
    }
}
