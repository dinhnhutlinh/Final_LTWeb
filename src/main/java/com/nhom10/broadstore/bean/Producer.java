package com.nhom10.broadstore.bean;

import java.time.LocalDateTime;

class Producer {
    private long id;
    private String name;
    private int addressId;
    private String email;
    private int phone;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Producer(long id, String name, int addressId, String email, int phone, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.name = name;
        this.addressId = addressId;
        this.email = email;
        this.phone = phone;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public Producer() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Producer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", address_id=" + addressId +
                ", email='" + email + '\'' +
                ", phone=" + phone +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}