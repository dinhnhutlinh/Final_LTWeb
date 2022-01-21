package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.bean.Product;
import org.jdbi.v3.sqlobject.CreateSqlObject;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

public interface ProductDAO {

    @SqlQuery(value = "SELECT * FROM `product`")
    @RegisterBeanMapper(Product.class)
    List<Product> getAllSimple();

    @SqlQuery(value = "SELECT * FROM `product` WHERE `id`=:id")
    @RegisterBeanMapper(Product.class)
    @SingleValue
    Product getProductByIdSimple(@Bind("id") int id);

    @SqlUpdate(value = "INSERT INTO `product`( `name`, `age`, `min_player`, `max_player`, " +
            "`time_play`, `height`, `width`, `tall`, `weight`, `producer_id`, `desc`, `img_display`," +
            " `category_id`, `inventory`, `price`, `discount_id`, `create_at`, `update_at`)" +
            " VALUES (:name, :age ,: minPlayer, :maxPlayer, :timePlay, :height, :width" +
            ":tall, :weight, :producerId, :desc, :imgDisplay, :categoryId, :inventory, :price, :discountId, now(),now())")
    @GetGeneratedKeys("`id`")
    int insert(@BindBean Product product, @Bind("producerId") int producerId, @Bind("categoryId") int categoryId, @Bind("discountId") int discountId);

    @SqlUpdate("UPDATE `product` SET `name`=:name,`age`=:age,`min_player`=:minPlayer,`max_player`=:maxPlayer," +
            "`time_play`=:timePlay,`height`=:height,`width`=:width,`tall`=:tall,`weight`=:weight,`producer_id`=:producerId," +
            "`desc`=:desc,`img_display`=:imgDisplay,`category_id`=:categoryId,`inventory`=:inventory,`price`=:price," +
            "`discount_id`=:discountId, `update_at`=now() WHERE `id`=:id")
    void update(@BindBean Product product, @Bind("producerId") int producerId, @Bind("categoryId") int categoryId, @Bind("discountId") int discountId);

    @SqlUpdate(value = "DELETE FROM `product` WHERE `id`=:id")
    void delete(@Bind("id") int id);

    @CreateSqlObject
    CategoryDAO createCategoryDao();

    @CreateSqlObject
    DiscountDAO createDiscountDao();

    @CreateSqlObject
    ProducerDAO createProducerDao();

    default List<Product> getAllProduct() {
        List<Product> list = getAllSimple();
        final CategoryDAO catDAO = createCategoryDao();
        final DiscountDAO disDAO = createDiscountDao();
        final ProducerDAO proDAO = createProducerDao();
        for (Product p : list) {
            int id = p.getId();
            p.setCategory(catDAO.getOfProductById(id));
            p.setDiscount(disDAO.getOfProductById(id));
            p.setProducer(proDAO.getProduceById(id));
        }
        return list;
    }

    default Product getProductById(int id) {
        Product product = getProductByIdSimple(id);
        final CategoryDAO catDAO = createCategoryDao();
        final DiscountDAO disDAO = createDiscountDao();
        final ProducerDAO proDAO = createProducerDao();
        product.setCategory(catDAO.getOfProductById(id));
        product.setDiscount(disDAO.getOfProductById(id));
        product.setProducer(proDAO.getProduceById(id));
        return product;
    }
}
