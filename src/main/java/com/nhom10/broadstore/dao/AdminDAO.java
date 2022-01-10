package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Admin;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface AdminDAO {
    @SqlQuery(value = "SELECT * FROM `admin`")
    @RegisterBeanMapper(Admin.class)
    List<Admin> getAll();

    @SqlQuery(value = "SELECT * FROM `admin` WHERE `id`= :id")
    @RegisterBeanMapper(Admin.class)
    @SingleValue
    Admin getByID(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `admin`(`first_name`, `last_name`, `password`, `address_id`, " +
            "`email`, `phone`, `avatar`, `create_at`, `update_at`) VALUES " +
            "(:firstName,:lastName,:password,:addressId,:email,:phone,:avatar,now(),now())")
    @GetGeneratedKeys("`id`")
    int insert(@BindBean Admin admin);

    @SqlUpdate(value = "UPDATE `admin` SET `first_name` = :firstName,`last_name` = :lastName,`password`= :password," +
            "`address_id`= :addressId,`email`= :email,`phone`= :phone,`avatar`= :avatar,`update_at`= now() WHERE `id`= :id")
    void update(@BindBean Admin admin);

    @SqlUpdate(value = "DELETE FROM `admin` WHERE `id`= :id")
    void delete(@Bind("`id`") int id);
}
