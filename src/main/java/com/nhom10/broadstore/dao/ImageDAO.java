package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.ImageProduct;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

import java.util.ArrayList;

@RegisterBeanMapper(ImageProduct.class)
public interface ImageDAO {

    @SqlQuery("select link from productimage where product_id = :productId")
    ArrayList<String> getImagesProduct(@Bind("productId") String productId);
}
