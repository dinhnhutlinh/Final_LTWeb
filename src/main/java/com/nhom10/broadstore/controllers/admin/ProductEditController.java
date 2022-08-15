package com.nhom10.broadstore.controllers.admin;

import com.nhom10.broadstore.beans.*;
import com.nhom10.broadstore.emun.Role;
import com.nhom10.broadstore.services.CategoryService;
import com.nhom10.broadstore.services.DiscountService;
import com.nhom10.broadstore.services.ProducerService;
import com.nhom10.broadstore.services.ProductService;
import com.nhom10.broadstore.util.Define;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/product_edit")
public class ProductEditController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        User user = (User) session.getAttribute(Define.userSession);
        if(user==null || user.getRole()== Role.CUSTOMER){
            resp.sendRedirect("Login");
            return;
        }
        String id = req.getParameter("id");
        ProductService productService= new ProductService();
        CategoryService categoryService= new CategoryService();
        ProducerService producerService= new ProducerService();
        DiscountService discountService= new DiscountService();


        if (id!=null){
            Product product= productService.findById(id);
            req.setAttribute("product",product);

            if(product!=null){
                List<ImageProduct> imageProducts= productService.findImageByProductId(product.getId());
                req.setAttribute("imageProducts",imageProducts);
            }
        }
        List<Discount> discountList= discountService.getAllDiscount();
        List<Producer> producers= producerService.getAllProducer();
        List<Category> categories= categoryService.getAllCategory();

        req.setAttribute("discounts",discountList);
        req.setAttribute("producers",producers);
        req.setAttribute("categories",categories);

        RequestDispatcher rd = req.getRequestDispatcher("admin/product_edit.jsp");
        rd.forward(req, resp);
    }
}
