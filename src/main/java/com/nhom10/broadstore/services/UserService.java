package com.nhom10.broadstore.services;

import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.db.JDBIConnector;
import com.nhom10.broadstore.dao.UserDAO;
import com.nhom10.broadstore.emun.Role;
import org.jdbi.v3.core.Jdbi;

import java.security.GeneralSecurityException;

public class UserService {

    Jdbi connector = JDBIConnector.get();

    public User login(String email, String password) throws GeneralSecurityException {
        return connector.withExtension(UserDAO.class, handle -> {
            User user;

            if ((user = handle.loginAdmin(email, password)) != null) {
                user.setRole(Role.ADMIN);
                return user;
            }

            String hashPassCustomer = PasswordHash.createHash(password);
            user = handle.loginCustomer(email, hashPassCustomer);
            if (user != null)
                user.setRole(Role.CUSTOMER);

            return user;
        });
    }

    public int signUp(User user) {
//
        //
        return connector.withExtension(UserDAO.class, handle -> handle.signUpCustomer(user));
    }

    public boolean isContainUserWithEmail(String email) {
        return connector.withExtension(UserDAO.class, handle -> {
            String id;

            id = handle.getAdminIDWithMail(email);
            if (id != null) {
                return true;
            }
            id = handle.getCustomerIDWithMail(email);
            return id != null;
        });
    }

}
