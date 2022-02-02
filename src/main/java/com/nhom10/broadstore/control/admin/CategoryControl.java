package com.nhom10.broadstore.control.admin;

import com.nhom10.broadstore.bean.Category;
import com.nhom10.broadstore.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/Admin-Category")
public class CategoryControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Category> listCat = ProductService.getAllCategory();
        req.setAttribute("listCat", listCat);
        RequestDispatcher rd = req.getRequestDispatcher("admin/categorys.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        int id;
        String name;
        String desc;
        name = req.getParameter("name");
        desc = req.getParameter("desc");
        try {
            id = Integer.parseInt(req.getParameter("id"));
        } catch (Exception e) {
            id = 0;
        }
        Category category = new Category();
        category.setName(name);
        category.setDesc(desc);
        int newID = ProductService.newCategory(category);
        System.out.println(newID);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id;
        String name;
        String desc;
        name = req.getParameter("name");
        desc = req.getParameter("desc");
        try {
            id = Integer.parseInt(req.getParameter("id"));
        } catch (Exception e) {
            id = 0;
        }
        Category category = new Category();
        category.setName(name);
        category.setDesc(desc);
        int newID = ProductService.edit(category);
        System.out.println(newID);
    }
}
