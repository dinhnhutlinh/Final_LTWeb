package com.nhom10.broadstore.service;

import com.nhom10.broadstore.bean.Address;
import com.nhom10.broadstore.dao.AddressDAO;

public class AddressService {
    private static AddressService instance;

    private AddressService() {
    }

    public static AddressService getInstance() {
        if (instance == null)
            return instance = new AddressService();
        return instance;
    }
    public Address getByID(int id){
        return AddressDAO.getByID(id);
    }

    public int insert(Address address) {
        return AddressDAO.insert(address);
    }

    public int update(Address address) {
        return AddressDAO.update(address);

    }
}
