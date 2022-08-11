package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.Producer;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Producer.class)
public interface ProducerDAO {
    @SqlQuery("select * from Producer")
    List<Producer> queryAll();

    @SqlQuery("select * from Producer WHERE id=:id")
    Producer findById(@Bind("id") String id);

    @SqlUpdate("delete from Producer where id=:id")
    int delete(@Bind("id") String id);

    @SqlUpdate("INSERT INTO `Producer`(`id`, `name`, `address`, `email`, `phone`, `create_at`, `update_at`) VALUES (:id, :name, :address, :email, :phone,now(),now())")
    int insert(@BindBean Producer producer);

    @SqlUpdate("UPDATE `Producer` SET `name`=:name,`address`=:address,`email`=:email,`phone`=:phone,`update_at`=now() WHERE `id`=:id")
    int update(@BindBean Producer producer);

}
