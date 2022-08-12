package com.nhom10.broadstore.dao;

import com.nhom10.broadstore.beans.Discount;
import com.nhom10.broadstore.beans.Product;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.ArrayList;
import java.util.List;

@RegisterBeanMapper(Product.class)
public interface ProductDAO {
    @SqlQuery("select * from Product")
    List<Product> list();

    @SqlQuery("select * from Product WHERE id=:id")
    Product findById(@Bind("id") String id);

    @SqlUpdate("delete from Product where id=:id")
    int delete(@Bind("id") String id);
    @SqlQuery("select * from Product where active=1")
    List<Product> listClient();

    @SqlQuery("select  * from Product limit 9")
    List<Product> load9Product();
    @SqlUpdate("INSERT INTO `Product`(`id`, `name`, `price`, `min_age`, `min_player`, `max_player`, `min_playtime`," +
            " `max_playtime`, `desc`, `img_display`, `weight_amount`, `weight_units`, `size_height`, `size_depth`, " +
            "`size_units`, `active`, `inventory`, `producer_id`, `category_id`, `discount_id`, `create_at`, `update_at`)" +
            " VALUES ( :id, :name, :price, :minAge, :minPlayer, :maxPlayer, :minPlaytime, :maxPlaytime, :desc, :imgDisplay," +
            ":weightAmount, :weightUnits, :sizeHeight, :sizeDepth, :sizeUnits, :active, :inventory, :producerId, :categoryId," +
            ":discountId, now(), now())")
    int insert(@BindBean Product product);

    @SqlUpdate("UPDATE `Product` SET `name`=:name,`price`=:price,`min_age`=:minAge," +
            "`min_player`=:minPlayer,`max_player`=:maxPlayer,`min_playtime`=:minPlaytime,`max_playtime`=:maxPlaytime," +
            "`desc`=:desc,`img_display`=:imgDisplay,`weight_amount`=:weightAmount,`weight_units`=:weightUnits," +
            "`size_height`=:sizeHeight,`size_depth`=:sizeDepth,`size_units`=:sizeUnits,`active`=:active," +
            "`inventory`=:inventory,`producer_id`=:producerId,`category_id`=:categoryId,`discount_id`=:discountId," +
            "`update_at`=now() WHERE `id`=:id")
    int update(@BindBean Product product);

    @SqlQuery("select * from Product where name like :keyWord")
    ArrayList<Product> findByName(@Bind("keyWord") String keyWord);

    @SqlQuery("select * from Product order by price asc ")
    ArrayList<Product> allPriceUp();

    @SqlQuery("select * from Product where category_id = (select id from Category where name = 'Family Game') ")
    ArrayList<Product> getProductFamilyGame();

    @SqlQuery("select * from Product where category_id = (select id from Category where name = 'Combat') ")
    ArrayList<Product> getProductCombat();

    @SqlQuery("select * from Product where category_id = (select id from Category where name = 'Card Game') ")
    ArrayList<Product> getProductCardGame();

    @SqlQuery("select * from Product where category_id = (select id from Category where name = 'Art') ")
    ArrayList<Product> getProductArt();

    @SqlQuery("select * from Product where category_id = (select id from Category where name = 'Adventure') ")
    ArrayList<Product> getProductAdventure();

    @SqlQuery("select * from Product where category_id = (select id from Category where name = 'Dice') ")
    ArrayList<Product> getProductDice();

    @SqlQuery("select * from Product where category_id = (select id from Category where name = 'Battle Royale') ")
    ArrayList<Product> getProductBattleRoyale();

    @SqlQuery("select * from Product where category_id = (select id from Category where name = 'Fighting') ")
    ArrayList<Product> getProductFighting();

    @SqlQuery("select * from Product where category_id = (select id from Category where name = 'Puzzle') ")
    ArrayList<Product> getProductPuzzle();

    @SqlQuery("select * from Product where category_id = (select id from Category where name = 'Party Game') ")
    ArrayList<Product> getProductPartyGame();

    @SqlQuery("select * from Product where category_id = (select id from Category where name = 'Fantasy') ")
    ArrayList<Product> getProductFantasy();

    @SqlQuery("select * from Product WHERE id=:id")
    Product findWithId(@Bind("id") String id);

}
