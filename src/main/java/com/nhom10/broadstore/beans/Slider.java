package com.nhom10.broadstore.beans;

import java.time.LocalDateTime;
import java.util.Objects;

public class Slider {
    private String id;
    private String name;
    private String link;
    private String image;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Slider() {
    }

    public Slider(String id, String name, String link, String image, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.name = name;
        this.link = link;
        this.image = image;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
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
        Slider slider = (Slider) o;
        return Objects.equals(id, slider.id) && Objects.equals(name, slider.name) && Objects.equals(link, slider.link) && Objects.equals(image, slider.image) && Objects.equals(createAt, slider.createAt) && Objects.equals(updateAt, slider.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, link, image, createAt, updateAt);
    }

    @Override
    public String toString() {
        return "Slider{" + "id='" + id + '\'' + ", name='" + name + '\'' + ", link='" + link + '\'' + ", image='" + image + '\'' + ", createAt=" + createAt + ", updateAt=" + updateAt + '}';
    }
}
