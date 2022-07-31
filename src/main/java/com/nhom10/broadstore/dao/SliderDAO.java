package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.Slider;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Slider.class)
public interface SliderDAO {
    @SqlQuery("select * from Slider")
    List<Slider> list();

    @SqlQuery("select * from Slider WHERE id=:id")
    Slider findById(@Bind("id") String id);

    @SqlUpdate("delete from Slider where id=:id")
    int deleteById(@Bind("id") String id);

    @SqlUpdate("INSERT INTO `Slider`(`id`, `name`, `link`, `image`, `create_at`, `update_at`) " +
            "VALUES (:id, :name, :link, :image,now(),now())")
    int insert(@BindBean Slider Slider);

    @SqlUpdate("UPDATE `Slider` SET `name`=:name,`link`=:link,`update_at`=now() WHERE `id`=:id")
    int update(@BindBean Slider Slider);

    @SqlUpdate("UPDATE Slider SET `image`=:image where id=:sliderId")
    int updateImage(@Bind("sliderId") String SliderId, @Bind("image") String image);
}
