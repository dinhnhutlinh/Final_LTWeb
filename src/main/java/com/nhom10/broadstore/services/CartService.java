package com.nhom10.broadstore.services;


import com.nhom10.broadstore.beans.Cart;
import com.nhom10.broadstore.beans.CartItem;
import com.nhom10.broadstore.dao.CartDAO;
import com.nhom10.broadstore.dao.CartItemDAO;
import com.nhom10.broadstore.db.JDBIConnector;
import com.nhom10.broadstore.util.StringUtil;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class CartService {

    private static CartService instance = null;
    Jdbi connector = JDBIConnector.get();

    public CartService() {
    }

    public static CartService getInstance() {
        if (instance == null)
            instance = new CartService();

        return instance;
    }


    public int createCart(Cart cart) {
        return connector.withExtension(CartDAO.class, handle -> handle.createCart(cart));
    }

    public int getQty(String cartId, String productId) {
        return connector.withExtension(CartItemDAO.class, handle -> handle.getQty(cartId, productId));
    }

    public List<String> getAllProductId(String cartId) {
        return connector.withExtension(CartItemDAO.class, handle -> handle.getAllProductId(cartId));
    }

    public int updateQty(String cartId, String productId, int quantity, double price) {
        return connector.withExtension(CartItemDAO.class, handle -> handle.updateQty(cartId, productId, quantity, price));
    }

    public Cart getCart(String customerId) {
        Cart cart = connector.withExtension(CartDAO.class, handle -> handle.getCart(customerId));
        if (cart == null) {
            cart = new Cart();
            cart.setId(StringUtil.genIDWithLength(10));
            cart.setCustomerId(customerId);
            cart.setTotalPrice(0);
            createCart(cart);
        }
        return cart;
    }

    public List<CartItem> getCartItems(String cartId) {
        return connector.withExtension(CartItemDAO.class, handle -> handle.getCartItems(cartId));
    }

    public int insertCartItem(CartItem cartItem) {
        return connector.withExtension(CartItemDAO.class, handle -> handle.insert(cartItem));
    }

    public String getIdCart(String customerId) {
        return connector.withExtension(CartDAO.class, handle -> handle.getId(customerId));
    }


}
