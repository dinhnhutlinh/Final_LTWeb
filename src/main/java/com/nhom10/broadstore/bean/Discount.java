package com.nhom10.broadstore.bean;

import java.time.LocalDateTime;

public class Discount {
    private int id;
    private String name;
    private String desc;
    private int discountPercent;
    private int active;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Discount(int id, String name, String desc, int discountPercent, int active, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.discountPercent = discountPercent;
        this.active = active;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public Discount() {
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

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getDiscountPercent() {
        return discountPercent;
    }

    public void setDiscountPercent(int discountPercent) {
        this.discountPercent = discountPercent;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
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
        return "Discount{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", desc='" + desc + '\'' +
                ", discountPercent=" + discountPercent +
                ", active=" + active +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
