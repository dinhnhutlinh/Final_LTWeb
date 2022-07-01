package com.nhom10.broadstore.beans;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.text.DateFormat;
import java.time.LocalDateTime;
import java.util.Objects;

public class Category {
    private String id;
    private String name;
    private String desc;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;
    public  Category(){}

    public Category(String id, String name, String desc, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.name = name;
        this.desc = desc;
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

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
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
        Category category = (Category) o;
        return Objects.equals(id, category.id) && Objects.equals(name, category.name) && Objects.equals(desc, category.desc) && Objects.equals(createAt, category.createAt) && Objects.equals(updateAt, category.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, desc, createAt, updateAt);
    }

    @Override
    public String toString() {
        return "Category{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", desc='" + desc + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
