package com.nhom10.broadstore;

import com.nhom10.broadstore.bean.Address;
import com.nhom10.broadstore.bean.UserSession;
import com.nhom10.broadstore.dao.AddressDAO;
import com.nhom10.broadstore.db.JDBIConnector;
import com.nhom10.broadstore.service.PasswordHash;
import com.nhom10.broadstore.service.UserService;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

public class MainTest {
    public static void main(String[] args) throws NoSuchAlgorithmException, InvalidKeySpecException {
        String firstname = "Linh";
        String lastname = "Linh";
        String email = "linhdinh69@gmail.com";
        String phone = "0378222302";
        String password = "linhdinh";
        String mess= UserService.createAcc(firstname, lastname, email, phone, password);
        System.out.println(mess);

//        JDBIConnector.get().useExtension(AddressDAO.class, dao->{
//            dao.insert(new Address());
//        });
    }
}
