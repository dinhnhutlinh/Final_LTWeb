package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Cart;
import com.nhom10.broadstore.bean.Category;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

public interface CartDAO {

    @SqlQuery(value = "SELECT * FROM `cart` WHERE `id` = :id")
    @RegisterBeanMapper(Cart.class)
    Cart getByID(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `cart`( `customer_id`, `total_price`, `create_at`, `update_at`)" +
            " VALUES (:customerId, totalPrice,now(),now())")
    @GetGeneratedKeys("`id`")
    int insert(@BindBean Cart cart);

    @SqlUpdate(value = "UPDATE `cart` SET `customer_id`=:customerId,`total_price`=:totalPrice," +
            "`update_at`=now() WHERE `id`=:id")
    void update(@BindBean Cart cart);

    @SqlUpdate(value = "DELETE FROM `cart` WHERE `id`=:id")
    void delete(@Bind("id") int id);
}
