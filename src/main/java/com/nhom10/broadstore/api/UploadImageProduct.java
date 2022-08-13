package com.nhom10.broadstore.api;

import com.nhom10.broadstore.beans.ImageProduct;
import com.nhom10.broadstore.services.ProductService;
import com.nhom10.broadstore.util.Define;
import com.nhom10.broadstore.util.StringUtil;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Collection;
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
        System.out.println("Upload");
        Collection<Part> parts = req.getParts();
        for (Part part : parts) {
            System.out.println(part.getName());
        }

        if (ServletFileUpload.isMultipartContent(req)) {
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(req);

                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {

                        String name = new File(item.getName()).getName();
                        System.out.println(name);
                        String link = Define.productFolder + File.separator + id + File.separator + name;
                        item.write(new File(link));
                        ImageProduct imageProduct = new ImageProduct();
                        imageProduct.setId(StringUtil.genIDWithLength(10));
                        imageProduct.setLink(link);
                        imageProduct.setProductId(id);
                        imageProduct.setCreateAt(LocalDateTime.now());
                        imageProduct.setUpdateAt(LocalDateTime.now());
                        productService.insertImage(imageProduct);
                    }
                }

                //File uploaded successfully

            } catch (Exception ex) {
//                request.setAttribute("message", "File Upload Failed due to " + ex);


            }
        }
    }
}