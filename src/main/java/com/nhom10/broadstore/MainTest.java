package com.nhom10.broadstore;

import com.nhom10.broadstore.bean.Category;
import com.nhom10.broadstore.service.CategoryService;

import java.time.LocalDateTime;

public class MainTest {
    public static void main(String[] args) {
        CategoryService categoryService = CategoryService.getInstance();
        System.out.println(categoryService.getAll());
//        Category category = new Category(0, "new", "new", LocalDateTime.now(), LocalDateTime.now());
//        categoryService.insert(category);
        categoryService.delete(12);
        System.out.println(categoryService.getAll());
    }
}
