package com.nhom10.broadstore.util;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class UploadFileHelper {
    public static List<String> uploadFile(String uploadDir, HttpServletRequest request, String name) throws ServletException, IOException {
        List<String> fileNames = new ArrayList<String>();

        Collection<Part> parts =  request.getParts();
        for (Part part : parts) {
            System.out.println(part.getName());
        }
        for (Part part : parts) {

            if (part.getName().equalsIgnoreCase(name)) {
                String fileName = getFileName(part);
                System.out.println(fileName);
                if (fileName == null || fileName.equals(""))
                    continue;
                String application = request.getServletContext().getRealPath("");
                File tomcatFolder = new File(application + File.separator + uploadDir);
                File projectFolder = new File(Define.projectPath + File.separator + uploadDir);
                if (!tomcatFolder.exists()) tomcatFolder.mkdirs();
                if (!projectFolder.exists()) projectFolder.mkdirs();
                System.out.println(projectFolder.getAbsolutePath());
                String filePath = tomcatFolder.getAbsolutePath() + File.separator + fileName;
                part.write(filePath);
                String detinastionPath = projectFolder.getAbsolutePath() + File.separator + fileName;
                Files.copy(new File(filePath).toPath(), new File(detinastionPath).toPath(), StandardCopyOption.REPLACE_EXISTING);
                fileNames.add(uploadDir + File.separator + fileName);

            }
        }

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
