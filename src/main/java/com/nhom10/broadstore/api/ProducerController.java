package com.nhom10.broadstore.api;

import com.nhom10.broadstore.beans.ExceptionModel;
import com.nhom10.broadstore.beans.Producer;
import com.nhom10.broadstore.services.ProducerService;
import com.nhom10.broadstore.util.JsonUtil;
import com.nhom10.broadstore.util.StringUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/ProducerController")
public class ProducerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action.equalsIgnoreCase("all")) {
            ProducerService producerService = new ProducerService();
            List<Producer> producer = producerService.getAllProducer();
            PrintWriter printWriter = resp.getWriter();
            printWriter.println(new JsonUtil().toJSon(producer));
            printWriter.flush();
            printWriter.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String address= req.getParameter("address");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");


        PrintWriter printWriter = resp.getWriter();

        ProducerService producerService = new ProducerService();
        Producer producer = new Producer();

        try {
            producer.setId(id);
            producer.setName(name);
            producer.setEmail(email);
            producer.setAddress(address);
            producer.setPhone(phone);
        } catch (Exception e) {
            resp.setStatus(400);
            printWriter.println(new ExceptionModel(e.toString()));
            printWriter.close();
        }
        System.out.println(producer);
        try {
            if (id == null || id.equals("")) {
                id = StringUtil.genIDWithLength(10);
                producer.setId(id);
                producerService.insert(producer);
                printWriter.println("Insert Success");
            } else {
                // update
                producerService.update(producer);
                printWriter.println("Update Success");
            }
            printWriter.close();
        } catch (Exception e) {
            System.out.println(e);
            resp.setStatus(400);
            printWriter.close();
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        ProducerService producerService = new ProducerService();
        PrintWriter printWriter = resp.getWriter();
        try {
            producerService.delete(id);
            printWriter.println("Delete Done");
            printWriter.close();
        } catch (Exception e) {
            resp.setStatus(400);
            printWriter.println("Error");
            printWriter.close();
        }
    }
}
