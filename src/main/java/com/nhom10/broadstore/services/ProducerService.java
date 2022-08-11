package com.nhom10.broadstore.services;

import com.nhom10.broadstore.beans.Producer;
import com.nhom10.broadstore.dao.ProducerDAO;
import com.nhom10.broadstore.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ProducerService {

    Jdbi connect = JDBIConnector.get();

    public List<Producer> getAllProducer() {
        return connect.withExtension(ProducerDAO.class, handle -> handle.queryAll());
    }

    public Producer findById(String id) {
        return connect.withExtension(ProducerDAO.class, handle -> handle.findById(id));
    }

    public void delete(String id) {
        connect.useExtension(ProducerDAO.class, handle -> handle.delete(id));
    }

    public int insert(Producer producer) {
        return connect.withExtension(ProducerDAO.class, handle -> handle.insert(producer));
    }

    public int update(Producer producer) {
        return connect.withExtension(ProducerDAO.class, handle -> handle.update(producer));
    }
}
