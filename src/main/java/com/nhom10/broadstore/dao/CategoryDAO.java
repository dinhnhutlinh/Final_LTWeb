package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.Category;
import com.nhom10.broadstore.beans.ImageProduct;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Category.class)
public interface CategoryDAO {

    @SqlQuery("select *\n" +
            "from Category")
    List<Category> list();

    @SqlQuery("select *\n" +
            "from Category WHERE id=:id")
    Category findById(@Bind("id") String id);

    @SqlUpdate("delete\n" +
            "from Category\n" +
            "where id=:id")
    int deleteById(@Bind("id") String id);

    @SqlUpdate("insert into Category (`id`, `name`, `desc`, `create_at`, `update_at`) values (:id, :name, :desc, now(), now())")
    int insert(@BindBean Category category);

    @SqlUpdate("UPDATE `Category` SET `name`=:name,`desc`=:desc,`update_at`=now() WHERE `id`=:id")
    int update(@BindBean Category category);

}
