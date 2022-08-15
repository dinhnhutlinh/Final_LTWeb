package com.nhom10.broadstore.controllers.customerController;

import com.nhom10.broadstore.beans.Category;
import com.nhom10.broadstore.beans.Product;
import com.nhom10.broadstore.services.CategoryService;
import com.nhom10.broadstore.services.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(urlPatterns = "/Store")
public class StorePage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cat = req.getParameter("cat");
        String sortBy = req.getParameter("sort");
        String old = req.getParameter("old");

        CategoryService categoryService = new CategoryService();
        ProductService productService = new ProductService();
        List<Category> categories = categoryService.getAllCategory();
        req.setAttribute("categories", categories);
        List<Product> products;
        if (cat == null || cat.equals("all")) {
            products = productService.list();

        } else {
            products = productService.findByCategoryId(cat);
        }
        if (old != null) {
            products = products.stream().filter(product -> product.getMinAge() >= Integer.parseInt(old.trim())).collect(Collectors.toList());
        }
        if (sortBy != null && sortBy.equalsIgnoreCase("-price")) {
            products = products.stream().sorted((product, t1) -> product.getPrice() > t1.getPrice() ? -1 : 1).
                    collect(Collectors.toList());
        } else {
            products = products.stream().sorted((product, t1) -> product.getPrice() > t1.getPrice() ? 1 : -1).
                    collect(Collectors.toList());
        }
        req.setAttribute("products", products);
        RequestDispatcher rd = req.getRequestDispatcher("store.jsp");
        rd.forward(req, resp);

    }
}
