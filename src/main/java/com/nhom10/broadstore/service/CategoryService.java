package com.nhom10.broadstore.service;

import com.nhom10.broadstore.bean.Category;
import com.nhom10.broadstore.dao.CategoryDAO;
import com.nhom10.broadstore.db.JDBIConnector;

import java.util.List;

public class CategoryService {

    private static CategoryService instance;

    private CategoryService() {
    }

    public static CategoryService getInstance() {
        if (instance == null)
            return instance = new CategoryService();
        return instance;
    }

    public List<Category> getAll() {
        return CategoryDAO.getALl();
    }

    public Category getByID(int id) {
        return CategoryDAO.getByID(id);
    }

    public int insert(Category category) {
        return CategoryDAO.insert(category);
    }

    public int update(Category category) {
        return CategoryDAO.update(category);
    }

    public int delete(int id) {
        return CategoryDAO.delete(id);
    }
}
