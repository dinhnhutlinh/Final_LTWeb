package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.ImageProduct;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

import java.util.List;

@RegisterBeanMapper(ImageProduct.class)
public interface ImageDAO {

    @SqlQuery("select * from ProductImage where product_id = :productId")
    List<ImageProduct> getImagesProduct(@Bind("productId") String productId);
}
