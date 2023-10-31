CREATE TABLE IF NOT EXISTS `provider` (
  `id` BIGINT NOT NULL PRIMARY KEY,
  `address_book_id` BIGINT NOT NULL,
  `account` BIGINT NOT NULL
);

CREATE TABLE IF NOT EXISTS `customer` (
  `id` BIGINT NOT NULL PRIMARY KEY,
  `address_book_id` BIGINT NOT NULL,
  `account` BIGINT NOT NULL
);

CREATE TABLE IF NOT EXISTS `product` (
  `id` BIGINT NOT NULL PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  `price` DOUBLE NOT NULL,
  `category_id` SMALLINT NOT NULL,
  `sub_category_id` SMALLINT NOT NULL,
  `type_id` SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS `category` (
  `id` SMALLINT NOT NULL PRIMARY KEY,
  `name` SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS `sub_category` (
  `id` SMALLINT NOT NULL PRIMARY KEY,
  `name` SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS `type` (
  `id` BIGINT NOT NULL PRIMARY KEY,
  `name` SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS `order` (
  `id` BIGINT NOT NULL PRIMARY KEY,
  `product_id` BIGINT NOT NULL,
  `count` INT NOT NULL,
  `order_date` DATE NOT NULL,
  `provider_id` BIGINT NOT NULL,
  `customer_id` BIGINT NOT NULL,
  `delivery_id` BIGINT NOT NULL
);

CREATE TABLE IF NOT EXISTS `delivery` (
  `id` BIGINT NOT NULL PRIMARY KEY,
  `delivery_date` DATE NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `recipient_name` VARCHAR(255) NOT NULL,
  `review` VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `address_book` (
  `id` BIGINT NOT NULL PRIMARY KEY,
  `company_name` VARCHAR(255) NOT NULL,
  `contact_name` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `mailing_address` VARCHAR(255) NOT NULL,
  `actual_address` VARCHAR(255) NOT NULL
);