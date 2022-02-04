package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Customer;
import com.nhom10.broadstore.bean.UserSession;
import org.jdbi.v3.sqlobject.CreateSqlObject;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;
import org.jdbi.v3.sqlobject.transaction.Transaction;

import java.util.List;

@RegisterBeanMapper(Customer.class)
public interface CustomerDAO {

    @SqlQuery(value = "SELECT id, avatar, first_name, last_name, email, phone, active\n" +
            "FROM customer")
    List<Customer> getAllCustomers();

    @SqlQuery(value = "SELECT cus.id id, cus.avatar avatar, cus.first_name first_name, cus.last_name last_name,\n" +
            "cus.email email, cus.phone phone, cus.active active,\n" +
            "addr.id addr_id, addr.details_address addr_detailsAddress, addr.district addr_district,\n" +
            "addr.province addr_province, addr.create_at addr_createAt, addr.update_at addr_updateAt\n" +
            "FROM customer cus\n" +
            "JOIN address addr ON cus.address_id= addr.id WHERE cus.id=:id")
    @SingleValue
    Customer findById(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `customer`(`first_name`, `last_name`, `avatar`, `password`, `address_id`," +
            " `active`, `phone`, `email`, `create_at`, `update_at`) VALUES " +
            "(:firstName,:lastName,:avatar,:password,:addressId,:active,:phone,:email,now(),now())")
    @GetGeneratedKeys("`id`")
    int insert(@BindBean Customer customer, @Bind("addressId") int id);

    @SqlUpdate(value = "UPDATE `customer` SET `first_name`=:firstName,`last_name`=:lastName,`avatar`=:avatar" +
            ",`password`=:password,`address_id`=:addressId,`active`=:active,`phone`=:phone,`email`=:email,`update_at`=:now() WHERE `id`=:id")
    void update(@BindBean Customer customer, @Bind("addressID") int id);

    @SqlUpdate(value = "DELETE FROM `customer` WHERE `id`=:id")
    void delete(@Bind("id") int id);

    @CreateSqlObject
    AddressDAO createAddressDAO();

    @Transaction
    default int insertFull(Customer customer) {
        int addressID = createAddressDAO().insert(customer.getAddress());
        int id = insert(customer, addressID);
        return id;
    }

    default int updateFull(Customer customer) {
        createAddressDAO().update(customer.getAddress());
        update(customer, customer.getAddress().getId());
        return customer.getId();
    }

    default int deleteFull(Customer customer) {
        delete(customer.getId());
        createAddressDAO().delete(customer.getAddress().getId());
        return customer.getId();
    }

    @SqlQuery(value = "SELECT id, CONCAT(last_name,' ',first_name) name " +
            ", email, avatar FROM `customer` WHERE email=:email AND `password`=:pass")
    @RegisterBeanMapper(UserSession.class)
    @SingleValue
    UserSession login(@Bind("email") String email, @Bind("pass") String hashPassword);

    @SqlQuery(value = "SELECT email FROM `customer` WHERE email=?")
    @SingleValue
    String checkContainEmail(String email);
}