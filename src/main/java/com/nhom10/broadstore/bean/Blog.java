package com.nhom10.broadstore.bean;

import java.time.LocalDateTime;

public class Blog {
    private int id;
    private int adminID;
    private String title;
    private int imageID;
    private String content;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Blog() {
    }

    public Blog(int id, int adminID, String title, int imageID, String content, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.adminID = adminID;
        this.title = title;
        this.imageID = imageID;
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

    public int getAdminID() {
        return adminID;
    }

    public void setAdminID(int adminID) {
        this.adminID = adminID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getImageID() {
        return imageID;
    }

    public void setImageID(int imageID) {
        this.imageID = imageID;
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
}
