package com.nhom10.broadstore.beans;

import java.time.LocalDateTime;
import java.util.Objects;

public class Product {
    private String id;
    private String name;
    private double price;
    private int minAge;
    private int minPlayer;
    private int maxPlayer;
    private int minPlaytime;
    private int maxPlaytime;
    private String desc;
    private String imgDisplay;
    private double weightAmount;
    private String weightUnits;
    private double sizeHeight;
    private double sizeDepth;
    private String sizeUnits;
    private int active;
    private int inventory;
    private Producer producer;
    private Category category;
    private Discount discount;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    //
    private String producerId;
    private String categoryId;
    private String discountId;

    public Product() {
    }

    public Product(String id, String name, double price, int minAge, int minPlayer, int maxPlayer, int minPlaytime, int maxPlaytime, String desc, String imgDisplay, double weightAmount, String weightUnits, double sizeHeight, double sizeDepth, String sizeUnits, int active, int inventory, Producer producer, Category category, Discount discount, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.minAge = minAge;
        this.minPlayer = minPlayer;
        this.maxPlayer = maxPlayer;
        this.minPlaytime = minPlaytime;
        this.maxPlaytime = maxPlaytime;
        this.desc = desc;
        this.imgDisplay = imgDisplay;
        this.weightAmount = weightAmount;
        this.weightUnits = weightUnits;
        this.sizeHeight = sizeHeight;
        this.sizeDepth = sizeDepth;
        this.sizeUnits = sizeUnits;
        this.active = active;
        this.inventory = inventory;
        this.producer = producer;
        this.category = category;
        this.discount = discount;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getMinAge() {
        return minAge;
    }

    public void setMinAge(int minAge) {
        this.minAge = minAge;
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

    public int getMinPlaytime() {
        return minPlaytime;
    }

    public void setMinPlaytime(int minPlaytime) {
        this.minPlaytime = minPlaytime;
    }

    public int getMaxPlaytime() {
        return maxPlaytime;
    }

    public void setMaxPlaytime(int maxPlaytime) {
        this.maxPlaytime = maxPlaytime;
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

    public double getWeightAmount() {
        return weightAmount;
    }

    public void setWeightAmount(double weightAmount) {
        this.weightAmount = weightAmount;
    }

    public String getWeightUnits() {
        return weightUnits;
    }

    public void setWeightUnits(String weightUnits) {
        this.weightUnits = weightUnits;
    }

    public double getSizeHeight() {
        return sizeHeight;
    }

    public void setSizeHeight(double sizeHeight) {
        this.sizeHeight = sizeHeight;
    }

    public double getSizeDepth() {
        return sizeDepth;
    }

    public void setSizeDepth(double sizeDepth) {
        this.sizeDepth = sizeDepth;
    }

    public String getSizeUnits() {
        return sizeUnits;
    }

    public void setSizeUnits(String sizeUnits) {
        this.sizeUnits = sizeUnits;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public Producer getProducer() {
        return producer;
    }

    public void setProducer(Producer producer) {
        this.producer = producer;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Discount getDiscount() {
        return discount;
    }

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
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return Double.compare(product.price, price) == 0 && minAge == product.minAge && minPlayer == product.minPlayer && maxPlayer == product.maxPlayer && minPlaytime == product.minPlaytime && maxPlaytime == product.maxPlaytime && Double.compare(product.weightAmount, weightAmount) == 0 && Double.compare(product.sizeHeight, sizeHeight) == 0 && Double.compare(product.sizeDepth, sizeDepth) == 0 && active == product.active && inventory == product.inventory && Objects.equals(id, product.id) && Objects.equals(name, product.name) && Objects.equals(desc, product.desc) && Objects.equals(imgDisplay, product.imgDisplay) && Objects.equals(weightUnits, product.weightUnits) && Objects.equals(sizeUnits, product.sizeUnits) && Objects.equals(producer, product.producer) && Objects.equals(category, product.category) && Objects.equals(discount, product.discount) && Objects.equals(createAt, product.createAt) && Objects.equals(updateAt, product.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, price, minAge, minPlayer, maxPlayer, minPlaytime, maxPlaytime, desc, imgDisplay, weightAmount, weightUnits, sizeHeight, sizeDepth, sizeUnits, active, inventory, producer, category, discount, createAt, updateAt);
    }

    @Override
    public String toString() {
        return "Product{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", minAge=" + minAge +
                ", minPlayer=" + minPlayer +
                ", maxPlayer=" + maxPlayer +
                ", minPlaytime=" + minPlaytime +
                ", maxPlaytime=" + maxPlaytime +
                ", desc='" + desc + '\'' +
                ", imgDisplay='" + imgDisplay + '\'' +
                ", weightAmount=" + weightAmount +
                ", weightUnits='" + weightUnits + '\'' +
                ", sizeHeight=" + sizeHeight +
                ", sizeDepth=" + sizeDepth +
                ", sizeUnits='" + sizeUnits + '\'' +
                ", active=" + active +
                ", inventory=" + inventory +
                ", producer=" + producer +
                ", category=" + category +
                ", discount=" + discount +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
