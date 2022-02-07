package com.nhom10.broadstore.control.admin;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nhom10.broadstore.bean.Category;
import com.nhom10.broadstore.emun.LocalDateTimeSerializer;
import com.nhom10.broadstore.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet(value = "/Admin-Category")
public class CategoryControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");
        String rId = req.getParameter("id");
        if (rId != null) {
            int id = Integer.parseInt(rId);
            Category category = ProductService.findCatById(id);
            GsonBuilder gsonBuilder = new GsonBuilder();
            gsonBuilder.registerTypeAdapter(LocalDateTime.class, new LocalDateTimeSerializer());
            Gson gson = gsonBuilder.setPrettyPrinting().create();
            String json = gson.toJson(category);
            resp.getWriter().write(json);
        } else {
            List<Category> listCat = ProductService.getAllCategory();
            req.setAttribute("listCat", listCat);
            RequestDispatcher rd = req.getRequestDispatcher("admin/categorys.jsp");
            rd.forward(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");
        int id = 0;
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
        category.setId(id);
        category.setName(name);
        category.setDesc(desc);

        if (id == 0) {

            try {
                ProductService.newCategory(category);
                resp.getWriter().write("Thêm danh mục thành công");
            } catch (Exception e) {
                resp.getWriter().write("Thêm danh mục không thành công");
            }
        } else {
            System.out.println("edit");
            try {
                ProductService.editCat(category);
                resp.getWriter().write("Chỉnh sửa danh mục thành công");
            } catch (Exception e) {
                System.out.println(e);
                resp.getWriter().write("Chỉnh sửa danh mục không thành công");
            }
        }


    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(req.getParameter("id"));
        try {
            ProductService.deleteCat(id);
            resp.getWriter().write("Xóa danh mục thành công");
        } catch (Exception e) {
            resp.getWriter().write("Xóa danh mục không thành công");
        }

    }
}
