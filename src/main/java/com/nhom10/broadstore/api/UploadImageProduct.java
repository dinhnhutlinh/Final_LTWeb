package com.nhom10.broadstore.api;

import com.nhom10.broadstore.beans.ImageProduct;
import com.nhom10.broadstore.services.ProductService;
import com.nhom10.broadstore.util.Define;
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
import java.time.LocalDateTime;
import java.util.List;

@WebServlet(urlPatterns = "/UploadImageProduct")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class UploadImageProduct extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");
        ProductService productService = new ProductService();
        List<String> imageProducts = UploadFileHelper.uploadFile(Define.productFolder + File.separator + id, req, "imageProducts");
        System.out.println(imageProducts);
        for (String img : imageProducts) {
            ImageProduct imageProduct = new ImageProduct();
            imageProduct.setId(StringUtil.genIDWithLength(10));
            imageProduct.setLink(img);
            imageProduct.setProductId(id);
            imageProduct.setCreateAt(LocalDateTime.now());
            imageProduct.setUpdateAt(LocalDateTime.now());
            productService.insertImage(imageProduct);
        }

    }
}
