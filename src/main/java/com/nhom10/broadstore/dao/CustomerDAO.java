package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Customer;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface CustomerDAO {

    @SqlQuery(value = "SELECT * FROM `customer`")
    @RegisterBeanMapper(Customer.class)
    List<Customer> getAll();

    @SqlQuery(value = "SELECT * FROM `customer` WHERE `id` = :id")
    @RegisterBeanMapper(Customer.class)
    @SingleValue
    Customer getById(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `customer`(`first_name`, `last_name`, `avatar`, `password`, `address_id`," +
            " `active`, `phone`, `email`, `create_at`, `update_at`) VALUES " +
            "(:firstName,:lastName,:avatar,:password,:addressId,:active,:phone,:email,now(),now())")
    @GetGeneratedKeys("`id`")
    int insert(@BindBean Customer customer);

    @SqlUpdate(value = "UPDATE `customer` SET `first_name`=:firstName,`last_name`=:lastName,`avatar`=:avatar" +
            ",`password`=:password,`address_id`=:addressId,`active`=:active,`phone`=:phone,`email`=:email,`update_at`=:now() WHERE `id`=:id")
    void update(@BindBean Customer customer);

    @SqlUpdate(value = "DELETE FROM `customer` WHERE `id`=:id")
    void delete(@Bind("id") int id);
}
