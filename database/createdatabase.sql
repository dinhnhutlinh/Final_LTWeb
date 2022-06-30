create database boardgame;

use boardgame;

CREATE TABLE `Producer`
(
    `id`        varchar(10) PRIMARY KEY NOT NULL,
    `name`      varchar(255),
    `address`   varchar(255),
    `email`     varchar(255),
    `phone`     varchar(255),
    `create_at` Datetime                NOT NULL,
    `update_at` Datetime                NOT NULL
);

CREATE TABLE `Category`
(
    `id`        varchar(10) PRIMARY KEY NOT NULL,
    `name`      varchar(255),
    `desc`      text,
    `create_at` Datetime                NOT NULL,
    `update_at` Datetime                NOT NULL
);

CREATE TABLE `Discount`
(
    `id`               varchar(10) PRIMARY KEY NOT NULL,
    `name`             varchar(255),
    `desc`             text,
    `discount_percent` double,
    `active`           tinyint,
    `start_at`         Datetime                NOT NULL,
    `finish_at`        Datetime                NOT NULL,
    `create_at`        Datetime                NOT NULL,
    `update_at`        Datetime                NOT NULL
);

CREATE TABLE `Product`
(
    `id`            varchar(10) PRIMARY KEY NOT NULL,
    `name`          varchar(255)           NOT NULL,
    `price`         double                 NOT NULL,
    `min_age`       int,
    `min_player`    int,
    `max_player`    int,
    `min_playtime`  int,
    `max_playtime`  int,
    `desc`          text,
    `img_display`   varchar(2048),
    `weight_amount` double,
    `weight_units`  varchar(255),
    `size_height`   double,
    `size_depth`    double,
    `size_units`    varchar(255),
    `active`        tinyint,
    `inventory`     int,
    `producer_id`   varchar(10),
    `category_id`   varchar(10),
    `discount_id`   varchar(10),
    `create_at`     Datetime               NOT NULL,
    `update_at`     Datetime               NOT NULL
);

CREATE TABLE `Order`
(
    `id`          varchar(10) PRIMARY KEY NOT NULL,
    `ship_price`  double,
    `customer_id` varchar(255)            NOT NULL,
    `address`     varchar(255)            NOT NULL,
    `total`       int                     NOT NULL,
    `status`      varchar(64)             NOT NULL,
    `name`        varchar(255),
    `phone`       varchar(255),
    `email`       varchar(255),
    `create_at`   Datetime                NOT NULL,
    `update_at`   Datetime                NOT NULL
);

CREATE TABLE `OrderItems`
(
    `order_id`   varchar(10) NOT NULL,
    `product_id` varchar(10) NOT NULL,
    `quantity`   int,
    `price`      double,
    `create_at`  Datetime    NOT NULL,
    `update_at`  Datetime    NOT NULL,
    PRIMARY KEY (`order_id`, `product_id`)
);

CREATE TABLE `Customer`
(
    `id`         varchar(10) PRIMARY KEY NOT NULL,
    `first_name` varchar(255),
    `last_name`  varchar(255),
    `avatar`     varchar(2048),
    `password`   varchar(64)             NOT NULL,
    `address`    varchar(255),
    `phone`      varchar(12),
    `email`      varchar(255)            NOT NULL,
    `create_at`  Datetime                NOT NULL,
    `update_at`  Datetime                NOT NULL
);

CREATE TABLE `Admin`
(
    `id`         varchar(10) PRIMARY KEY NOT NULL,
    `first_name` varchar(255)            NOT NULL,
    `last_name`  varchar(255)            NOT NULL,
    `avatar`     varchar(2048),
    `password`   varchar(64)             NOT NULL,
    `address`    varchar(255),
    `phone`      varchar(12),
    `email`      varchar(255),
    `create_at`  Datetime                NOT NULL,
    `update_at`  Datetime                NOT NULL
);

CREATE TABLE `Cart`
(
    `id`          varchar(10) PRIMARY KEY NOT NULL,
    `customer_id` varchar(10)             NOT NULL,
    `total_price` double,
    `create_at`   Datetime                NOT NULL,
    `update_at`   Datetime                NOT NULL
);

CREATE TABLE `CartItems`
(
    `cart_id`    varchar(8)  NOT NULL,
    `product_id` varchar(10) NOT NULL,
    `quantity`   int,
    `price`      double,
    `create_at`  Datetime    NOT NULL,
    `update_at`  Datetime    NOT NULL,
    PRIMARY KEY (`cart_id`, `product_id`)
);

CREATE TABLE `Rating`
(
    `id`          varchar(10) PRIMARY KEY NOT NULL,
    `customer_id` varchar(10)             NOT NULL,
    `product_id`  varchar(10)             NOT NULL,
    `star_rating` int                     NOT NULL,
    `content`     text,
    `create_at`   Datetime                NOT NULL,
    `update_at`   Datetime                NOT NULL
);

CREATE TABLE `Blog`
(
    `id`        varchar(10) PRIMARY KEY NOT NULL,
    `admin_id`  varchar(10)             NOT NULL,
    `title`     text                    NOT NULL,
    `image`     varchar(2048)                   NOT NULL,
    `content`   text,
    `create_at` Datetime                NOT NULL,
    `update_at` Datetime                NOT NULL
);

CREATE TABLE `Slider`
(
    `id`        varchar(10) PRIMARY KEY NOT NULL,
    `name`      varchar(255)            NOT NULL,
    `link`      varchar(2048),
    `image`     varchar(2048)            NOT NULL,
    `create_at` Datetime                NOT NULL,
    `update_at` Datetime                NOT NULL
);

CREATE TABLE `ProductImage`
(
    `id`         varchar(10) NOT NULL,
    `link`       varchar(255),
    `product_id` varchar(10) NOT NULL,
    `create_at`  Datetime    NOT NULL,
    `update_at`  Datetime    NOT NULL,
    PRIMARY KEY (`id`, `product_id`)
);

ALTER TABLE `Product`
    ADD FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`);

ALTER TABLE `Product`
    ADD FOREIGN KEY (`discount_id`) REFERENCES `Discount` (`id`);

ALTER TABLE `OrderItems`
    ADD FOREIGN KEY (`order_id`) REFERENCES `Product` (`id`);

ALTER TABLE `OrderItems`
    ADD FOREIGN KEY (`order_id`) REFERENCES `Order` (`id`);

ALTER TABLE `Order`
    ADD FOREIGN KEY (`Customer_id`) REFERENCES `Customer` (`id`);

ALTER TABLE `CartItems`
    ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);

ALTER TABLE `Cart`
    ADD FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`id`);

ALTER TABLE `CartItems`
    ADD FOREIGN KEY (`cart_id`) REFERENCES `Cart` (`id`);

ALTER TABLE `Rating`
    ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);

ALTER TABLE `Rating`
    ADD FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`id`);

ALTER TABLE `Product`
    ADD FOREIGN KEY (`producer_id`) REFERENCES `Producer` (`id`);

ALTER TABLE `Blog`
    ADD FOREIGN KEY (`admin_id`) REFERENCES `Admin` (`id`);

ALTER TABLE `OrderItems`
    ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);