package com.nhom10.broadstore.control.user;

import com.nhom10.broadstore.bean.Product;
import com.nhom10.broadstore.bean.Rating;
import com.nhom10.broadstore.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/Product")
public class ProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        System.out.println(id);
        Product product = ProductService.findProductById(id);
        float rating = ProductService.ratingProductById(id);
        List<Rating> rateOfUser = ProductService.getRatingOfUserByProductId(id);
        req.setAttribute("product", product);
//        req.setAttribute("rating", rating);
//        req.setAttribute("rateOfUser", rateOfUser);
        RequestDispatcher rd = req.getRequestDispatcher("product.jsp");
        rd.forward(req, resp);
    }
}
