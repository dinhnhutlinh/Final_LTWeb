package com.nhom10.broadstore.beans;

import java.time.LocalDateTime;
import java.util.Objects;

public class Rating {

    private int id;
    private User customer;
    private Product product;
    private int starRating;
    private String content;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Rating(int id, User customer, Product product, int starRating, String content, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.customer = customer;
        this.product = product;
        this.starRating = starRating;
        this.content = content;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getCustomer() {
        return customer;
    }

    public void setCustomer(User customer) {
        this.customer = customer;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getStarRating() {
        return starRating;
    }

    public void setStarRating(int starRating) {
        this.starRating = starRating;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Rating rating = (Rating) o;
        return id == rating.id && starRating == rating.starRating && Objects.equals(customer, rating.customer) && Objects.equals(product, rating.product) && Objects.equals(content, rating.content) && Objects.equals(createAt, rating.createAt) && Objects.equals(updateAt, rating.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, customer, product, starRating, content, createAt, updateAt);
    }

    @Override
    public String toString() {
        return "Rating{" +
                "id=" + id +
                ", customer=" + customer +
                ", product=" + product +
                ", starRating=" + starRating +
                ", content='" + content + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
