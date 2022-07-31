package com.nhom10.broadstore.services;

import com.nhom10.broadstore.beans.Producer;
import com.nhom10.broadstore.beans.Product;
import com.nhom10.broadstore.dao.ProductCustomerDAO;
import com.nhom10.broadstore.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.ArrayList;
import java.util.List;

public class ProductService {

    private static ProductService instance = null;

    public ProductService() {
    }

    public static ProductService getInstance() {
        if (instance == null)
            instance = new ProductService();

        return instance;
    }

    Jdbi connector = JDBIConnector.get();

    public List<Product> getProuct_AmericanWest() {
        return connector.withExtension(ProductCustomerDAO.class, handle -> handle.getProuct_AmericanWest());
    }

    public ArrayList<Product> getAllProducts() {
        return connector.withExtension(ProductCustomerDAO.class, handle -> handle.queryAll());
    }

    public Product getProductById(String id) {
        return connector.withExtension(ProductCustomerDAO.class, handle -> handle.findWithId(id));
    }
}
