package com.nhom10.broadstore.control.admin;

import com.nhom10.broadstore.bean.*;
import com.nhom10.broadstore.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/Admin-Product")
public class ProductDetail extends HttpServlet {
    private List<Category> listCat;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pareId = req.getParameter("id");
        List<Status> listStatus = ProductService.getAllStatus();
        List<Category> listCat = ProductService.getAllCategory();
        List<Discount> listDis = ProductService.getAllDiscount();
        List<Producer> listProd = ProductService.getAllProducer();

        if (pareId != null) {
            int id = Integer.parseInt(pareId);
            Product product = ProductService.findProductById(id);
            req.setAttribute("title", "Chỉnh sửa sản phẩm");
            req.setAttribute("product", product);
        } else {
            req.setAttribute("title", "Thêm sản phẩm");
        }
        req.setAttribute("listStatus", listStatus);
        req.setAttribute("listCat", listCat);
        req.setAttribute("listDis", listDis);
        req.setAttribute("listProd", listProd);

        RequestDispatcher rd = req.getRequestDispatcher("admin/product.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
