package com.nhom10.broadstore.controllers;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nhom10.broadstore.beans.Category;
import com.nhom10.broadstore.services.CategoryService;
import com.nhom10.broadstore.util.JsonUtil;
import com.nhom10.broadstore.util.StringUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet(urlPatterns = "/CategoryController")
public class CategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String action = req.getParameter("action");

        if (action.equalsIgnoreCase("all")) {
            CategoryService categoryService = new CategoryService();
            List<Category> categoryList = categoryService.getAllCategory();
            PrintWriter printWriter = resp.getWriter();
            printWriter.println(new JsonUtil().toJSon(categoryList));
            printWriter.flush();
            printWriter.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Update");
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String desc = req.getParameter("desc");

        CategoryService categoryService = new CategoryService();
        Category category = new Category();
        category.setId(id);
        category.setName(name);
        category.setDesc(desc);
        PrintWriter printWriter = resp.getWriter();

        try {
            if (id == null || id.equals("")) {
                id = StringUtil.genIDWithLength(10);
                category.setId(id);
                System.out.println(category);
                categoryService.insert(category);
                printWriter.println("Insert Success");
            } else {
                // update
                categoryService.update(category);
                printWriter.println("Update Success");
            }

            printWriter.flush();
            printWriter.close();
        } catch (Exception e) {
            System.out.println(e);
            resp.setStatus(400);
            printWriter.println("Error");
            printWriter.close();
        }
        // insert


    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        CategoryService categoryService = new CategoryService();
        PrintWriter printWriter = resp.getWriter();
        try {
            categoryService.deleteCat(id);

            printWriter.println("Delete Done");
            printWriter.close();
        } catch (Exception e) {
            resp.setStatus(400);
            printWriter.println("Error");
            printWriter.close();
        }
    }
}
