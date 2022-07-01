package com.nhom10.broadstore.services;

import com.nhom10.broadstore.beans.Category;
import com.nhom10.broadstore.db.JDBIConnector;
import com.nhom10.broadstore.dto.CategoryDTO;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class CategoryService {
    Jdbi connect = JDBIConnector.get();

    public List<Category> getAllCategory() {
        return connect.withExtension(CategoryDTO.class, handle -> handle.queryAll());
    }

    public void deleteCat(String id) {
        connect.useExtension(CategoryDTO.class, handle -> handle.deleteCat(id));

    }

    public int insert(Category category) {
        return connect.withExtension(CategoryDTO.class, handle -> handle.insert(category));
    }

    public int update(Category category) {
        return connect.withExtension(CategoryDTO.class, handle -> handle.update(category));
    }
}
