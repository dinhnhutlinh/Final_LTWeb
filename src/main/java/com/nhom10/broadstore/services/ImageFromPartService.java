package com.nhom10.broadstore.services;

import com.nhom10.broadstore.util.Define;
import com.nhom10.broadstore.util.StringUtil;

import javax.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class ImageFromPartService {

    public static String storeBlogImage(Part part, String path, String id) throws IOException {
        File folderImage = new File(path);
        System.out.println(folderImage.getAbsolutePath());
        if (!folderImage.exists()) {
            System.out.println(folderImage.mkdirs());
        }
        part.write(path + "/" + id + "." + StringUtil.getExtension(part.getSubmittedFileName()));

        part.write(Define.projectPath + "/" + Define.blogImageFolder + "/" + id + "." + StringUtil.getExtension(part.getSubmittedFileName()));
        return id + "." + StringUtil.getExtension(part.getSubmittedFileName());
    }
}
