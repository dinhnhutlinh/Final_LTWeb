package com.nhom10.broadstore.control.admin;

import com.nhom10.broadstore.bean.Customer;
import com.nhom10.broadstore.service.CustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/Admin-Customer")
public class CustomerDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Customer customer = CustomerService.findById(id);
        System.out.println(customer);
        if (customer == null)
            resp.sendRedirect("Admin-Customers");
        req.setAttribute("customer", customer);
        RequestDispatcher rd = req.getRequestDispatcher("admin/customer.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
