package com.nhom10.broadstore.dao;


import com.nhom10.broadstore.beans.Blog;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Blog.class)
public interface BlogDAO {
    @SqlQuery("select * from Blog")
    List<Blog> list();

    @SqlQuery("select * from Blog WHERE id=:id")
    Blog findById(@Bind("id") String id);
    @SqlUpdate("delete from Blog where id=:id")
    int deleteById(@Bind("id") String id);

    @SqlUpdate("INSERT INTO `Blog`(`id`, `admin_id`, `title`, `image`, `content`, `create_at`, `update_at`) VALUES (:id,:adminId,:title,:image,:content,now(),now())")
    int insert(@BindBean Blog Blog);

    @SqlUpdate("UPDATE `Blog` SET `admin_id`=:adminId,`title`=:title,`image`=:image,`content`=:content,`update_at`=now() WHERE `id`=:id")
    int update(@BindBean Blog Blog);
}

