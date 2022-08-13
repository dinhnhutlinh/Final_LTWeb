package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.ImageProduct;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.ArrayList;
import java.util.List;

@RegisterBeanMapper(ImageProduct.class)
public interface ImageProductDAO {
    @SqlQuery(value = "SELECT * FROM `ProductImage` WHERE id=:id")
    ImageProduct findById(@Bind("id") String id);

    @SqlQuery("select link from ProductImage where product_id = :productId")
    ArrayList<String> getImagesProduct(@Bind("productId") String productId);

    @SqlQuery(value = "SELECT * FROM `ProductImage` WHERE `product_id`=:id")
    List<ImageProduct> findByProductId(@Bind("id") String id);

    @SqlUpdate(value = "INSERT INTO `ProductImage`(`id`, `link`, `product_id`, `create_at`, `update_at`) VALUES (:id,:link,:productId,now(),now())")
    int insert(ImageProduct imageProduct);

    @SqlUpdate(value = "DELETE FROM `ProductImage` WHERE id=:id")
    int delete(@Bind("id") String id);
}
