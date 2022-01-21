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

    @SqlQuery(value = "SELECT * FROM `category`")
    @RegisterBeanMapper(Category.class)
    List<Category> getAll();

    @SqlQuery(value = "SELECT * FROM `category` WHERE `id`=:id")
    @RegisterBeanMapper(Category.class)
    Category getByID(@Bind("id") int id);

    @SqlQuery(value = "SELECT * FROM `category` WHERE `id`=(SELECT category_id FROM product where id=:id)")
    @RegisterBeanMapper(Category.class)
    Category getOfProductById(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `category`( `name`, `desc`, `create_at`, `update_at`) "
            + "VALUES (:name,:desc,now(),now())")
    @GetGeneratedKeys("`id`")
    int insert(@BindBean Category category);

    @SqlUpdate(value = "UPDATE `category` SET\" +\n" +
            "`name`=:name,`desc`=:desc,`update_at`=now() WHERE `id`=:id")
    void update(@BindBean Category category);

    @SqlUpdate(value = "DELETE FROM `category` WHERE `id`=:id")
    void delete(@Bind("id") int id);
}
