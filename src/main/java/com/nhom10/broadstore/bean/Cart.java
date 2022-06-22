package com.nhom10.broadstore.bean;

import org.jdbi.v3.core.mapper.Nested;

import java.time.LocalDateTime;

public class Cart {
    private int id;
    @Nested(value="cus")
    private Customer customer;
    private int totalPrice;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Cart(int id,@Nested(value="cus") Customer customer, int totalPrice, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.customer = customer;
        this.totalPrice = totalPrice;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public Cart() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    @Nested(value="cus")
    public Customer getCustomerId() {
        return customer;
    }
    @Nested(value="cus")
    public void setCustomerId(Customer customerId) {
        this.customer = customer;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
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
        return "Cart{" +
                "id=" + id +
                ", customer =" + customer +
                ", total_price=" + totalPrice +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
