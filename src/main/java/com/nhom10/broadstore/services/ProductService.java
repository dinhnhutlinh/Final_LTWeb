package com.nhom10.broadstore.services;

import com.nhom10.broadstore.beans.*;
import com.nhom10.broadstore.dao.*;
import com.nhom10.broadstore.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    private static ProductService instance = null;
    Jdbi connect = JDBIConnector.get();
    public ProductService() {
    }

    public static ProductService getInstance() {
        if (instance == null)
            instance = new ProductService();

        return instance;
    }

    public List<Product> list() {
        List<Product> products = connect.withExtension(ProductDAO.class, handle -> handle.list());
        return products.stream().map(product -> mapOtherBean(product)).collect(Collectors.toList());
    }

    public List<Product> listClient() {
        List<Product> products = connect.withExtension(ProductDAO.class, handle -> handle.listClient());
        return products.stream().map(product -> mapOtherBean(product)).collect(Collectors.toList());
    }

    public Product findById(String id) {
        return connect.withExtension(ProductDAO.class, handle -> mapOtherBean(handle.findById(id)));
    }

    public List<Product> getTop9() {
        return connect.withExtension(ProductDAO.class, handle -> handle.load9Product());
    }

    public int insertProduct(Product product) {
        return connect.withExtension(ProductDAO.class, handle -> handle.insert(product));
    }

    public int updateProduct(Product product) {
        return connect.withExtension(ProductDAO.class, handle -> handle.update(product));
    }

    public int delete(String id) {
        return connect.withExtension(ProductDAO.class, handle -> handle.delete(id));
    }

    private Product mapOtherBean(Product product) {
        if(product==null)
            return new Product();
        Category category = connect.withExtension(CategoryDAO.class, handle -> handle.findById(product.getCategoryId()));
        Producer producer = connect.withExtension(ProducerDAO.class, handle -> handle.findById(product.getProducerId()));
        Discount discount = connect.withExtension(DiscountDAO.class, handle -> handle.findById(product.getDiscountId()));
        product.setCategory(category);
        product.setProducer(producer);
        product.setDiscount(discount);
        return product;
    }

    public List<ImageProduct> findImageByProductId(String id) {
        return connect.withExtension(ImageProductDAO.class, handle -> handle.findByProductId(id));
    }

    public int insertImage(ImageProduct imageProduct) {
        return connect.withExtension(ImageProductDAO.class, handle -> handle.insert(imageProduct));
    }

    public int removeImage(String id) {
        return connect.withExtension(ImageProductDAO.class, handle -> handle.delete(id));
    }


    public List<Product> getProductFamilyGame() {
        return connect.withExtension(ProductDAO.class, handle -> handle.getProductFamilyGame());
    }

    public List<Product> getProductCombat() {
        return connect.withExtension(ProductDAO.class, handle -> handle.getProductCombat());
    }

    public List<Product> getProductCardGame() {
        return connect.withExtension(ProductDAO.class, handle -> handle.getProductCardGame());
    }

    public List<Product> getProductArt() {
        return connect.withExtension(ProductDAO.class, handle -> handle.getProductArt());
    }

    public List<Product> getProductAdventure() {
        return connect.withExtension(ProductDAO.class, handle -> handle.getProductAdventure());
    }

    public List<Product> getProductDice() {
        return connect.withExtension(ProductDAO.class, handle -> handle.getProductDice());
    }

    public List<Product> getProductBattleRoyale() {
        return connect.withExtension(ProductDAO.class, handle -> handle.getProductBattleRoyale());
    }

    public List<Product> getProductFighting() {
        return connect.withExtension(ProductDAO.class, handle -> handle.getProductFighting());
    }

    public List<Product> getProductPartyGame() {
        return connect.withExtension(ProductDAO.class, handle -> handle.getProductPartyGame());
    }

    public List<Product> getProductPuzzle() {
        return connect.withExtension(ProductDAO.class, handle -> handle.getProductPuzzle());
    }

    public List<Product> getProductFantasy() {
        return connect.withExtension(ProductDAO.class, handle -> handle.getProductFantasy());
    }



    public ArrayList<Product> getAllProducts() {
        return (ArrayList<Product>) connect.withExtension(ProductDAO.class, handle -> handle.list());
    }

    public Product getProductById(String id) {
        return connect.withExtension(ProductDAO.class, handle -> handle.findWithId(id));
    }

    public ArrayList<Product> allPriceUp() {
        return connect.withExtension(ProductDAO.class, handle -> handle.allPriceUp());
    }

    public ArrayList<Product> searchByName(String keyWord) {
        return connect.withExtension(ProductDAO.class, handle -> handle.findByName("UNO"));
    }
}
