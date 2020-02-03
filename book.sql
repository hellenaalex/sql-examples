-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Feb 03, 2020 at 03:48 PM
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

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_ID` int(6) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(100) NOT NULL,
  `b_author` varchar(100) NOT NULL,
  `b_year` year(4) NOT NULL,
  `b_price` decimal(7,2) DEFAULT '0.00',
  `b_count` int(6) DEFAULT '0',
  `b_cat_ID` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`book_ID`),
  KEY `b_cat_ID` (`b_cat_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_ID`, `b_name`, `b_author`, `b_year`, `b_price`, `b_count`, `b_cat_ID`) VALUES
(1, 'JavaScript v karmane', 'Reva O.N.', 2008, '42.00', 10, 1),
(2, 'Visual FoxPro 9.0', 'Klepinin V.B.', 2007, '660.00', 2, 1),
(3, 'C++ Kak on est', 'Timofeev V.V.', 2009, '218.00', 4, 1),
(4, 'Sozdanie prilozhenij s pomoshhju C#', 'Faronov V.V.', 2008, '169.00', 1, 1),
(5, 'Delphi. Narodnye sovety', 'Shkryl A.A.', 2007, '243.00', 6, 1),
(6, 'Delphi. Polnoe rukovodstvo', 'Suharev M.', 2008, '500.00', 6, 1),
(7, 'Professionalnoe programmirovanie na PHP', 'Shlossnejgl Dzh.', 2006, '309.00', 5, 1),
(8, 'Sovershennyj kod', 'Makkonnell S.', 2007, '771.00', 1, 1),
(9, 'Praktika programmirovanija', 'Kernigan B.', 2004, '214.00', 12, 1),
(10, 'Principy marshrutizacii v Internet', 'Helebi S.', 2001, '428.00', 4, 2),
(11, 'Poisk v Internet', 'Gusev V.S.', 2004, '107.00', 2, 2),
(12, 'Web-konstruirovanie', 'Duvanov A.A.', 2003, '177.00', 6, 2),
(13, 'Samouchitel Internet', 'Konstantinov Ju.P.', 2009, '121.00', 4, 2),
(14, 'Populjarnye internet-brauzery', 'Marinin S.A.', 2007, '82.00', 6, 2),
(15, 'Obshhenie v Internete', 'Jeksler A.', 2006, '85.00', 5, 2),
(16, 'Bazy dannyh', 'Malyhina M.P.', 2006, '326.00', 2, 3),
(17, 'Bazy dannyh. Razrabotka prilozhenij', 'Rudikova L.V.', 2006, '189.00', 6, 3),
(18, 'Raskrytie tajn SQL', 'Oppel Je.', 2007, '200.00', 3, 3),
(19, 'Praktikum po Access', 'Zolotova S.I.', 2007, '87.00', 6, 3),
(20, 'Kompjuternye seti', 'Tannenbaum Je.', 2007, '630.00', 6, 4),
(21, 'Seti. Poisk neispravnostej', 'Bigelou S.', 2005, '434.00', 4, 4),
(22, 'Bezopasnost setej', 'Bregg R.', 2006, '462.00', 5, 4),
(23, 'Analiz i diagnostika kompjuternyh setej', 'Hogdal Dzh.', 2001, '344.00', 3, 4),
(24, 'Lokalnye vychislitelnye seti', 'Epaneshnikov A.', 2005, '82.00', 8, 4),
(25, 'Cifrovaja fotografija', 'Nadezhdin N.', 2004, '149.00', 20, 5),
(26, 'Muzykalnyj kompjuter dlja gitarista', 'Petelin R.Ju.', 2004, '217.00', 15, 5),
(27, 'Video na PK', 'Fedorova A.', 2003, '231.00', 10, 5),
(28, 'Multiplikacija vo Flash', 'Kirkpatrik G.', 2006, '211.00', 20, 5),
(29, 'Zapis CD i DVD', 'Gultjaev A.K.', 2003, '167.00', 12, 5),
(30, 'Zapis i obrabotka zvuka na komputere', 'Lojanich A.A.', 2008, '51.00', 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
CREATE TABLE IF NOT EXISTS `catalogs` (
  `cat_ID` int(6) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(20) NOT NULL,
  PRIMARY KEY (`cat_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`cat_ID`, `cat_name`) VALUES
(1, 'Programmirovanie'),
(2, 'Internet'),
(3, 'Bazy dannyh'),
(4, 'Seti'),
(5, 'Multimedia'),
(6, 'Programming'),
(7, 'Integnet'),
(8, 'Databases'),
(9, 'Networks'),
(10, 'Multimedia');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_ID` int(6) NOT NULL AUTO_INCREMENT,
  `o_user_ID` int(11) NOT NULL,
  `o_book_ID` int(11) NOT NULL,
  `o_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `o_number` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_ID`),
  KEY `o_book_ID` (`o_book_ID`),
  KEY `o_user_ID` (`o_user_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `o_user_ID`, `o_book_ID`, `o_time`, `o_number`) VALUES
(1, 3, 8, '2009-01-04 10:39:38', 1),
(2, 6, 10, '2009-02-10 09:40:29', 2),
(3, 1, 20, '2009-02-18 13:41:05', 4),
(4, 4, 20, '2009-03-10 18:20:00', 1),
(5, 3, 20, '2009-03-17 19:15:36', 1),
(6, 12, 27, '2009-01-04 10:39:38', 1),
(7, 11, 5, '2009-02-10 09:40:29', 2),
(8, 10, 5, '2009-02-18 13:41:05', 4),
(9, 9, 11, '2009-03-10 18:20:00', 1),
(10, 8, 11, '2009-03-17 19:15:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_ID` int(6) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) NOT NULL,
  `u_patronymic` varchar(20) NOT NULL,
  `u_surname` varchar(20) NOT NULL,
  `u_phone` varchar(12) DEFAULT NULL,
  `u_email` varchar(20) DEFAULT NULL,
  `u_status` enum('active','passive','lock','gold') DEFAULT 'passive',
  PRIMARY KEY (`user_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_ID`, `u_name`, `u_patronymic`, `u_surname`, `u_phone`, `u_email`, `u_status`) VALUES
(1, 'Aleksandr', 'Valerevich', 'Ivanov', '58-98-78', 'ivanov@email.ru', 'active'),
(2, 'Sergej', 'Ivanovich', 'Losev', '90-57-77', 'losev@email.ru', 'passive'),
(3, 'Igor', 'Nikolaevich', 'Simonov', '95-66-61', 'simonov@email.ru', 'active'),
(4, 'Maksim', 'Petrovich', 'Kuznecov', NULL, 'kuznetsov@email.ru', 'active'),
(5, 'Anatolij', 'Jurevich', 'Petrov', NULL, NULL, 'lock'),
(6, 'Aleksandr', 'Aleksandrovich', 'Korneev', '89-78-36', 'korneev@email.ru', 'gold'),
(7, 'Alex', 'V', 'Ivanov', '58-98-78', 'ivanov@email.ru', 'active'),
(8, 'Sergey', 'I', 'Losev', '90-57-77', 'losev@email.ru', 'passive'),
(9, 'Igor', 'N', 'Simonov', '95-66-61', 'simonov@email.ru', 'active'),
(10, 'Max', 'P', 'Kuznetsov', NULL, 'kuznetsov@email.ru', 'active'),
(11, 'Anat', 'U', 'Petrov', NULL, NULL, 'lock'),
(12, 'Alex', 'A', 'Kornyaev', '89-78-36', 'korneev@email.ru', 'gold');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
