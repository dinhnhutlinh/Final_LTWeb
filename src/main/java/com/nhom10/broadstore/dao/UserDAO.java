package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.User;
import org.jdbi.v3.sqlobject.config.RegisterFieldMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterFieldMapper(User.class)
public interface UserDAO {

    @SqlQuery("select * from Admin where email = :email AND password = :password AND active=1")
    User loginAdmin(@Bind("email") String email, @Bind("password") String password);

    @SqlQuery("select * from Customer where email = :email AND password = :password AND active=1")
    User loginCustomer(@Bind("email") String email, @Bind("password") String password);

    @SqlQuery("select id from Admin where email = :email")
    String getAdminIDWithMail(@Bind("email") String email);

    @SqlQuery("select id from Customer where email = :email")
    String getCustomerIDWithMail(@Bind("email") String email);

    @SqlUpdate("insert into `Customer` (`id`, `first_name`, `last_name`, `avatar`, `password`, `address`,`phone`, `email`, `create_at`, `update_at`, `active`) values (:id, :firstName, :lastName, :avatar, :password, :address ,:phone, :mail, now(), now(), :active)")
    int signUpCustomer(@BindBean User user);

    @SqlQuery("SELECT * FROM Admin")
    List<User> listAdmin();

    @SqlQuery("SELECT * FROM Customer")
    List<User> listCustomer();

    @SqlUpdate("DELETE FROM `Admin` WHERE id=:id")
    int deleteAdmin(@Bind("id") String id);

    @SqlUpdate("DELETE FROM `Customer` WHERE id=:id")
    int deleteCustomer(@Bind("id") String id);

    @SqlUpdate("UPDATE  Admin SET active=:active where id=:id")
    int setActiveAdmin(@Bind("id") String id, @Bind("active") int active);

    @SqlUpdate("UPDATE  Customer SET active=:active where id=:id")
    int setActiveCustomer(@Bind("id") String id, @Bind("active") int active);

    @SqlUpdate("UPDATE  Customer SET password=:password where id=:id")
    void changePasswordCustomer(@Bind("id") String id, @Bind("password") String password);

    @SqlUpdate("UPDATE  Admin SET password=:password where id=:id")
    void changePasswordAdmin(@Bind("id") String id, @Bind("password") String password);

}
