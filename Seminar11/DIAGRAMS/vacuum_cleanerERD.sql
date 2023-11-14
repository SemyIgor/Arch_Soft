CREATE TABLE IF NOT EXISTS `shedule` (
  `id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `clean_date` datetime NOT NULL,
  `clean_type_id` int NOT NULL,
  `clean_method_id` int NOT NULL,
  FOREIGN KEY (`clean_type_id`) REFERENCES `clean_type` (`id`),
  FOREIGN KEY (`clean_method_id`) REFERENCES `clean_method` (`id`)
);

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `robot_group_id` int NOT NULL,
  `robot_id` int NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `hash` bigint NOT NULL,
  FOREIGN KEY (`robot_group_id`) REFERENCES `robot_group` (`id`),
  FOREIGN KEY (`robot_id`) REFERENCES `robot` (`id`)
);

CREATE TABLE IF NOT EXISTS `robot` (
  `id` int NOT NULL PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `serial_number` bigint NOT NULL,
  `outer_service_id` int NOT NULL,
  `shedule_id` int NOT NULL,
  `report_id` bigint NOT NULL,
  FOREIGN KEY (`outer_service_id`) REFERENCES `outer_services` (`id`),
  FOREIGN KEY (`shedule_id`) REFERENCES `shedule` (`id`),
  FOREIGN KEY (`report_id`) REFERENCES `report` (`id`)
);

CREATE TABLE IF NOT EXISTS `robot_group` (
  `id` int NOT NULL PRIMARY KEY,
  `group_name` varchar(255) NOT NULL,
  `shedule_id` int NOT NULL,
  `outer_service_id` int NOT NULL,
  `robot_id` int NOT NULL,
  FOREIGN KEY (`shedule_id`) REFERENCES `shedule` (`id`),
  FOREIGN KEY (`outer_service_id`) REFERENCES `outer_services` (`id`),
  FOREIGN KEY (`robot_id`) REFERENCES `robot` (`id`)
);

CREATE TABLE IF NOT EXISTS `report` (
  `id` bigint NOT NULL PRIMARY KEY,
  `report_time` datetime NOT NULL,
  `report_text` varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `clean_type` (
  `id` int NOT NULL PRIMARY KEY,
  `name` varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `clean_method` (
  `id` int NOT NULL PRIMARY KEY,
  `name` varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `outer_services` (
  `id` int NOT NULL PRIMARY KEY,
  `service_name` varchar(255) NOT NULL
);