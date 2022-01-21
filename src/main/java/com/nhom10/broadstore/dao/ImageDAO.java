package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Image;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface ImageDAO {

    @SqlQuery(value = "SELECT * FROM `image` WHERE `id`" +
            " IN (SELECT `image_id` FROM `groupimage` WHERE `product_id`=:id)")
    @RegisterBeanMapper(Image.class)
    List<Image> getImageByIdProduct(@BindBean("id") int id);

    @SqlQuery(value = "SELECT * FROM `image` WHERE `id` = (SELECT `image_id` FROM 'slider' WHERE `id`=:id)")
    @RegisterBeanMapper(Image.class)
    List<Image> getImageByIdSlider(@BindBean("id") int id);

    @SqlQuery(value = "SELECT * FROM `image` WHERE `id` = (SELECT `image_id` FROM 'blog' WHERE `id`=:id)")
    @RegisterBeanMapper(Image.class)
    @SingleValue
    Image getImageByBlogId(@Bind("id") int blogId);

    @SqlUpdate(value = "INSERT INTO `image`( `name`, `link`) VALUES (:name, :link)")
    @GetGeneratedKeys("id")
    int insert(@BindBean Image image);

    @SqlUpdate(value = "UPDATE `image` SET `name`=:name,`link`=:link WHERE id=:id")
    void update(@BindBean Image image);

    @SqlUpdate(value = "DELETE FROM `image` WHERE `id`=:id")
    void delete(@Bind("id") int id);
}
