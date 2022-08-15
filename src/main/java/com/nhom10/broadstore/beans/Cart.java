package com.nhom10.broadstore.beans;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Cart {
    private String id;
    private String customerId;
    private double totalPrice;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;
    private List<CartItem> cartItemList = new ArrayList<CartItem>();

    public Cart() {
    }

    public Cart(String id, String customerId, double totalPrice, LocalDateTime createAt, LocalDateTime updateAt, List<CartItem> cartItemList) {
        this.id = id;
        this.customerId = customerId;
        this.totalPrice = totalPrice;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.cartItemList = cartItemList;
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

    public double getTotalPrice() {
        int total = 0;
        for (CartItem cartItem : cartItemList) {
            total += cartItem.getProduct().getPriceWasDiscount() * cartItem.getQuantity();
        }
        return total;
//        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
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

    public List<CartItem> getCartItemList() {
        return cartItemList;
    }

    public void setCartItemList(List<CartItem> cartItemList) {
        this.cartItemList = cartItemList;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Cart cart = (Cart) o;
        return Double.compare(cart.totalPrice, totalPrice) == 0 && Objects.equals(id, cart.id) && Objects.equals(customerId, cart.customerId) && Objects.equals(createAt, cart.createAt) && Objects.equals(updateAt, cart.updateAt) && Objects.equals(cartItemList, cart.cartItemList);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, customerId, totalPrice, createAt, updateAt, cartItemList);
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id='" + id + '\'' +
                ", customerId='" + customerId + '\'' +
                ", totalPrice=" + totalPrice +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                ", cartItemList=" + cartItemList +
                '}';
    }

    public int getTotal() {
        int total = 0;
        for (CartItem cartItem : cartItemList) {
            total += cartItem.getQuantity();
        }
        return total;
    }
}
