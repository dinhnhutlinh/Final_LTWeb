package com.nhom10.broadstore.bean;

import org.jdbi.v3.core.mapper.Nested;

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
    @Nested(value = "prod")
    private Producer producer;
    private String desc;
    private String imgDisplay;
    @Nested(value = "cat")
    private Category category;
    private int inventory;
    private int price;
    private float rating;
    @Nested(value = "dis")
    private Discount discount;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Product(int id, String name, int age, int minPlayer, int maxPlayer, int timePlay, double height, double width, double tall, double weight, Producer producer, String desc, String imgDisplay, Category category, int inventory, int price, float rating, Discount discount, LocalDateTime createAt, LocalDateTime updateAt) {
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
        this.producer = producer;
        this.desc = desc;
        this.imgDisplay = imgDisplay;
        this.category = category;
        this.inventory = inventory;
        this.price = price;
        this.rating = rating;
        this.discount = discount;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public Product() {
    }

    public int getCurrentPrice() {
        return this.price - this.price * discount.getDiscountPercent() / 100;
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

    @Nested("prod")
    public Producer getProducer() {
        return producer;
    }

    @Nested("prod")
    public void setProducer(Producer producer) {
        this.producer = producer;
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

    @Nested("cat")
    public Category getCategory() {
        return category;
    }

    @Nested("cat")
    public void setCategory(Category category) {
        this.category = category;
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

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }

    @Nested("dis")
    public Discount getDiscount() {
        return discount;
    }

    @Nested("dis")
    public void setDiscount(Discount discount) {
        this.discount = discount;
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
                ", producer=" + producer +
                ", desc='" + desc + '\'' +
                ", imgDisplay='" + imgDisplay + '\'' +
                ", category=" + category +
                ", inventory=" + inventory +
                ", price=" + price +
                ", discount=" + discount +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }


}
