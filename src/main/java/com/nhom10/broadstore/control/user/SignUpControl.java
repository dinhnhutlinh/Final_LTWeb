package com.nhom10.broadstore.control.user;

import com.nhom10.broadstore.service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Encoded;
import java.io.IOException;

@WebServlet(urlPatterns = "/SignUp")
public class SignUpControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("signup.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String firstname = req.getParameter("firstname").trim() ;
        String lastname = req.getParameter("lastname").trim();
        String phone = req.getParameter("phone").trim();
        String email = req.getParameter("email").trim();
        String password = req.getParameter("password").trim();
        String mess = UserService.createAcc(firstname, lastname, email, phone, password);
        if (mess.equals("Success")) {
            resp.sendRedirect("Login");
        } else if (mess.equals("Email is exit")) {
            req.setAttribute("mess", mess);
            RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
            rd.forward(req, resp);
        } else {
            req.setAttribute("mess", "Tạo tài khoản không thành công");
            RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
            rd.forward(req, resp);
        }
    }
}
