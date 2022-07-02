package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.User;
import org.jdbi.v3.sqlobject.config.RegisterFieldMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

@RegisterFieldMapper(User.class)
public interface UserDAO {

    @SqlQuery("select *\n" +
            "from Admin\n" +
            "where email = :email\n" +
            "  AND password = :password")
    User loginAdmin(@Bind("email") String email,@Bind("password") String password);

    @SqlQuery("select *\n" +
            "from Customer\n" +
            "where email = :email\n" +
            "  AND password = :password")
    User loginCustomer(@Bind("email") String email,@Bind("password") String password);

    @SqlQuery("select id\n" +
            "from Admin\n" +
            "where email = :email")
    String getAdminIDWithMail(@Bind("email") String email);

    @SqlQuery("select id\n" +
            "from Customer\n" +
            "where email = :email")
    String getCustomerIDWithMail(@Bind("email") String email);
}
