package com.nhom10.broadstore.controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class ErrorHandler extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter printWriter = resp.getWriter();

        String html = "<html>\n" +
                "<head>\n" +
                "<title>Simple 404 Error Page Design</title>\n" +
                "<link href=\"https://fonts.googleapis.com/css?family=Roboto:700\" rel=\"stylesheet\">\n" +
                "<style>\n" +
                "h1{\n" +
                "font-size:80px;\n" +
                "font-weight:800;\n" +
                "text-align:center;\n" +
                "font-family: 'Roboto', sans-serif;\n" +
                "}\n" +
                "h2\n" +
                "{\n" +
                "font-size:25px;\n" +
                "text-align:center;\n" +
                "font-family: 'Roboto', sans-serif;\n" +
                "margin-top:-40px;\n" +
                "}\n" +
                "p{\n" +
                "text-align:center;\n" +
                "font-family: 'Roboto', sans-serif;\n" +
                "font-size:12px;\n" +
                "}\n" +
                "\n" +
                ".container\n" +
                "{\n" +
                "width:300px;\n" +
                "margin: 0 auto;\n" +
                "margin-top:15%;\n" +
                "}\n" +
                "</style>\n" +
                "</head>\n" +
                "<body>\n" +
                "<div class=\"container\">\n" +
                "<h1>404</h1>\n" +
                "<h2>Page Not Found</h2>\n" +
                "<p>The Page you are looking for doesn't exist or an other error occured. Go to <a href=\"Home\">Home Page.</a></p>\n" +
                "</div>\n" +
                "</body>\n" +
                "</html>";
        printWriter.println(html);
        printWriter.close();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
