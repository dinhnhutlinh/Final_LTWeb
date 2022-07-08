package com.nhom10.broadstore.services;

import com.nhom10.broadstore.beans.Discount;
import com.nhom10.broadstore.dao.DiscountDAO;
import com.nhom10.broadstore.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class DiscountService {
    Jdbi connect = JDBIConnector.get();

    public List<Discount> getAllDiscount() {
        return connect.withExtension(DiscountDAO.class, handle -> handle.list());
    }

    public void delete(String id) {
        connect.useExtension(DiscountDAO.class, handle -> handle.delete(id));
    }

    public int insert(Discount discount) {
        return connect.withExtension(DiscountDAO.class, handle -> handle.insert(discount));
    }

    public int update(Discount discount) {
        return connect.withExtension(DiscountDAO.class, handle -> handle.update(discount));
    }
}
