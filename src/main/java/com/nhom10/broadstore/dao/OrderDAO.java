package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Order;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface OrderDAO {
    @SqlQuery(value = "SELECT * FROM `order`")
    @RegisterBeanMapper(Order.class)
    List<Order> getAll();

    @SqlQuery(value = "SELECT * FROM `order` WHERE `id` = :id")
    @RegisterBeanMapper(Order.class)
    @SingleValue
    Order getOrderByIdOrder(@Bind("id") int id);

    @SqlQuery(value = "SELECT * FROM `order` WHERE `customer_id` = :id")
    @RegisterBeanMapper(Order.class)
    List<Order> getOrdersOfCustomByIdCus(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `order`( `ship_id`, `customer_id`, `address_id`, `total`, `status_id`," +
            " `name`, `phone`, `email`, `create_at`, `update_at`) VALUES (" +
            ":shipId, :customerId, :addressId,:total, :statusId, :name, :phone, :email, now(), now())")
    @GetGeneratedKeys("`id`")
    int insert(@BindBean Order order);

    @SqlUpdate(value = "UPDATE `order` SET `ship_id`=:shipId,`customer_id`=:customerId," +
            "`address_id`=:addressId,`total`=:total,`status_id`=:statusId,`name`=:name," +
            "`phone`=:phone,`email`=:email, `update_at`=[value-11] WHERE `id`=:id")
    void update(@BindBean Order order);

    @SqlUpdate(value = "DELETE  FROM `order` WHERE `id` = :id")
    void delete(@Bind("id") int id);
}
