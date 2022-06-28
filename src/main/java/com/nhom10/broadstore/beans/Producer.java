package com.nhom10.broadstore.beans;

import java.time.LocalDateTime;
import java.util.Objects;

public class Producer {
    private String id;
    private String name;
    private String address;
    private String mail;
    private String phone;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Producer(){}
    public Producer(String id, String name, String address, String mail, String phone, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.mail = mail;
        this.phone = phone;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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
        Producer producer = (Producer) o;
        return Objects.equals(id, producer.id) && Objects.equals(name, producer.name) && Objects.equals(address, producer.address) && Objects.equals(mail, producer.mail) && Objects.equals(phone, producer.phone) && Objects.equals(createAt, producer.createAt) && Objects.equals(updateAt, producer.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, address, mail, phone, createAt, updateAt);
    }
    @Override
    public String toString() {
        return "Producer{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", mail='" + mail + '\'' +
                ", phone='" + phone + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
