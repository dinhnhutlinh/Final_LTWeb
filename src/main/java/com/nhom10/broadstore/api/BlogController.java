package com.nhom10.broadstore.api;

import com.google.gson.Gson;
import com.nhom10.broadstore.beans.Blog;
import com.nhom10.broadstore.beans.ResponseModel;
import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.services.BlogService;
import com.nhom10.broadstore.util.Define;
import com.nhom10.broadstore.util.JsonUtil;
import com.nhom10.broadstore.util.StringUtil;
import com.nhom10.broadstore.util.UploadFileHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
            List<Blog> blogList = BlogService.getAllBlog();
            // ghi dư liệu
            PrintWriter printWriter = resp.getWriter();
            // ghi dư lieh vô
            printWriter.println(new JsonUtil().toJSon(blogList));
            printWriter.flush();
            printWriter.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);

        String id = req.getParameter("id");
        String title = req.getParameter("title");

        String content = req.getParameter("content");

        BlogService blogService = new BlogService();
        PrintWriter printWriter = resp.getWriter();

        User admin = (User) session.getAttribute(Define.userSession);

        try {
            Blog blog = blogService.findById(id);
            boolean isInsert = blog == null;
            if (blog == null) {
                blog = new Blog();
                blog.setId(StringUtil.genIDWithLength(8));
            } else blog.setId(id);
            blog.setTitle(title);
            blog.setAdminId("admin");
//        blog.setAdminId(admin.getId());
            blog.setContent(content);
            if (isInsert)
                blogService.insert(blog);
            else blogService.update(blog);

            // update image
            List<String> images = UploadFileHelper.uploadFile(Define.blogImageFolder + "/" + blog.getId(), req, "image");

            if (images != null) {
                blogService.updateImage(blog.getId(), images.get(0));
                blog.setImage(images.get(0));
            }

            printWriter.println(new Gson().toJson(new ResponseModel<Blog>(200, "Success !!!", blog)));
            printWriter.close();
        } catch (Exception e) {
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
