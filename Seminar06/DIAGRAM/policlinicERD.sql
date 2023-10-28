CREATE TABLE IF NOT EXISTS `person` (
  `id` bigint NOT NULL PRIMARY KEY,
  `FIO` varchar(255) NOT NULL,
  `adress` text NOT NULL,
  `birth_date` date NOT NULL,
  `sex` char(1) NOT NULL
);

CREATE TABLE IF NOT EXISTS `patient` (
  `id` bigint NOT NULL PRIMARY KEY,
  `person_id` bigint NOT NULL,
  `history_id` int NOT NULL,
  `OMS` bigint NOT NULL,
  `DMS` bigint NOT NULL,
  FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  FOREIGN KEY (`history_id`) REFERENCES `history` (`id`)
);

CREATE TABLE IF NOT EXISTS `doctor` (
  `id` bigint NOT NULL PRIMARY KEY,
  `person_id` bigint NOT NULL,
  `category_id` int NOT NULL,
  `specialization_id` bigint NOT NULL,
  `room_id` int NOT NULL,
  `experience` datetime NOT NULL,
  FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  FOREIGN KEY (`specialization_id`) REFERENCES `specialization` (`id`),
  FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
);

CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL PRIMARY KEY,
  `category_name` varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `specialization` (
  `id` bigint NOT NULL PRIMARY KEY,
  `specialization_name` varchar(255) NOT NULL,
  `specialization_code` bigint NOT NULL
);

CREATE TABLE IF NOT EXISTS `ICD_codes` (
  `id` int NOT NULL PRIMARY KEY,
  `icd_code` varchar(255) NOT NULL,
  `disease_name` varchar(255) NOT NULL,
  `description` text NOT NULL
);

CREATE TABLE IF NOT EXISTS `history` (
  `id` int NOT NULL PRIMARY KEY,
  `ICD_id` int NOT NULL,
  `disease_start` datetime NOT NULL,
  `disease_stop` datetime NOT NULL,
  `doctor_id` bigint NOT NULL,
  `tests_list_id` int NOT NULL,
  `treatment` text NOT NULL,
  `recomendations` text NOT NULL,
  FOREIGN KEY (`ICD_id`) REFERENCES `ICD_codes` (`id`),
  FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`),
  FOREIGN KEY (`tests_list_id`) REFERENCES `tests_list` (`id`)
);

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int NOT NULL PRIMARY KEY,
  `name` varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `tests` (
  `id` bigint NOT NULL PRIMARY KEY,
  `test_name` varchar(255) NOT NULL,
  `specialist_doctor_id` bigint NOT NULL,
  `laboratory_doctor_id` bigint NOT NULL,
  `tests_list_id` int NOT NULL,
  FOREIGN KEY (`specialist_doctor_id`) REFERENCES `doctor` (`id`),
  FOREIGN KEY (`laboratory_doctor_id`) REFERENCES `doctor` (`id`),
  FOREIGN KEY (`tests_list_id`) REFERENCES `tests_list` (`id`)
);

CREATE TABLE IF NOT EXISTS `tests_list` (
  `id` int NOT NULL PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `test_code` int NOT NULL,
  `description` text NOT NULL
);

CREATE TABLE IF NOT EXISTS `schedule` (
  `id` bigint NOT NULL PRIMARY KEY,
  `patient_id` bigint NOT NULL,
  `date` datetime NOT NULL,
  `doctor_id` bigint NOT NULL,
  `rooms_id` int NOT NULL,
  FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`),
  FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`)
);