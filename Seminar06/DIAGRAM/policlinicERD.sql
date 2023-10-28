CREATE TABLE IF NOT EXISTS `person` (
  `id` BIGINT NOT NULL PRIMARY KEY,
  `FIO` VARCHAR(255) NOT NULL,
  `adress` TEXT NOT NULL,
  `birth_date` DATE NOT NULL,
  `sex` CHAR(1) NOT NULL
);

CREATE TABLE IF NOT EXISTS `patient` (
  `id` BIGINT NOT NULL PRIMARY KEY,
  `person_id` BIGINT NOT NULL,
  `history_id` INT NOT NULL,
  `OMS` BIGINT NOT NULL,
  `DMS` BIGINT NOT NULL,
  FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  FOREIGN KEY (`history_id`) REFERENCES `history` (`id`)
);

CREATE TABLE IF NOT EXISTS `doctor` (
  `id` BIGINT NOT NULL PRIMARY KEY,
  `person_id` BIGINT NOT NULL,
  `category_id` INT NOT NULL,
  `specialization_id` BIGINT NOT NULL,
  `room_id` INT NOT NULL,
  `experience` DATETIME NOT NULL,
  FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  FOREIGN KEY (`specialization_id`) REFERENCES `specialization` (`id`),
  FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
);

CREATE TABLE IF NOT EXISTS `category` (
  `id` INT NOT NULL PRIMARY KEY,
  `category_name` VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `specialization` (
  `id` BIGINT NOT NULL PRIMARY KEY,
  `specialization_name` VARCHAR(255) NOT NULL,
  `specialization_code` BIGINT NOT NULL
);

CREATE TABLE IF NOT EXISTS `ICD_codes` (
  `id` INT NOT NULL PRIMARY KEY,
  `icd_code` VARCHAR(255) NOT NULL,
  `disease_name` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS `history` (
  `id` INT NOT NULL PRIMARY KEY,
  `ICD_id` INT NOT NULL,
  `disease_start` DATETIME NOT NULL,
  `disease_stop` DATETIME NOT NULL,
  `doctor_id` BIGINT NOT NULL,
  `treatment` TEXT NOT NULL,
  `recomendations` TEXT NOT NULL,
  FOREIGN KEY (`ICD_id`) REFERENCES `ICD_codes` (`id`),
  FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`)
);

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` INT NOT NULL PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `tests` (
  `id` BIGINT NOT NULL PRIMARY KEY,
  `test_name` VARCHAR(255) NOT NULL,
  `laboratory_doctor_id` BIGINT NOT NULL,
  `tests_list_id` INT NOT NULL,
  FOREIGN KEY (`laboratory_doctor_id`) REFERENCES `doctor` (`id`),
  FOREIGN KEY (`tests_list_id`) REFERENCES `tests_list` (`id`)
);

CREATE TABLE IF NOT EXISTS `tests_list` (
  `id` INT NOT NULL PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  `test_code` INT NOT NULL
);