package com.nhom10.broadstore.api;

import com.nhom10.broadstore.beans.Product;
import com.nhom10.broadstore.services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/load")
public class SeeMoreProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      int countProduct = Integer.parseInt(request.getParameter("exits"));
      int from=countProduct;
        List<Product> list = null;
        PrintWriter pr = response.getWriter();
        list= ProductService.getInstance().list();
        for (int i = from; i < from+9; i++
        ) {
            Product p= list.get(i);
            pr.println("     <div class=\"item col-md-4 col-xs-6\">\n" +
                    "                                <div class=\"product\">\n" +
                    "                                    <div class=\"product-img zoom d-flex justify-content-center\">\n" +
                    "                                        <img src=\"" + p.getImgDisplay() + "\" style=\"width: 200px; height: 250px\"/>\n" +
                    "                                    </div>\n" +
                    "                                    <div class=\"product-body\">\n" +
                    "                                        <h3 class=\"product-name\"><a href=\"DetailProduct?idproduct=" + p.getId() + "\">" + p.getName() + "</a>\n" +
                    "                                        </h3>\n" +
                    "                                        <h4 class=\"product-price\">" + p.getPrice() + " $\n" +
                    "\n" +
                    "                                        </h4>\n" +
                    "                                        <div class=\"product-rating\">\n" +
                    "                                            <i class=\"fa fa-star\"></i>\n" +
                    "                                            <i class=\"fa fa-star\"></i>\n" +
                    "                                            <i class=\"fa fa-star\"></i>\n" +
                    "                                            <i class=\"fa fa-star\"></i>\n" +
                    "                                            <i class=\"fa fa-star\"></i>\n" +
                    "                                        </div>\n" +
                    "                                        <div class=\"add-to-cart\">\n" +
                    "                                            <a href=\"AddToCart?idproduct=" + p.getId() + "\">   <button class=\"d-none d-xl-block add-to-cart-btn w-100\">Add to cart\n" +
                    "                                            </button></a>\n" +
                    "                                            <button class=\"d-xl-none add-to-cart-btn w-100\"><i\n" +
                    "                                                    class=\"fa fa-shopping-cart m-auto\" aria-hidden=\"true\"></i>\n" +
                    "                                            </button>\n" +
                    "                                        </div>\n" +
                    "                                    </div>\n" +
                    "\n" +
                    "                                </div>\n" +
                    "                            </div>");
        }
        pr.flush();
        pr.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
