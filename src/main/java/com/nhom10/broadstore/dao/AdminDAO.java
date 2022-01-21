package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Admin;
import com.nhom10.broadstore.bean.UserSession;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Admin.class)
public interface AdminDAO {
    @SqlQuery(value = "SELECT adm.id id, adm.first_name first_name, adm.last_name last_name, adm.password password, adm.avatar avatar, addr.id addr_address_id, addr.details_address addr_details_address, addr.district addr_district, addr.province addr_province, addr.create_at addr_create_at, addr.update_at addr_update_at,\n" +
            "adm.phone phone, adm.email email, adm.create_at create_at, adm.update_at update_at  FROM `admin` adm JOIN `address` addr ON adm.address_id = addr.id")
    List<Admin> getAll();

    @SqlQuery(value = "SELECT adm.id id, adm.first_name first_name, adm.last_name last_name, adm.password password, adm.avatar avatar," +
            " addr.id addr_address_id, addr.details_address addr_details_address, addr.district addr_district, addr.province addr_province," +
            " addr.create_at addr_create_at, addr.update_at addr_update_at,\n" +
            "adm.phone phone, adm.email email, adm.create_at create_at, adm.update_at update_at  FROM `admin` adm JOIN" +
            " `address` addr ON adm.address_id = addr.id WHERE adm.id=:id")
    @SingleValue
    Admin getByID(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `admin`(`first_name`, `last_name`, `password`, `address_id`, " +
            "`email`, `phone`, `avatar`, `create_at`, `update_at`) VALUES " +
            "(:firstName,:lastName,:password,:addressId,:email,:phone,:avatar,now(),now())")
    @GetGeneratedKeys("`id`")
    int insert(@BindBean Admin admin);

    @SqlUpdate(value = "UPDATE `admin` SET `first_name` = :firstName,`last_name` = :lastName,`password`= :password," +
            "`address_id`= :addressId,`email`= :email,`phone`= :phone,`avatar`= :avatar,`update_at`= now() WHERE `id`= :id")
    void update(@BindBean Admin admin);

    @SqlQuery(value = "SELECT id, CONCAT(last_name,' ',first_name) name " +
            ", email, avatar FROM `admin` WHERE email=:email AND `password`=:pass")
    @RegisterBeanMapper(UserSession.class)
    @SingleValue
    UserSession loginAdmin(@Bind("email") String email, @Bind("pass") String hashPassword);


    @SqlUpdate(value = "DELETE FROM `admin` WHERE `id`= :id")
    void delete(@Bind("`id`") int id);
}
