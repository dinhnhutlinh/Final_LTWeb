package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.Producer;
import com.nhom10.broadstore.beans.Product;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.ArrayList;
import java.util.List;

@RegisterBeanMapper(Product.class)
public interface ProductCustomerDAO {
    @SqlQuery("select * from Product")
    ArrayList<Product> queryAll();

    @SqlQuery("select * from Product where category_id = (select id from Category where name = 'American West') ")
    List<Product> getProuct_AmericanWest();

    @SqlQuery("select * from Product WHERE id=:id")
    Product findWithId(@Bind("id") String id);



}
