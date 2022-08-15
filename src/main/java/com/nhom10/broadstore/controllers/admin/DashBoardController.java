package com.nhom10.broadstore.controllers.admin;

import com.nhom10.broadstore.beans.Order;
import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.emun.Role;
import com.nhom10.broadstore.services.CategoryService;
import com.nhom10.broadstore.services.OrderServices;
import com.nhom10.broadstore.services.ProductService;
import com.nhom10.broadstore.services.UserService;
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

@WebServlet(urlPatterns = "/dashboard")
public class DashBoardController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);
        if(user==null || user.getRole()== Role.CUSTOMER){
            resp.sendRedirect("Login");
            return;
        }
        OrderServices orderServices = new OrderServices();
        List<Order> orders = orderServices.list();
        int countOrder = orders.size();
        ProductService productService = new ProductService();
        int countProduct = productService.list().size();
        CategoryService categoryService = new CategoryService();
        int countCategory = categoryService.getAllCategory().size();
        UserService userService = new UserService();
        List<User> customers = userService.listCustomer();
        int countCustomer = customers.size();

        req.setAttribute("countCategory", countCategory);
        req.setAttribute("countProduct", countProduct);
        req.setAttribute("countOrder", countOrder);
        req.setAttribute("countCustomer", countCustomer);
        req.setAttribute("orders", orders);
        req.setAttribute("customers", customers);

        System.out.println(countCategory);
        RequestDispatcher rd = req.getRequestDispatcher("admin/dashboard.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
