package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Category;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface CategoryDAO {
    @SqlQuery("select * from category")
    @RegisterBeanMapper(Category.class)
    List<Category> getAllCategory();

    @SqlUpdate("delete from category where id = :id")
    @GetGeneratedKeys("id")
    long deleteCategory(@Bind("id") int id);

    @SqlUpdate("INSERT INTO `category`( `name`, `desc`, `create_at`, `update_at`) VALUES (:name,:desc ,now(),now())")
    @GetGeneratedKeys("id")
    long insertCategory(@BindBean Category category);
}
