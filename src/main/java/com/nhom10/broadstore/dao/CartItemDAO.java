package com.nhom10.broadstore.dao;


import com.nhom10.broadstore.beans.Blog;
import com.nhom10.broadstore.beans.CartItem;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(CartItem.class)
public interface CartItemDAO {

    @SqlQuery("select * from CartItems WHERE cart_id=:cartId")
   List<CartItem>  getCartItems(@Bind("cartId") String cartId);

    @SqlUpdate("INSERT INTO `Cart`(`id`, `customer_id`, `total_price`, `create_at`, `update_at`) VALUES (:id,:customerId,:totalPrice,now(),now())")
    int insert(@BindBean CartItem cartItem);

    @SqlUpdate("UPDATE `Blog` SET `admin_id`=:adminId,`title`=:title,`image`=:image,`content`=:content,`update_at`=now() WHERE `id`=:id")
    int update(@BindBean Blog Blog);

    @SqlUpdate("delete from `CartItems` where `cart_id`=:cartId and `product_id`=:productId")
    int delete(@Bind("cartId") String cartId, @Bind("productId") String productId);
}

