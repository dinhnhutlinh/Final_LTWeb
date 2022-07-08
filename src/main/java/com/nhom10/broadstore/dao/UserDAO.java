package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.User;
import org.jdbi.v3.sqlobject.config.RegisterFieldMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

@RegisterFieldMapper(User.class)
public interface UserDAO {

    @SqlQuery("select * from Admin where email = :email AND password = :password")
    User loginAdmin(@Bind("email") String email, @Bind("password") String password);

    @SqlQuery("select * from Customer where email = :email AND password = :password")
    User loginCustomer(@Bind("email") String email, @Bind("password") String password);

    @SqlQuery("select id from Admin where email = :email")
    String getAdminIDWithMail(@Bind("email") String email);

    @SqlQuery("select id from Customer where email = :email")
    String getCustomerIDWithMail(@Bind("email") String email);
}
