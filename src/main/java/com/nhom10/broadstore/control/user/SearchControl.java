package com.nhom10.broadstore.control.user;

import com.nhom10.broadstore.bean.Product;
import com.nhom10.broadstore.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/Search")
public class SearchControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String page = req.getParameter("page");
        String keyword = req.getParameter("search").trim();
        int limit = 32;
        int currentPage;
        if (page == null)
            currentPage = 1;
        else
            currentPage = Integer.parseInt(page);

        int count = ProductService.countProductWithKeyword(keyword);
        req.setAttribute("total", count);
        List<Product> findOut = ProductService.searchProductWithKeyword(keyword, currentPage, limit);
        int totalPage = (int) Math.round((double) count / limit);

        req.setAttribute("findOut", findOut);
        req.setAttribute("currentPage", currentPage);
        req.setAttribute("totalPage", totalPage);
        RequestDispatcher rd = req.getRequestDispatcher("search.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
