package com.nhom10.broadstore.services;

import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.dao.UserDAO;
import com.nhom10.broadstore.db.JDBIConnector;
import com.nhom10.broadstore.emun.Role;
import org.jdbi.v3.core.Jdbi;

import java.security.GeneralSecurityException;
import java.util.List;
import java.util.stream.Collectors;

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

    public List<User> listCustomer() {
        return connector.withExtension(UserDAO.class, handle ->
                handle.listCustomer().stream().map(user -> {
                    user.setRole(Role.CUSTOMER);
                    return user;
                }).collect(Collectors.toList()));
    }

    public List<User> listAdmin() {
        return connector.withExtension(UserDAO.class, handle ->
                handle.listAdmin().stream().map(user -> {
                    user.setRole(Role.ADMIN);
                    return user;
                }).collect(Collectors.toList()));
    }

    public int deleteAdmin(String id) {
        return connector.withExtension(UserDAO.class
                , handle -> handle.deleteAdmin(id));
    }

    public int deleteCustomer(String id) {
        return connector.withExtension(UserDAO.class
                , handle -> handle.deleteCustomer(id));
    }


    public int setActiveAdmin(String id, int active) {
        return connector.withExtension(UserDAO.class
                , handle -> handle.setActiveAdmin(id, active));
    }

    public int setActiveCustomer(String id, int active) {
        return connector.withExtension(UserDAO.class
                , handle -> handle.setActiveCustomer(id, active));
    }

    public String findWithEmail(String email) {
        String id = connector.withExtension(UserDAO.class
                , handle -> handle.getAdminIDWithMail(email));
        if (id == null) {
            id = connector.withExtension(UserDAO.class
                    , handle -> handle.getCustomerIDWithMail(email));
        }
        return id;
    }

    public void changePassword(String id, String password) {
        connector.useExtension(UserDAO.class
                , handle -> handle.changePasswordCustomer(id, password));
        connector.useExtension(UserDAO.class
                , handle -> handle.changePasswordAdmin(id, password));
    }
}
