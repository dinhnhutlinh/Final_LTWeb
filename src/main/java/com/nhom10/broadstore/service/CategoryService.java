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
        return JDBIConnector.get().withExtension(CategoryDAO.class, dao -> dao.getAllCategory());
    }

    public int insert(Category category) {
        return JDBIConnector.get().withExtension(CategoryDAO.class, dao -> {
            long id= dao.insertCategory(category);
            System.out.println(id);
            return 1;
        });
    }

    public long delete(int id) {
        return JDBIConnector.get().withExtension(CategoryDAO.class, dao -> {
            final long i = dao.deleteCategory(id);
            System.out.println("id: " + i);
            return i;
        });
    }
}
