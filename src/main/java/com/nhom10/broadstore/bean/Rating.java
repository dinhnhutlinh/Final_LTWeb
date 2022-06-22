package com.nhom10.broadstore.bean;

import org.jdbi.v3.core.mapper.Nested;

import java.time.LocalDateTime;

public class Rating {
    private int id;
    @Nested(value = "cus")
    private Customer customer;
    @Nested(value = "prod")
    private Product product;
    private int starRaiting;
    private String content;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Rating(int id, @Nested("cus") Customer customer, @Nested("prod") Product product, int starRaiting, String content, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.customer = customer;
        this.product = product;
        this.starRaiting = starRaiting;
        this.content = content;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public Rating() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Nested("cus")
    public Customer getCustomerId() {
        return customer;
    }

    @Nested("cus")
    public void setCustomerId(Customer customer) {
        this.customer = customer;
    }

    @Nested("prod")
    public Product getProduct() { return product;}
    @Nested("prod")
    public void setProduct(Product product) {
        this.product = product;
    }

    public int getStarRaiting() {
        return starRaiting;
    }

    public void setStarRaiting(int starRaiting) {
        this.starRaiting = starRaiting;
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
    public String toString() {
        return "Rating{" +
                "id=" + id +
                ", customer=" + customer +
                ", product=" + product +
                ", starRating=" + starRaiting +
                ", content='" + content + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
