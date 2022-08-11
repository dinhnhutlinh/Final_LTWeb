package com.nhom10.broadstore.beans;

import java.time.LocalDateTime;
import java.util.Objects;

public class ImageProduct {
    private String id;
    private String link;
    private String productId;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public ImageProduct() {
    }

    public ImageProduct(String id, String link, String productId, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.link = link;
        this.productId = productId;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
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
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ImageProduct that = (ImageProduct) o;
        return Objects.equals(id, that.id) && Objects.equals(link, that.link) && Objects.equals(productId, that.productId) && Objects.equals(createAt, that.createAt) && Objects.equals(updateAt, that.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, link, productId, createAt, updateAt);
    }

    @Override
    public String toString() {
        return "ImageProduct{" + "id='" + id + '\'' + ", link='" + link + '\'' + ", productId='" + productId + '\'' + ", createAt=" + createAt + ", updateAt=" + updateAt + '}';
    }
}
