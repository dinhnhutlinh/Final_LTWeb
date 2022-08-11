package com.nhom10.broadstore.services;

import com.nhom10.broadstore.dao.ImageDAO;
import com.nhom10.broadstore.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.ArrayList;

public class ImageService {
    private static ImageService instance = null;
    Jdbi connector = JDBIConnector.get();

    public ImageService() {
    }

    public static ImageService getInstance() {
        if (instance == null)
            instance = new ImageService();

        return instance;
    }

    public ArrayList<String> getImagesProduct(String productId) {
        return connector.withExtension(ImageDAO.class, handler -> handler.getImagesProduct(productId));
    }

}
