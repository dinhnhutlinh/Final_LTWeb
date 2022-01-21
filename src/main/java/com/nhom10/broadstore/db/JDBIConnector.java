package com.nhom10.broadstore.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;

import java.sql.SQLException;

import static com.nhom10.broadstore.db.DBProperties.*;

public class JDBIConnector {
    private static Jdbi jdbi;

    private JDBIConnector() {
    }

    private static void makeConnect() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql://" + getHost() + ":" + getPort() + "/" + getDatabaseName());
        dataSource.setUser(getUserName());
        dataSource.setPassword(getPassword());

        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        jdbi = Jdbi.create(dataSource);
        jdbi.installPlugin(new SqlObjectPlugin());

    }

    public static Jdbi get() {
        if (jdbi == null)
            makeConnect();
        return jdbi;
    }
}
