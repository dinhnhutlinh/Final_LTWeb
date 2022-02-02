package com.nhom10.broadstore.control;

import com.nhom10.broadstore.bean.UserSession;
import com.nhom10.broadstore.emun.Role;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(value = "/Logout")
public class LogoutControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        UserSession userSession = (UserSession) session.getAttribute("user");

        if (userSession.getRole() == Role.ADMIN) {
            session.setAttribute("user", null);
            resp.sendRedirect("Login");
        } else {
            session.setAttribute("user", null);
            resp.sendRedirect(req.getContextPath());
        }
    }
}
