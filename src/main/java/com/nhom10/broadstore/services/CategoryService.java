package com.nhom10.broadstore.services;

import com.nhom10.broadstore.beans.Category;
import com.nhom10.broadstore.dao.CategoryDAO;
import com.nhom10.broadstore.dao.DiscountDAO;
import com.nhom10.broadstore.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class CategoryService {
    Jdbi connect = JDBIConnector.get();

    public List<Category> getAllCategory() {
        return connect.withExtension(CategoryDAO.class, handle -> handle.list());
    }

    public void deleteCat(String id) {
        connect.useExtension(CategoryDAO.class, handle -> handle.deleteById(id));
    }

    public int insert(Category category) {
        return connect.withExtension(CategoryDAO.class, handle -> handle.insert(category));
    }

    public int update(Category category) {
        return connect.withExtension(CategoryDAO.class, handle -> handle.update(category));
    }
}
