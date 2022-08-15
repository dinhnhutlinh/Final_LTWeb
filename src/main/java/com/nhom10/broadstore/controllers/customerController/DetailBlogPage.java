package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.beans.Blog;
import com.nhom10.broadstore.services.BlogService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/DetailBlog")
public class DetailBlogPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String blogId = String.valueOf(request.getParameter("id"));
        BlogService blogService = new BlogService();
        Blog blog = blogService.findById(blogId);
        request.setAttribute("blog", blog);
        request.getRequestDispatcher("blog_detail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
