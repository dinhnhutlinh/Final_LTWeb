package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.beans.Product;
import com.nhom10.broadstore.services.ProductService;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns = "/search")

public class SearchPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String keyword = req.getParameter("keyword");
        ProductService productService = new ProductService();
        List<Product> findOut = productService.searchByName(keyword);
        req.setAttribute("keyword", keyword);
        req.setAttribute("findOut", findOut);
        req.setAttribute("total", findOut.size());


        RequestDispatcher rd = req.getRequestDispatcher("search.jsp");
        rd.forward(req, resp);
    }
}
