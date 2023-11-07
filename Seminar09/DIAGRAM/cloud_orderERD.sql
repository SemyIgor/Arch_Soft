CREATE TABLE `order` (
  `id` bigint NOT NULL PRIMARY KEY,
  `customer_id` bigint NOT NULL,
  `cloud_services_id` bigint NOT NULL,
  `time_start` timestamp NOT NULL,
  `time_end` timestamp NOT NULL,
  `cost` float NOT NULL
);

CREATE TABLE `customer` (
  `id` bigint NOT NULL,
  `FIO` varchar(255) NOT NULL,
  `account_id` bigint NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
);

CREATE TABLE `account` (
  `id` bigint NOT NULL PRIMARY KEY,
  `code` varchar(255) NOT NULL
);

CREATE TABLE `ai_bot_service` (
  `id` int NOT NULL PRIMARY KEY,
  `service_name` varchar(255) NOT NULL,
  `price` float NOT NULL
);

CREATE TABLE `virtual_machine` (
  `id` int NOT NULL PRIMARY KEY,
  `type` varchar(255) NOT NULL,
  `price` float NOT NULL
);

CREATE TABLE `cloud_services` (
  `id` bigint NOT NULL PRIMARY KEY,
  `v_RAM_id` int NOT NULL,
  `v_CPU_id` int NOT NULL,
  `SSD_id` int NOT NULL,
  `GPU_id` int NOT NULL,
  `virtual_machine_id` int NOT NULL,
  `SQL_database_id` int NOT NULL,
  `ai_bot_service_id` int NOT NULL
);

CREATE TABLE `v_RAM` (
  `id` int NOT NULL PRIMARY KEY,
  `value` int NOT NULL,
  `price` int NOT NULL
);

CREATE TABLE `v_CPU` (
  `id` int NOT NULL PRIMARY KEY,
  `core_number` int NOT NULL,
  `price` float NOT NULL
);

CREATE TABLE `SSD` (
  `id` int NOT NULL PRIMARY KEY,
  `value` int NOT NULL,
  `price` float NOT NULL
);

CREATE TABLE `SQL_database` (
  `id` int NOT NULL PRIMARY KEY,
  `value` int NOT NULL,
  `price` float NOT NULL
);

CREATE TABLE `GPU` (
  `id` int NOT NULL PRIMARY KEY,
  `price` float NOT NULL
);