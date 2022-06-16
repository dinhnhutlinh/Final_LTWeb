package com.nhom10.broadstore.bean;

import java.io.Serializable;
import java.util.ArrayList;

public class GroupImage implements Serializable {
    private int id;
    private int productId;
    private ArrayList<Integer> images;

    public GroupImage(int id, int productId, ArrayList<Integer> images) {
        this.id = id;
        this.productId = productId;
        this.images = images;
    }

    public GroupImage() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public ArrayList<Integer> getImages() {
        return images;
    }

    public void setImages(ArrayList<Integer> images) {
        this.images = images;
    }
}
