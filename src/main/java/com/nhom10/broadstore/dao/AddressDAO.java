package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Address;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.config.RegisterBeanMappers;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

public interface AddressDAO {

    @SqlQuery(value = "SELECT * FROM `address` WHERE `id`= :id")
    @RegisterBeanMapper(Address.class)
    Address getByID(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `address`(`details_address`, `district`, `province`, `create_at`, `update_at`) VALUES (:detailsAddress,:district,:province,now(),now())")
    @GetGeneratedKeys("`id`")
    int insert(@BindBean Address address);

    @SqlUpdate(value = "UPDATE `address` SET `details_address`=:detailsAddress,`district`=:district,`province`=:province,`update_at`=now() WHERE `id`=:id")
    void update(@BindBean Address address);

    @SqlUpdate(value = "DELETE FROM `address` WHERE `id`=:id")
    void delete(@Bind("id") int id);
}

