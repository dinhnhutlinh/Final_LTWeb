package com.nhom10.broadstore.controllers;

import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.emun.Role;
import com.nhom10.broadstore.services.PasswordHash;
import com.nhom10.broadstore.services.UserService;
import com.nhom10.broadstore.util.StringUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

@WebServlet(urlPatterns = "/SignUp")
public class SignUpController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService us = new UserService();

        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String email = request.getParameter("email");
        int numberPhone = 0;
        boolean isNumPhone = false;
        try {

            numberPhone = Integer.parseInt(request.getParameter("phone"));
            isNumPhone = true;
        } catch (Exception e) {
            isNumPhone=false;
        }
        String password = request.getParameter("password");
        String rePassword = request.getParameter("re_password");
        if(!isNumPhone){
            request.setAttribute("mess", "Error number phone!");
            RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
            rd.forward(request, response);
        }
        else if (us.isContainUserWithEmail(email)) {
            request.setAttribute("mess", "Email exist!");
            RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
            rd.forward(request, response);
        } else if (!password.equals(rePassword)) {
            request.setAttribute("mess", "Invalid password!");
            RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
            rd.forward(request, response);

        } else {


            User user;
            try {
                user = new User(StringUtil.genIDWithLength(10), firstName, lastName, null, PasswordHash.createHash(password), null, numberPhone + "", email, null, null, 1, Role.CUSTOMER);
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            } catch (InvalidKeySpecException e) {
                throw new RuntimeException(e);
            }
            us.signUp(user);


//        response.sendRedirect("Home");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);

        }
    }
}