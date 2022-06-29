package com.nhom10.broadstore.services;

import com.nhom10.broadstore.beans.User;
import com.nhom10.broadstore.db.JDBIConnector;
import com.nhom10.broadstore.dto.UserDTO;
import com.nhom10.broadstore.emun.Role;
import org.jdbi.v3.core.Jdbi;

public class UserService {

    Jdbi connector= JDBIConnector.get();

   public User login(String email, String password){
      return  connector.withExtension(UserDTO.class,handle->{
            User user;

            if((user= handle.loginAdmin(email,password))!=null){
                user.setRole(Role.ADMIN);
                return user;
            }
            user=handle.loginCustomer(email,password);
            user.setRole(Role.CUSTOMER);

            return user;
        });
    }

   public boolean isContainUserWithEmail(String email){
        return connector.withExtension(UserDTO.class,handle->{
            String id;

            id=handle.getAdminIDWithMail(email);
            if (id!=null){
                return true;
            }
            id=handle.getCustomerIDWithMail(email);
            return id != null;
        });
    }

}
