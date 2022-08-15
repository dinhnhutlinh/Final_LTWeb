package com.nhom10.broadstore.controllers.admin;

import com.nhom10.broadstore.beans.Blog;
import com.nhom10.broadstore.beans.Slider;
import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.emun.Role;
import com.nhom10.broadstore.services.BlogService;
import com.nhom10.broadstore.services.SliderService;
import com.nhom10.broadstore.util.Define;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/slider_edit")
public class SliderEditController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);
        if(user==null || user.getRole()== Role.CUSTOMER){
            resp.sendRedirect("Login");
            return;
        }
        String id = req.getParameter("id");
        SliderService service = new SliderService();
        Slider slider = service.findById(id);
        req.setAttribute("slider", slider);

        RequestDispatcher rd = req.getRequestDispatcher("admin/slider_edit.jsp");
        rd.forward(req, resp);
    }
}
