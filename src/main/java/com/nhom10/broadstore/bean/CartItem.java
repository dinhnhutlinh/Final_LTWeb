package com.nhom10.broadstore.bean;

import java.time.LocalDateTime;

public class CartItem {
    private int cartID;
    private int productId;
    private int quantity;
    private int price;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public CartItem(int cartID, int productId, int quantity, int price, LocalDateTime createAt, LocalDateTime updateAt) {
        this.cartID = cartID;
        this.productId = productId;
        this.quantity = quantity;
        this.price = price;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public CartItem() {
    }

    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
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
        return "CartItem{" +
                "cartID=" + cartID +
                ", productId=" + productId +
                ", quantity=" + quantity +
                ", price=" + price +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
