package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Product;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

import java.util.List;

@RegisterBeanMapper(Product.class)
public interface ProductDAO {

    @SqlQuery(value = "SELECT p.`id`, p.`name`, p.`age`, p.`min_player`, p.`max_player`, p.`time_play`, p.`height`, p.`width`, \n" +
            "p.`tall`, p.`weight`, p.`producer_id`, p.`desc`, p.`img_display`, p.`inventory`, p.`price`, p.`discount_id`,\n" +
            "p.`create_at`, p.`update_at`,\n" +
            "cat.`id` cat_id, cat.`name` cat_name, cat.`desc` cat_desc, cat.`create_at` cat_creatAt, cat.`update_at` cat_updateAt,\n" +
            "dis.`id` dis_id, dis.`name` dis_name, dis.`desc` dis_desc, dis.`discount_percent` dis_DiscountPercent, \n" +
            "dis.`active` dis_active, dis.`from_at` dis_fromAt, dis.`to_at`dis_toAt,\n" +
            "prod.id prod_id, prod.name prod_name\n" +
            "FROM `product` p \n" +
            "JOIN category cat ON p.category_id = cat.id\n" +
            "JOIN discount dis ON p.discount_id= dis.id\n" +
            "JOIN producer prod ON p.producer_id = prod.id")
    List<Product> getAllProduct();

    @SqlQuery(value = "SELECT p.`id`, p.`name`, p.`age`, p.`min_player`, p.`max_player`, p.`time_play`, p.`height`, p.`width`, \n" +
            "p.`tall`, p.`weight`, p.`producer_id`, p.`desc`, p.`img_display`, p.`inventory`, p.`price`, p.`discount_id`,\n" +
            "p.`create_at`, p.`update_at`,\n" +
            "cat.`id` cat_id, cat.`name` cat_name, cat.`desc` cat_desc, cat.`create_at` cat_creatAt, cat.`update_at` cat_updateAt,\n" +
            "dis.`id` dis_id, dis.`name` dis_name, dis.`desc` dis_desc, dis.`discount_percent` dis_DiscountPercent, \n" +
            "dis.`active` dis_active, dis.`from_at` dis_fromAt, dis.`to_at`dis_toAt,\n" +
            "prod.id prod_id, prod.name prod_name\n" +
            "FROM `product` p \n" +
            "JOIN category cat ON p.category_id = cat.id\n" +
            "JOIN discount dis ON p.discount_id= dis.id\n" +
            "JOIN producer prod ON p.producer_id = prod.id\n" +
            "WHERE p.name LIKE :key OR p.desc LIKE :key OR cat.name LIKE :key OR prod.name LIKE :key\n" +
            "ORDER BY p.update_at DESC\n" +
            "LIMIT :limit OFFSET :offset")
    List<Product> findProductWithKey(@Bind("key") String keyword, @Bind("offset") int page, @Bind("limit") int limit);

    @SqlQuery(value = "SELECT p.`id`, p.`name`, p.`age`, p.`min_player`, p.`max_player`, p.`time_play`, p.`height`, p.`width`, \n" +
            "p.`tall`, p.`weight`, p.`producer_id`, p.`desc`, p.`img_display`, p.`inventory`, p.`price`, p.`discount_id`,\n" +
            "p.`create_at`, p.`update_at`,\n" +
            "cat.`id` cat_id, cat.`name` cat_name, cat.`desc` cat_desc, cat.`create_at` cat_creatAt, cat.`update_at` cat_updateAt,\n" +
            "dis.`id` dis_id, dis.`name` dis_name, dis.`desc` dis_desc, dis.`discount_percent` dis_DiscountPercent, \n" +
            "dis.`active` dis_active, dis.`from_at` dis_fromAt, dis.`to_at`dis_toAt,\n" +
            "prod.id prod_id, prod.name prod_name\n" +
            "FROM `product` p \n" +
            "JOIN category cat ON p.category_id = cat.id\n" +
            "JOIN discount dis ON p.discount_id= dis.id\n" +
            "JOIN producer prod ON p.producer_id = prod.id\n" +
            "WHERE p.id=:id")
    @SingleValue
    Product findProductById(@Bind("id") int id);

