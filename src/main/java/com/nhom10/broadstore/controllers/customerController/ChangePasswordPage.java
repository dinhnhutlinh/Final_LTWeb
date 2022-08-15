package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.services.PasswordHash;
import com.nhom10.broadstore.services.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

@WebServlet(urlPatterns = "/change_password")
public class ChangePasswordPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("change_password.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String password = req.getParameter("password");
        String repassword = req.getParameter("repassword");

        if (!password.equals(repassword)) {
            req.setAttribute("mess", "Password not same");
        } else {
            UserService userService = new UserService();
            try {
                userService.changePassword(id, PasswordHash.createHash(password));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            } catch (InvalidKeySpecException e) {
                throw new RuntimeException(e);
            }
            req.setAttribute("mess", "Password was change");
        }


        RequestDispatcher rd = req.getRequestDispatcher("change_password.jsp");
        rd.forward(req, resp);
    }
}
