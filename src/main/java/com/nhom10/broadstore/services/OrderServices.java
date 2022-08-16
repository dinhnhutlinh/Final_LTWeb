package com.nhom10.broadstore.services;

import com.nhom10.broadstore.beans.Order;
import com.nhom10.broadstore.beans.OrderItem;
import com.nhom10.broadstore.beans.Product;
import com.nhom10.broadstore.dao.OrderDAO;
import com.nhom10.broadstore.dao.OrderItemDAO;
import com.nhom10.broadstore.dao.ProductDAO;
import com.nhom10.broadstore.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

public class OrderServices {
    Jdbi connector = JDBIConnector.get();

    public List<Order> list() {

        return connector.withExtension(OrderDAO.class, OrderDAO::list);
    }


    public Order findById(String id) {
        return connector.withExtension(OrderDAO.class, handle -> mapOrder(handle.findById(id)));
    }

    public List<Order> findByCustomerId(String id) {
        return connector.withExtension(OrderDAO.class, handle -> handle.findByCustomerId(id).stream().map(order -> mapOrder(order)).collect(Collectors.toList()));
    }

    synchronized public int insert(Order order) {
        int status = connector.withExtension(OrderDAO.class, handle -> handle.insert(order));
        for (OrderItem orderItem : order.getOrderItems()) {
            connector.withExtension(OrderItemDAO.class, handle -> handle.insert(orderItem));
            connector.useExtension(ProductDAO.class, handle -> {
                Product product = orderItem.getProduct();
                product.setInventory(product.getInventory() - orderItem.getQuantity());
                handle.update(product);
            });
        }

        return status;
    }

    synchronized public int cancelOrder(Order order) {
        order.setStatus(1);
        System.out.println(order);
        int status = connector.withExtension(OrderDAO.class, handle -> handle.update(order));
        for (OrderItem orderItem : order.getOrderItems()) {
            connector.useExtension(ProductDAO.class, handle -> {
                Product product = orderItem.getProduct();
                product.setInventory(product.getInventory() + orderItem.getQuantity());
                handle.update(product);
            });
        }

        return status;
    }

    public int update(Order order) {
        int status = connector.withExtension(OrderDAO.class, handle -> handle.update(order));
        for (OrderItem orderItem : order.getOrderItems()) {
            connector.withExtension(OrderItemDAO.class, handle -> handle.update(orderItem));
        }
        return status;
    }

    private OrderItem mapOrderItem(OrderItem orderItem) {
        Product product = connector.withExtension(ProductDAO.class, handle -> handle.findById(orderItem.getProductId()));
        orderItem.setProduct(product);
        return orderItem;
    }

    private Order mapOrder(Order order) {
        List<OrderItem> orderItems = connector.withExtension(OrderItemDAO.class,
                handle -> handle.findByOrderId(order.getId()).stream()
                        .map(orderItem -> mapOrderItem(orderItem)).collect(Collectors.toList()));
        order.setOrderItems(orderItems);
        return order;
    }


}
