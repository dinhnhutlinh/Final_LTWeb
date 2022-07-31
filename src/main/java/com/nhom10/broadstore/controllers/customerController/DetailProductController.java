package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.beans.Product;
import com.nhom10.broadstore.services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/DetailProduct")
public class DetailProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idProduct = String.valueOf(request.getParameter("idproduct"));

        Product product = ProductService.getInstance().getProductById(idProduct);
//        request.setAttribute("mess", product.toString());
        request.setAttribute("product", product);
        request.getRequestDispatcher("product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
