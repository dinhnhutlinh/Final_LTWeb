package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Producer;
import com.nhom10.broadstore.bean.Product;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface ProducerDAO {

    @SqlQuery(value = "SELECT * FROM `producer`")
    @RegisterBeanMapper(Producer.class)
    List<Producer> getAll();

    @SqlQuery(value = "SELECT * FROM `producer` WHERE `id`:=id")
    @RegisterBeanMapper(Producer.class)
    @SingleValue
    Producer getProduceById(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `producer`( `name`, `address_id`, `email`, `phone`, `create_at`, `update_at`)" +
            " VALUES (:name, :addressId, :email, :phone,now(), now())")
    @GetGeneratedKeys("`id`")
    int insert(@BindBean Producer producer);

    @SqlUpdate(value = "UPDATE `producer` SET `name`=:name,`address_id`=:addressId,`email`=:email,`phone`=:phone" +
            ",`update_at`=now() WHERE `id`=:id")
    void update(@BindBean Producer producer);

    @SqlUpdate(value = "DELETE FROM `producer` WHERE `id`=:id")
    void delete(@Bind("id") int id);


}
