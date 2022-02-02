package com.nhom10.broadstore.control;

import com.nhom10.broadstore.bean.UserSession;
import com.nhom10.broadstore.emun.Role;
import com.nhom10.broadstore.service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/Login")
public class LoginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("mess", "");
        RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email").trim();
        String password = req.getParameter("password").trim();
        UserSession userSession = UserService.login(email, password);
        HttpSession session = req.getSession(true);
        if (userSession == null) {
            req.setAttribute("mess", "Tài khoản hoặc mật khẩu không chính xác");
            RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
            rd.forward(req, resp);
        } else {
            session.setAttribute("user", userSession);
            if (userSession.getRole() == Role.ADMIN) {
                resp.sendRedirect("Admin-DashBroad");
            } else {
                resp.sendRedirect("Home");
            }
        }

    }
}
