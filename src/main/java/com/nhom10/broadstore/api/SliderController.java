package com.nhom10.broadstore.api;

import com.google.gson.Gson;
import com.nhom10.broadstore.beans.ResponseModel;
import com.nhom10.broadstore.beans.Slider;
import com.nhom10.broadstore.services.BlogService;
import com.nhom10.broadstore.services.SliderService;
import com.nhom10.broadstore.util.Define;
import com.nhom10.broadstore.util.JsonUtil;
import com.nhom10.broadstore.util.StringUtil;
import com.nhom10.broadstore.util.UploadFileHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/SliderController")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class SliderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action.equalsIgnoreCase("all")) {
            SliderService sliderService = new SliderService();
            List<Slider> sliderList = sliderService.getAllSlider();
            PrintWriter printWriter = resp.getWriter();
            printWriter.println(new JsonUtil().toJSon(sliderList));
            printWriter.flush();
            printWriter.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter printWriter = resp.getWriter();
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String link = req.getParameter("link");

        SliderService sliderService = new SliderService();
        try {
            Slider slider = sliderService.findById(id);
            boolean
                    isNew = slider == null;
            if (isNew) {
                slider = new Slider();
                slider.setId(StringUtil.genIDWithLength(8));
            } else slider.setId(id);

            slider.setName(name);
            slider.setLink(link);

            if (isNew) {
                sliderService.insert(slider);
            } else {
                sliderService.update(slider);
            }

            List<String> images = UploadFileHelper.uploadFile(Define.sliderFolder + File.separator + slider.getId(), req, "image");
            if (images != null&& images.size()!=0) {
                sliderService.updateImage(slider.getId(), images.get(0));
                slider.setImage(images.get(0));
            }
            printWriter.println(new Gson().toJson(new ResponseModel<Slider>(200, "Success !!!", slider)));
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
        SliderService sliderService = new SliderService();
        PrintWriter printWriter = resp.getWriter();
        try {
            sliderService.delete(id);
            printWriter.println("Delete Done");
            printWriter.close();
        } catch (Exception e) {
            resp.setStatus(400);
            printWriter.println("Error");
            printWriter.close();
        }
    }
}
