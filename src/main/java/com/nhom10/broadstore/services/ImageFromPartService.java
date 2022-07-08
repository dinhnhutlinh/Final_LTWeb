package com.nhom10.broadstore.services;

import com.nhom10.broadstore.util.Defind;
import com.nhom10.broadstore.util.StringUtil;

import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

public class ImageFromPartService {

    public static String storeBlogImage(Part part, String path, String id) throws IOException {
        File folderImage = new File(path);
        System.out.println(folderImage.getAbsolutePath());
        if (!folderImage.exists()) {
            System.out.println(folderImage.mkdirs());
        }
        part.write(path + "/" + id + "." + StringUtil.getExtension(part.getSubmittedFileName()));
        return id + "." + StringUtil.getExtension(part.getSubmittedFileName());
    }
}
