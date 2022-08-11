package com.nhom10.broadstore.services;


import com.nhom10.broadstore.beans.Cart;
import com.nhom10.broadstore.beans.CartItem;
import com.nhom10.broadstore.dao.CartDAO;
import com.nhom10.broadstore.dao.CartItemDAO;
import com.nhom10.broadstore.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class CartService {

    private static CartService instance = null;

    public CartService() {
    }

    public static CartService getInstance() {
        if (instance == null)
            instance = new CartService();

        return instance;
    }

    Jdbi connector = JDBIConnector.get();

    public int createCart(Cart cart) {
        return connector.withExtension(CartDAO.class, handle -> handle.createCart(cart));
    }

    public Cart getCart(String customerId) {
        return connector.withExtension(CartDAO.class, handle -> handle.getCart(customerId));
    }

    public List<CartItem> getCartItems(String cartId) {
        return connector.withExtension(CartItemDAO.class, handle -> handle.getCartItems(cartId));
    }

    public int insertCartItem(CartItem cartItem) {
        return connector.withExtension(CartItemDAO.class, handle -> handle.insert(cartItem));
    }

    public String getIdCart(String  customerId) {
        return connector.withExtension(CartDAO.class, handle -> handle.getId(customerId));
    }

    public static void main(String[] args) {
        CartService.getInstance().getCartItems("kfzfabyqmk").size();
    }


}
