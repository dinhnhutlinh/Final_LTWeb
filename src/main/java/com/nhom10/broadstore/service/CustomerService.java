package com.nhom10.broadstore.service;

import com.nhom10.broadstore.bean.Customer;
import com.nhom10.broadstore.dao.CustomerDAO;
import com.nhom10.broadstore.db.JDBIConnector;

import java.util.LinkedList;
import java.util.List;

public class CustomerService {
    public static List<Customer> getAllCustomer() {
        List<Customer> customers = JDBIConnector.get().withExtension(CustomerDAO.class, dao -> {
            return dao.getAllCustomers();
        });
        if (customers == null)
            return new LinkedList<>();
        else return customers;
    }

    public static Customer findById(int id) {
        return JDBIConnector.get().withExtension(CustomerDAO.class, dao->{
            return dao.findById(id);
        });
    }
}
