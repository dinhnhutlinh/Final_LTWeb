package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.CartItem;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface CartItemDAO {

    @SqlQuery(value = "SELECT * FROM `cartitems` WHERE `cartID`=:id")
    @RegisterBeanMapper(CartItemDAO.class)
    List<CartItem> getByCartID();

    @SqlUpdate(value = "INSERT INTO `cartitems`(`cart_id`, `product_id`, `quantity`, `price`, `create_at`, `update_at`)" +
            " VALUES (:cartID,:productId,:quantity,:price,now(),now())")
    @GetGeneratedKeys("`cartID`")
    int insert(@BindBean CartItem cartItem);

    @SqlUpdate(value = "UPDATE `cartitems` SET `quantity`=:quantity," +
            "`price`=:price`update_at`=now() WHERE `cart_id`=:cartID AND `product_id`=:productId")
    void update(@BindBean CartItem cartItem);

    @SqlUpdate(value = "DELETE FROM `cartitems` WHERE `cart_id`=:cartID AND `product_id`=:productId")
    void delete(@Bind("cartId") int cartId,@Bind("productId") int productId);
}
