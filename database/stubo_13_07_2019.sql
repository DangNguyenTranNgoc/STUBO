-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2019 at 07:39 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `stubo_author`
--

CREATE TABLE `stubo_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `author_note` text COLLATE utf8mb4_vietnamese_ci,
  `author_image` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT '  ',
  `author_date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author_date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `stubo_author`
--

INSERT INTO `stubo_author` (`author_id`, `author_name`, `author_note`, `author_image`, `author_date_create`, `author_date_modified`) VALUES
(1, 'Phạm Quang Huy ', NULL, ' ', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(2, 'Trần Thu Hà', NULL, ' ', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(3, 'J. K. Rowling', 'J.K Rowling là bút danh của Joanne \"Jo\" Rowling, sinh ngày 31/7/1965, cư ngụ tại thủ đô Edinburgh,Scotland là tiểu thuyết gia người Anh, tác giả bộ truyện giả tưởng nổi tiếng Harry Potter với bút danh J. K. Rowling.\r\nBộ sách này được hàng triệu độc giả già trẻ trên thế giới yêu thích, nhận được nhiều giải thưởng liên tiếp và đến năm 2005 bán được 300 triệu bản trên toàn thế giới. Vào năm 2006, tạp chí Forbes xem bà là người phụ nữ giàu thứ hai trong lĩnh vực nghệ thuật giải trí chỉ sau Oprah Winfrey. Năm 2007, sau thành công vang dội của truyện Harry Potter 7 và phim Harry Potter 5, bà được tạp chí US Entertainment Weekly là 1 trong 25 nghệ sĩ của năm 2007. Bà đã được trao huân chương Bắc Đẩu Bội tinh vào ngày 3 tháng 2 năm 2009 vì tài năng xuất chúng về văn học thiếu nhi. Năm 2010 bà được trao Giải Văn học Hans Christian Andersen.', 'https://www.vinabook.com/images/thumbnails/author/210x/133281_jk-rowling-sum2348620b.jpg', '2019-06-26 22:24:02', '2019-06-27 09:38:50'),
(4, 'Nhiều Tác Giả', NULL, ' ', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(5, 'John C. Maxwell', 'John C. Maxwell là nhà sáng lập của Tập đoàn INJOY, một tổ chức giúp mọi người phát huy tối đa tố chất cá nhân và tiềm năng lãnh đạo. Ông là tác giả của một loạt cuốn sách nằm trong danh sách bán chạy của New York Times, cũng là sách bán chạy trên bảng xếp hạng của Business Week.', 'https://www.vinabook.com/tac-gia/john-c-maxwell-i19570', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(6, ' Napoleon Hill', 'Napoleon Hill (Sinh ngày 26 tháng 10 năm 1883 - mất ngày 8 tháng 11 năm 1970) là một tác gia người Mỹ, một trong những người sáng lập nên một thể loại văn học hiện đại đó là môn \"thành công học\" (là khoa học về sự thành công của cá nhân). Tác phẩm được cho là nổi tiếng nhất của ông có tên \"Suy nghĩ và làm giàu\" (Think and Grow Rich) là. một trong những cuốn sách bán chạy nhất mọi thời đại. Trong sự nghiệp của mình, ông cũng từng được trở thành một cố vấn cho Tổng thống Franklin D. Roosevelt. Câu nói nổi tiếng thể hiện tư tưởng của ông là \"Điều gì mà tâm trí có thể nhận thức và tin tưởng thì tâm trí có thể hoàn thành\".Napoleon Hill được xem là người có ảnh hưởng rộng rãi nhất, mạnh mẽ nhất trong lĩnh vực thành công cá nhân.Cuốn sách kinh điển suy nghĩ và làm giàu của ông đã giúp cho hàng triệu người trên thế giới thành công và nó có một ý nghĩa, vai trò vô cùng quan trọng trong cuộc đời của rất nhiều người thành công như W.Clement Stone, Og Mandino.', 'https://www.vinabook.com/images/thumbnails/author/210x/132172_napoleonhill.jpg', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(7, 'Nguyễn Nhật Ánh', 'Nguyễn Nhật Ánh là tên và cũng là bút danh của một nhà văn Việt Nam chuyên viết cho tuổi mới lớn. Ông sinh ngày 7 tháng 5 năm 1955 tại huyện Thăng Bình, Quảng Nam. Năm 13 tuổi ông đăng báo bài thơ đầu tiên. Tác phẩm đầu tiên in thành sách là một tập thơ: Thành phố tháng tư (NXB Tác phẩm mới - 1984 - in chung với Lê Thị Kim). Truyện dài đầu tiên của ông là tác phẩm Trước vòng chung kết (NXB Măng Non, 1985). Hai mươi năm trở lại đây, ông tập trung viết văn xuôi, chuyên sáng tác về đề tài thanh thiếu niên.\r\n\r\nNăm 2003, bộ truyện nhiều tập Kính vạn hoa được Trung ương Đoàn TNCS HCM trao huy chương Vì thế hệ trẻ và được Hội nhà văn Việt Nam trao tặng thưởng. Đến nay ông đã xuất bản gần 100 tác phẩm và từ lâu đã trở thành nhà văn thân thiết của các bạn đọc nhỏ tuổi ở Việt Nam. Năm 2008, Nguyễn Nhật Ánh xuất bản truyện có tên Cho tôi xin một vé đi tuổi thơ, tác phẩm này được báo Người Lao động bình chọn là tác phẩm hay nhất năm 2008. Đoạt giải thưởng văn học ASEAN năm 2010', 'https://www.vinabook.com/images/thumbnails/author/210x/132226_nguyennhatanh.jpg', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(8, 'Nguyễn Ngọc Thạch', 'Trong một năm, Nguyễn Ngọc Thạch được mọi người chú ý khi ra mắt 5 tập sách về những chủ đề hiện thực khác nhau. Từ Đời Callboy về thế giới đồng tính, Lòng dạ đàn bà, câu chuyện kinh dị của thập niên 60, cho đến Chuyển giới; Mẹ ơi, con đồng tính, và mới nhất là Chênh vênh hai lăm.\r\n\r\n\"Chênh vênh hai lăm, thực chất xuất phát từ những status mình hay viết trên facebook. Cách viết của nó cũng lạ, thường được mình viết khi chạy xe, nhìn ngắm xe cộ, đường xá, những con người đang cuộn mình mưu sinh của Sài Gòn. Cứ vậy rồi suy nghĩ, về đến nhà ngồi gõ một vài dòng chia sẻ trên facebook, được mọi người quan tâm, chia sẻ. Có bạn nói, sao Thạch không gom status ra một cuốn sách thử... vậy là mình làm theo.\r\n\r\nChênh vênh hai lăm cũng không theo một trình tự không gian, thời gian nào, chỉ là theo mạch của cảm xúc, trôi về đâu thì viết tới đó, nên có khi đọc xong, mọi người sẽ thấy sao mà nó... chênh vênh quá.\r\n\r\nChênh vênh hai lăm, đồng thời cũng là lời cảm ơn gởi đến gia đình, bạn bè, những người đã luôn ủng hộ trong suốt một năm qua, khi Thạch chập chững bước chân vào con đường viết lách. Hi vọng mọi người sẽ thích món quà nho nhỏ này.\"', 'https://www.vinabook.com/images/thumbnails/author/210x/151695_fulltacgianguyenngocthach745f9.jpg', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(9, 'Nhiều dịch giả', '', ' ', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(10, 'Dale Carnegie', 'Dale Breckenridge Carnegie (24/11/1888 – 1/11/1955) là một nhà văn và nhà thuyết trình Mỹ và là người phát triển các lớp tự giáo dục, nghệ thuật bán hàng, huấn luyện đoàn thể, nói trước công chúng và các kỹ năng giao tiếp giữa mọi người. \r\nRa đời trong cảnh nghèo đói tại một trang trại ở Missouri, ông là tác giả cuốn Đắc Nhân Tâm, được xuất bản lần đầu năm 1936, một cuốn sách thuộc hàng bán chạy nhất và được biết đến nhiều nhất cho đến tận ngày nay. Ông cũng viết một cuốn tiểu sử Abraham Lincoln, với tựa đề Lincoln con người chưa biết, và nhiều cuốn sách khác. Carnegie là một trong những người đầu tiên đề xuất cái ngày nay được gọi là đảm đương trách nhiệm, dù nó chỉ được đề cập tỉ mỉ trong tác phẩm viết của ông. Một trong những ý tưởng chủ chốt trong những cuốn sách của ông là có thể thay đổi thái độ của người khác khi thay đổi sự đối xử của ta với họ.', 'https://www.vinabook.com/images/thumbnails/author/210x/132225_dale-carnegie-9238769-1-402.jpg', '2019-06-26 22:24:02', '2019-06-26 22:24:02'),
(11, 'Paulo Coelho', 'Paulo Coelho sinh tại Rio de Janeiro (Brasil), vào trường luật ở đó, nhưng đã bỏ học năm 1970 để du lịch qua México, Peru, Bolivia và Chile, cũng như châu Âu và Bắc Phi. Hai năm sau ông trở về Brasil và bắt đầu soạn lời cho nhạc pop. Ông cộng tác với những nhạc sĩ pop như Raul Seixas. Năm 1974 ông bị bắt giam một thời gian ngắn vì những hoạt động chống lại chế độ độc tài lúc đó ở Brasil.\r\n\r\nSách của ông đã được bán ra hơn 86 triệu bản trên 150 nước và được dịch ra 56 thứ tiếng. Ông đã nhận được nhiều giải thưởng của nhiều nước, trong đó tác phẩm Veronika quyết chết (Veronika decide morrer) được đề cử cho Giải Văn chương Dublin IMPAC Quốc tế có uy tín.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Coelhopaulo26012007-1.jpg/360px-Coelhopaulo26012007-1.jpg', '2019-07-13 15:18:12', '2019-07-13 15:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `stubo_book`
--

CREATE TABLE `stubo_book` (
  `book_id` int(11) NOT NULL,
  `book_author` int(11) NOT NULL,
  `book_category` int(11) NOT NULL,
  `book_nxb` int(11) NOT NULL,
  `book_name` varchar(128) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `book_introduce` text COLLATE utf8mb4_vietnamese_ci,
  `book_size` char(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `book_date_submitted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `book_cover_image` text COLLATE utf8mb4_vietnamese_ci,
  `book_status` tinyint(1) DEFAULT NULL,
  `book_date_publish` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `book_mass` char(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `book_format` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `book_page_number` int(11) DEFAULT NULL,
  `book_chapter` int(11) DEFAULT NULL,
  `book_language` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `book_price` double DEFAULT NULL,
  `book_list_image` text COLLATE utf8mb4_vietnamese_ci,
  `book_rate` double NOT NULL DEFAULT '0',
  `book_total_rate` int(11) NOT NULL DEFAULT '0',
  `book_normal_price` double DEFAULT NULL,
  `book_rent_price` double DEFAULT NULL,
  `book_link` text COLLATE utf8mb4_vietnamese_ci,
  `book_date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `book_date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `stubo_book`
--

INSERT INTO `stubo_book` (`book_id`, `book_author`, `book_category`, `book_nxb`, `book_name`, `book_introduce`, `book_size`, `book_date_submitted`, `book_cover_image`, `book_status`, `book_date_publish`, `book_mass`, `book_format`, `book_page_number`, `book_chapter`, `book_language`, `book_price`, `book_list_image`, `book_rate`, `book_total_rate`, `book_normal_price`, `book_rent_price`, `book_link`, `book_date_create`, `book_date_modified`) VALUES
(1, 3, 1, 1, ' Harry Potter Và Hòn Đá Phù Thủy - Tập 1 (Tái Bản 2017)', 'Harry Potter Và Hòn Đá Phù Thủy - Tập 1 (Tái Bản 2017)\r\n\r\nKhi một lá thư được gởi đến cho cậu bé Harry Potter bình thường và bất hạnh, cậu khám phá ra một bí mật đã được che giấu suốt cả một thập kỉ. Cha mẹ cậu chính là phù thủy và cả hai đã bị lời nguyền của Chúa tể Hắc ám giết hại khi Harry mới chỉ là một đứa trẻ, và bằng cách nào đó, cậu đã giữ được mạng sống của mình. Thoát khỏi những người giám hộ Muggle không thể chịu đựng nổi để nhập học vào trường Hogwarts, một trường đào tạo phù thủy với những bóng ma và phép thuật, Harry tình cờ dấn thân vào một cuộc phiêu lưu đầy gai góc khi cậu phát hiện ra một con chó ba đầu đang canh giữ một căn phòng trên tầng ba. Rồi Harry nghe nói đến một viên đá bị mất tích sở hữu những sức mạnh lạ kì, rất quí giá, vô cùng nguy hiểm, mà cũng có thể là mang cả hai đặc điểm trên.', '14x20cm', '2019-07-13 11:19:09', 'https://salt.tikicdn.com/cache/550x550/ts/product/92/77/b0/ec0a4054a5e85ea308d35f643c884c98.jpg', 1, '2019-07-13 11:19:09', '1kg', 'pdf', 366, NULL, 'Tiếng Việt', 135000, NULL, 4, 165, 135000, 50000, NULL, '2019-07-13 11:19:09', '2019-07-13 11:19:09'),
(2, 3, 1, 1, ' Harry Potter Và Hòn Đá Phù Thủy - Tập 1 (Tái Bản 2017)', 'Harry Potter Và Hòn Đá Phù Thủy - Tập 1 (Tái Bản 2017)\r\n\r\nKhi một lá thư được gởi đến cho cậu bé Harry Potter bình thường và bất hạnh, cậu khám phá ra một bí mật đã được che giấu suốt cả một thập kỉ. Cha mẹ cậu chính là phù thủy và cả hai đã bị lời nguyền của Chúa tể Hắc ám giết hại khi Harry mới chỉ là một đứa trẻ, và bằng cách nào đó, cậu đã giữ được mạng sống của mình. Thoát khỏi những người giám hộ Muggle không thể chịu đựng nổi để nhập học vào trường Hogwarts, một trường đào tạo phù thủy với những bóng ma và phép thuật, Harry tình cờ dấn thân vào một cuộc phiêu lưu đầy gai góc khi cậu phát hiện ra một con chó ba đầu đang canh giữ một căn phòng trên tầng ba. Rồi Harry nghe nói đến một viên đá bị mất tích sở hữu những sức mạnh lạ kì, rất quí giá, vô cùng nguy hiểm, mà cũng có thể là mang cả hai đặc điểm trên.', '14x20cm', '2019-07-13 11:20:59', 'https://salt.tikicdn.com/cache/550x550/ts/product/92/77/b0/ec0a4054a5e85ea308d35f643c884c98.jpg', 1, '2019-07-13 11:20:59', '1kg', 'pdf', 366, NULL, 'Tiếng Việt', 135000, NULL, 4.5, 165, 135000, 50000, NULL, '2019-07-13 11:20:59', '2019-07-13 11:20:59'),
(3, 3, 1, 1, 'Harry Potter Và Tên Tù Nhân Ngục Azkaban - Tập 3 (Tái Bản 2017)', 'Harry Potter Và Tên Tù Nhân Ngục Azkaban - Tập 3 (Tái Bản 2017)\r\n\r\nHarry Potter may mắn sống sót đến tuổi 13, sau nhiều cuộc tấn công của Chúa tể hắc ám.\r\n\r\nNhưng hy vọng có một học kỳ yên ổn với Quidditch của cậu đã tiêu tan thành mây khói khi một kẻ điên cuồng giết người hàng loạt vừa thoát khỏi nhà tù Azkaban, với sự lùng sục của những cai tù là giám ngục.\r\n\r\nDường như trường Hogwarts là nơi an toàn nhất cho Harry lúc này. Nhưng có phải là sự trùng hợp khi cậu luôn cảm giác có ai đang quan sát mình từ bóng đêm, và những điềm báo của giáo sư Trelawney liệu có chính xác?\r\n\r\n‘Câu chuyện được kể với trí tưởng tượng bay bổng, sự hài hước bất tận có thể quyến rũ cả người lớn lẫn trẻ em.’', '14 x 20 cm', '2019-07-13 15:10:22', 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/h/a/harry-potter.u5102.d20170425.t095624.709837.jpg', 1, '2019-07-13 15:10:22', '1 kg', 'pdf', 560, NULL, 'Tiếng Việt', 180000, NULL, 4.5, 65, 180000, 50000, NULL, '2019-07-13 15:10:22', '2019-07-13 15:10:22'),
(4, 3, 1, 1, 'Harry Potter Và Chiếc Cốc Lửa - Tập 4 (Tái Bản 2017)', 'Harry Potter Và Chiếc Cốc Lửa - Tập 4 (Tái Bản 2017)\r\n\r\nKhi giải Quidditch Thế giới bị cắt ngang bởi những kẻ ủng hộ Chúa tể Voldemort và sự trở lại của Dấu hiệu hắc ám khủng khiếp, Harry ý thức được rõ ràng rằng, Chúa tể Voldemort đang ngày càng mạnh hơn. Và để trở lại thế giới phép thuật, Chúa tể hắc ám cần phải đánh bại kẻ duy nhất sống sót từ lời nguyền chết chóc của hắn - Harry Potter. Vì lẽ đó, khi Harry bị buộc phải bước vào giải đấu Tam Pháp thuật uy tín nhưng nguy hiểm, cậu nhận ra rằng trên cả chiến thắng, cậu phải giữ được mạng sống của mình.\r\n\r\nBốn năm của Harry cũng như của chúng tôi ở trường Hogwarts thật vui nhộn, một thế giới đầy hài hước cùng nhiều hoạt động thú vị.', '14 x 20 cm', '2019-07-13 15:10:22', 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/n/x/nxbtre_full_20342017_033410.u4972.d20170426.t163428.208230.jpg', 1, '2019-07-13 15:10:22', '1kg', 'pdf', 922, NULL, 'Tiếng Việt', 270000, NULL, 4.5, 62, 270000, 50000, 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/n/x/nxbtre_full_20342017_033410.u4972.d20170426.t163428.208230.jpg', '2019-07-13 15:10:22', '2019-07-13 15:10:22'),
(5, 3, 1, 1, 'Harry Potter Và Hội Phượng Hoàng - Tập 5 (Tái Bản 2017)', 'Harry Potter Và Hội Phượng Hoàng - Tập 5 (Tái Bản 2017)\r\n\r\nHarry tức giận vì bị bỏ rơi ở nhà Dursley trong dịp hè, cậu ngờ rằng Chúa tể hắc ám Voldemort đang tập hợp lực lượng, và vì cậu có nguy cơ bị tấn công, những người Harry luôn coi là bạn đang cố che giấu tung tích cậu. Cuối cùng, sau khi được giải cứu, Harry khám phá ra rằng giáo sư Dumbledore đang tập hợp lại Hội Phượng Hoàng – một đoàn quân bí mật đã được thành lập từ những năm trước nhằm chống lại Chúa tể Voldemort. Tuy nhiên, Bộ Pháp thuật không ủng hộ Hội Phượng Hoàng, những lời bịa đặt nhanh chóng được đăng tải trên Nhật báo Tiên tri – một tờ báo của giới phù thủy, Harry lo ngại rằng rất có khả năng cậu sẽ phải gánh vác trách nhiệm chống lại cái ác một mình.\r\n\r\n‘Hoang đường nhưng không hoang tưởng, trí tưởng tượng của Rowling cùng sự táo bạo của cô đã tạo cho cô một phong cách riêng.’ - The Times.', '14 x 20 cm', '2019-07-13 15:10:22', 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/h/a/harry-potter-va-hoi-phuong-hoang.u5102.d20170614.t140027.842314.jpg', 1, '2019-07-13 15:10:22', '1kg', 'pdf', 1310, NULL, 'Tiếng Việt', 355000, NULL, 4, 61, 355000, 50000, '', '2019-07-13 15:10:22', '2019-07-13 15:10:22'),
(6, 3, 1, 1, 'Harry Potter Và Hoàng Tử Lai - Tập 06 (Tái Bản 2017)', 'Harry Potter Và Hoàng Tử Lai - Tập 06 (Tái Bản 2017)\r\n\r\nĐây là năm thứ 6 của Harry Potter tại trường Hogwarts. Trong lúc những thế lực hắc ám của Voldemort gieo rắc nỗi kinh hoàng và sợ hãi ở khắp nơi, mọi chuyện càng lúc càng trở nên rõ ràng hơn đối với Harry, rằng cậu sẽ sớm phải đối diện với định mệnh của mình. Nhưng liệu Harry đã sẵn sàng vượt qua những thử thách đang chờ đợi phía trước?\r\n\r\nTrong cuộc phiêu lưu tăm tối và nghẹt thở nhất của mình, J.K.Rowling bắt đầu tài tình tháo gỡ từng mắc lưới phức tạp mà cô đã mạng lên, cũng là lúc chúng ta khám phá ra sự thật về Harry, cụ Dumblebore, thầy Snape và, tất nhiên, Kẻ Chớ Gọi Tên Ra…\r\n\r\n‘Diễn biến nhanh, huyền bí, hấp dẫn và chặt chẽ trong từng chi tiết.\'', '14 x 20 cm', '2019-07-13 15:10:22', 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/n/x/nxbtre_full_29292017_042903.u5430.d20170714.t090946.716950.jpg', 1, '2019-07-13 15:10:22', '1kg', 'pdf', 716, NULL, 'Tiếng Việt', 215000, NULL, 4, 33, 215000, 50000, '', '2019-07-13 15:10:22', '2019-07-13 15:10:22'),
(7, 3, 1, 1, 'Harry Potter Và Bảo Bối Tử Thần - Tập 07 (Tái Bản 2017)', 'Harry Potter Và Bảo Bối Tử Thần - Tập 07 (Tái Bản 2017)\r\n\r\nHarry đang chờ đợi ở trường Privet Drive. Hội Phượng Hoàng sắp đến hộ tống nó ra đi an toàn, gắng hết sức không để cho Voldemort và bọn tay chân hắn biết được. Nhưng sau đó Harry sẽ làm gì? Làm cách nào nó có thể hoàn thành nhiệm vụ cực kỳ quan trọng và dường như bất khả thi mà giáo sự Dumbledore đã giao lại cho nó?', '14 x 20 cm', '2019-07-13 15:10:22', 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/n/x/nxbtre_full_11592017_085924.u5430.d20170714.t085343.684591.jpg', 1, '2019-07-13 15:10:22', '1kg', 'pdf', 846, NULL, '', 245000, NULL, 4.5, 33, 245000, 50000, '', '2019-07-13 15:10:22', '2019-07-13 15:10:22'),
(8, 11, 1, 13, 'Nhà Giả Kim', 'Nhà Giả Kim\r\n\r\nTất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.\r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”\r\n\r\n- Trích Nhà giả kim', '13 x 20 cm', '2019-07-13 15:43:40', 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/i/m/img117.u3059.d20170616.t100547.729023.jpg', 1, '2019-07-13 15:43:40', '0.4 kg', 'pdf', 228, NULL, 'Tiếng Việt', 69000, NULL, 4.5, 3416, 69000, 15000, NULL, '2019-07-13 15:43:40', '2019-07-13 15:43:40'),
(9, 6, 2, 4, 'Những Nguyên Tắc Vàng Của Napoleon Hill', 'Những Nguyên Tắc Vàng Của Napoleon Hill\r\n\r\nNapoleon Hill là một tác giả được nhiều người yêu mếm và có số lượng lớn các quyển sách nổi tiếng viết về đề tài phát triển tiềm năng con người, giúp hàng triệu người đạt được thành công.\r\n\r\nNhững nguyên tắc vàng của Napoleon Hill tập hợp những bài viết của ông trong khoảng thời gian từ năm 1919 đến năm 1923. \"Những nguyên tắc vàng\" này chính là chiếc chìa khóa hữu dụng trong mọi thời đại, đưa độc giả đến với thành công bằng phương pháp mang tính thực tiễn cao.\r\n', '14', '2019-07-13 15:43:40', 'https://salt.tikicdn.com/cache/75x75/ts/product/79/94/da/0a562e6d62a7a802a1ffde48804eebb2.jpg', 1, '2019-07-13 15:43:40', '1kg', 'pdf', 223, NULL, 'Tiếng Việt', 64000, NULL, 3.6, 16, 64000, 15000, NULL, '2019-07-13 15:43:40', '2019-07-13 15:43:40'),
(10, 6, 20, 4, '5 Nền Tảng Cho Thành Công - Napoleon Hill', '5 Nền Tảng Cho Thành Công - Napoleon Hill\r\n\r\n Vì sao phải dành cả đời để học cách trở nên thành công, nếu như với những người thật sự khao khát, họ chỉ cần vài tuần lễ để tích lũy các nguyên tắc? Đây là điều có thể làm được, nếu bạn biết cách “đi đường tắt”, tập trung nghiên cứu kinh nghiệm của những người đã-thành-công, đã trải qua quá trình học học lâu dài và vất vả trước đó.\r\n\r\nNapoleon Hill đã dành 20 năm cuộc đời để gặp gỡ và phỏng vấn những người thành công nhất, như “vua thép” Andrew Carnegie, “vua phát minh” Thomas Edison, Henry Ford, Alexander Graham Bell… và hàng trăm tên tuổi tầm cỡ khác. Vừa tích lũy kinh nghiệm từ các câu chuyện tạo dựng sự nghiệp đầy sức mạnh, vừa chiêm nghiệm từ các sóng gió chính bản thân đã trải qua, Napoleon Hill đã đặt bút viết những cuốn sách có thể coi là tuyệt tác, đặt nền móng cho “khoa học của sự thành công”. Tác phẩm “Think and Grow Rich” (Nghĩ giàu làm giàu) của ông kể từ khi ra mắt vào năm 1937 đến nay luôn được coi là kim chỉ nam cho những người mong muốn vươn tới đỉnh cao. Cuốn sách đã được dịch ra hơn bốn mươi thứ tiếng và có ảnh hưởng tới hàng trăm triệu người, thường xuyên xuất hiện trên các giá sách về kinh doanh, truyền cảm hứng ở phạm vi toàn cầu.\r\n\r\nNapoleon Hill là khách mời danh dự của những buổi nói chuyện trên đài phát thanh và truyền hình Hoa Kỳ. Tác phẩm “5 nền tảng cho thành công” đã tập hợp các bản thảo phát thanh chưa từng được công bố do chính ông thực hiện. Đọc cuốn sách này, độc giả sẽ được trải nghiệm gần như nguyên văn những lời Napoleon đã chia sẻ trực tiếp với thính giả trên sóng radio - phương tiện truyền thông chân thực và phổ biến nhất bấy giờ. Nội dung chia sẻ nhấn mạnh vào “Big Five” - 5 nguyên tắc lớn trong số 17 nguyên tắc thành công Napoleon Hill đã đúc rút. Ông cũng không quên đưa ví dụ về cách mà các nguyên tắc này đã đưa các cá nhân, nổi tiếng có, bình dân có, đến điểm đích thành công. Napoleon kỳ vọng thính giả của mình vào thời điểm phát sóng, cũng như độc giả đọc sách ngày nay, có thể qua những gì ông chia sẻ mà khám phá ra “bí quyết tối quan trọng để đạt được thành tựu cá nhân”.', '14 x 20 cm', '2019-07-13 15:43:40', 'https://salt.tikicdn.com/cache/550x550/ts/product/09/6d/99/cb623c3c2abb612326b78a6effdfddef.jpg', 1, '2019-07-13 15:43:40', '0.5kg', 'pdf', 308, NULL, 'Tiếng Việt', 109000, NULL, 0, 0, 109000, 20000, NULL, '2019-07-13 15:43:40', '2019-07-13 15:43:40'),
(11, 7, 1, 10, 'Kính Vạn Hoa', 'Kính Vạn Hoa ra mắt lần này có gì mới? Cũng như ống kính vạn hoa mà mỗi lần lắc lại hoá ra một bông hoa khác nhau, những tập truyện trong Kính Vạn Hoa qua bàn tay nhà ảo thuật Nguyễn Nhật Ánh cũng có một dáng vẻ tươi mới như thế sau mỗi lần xuất hiện.\r\n\r\nMỗi tập bao gồm 6 câu chuyện được minh họa bởi Nhóm Cỏ ba lá. Những minh họa này được lựa chọn từ rất nhiều những minh họa về bộ truyện, đó là một cách nhìn mới về nhóm bạn Quý ròm gần gũi hơn với lứa tuổi học trò hôm nay.\r\n\r\nKính Vạn Hoa là một bộ bách khoa toàn thư về đời sống học trò được tác giả nhìn qua lăng kính vạn hoa nhiều màu sắc biến ảo sinh động vô cùng thú vị. Là học trò, luôn yêu tuổi học trò, luôn nhớ về tuổi học trò thì không thể không đọc Kính Vạn Hoa.\r\n\r\n...\r\n\r\nMời các bạn đón đọc!', '14 x 20 cm', '2019-07-13 15:43:40', 'https://salt.tikicdn.com/cache/75x75/media/catalog/product/k/v/kvh-bo.jpg', 1, '2019-07-13 15:43:40', '3kg', 'pdf', 5671, NULL, 'Tiếng Việt', 990000, NULL, 0, 0, 990000, 50000, NULL, '2019-07-13 15:43:40', '2019-07-13 15:43:40'),
(12, 1, 10, 4, 'Giáo Trình Thiết Kế Cơ Khí Với SOLIDWORKS Dùng Cho Các Phiên Bản 2019 - 2014', 'Sự phát triển nhanh chóng khoa học kỹ thuật nhất là lĩnh vực tin học đã hỗ trợ rất nhiều ngành nghề. Trong lĩnh vực thiết kế cơ khí, sự ra đời máy công cụ điều khiển bằng chương trình số với sự trợ giúp của máy tính (CNC) là một bước đột phá trong ngành cơ khí chế tạo. Hầu như các khu công nghiệp ở Việt Nam đều có các máy CNC để phục vụ sản xuất, bao gồm nhiều chủng loại loại máy khác nhau như máy phay, tiện, bào. mài, với số trục điều khiển từ 2 đến 3, 4, 5. Để khai thác và sử dụng thành thạo các chương trình CAD-CAM.', '', '2019-07-13 15:43:40', 'https://salt.tikicdn.com/cache/75x75/ts/product/68/49/73/f4369b0794aee9d890de4e800d5be6f8.jpg', 1, '2019-07-13 15:43:40', '0.6kg', 'pdf', 232, NULL, 'Tiếng Việt', 140000, NULL, 0, 0, 140000, 15000, NULL, '2019-07-13 15:43:40', '2019-07-13 15:43:40'),
(13, 3, 1, 1, ' Harry Potter Và Hòn Đá Phù Thủy - Tập 1 (Tái Bản 2017)', 'Harry Potter Và Hòn Đá Phù Thủy - Tập 1 (Tái Bản 2017)\r\n\r\nKhi một lá thư được gởi đến cho cậu bé Harry Potter bình thường và bất hạnh, cậu khám phá ra một bí mật đã được che giấu suốt cả một thập kỉ. Cha mẹ cậu chính là phù thủy và cả hai đã bị lời nguyền của Chúa tể Hắc ám giết hại khi Harry mới chỉ là một đứa trẻ, và bằng cách nào đó, cậu đã giữ được mạng sống của mình. Thoát khỏi những người giám hộ Muggle không thể chịu đựng nổi để nhập học vào trường Hogwarts, một trường đào tạo phù thủy với những bóng ma và phép thuật, Harry tình cờ dấn thân vào một cuộc phiêu lưu đầy gai góc khi cậu phát hiện ra một con chó ba đầu đang canh giữ một căn phòng trên tầng ba. Rồi Harry nghe nói đến một viên đá bị mất tích sở hữu những sức mạnh lạ kì, rất quí giá, vô cùng nguy hiểm, mà cũng có thể là mang cả hai đặc điểm trên.', '14x20cm', '2019-07-13 11:19:09', 'https://salt.tikicdn.com/cache/550x550/ts/product/92/77/b0/ec0a4054a5e85ea308d35f643c884c98.jpg', 1, '2019-07-13 11:19:09', '1kg', 'pdf', 366, NULL, 'Tiếng Việt', 135000, NULL, 4, 165, 135000, 50000, NULL, '2019-07-13 11:19:09', '2019-07-13 11:19:09'),
(14, 3, 1, 1, ' Harry Potter Và Hòn Đá Phù Thủy - Tập 1 (Tái Bản 2017)', 'Harry Potter Và Hòn Đá Phù Thủy - Tập 1 (Tái Bản 2017)\r\n\r\nKhi một lá thư được gởi đến cho cậu bé Harry Potter bình thường và bất hạnh, cậu khám phá ra một bí mật đã được che giấu suốt cả một thập kỉ. Cha mẹ cậu chính là phù thủy và cả hai đã bị lời nguyền của Chúa tể Hắc ám giết hại khi Harry mới chỉ là một đứa trẻ, và bằng cách nào đó, cậu đã giữ được mạng sống của mình. Thoát khỏi những người giám hộ Muggle không thể chịu đựng nổi để nhập học vào trường Hogwarts, một trường đào tạo phù thủy với những bóng ma và phép thuật, Harry tình cờ dấn thân vào một cuộc phiêu lưu đầy gai góc khi cậu phát hiện ra một con chó ba đầu đang canh giữ một căn phòng trên tầng ba. Rồi Harry nghe nói đến một viên đá bị mất tích sở hữu những sức mạnh lạ kì, rất quí giá, vô cùng nguy hiểm, mà cũng có thể là mang cả hai đặc điểm trên.', '14x20cm', '2019-07-13 11:20:59', 'https://salt.tikicdn.com/cache/550x550/ts/product/92/77/b0/ec0a4054a5e85ea308d35f643c884c98.jpg', 1, '2019-07-13 11:20:59', '1kg', 'pdf', 366, NULL, 'Tiếng Việt', 135000, NULL, 4.5, 165, 135000, 50000, NULL, '2019-07-13 11:20:59', '2019-07-13 11:20:59'),
(15, 3, 1, 1, 'Harry Potter Và Tên Tù Nhân Ngục Azkaban - Tập 3 (Tái Bản 2017)', 'Harry Potter Và Tên Tù Nhân Ngục Azkaban - Tập 3 (Tái Bản 2017)\r\n\r\nHarry Potter may mắn sống sót đến tuổi 13, sau nhiều cuộc tấn công của Chúa tể hắc ám.\r\n\r\nNhưng hy vọng có một học kỳ yên ổn với Quidditch của cậu đã tiêu tan thành mây khói khi một kẻ điên cuồng giết người hàng loạt vừa thoát khỏi nhà tù Azkaban, với sự lùng sục của những cai tù là giám ngục.\r\n\r\nDường như trường Hogwarts là nơi an toàn nhất cho Harry lúc này. Nhưng có phải là sự trùng hợp khi cậu luôn cảm giác có ai đang quan sát mình từ bóng đêm, và những điềm báo của giáo sư Trelawney liệu có chính xác?\r\n\r\n‘Câu chuyện được kể với trí tưởng tượng bay bổng, sự hài hước bất tận có thể quyến rũ cả người lớn lẫn trẻ em.’', '14 x 20 cm', '2019-07-13 15:10:22', 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/h/a/harry-potter.u5102.d20170425.t095624.709837.jpg', 1, '2019-07-13 15:10:22', '1 kg', 'pdf', 560, NULL, 'Tiếng Việt', 180000, NULL, 4.5, 65, 180000, 50000, NULL, '2019-07-13 15:10:22', '2019-07-13 15:10:22'),
(16, 3, 1, 1, 'Harry Potter Và Chiếc Cốc Lửa - Tập 4 (Tái Bản 2017)', 'Harry Potter Và Chiếc Cốc Lửa - Tập 4 (Tái Bản 2017)\r\n\r\nKhi giải Quidditch Thế giới bị cắt ngang bởi những kẻ ủng hộ Chúa tể Voldemort và sự trở lại của Dấu hiệu hắc ám khủng khiếp, Harry ý thức được rõ ràng rằng, Chúa tể Voldemort đang ngày càng mạnh hơn. Và để trở lại thế giới phép thuật, Chúa tể hắc ám cần phải đánh bại kẻ duy nhất sống sót từ lời nguyền chết chóc của hắn - Harry Potter. Vì lẽ đó, khi Harry bị buộc phải bước vào giải đấu Tam Pháp thuật uy tín nhưng nguy hiểm, cậu nhận ra rằng trên cả chiến thắng, cậu phải giữ được mạng sống của mình.\r\n\r\nBốn năm của Harry cũng như của chúng tôi ở trường Hogwarts thật vui nhộn, một thế giới đầy hài hước cùng nhiều hoạt động thú vị.', '14 x 20 cm', '2019-07-13 15:10:22', 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/n/x/nxbtre_full_20342017_033410.u4972.d20170426.t163428.208230.jpg', 1, '2019-07-13 15:10:22', '1kg', 'pdf', 922, NULL, 'Tiếng Việt', 270000, NULL, 4.5, 62, 270000, 50000, 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/n/x/nxbtre_full_20342017_033410.u4972.d20170426.t163428.208230.jpg', '2019-07-13 15:10:22', '2019-07-13 15:10:22'),
(17, 3, 1, 1, 'Harry Potter Và Hội Phượng Hoàng - Tập 5 (Tái Bản 2017)', 'Harry Potter Và Hội Phượng Hoàng - Tập 5 (Tái Bản 2017)\r\n\r\nHarry tức giận vì bị bỏ rơi ở nhà Dursley trong dịp hè, cậu ngờ rằng Chúa tể hắc ám Voldemort đang tập hợp lực lượng, và vì cậu có nguy cơ bị tấn công, những người Harry luôn coi là bạn đang cố che giấu tung tích cậu. Cuối cùng, sau khi được giải cứu, Harry khám phá ra rằng giáo sư Dumbledore đang tập hợp lại Hội Phượng Hoàng – một đoàn quân bí mật đã được thành lập từ những năm trước nhằm chống lại Chúa tể Voldemort. Tuy nhiên, Bộ Pháp thuật không ủng hộ Hội Phượng Hoàng, những lời bịa đặt nhanh chóng được đăng tải trên Nhật báo Tiên tri – một tờ báo của giới phù thủy, Harry lo ngại rằng rất có khả năng cậu sẽ phải gánh vác trách nhiệm chống lại cái ác một mình.\r\n\r\n‘Hoang đường nhưng không hoang tưởng, trí tưởng tượng của Rowling cùng sự táo bạo của cô đã tạo cho cô một phong cách riêng.’ - The Times.', '14 x 20 cm', '2019-07-13 15:10:22', 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/h/a/harry-potter-va-hoi-phuong-hoang.u5102.d20170614.t140027.842314.jpg', 1, '2019-07-13 15:10:22', '1kg', 'pdf', 1310, NULL, 'Tiếng Việt', 355000, NULL, 4, 61, 355000, 50000, '', '2019-07-13 15:10:22', '2019-07-13 15:10:22'),
(18, 3, 1, 1, 'Harry Potter Và Hoàng Tử Lai - Tập 06 (Tái Bản 2017)', 'Harry Potter Và Hoàng Tử Lai - Tập 06 (Tái Bản 2017)\r\n\r\nĐây là năm thứ 6 của Harry Potter tại trường Hogwarts. Trong lúc những thế lực hắc ám của Voldemort gieo rắc nỗi kinh hoàng và sợ hãi ở khắp nơi, mọi chuyện càng lúc càng trở nên rõ ràng hơn đối với Harry, rằng cậu sẽ sớm phải đối diện với định mệnh của mình. Nhưng liệu Harry đã sẵn sàng vượt qua những thử thách đang chờ đợi phía trước?\r\n\r\nTrong cuộc phiêu lưu tăm tối và nghẹt thở nhất của mình, J.K.Rowling bắt đầu tài tình tháo gỡ từng mắc lưới phức tạp mà cô đã mạng lên, cũng là lúc chúng ta khám phá ra sự thật về Harry, cụ Dumblebore, thầy Snape và, tất nhiên, Kẻ Chớ Gọi Tên Ra…\r\n\r\n‘Diễn biến nhanh, huyền bí, hấp dẫn và chặt chẽ trong từng chi tiết.\'', '14 x 20 cm', '2019-07-13 15:10:22', 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/n/x/nxbtre_full_29292017_042903.u5430.d20170714.t090946.716950.jpg', 1, '2019-07-13 15:10:22', '1kg', 'pdf', 716, NULL, 'Tiếng Việt', 215000, NULL, 4, 33, 215000, 50000, '', '2019-07-13 15:10:22', '2019-07-13 15:10:22'),
(19, 3, 1, 1, 'Harry Potter Và Bảo Bối Tử Thần - Tập 07 (Tái Bản 2017)', 'Harry Potter Và Bảo Bối Tử Thần - Tập 07 (Tái Bản 2017)\r\n\r\nHarry đang chờ đợi ở trường Privet Drive. Hội Phượng Hoàng sắp đến hộ tống nó ra đi an toàn, gắng hết sức không để cho Voldemort và bọn tay chân hắn biết được. Nhưng sau đó Harry sẽ làm gì? Làm cách nào nó có thể hoàn thành nhiệm vụ cực kỳ quan trọng và dường như bất khả thi mà giáo sự Dumbledore đã giao lại cho nó?', '14 x 20 cm', '2019-07-13 15:10:22', 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/n/x/nxbtre_full_11592017_085924.u5430.d20170714.t085343.684591.jpg', 1, '2019-07-13 15:10:22', '1kg', 'pdf', 846, NULL, '', 245000, NULL, 4.5, 33, 245000, 50000, '', '2019-07-13 15:10:22', '2019-07-13 15:10:22'),
(20, 11, 1, 13, 'Nhà Giả Kim', 'Nhà Giả Kim\r\n\r\nTất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.\r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”\r\n\r\n- Trích Nhà giả kim', '13 x 20 cm', '2019-07-13 15:43:40', 'https://salt.tikicdn.com/cache/550x550/media/catalog/product/i/m/img117.u3059.d20170616.t100547.729023.jpg', 1, '2019-07-13 15:43:40', '0.4 kg', 'pdf', 228, NULL, 'Tiếng Việt', 69000, NULL, 4.5, 3416, 69000, 15000, NULL, '2019-07-13 15:43:40', '2019-07-13 15:43:40'),
(21, 6, 2, 4, 'Những Nguyên Tắc Vàng Của Napoleon Hill', 'Những Nguyên Tắc Vàng Của Napoleon Hill\r\n\r\nNapoleon Hill là một tác giả được nhiều người yêu mếm và có số lượng lớn các quyển sách nổi tiếng viết về đề tài phát triển tiềm năng con người, giúp hàng triệu người đạt được thành công.\r\n\r\nNhững nguyên tắc vàng của Napoleon Hill tập hợp những bài viết của ông trong khoảng thời gian từ năm 1919 đến năm 1923. \"Những nguyên tắc vàng\" này chính là chiếc chìa khóa hữu dụng trong mọi thời đại, đưa độc giả đến với thành công bằng phương pháp mang tính thực tiễn cao.\r\n', '14', '2019-07-13 15:43:40', 'https://salt.tikicdn.com/cache/75x75/ts/product/79/94/da/0a562e6d62a7a802a1ffde48804eebb2.jpg', 1, '2019-07-13 15:43:40', '1kg', 'pdf', 223, NULL, 'Tiếng Việt', 64000, NULL, 3.6, 16, 64000, 15000, NULL, '2019-07-13 15:43:40', '2019-07-13 15:43:40'),
(22, 6, 20, 4, '5 Nền Tảng Cho Thành Công - Napoleon Hill', '5 Nền Tảng Cho Thành Công - Napoleon Hill\r\n\r\n Vì sao phải dành cả đời để học cách trở nên thành công, nếu như với những người thật sự khao khát, họ chỉ cần vài tuần lễ để tích lũy các nguyên tắc? Đây là điều có thể làm được, nếu bạn biết cách “đi đường tắt”, tập trung nghiên cứu kinh nghiệm của những người đã-thành-công, đã trải qua quá trình học học lâu dài và vất vả trước đó.\r\n\r\nNapoleon Hill đã dành 20 năm cuộc đời để gặp gỡ và phỏng vấn những người thành công nhất, như “vua thép” Andrew Carnegie, “vua phát minh” Thomas Edison, Henry Ford, Alexander Graham Bell… và hàng trăm tên tuổi tầm cỡ khác. Vừa tích lũy kinh nghiệm từ các câu chuyện tạo dựng sự nghiệp đầy sức mạnh, vừa chiêm nghiệm từ các sóng gió chính bản thân đã trải qua, Napoleon Hill đã đặt bút viết những cuốn sách có thể coi là tuyệt tác, đặt nền móng cho “khoa học của sự thành công”. Tác phẩm “Think and Grow Rich” (Nghĩ giàu làm giàu) của ông kể từ khi ra mắt vào năm 1937 đến nay luôn được coi là kim chỉ nam cho những người mong muốn vươn tới đỉnh cao. Cuốn sách đã được dịch ra hơn bốn mươi thứ tiếng và có ảnh hưởng tới hàng trăm triệu người, thường xuyên xuất hiện trên các giá sách về kinh doanh, truyền cảm hứng ở phạm vi toàn cầu.\r\n\r\nNapoleon Hill là khách mời danh dự của những buổi nói chuyện trên đài phát thanh và truyền hình Hoa Kỳ. Tác phẩm “5 nền tảng cho thành công” đã tập hợp các bản thảo phát thanh chưa từng được công bố do chính ông thực hiện. Đọc cuốn sách này, độc giả sẽ được trải nghiệm gần như nguyên văn những lời Napoleon đã chia sẻ trực tiếp với thính giả trên sóng radio - phương tiện truyền thông chân thực và phổ biến nhất bấy giờ. Nội dung chia sẻ nhấn mạnh vào “Big Five” - 5 nguyên tắc lớn trong số 17 nguyên tắc thành công Napoleon Hill đã đúc rút. Ông cũng không quên đưa ví dụ về cách mà các nguyên tắc này đã đưa các cá nhân, nổi tiếng có, bình dân có, đến điểm đích thành công. Napoleon kỳ vọng thính giả của mình vào thời điểm phát sóng, cũng như độc giả đọc sách ngày nay, có thể qua những gì ông chia sẻ mà khám phá ra “bí quyết tối quan trọng để đạt được thành tựu cá nhân”.', '14 x 20 cm', '2019-07-13 15:43:40', 'https://salt.tikicdn.com/cache/550x550/ts/product/09/6d/99/cb623c3c2abb612326b78a6effdfddef.jpg', 1, '2019-07-13 15:43:40', '0.5kg', 'pdf', 308, NULL, 'Tiếng Việt', 109000, NULL, 0, 0, 109000, 20000, NULL, '2019-07-13 15:43:40', '2019-07-13 15:43:40'),
(23, 7, 1, 10, 'Kính Vạn Hoa', 'Kính Vạn Hoa ra mắt lần này có gì mới? Cũng như ống kính vạn hoa mà mỗi lần lắc lại hoá ra một bông hoa khác nhau, những tập truyện trong Kính Vạn Hoa qua bàn tay nhà ảo thuật Nguyễn Nhật Ánh cũng có một dáng vẻ tươi mới như thế sau mỗi lần xuất hiện.\r\n\r\nMỗi tập bao gồm 6 câu chuyện được minh họa bởi Nhóm Cỏ ba lá. Những minh họa này được lựa chọn từ rất nhiều những minh họa về bộ truyện, đó là một cách nhìn mới về nhóm bạn Quý ròm gần gũi hơn với lứa tuổi học trò hôm nay.\r\n\r\nKính Vạn Hoa là một bộ bách khoa toàn thư về đời sống học trò được tác giả nhìn qua lăng kính vạn hoa nhiều màu sắc biến ảo sinh động vô cùng thú vị. Là học trò, luôn yêu tuổi học trò, luôn nhớ về tuổi học trò thì không thể không đọc Kính Vạn Hoa.\r\n\r\n...\r\n\r\nMời các bạn đón đọc!', '14 x 20 cm', '2019-07-13 15:43:40', 'https://salt.tikicdn.com/cache/75x75/media/catalog/product/k/v/kvh-bo.jpg', 1, '2019-07-13 15:43:40', '3kg', 'pdf', 5671, NULL, 'Tiếng Việt', 990000, NULL, 0, 0, 990000, 50000, NULL, '2019-07-13 15:43:40', '2019-07-13 15:43:40'),
(24, 1, 10, 4, 'Giáo Trình Thiết Kế Cơ Khí Với SOLIDWORKS Dùng Cho Các Phiên Bản 2019 - 2014', 'Sự phát triển nhanh chóng khoa học kỹ thuật nhất là lĩnh vực tin học đã hỗ trợ rất nhiều ngành nghề. Trong lĩnh vực thiết kế cơ khí, sự ra đời máy công cụ điều khiển bằng chương trình số với sự trợ giúp của máy tính (CNC) là một bước đột phá trong ngành cơ khí chế tạo. Hầu như các khu công nghiệp ở Việt Nam đều có các máy CNC để phục vụ sản xuất, bao gồm nhiều chủng loại loại máy khác nhau như máy phay, tiện, bào. mài, với số trục điều khiển từ 2 đến 3, 4, 5. Để khai thác và sử dụng thành thạo các chương trình CAD-CAM.', '', '2019-07-13 15:43:40', 'https://salt.tikicdn.com/cache/75x75/ts/product/68/49/73/f4369b0794aee9d890de4e800d5be6f8.jpg', 1, '2019-07-13 15:43:40', '0.6kg', 'pdf', 232, NULL, 'Tiếng Việt', 140000, NULL, 0, 0, 140000, 15000, NULL, '2019-07-13 15:43:40', '2019-07-13 15:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `stubo_bookself`
--

CREATE TABLE `stubo_bookself` (
  `bookself_id` int(11) NOT NULL,
  `bookself_user_id` int(11) NOT NULL,
  `bookself_book_id` int(11) NOT NULL,
  `bookself_bookmark` text COLLATE utf8mb4_unicode_ci,
  `bookself_date_exp` datetime DEFAULT NULL,
  `bookself_date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bookself_date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stubo_category`
--

CREATE TABLE `stubo_category` (
  `category_id` int(11) NOT NULL,
  `category_parent_id` int(11) DEFAULT '0',
  `category_name` varchar(128) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `category_image_link` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'null',
  `category_slug` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

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

CREATE TABLE `stubo_chapter` (
  `chapter_id` int(11) NOT NULL,
  `chapter_book` int(11) NOT NULL,
  `chapter_name` varchar(128) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `chapter_pageend` int(11) DEFAULT NULL,
  `chapter_description` text COLLATE utf8mb4_vietnamese_ci,
  `chapter_date_create` datetime DEFAULT NULL,
  `chapter_date_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stubo_comment`
--

CREATE TABLE `stubo_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_user_id` int(11) DEFAULT NULL,
  `comment_book_id` int(11) DEFAULT NULL,
  `comment_content` text COLLATE utf8mb4_vietnamese_ci,
  `comment_date` datetime DEFAULT NULL,
  `comment_parent` int(11) DEFAULT NULL,
  `comment_date_created` datetime DEFAULT NULL,
  `comment_date_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stubo_friend`
--

CREATE TABLE `stubo_friend` (
  `friend_id` int(11) NOT NULL,
  `friend_userid` int(11) DEFAULT NULL,
  `friend_friend_id` int(11) DEFAULT NULL,
  `friend_is_comfimed` tinyint(1) DEFAULT NULL,
  `friend_is_limited` tinyint(1) DEFAULT NULL,
  `friend_date_create` datetime DEFAULT NULL,
  `friend_date_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stubo_nxb`
--

CREATE TABLE `stubo_nxb` (
  `nxb_id` int(11) NOT NULL,
  `nxb_name` varchar(128) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nxb_image` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nxb_date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nxb_date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `stubo_nxb`
--

INSERT INTO `stubo_nxb` (`nxb_id`, `nxb_name`, `nxb_image`, `nxb_date_create`, `nxb_date_modified`) VALUES
(1, 'Nhà Xuất Bản Trẻ', 'https://www.nxbtre.com.vn/css/skin/logo.png', '2019-07-13 10:55:57', '2019-07-13 10:55:57'),
(2, 'Nhã nam', 'http://nhanam.com.vn/Content/images2/logo.png', '2019-07-13 10:55:57', '2019-07-13 10:55:57'),
(3, 'Alpha Books', 'https://bizweb.dktcdn.net/100/197/269/themes/517883/assets/logo_mobile.png', '2019-07-13 10:55:57', '2019-07-13 10:55:57'),
(4, 'Trí Việt', 'https://www.vinabook.com/images/thumbnails/publisher/180x235/145027_firstnews.jpg', '2019-07-13 10:55:57', '2019-07-13 10:55:57'),
(5, 'Thái Hà', 'https://www.vinabook.com/images/thumbnails/publisher/180x235/145026_thaihabooks.jpg', '2019-07-13 10:55:57', '2019-07-13 10:55:57'),
(6, 'Văn Lang', 'https://online.vanlang.vn/uploads/logo_1547023855.png', '2019-07-13 10:55:57', '2019-07-13 10:55:57'),
(7, 'Nhân văn', 'https://nhanvan.vn/images/logos/8/logomaumoi.png', '2019-07-13 10:55:57', '2019-07-13 10:55:57'),
(8, 'Phương Nam', 'http://vincom.com.vn/sites/default/files/2016-11/logo-nhasachphuongnam.com_.png', '2019-07-13 10:55:57', '2019-07-13 10:55:57'),
(9, 'FAHASA', 'https://www.vinabook.com/images/thumbnails/author/210x/134033_logo.jpg', '2019-07-13 10:55:57', '2019-07-13 10:55:57'),
(10, 'Kim Đồng', 'https://www.nxbkimdong.com.vn/images/kimdongnew/logo60kd.png', '2019-07-13 10:55:57', '2019-07-13 10:55:57'),
(11, 'Minh Long', 'https://www.vinabook.com/images/thumbnails/publisher/180x235/142351_minhlong.jpg', '2019-07-13 10:55:57', '2019-07-13 10:55:57'),
(12, 'Thành Nghĩa', 'http://www.giadinhbook.com.vn/upload/images/2014/07/24/07cl3emB7y.jpg', '2019-07-13 10:55:57', '2019-07-13 10:55:57'),
(13, 'Nhà xuất bản Văn học', 'http://www.nxbvanhoc.com//upload/banner/1376194032_top_website_70year.JPG', '2019-07-13 15:19:17', '2019-07-13 15:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `stubo_order`
--

CREATE TABLE `stubo_order` (
  `order_id` int(11) NOT NULL,
  `order_custumer_id` int(11) DEFAULT NULL,
  `order_qty` int(11) DEFAULT NULL,
  `order_payment_type` tinyint(1) DEFAULT NULL,
  `order_voucher_id` int(11) DEFAULT NULL,
  `order_subtotal` double DEFAULT NULL,
  `order_total` double DEFAULT NULL,
  `order_comment` text COLLATE utf8mb4_vietnamese_ci,
  `order_status` tinyint(1) DEFAULT NULL,
  `order_date_create` datetime DEFAULT NULL,
  `order_date_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stubo_order_book`
--

CREATE TABLE `stubo_order_book` (
  `order_book_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `order_book_price` double DEFAULT NULL,
  `order_book_date_create` datetime DEFAULT NULL,
  `order_book_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stubo_rating`
--

CREATE TABLE `stubo_rating` (
  `rating_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `rating_value` int(11) DEFAULT NULL,
  `rating_date_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `rating_date_modified` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stubo_token`
--

CREATE TABLE `stubo_token` (
  `token_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_date_end` datetime NOT NULL,
  `token_date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token_date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stubo_token`
--

INSERT INTO `stubo_token` (`token_id`, `user_id`, `token_name`, `token_permissions`, `token_key`, `token_date_end`, `token_date_created`, `token_date_modified`) VALUES
(1, 2, 'User Token', 'read-write', 'EsaokpSLq9szy7SEecQC5YiukF32JszeJzfIHuafYiSdOHy2ALFMOSR7mKFRF2gM', '2019-07-09 22:48:06', '2019-07-04 22:56:49', '2019-07-08 14:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `stubo_user`
--

CREATE TABLE `stubo_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_first_name` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_last_name` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_salt` char(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `user_birth_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_news_letter` tinyint(1) NOT NULL DEFAULT '0',
  `user_active` tinyint(1) NOT NULL DEFAULT '0',
  `user_avatar` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT ' ',
  `user_type` tinyint(1) NOT NULL DEFAULT '1',
  `user_date_expired` datetime DEFAULT NULL,
  `user_address` text COLLATE utf8mb4_vietnamese_ci,
  `user_balance` int(11) NOT NULL DEFAULT '0',
  `user_date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `stubo_user`
--

INSERT INTO `stubo_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_first_name`, `user_last_name`, `user_salt`, `user_birth_day`, `user_news_letter`, `user_active`, `user_avatar`, `user_type`, `user_date_expired`, `user_address`, `user_balance`, `user_date_created`, `user_date_modified`) VALUES
(1, 'Blanche', 'tyrell1981@gmail.com', '7594029c8040b659479b049bcc374599e9fe32f0caf3de1abd30ba3b423c1c8f', 'R Blanche', 'Frieda', 'a8da8fcd12', '1990-05-16 00:00:00', 0, 0, 'https://www.fakepersongenerator.com/Face/female/female20161025195257019.jpg', 1, NULL, 'Cambridge, Massachusetts(MA), USA', 20000, '2019-06-28 15:47:09', '2019-06-30 12:40:50'),
(2, 'snuff', 'tyrell1981@gmail.com', '72a0bedd8c2ce44dc7aec1d9f02da7cfe9f9c771e2e728b3331fb62863b1aa2d', 'Jones', 'James', '4d607887f6', '1991-06-12 00:00:00', 0, 0, 'https://www.fakepersongenerator.com/Face/male/male20171084006419891.jpg', 1, NULL, 'Elkins, West Virginia(WV), 26241', 90000, '2019-06-28 15:47:23', '2019-07-08 17:18:58'),
(3, 'Eric', 'grace.hudso1@gmail.com', 'dafbf59d4b83edac975ff4558a8ecdf6c2be67a1893cbfb92f382be5e1de91d8', 'Mills', 'Eric', '09602c16f8', '1986-09-20 00:00:00', 1, 0, 'https://www.fakepersongenerator.com/Face/male/male20171086006407684.jpg', 1, NULL, 'Rochester, New York(NY), 14613', 10000, '2019-06-28 15:52:15', '2019-06-30 15:37:36'),
(4, 'deion_kraj2003', 'darrin_waelc@hotmail.com', '9bc3fc91ee4e6aa7ee50493c8783108fa0cacc4406de1bd277711025b48ae0cf', 'Mines', 'Rudy', 'a1b8adb0c8', '1993-03-23 00:00:00', 1, 0, 'https://www.fakepersongenerator.com/Face/male/male20161086395198151.jpg', 1, NULL, 'Panama City, Florida(FL)', 90000, '2019-06-28 15:52:29', '2019-06-30 20:35:18'),
(5, 'aarock1234 ', 'merritt1981@hotmail.com', '36752519093504b42f681eebfa40394d939acb34b9715ffcace3c2707fbb82fb', 'Patricia', 'Forrest', '06e6f4a088', '1992-04-15 00:00:00', 1, 2, 'https://www.fakepersongenerator.com/Face/female/female20151024421353394.jpg', 1, NULL, 'Windsor, New Hampshire(NH), 05089', 80000, '2019-06-28 16:40:17', '2019-06-30 20:37:07'),
(6, 'harry', 'alena1997@hotmail.com', 'fdfb1e1a223cc1810c1453108f58de27a7046aba366cb366f534f2dd86a39f04', 'Peterson', 'Noble', '0eb222b3b3', '1991-06-28 00:00:00', 1, 1, 'https://www.fakepersongenerator.com/Face/male/male1085729727936.jpg', 1, NULL, 'Redmond, Oregon(OR), 97756', 0, '2019-06-28 16:40:17', '2019-06-30 00:00:00'),
(7, 'aarock1234 ', 'merritt1981@hotmail.com', '36752519093504b42f681eebfa40394d939acb34b9715ffcace3c2707fbb82fb', 'Patricia', 'Forrest', '06e6f4a088', '1988-04-05 00:00:00', 1, 2, 'https://www.fakepersongenerator.com/Face/female/female20151024421353394.jpg', 1, NULL, 'Windsor, New Hampshire(NH), 05089', 0, '2019-06-28 16:40:38', '2019-06-30 00:00:00'),
(8, 'harry', 'alena1997@hotmail.com', 'fdfb1e1a223cc1810c1453108f58de27a7046aba366cb366f534f2dd86a39f04', 'Peterson', 'Noble', '0eb222b3b3', '1995-10-20 00:00:00', 1, 1, 'https://www.fakepersongenerator.com/Face/male/male1085729727936.jpg', 1, NULL, 'Redmond, Oregon(OR), 97756', 0, '2019-06-28 16:40:38', '2019-06-30 12:46:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stubo_author`
--
ALTER TABLE `stubo_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `stubo_book`
--
ALTER TABLE `stubo_book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `book_author` (`book_author`,`book_category`,`book_nxb`) USING BTREE;

--
-- Indexes for table `stubo_bookself`
--
ALTER TABLE `stubo_bookself`
  ADD PRIMARY KEY (`bookself_id`);

--
-- Indexes for table `stubo_category`
--
ALTER TABLE `stubo_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `stubo_chapter`
--
ALTER TABLE `stubo_chapter`
  ADD PRIMARY KEY (`chapter_id`);

--
-- Indexes for table `stubo_comment`
--
ALTER TABLE `stubo_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `stubo_friend`
--
ALTER TABLE `stubo_friend`
  ADD PRIMARY KEY (`friend_id`);

--
-- Indexes for table `stubo_nxb`
--
ALTER TABLE `stubo_nxb`
  ADD PRIMARY KEY (`nxb_id`);

--
-- Indexes for table `stubo_order`
--
ALTER TABLE `stubo_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `stubo_order_book`
--
ALTER TABLE `stubo_order_book`
  ADD PRIMARY KEY (`order_book_id`);

--
-- Indexes for table `stubo_rating`
--
ALTER TABLE `stubo_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `stubo_token`
--
ALTER TABLE `stubo_token`
  ADD PRIMARY KEY (`token_id`);

--
-- Indexes for table `stubo_user`
--
ALTER TABLE `stubo_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stubo_author`
--
ALTER TABLE `stubo_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stubo_book`
--
ALTER TABLE `stubo_book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `stubo_bookself`
--
ALTER TABLE `stubo_bookself`
  MODIFY `bookself_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stubo_category`
--
ALTER TABLE `stubo_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `stubo_chapter`
--
ALTER TABLE `stubo_chapter`
  MODIFY `chapter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stubo_comment`
--
ALTER TABLE `stubo_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stubo_friend`
--
ALTER TABLE `stubo_friend`
  MODIFY `friend_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stubo_nxb`
--
ALTER TABLE `stubo_nxb`
  MODIFY `nxb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stubo_order`
--
ALTER TABLE `stubo_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stubo_order_book`
--
ALTER TABLE `stubo_order_book`
  MODIFY `order_book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stubo_rating`
--
ALTER TABLE `stubo_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stubo_token`
--
ALTER TABLE `stubo_token`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stubo_user`
--
ALTER TABLE `stubo_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
