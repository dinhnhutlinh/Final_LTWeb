package com.nhom10.broadstore.service;

import com.nhom10.broadstore.bean.*;
import com.nhom10.broadstore.dao.*;
import com.nhom10.broadstore.db.JDBIConnector;

import java.util.LinkedList;
import java.util.List;

public class ProductService {
    public static int countProductWithKeyword(String keyword) {
        return JDBIConnector.get().withExtension(ProductDAO.class, dao -> {
            return dao.countProductWithKey("%" + keyword + "%");
        });
    }

    public static List<Product> searchProductWithKeyword(String keyword, int page, int limit) {
        List<Product> result = JDBIConnector.get().withExtension(ProductDAO.class, dao -> {
            List<Product> findOut = dao.findProductWithKey("%" + keyword + "%", (page - 1) * limit, limit);
            if (findOut != null)
                return findOut;
            else return new LinkedList<>();
        });
        return result;
    }

    public static Product findProductById(int id) {
        return JDBIConnector.get().withExtension(ProductDAO.class, dao -> {
            return dao.findProductById(id);
        });
    }

    public static float ratingProductById(int id) {
        return 0;
    }

    public static List<Rating> getRatingOfUserByProductId(int id) {
        return null;
    }

    public static List<Product> getAll() {
        List<Product> all = JDBIConnector.get().withExtension(ProductDAO.class, dao -> {
            return dao.getAllProduct();
        });
        if (all == null)
            return new LinkedList<>();
        else return all;
    }

    public static List<Category> getAllCategory() {
        List<Category> categories = JDBIConnector.get().withExtension(CategoryDAO.class, dao -> {
            return dao.getAll();
        });
        if (categories == null)
            return new LinkedList<>();
        else return categories;
    }

    public static List<Discount> getAllDiscount() {
        List<Discount> discounts = JDBIConnector.get().withExtension(DiscountDAO.class, dao -> {
            return dao.getALl();
        });
        if (discounts == null)
            return new LinkedList<>();
        else return discounts;
    }

    public static List<Producer> getAllProducer() {
        List<Producer> producers = JDBIConnector.get().withExtension(ProducerDAO.class, dao -> {
            return dao.getAll();
        });
        if (producers == null)
            return new LinkedList<>();
        else return producers;
    }

    public static List<Status> getAllStatus() {
        List<Status> statuses = JDBIConnector.get().withExtension(StatusDAO.class, dao -> {
            return dao.getAll();
        });
        if (statuses == null)
            return new LinkedList<>();
        else return statuses;
    }

    public static int newCategory(Category category) {
        return JDBIConnector.get().withExtension(CategoryDAO.class, dao -> {
            return dao.insert(category);
        });
    }

    public static int edit(Category category) {
        return JDBIConnector.get().withExtension(CategoryDAO.class, dao -> {
            dao.update(category);
            return category.getId();
        });
    }
}
