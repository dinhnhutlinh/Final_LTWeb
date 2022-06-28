package com.nhom10.broadstore.beans;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Order {
    private String id;
    private String customerId;
    private double shipPrice;
    private double total;
    private String status;
    private String name;
    private String phone;
    private String email;
    private String address;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    private List<OrderItem> orderItemList = new ArrayList<OrderItem>();

    public Order() {
    }

    public Order(String id, String customerId, double shipPrice, double total, String status, String name, String phone, String email, String address, LocalDateTime createAt, LocalDateTime updateAt, List<OrderItem> orderItemList) {
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
        this.orderItemList = orderItemList;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
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

    public List<OrderItem> getOrderItemList() {
        return orderItemList;
    }

    public void setOrderItemList(List<OrderItem> orderItemList) {
        this.orderItemList = orderItemList;
    }

    @Override
    public boolean equals(Object o) {

        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order order = (Order) o;
        return Double.compare(order.shipPrice, shipPrice) == 0 && Double.compare(order.total, total) == 0 && Objects.equals(id, order.id) && Objects.equals(customerId, order.customerId) && Objects.equals(status, order.status) && Objects.equals(name, order.name) && Objects.equals(phone, order.phone) && Objects.equals(email, order.email) && Objects.equals(address, order.address) && Objects.equals(createAt, order.createAt) && Objects.equals(updateAt, order.updateAt) && Objects.equals(orderItemList, order.orderItemList);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, customerId, shipPrice, total, status, name, phone, email, address, createAt, updateAt, orderItemList);
    }

    @Override
    public String toString() {
        return "Order{" +
                "id='" + id + '\'' +
                ", customerId='" + customerId + '\'' +
                ", shipPrice=" + shipPrice +
                ", total=" + total +
                ", status='" + status + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                ", orderItemList=" + orderItemList +
                '}';
    }
}
