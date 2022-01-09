package com.nhom10.broadstore.bean;

import java.time.LocalDateTime;

public class GroupImage {
    private int imageId;
    private int productId;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public GroupImage(int imageId, int productId, LocalDateTime createAt, LocalDateTime updateAt) {
        this.imageId = imageId;
        this.productId = productId;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public GroupImage() {
    }

    public int getImageId() {
        return imageId;
    }

    public void setImageId(int imageId) {
        this.imageId = imageId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
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
        return "GroupImage{" +
                "imageId=" + imageId +
                ", productId=" + productId +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
