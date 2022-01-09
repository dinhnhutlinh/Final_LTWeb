package com.nhom10.broadstore;

import com.nhom10.broadstore.bean.Address;
import com.nhom10.broadstore.dao.AddressDAO;
import com.nhom10.broadstore.dao.AdminDAO;
import com.nhom10.broadstore.db.JDBIConnector;

public class MainTest {
    public static void main(String[] args) {
        JDBIConnector.get().useExtension(AddressDAO.class, dao -> {
//            Address address= new Address();
//            address.setId(2);
//            address.setDetailsAddress("Ngoai duong");
//            address.setDistrict("Hoif");
//            address.setProvince("DOi");
//            int id=dao.insert(address);
//            dao.update(address);
//            System.out.println(id);

            System.out.println(dao.getByID(1));
        });
        JDBIConnector.get().useExtension(AdminDAO.class, dao -> {

        });
    }
}
