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
    private String producerId;
    private String categoryId;
    private String discountId;
    private Producer producer;
    private Category category;
    private Discount discount;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Product() {
    }

    public Product(String id, String name, double price, int minAge, int minPlayer, int maxPlayer, int minPlaytime, int maxPlaytime, String desc, String imageDisplay, double weightAmount, String weightUnits, double sizeHeight, double sizeDepth, String sizeUnits, int active, int inventory, String producerId, String categoryId, String discountId, Producer producer, Category category, Discount discount, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.minAge = minAge;
        this.minPlayer = minPlayer;
        this.maxPlayer = maxPlayer;
        this.minPlaytime = minPlaytime;
        this.maxPlaytime = maxPlaytime;
        this.desc = desc;
        this.imgDisplay = imageDisplay;
        this.weightAmount = weightAmount;
        this.weightUnits = weightUnits;
        this.sizeHeight = sizeHeight;
        this.sizeDepth = sizeDepth;
        this.sizeUnits = sizeUnits;
        this.active = active;
        this.inventory = inventory;
        this.producerId = producerId;
        this.categoryId = categoryId;
        this.discountId = discountId;
        this.producer = producer;
        this.category = category;
        this.discount = discount;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Product)) return false;
        Product product = (Product) o;
        return Double.compare(product.getPrice(), getPrice()) == 0 && getMinAge() == product.getMinAge() && getMinPlayer() == product.getMinPlayer() && getMaxPlayer() == product.getMaxPlayer() && getMinPlaytime() == product.getMinPlaytime() && getMaxPlaytime() == product.getMaxPlaytime() && Double.compare(product.getWeightAmount(), getWeightAmount()) == 0 && Double.compare(product.getSizeHeight(), getSizeHeight()) == 0 && Double.compare(product.getSizeDepth(), getSizeDepth()) == 0 && getActive() == product.getActive() && getInventory() == product.getInventory() && Objects.equals(getId(), product.getId()) && Objects.equals(getName(), product.getName()) && Objects.equals(getDesc(), product.getDesc()) && Objects.equals(getImgDisplay(), product.getImgDisplay()) && Objects.equals(getWeightUnits(), product.getWeightUnits()) && Objects.equals(getSizeUnits(), product.getSizeUnits()) && Objects.equals(getProducerId(), product.getProducerId()) && Objects.equals(getCategoryId(), product.getCategoryId()) && Objects.equals(getDiscountId(), product.getDiscountId()) && Objects.equals(getProducer(), product.getProducer()) && Objects.equals(getCategory(), product.getCategory()) && Objects.equals(getDiscount(), product.getDiscount()) && Objects.equals(getCreateAt(), product.getCreateAt()) && Objects.equals(getUpdateAt(), product.getUpdateAt());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), getName(), getPrice(), getMinAge(), getMinPlayer(), getMaxPlayer(), getMinPlaytime(), getMaxPlaytime(), getDesc(), getImgDisplay(), getWeightAmount(), getWeightUnits(), getSizeHeight(), getSizeDepth(), getSizeUnits(), getActive(), getInventory(), getProducerId(), getCategoryId(), getDiscountId(), getProducer(), getCategory(), getDiscount(), getCreateAt(), getUpdateAt());
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

    public String getProducerId() {
        return producerId;
    }

    public void setProducerId(String producerId) {
        this.producerId = producerId;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getDiscountId() {
        return discountId;
    }

    public void setDiscountId(String discountId) {
        this.discountId = discountId;
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

    public double getPriceWasDiscount() {

        return price;
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
                ", imageDisplay='" + imgDisplay + '\'' +
                ", weightAmount=" + weightAmount +
                ", weightUnits='" + weightUnits + '\'' +
                ", sizeHeight=" + sizeHeight +
                ", sizeDepth=" + sizeDepth +
                ", sizeUnits='" + sizeUnits + '\'' +
                ", active=" + active +
                ", inventory=" + inventory +
                ", producerId='" + producerId + '\'' +
                ", categoryId='" + categoryId + '\'' +
                ", discountId='" + discountId + '\'' +
                ", producer=" + producer +
                ", category=" + category +
                ", discount=" + discount +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
