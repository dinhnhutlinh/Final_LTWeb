package com.nhom10.broadstore.bean;

import java.time.LocalDateTime;

public class Cart {
    private int id;
    private int customerId;
    private int totalPrice;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Cart(int id, int customerId, int totalPrice, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.customerId = customerId;
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

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
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
                ", customer_id=" + customerId +
                ", total_price=" + totalPrice +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
