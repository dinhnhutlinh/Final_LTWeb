package com.nhom10.broadstore;

import com.google.gson.Gson;
import com.nhom10.broadstore.beans.Product;
import com.nhom10.broadstore.beans.User;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Objects;

public class Tools {
    public static void main(String[] args) {
        new Tools().genInput();
    }

    void genInsert() {
        String query = "INSERT INTO `Product`(`id`, `name`, `price`, `min_age`, `min_player`, `max_player`, `min_playtime`," +
                " `max_playtime`, `desc`, `img_display`, `weight_amount`, `weight_units`, `size_height`, `size_depth`, " +
                "`size_units`, `active`, `inventory`, `producer_id`, `category_id`, `discount_id`, `create_at`, `update_at`) VALUES (:inserted)";
        String inserted = "";
        Class theClass = Product.class;
        for (Field field : theClass.getDeclaredFields()) {
            inserted += ":" + field.getName() + ",";
        }
        System.out.println(query.replace(":inserted", inserted));
    }

    void insertValue() throws FileNotFoundException {
        String path = "";
        Gson gson = new Gson();
        HashMap<String, Objects> json = gson.fromJson(new FileReader(path), HashMap.class);
    }

    void genClass() {
        String txt = "$('#:name').val(''data.:name);";
        Class theClass = User.class;
        for (Field field : theClass.getDeclaredFields()) {
            System.out.println(txt.replaceAll(":name", field.getName()));
        }
    }

    void genInput() {
        String html = " <div class=\"form-group mb-3\">\n" +
                "                            <label for=\":name\">:name</label>\n" +
                "                            <input type=\"text\" class=\"form-control\" id=\":name\"\n" +
                "                                   placeholder=\":name\" value=\"${product.:name}\">\n" +
                "                        </div>";
        Class theClass = Product.class;
        for (Field field : theClass.getDeclaredFields()) {
            System.out.println(html.replaceAll(":name",field.getName()));
        }
    }
}
