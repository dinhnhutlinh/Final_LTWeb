package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Rating;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface RatingDAO {

    @SqlQuery(value = "SELECT * FROM 'rating' where `product_id`=:id")
    @RegisterBeanMapper(Rating.class)
    List<Rating> getRatingsByIdProduct(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `raiting`(`customer_id`, `product_id`, `star_raiting`, `content`, `create_at`, `update_at`)" +
            " VALUES (:customerId, :productId, :starRaiting, :context, now(), now())")
    int insert(@BindBean Rating rating);

    @SqlUpdate(value = "UPDATE `raiting` SET `customer_id`=:customerId,`product_id`=:productId,`star_raiting`=:starRaiting,`content`=:context,`update_at`=now() WHERE `id`=:id")
    void update(@BindBean Rating rating);

    @SqlUpdate(value = "DELETE FROM `raiting` WHERE `id`=:id")
    void delete(@Bind("id") int id);
}
