package com.nhom10.broadstore.api;

import com.nhom10.broadstore.beans.Product;
import com.nhom10.broadstore.services.ProductService;
import com.nhom10.broadstore.util.JsonUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/ProductController")
public class ProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        String id = req.getParameter("id");
        PrintWriter printWriter = resp.getWriter();
        ProductService productService = new ProductService();

        if (action.equalsIgnoreCase("all")) {
            List<Product> products = productService.list();
            printWriter.println(new JsonUtil().toJSon(products));
        }
        if (id != null) {
            Product product = productService.findById(id);
            printWriter.print(new JsonUtil().toJSon(product));
        }
        printWriter.close();
    }


}
