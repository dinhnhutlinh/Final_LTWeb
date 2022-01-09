package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Category;
import com.nhom10.broadstore.db.JDBIConnector;
import org.jdbi.v3.core.result.ResultBearing;
import org.jdbi.v3.core.result.ResultIterable;
import org.jdbi.v3.core.statement.Update;

import java.util.List;

public class CategoryDAO {
    private final static String ALL_SQL = "SELECT * FROM `category`";
    private final static String GET_BY_ID_SQL = "SELECT * FROM `category` WHERE `id`=?";
    private final static String INSERT_SQL = "INSERT INTO `category`( `name`, `desc`, `create_at`, `update_at`) " +
            "VALUES (?,?,now(),now())";
    private final static String UPDATE_SQL = "UPDATE `category` SET" +
            "`name`=?,`desc`=?,`update_at`=now() WHERE `id`=?";
    private final static String DELETE_SQL = "DELETE FROM `category` WHERE `id`=?";

    public static List<Category> getALl() {
        return JDBIConnector.get().withHandle(
                handle -> handle.select(ALL_SQL).mapToBean(Category.class).list());
    }

    public static Category getByID(int id) {
        return JDBIConnector.get().withHandle(
                handle -> handle.select(GET_BY_ID_SQL).bind(0, id).mapToBean(Category.class).one());
    }

    public static int insert(Category category) {
        return JDBIConnector.get().withHandle(handle -> {
            Update update = handle.createUpdate(INSERT_SQL)
                    .bind(0, category.getName())
                    .bind(1, category.getDesc());
            ResultBearing resultBearing = update.executeAndReturnGeneratedKeys("id");
            ResultIterable<Integer> id = resultBearing.mapTo(Integer.class);
            return id.first();
        });
    }

    public static int update(Category category) {
        return JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate(UPDATE_SQL)
                    .bind(0, category.getName())
                    .bind(1, category.getDesc())
                    .bind(2, category.getId()).execute();
            return category.getId();
        });
    }

    public static int delete(int id) {
        return JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate(DELETE_SQL)
                    .bind(0, id).execute();
            return id;
        });
    }
}
