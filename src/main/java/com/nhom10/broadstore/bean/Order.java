package com.nhom10.broadstore.bean;

import org.jdbi.v3.core.mapper.Nested;

import java.time.LocalDateTime;


public class Order {
    private int id;
    @Nested(value = "ship")
    private Ship ship;
    @Nested(value = "cus")
    private Customer customer;
    @Nested(value = "addr")
    private Address address;
    private int total;
    @Nested(value = "status")
    private Status status;
    private String name;
    private String phone;
    private String email;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Order(int id, @Nested(value = "ship") Ship ship, @Nested(value = "cus") Customer customer, @Nested(value = "addr") Address address, int total, @Nested(value = "status") Status status, String name, String phone, String email, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.ship = ship;
        this.customer = customer;
        this.address = address;
        this.total = total;
        this.status = status;
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

    @Nested(value = "ship")
    public Ship getShip() {
        return ship;
    }

    @Nested(value = "ship")
    public void setShip(Ship ship) {
        this.ship = ship;
    }

    @Nested(value = "cus")
    public Customer getCustomer() {
        return customer;
    }

    @Nested(value = "cus")
    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @Nested(value = "addr")
    public Address getAddress() {
        return address;
    }

    @Nested(value = "addr")
    public void setAddress(Address addressId) {
        this.address = address;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Nested("status")
    public Status getStatus() {
        return status;
    }

    @Nested("status")
    public void setStatusId(Status status) {
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
                ", shipId=" + ship +
                ", customerId=" + customer +
                ", addressId=" + address +
                ", total=" + total +
                ", statusId=" + status +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
