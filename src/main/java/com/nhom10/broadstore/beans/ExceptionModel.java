package com.nhom10.broadstore.beans;

public class ExceptionModel {
    String mess;

    public ExceptionModel() {
    }

    public ExceptionModel(String mess) {
        this.mess = mess;
    }

    public String getMess() {
        return mess;
    }

    public void setMess(String mess) {
        this.mess = mess;
    }
}
