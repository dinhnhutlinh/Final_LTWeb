package com.nhom10.broadstore.controllers;

import com.nhom10.broadstore.beans.Blog;
import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.services.BlogService;
import com.nhom10.broadstore.services.ImageFromPartService;
import com.nhom10.broadstore.util.Define;
import com.nhom10.broadstore.util.JsonUtil;
import com.nhom10.broadstore.util.StringUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/BlogController")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class BlogController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action.equalsIgnoreCase("all")) {
            BlogService BlogService = new BlogService();
            List<Blog> BlogList = BlogService.getAllBlog();
            PrintWriter printWriter = resp.getWriter();
            printWriter.println(new JsonUtil().toJSon(BlogList));
            printWriter.flush();
            printWriter.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        boolean isInsert = true;
        String id = req.getParameter("id");
        String title = req.getParameter("title");
        Part image = req.getPart("image");
        String content = req.getParameter("content");

        BlogService blogService = new BlogService();
        PrintWriter printWriter = resp.getWriter();
        Blog blog = new Blog();
        User admin = (User) session.getAttribute(Define.userSession);

        try {
            if (id == null || id.equals(""))
                id = StringUtil.genIDWithLength(10);
            else
                isInsert = false;


            blog.setId(id);
            blog.setTitle(title);

            if (image != null) {
                System.out.println("OK");
                String path = ImageFromPartService.storeBlogImage(image, getServletContext().getRealPath(Define.blogImageFolder), id);
                blog.setImage(path);
            } else {
                System.out.println("loi");
            }
            blog.setAdminId(admin.getId());
            blog.setContent(content);
            if (isInsert)
                blogService.insert(blog);
            else blogService.update(blog);
        } catch (Exception e) {
            System.out.println(e);
            resp.setStatus(400);
            printWriter.println("Error");
            printWriter.close();
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        BlogService BlogService = new BlogService();
        PrintWriter printWriter = resp.getWriter();
        try {
            BlogService.delete(id);
            printWriter.println("Delete Done");
            printWriter.close();
        } catch (Exception e) {
            resp.setStatus(400);
            printWriter.println("Error");
            printWriter.close();
        }
    }
}
