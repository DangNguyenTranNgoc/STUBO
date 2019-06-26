-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2019 at 06:30 PM
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
-- Creation: Jun 13, 2019 at 06:38 AM
-- Last update: Jun 26, 2019 at 03:24 PM
--

DROP TABLE IF EXISTS `stubo_author`;
CREATE TABLE IF NOT EXISTS `stubo_author` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `author_note` text COLLATE utf8mb4_vietnamese_ci,
  `author_image` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT '  ',
  `author_date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author_date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `stubo_author`
--

INSERT INTO `stubo_author` (`author_id`, `author_name`, `author_note`, `author_image`, `author_date_create`, `author_date_modified`) VALUES
(1, 'Phạm Quang Huy ', NULL, ' ', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(2, 'Trần Thu Hà', NULL, ' ', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(3, 'J. K. Rowling', 'J.K Rowling là bút danh của Joanne \"Jo\" Rowling, sinh ngày 31/7/1965, cư ngụ tại thủ đô Edinburgh,Scotland là tiểu thuyết gia người Anh, tác giả bộ truyện giả tưởng nổi tiếng Harry Potter với bút danh J. K. Rowling.\r\nBộ sách này được hàng triệu độc giả già trẻ trên thế giới yêu thích, nhận được nhiều giải thưởng liên tiếp và đến năm 2005 bán được 300 triệu bản trên toàn thế giới. Vào năm 2006, tạp chí Forbes xem bà là người phụ nữ giàu thứ hai trong lĩnh vực nghệ thuật giải trí chỉ sau Oprah Winfrey. Năm 2007, sau thành công vang dội của truyện Harry Potter 7 và phim Harry Potter 5, bà được tạp chí US Entertainment Weekly là 1 trong 25 nghệ sĩ của năm 2007. Bà đã được trao huân chương Bắc Đẩu Bội tinh vào ngày 3 tháng 2 năm 2009 vì tài năng xuất chúng về văn học thiếu nhi. Năm 2010 bà được trao Giải Văn học Hans Christian Andersen.', 'https://www.vinabook.com/tac-gia/j-k-rowling-i3548', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(4, 'Nhiều Tác Giả', NULL, ' ', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(5, 'John C. Maxwell', 'John C. Maxwell là nhà sáng lập của Tập đoàn INJOY, một tổ chức giúp mọi người phát huy tối đa tố chất cá nhân và tiềm năng lãnh đạo. Ông là tác giả của một loạt cuốn sách nằm trong danh sách bán chạy của New York Times, cũng là sách bán chạy trên bảng xếp hạng của Business Week.', 'https://www.vinabook.com/tac-gia/john-c-maxwell-i19570', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(6, ' Napoleon Hill', 'Napoleon Hill (Sinh ngày 26 tháng 10 năm 1883 - mất ngày 8 tháng 11 năm 1970) là một tác gia người Mỹ, một trong những người sáng lập nên một thể loại văn học hiện đại đó là môn \"thành công học\" (là khoa học về sự thành công của cá nhân). Tác phẩm được cho là nổi tiếng nhất của ông có tên \"Suy nghĩ và làm giàu\" (Think and Grow Rich) là. một trong những cuốn sách bán chạy nhất mọi thời đại. Trong sự nghiệp của mình, ông cũng từng được trở thành một cố vấn cho Tổng thống Franklin D. Roosevelt. Câu nói nổi tiếng thể hiện tư tưởng của ông là \"Điều gì mà tâm trí có thể nhận thức và tin tưởng thì tâm trí có thể hoàn thành\".Napoleon Hill được xem là người có ảnh hưởng rộng rãi nhất, mạnh mẽ nhất trong lĩnh vực thành công cá nhân.Cuốn sách kinh điển suy nghĩ và làm giàu của ông đã giúp cho hàng triệu người trên thế giới thành công và nó có một ý nghĩa, vai trò vô cùng quan trọng trong cuộc đời của rất nhiều người thành công như W.Clement Stone, Og Mandino.', 'https://www.vinabook.com/images/thumbnails/author/210x/132172_napoleonhill.jpg', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(7, 'Nguyễn Nhật Ánh', 'Nguyễn Nhật Ánh là tên và cũng là bút danh của một nhà văn Việt Nam chuyên viết cho tuổi mới lớn. Ông sinh ngày 7 tháng 5 năm 1955 tại huyện Thăng Bình, Quảng Nam. Năm 13 tuổi ông đăng báo bài thơ đầu tiên. Tác phẩm đầu tiên in thành sách là một tập thơ: Thành phố tháng tư (NXB Tác phẩm mới - 1984 - in chung với Lê Thị Kim). Truyện dài đầu tiên của ông là tác phẩm Trước vòng chung kết (NXB Măng Non, 1985). Hai mươi năm trở lại đây, ông tập trung viết văn xuôi, chuyên sáng tác về đề tài thanh thiếu niên.\r\n\r\nNăm 2003, bộ truyện nhiều tập Kính vạn hoa được Trung ương Đoàn TNCS HCM trao huy chương Vì thế hệ trẻ và được Hội nhà văn Việt Nam trao tặng thưởng. Đến nay ông đã xuất bản gần 100 tác phẩm và từ lâu đã trở thành nhà văn thân thiết của các bạn đọc nhỏ tuổi ở Việt Nam. Năm 2008, Nguyễn Nhật Ánh xuất bản truyện có tên Cho tôi xin một vé đi tuổi thơ, tác phẩm này được báo Người Lao động bình chọn là tác phẩm hay nhất năm 2008. Đoạt giải thưởng văn học ASEAN năm 2010', 'https://www.vinabook.com/images/thumbnails/author/210x/132226_nguyennhatanh.jpg', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(8, 'Nguyễn Ngọc Thạch', 'Trong một năm, Nguyễn Ngọc Thạch được mọi người chú ý khi ra mắt 5 tập sách về những chủ đề hiện thực khác nhau. Từ Đời Callboy về thế giới đồng tính, Lòng dạ đàn bà, câu chuyện kinh dị của thập niên 60, cho đến Chuyển giới; Mẹ ơi, con đồng tính, và mới nhất là Chênh vênh hai lăm.\r\n\r\n\"Chênh vênh hai lăm, thực chất xuất phát từ những status mình hay viết trên facebook. Cách viết của nó cũng lạ, thường được mình viết khi chạy xe, nhìn ngắm xe cộ, đường xá, những con người đang cuộn mình mưu sinh của Sài Gòn. Cứ vậy rồi suy nghĩ, về đến nhà ngồi gõ một vài dòng chia sẻ trên facebook, được mọi người quan tâm, chia sẻ. Có bạn nói, sao Thạch không gom status ra một cuốn sách thử... vậy là mình làm theo.\r\n\r\nChênh vênh hai lăm cũng không theo một trình tự không gian, thời gian nào, chỉ là theo mạch của cảm xúc, trôi về đâu thì viết tới đó, nên có khi đọc xong, mọi người sẽ thấy sao mà nó... chênh vênh quá.\r\n\r\nChênh vênh hai lăm, đồng thời cũng là lời cảm ơn gởi đến gia đình, bạn bè, những người đã luôn ủng hộ trong suốt một năm qua, khi Thạch chập chững bước chân vào con đường viết lách. Hi vọng mọi người sẽ thích món quà nho nhỏ này.\"', 'https://www.vinabook.com/images/thumbnails/author/210x/151695_fulltacgianguyenngocthach745f9.jpg', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(9, 'Nhiều dịch giả', '', ' ', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(10, 'Dale Carnegie', 'Dale Breckenridge Carnegie (24/11/1888 – 1/11/1955) là một nhà văn và nhà thuyết trình Mỹ và là người phát triển các lớp tự giáo dục, nghệ thuật bán hàng, huấn luyện đoàn thể, nói trước công chúng và các kỹ năng giao tiếp giữa mọi người. \r\nRa đời trong cảnh nghèo đói tại một trang trại ở Missouri, ông là tác giả cuốn Đắc Nhân Tâm, được xuất bản lần đầu năm 1936, một cuốn sách thuộc hàng bán chạy nhất và được biết đến nhiều nhất cho đến tận ngày nay. Ông cũng viết một cuốn tiểu sử Abraham Lincoln, với tựa đề Lincoln con người chưa biết, và nhiều cuốn sách khác. Carnegie là một trong những người đầu tiên đề xuất cái ngày nay được gọi là đảm đương trách nhiệm, dù nó chỉ được đề cập tỉ mỉ trong tác phẩm viết của ông. Một trong những ý tưởng chủ chốt trong những cuốn sách của ông là có thể thay đổi thái độ của người khác khi thay đổi sự đối xử của ta với họ.', 'https://www.vinabook.com/images/thumbnails/author/210x/132225_dale-carnegie-9238769-1-402.jpg', '2019-06-26 22:24:02', '2019-06-26 22:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `stubo_book`
--
-- Creation: Jun 08, 2019 at 03:06 AM
-- Last update: Jun 08, 2019 at 03:06 AM
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
-- Creation: Jun 13, 2019 at 06:13 AM
-- Last update: Jun 13, 2019 at 06:23 AM
--

DROP TABLE IF EXISTS `stubo_category`;
CREATE TABLE IF NOT EXISTS `stubo_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_parent_id` int(11) DEFAULT '0',
  `category_name` varchar(128) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `category_image_link` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'null',
  `category_slug` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `stubo_category`
--

INSERT INTO `stubo_category` (`category_id`, `category_parent_id`, `category_name`, `category_image_link`, `category_slug`, `category_date_create`, `category_date_modified`) VALUES
(1, 0, 'Sách văn học', ' ', 'sach-van-hoc', '2019-06-07 15:43:03', '2019-06-07 15:43:03'),
(2, 0, 'Sách kinh tế', ' ', 'sach-kinh-te', '2019-06-07 15:43:03', '2019-06-07 15:43:03'),
(3, 0, 'Sách kỹ năng sống', ' ', 'sach-ky-nang-song', '2019-06-07 15:45:18', '2019-06-07 15:45:18'),
(4, 0, 'Sách Giáo khoa - Giáo trình', ' ', 'sach-giao-khoa-giao-trinh', '2019-06-07 15:45:18', '2019-06-07 15:45:18'),
(5, 0, 'Sách Khoa học - Kỹ thuật', ' ', 'sach-khoa-hoc-ky-thuat', '2019-06-07 15:45:18', '2019-06-07 15:45:18'),
(6, 0, 'Sách Công nghệ Thông tin', ' ', 'sach-cong-nghe-thong-tin', '2019-06-07 15:48:26', '2019-06-07 15:48:26'),
(11, 6, 'Tin học văn phòng', ' ', 'tin-hoc-van-phong', '2019-06-07 15:50:24', '2019-06-07 15:50:24'),
(10, 6, 'Lập trình', ' ', 'lap-trinh', '2019-06-07 15:50:24', '2019-06-07 15:50:24'),
(12, 6, 'Thiết kế - Đồ họa', ' ', 'thiet-ke-do-hoa', '2019-06-07 15:50:24', '2019-06-07 15:50:24'),
(13, 1, 'Du ký', ' ', 'du-ky', '2019-06-07 15:54:23', '2019-06-07 15:54:23'),
(14, 1, 'Light novel', ' ', 'light-novel', '2019-06-07 15:54:23', '2019-06-07 15:54:23'),
(15, 1, 'Phóng sự - Ký sự - Bút ký', ' ', 'phong-su-ky-su-but-ky', '2019-06-07 15:54:23', '2019-06-07 15:54:23'),
(16, 1, 'Thơ', ' ', 'tho', '2019-06-07 15:54:23', '2019-06-07 15:54:23'),
(17, 1, 'Truyện cổ tích - Ngụ ngôn', ' ', 'truyen-co-tich-ngu-ngon', '2019-06-07 15:54:23', '2019-06-07 15:54:23'),
(18, 1, 'Truyện cười', ' ', 'truyen-cuoi', '2019-06-07 15:54:23', '2019-06-07 15:54:23'),
(19, 2, 'Bài học kinh doanh', ' ', 'bai-hoc-kinh-doanh', '2019-06-08 10:09:43', '2019-06-08 10:09:43'),
(20, 2, 'Sách doanh nhân', ' ', 'sach-doanh-nhan', '2019-06-08 10:09:43', '2019-06-08 10:09:43'),
(21, 2, 'Quản trị - Lãnh đạo', ' ', 'quan-tri-lanh-dao', '2019-06-08 10:09:43', '2019-06-08 10:09:43'),
(22, 3, 'Tư duy - Sáng tạo', ' ', 'tu-duy-sang-tao', '2019-06-08 10:11:40', '2019-06-08 10:11:40'),
(23, 3, 'Sống đẹp', ' ', 'song-dep', '2019-06-08 10:11:40', '2019-06-08 10:11:40'),
(24, 3, 'Hướng nghiệp - Kỹ năng mềm', ' ', 'huong-nghiep-ky-nang-mem', '2019-06-08 10:11:40', '2019-06-08 10:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `stubo_chapter`
--
-- Creation: Jun 08, 2019 at 03:06 AM
-- Last update: Jun 08, 2019 at 03:06 AM
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
-- Creation: Jun 08, 2019 at 03:06 AM
-- Last update: Jun 08, 2019 at 03:06 AM
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
-- Creation: Jun 08, 2019 at 03:06 AM
-- Last update: Jun 08, 2019 at 03:06 AM
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
-- Creation: Jun 08, 2019 at 03:06 AM
-- Last update: Jun 08, 2019 at 03:06 AM
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
-- Creation: Jun 08, 2019 at 03:06 AM
-- Last update: Jun 08, 2019 at 03:06 AM
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
-- Creation: Jun 08, 2019 at 03:06 AM
-- Last update: Jun 08, 2019 at 03:06 AM
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
-- Creation: Jun 08, 2019 at 03:06 AM
-- Last update: Jun 08, 2019 at 03:06 AM
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
-- Table structure for table `stubo_token`
--
-- Creation: Jun 17, 2019 at 07:38 AM
--

DROP TABLE IF EXISTS `stubo_token`;
CREATE TABLE IF NOT EXISTS `stubo_token` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_date_end` datetime NOT NULL,
  `token_date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stubo_user`
--
-- Creation: Jun 08, 2019 at 03:06 AM
-- Last update: Jun 08, 2019 at 03:06 AM
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
-- Metadata for table stubo_token
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
