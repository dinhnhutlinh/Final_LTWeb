package com.nhom10.broadstore.bean;

import java.io.Serializable;
import java.time.LocalDateTime;

public class Address implements Serializable {
    private int id;
    private String detailsAddress;
    private String district;
    private String province;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Address(int id, String detailsAddress, String district, String province, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.detailsAddress = detailsAddress;
        this.district = district;
        this.province = province;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public Address() {
        this.id = 0;
        this.detailsAddress = "";
        this.district = "";
        this.province = "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDetailsAddress() {
        return detailsAddress;
    }

    public void setDetailsAddress(String detailsAddress) {
        this.detailsAddress = detailsAddress;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
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
        return "Address{" +
                "id=" + id +
                ", addressDetail='" + detailsAddress + '\'' +
                ", district='" + district + '\'' +
                ", province='" + province + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
