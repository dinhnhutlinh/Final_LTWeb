package com.nhom10.broadstore.api;

import com.nhom10.broadstore.beans.ResponseModel;
import com.nhom10.broadstore.util.JsonUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/ResetPassword")
public class ResetPasswordController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        PrintWriter printWriter = resp.getWriter();
        // todo sent mail

        printWriter.println(new JsonUtil().toJSon(new ResponseModel<String>(200, "Check your mail !!!", null)));
        printWriter.close();
    }
}
