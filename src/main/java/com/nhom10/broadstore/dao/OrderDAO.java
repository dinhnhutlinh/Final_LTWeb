package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Order;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

import java.util.List;

@RegisterBeanMapper(Order.class)
public interface OrderDAO {
    @SqlQuery(value = "SELECT o.id id, o.ship_id shipId, o.customer_id customerId, o.address_id addressId, o.total total,\n" +
            "o.status_id statusId, o.name name, o.phone Phone, o.email email, o.create_at createAt, o.update_at updateAt,\n" +
            "s.`id` s_id, s.`name` s_name, s.`desc` s_desc \n" +
            "FROM `order` o\n" +
            "JOIN `status` s ON o.`status_id`= s.id")
    List<Order> getAll();

    @SqlQuery(value = "SELECT * FROM `order` WHERE `id` = :id")
    @RegisterBeanMapper(Order.class)
    @SingleValue
    Order getOrderByIdOrder(@Bind("id") int id);


}
