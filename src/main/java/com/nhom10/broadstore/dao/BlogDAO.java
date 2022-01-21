package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Blog;
import org.jdbi.v3.sqlobject.CreateSqlObject;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface BlogDAO {

    @SqlQuery(value = "SELECT b.id, admin_id, title, image_id, content, create_at, update_at,img.id img_id, img.name img_name, img.link img_link FROM blog b JOIN image img ON b.image_id=img.id")
    @RegisterBeanMapper(Blog.class)
    List<Blog> getAll();

    @SqlQuery(value = "SELECT b.id, admin_id, title, image_id, content, create_at, update_at,img.id img_id, img.name img_name, img.link img_link FROM blog b JOIN image img ON b.image_id=img.id where id=:id")
    @RegisterBeanMapper(Blog.class)
    @SingleValue
    Blog getByID(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `blog`( `admin_id`, `title`, `image_id`, `content`," +
            " `create_at`, `update_at`) VALUES (:adminID,:title,:imageID,:content,now(),now())")
    @GetGeneratedKeys("`id`")
    int insert(@BindBean Blog Blog, @Bind("imageID") int imageId);

    @SqlUpdate(value = "UPDATE `blog` SET `admin_id`=:adminID,`title`=:title,`image_id`=:imageID," +
            "`content`=:content,`update_at`=now() WHERE `id`=:id")
    void update(@BindBean Blog blog);

    @SqlUpdate(value = "DELETE FROM `blog` WHERE `id`=:id")
    void delete(@Bind("id") int id);

    @CreateSqlObject
    ImageDAO createImageDAO();

    default int insertFull(Blog blog) {
        int imageId = createImageDAO().insert(blog.getImage());
        int id = insert(blog, imageId);
        return id;
    }

    default int updateFull(Blog blog) {
        createImageDAO().update(blog.getImage());
        update(blog);
        return blog.getId();
    }

    default int deleteFull(Blog blog) {
        createImageDAO().delete(blog.getImage().getId());
        delete(blog.getId());
        return blog.getId();
    }
}
