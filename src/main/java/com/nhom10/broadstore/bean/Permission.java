package com.nhom10.broadstore.bean;

import java.io.Serializable;
import java.time.LocalDateTime;

public class Permission implements Serializable {
    private int id;
    private String role;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;
public Permission(){};
    public Permission(int id , String role, LocalDateTime createAt, LocalDateTime updateAt){
        this.id=id;
        this.role=role;
        this.createAt=createAt;
        this.updateAt=updateAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
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
}
