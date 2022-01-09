package com.nhom10.broadstore.db;

import java.io.IOException;
import java.util.Properties;

public class DBProperties {
    private static final Properties prop = new Properties();

    static {
        try {
            prop.load(DBProperties.class.getClassLoader().getResourceAsStream("db.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String getHost() {
        return prop.get("db.host").toString();
    }

    public static String getPort() {
        return prop.get("db.port").toString();
    }

    public static String getUserName() {
        return prop.get("db.username").toString();
    }

    public static String getPassword() {
        return prop.get("db.password").toString();
    }

    public static String getDatabaseName() {
        return prop.get("db.databaseName").toString();
    }
}
