CREATE TABLE `order` (
  `id` bigint NOT NULL PRIMARY KEY,
  `table_id` int NOT NULL,
  `date` date NOT NULL,
  `time_start` timestamp NOT NULL,
  `time_end` timestamp NOT NULL,
  `persons` int NOT NULL,
  `customer_id` bigint NOT NULL,
  FOREIGN KEY (`table_id`) REFERENCES `table`(`id`),
  FOREIGN KEY (`customer_id`) REFERENCES `customer`(`id`)
);

CREATE TABLE `customer` (
  `id` bigint NOT NULL PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
);

CREATE TABLE `photo` (
  `id` int NOT NULL PRIMARY KEY,
  `photo_url` varchar(255) NOT NULL
);

CREATE TABLE `table` (
  `id` int NOT NULL PRIMARY KEY,
  `hall_id` int NOT NULL,
  `seats` int NOT NULL,
  `remark` varchar(255) NOT NULL,
  `photo_id` int NOT NULL,
  FOREIGN KEY (`hall_id`) REFERENCES `hall`(`id`),
  FOREIGN KEY (`photo_id`) REFERENCES `photo`(`id`)
);

CREATE TABLE `hall` (
  `id` int NOT NULL PRIMARY KEY,
  `music` boolean NOT NULL,
  `smoke` boolean NOT NULL,
  `photo_id` int NOT NULL,
  FOREIGN KEY (`photo_id`) REFERENCES `photo`(`id`)
);