package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.beans.Product;
import com.nhom10.broadstore.services.ImageService;
import com.nhom10.broadstore.services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(urlPatterns = "/product")
public class DetailProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = String.valueOf(request.getParameter("id"));
        Product product = ProductService.getInstance().findById(productId);

        List<String> images = ImageService.getInstance().getImagesProduct(productId).stream().map(imageProduct -> imageProduct.getLink()).collect(Collectors.toList());
        System.out.println(product);
        request.setAttribute("product", product);
        request.setAttribute("images", images);
        request.getRequestDispatcher("product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
