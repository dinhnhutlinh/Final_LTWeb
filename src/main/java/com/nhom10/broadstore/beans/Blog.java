package com.nhom10.broadstore.beans;

import java.time.LocalDateTime;
import java.util.Objects;

public class Blog {

    private String id;
    private User admin;
    private String adminId;
    private String title;
    private String image;
    private String content;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Blog(String id, User admin, String adminId, String title, String image, String content, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.admin = admin;
        this.adminId = adminId;
        this.title = title;
        this.image = image;
        this.content = content;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public Blog() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public User getAdmin() {
        return admin;
    }

    public void setAdmin(User admin) {
        this.admin = admin;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
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
        Blog blog = (Blog) o;
        return Objects.equals(id, blog.id) && Objects.equals(admin, blog.admin) && Objects.equals(adminId, blog.adminId) && Objects.equals(title, blog.title) && Objects.equals(image, blog.image) && Objects.equals(content, blog.content) && Objects.equals(createAt, blog.createAt) && Objects.equals(updateAt, blog.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, admin, adminId, title, image, content, createAt, updateAt);
    }

    @Override
    public String toString() {
        return "Blog{" + "id='" + id + '\'' + ", admin=" + admin + ", adminId='" + adminId + '\'' + ", title='" + title + '\'' + ", image='" + image + '\'' + ", content='" + content + '\'' + ", createAt=" + createAt + ", updateAt=" + updateAt + '}';
    }
}
