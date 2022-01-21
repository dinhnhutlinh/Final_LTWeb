package com.nhom10.broadstore.bean;

import com.nhom10.broadstore.emun.Role;

import java.io.Serializable;

public class UserSession implements Serializable {
    private int id;
    private String name;
    private String avatar;
    private Role role;

    public UserSession() {
        this.role = Role.CUSTOMER;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getAvatar() {
        return avatar;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "UserSession{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", avatar='" + avatar + '\'' +
                ", role=" + role +
                '}';
    }
}
