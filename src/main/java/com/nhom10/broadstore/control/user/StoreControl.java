package com.nhom10.broadstore.control.user;

import com.nhom10.broadstore.bean.Category;
import com.nhom10.broadstore.bean.Product;
import com.nhom10.broadstore.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/Store")
public class StoreControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String rCategory = req.getParameter("cat");
        String rSort = req.getParameter("sort");
        String rPrice = req.getParameter("price");
        String rOld = req.getParameter("old");
        String page = req.getParameter("page");
        int limit = 30;
        int currentPage;
        int count = 0;
        int price = 0;
        int old = 0;
        List<Product> findOut = null;

        if (rSort == null || rSort == "new") {
            rSort = "p.update_at DESC";
            rSort = "new";
        } else if (rSort == "price")
            rSort = "p.price DESC";
        else
            rSort = "p.price ASC";

        if (rPrice == null)
            price = 0;

        if (rOld == null)
            old = 0;

        if (page == null)
            currentPage = 1;
        else
            currentPage = Integer.parseInt(page);


        List<Category> listCat = ProductService.getAllCategory();

        if (rCategory.equals("all") || rCategory == null) {
            count = ProductService.countProductWithAll(price, old);
            findOut = ProductService.getProductAll(price, old, rSort, limit, currentPage);
        }
        if (rCategory.equals("sale")) {
            count = ProductService.countProductWithSale(price, old);
            findOut = ProductService.getProductSale(price, old, rSort, limit, currentPage);

        }
        int totalPage = (int) Math.round((double) count / limit);
        req.setAttribute("total", count);
        req.setAttribute("findOut", findOut);
        req.setAttribute("currentPage", currentPage);
        req.setAttribute("totalPage", totalPage);

        req.setAttribute("listCat", listCat);
        req.setAttribute("sort", rSort);
        req.setAttribute("price", rPrice);
        req.setAttribute("old", rOld);
        RequestDispatcher rd = req.getRequestDispatcher("store.jsp");
        rd.forward(req, resp);
    }
}
