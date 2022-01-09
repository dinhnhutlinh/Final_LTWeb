package com.nhom10.broadstore.bean;

import java.time.LocalDateTime;

public class Slider {
    private int id;
    private String name;
    private String link;
    private int imageID;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Slider(int id, String name, String link, int imageID, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.name = name;
        this.link = link;
        this.imageID = imageID;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public Slider() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public int getImageID() {
        return imageID;
    }

    public void setImageID(int imageID) {
        this.imageID = imageID;
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
        return "Slider{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", link='" + link + '\'' +
                ", imageID=" + imageID +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
