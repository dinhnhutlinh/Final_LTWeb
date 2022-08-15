package com.nhom10.broadstore.beans;

import java.time.LocalDateTime;
import java.util.List;

public class Order {

    private String id;
    private String customerId;
    private double shipPrice;
    private double total;
    private int status;
    private String name;
    private String phone;
    private String email;
    private String address;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    private List<OrderItem> orderItems;

    public Order() {
    }

    public Order(String id, String customerId, double shipPrice, double total, int status, String name, String phone, String email, String address, LocalDateTime createAt, LocalDateTime updateAt, List<OrderItem> orderItems) {
        this.id = id;
        this.customerId = customerId;
        this.shipPrice = shipPrice;
        this.total = total;
        this.status = status;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.orderItems = orderItems;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public double getShipPrice() {
        return shipPrice;
    }

    public void setShipPrice(double shipPrice) {
        this.shipPrice = shipPrice;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public LocalDateTime getCreateAt() {
        return createAt;
    }

    public void setCreateAt(LocalDateTime createAt) {
        this.createAt = createAt;
    }

    public LocalDateTime getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(LocalDateTime updateAt) {
        this.updateAt = updateAt;
    }

    public List<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(List<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }
}

