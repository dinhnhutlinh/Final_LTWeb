package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.beans.Cart;
import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.emun.Role;
import com.nhom10.broadstore.services.CartService;
import com.nhom10.broadstore.services.PasswordHash;
import com.nhom10.broadstore.services.UserService;
import com.nhom10.broadstore.util.Define;
import com.nhom10.broadstore.util.MailHelper;
import com.nhom10.broadstore.util.StringUtil;

import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;

@WebServlet(urlPatterns = "/SignUp")
public class SignUpPage extends HttpServlet {
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
            isNumPhone = false;
        }
        String password = request.getParameter("password");
        String rePassword = request.getParameter("re_password");
        if (!isNumPhone) {
            request.setAttribute("mess", "Error number phone!");
            RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
            rd.forward(request, response);
        } else if (us.isContainUserWithEmail(email)) {
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
                user = new User(StringUtil.genIDWithLength(10), lastName, firstName, "img/avatar.png", PasswordHash.createHash(password), "", request.getParameter("phone"), email, null, null, 0, Role.CUSTOMER);
                MailHelper.sendActiveUserMail(user.getMail(), Define.domain+"active?id=" + user.getId());
                request.setAttribute("mess", "Check your mail to active");
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            } catch (InvalidKeySpecException e) {
                throw new RuntimeException(e);
            } catch (MessagingException e) {
                throw new RuntimeException(e);
            }
            us.signUp(user);
            CartService.getInstance().createCart(new Cart(StringUtil.genIDWithLength(10), user.getId(), 0, null, null, new ArrayList<>()));
//        response.sendRedirect("Home");
            RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
            rd.forward(request, response);

        }
    }
}
