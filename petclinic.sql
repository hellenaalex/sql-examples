-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Feb 04, 2020 at 05:34 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

DROP DATABASE IF EXISTS `petclinic`;
CREATE DATABASE `petclinic`;
--
-- Database: `petclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
CREATE TABLE IF NOT EXISTS `owners` (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `last_name` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `first_name`, `last_name`, `address`, `city`, `telephone`) VALUES
(1, 'George', 'Franklin', '110 W. Liberty St.', 'Izhevsk', '6085551023'),
(2, 'Betty', 'Davis', '638 Cardinal Ave.', 'Sun Prairie', '6085551749'),
(3, 'Eduardo', 'Rodriquez', '2693 Commerce St.', 'McFarland', '6085558763'),
(4, 'Harold', 'Davis', '563 Friendly St.', 'Windsor', '6085553198'),
(5, 'Peter', 'McTavish', '2387 S. Fair Way', 'Madison', '6085552765'),
(6, 'Jean', 'Coleman', '105 N. Lake St.', 'Monona', '6085552654'),
(7, 'Jeff', 'Black', '1450 Oak Blvd.', 'Monona', '6085555387'),
(8, 'Maria', 'Escobito', '345 Maple St.', 'Madison', '6085557683'),
(9, 'David', 'Schroeder', '2749 Blackhawk Trail', 'Madison', '6085559435'),
(10, 'Carlos', 'Estaban', '2335 Independence La.', 'Waunakee', '6085555487'),
(11, 'Mihael', 'Franklin', '110 W. Liberty St.', 'Madison', '6085551023'),
(12, 'Betty', 'Leem', '638 Cardinal Ave.', 'Sun Prairie', '6085551749'),
(13, 'Fernando', 'Rodriquez', '2693 Commerce St.', 'McFarland', '6085558763'),
(14, 'Harold', 'Smooth', '563 Friendly St.', 'Windsor', '6085553198'),
(15, 'Harry', 'McTavish', '2387 S. Fair Way', 'Madison', '6085552765'),
(16, 'Jean', 'Jhonotan', '105 N. Lake St.', 'Izhevsk', '6085552654'),
(17, 'Sam', 'Black', '1450 Oak Blvd.', 'Monona', '6085555387'),
(18, 'Maria', 'Alexeeva', '345 Maple St.', 'Madison', '6085557683'),
(19, 'Ronald', 'Schroeder', '2749 Blackhawk Trail', 'Madison', '6085559435'),
(110, 'Carlos', 'Albanaros', '2335 Independence La.', 'Waunakee', '6085555487'),
(111, 'Alex', 'Miles', '', 'Waunakee', '6085555489'),
(112, 'James', 'McMillan', '2335 Independence La.', '', '6085554487'),
(113, 'Sam', 'Albanaros', '2335 Independence La.', 'Waunakee', ''),
(114, 'Ivan', 'Ivanov', '123 W. Liberty St.', 'St Leon', '6025551023');

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
CREATE TABLE IF NOT EXISTS `pets` (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `type_id` int(4) UNSIGNED NOT NULL,
  `owner_id` int(4) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `owner_id` (`owner_id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `name`, `birth_date`, `type_id`, `owner_id`) VALUES
