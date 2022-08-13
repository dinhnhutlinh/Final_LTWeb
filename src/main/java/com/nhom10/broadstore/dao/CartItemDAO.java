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
    List<CartItem> getCartItems(@Bind("cartId") String cartId);

    @SqlQuery("select product_id from CartItems WHERE cart_id=:cartId")
    List<String> getAllProductId(@Bind("cartId") String cartId);

    @SqlQuery("select quantity from CartItems WHERE cart_id=:cartId and product_id= :productId")
   int getQty(@Bind("cartId") String cartId, @Bind("productId") String productId);

    @SqlUpdate("INSERT INTO `CartItems`(`cart_id`, `product_id`, `quantity`,`price`, `create_at`, `update_at`) VALUES (:cartId,:productId,:quantity,:price,now(),now())")
    int insert(@BindBean CartItem cartItem);

    @SqlUpdate("UPDATE `Blog` SET `admin_id`=:adminId,`title`=:title,`image`=:image,`content`=:content,`update_at`=now() WHERE `id`=:id")
    int update(@BindBean Blog Blog);


    @SqlUpdate("UPDATE `CartItems` SET `quantity`=:quantity,`price`=:price,`update_at`=now() WHERE `cart_id`=:cartId and `product_id`= :productId")
    int updateQty( @Bind("cartId") String cartId, @Bind("productId") String productId, @Bind("quantity") int quantity, @Bind("price") double price);

    @SqlUpdate("delete from `CartItems` where `cart_id`=:cartId and `product_id`=:productId")
    int delete(@Bind("cartId") String cartId, @Bind("productId") String productId);
}