    @SqlQuery(value = "SELECT COUNT(p.id) FROM `product` p\n" +
            "JOIN category cat ON p.category_id = cat.id\n" +
            "JOIN discount dis ON p.discount_id= dis.id\n" +
            "JOIN producer prod ON p.producer_id = prod.id\n" +
            "WHERE p.name LIKE :key OR p.desc LIKE :key OR cat.name LIKE :key OR prod.name LIKE :key")
    Integer countProductWithKey(@Bind("key") String keyword);


    @SqlQuery(value = "SELECT COUNT(p.id) " +
            "FROM `product` p \n" +
            "JOIN category cat ON p.category_id = cat.id\n" +
            "JOIN discount dis ON p.discount_id= dis.id\n" +
            "JOIN producer prod ON p.producer_id = prod.id\n" +
            "WHERE p.price>= :price AND\n" +
            "p.age>= :old")
    Integer countProductCatAll(@Bind("price") int price, @Bind("old") int old);

    @SqlQuery(value = "SELECT p.`id`, p.`name`, p.`age`, p.`min_player`, p.`max_player`, p.`time_play`, p.`height`, p.`width`, \n" +
            "p.`tall`, p.`weight`, p.`producer_id`, p.`desc`, p.`img_display`, p.`inventory`, p.`price`, p.`discount_id`,\n" +
            "p.`create_at`, p.`update_at`,\n" +
            "cat.`id` cat_id, cat.`name` cat_name, cat.`desc` cat_desc, cat.`create_at` cat_creatAt, cat.`update_at` cat_updateAt,\n" +
            "dis.`id` dis_id, dis.`name` dis_name, dis.`desc` dis_desc, dis.`discount_percent` dis_DiscountPercent, \n" +
            "dis.`active` dis_active, dis.`from_at` dis_fromAt, dis.`to_at`dis_toAt,\n" +
            "prod.id prod_id, prod.name prod_name\n" +
            "FROM `product` p \n" +
            "JOIN category cat ON p.category_id = cat.id\n" +
            "JOIN discount dis ON p.discount_id= dis.id\n" +
            "JOIN producer prod ON p.producer_id = prod.id\n" +
            "WHERE p.price>= :price AND\n" +
            "p.age >= :old\n" +
            "ORDER BY :sort\n" +
            "LIMIT :limit OFFSET :offset")
    List<Product> getProductCatAll(@Bind("price") int price, @Bind("old") int old, @Bind("sort") String sort, @Bind("limit") int limit, @Bind("offset") int page);


    @SqlQuery(value = "SELECT COUNT(p.id) " +
            "FROM `product` p \n" +
            "JOIN category cat ON p.category_id = cat.id\n" +
            "JOIN discount dis ON p.discount_id= dis.id\n" +
            "JOIN producer prod ON p.producer_id = prod.id\n" +
            "WHERE p.price>= :price AND\n" +
            "dis.id <> 1 AND\n" +
            "p.age>= :old")
    Integer countProductCatSale(@Bind("price") int price, @Bind("old") int old);

    @SqlQuery(value = "SELECT p.`id`, p.`name`, p.`age`, p.`min_player`, p.`max_player`, p.`time_play`, p.`height`, p.`width`, \n" +
            "p.`tall`, p.`weight`, p.`producer_id`, p.`desc`, p.`img_display`, p.`inventory`, p.`price`, p.`discount_id`,\n" +
            "p.`create_at`, p.`update_at`,\n" +
            "cat.`id` cat_id, cat.`name` cat_name, cat.`desc` cat_desc, cat.`create_at` cat_creatAt, cat.`update_at` cat_updateAt,\n" +
            "dis.`id` dis_id, dis.`name` dis_name, dis.`desc` dis_desc, dis.`discount_percent` dis_DiscountPercent, \n" +
            "dis.`active` dis_active, dis.`from_at` dis_fromAt, dis.`to_at`dis_toAt,\n" +
            "prod.id prod_id, prod.name prod_name\n" +
            "FROM `product` p \n" +
            "JOIN category cat ON p.category_id = cat.id\n" +
            "JOIN discount dis ON p.discount_id= dis.id\n" +
            "JOIN producer prod ON p.producer_id = prod.id\n" +
            "WHERE p.price >= :price AND\n" +
            "dis.id <> 1 AND\n" +
            "p.age >= :old\n" +
            "ORDER BY :sort\n" +
            "LIMIT :limit OFFSET :offset")
    List<Product> getProductCatSale(@Bind("price") int price, @Bind("old") int old, @Bind("sort") String sort, @Bind("limit") int limit, @Bind("offset") int page);

}
