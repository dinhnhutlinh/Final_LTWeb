package com.nhom10.broadstore.bean;

import java.io.Serializable;
import java.time.LocalDateTime;

public class Product implements Serializable {
    private int id;
    private String name;
    private int age;
    private int minPlayer;
    private int maxPlayer;
    private int timePlay;
    private double height;
    private double width;
    private double tall;
    private double weight;
    private int producerId;
    private String desc;
    private String imgDisplay;
    private int categoryId;
    private int inventory;
    private int price;
    private int discountId;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Product(int id, String name, int age, int minPlayer, int maxPlayer, int timePlay, double height, double width, double tall, double weight, int producerId, String desc, String imgDisplay, int categoryId, int inventory, int price, int discountId, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.minPlayer = minPlayer;
        this.maxPlayer = maxPlayer;
        this.timePlay = timePlay;
        this.height = height;
        this.width = width;
        this.tall = tall;
        this.weight = weight;
        this.producerId = producerId;
        this.desc = desc;
        this.imgDisplay = imgDisplay;
        this.categoryId = categoryId;
        this.inventory = inventory;
        this.price = price;
        this.discountId = discountId;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }
    public Product(){}

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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getMinPlayer() {
        return minPlayer;
    }

    public void setMinPlayer(int minPlayer) {
        this.minPlayer = minPlayer;
    }

    public int getMaxPlayer() {
        return maxPlayer;
    }

    public void setMaxPlayer(int maxPlayer) {
        this.maxPlayer = maxPlayer;
    }

    public int getTimePlay() {
        return timePlay;
    }

    public void setTimePlay(int timePlay) {
        this.timePlay = timePlay;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getTall() {
        return tall;
    }

    public void setTall(double tall) {
        this.tall = tall;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public int getProducerId() {
        return producerId;
    }

    public void setProducerId(int producerId) {
        this.producerId = producerId;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getImgDisplay() {
        return imgDisplay;
    }

    public void setImgDisplay(String imgDisplay) {
        this.imgDisplay = imgDisplay;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getDiscountId() {
        return discountId;
    }

    public void setDiscountId(int discountId) {
        this.discountId = discountId;
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
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", minPlayer=" + minPlayer +
                ", maxPlayer=" + maxPlayer +
                ", timePlay=" + timePlay +
                ", height=" + height +
                ", width=" + width +
                ", tall=" + tall +
                ", weight=" + weight +
                ", producerId=" + producerId +
                ", desc='" + desc + '\'' +
                ", imgDisplay='" + imgDisplay + '\'' +
                ", categoryId=" + categoryId +
                ", inventory=" + inventory +
                ", price=" + price +
                ", discountId=" + discountId +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
