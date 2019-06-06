-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2019 at 08:53 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stubo`
--
CREATE DATABASE IF NOT EXISTS `stubo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `stubo`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `author_note` text COLLATE utf8mb4_vietnamese_ci,
  `author_image` text COLLATE utf8mb4_vietnamese_ci,
  `author_date_create` datetime DEFAULT NULL,
  `author_date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_author` int(11) NOT NULL,
  `book_category` int(11) NOT NULL,
  `book_nxb` int(11) NOT NULL,
  `book_name` varchar(128) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `book_introduce` text COLLATE utf8mb4_vietnamese_ci,
  `book_size` char(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `book_date_submitted` datetime DEFAULT NULL,
  `book_cover_image` text COLLATE utf8mb4_vietnamese_ci,
  `book_status` tinyint(1) DEFAULT NULL,
  `book_date_publish` datetime DEFAULT NULL,
  `book_mass` char(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `book_format` text COLLATE utf8mb4_vietnamese_ci,
  `book_page_number` int(11) DEFAULT NULL,
  `book_chapter` int(11) DEFAULT NULL,
  `book_language` text COLLATE utf8mb4_vietnamese_ci,
  `book_price` double DEFAULT NULL,
  `book_list_image` text COLLATE utf8mb4_vietnamese_ci,
  `book_rate` double DEFAULT NULL,
  `book_total_rate` int(11) DEFAULT NULL,
  `book_normal_price` double DEFAULT NULL,
  `book_rent_price` double DEFAULT NULL,
  `book_link` text COLLATE utf8mb4_vietnamese_ci,
  `book_date_create` datetime DEFAULT NULL,
  `book_date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `book_author` (`book_author`,`book_category`,`book_nxb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catogery`
--

DROP TABLE IF EXISTS `catogery`;
CREATE TABLE IF NOT EXISTS `catogery` (
  `catogery_id` int(11) NOT NULL AUTO_INCREMENT,
  `catogery_name` varchar(128) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `category_image_link` text COLLATE utf8mb4_vietnamese_ci,
  `category_date_create` datetime DEFAULT NULL,
  `category_date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`catogery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

DROP TABLE IF EXISTS `chapter`;
CREATE TABLE IF NOT EXISTS `chapter` (
  `chapter_id` int(11) NOT NULL AUTO_INCREMENT,
  `chapter_book` int(11) NOT NULL,
  `chapter_name` varchar(128) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `chapter_pageend` int(11) DEFAULT NULL,
  `chapter_description` text COLLATE utf8mb4_vietnamese_ci,
  `chapter_date_create` datetime DEFAULT NULL,
  `chapter_date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`chapter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_user_id` int(11) DEFAULT NULL,
  `comment_book_id` int(11) DEFAULT NULL,
  `comment_content` text COLLATE utf8mb4_vietnamese_ci,
  `comment_date` datetime DEFAULT NULL,
  `comment_parent` int(11) DEFAULT NULL,
  `comment_date_created` datetime DEFAULT NULL,
  `comment_date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
CREATE TABLE IF NOT EXISTS `friend` (
  `friend_id` int(11) NOT NULL AUTO_INCREMENT,
  `friend_userid` int(11) DEFAULT NULL,
  `friend_friend_id` int(11) DEFAULT NULL,
  `friend_is_comfimed` tinyint(1) DEFAULT NULL,
  `friend_is_limited` tinyint(1) DEFAULT NULL,
  `friend_date_create` datetime DEFAULT NULL,
  `friend_date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`friend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nxb`
--

DROP TABLE IF EXISTS `nxb`;
CREATE TABLE IF NOT EXISTS `nxb` (
  `nxb_id` int(11) NOT NULL AUTO_INCREMENT,
  `nxb_name` varchar(128) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `nxb_image` text COLLATE utf8mb4_vietnamese_ci,
  `nxb_date_create` datetime DEFAULT NULL,
  `nxb_date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`nxb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_custumer_id` int(11) DEFAULT NULL,
  `order_qty` int(11) DEFAULT NULL,
  `order_payment_type` tinyint(1) DEFAULT NULL,
  `order_voucher_id` int(11) DEFAULT NULL,
  `order_subtotal` double DEFAULT NULL,
  `order_total` double DEFAULT NULL,
  `order_comment` text COLLATE utf8mb4_vietnamese_ci,
  `order_status` tinyint(1) DEFAULT NULL,
  `order_date_create` datetime DEFAULT NULL,
  `order_date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_book`
--

DROP TABLE IF EXISTS `order_book`;
CREATE TABLE IF NOT EXISTS `order_book` (
  `order_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `order_book_price` double DEFAULT NULL,
  `order_book_date_create` datetime DEFAULT NULL,
  `order_book_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`order_book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `rating_value` int(11) DEFAULT NULL,
  `rating_date_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `rating_date_modified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rating_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `user_password` varchar(32) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `user_first_name` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `user_last_name` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `user_salt` char(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `user_birthday` datetime DEFAULT NULL,
  `user_newsletter` tinyint(1) DEFAULT NULL,
  `user_active` tinyint(1) DEFAULT NULL,
  `user_avatar` text COLLATE utf8mb4_vietnamese_ci,
  `user_type` tinyint(1) DEFAULT NULL,
  `user_date_expired` datetime DEFAULT NULL,
  `user_address` text COLLATE utf8mb4_vietnamese_ci,
  `user_account_balance` int(11) DEFAULT NULL,
  `user_date_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_date_modified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
