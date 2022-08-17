package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.services.UserService;
import com.nhom10.broadstore.util.Define;
import com.nhom10.broadstore.util.MailHelper;

import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/forget_password")
public class ForgetPasswordPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("forget_password.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        UserService userService = new UserService();
        boolean isExits = userService.isContainUserWithEmail(email);
        if (isExits) {

            String user = userService.findWithEmail(email);
            try {
                MailHelper.sendResetPassword(email, Define.domain + "change_password?id=" + user);
            } catch (MessagingException e) {
                System.out.println(e);
                throw new RuntimeException(e);
            }
            req.setAttribute("mess", "Check your mail post");
        } else {
            req.setAttribute("mess", "Don\'t found user with email");
        }
        RequestDispatcher rd = req.getRequestDispatcher("forget_password.jsp");
        rd.forward(req, resp);
    }
}
