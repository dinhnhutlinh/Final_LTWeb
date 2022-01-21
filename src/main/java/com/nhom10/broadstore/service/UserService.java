package com.nhom10.broadstore.service;

import com.nhom10.broadstore.bean.Customer;
import com.nhom10.broadstore.dao.AdminDAO;
import com.nhom10.broadstore.dao.CustomerDAO;
import com.nhom10.broadstore.emun.Role;
import com.nhom10.broadstore.bean.UserSession;
import com.nhom10.broadstore.db.JDBIConnector;
import org.jdbi.v3.core.JdbiException;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

public class UserService {

    public static UserSession login(String email, String password) {
        String hashPassword;
        try {
            hashPassword = PasswordHash.createHash(password);
        } catch (NoSuchAlgorithmException e) {
            return null;
        } catch (InvalidKeySpecException e) {
            return null;
        }
        UserSession userSession;
        userSession = JDBIConnector.get().withExtension(AdminDAO.class, dao -> {
            return dao.loginAdmin(email, hashPassword);
        });
        if (userSession != null) {
            userSession.setRole(Role.ADMIN);
            return userSession;
        }
        userSession = JDBIConnector.get().withExtension(CustomerDAO.class, dao -> {
            return dao.login(email, hashPassword);
        });
        if (userSession != null)
            return userSession;

        return null;
    }

    public static String createAcc(String firstname, String lastname, String email, String numberPhone, String pass) {
        boolean isEmailContain = JDBIConnector.get().withExtension(CustomerDAO.class, dao -> {
            String checkEmail = dao.checkContainEmail(email);
            if (checkEmail == null)
                return false;
            else return true;
        });
        if (isEmailContain)
            return "Email is exit";
        Customer customer = new Customer();
        customer.setFirstName(firstname);
        customer.setLastName(lastname);
        customer.setEmail(email);
        customer.setPhone(numberPhone);
        try {
            customer.setPassword(PasswordHash.createHash(pass));
        } catch (NoSuchAlgorithmException e) {
            return "Fails";
        } catch (InvalidKeySpecException e) {
            return "Fails";
        }
        try {
            JDBIConnector.get().useExtension(CustomerDAO.class, dao -> {
                int id = dao.insertFull(customer);
            });
        } catch (JdbiException e) {
            return "Fails";
        }


        return "Success";
    }
}
