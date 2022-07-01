package com.nhom10.broadstore.controllers;

import com.nhom10.broadstore.beans.Category;
import com.nhom10.broadstore.services.CategoryService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/Admin-Categories")
public class AdminCategoriesController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategoryService categoryService= new CategoryService();

        List<Category> categoryList=categoryService.getAllCategory();

        req.setAttribute("listCat",categoryList);
        RequestDispatcher rd = req.getRequestDispatcher("admin/categories.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
