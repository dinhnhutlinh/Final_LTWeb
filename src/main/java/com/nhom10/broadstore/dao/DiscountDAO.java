package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.Category;
import com.nhom10.broadstore.beans.Discount;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Discount.class)
public interface DiscountDAO {
    @SqlQuery("select * from Discount")
    List<Discount> list();

    @SqlQuery("select * from Discount WHERE id=:id")
    Discount findById(@Bind("id") String id);

    @SqlUpdate("delete from Discount where id=:id")
    int delete(@Bind("id") String id);

    @SqlUpdate("insert into `Discount` (`id`, `name`, `desc`, `discount_percent`, `active`, `start_at`, `finish_at`, `create_at`, `update_at`) values (:id, :name, :desc, :discountPercent, :active, :startAt, :finishAt ,now(), now())")
    int insert(@BindBean Discount discount);

    @SqlUpdate("UPDATE `Discount` SET `name`=:name,`desc`=:desc,`discount_percent`=:discountPercent,`active`=:active,`start_at`=:startAt,`finish_at`=:finishAt,`update_at`=now() WHERE `id`=:id")
    int update(@BindBean Discount discount);


}
