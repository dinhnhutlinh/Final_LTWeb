package com.nhom10.broadstore.bean;

import java.time.LocalDateTime;

public class Rating {
    private int id;
    private int customerId;
    private int productId;
    private int starRaiting;
    private String content;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Rating(int id, int customerId, int productId, int starRaiting, String content, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.customerId = customerId;
        this.productId = productId;
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

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
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
                ", customerId=" + customerId +
                ", productId=" + productId +
                ", starRaiting=" + starRaiting +
                ", content='" + content + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
