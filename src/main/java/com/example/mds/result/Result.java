package com.example.mds.result;

public class Result {


    public int code;
    public String message;
    public Object result;

    Result(int code, String message, Object data) {
        this.code = code;
        this.message = message;
        this.result = data;
    }
}
