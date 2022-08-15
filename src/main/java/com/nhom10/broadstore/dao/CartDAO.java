package com.nhom10.broadstore.dao;


import com.nhom10.broadstore.beans.Cart;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Cart.class)
public interface CartDAO {
    @SqlQuery("select * from Cart")
    List<Cart> list();

    @SqlQuery("select id from Cart where customer_id = :customerId")
    String getId(@Bind("customerId") String customerId);

    @SqlQuery("select * from Cart WHERE customer_id=:customerId")
    Cart getCart(@Bind("customerId") String customerId);

    @SqlUpdate("INSERT INTO `Cart`(`id`, `customer_id`, `total_price`, `create_at`, `update_at`) VALUES (:id,:customerId,:totalPrice,now(),now())")
    int createCart(@BindBean Cart Cart);

    @SqlUpdate("UPDATE `Cart` SET `total_price`=0,`update_at`=now() WHERE id=:id")
    int setCartEmpty(@Bind("id") String id);
}

