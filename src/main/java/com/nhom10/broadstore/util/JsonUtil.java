package com.nhom10.broadstore.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nhom10.broadstore.adapter.LocalDateTimeDeserializer;
import com.nhom10.broadstore.adapter.LocalDateTimeSerializer;

import java.time.LocalDateTime;

public class JsonUtil {

    private GsonBuilder builder;
    private Gson gson;


    public JsonUtil() {
        builder = new GsonBuilder().registerTypeAdapter(LocalDateTime.class, new LocalDateTimeSerializer())
                .registerTypeAdapter(LocalDateTime.class, new LocalDateTimeDeserializer());

        gson = builder.create();
    }

    public String toJSon(Object object) {
        return gson.toJson(object);
    }
}
