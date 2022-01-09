package com.nhom10.broadstore.bean;

import java.time.LocalDateTime;

public class Order {
    private int id;
    private int shipId;
    private int customerId;
    private int addressId;
    private int total;
    private int statusId;
    private String name;
    private String phone;
    private String email;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Order(int id, int shipId, int customerId, int addressId, int total, int statusId, String name, String phone, String email, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.shipId = shipId;
        this.customerId = customerId;
        this.addressId = addressId;
        this.total = total;
        this.statusId = statusId;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public Order() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getShipId() {
        return shipId;
    }

    public void setShipId(int shipId) {
        this.shipId = shipId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
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

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", shipId=" + shipId +
                ", customerId=" + customerId +
                ", addressId=" + addressId +
                ", total=" + total +
                ", statusId=" + statusId +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
