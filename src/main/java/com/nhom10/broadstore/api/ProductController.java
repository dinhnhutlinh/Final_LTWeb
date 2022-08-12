package com.nhom10.broadstore.api;

import com.nhom10.broadstore.beans.ImageProduct;
import com.nhom10.broadstore.beans.Product;
import com.nhom10.broadstore.beans.ResponseModel;
import com.nhom10.broadstore.services.ProductService;
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
import java.time.LocalDateTime;
import java.util.List;

@WebServlet(urlPatterns = "/ProductController")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class ProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        String id = req.getParameter("id");
        PrintWriter printWriter = resp.getWriter();
        ProductService productService = new ProductService();

        if (action.equalsIgnoreCase("all")) {
            List<Product> products = productService.list();
            printWriter.println(new JsonUtil().toJSon(products));
        }
        if (id != null) {
            Product product = productService.findById(id);
            printWriter.print(new JsonUtil().toJSon(product));
        }
        printWriter.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter printWriter = resp.getWriter();
//        try {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price") != null ? req.getParameter("price") : "-1");
        int minAge = Integer.parseInt(req.getParameter("minAge") != null ? req.getParameter("minAge") : "-1");
        int minPlayer = Integer.parseInt(req.getParameter("minPlayer") != null ? req.getParameter("minPlayer") : "-1");
        int maxPlayer = Integer.parseInt(req.getParameter("maxPlayer") != null ? req.getParameter("maxPlayer") : "-1");
        int minPlaytime = Integer.parseInt(req.getParameter("minPlaytime") != null ? req.getParameter("minPlaytime") : "-1");
        int maxPlaytime = Integer.parseInt(req.getParameter("maxPlaytime") != null ? req.getParameter("maxPlaytime") : "-1");
        String desc = req.getParameter("desc");

        double weightAmount = Double.parseDouble(req.getParameter("weightAmount") != null ? req.getParameter("weightAmount") : "-1");
        String weightUnits = req.getParameter("weightUnits");
        double sizeHeight = Double.parseDouble(req.getParameter("sizeHeight") != null ? req.getParameter("sizeHeight") : "-1");
        double sizeDepth = Double.parseDouble(req.getParameter("sizeDepth") != null ? req.getParameter("sizeDepth") : "-1");
        String sizeUnits = req.getParameter("sizeUnits");
        int active = Integer.parseInt(req.getParameter("active") != null ? req.getParameter("active") : "0");
        int inventory = Integer.parseInt(req.getParameter("inventory") != null ? req.getParameter("inventory") : "0");
        String producerId = req.getParameter("producerId");
        String categoryId = req.getParameter("categoryId");
        String discountId = req.getParameter("discountId");

        ProductService productService = new ProductService();

        Product product = new Product();
        boolean productIsNew = true;
        System.out.println(id.equals(""));
        if (id != null && !id.equalsIgnoreCase("")) {
            productIsNew = false;

            product = productService.findById(id);
            System.out.println(product);
        } else {
            product.setId(StringUtil.genIDWithLength(10));
        }
        product.setName(name);
        product.setPrice(price);
        product.setMinAge(minAge);
        product.setMinPlayer(minPlayer);
        product.setMaxPlayer(maxPlayer);
        product.setMinPlaytime(minPlaytime);
        product.setMaxPlaytime(maxPlaytime);
        product.setDesc(desc);

        product.setWeightAmount(weightAmount);
        product.setWeightUnits(weightUnits);
        product.setSizeHeight(sizeHeight);
        product.setSizeDepth(sizeDepth);
        product.setSizeUnits(sizeUnits);
        product.setActive(active);
        product.setInventory(inventory);
        product.setProducerId(producerId);
        product.setCategoryId(categoryId);
        product.setDiscountId(discountId);


        List<String> imgDisplay = UploadFileHelper.uploadFile(Define.productImageDisplayFolder, req, "imgDisplay");
        if (imgDisplay != null && imgDisplay.size() == 1) {
            product.setImgDisplay(imgDisplay.get(0));
        }
        System.out.println(imgDisplay);
        if (productIsNew) {
            productService.insertProduct(product);
        } else {
            productService.updateProduct(product);
        }
        ResponseModel<Product> responseModel = new ResponseModel();
        responseModel.setMess("Success");
        responseModel.setData(product);

        printWriter.print(new JsonUtil().toJSon(responseModel));
//        } catch (Exception e) {
//            System.out.println(e);
//            resp.setStatus(404);
//            ResponseModel responseModel = new ResponseModel();
//            responseModel.setStatus(404);
//            responseModel.setMess("Delete fail");
//            printWriter.print(new JsonUtil().toJSon(responseModel));
//        }

    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        PrintWriter printWriter = resp.getWriter();
        ProductService productService = new ProductService();
        ResponseModel responseModel = new ResponseModel();
        if (id != null) {
            try {
                productService.delete(id);

                responseModel.setStatus(200);
                responseModel.setMess("Delete success");
                printWriter.print(new JsonUtil().toJSon(responseModel));
            } catch (Exception e) {

                responseModel.setStatus(404);
                responseModel.setMess("Delete fail");
                printWriter.print(new JsonUtil().toJSon(responseModel));
            }
        }
        printWriter.close();
    }
}
