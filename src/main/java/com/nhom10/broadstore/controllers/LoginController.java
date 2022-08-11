package com.nhom10.broadstore.controllers;

import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.emun.Role;
import com.nhom10.broadstore.services.UserService;
import com.nhom10.broadstore.util.Define;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.GeneralSecurityException;

@WebServlet(urlPatterns = "/Login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserService userService = new UserService();

        if (userService.isContainUserWithEmail(email)) {

            User user = null;
            try {
                user = userService.login(email, password);
            } catch (GeneralSecurityException e) {
                throw new RuntimeException(e);
            }
            if (user == null) {
                req.setAttribute("mess", "Email or password is wrong!!!");
                RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
                rd.forward(req, resp);
            } else {
                HttpSession session = req.getSession(true);
                session.setAttribute(Define.userSession, user);
                if (user.getRole() == Role.ADMIN) {
                    resp.sendRedirect("dashboard");
                } else {
                    resp.sendRedirect("Home");
                }
            }
        } else {
            req.setAttribute("mess", "Don't have account with your email!!!");
            RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
            rd.forward(req, resp);
        }
    }
}
