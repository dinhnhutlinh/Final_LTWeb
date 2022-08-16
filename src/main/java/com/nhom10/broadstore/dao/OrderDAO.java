package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.Order;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Order.class)
public interface OrderDAO {

    @SqlQuery("SELECT * FROM `Order`")
    List<Order> list();

    @SqlQuery("SELECT * FROM `Order` WHERE id=:id")
    Order findById(@Bind("id") String id);

    @SqlQuery("SELECT * FROM `Order`  WHERE customer_id=:id")
    List<Order> findByCustomerId(@Bind("id") String id);

    @SqlUpdate("INSERT INTO `Order`(`id`, `ship_price`, `customer_id`, `address`, `total`, `status`, `name`, `phone`, " +
            "`email`, `create_at`, `update_at`) VALUES (:id,:shipPrice,:customerId,:address,:total,:status,:name,:phone,:email,NOW(),NOW())")
    int insert(@BindBean Order order);

    @SqlUpdate("UPDATE `Order` SET `ship_price`=:shipPrice,`customer_id`=:customerId,`address`=:address," +
            "`total`=:total,`status`=:status,`name`=:name,`phone`=:phone,`email`=:email," +
            "`update_at`=now() WHERE `id`=:id")
    int update(@BindBean Order order);
}
