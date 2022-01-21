CREATE DATABASE broadgame;
USE broadgame;
ALTER DATABASE `broadgame` DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
CREATE TABLE `Producer` (
                            `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                            `name` varchar(255) NOT NULL,
                            `address_id` int,
                            `email` varchar(255),
                            `phone` int,
                            `create_at` datetime NOT NULL,
                            `update_at` datetime NOT NULL
);

CREATE TABLE `Category` (
                            `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                            `name` varchar(255) NOT NULL,
                            `desc` text,
                            `create_at` datetime NOT NULL,
                            `update_at` datetime NOT NULL
);

CREATE TABLE `Discount` (
                            `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                            `name` varchar(255),
                            `desc` text,
                            `discount_percent` int NOT NULL,
                            `active` int NOT NULL,
                            `from_at` datetime NOT NULL,
                            `to_at` datetime NOT NULL
);

CREATE TABLE `Product` (
                           `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                           `name` varchar(255) NOT NULL,
                           `age` int,
                           `min_player` int,
                           `max_player` int,
                           `time_play` int,
                           `height` double,
                           `width` double,
                           `tall` double,
                           `weight` double,
                           `producer_id` int,
                           `desc` text,
                           `img_display` text,
                           `category_id` int NOT NULL,
                           `inventory` int NOT NULL,
                           `price` int NOT NULL,
                           `discount_id` int,
                           `create_at` datetime NOT NULL,
                           `update_at` datetime NOT NULL
);

CREATE TABLE `Order` (
                         `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                         `ship_id` int,
                         `customer_id` int NOT NULL,
                         `address_id` int NOT NULL,
                         `total` int NOT NULL,
                         `status_id` int NOT NULL,
                         `name` varchar(255),
                         `phone` varchar(255),
                         `email` varchar(255),
                         `create_at` datetime NOT NULL,
                         `update_at` datetime NOT NULL
);

CREATE TABLE `OrderItems` (
                              `order_id` int NOT NULL,
                              `product_id` int NOT NULL,
                              `quantity` int NOT NULL,
                              `price` int NOT NULL,
                              `create_at` datetime NOT NULL,
                              `update_at` datetime NOT NULL,
                              PRIMARY KEY (`order_id`, `product_id`)
);

CREATE TABLE `Customer` (
                            `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                            `first_name` varchar(255) NOT NULL,
                            `last_name` varchar(255) NOT NULL,
                            `avatar` text,
                            `password` text NOT NULL,
                            `address_id` int,
                            `phone` varchar(12),
                            `email` varchar(255),
                            `create_at` datetime NOT NULL,
                            `update_at` datetime NOT NULL
);

CREATE TABLE `Cart` (
                        `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                        `customer_id` int NOT NULL,
                        `total_price` int,
                        `create_at` datetime NOT NULL,
                        `update_at` datetime NOT NULL
);

CREATE TABLE `CartItems` (
                             `cart_id` int NOT NULL,
                             `product_id` int NOT NULL,
                             `quantity` int NOT NULL,
                             `price` int NOT NULL,
                             `create_at` datetime NOT NULL,
                             `update_at` datetime NOT NULL,
                             PRIMARY KEY (`cart_id`, `product_id`)
);

CREATE TABLE `Address` (
                           `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                           `details_address` text NOT NULL,
                           `district` nvarchar(50) NOT NULL,
                           `province` nvarchar(50) NOT NULL,
                           `create_at` datetime NOT NULL,
                           `update_at` datetime NOT NULL
);

CREATE TABLE `Status` (
                          `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                          `name` varchar(255) NOT NULL,
                          `desc` text NOT NULL
);

CREATE TABLE `Raiting` (
                           `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                           `customer_id` int NOT NULL,
                           `product_id` int NOT NULL,
                           `star_raiting` int NOT NULL,
                           `content` text,
                           `create_at` datetime NOT NULL,
                           `update_at` datetime NOT NULL
);

CREATE TABLE `Admin` (
                         `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                         `first_name` varchar(255) NOT NULL,
                         `last_name` varchar(255) NOT NULL,
                         `password` varchar(255) NOT NULL,
                         `address_id` int,
                         `email` varchar(255),
                         `phone` varchar(12),
                         `avatar` text NOT NULL,
                         `create_at` datetime NOT NULL,
                         `update_at` datetime NOT NULL
);

CREATE TABLE `Blog` (
                        `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                        `admin_id` int NOT NULL,
                        `title` text NOT NULL,
                        `image_id` int,
                        `content` text,
                        `create_at` datetime NOT NULL,
                        `update_at` datetime NOT NULL
);

CREATE TABLE `Slider` (
                          `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                          `name` varchar(255) NOT NULL,
                          `link` text,
                          `image_id` int NOT NULL,
                          `create_at` datetime NOT NULL,
                          `update_at` datetime NOT NULL
);

CREATE TABLE `Image` (
                         `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                         `name` varchar(255) NOT NULL,
                         `link` text NOT NULL
);

CREATE TABLE `GroupImage` (
                              `image_id` int NOT NULL,
                              `product_id` int NOT NULL,
                              `create_at` datetime NOT NULL,
                              `update_at` datetime NOT NULL,
                              PRIMARY KEY (`image_id`, `product_id`)
);

CREATE TABLE `Ship` (
                        `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
                        `weight` double NOT NULL,
                        `price` int NOT NULL,
                        `create_at` datetime NOT NULL,
                        `update_at` datetime NOT NULL
);

ALTER TABLE `Product` ADD FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`);

ALTER TABLE `Product` ADD FOREIGN KEY (`discount_id`) REFERENCES `Discount` (`id`);

ALTER TABLE `OrderItems` ADD FOREIGN KEY (`order_id`) REFERENCES `Product` (`id`);

ALTER TABLE `OrderItems` ADD FOREIGN KEY (`order_id`) REFERENCES `Order` (`id`);

ALTER TABLE `Order` ADD FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`id`);

ALTER TABLE `CartItems` ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);

ALTER TABLE `Cart` ADD FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`id`);

ALTER TABLE `CartItems` ADD FOREIGN KEY (`cart_id`) REFERENCES `Cart` (`id`);

ALTER TABLE `Raiting` ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);

ALTER TABLE `Raiting` ADD FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`id`);

ALTER TABLE `Product` ADD FOREIGN KEY (`producer_id`) REFERENCES `Producer` (`id`);

ALTER TABLE `Blog`ADD FOREIGN KEY (`admin_id`)  REFERENCES `Admin` (`id`);

ALTER TABLE `Admin` ADD FOREIGN KEY (`address_id`) REFERENCES `Address` (`id`);

ALTER TABLE `Customer` ADD FOREIGN KEY (`address_id`) REFERENCES `Address` (`id`);

ALTER TABLE `Order` ADD FOREIGN KEY (`address_id`) REFERENCES `Address` (`id`);

ALTER TABLE `Order` ADD FOREIGN KEY (`status_id`) REFERENCES `Status` (`id`);

ALTER TABLE `OrderItems` ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);

ALTER TABLE `Blog` ADD FOREIGN KEY (`image_id`) REFERENCES `Image` (`id`);

ALTER TABLE `Slider` ADD FOREIGN KEY (`image_id`) REFERENCES `Image` (`id`);

ALTER TABLE `GroupImage` ADD FOREIGN KEY (`image_id`) REFERENCES `Image` (`id`);

ALTER TABLE `GroupImage` ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);

ALTER TABLE `Order` ADD FOREIGN KEY (`ship_id`) REFERENCES `Ship` (`id`);

