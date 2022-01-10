package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Discount;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface DiscountDAO {

    @SqlQuery(value = "SELECT * FROM `discount`")
    @RegisterBeanMapper(Discount.class)
    List<Discount> getALl();

    @SqlQuery(value = "SELECT * FROM `discount` WHERE `id`= :id")
    @RegisterBeanMapper(Discount.class)
    @SingleValue
    Discount getByID(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `discount`( `name`, `desc`, `discount_percent`, `active`, `from_at`, `to_at`)" +
            " VALUES (:name,:desc,:discountPercent,:active,:fromAt,:endAt)")
    @GetGeneratedKeys("`id`")
    int insert(@BindBean Discount discount);

    @SqlUpdate(value = "UPDATE `discount` SET `name`=:name,`desc`=:desc,`discount_percent`=:discountPercent," +
            "`active`=:active,`from_at`=:fromAt,`to_at`=:endAt WHERE `id`=:id")
    void update(@BindBean Discount discount);

    @SqlUpdate(value = "DELETE FROM `discount` WHERE `id`= :id")
    void delete(@Bind("`id`") int id);
}