(1, 'Leo', '2000-09-07', 1, 1),
(2, 'Basil', '2002-08-06', 6, 2),
(3, 'Rosy', '2001-04-17', 2, 3),
(4, 'Jewel', '2000-03-07', 2, 3),
(5, 'Iggy', '2000-11-30', 3, 4),
(6, 'George', '2000-01-20', 4, 5),
(7, 'Samantha', '1995-09-05', 1, 6),
(8, 'Max', '1995-09-04', 1, 6),
(9, 'Lucky', '1999-08-06', 5, 7),
(10, 'Mulligan', '1997-02-24', 2, 8),
(11, 'Freddy', '2000-03-09', 5, 9),
(12, 'Lucky', '2000-06-24', 2, 10),
(13, 'Sly', '2002-06-08', 1, 10),
(14, 'Jewel', '2020-03-07', 12, 13),
(15, 'Iggy', '2020-11-30', 13, 14),
(16, 'George', '2020-01-20', 14, 15),
(17, 'Samantha', '2015-09-04', 11, 16),
(18, 'Max', '2016-09-04', 11, 16),
(19, 'Lucky', '2019-08-06', 15, 17),
(110, 'Mulligan', NULL, 12, 18),
(111, 'Freddy', '2020-03-09', 15, 19),
(112, 'Lucky', '2020-06-24', 12, 110),
(113, 'Sly', '2012-06-08', 11, 110),
(114, 'Mikki', '2020-03-03', 1, 5),
(115, 'Mia', '2019-06-24', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `specialties`
--

DROP TABLE IF EXISTS `specialties`;
CREATE TABLE IF NOT EXISTS `specialties` (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `specialties`
--

INSERT INTO `specialties` (`id`, `name`) VALUES
(11, 'Anaesthesiology'),
(3, 'dentistry'),
(12, 'Nutrition'),
(1, 'radiology'),
(2, 'surgery'),
(13, 'Toxicology');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(5, 'bird'),
(1, 'cat'),
(16, 'chinchilla'),
(2, 'dog'),
(15, 'guinea pigs'),
(6, 'hamster'),
(11, 'horse'),
(3, 'lizard'),
(14, 'pig'),
(13, 'rat'),
(12, 'reptiles'),
(4, 'snake');

-- --------------------------------------------------------

--
-- Table structure for table `vets`
--

DROP TABLE IF EXISTS `vets`;
CREATE TABLE IF NOT EXISTS `vets` (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `middle_name` varchar(244) NOT NULL DEFAULT 'Alexandrovich',
  `birth_day` date NOT NULL DEFAULT '1988-01-01',
  `license_expiration_date` date NOT NULL DEFAULT '2020-12-12',
  PRIMARY KEY (`id`),
  KEY `last_name` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vets`
--

INSERT INTO `vets` (`id`, `first_name`, `last_name`, `middle_name`, `birth_day`, `license_expiration_date`) VALUES
(1, 'James', 'Carter', 'A', '1966-01-01', '2020-12-12'),
(2, 'Helen', 'Leary', 'M', '1988-01-01', '2020-12-12'),
(3, 'Linda', 'Douglas', 'D', '1988-01-01', '2020-12-12'),
(4, 'Rafael', 'Ortega', 'Alexandrovich', '1990-01-01', '2020-12-12'),
(5, 'Henry', 'Stevens', 'Petrovich', '1988-01-01', '2020-12-12'),
(6, 'Sharon', 'Jenkins', 'Semenovich', '1991-01-01', '2020-12-12'),
(11, 'Amy', 'Carter', 'D', '2001-01-01', '2020-12-12'),
(12, 'Helen', 'Cross', 'P', '1988-01-01', '2020-12-12'),
(13, 'Amalia', 'Douglas', 'S', '1988-01-01', '2020-12-12'),
(14, 'Rafael', 'Cortess', 'Danilovich', '1988-01-01', '2020-12-12'),
(15, 'John', 'Stevens', 'Evgenievich', '1988-01-01', '2020-12-12'),
(16, 'Sharon', 'Peterson', 'Maratovich', '1988-01-01', '2020-05-05'),
(17, 'John', 'Smith', 'S', '1989-02-02', '2021-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `vet_specialties`
--

DROP TABLE IF EXISTS `vet_specialties`;
CREATE TABLE IF NOT EXISTS `vet_specialties` (
  `vet_id` int(4) UNSIGNED NOT NULL,
  `specialty_id` int(4) UNSIGNED NOT NULL,
  UNIQUE KEY `vet_id` (`vet_id`,`specialty_id`),
  KEY `specialty_id` (`specialty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vet_specialties`
--

INSERT INTO `vet_specialties` (`vet_id`, `specialty_id`) VALUES
(2, 1),
(5, 1),
(3, 2),
(4, 2),
(3, 3),
(12, 11),
(15, 11),
(13, 12),
(14, 12),
(13, 13);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
CREATE TABLE IF NOT EXISTS `visits` (
  `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pet_id` int(4) UNSIGNED NOT NULL,
  `vet_id` int(4) UNSIGNED NOT NULL,
  `visit_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pet_id` (`pet_id`),
  KEY `vet_id_index` (`vet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `pet_id`, `vet_id`, `visit_date`, `description`) VALUES
(1, 7, 1, '2010-03-04', 'rabies shot'),
(2, 8, 1, '2011-03-04', 'rabies shot'),
(3, 8, 2, '2009-06-04', 'neutered'),
(4, 7, 3, '2008-09-04', 'spayed'),
(11, 17, 4, '2020-03-04', 'rabies shot'),
(12, 18, 5, '2019-03-04', 'rabies shot'),
(13, 18, 6, '2020-06-04', 'neutered'),
(14, 17, 2, '2020-09-04', 'spayed'),
(15, 114, 4, '2020-02-02', 'smth went wrong'),
(16, 114, 6, '2020-02-03', 'smth went too wrong'),
(17, 114, 6, '2019-04-04', 'smth went too wrong'),
(18, 4, 5, '2019-05-01', 'smth went too wrong');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`),
  ADD CONSTRAINT `pets_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

--
-- Constraints for table `vet_specialties`
--
ALTER TABLE `vet_specialties`
  ADD CONSTRAINT `vet_specialties_ibfk_1` FOREIGN KEY (`vet_id`) REFERENCES `vets` (`id`),
  ADD CONSTRAINT `vet_specialties_ibfk_2` FOREIGN KEY (`specialty_id`) REFERENCES `specialties` (`id`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`),
  ADD CONSTRAINT `visits_ibfk_2` FOREIGN KEY (`vet_id`) REFERENCES `vets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
