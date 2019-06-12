-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2019 at 06:34 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


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
-- Table structure for table `stubo_author`
--

DROP TABLE IF EXISTS `stubo_author`;
CREATE TABLE IF NOT EXISTS `stubo_author` (
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
-- Table structure for table `stubo_book`
--

DROP TABLE IF EXISTS `stubo_book`;
CREATE TABLE IF NOT EXISTS `stubo_book` (
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
-- Table structure for table `stubo_category`
--

DROP TABLE IF EXISTS `stubo_category`;
CREATE TABLE IF NOT EXISTS `stubo_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_parent_id` int(11) DEFAULT NULL,
  `category_name` varchar(128) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `category_image_link` text COLLATE utf8mb4_vietnamese_ci,
  `category_slug` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `stubo_category`
--

INSERT INTO `stubo_category` (`category_id`, `category_parent_id`, `category_name`, `category_image_link`, `category_slug`, `category_date_create`, `category_date_modified`) VALUES
(1, NULL, 'Sách văn học', '', 'sach-van-hoc', '2019-06-07 15:43:03', '2019-06-07 15:43:03'),
(2, NULL, 'Sách kinh tế', '', 'sach-kinh-te', '2019-06-07 15:43:03', '2019-06-07 15:43:03'),
(3, NULL, 'Sách kỹ năng sống', '', 'sach-ky-nang-song', '2019-06-07 15:45:18', '2019-06-07 15:45:18'),
(4, NULL, 'Sách Giáo khoa - Giáo trình', '', 'sach-giao-khoa-giao-trinh', '2019-06-07 15:45:18', '2019-06-07 15:45:18'),
(5, NULL, 'Sách Khoa học - Kỹ thuật', '', 'sach-khoa-hoc-ky-thuat', '2019-06-07 15:45:18', '2019-06-07 15:45:18'),
(6, NULL, 'Sách Công nghệ Thông tin', NULL, 'sach-cong-nghe-thong-tin', '2019-06-07 15:48:26', '2019-06-07 15:48:26'),
(7, 6, 'Tin học văn phòng', NULL, 'tin-hoc-van-phong', '2019-06-07 15:50:24', '2019-06-07 15:50:24'),
(8, 6, 'Lập trình', NULL, 'lap-trinh', '2019-06-07 15:50:24', '2019-06-07 15:50:24'),
(9, 6, 'Thiết kế - Đồ họa', NULL, 'thiet-ke-do-hoa', '2019-06-07 15:50:24', '2019-06-07 15:50:24'),
(10, 1, 'Du ký', NULL, 'du-ky', '2019-06-07 15:54:23', '2019-06-07 15:54:23'),
(11, 1, 'Light novel', NULL, 'light-novel', '2019-06-07 15:54:23', '2019-06-07 15:54:23'),
(12, 1, 'Phóng sự - Ký sự - Bút ký', NULL, 'phong-su-ky-su-but-ky', '2019-06-07 15:54:23', '2019-06-07 15:54:23'),
(13, 1, 'Thơ', NULL, 'tho', '2019-06-07 15:54:23', '2019-06-07 15:54:23'),
(14, 1, 'Truyện cổ tích - Ngụ ngôn', NULL, 'truyen-co-tich-ngu-ngon', '2019-06-07 15:54:23', '2019-06-07 15:54:23'),
(15, 1, 'Truyện cười', NULL, 'truyen-cuoi', '2019-06-07 15:54:23', '2019-06-07 15:54:23'),
(16, 2, 'Bài học kinh doanh', NULL, 'bai-hoc-kinh-doanh', '2019-06-08 10:09:43', '2019-06-08 10:09:43'),
(17, 2, 'Sách doanh nhân', NULL, 'sach-doanh-nhan', '2019-06-08 10:09:43', '2019-06-08 10:09:43'),
(18, 2, 'Quản trị - Lãnh đạo', NULL, 'quan-tri-lanh-dao', '2019-06-08 10:09:43', '2019-06-08 10:09:43'),
(19, 3, 'Tư duy - Sáng tạo', NULL, 'tu-duy-sang-tao', '2019-06-08 10:11:40', '2019-06-08 10:11:40'),
(20, 3, 'Sống đẹp', NULL, 'song-dep', '2019-06-08 10:11:40', '2019-06-08 10:11:40'),
(21, 3, 'Hướng nghiệp - Kỹ năng mềm', NULL, 'huong-nghiep-ky-nang-mem', '2019-06-08 10:11:40', '2019-06-08 10:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `stubo_chapter`
--

DROP TABLE IF EXISTS `stubo_chapter`;
CREATE TABLE IF NOT EXISTS `stubo_chapter` (
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
-- Table structure for table `stubo_comment`
--

DROP TABLE IF EXISTS `stubo_comment`;
CREATE TABLE IF NOT EXISTS `stubo_comment` (
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
-- Table structure for table `stubo_friend`
--

DROP TABLE IF EXISTS `stubo_friend`;
CREATE TABLE IF NOT EXISTS `stubo_friend` (
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
-- Table structure for table `stubo_nxb`
--

DROP TABLE IF EXISTS `stubo_nxb`;
CREATE TABLE IF NOT EXISTS `stubo_nxb` (
  `nxb_id` int(11) NOT NULL AUTO_INCREMENT,
  `nxb_name` varchar(128) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `nxb_image` text COLLATE utf8mb4_vietnamese_ci,
  `nxb_date_create` datetime DEFAULT NULL,
  `nxb_date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`nxb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stubo_order`
--

DROP TABLE IF EXISTS `stubo_order`;
CREATE TABLE IF NOT EXISTS `stubo_order` (
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
-- Table structure for table `stubo_order_book`
--

DROP TABLE IF EXISTS `stubo_order_book`;
CREATE TABLE IF NOT EXISTS `stubo_order_book` (
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
-- Table structure for table `stubo_rating`
--

DROP TABLE IF EXISTS `stubo_rating`;
CREATE TABLE IF NOT EXISTS `stubo_rating` (
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
-- Table structure for table `stubo_user`
--

DROP TABLE IF EXISTS `stubo_user`;
CREATE TABLE IF NOT EXISTS `stubo_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `userpassword` varchar(32) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `userfirstname` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `userlastname` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `usersalt` char(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `userbirthday` datetime DEFAULT NULL,
  `usernewsletter` tinyint(1) DEFAULT NULL,
  `useractive` tinyint(1) DEFAULT NULL,
  `userdayadd` datetime DEFAULT NULL,
  `userdayupd` datetime DEFAULT NULL,
  `useravatar` text COLLATE utf8mb4_vietnamese_ci,
  `usertype` tinyint(1) DEFAULT NULL,
  `userdateexpired` datetime DEFAULT NULL,
  `udaddress` text COLLATE utf8mb4_vietnamese_ci,
  `udaccountbalance` int(11) DEFAULT NULL,
  `uddatecreate` datetime DEFAULT CURRENT_TIMESTAMP,
  `userdatemodified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table stubo_author
--

--
-- Metadata for table stubo_book
--

--
-- Metadata for table stubo_category
--

--
-- Metadata for table stubo_chapter
--

--
-- Metadata for table stubo_comment
--

--
-- Metadata for table stubo_friend
--

--
-- Metadata for table stubo_nxb
--

--
-- Metadata for table stubo_order
--

--
-- Metadata for table stubo_order_book
--

--
-- Metadata for table stubo_rating
--

--
-- Metadata for table stubo_user
--

--
-- Metadata for database stubo
--

--
-- Dumping data for table `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('stubo', 'catogery', 'category_parent_id', 'stubo', 'catogery', 'catogery_id');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
