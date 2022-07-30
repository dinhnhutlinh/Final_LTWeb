package com.nhom10.broadstore.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class UploadFileHelper {
    public static List<String> uploadFile(String uploadDir, HttpServletRequest request, String name) {
        List<String> fileNames = new ArrayList<String>();
        try {
            List<Part> parts = (List<Part>) request.getParts();
            for (Part part : parts) {
                if (part.getName().equalsIgnoreCase(name)) {
                    String fileName = getFileName(part);
                    if(fileName==null&&fileName.equals(""))
                        continue;
                    String application =request.getServletContext().getRealPath("");
                    File tomcatFolder= new File(application+File.separator+uploadDir);
                    File projectFolder= new File(Define.projectPath+File.separator+uploadDir);
                    if (!tomcatFolder.exists()) tomcatFolder.mkdirs();
                    if(!projectFolder.exists()) projectFolder.mkdirs();
                    System.out.println(tomcatFolder.getAbsolutePath()+File.separator+fileName);
                    System.out.println(projectFolder.getAbsolutePath()+File.separator+fileName);
                    part.write(tomcatFolder.getAbsolutePath()+File.separator+fileName);
                    part.write(projectFolder.getAbsolutePath()+File.separator+fileName);
                    fileNames.add(uploadDir+File.separator+fileName);

                }
            }
        } catch (Exception e) {
            System.out.println(e);
            fileNames = null;
        }
        if(fileNames.isEmpty())
            return null;
        return fileNames;
    }

    private static String getFileName(Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
