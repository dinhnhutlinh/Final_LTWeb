package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Status;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

import java.util.List;

@RegisterBeanMapper(Status.class)
public interface StatusDAO {
    @SqlQuery(value = "SELECT * FROM status")
    List<Status> getAll();
}
