package com.nhom10.broadstore.db;

import com.mysql.cj.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnect {
    public static DBConnect instance;
    private Connection connection;

    private static final String DB_URL = "jdbc:mysql://localhost:3306/broadgame";
    private static final String USER = "";
    private static final String PASS = "";


    private DBConnect() {
    }

    public static DBConnect getInstance() {
        if (instance == null)
            return instance = new DBConnect();
        else
            return instance;
    }

    private void connect() throws SQLException, ClassNotFoundException {
        if (connection == null || connection.isClosed()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DB_URL, USER, PASS);
        }
    }

    public Statement get() {
        try {
            connect();
            return connection.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }
}
