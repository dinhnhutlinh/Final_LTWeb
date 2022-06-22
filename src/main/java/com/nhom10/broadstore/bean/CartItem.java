package com.nhom10.broadstore.bean;

import org.jdbi.v3.core.mapper.Nested;

import java.time.LocalDateTime;

public class CartItem {
    private int cartId;
    @Nested(value="prod")
    private Product product;
    private int quantity;
    private int price;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public CartItem(int cartId, @Nested("prod") Product product, int quantity, int price, LocalDateTime createAt, LocalDateTime updateAt) {
        this.cartId = cartId;
        this.product = product;
        this.quantity = quantity;
        this.price = price;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public CartItem() {
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    @Nested("prod")
    public Product getProduct() {
        return product;
    }

    @Nested("prod")
    public void setProduct(Product product) {
        this.product = product;
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
                "cartId=" + cartId +
                ", product=" + product +
                ", quantity=" + quantity +
                ", price=" + price +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
