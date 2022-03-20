package com.nhom10.broadstore.service;

import com.nhom10.broadstore.bean.District;
import com.nhom10.broadstore.bean.Province;
import com.nhom10.broadstore.dao.AddressDAO;
import com.nhom10.broadstore.db.JDBIConnector;

import java.util.List;

public class AddressServer {
    public static List<Province> getAllProvince() {
        return JDBIConnector.get().withExtension(AddressDAO.class, dao -> dao.getAllProvince());
    }

    public static List<District> getAllDistrict(String province) {
        return JDBIConnector.get().withExtension(AddressDAO.class, dao -> dao.getAllDistrict(null));
    }
}
