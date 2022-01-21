package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Cart;
import com.nhom10.broadstore.bean.CartItem;
import com.nhom10.broadstore.bean.Category;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface CartDAO {

    @SqlQuery(value = "SELECT * FROM `cart` WHERE `id` = :id")
    @RegisterBeanMapper(Cart.class)
    Cart getByID(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `cart`( `customer_id`, `total_price`, `create_at`, `update_at`)" +
            " VALUES (:customerId, totalPrice,now(),now())")
    @GetGeneratedKeys("`id`")
    int insert(@BindBean Cart cart);

    @SqlUpdate(value = "UPDATE `cart` SET `customer_id`=:customerId,`total_price`=:totalPrice," +
            "`update_at`=now() WHERE `id`=:id")
    void update(@BindBean Cart cart);

    @SqlUpdate(value = "DELETE FROM `cart` WHERE `id`=:id")
    void delete(@Bind("id") int id);

    @SqlQuery(value = "SELECT * FROM `cartitems` WHERE `cartID`=:id")
    @RegisterBeanMapper(CartItemDAO.class)
    @SingleValue
    List<CartItem> getByCartID(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `cartitems`(`cart_id`, `product_id`, `quantity`, `price`, `create_at`, `update_at`)" +
            " VALUES (:cartID,:productId,:quantity,:price,now(),now())")
    @GetGeneratedKeys("`cartID`")
    int insertCartItem(@BindBean CartItem cartItem);

    @SqlUpdate(value = "UPDATE `cartitems` SET `quantity`=:quantity," +
            "`price`=:price`update_at`=now() WHERE `cart_id`=:cartID AND `product_id`=:productId")
    void updateCartItem(@BindBean CartItem cartItem);

    @SqlUpdate(value = "DELETE FROM `cartitems` WHERE `cart_id`=:cartID AND `product_id`=:productId")
    void deleteCartItem(@Bind("cartId") int cartId,@Bind("productId") int productId);
}
