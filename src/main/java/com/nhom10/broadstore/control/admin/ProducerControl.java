package com.nhom10.broadstore.control.admin;

import com.nhom10.broadstore.bean.Discount;
import com.nhom10.broadstore.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet(urlPatterns = "/Admin-Discount", name = "Admin-Discount")
public class DiscountControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        if (id == null) {
            List<Discount> disList = ProductService.getAllDiscount();
            req.setAttribute("disList", disList);
            RequestDispatcher rd = req.getRequestDispatcher("admin/discount.jsp");
            rd.forward(req, resp);
        } else if (id.equals("new")) {
            Discount discount = new Discount();
            discount.setId(0);
            req.setAttribute("dis", discount);
            RequestDispatcher rd = req.getRequestDispatcher("admin/discountDetail.jsp");
            rd.forward(req, resp);
        } else {
            int idNumber = Integer.parseInt(id);
            Discount dis = ProductService.getDiscountById(idNumber);
            req.setAttribute("dis", dis);
            RequestDispatcher rd = req.getRequestDispatcher("admin/discountDetail.jsp");
            rd.forward(req, resp);
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");

        int id = Integer.parseInt(req.getParameter("id"));
        if (id == 0) {
            String name = req.getParameter("name");
            String desc = req.getParameter("desc");
            int discountPercent = Integer.parseInt(req.getParameter("discountPercent"));
            int active = Integer.parseInt(req.getParameter("active"));
            String formAt = req.getParameter("formAt");
            String endAt = req.getParameter("endAt");

            Discount discount = new Discount();
            discount.setId(id);
            discount.setName(name);
            discount.setDesc(desc);
            discount.setDiscountPercent(discountPercent);
            discount.setActive(active);
            LocalDateTime dateTime = LocalDate.parse(formAt).atStartOfDay();
            discount.setFromAt(dateTime);
            dateTime = LocalDate.parse(endAt).atStartOfDay();
            discount.setEndAt(dateTime);
            try {
                ProductService.createDiscount(discount);
                resp.getWriter().write("Chỉnh sửa giảm giá thành công");
            } catch (Exception e) {
                resp.getWriter().write("Chỉnh sữa giảm giá không thành công");
            }
        } else {
            String name = req.getParameter("name");
            String desc = req.getParameter("desc");
            int discountPercent = Integer.parseInt(req.getParameter("discountPercent"));
            System.out.println(req.getParameter("active"));
            int active = Integer.parseInt(req.getParameter("active"));

            String formAt = req.getParameter("formAt");
            String endAt = req.getParameter("endAt");

            Discount discount = new Discount();
            discount.setId(id);
            discount.setName(name);
            discount.setDesc(desc);
            discount.setDiscountPercent(discountPercent);
            discount.setActive(active);

            LocalDateTime dateTime = LocalDate.parse(formAt).atStartOfDay();
            discount.setFromAt(dateTime);
            dateTime = LocalDate.parse(endAt).atStartOfDay();
            discount.setEndAt(dateTime);
            try {

                ProductService.editDiscount(discount);

                resp.getWriter().write("Thêm giảm giá thành công");
            } catch (Exception e) {
                resp.getWriter().write("Thêm sữa giảm giá không thành công");
            }
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");

        try {
            int id = Integer.parseInt(req.getParameter("id"));
            ProductService.deleteDiscount(id);
            resp.getWriter().write("Xóa giảm giá thành công");
        } catch (Exception e) {
            resp.getWriter().write("Xóa giảm giá không thành công");
        }
    }
}
