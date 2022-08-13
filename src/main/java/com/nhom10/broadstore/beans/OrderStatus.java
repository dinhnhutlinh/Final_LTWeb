package com.nhom10.broadstore.beans;

import java.util.HashMap;
import java.util.Map;

public class OrderStatus {
    public static final int TRANSMISSION = 0;
    public static final int CANCEL = 1;
    public static final int SUCCESS = 2;

    public static Map<String,Integer> mapOrderStatus(){
        Map<String,Integer> map= new HashMap<>();
        map.put("TRANSMISSION",0);
        map.put("CANCEL",1);
        map.put("SUCCESS",2);
        return map;
    }
}