package com.nhom10.broadstore.bean;

import java.time.LocalDateTime;

public class Ship {
    private  int id;
    private double weight;
    private int price;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Ship(int id, double weight, int price, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.weight = weight;
        this.price = price;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }
    public Ship(){}
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
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
        return "Ship{" +
                "id=" + id +
                ", weight=" + weight +
                ", price=" + price +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
