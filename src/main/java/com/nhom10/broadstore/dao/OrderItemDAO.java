package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.Order;
import com.nhom10.broadstore.beans.OrderItem;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(OrderItem.class)
public interface OrderItemDAO {

    @SqlQuery("SELECT * FROM `OrderItems` WHERE order_id=:id")
    List<OrderItem> findByOrderId(@Bind("id") String id);

    @SqlUpdate("INSERT INTO `OrderItems`(`order_id`, `product_id`, `quantity`, `price`, `create_at`, `update_at`) " +
            "VALUES (:orderId,:productId,:quantity,:price, now(),now())")
    int insert(@BindBean OrderItem orderItem);

    @SqlUpdate("UPDATE `OrderItems` SET `quantity`=:quantity," +
            "`price`=:price,`update_at`=now() WHERE `order_id`=:orderId AND `product_id`=:productId")
    int update(@BindBean OrderItem orderItem);
}
