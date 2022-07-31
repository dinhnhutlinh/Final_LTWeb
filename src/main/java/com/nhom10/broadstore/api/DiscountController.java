package com.nhom10.broadstore.api;

import com.nhom10.broadstore.beans.Discount;
import com.nhom10.broadstore.beans.ExceptionModel;
import com.nhom10.broadstore.services.DiscountService;
import com.nhom10.broadstore.util.JsonUtil;
import com.nhom10.broadstore.util.StringUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet(urlPatterns = "/DiscountController")
public class DiscountController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action.equalsIgnoreCase("all")) {
            DiscountService discountService = new DiscountService();
            List<Discount> discounts = discountService.getAllDiscount();
            PrintWriter printWriter = resp.getWriter();
            printWriter.println(new JsonUtil().toJSon(discounts));
            printWriter.flush();
            printWriter.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String active = req.getParameter("active");
        String desc = req.getParameter("desc");
        String discountPercent = req.getParameter("discountPercent");
        String startAt = req.getParameter("startAt");
        String finishAt = req.getParameter("finishAt");

        PrintWriter printWriter = resp.getWriter();

        DiscountService discountService = new DiscountService();
        Discount discount = new Discount();

        try {
            discount.setId(id);
            discount.setName(name);
            discount.setDesc(desc);
            discount.setDiscountPercent(Double.parseDouble(discountPercent));
            discount.setActive(Integer.parseInt(active));
            discount.setStartAt(
                    LocalDateTime.parse(startAt));
            discount.setFinishAt(LocalDateTime.parse(finishAt));
        } catch (Exception e) {
            resp.setStatus(400);
            printWriter.println(new ExceptionModel(e.toString()));
            printWriter.close();
        }


        try {
            if (id == null || id.equals("")) {
                id = StringUtil.genIDWithLength(10);
                discount.setId(id);
                discountService.insert(discount);
                printWriter.println("Insert Success");
            } else {
                // update
                discountService.update(discount);
                printWriter.println("Update Success");
            }
            printWriter.flush();
            printWriter.close();
        } catch (Exception e) {
            System.out.println(e);
            resp.setStatus(400);
            printWriter.println("Error");
            printWriter.close();
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        DiscountService discountService = new DiscountService();
        PrintWriter printWriter = resp.getWriter();
        try {
            discountService.delete(id);
            printWriter.println("Delete Done");
            printWriter.close();
        } catch (Exception e) {
            resp.setStatus(400);
            printWriter.println("Error");
            printWriter.close();
        }
    }
}
