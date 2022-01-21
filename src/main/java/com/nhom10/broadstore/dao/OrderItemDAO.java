package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.OrderItem;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

import java.util.List;

public interface OrderItemDAO {

    @SqlQuery("SELECT * FROM `orderitems` WHERE `order_id`=:id")
    List<OrderItem> getOrderByOrderId(@Bind("id") int id);


}
