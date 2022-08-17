package com.nhom10.broadstore.controllers;

import com.nhom10.broadstore.beans.Category;
import com.nhom10.broadstore.beans.Product;
import com.nhom10.broadstore.beans.Slider;
import com.nhom10.broadstore.services.CategoryService;
import com.nhom10.broadstore.services.ProductService;
import com.nhom10.broadstore.services.SliderService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns = "/Home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategoryService categoryService = new CategoryService();
        ProductService productService = new ProductService();
        SliderService sliderService = new SliderService();
        List<Category> categories = categoryService.getAllCategory();
        List<Slider> sliders = sliderService.getAllSlider();

        req.setAttribute("sliders", sliders);

        Map<String, List<Product>> map = new HashMap<>();

        for (Category category : categories) {
            List<Product> products = productService.findByCategoryId(category.getId());
            map.put(category.getName(), products);
        }

        req.setAttribute("map", map);
        RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}