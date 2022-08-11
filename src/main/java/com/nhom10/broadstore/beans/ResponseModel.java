package com.nhom10.broadstore.beans;

public class ResponseModel<T> {

    private int status;
    private String mess;
    private T data;

    public ResponseModel() {
    }

    public ResponseModel(int status, String mess, T data) {
        this.status = status;
        this.mess = mess;
        this.data = data;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMess() {
        return mess;
    }

    public void setMess(String mess) {
        this.mess = mess;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
