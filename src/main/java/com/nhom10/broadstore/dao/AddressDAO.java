package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Address;
import com.nhom10.broadstore.db.JDBIConnector;

public class AddressDAO {
    private static final String GET_BY_ID_SQL = "SELECT * FROM `address` WHERE `id`=?";
    private static final String INSERT_SQL = "INSERT INTO `address`( `details_address`, `district`, `province`, `create_at`, `update_at`) VALUES (?,?,?,now(),now())";
    private static final String UPDATE_SQL = "UPDATE `address` SET `details_address`=?,`district`=?,`province`=?,`update_at`=now() WHERE `id`=?";

    public static Address getByID(int id) {
        return JDBIConnector.get().withHandle(handle ->
                handle.select(GET_BY_ID_SQL).bind(0, id)
                        .mapToBean(Address.class).one());
    }

    public static int insert(Address address) {
        JDBIConnector.get().useHandle(
                handle -> handle.createUpdate(INSERT_SQL)
                        .bind(0, address.getDetailsAddress())
                        .bind(1, address.getDistrict())
                        .bind(2, address.getProvince()).execute());
        return address.getId();
    }

    public static int update(Address address) {
        JDBIConnector.get().useHandle(
                handle -> handle.createUpdate(UPDATE_SQL)
                        .bind(0, address.getDetailsAddress())
                        .bind(1, address.getDistrict())
                        .bind(2, address.getProvince())
                        .bind(3, address.getId()).execute());
        return address.getId();
    }


}
