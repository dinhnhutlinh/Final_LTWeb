package com.nhom10.broadstore.beans;

import java.util.Objects;

public class CartItem {
    private Product product;
    private int quantity;
    private double price;
    private String productId;
    private String cartId;
    public CartItem(){}
    public CartItem(String cartId, String productId, int quantity, double price){
        this.cartId = cartId;
        this.productId = productId;
        this.quantity = quantity;
        this.price = price;
    }

    public CartItem(Product product, int quantity, double price) {
        this.product = product;
        this.quantity = quantity;
        this.price = price;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CartItem cartItem = (CartItem) o;
        return quantity == cartItem.quantity && Double.compare(cartItem.price, price) == 0 && Objects.equals(product, cartItem.product);
    }


    public String getCartId() {
        return cartId;
    }

    public void setCartId(String cartId) {
        this.cartId = cartId;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }



    @Override
    public int hashCode() {
        return Objects.hash(product, quantity, price);
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "product=" + product +
                ", quantity=" + quantity +
                ", price=" + price +
                '}';
    }
}
