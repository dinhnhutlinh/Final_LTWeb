package com.nhom10.broadstore.service;

import com.nhom10.broadstore.bean.Order;
import com.nhom10.broadstore.dao.OrderDAO;
import com.nhom10.broadstore.db.JDBIConnector;

import java.util.LinkedList;
import java.util.List;

public class OrderService {
    public static List<Order> getAll() {
        List<Order> allOrder = JDBIConnector.get().withExtension(OrderDAO.class, dao -> {
            return dao.getAll();
        });
        if (allOrder == null)
            return new LinkedList<>();
        else return allOrder;
    }
}
