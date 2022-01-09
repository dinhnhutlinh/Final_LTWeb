package com.nhom10.broadstore.bean;

import java.time.LocalDateTime;

public class OrderItem {
    private int orderId;
    private int productId;
    private int quantity;
    private int price;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public OrderItem(int orderId, int productId, int quantity, int price, LocalDateTime createAt, LocalDateTime updateAt) {
        this.orderId = orderId;
        this.productId = productId;
        this.quantity = quantity;
        this.price = price;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public OrderItem() {

    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
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
        return "OrderItem{" +
                "orderId=" + orderId +
                ", productId=" + productId +
                ", quantity=" + quantity +
                ", price=" + price +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
