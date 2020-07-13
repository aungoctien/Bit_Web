-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 13, 2020 lúc 06:17 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id13612008_bit_db`
--
CREATE DATABASE IF NOT EXISTS `id13612008_bit_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id13612008_bit_db`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) NOT NULL,
  `ten` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `ten`, `mat_khau`) VALUES
(3, 'autien', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_album`
--

CREATE TABLE `tbl_album` (
  `id` int(10) NOT NULL,
  `id_loai_album` int(10) NOT NULL,
  `tieu_de` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anh` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ghi_chu` varchar(110) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_album`
--

INSERT INTO `tbl_album` (`id`, `id_loai_album`, `tieu_de`, `ngay`, `anh`, `ghi_chu`) VALUES
(4, 1, 'kỉ niệm liên hoan ', '2/5/2019', '4.jpg', 'Ảnh hoạt động'),
(5, 1, 'Chuyến du lịch Mộc Châu cùng BIT 2020', '5/5/2019', '5.jpg', 'Ảnh hoạt động'),
(6, 1, 'Liên hoan BIT', '9/2/2020', '6.jpg', 'Ảnh hoạt động'),
(7, 1, 'Chuyến du lịch Mộc Châu 2020', '5/5/2019', '7.jpg', 'Ảnh hoạt động'),
(8, 1, 'Du lịch Mộc Châu 2020\r\n', '6/5/2019', '8.jpg', 'Ảnh hoạt động'),
(9, 1, 'Du lịch Mộc Châu 2020', '5/5/1019', '9.jpg', 'Ảnh hoạt động'),
(16, 2, 'Trần Văn Tú', '11/7/2020', '14.jpg', 'Ảnh thành viên'),
(17, 2, 'Trần Việt Trung', '11/7/2020', '13.jpg', 'Ảnh thành viên'),
(18, 2, 'Nghiêm Anh Dũng', '11/7/2020', 'IMG_0052.jpg', 'Ảnh thành viên'),
(19, 2, 'Quách Hiệp Hoàng', '9/2/2020', 'IMG_0032.jpg', 'Ảnh thành viên'),
(20, 2, 'Bùi Hà Trang', '5/5/2019', 'IMG_0048.jpg', 'Ảnh thành viên'),
(21, 2, 'Nguyễn Thanh Dương', '1/3/1019', 'IMG_9656.jpg', 'Ảnh thành viên'),
(22, 2, 'Phạm Trung Hiếu', '9/2/2020', 'IMG_9671.jpg', 'Ảnh thành viên'),
(23, 2, 'Chu Ngọc Khanh', '9/2/2020', 'IMG_9675.jpg', 'Ảnh thành viên'),
(24, 2, 'Bùi Tiến Anh', '9/2/2020', 'IMG_0057.jpg', 'Ảnh thành viên'),
(25, 2, 'Nguyễn Minh Dũng', '9/2/2020', 'IMG_0064.jpg', 'Ảnh thành viên'),
(26, 2, 'Nguyễn Thị Minh', '9/2/2020', 'IMG_0068.jpg', 'Ảnh thành viên'),
(27, 2, 'Hoàng Linh Chi', '9/2/2020', 'IMG_9703.jpg', 'Ảnh thành viên'),
(28, 5, 'abcabcabc', '12/07/2019', 'IMG20191224183157.jpg', ''),
(29, 5, 'ádfáđàafa', '12/07/2019', 'IMG20191224183503.jpg', ''),
(30, 5, 'abưeasa', '12/07/2019', 'IMG20191224185308.jpg', ''),
(31, 5, '', '12/07/2019', 'IMG20191224183926.jpg', ''),
(32, 6, '', '12/07/2019', '75419015_1177774929059636_1860133164618350592_o.jpg', ''),
(33, 6, '', '12/07/2019', '75419015_1177774929059636_1860133164618350592_o.jpg', ''),
(34, 6, '', '12/07/2019', '75226491_1177775075726288_3823612321939324928_o.jpg', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_comment` int(50) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tin_tuc` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_comment`, `name`, `email`, `comment`, `id_tin_tuc`) VALUES
(19, 'Trung Trần', 'trungtran@gmail.com', 'Chúc mừng BIT!', 23),
(20, 'Âu Ngọc Tiền', 'autien@gmail.com', 'Hay', 24),
(21, 'Âu Ngọc Tiền', 'autien@gmail.com', 'Bài viết hay', 29),
(22, 'Âu Ngọc Tiền', 'autien@gmail.com', 'hay quá', 32),
(23, 'Âu Ngọc Tiền', 'autien@gmail.com', 'hay', 29),
(24, '', '', 'h ghvtybu', 32);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_goc_hoc_tap`
--

CREATE TABLE `tbl_goc_hoc_tap` (
  `id_goc_hoc_tap` int(11) NOT NULL,
  `tieu_de` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_goc_hoc_tap`
--

INSERT INTO `tbl_goc_hoc_tap` (`id_goc_hoc_tap`, `tieu_de`, `mo_ta`, `anh`, `link`) VALUES
(1, 'Thủ thuật Microsoft Word cơ bản', 'Microsoft Word, còn được biết đến với tên khác là Winword, là một chương trình soạn thảo văn bản phổ biến hiện nay của công ty phần mềm nổi tiếng Microsoft. Nó cho phép người dùng làm việc với văn bản thô (text), các hiệu ứng như phông chữ, màu sắc, cùng với hình ảnh đồ họa (graphics) và nhiều hiệu ứng đa phương tiện (multimedia) khác như âm thanh, video khiến cho việc soạn thảo văn bản được thuận tiện hơn. Ngoài ra cũng có các công cụ như kiểm tra chính tả, ngữ pháp của nhiều ngôn ngữ khác nhau để hỗ trợ người sử dụng.\r\n								Các phiên bản của Word thường lưu tên tập tin với đuôi là .doc, hay .docx đối với các phiên bản từ Word 2007 trở đi.', 'word.jpg', 'https://drive.google.com/file/d/1LnubSgayuc40bLHO-jyXxnImI9GlBVID/view?usp=sharing'),
(2, 'Thủ thuật Microsoft Excel cơ bản', 'Sức mạnh của Excel còn được các lập trình viên tích hợp vào các công cụ phân tích và tìm kiếm rất nhiều. Đặc biệt có thể kể đến là các công cụ liên quan đến Facebook. Với sự phát triển mạnh mẽ không ngừng của Facebook cũng như là quảng cáo trên Facebook thì việc lọc ra danh sách dựa theo các tiêu chí và xuất ra file Excel được rất nhiều người quan tâm. Không chỉ dừng lại ở đấy Excel còn được nhiều lập trình viên đánh giá là một công cụ tuyệt vời nhất. Cái mà toàn bộ những tính năng của nó không biết khi nào mới có thể tận dụng hết được. Và với mọi phần mềm khác khi xuất ra bất kỳ file để đánh giá thì Excel chính là lựa chọn hàng đầu bởi hiệu quả mà nó mang lại.', 'excel.jpg', 'https://drive.google.com/file/d/1hvF2bPv0eZpM_MaIhDogZOUg5odoIums/view?usp=sharing'),
(3, 'Thủ thuật SQL Server cơ bản', 'Microsoft SQL Server là một hệ quản trị cơ sở dữ liệu quan hệ được phát triển bởi Microsoft. Là một máy chủ cơ sở dữ liệu, nó là một sản phẩm phần mềm có chức năng chính là lưu trữ và truy xuất dữ liệu theo yêu cầu của các ứng dụng phần mềm khác. Có thể chạy trên cùng một máy tính hoặc trên một máy tính khác trên mạng (bao gồm cả Internet).\r\n								Microsoft tiếp thị ít nhất một chục phiên bản Microsoft SQL Server khác nhau, nhắm vào các đối tượng khác nhau và cho khối lượng công việc khác nhau, từ các ứng dụng máy đơn nhỏ đến các ứng dụng Internet lớn có nhiều người dùng đồng thời.', 'sqlserver.jpg', 'https://drive.google.com/file/d/1yjiYsCFEj4ITmX9D6No5nHUpjX7wKjVI/view?usp=sharing'),
(4, 'Thủ thuật Visual Studio Code cơ bản', 'Microsoft Visual Studio là một môi trường phát triển tích hợp (IDE) từ Microsoft. Nó được sử dụng để phát triển chương trình máy tính cho Microsoft Windows, cũng như các trang web, các ứng dụng web và các dịch vụ web. Visual Studio sử dụng nền tảng phát triển phần mềm của Microsoft như Windows API, Windows Forms, Windows Presentation Foundation, Windows Store và Microsoft Silverlight. Nó có thể sản xuất cả hai ngôn ngữ máy và mã số quản lý.', 'visualstudio.jpg', 'https://drive.google.com/file/d/1K7Iu7KYTDNfMwGhe_Zhqa4PVDO-wDyZy/view?usp=sharing'),
(5, 'Thủ thuật Sublime Text cơ bản', 'Sublime Text 3 (ST3) là phiên bản mới nhất của chương trình soạn thảo văn bản được sử dụng nhiều nhất bởi web developers, coders, và programmers. Nó sẵn có cho Mac, Windows, Linux và cho phép tải về và sử dụng miễn phí. Trong bài viết này chúng ta sẽ cùng nhau tìm hiểu về hướng dẫn sử dụng Sublime Text 3 cho web developer, phím tắt hữu ích và hơn thế nữa.\r\nSublime text bao gồm một hệ tính năng đa dạng như Syntax Highlight, Auto Indentation, File Type Recognition, Sidebar, Macros, Plug-in và các Package cho phép làm việc với code base dễ dàng hơn.', 'sublime.jpg', 'https://drive.google.com/file/d/1SSVgfQfMb0841iPx4qdhLC35ygWNuG5r/view?usp=sharing'),
(11, 'Kiến thức spss cơ bản', 'SPSS là một chương trình được sử dụng rộng rãi để phân tích thống kê trong khoa học xã hội. Nó cũng được các nhà nghiên cứu thị trường, các nhà nghiên cứu y tế, các công ty khảo sát, chính phủ, các nhà nghiên cứu giáo dục, các tổ chức tiếp thị, khai thác dữ liệu,[3] và nhiều ngành khác. Tài liệu SPSS ban đầu (Nie, Bent & Hull, 1970) đã được mô tả là một trong những cuốn sách có ảnh hưởng nhất của xã hội học để cho phép các nhà nghiên cứu bình thường thực hiện phân tích thống kê của chính họ.[4] Ngoài các phân tích thống kê, quản lý dữ liệu (lựa chọn trường hợp, chỉnh sửa lại tập tin, tạo ra dữ liệu gốc) và tài liệu dữ liệu (từ điển metadata được lưu trữ trong datafile) là các tính năng của phần mềm cơ bản.', 'spss.jpg', 'https://drive.google.com/file/d/1G3KklW6uC8cXn_Pnwg6QVu-NSRkQFub7/view?usp=sharing'),
(12, 'Kiến thức instagram cơ bản', 'Instagram là một phần mềm chia sẻ ảnh miễn phí cho phép người dùng chụp ảnh trên điện thoại của mình, thêm các bộ lọc hình ảnh, và sau đó chia sẻ trên nhiều mạng xã hội khác nhau, kể cả Instagram. Những bức ảnh chụp được sẽ có dạng hình vuông với tỉ lệ 4:3 thường được dùng trong các thiết bị di động\r\nBan đầu Instagram được thiết kế dành riêng cho iPad, iPhone và iPod Touch. Sau đó, Instagram đã có phiên bản cho các dòng máy chạy hệ điều hành Android 2.2 trở lên vào tháng 4 năm 2012. Hiện tại Instagram cho Android được phát hành trên Google Play[5]', 'instagram.jpg', 'https://drive.google.com/file/d/1CYXTi_P0D15csEHD4Il94qLFE6S5el2i/view?usp=sharing'),
(13, 'Mẹo hay trong facebook', 'Facebook là một dịch vụ mạng xã hội trực tuyến miễn phí. Tên của nó xuất phát từ tên của cuốn sách cho học sinh được phát vào đầu năm học tại một số trường đại học tại Mỹ để giúp học sinh làm quen với nhau. Facebook được sáng lập vào tháng 2 năm 2004 bởi Mark Zuckerberg và các bạn đại học Harvard của ông như Eduardo Saverin, Andrew McCollum, Dustin Moskovitz và Chris Hughes.\r\n\r\n', 'facebook.jpg', 'https://drive.google.com/file/d/1zbx6hGCjYniFeibvJvIq9yNJMh57lOTE/view?usp=sharing');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loai_album`
--

CREATE TABLE `tbl_loai_album` (
  `id_loai_album` int(10) NOT NULL,
  `ten_album` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_loai_album`
--

INSERT INTO `tbl_loai_album` (`id_loai_album`, `ten_album`, `mo_ta`, `anh`) VALUES
(1, 'Ảnh du lịch Mộc Châu 2020', 'Mộc Châu là điểm đến thú vị và thư giãn đối với các bạn sinh viên. Chính vì vậy mà BIT đã tổ chức một buổi dã ngoại nâng cao tinh thần đoàn kết của CLB.', 'moc_chau_2020.jpg'),
(2, 'Ảnh thành viên', 'Kho ảnh các thành viên trong CLB BIT', '2.jpg'),
(5, 'Noel 2019', 'Từ thiện ngày noel  ở viện Huyết Học Trung Ương với hy vọng mang lại niềm vui và kỉ niệm cho các em nhỏ.', 'IMG20191224185638.jpg'),
(6, 'Training CNTT', 'Hoạt động hỗ trợ sinh viên giải đáp các kiến thức về office, các kiến thức về tin học văn phòng cơ bản', 'trainning.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loai_tin_tuc`
--

CREATE TABLE `tbl_loai_tin_tuc` (
  `id_loai_tin_tuc` int(50) NOT NULL,
  `ten_loai_tin_tuc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_loai_tin_tuc`
--

INSERT INTO `tbl_loai_tin_tuc` (`id_loai_tin_tuc`, `ten_loai_tin_tuc`) VALUES
(11, 'Tin sinh viên'),
(12, 'Tin công nghệ'),
(13, 'Tin giải trí'),
(14, 'Tin tài chính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nha_sang_lap`
--

CREATE TABLE `tbl_nha_sang_lap` (
  `id` int(10) NOT NULL,
  `ho_ten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vai_tro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nha_sang_lap`
--

INSERT INTO `tbl_nha_sang_lap` (`id`, `ho_ten`, `vai_tro`, `anh`) VALUES
(1, 'Trần Việt Trung', 'Admin', 'tran_trung.jpg'),
(2, 'Âu Ngọc Tiền', 'Developer', 'au_tien.jpg'),
(3, 'Nguyễn Quỳnh Trang', 'Tester', 'nguyen_trang.jpg'),
(4, 'Chu Thị Hằng', 'Tester', 'chu_hang.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tin_tuc`
--

CREATE TABLE `tbl_tin_tuc` (
  `id_tin_tuc` int(50) NOT NULL,
  `id_loai_tin_tuc` int(50) NOT NULL,
  `tieu_de` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_dung` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tin_tuc`
--

INSERT INTO `tbl_tin_tuc` (`id_tin_tuc`, `id_loai_tin_tuc`, `tieu_de`, `ngay`, `noi_dung`, `anh`) VALUES
(23, 11, 'Chặng đường 10 năm \"ngoạn mục\" của BIT', '12/7/2020', 'SEE YOU SOON, HOMIES<br>\r\nMột đêm Prom tuyệt vời kỉ niệm sinh nhật lần thứ 10 của BIT đến và khép lại với biết bao cảm xúc vô giá.<br>\r\nHOMIES không chỉ mang ý nghĩa tiệc mừng sinh nhật đơn thuần, mà tại ấy-chúng ta được gặp lại những tiền bối đã góp công xây dựng, phát triển và luôn dõi theo chặng đường 10 năm đầy “ngoạn mục” của BIT.<br>\r\nChúng ta đã cùng nhau tâm sự, ôn lại những kỉ niệm vui có, buồn có, cố gắng nỗ lực có trong suốt quãng thời gian hoạt động của Clb.<br>\r\n 10 năm không phải chặng đường quá dài, nhưng cũng không hề ngắn ngủi vì BIT ngày nào ấy, giờ đã trưởng thành và tự tin vươn mình phát triển. Một lần nữa tri ân BIT của chúng ta trên hành trình trưởng thành.<br>\r\nGóp phần không nhỏ vào sự thành công của đêm Prom là những tiết mục văn nghệ đặc sắc, đầy tài năng của các bạn<br>\r\nĐặc biệt, không thể không kể đến là sự hết mình nhiệt thành trong khâu chuẩn bị đầy tính “khó nhằn” của tất cả các thành viên clb nói chung và các tiền bối cán bộ nói riêng\r\n<br>\r\nNhững ngày tháng bắt đầu đầy gian nan để khẳng định vị trí của BIT đã giúp BIT của chúng ta trưởng thành hơn, nhiệt huyết và vươn xa hơn trong hiện tại và tương lai phía trước. 10 năm trôi qua với bao thế hệ, bao cột mốc quan trọng, sự trưởng thành của BIT mang đến một mái nhà chung năng động, sự đoàn kết đầy trách nhiệm từ mỗi thành viên đã trở thành vũ khí “hạng nặng bất diệt” của BIT.<br>\r\nLời cuối BIT xin gửi lời cảm ơn chân thành nhất tới toàn thể các khách mời đã có mặt chung vui cùng BIT. Một chương trình lớn không thể không có những sai sót vì vậy đây sẽ là bài học quý giá cho BIT trong những sự kiện tiếp theo. BIT rất cảm ơn tới những lời phát biểu từ thầy cô/ anh chị cựu...Chúng em sẽ luôn cố gắng ghi nhớ và thay đổi để đưa clb ngày một phát triển hơn nữa<br>\r\n\r\n Một lần nữa<br>\r\nCảm ơn...<br>\r\nChúc mừng...<br>\r\nChúc mừng sinh nhật và chúc cho chúng ta cùng cống hiến, luôn sát cánh bên nhau để cùng đón những sinh nhật tiếp theo của BIT', 'chang_duong_10_nam.jpg'),
(24, 11, 'HÀNH TRÌNH  CAREER DAY - CONNECT TO SUCCESS ', '12/7/2020', ' HỖ TRỢ TRUYỀN THÔNG \r\n<br>\r\nHÀNH TRÌNH UET CAREER DAY - CONNECT TO SUCCESS ĐÃ CHÍNH THỨC QUAY TRỞ LẠI\r\nHãy nhanh tay đăng ký tham dự <br> Ngày hội tại: <br>bit.ly/uetcareerday2020<br>\r\nĐến hẹn lại lên, \"UET CAREER DAY 2020 - CONNECT TO SUCCESS\" bước sang năm thứ 7, đánh dấu sự chuyển mình mạnh mẽ với nhiều sự thay đổi lớn. Một nhịp cầu không thể thiếu giữa sinh viên UET và doanh nghiệp, mang đến môi trường chia sẻ, định hướng tuyển dụng chuyên nghiệp.<br>\r\nNgày hội không chỉ còn dành riêng cho ngành Công nghệ thông tin với sự tham gia của gần 40 DOANH NGHIỆP hàng đầu đến từ các lĩnh vực: Điện tử viễn thông, Cơ điện tử, Vật lý kỹ thuật, Hàng không vũ trụ, ... như Tập đoàn Viettel, Samsung, Giao hàng tiết kiệm, FPT, Toshiba Việt Nam, Sun*, Gear INC… cùng các trung tâm Đào tạo chứng chỉ chuyên nghiệp, kĩ năng… hứa hẹn sẽ tạo nên một triển lãm nghề nghiệp sôi động bậc nhất.\r\n Giải đấu UET ESPORT CHAMPIONSHIP - một sân chơi thú vị dành cho các sinh viên đam mê về thể thao điện tử.\r\n TALKSHOW truyền cảm hứng với các diễn giả nổi tiếng, có kinh nghiệm trong nghề, chia sẻ những câu chuyện của chính họ để từ đó tạo động lực cho sinh viên, giúp sinh viên có những định hướng về con đường tiếp theo trên cuộc hành trình nhiều ngã rẽ của mình.<br>\r\nTỌA ĐÀM với chủ đề hội nhập sẽ mang tới cái nhìn đầy đủ nhất, chuyên sâu nhất từ những chuyên gia trong ngành, cung cấp những thông tin cần thiết cho sinh viên trong kỷ nguyên hội nhập.<br>\r\nKHU GIAN TRẠI với nhiều hoạt động, minigame thú vị, bổ ích cùng với những tiết mục và phần trình diễn văn nghệ đặc sắc tại sân khấu chính đến từ các CLB trong và ngoài trường Đại học Công nghệ - ĐHQGHN.<br>\r\nNgày hội việc làm UET Career\r\nNgày hội việc làm UET Career Day 2020 - Connect To Success sẽ diễn ra vào:<br>\r\n✅Thời gian : 8h00 - 17h00, Thứ bảy, ngày 11/07/2020.<br>\r\nĐịa điểm: Khu vực sân chính E1, E3, E4 & G2, Trường Đại học Công nghệ - ĐHQGHN,\r\n144 Xuân Thuỷ, Cầu Giấy, Hà Nội\r\nHành trình kết nối cùng \"UET CAREER DAY 2020\" hứa hẹn sẽ đem lại cho bạn “profile” hoành tráng cùng cơ hội “apply” thực tập tại các doanh nghiệp mơ ước\r\n<br>\r\nTự tin hơn, bản lĩnh hơn là bệ phóng hoàn hảo cho công cuộc chinh phục thành công của mỗi chúng ta. Hãy để \"UET CAREER DAY 2020 - CONNECT TO SUCCESS\" đồng hành cùng bạn trên chặng đường bước tới vinh quang đầy chông gai phía trước!\r\n⚠️Đừng quên theo dõi để cập nhật những thông tin mới nhất về ngày hội nhé! \r\n<br>\r\n￼ Thời gian: 8h00 - 17h00, thứ Bảy ngày 11/7/2020.\r\n￼ Địa điểm: Trường ĐH Công nghệ - ĐHQG Hà Nội, Số 144, Xuân Thủy, Cầu Giấy, Hà Nội.\r\n<br>\r\nfanpage: https://www.facebook.com/NHVLCN/<br>\r\n￼Website: <br>http://ngayhoivieclam.uet.vnu.edu.vn/<br>\r\nLink đăng ký tham gia: <br>bit.ly/uetcareerday2020<br>\r\nLiên hệ BTC:<br>\r\n+Tell: 0243.754.7528<br>\r\n+ Phone: 0963 991 294<br>', 'carrerday.jpg'),
(25, 11, 'CUỘC THI Ý TƯỞNG KHỞI NGHIỆP HỌC VIỆN NGÂN HÀNG - START UP BA 2020', '12/7/2020', 'Cuộc thi Ý tưởng Khởi nghiệp - START UP BA là cuộc thi do Ban Hỗ trợ Khởi nghiệp Học viện Ngân hàng tổ chức cùng sự hỗ trợ của Đoàn Thanh niên- Hội sinh viên và Câu lạc bộ Khởi nghiệp Học viện Ngân hàng dành cho sinh viên Học viện Ngân hàng nói riêng và sinh viên các trường đại học tại Hà Nội nói chung.\r\n<br>\r\nChính thức khởi động từ năm 2017, START UP BA đã khẳng định được vị trí và danh tiếng trong cộng đồng sinh viên, thu hút được nhiều dự án có chất lượng tham gia và sự quan tâm, đồng hành của các chuyên gia và nhà đầu tư trong lĩnh vực khởi nghiệp.<br>\r\nTiếp nối những thành công đó, START UP BA 2020 tiếp tục được triển khai và phát động rộng rãi tới cộng đồng sinh viên với nhiều điểm mới hấp dẫn và thú vị đối với các nhóm dự thi.\r\n<br>\r\nMục đích cuộc thi\r\n- Tạo ra sân chơi bổ ích, cơ hội tiếp xúc và làm việc trực tiếp với những cố vấn, giám khảo nổi tiếng, giàu kinh nghiệm cho các bạn trẻ có mong muốn, đam mê khởi nghiệp tại trường Học viện Ngân Hàng nói riêng và trên địa bàn thành phố Hà Nội nói chung.<br>\r\n- Sinh viên có điều kiện giao lưu, học hỏi giữa các đội thi, được sáng tạo, thể hiện ý tưởng cá nhân, đến gần hơn với các nhà đầu tư và hiện thực hóa ý tưởng.<br>\r\n- Khơi dậy nhiệt huyết kinh doanh, đam mê khởi nghiệp sáng tạo trong giới trẻ, giúp sinh viên nâng cao hiểu biết về khởi nghiệp.<br>\r\nĐối tượng dự thi<br>\r\n- Sinh viên các trường Đại học, Cao đẳng, dạy nghề trên địa bàn Hà Nội. - Thí sinh có thể tham gia theo hình thức cá nhân hoặc nhóm (Nhóm không quá 5 thành viên, trong đó tối tiểu 60% sinh viên của Học viện Ngân hàng).\r\n<br>\r\n- Các dự án của các đội tham dự có thể là ý tưởng hoặc các dự án đang được triển khai trên thực tế và dự án không nằm trong TOP 4 Startup BA các mùa thi trước.', 'startup.jpg'),
(26, 11, 'CUỘC THI SPEAKING CHALLENGE 2020', '12/7/2020', ' Bạn có niềm đam mê với tiếng anh? <br>\r\nBạn muốn khẳng định bản thân tại các cuộc thi lớn nhỏ? <br>\r\n Vậy thì cơ hội của bạn đã đến rồi đó! Cuộc thi \" SPEAKING  CHALLENGE \" do Khoa Ngoại Ngữ tổ chức lần đầu tiên, hứa hẹn sẽ là một trải nghiệm đầy thú vị đối với tất cả các bạn học sinh, sinh viên trên toàn quốc và đặc biệt giải thưởng lên tới 1.000.000 VNĐ.\r\n <br> Tham gia cùng chúng mình ngay nào!\r\n-----------------------<br>\r\nTHÔNG TIN CUỘC THI<br>\r\n1. Đối tượng dự thi: Học sinh, sinh viên trên toàn quốc<br>\r\n2. Cơ cấu giải thưởng: 1.000.000 VNĐ<br>\r\n3. Thể lệ cuộc thi:<br>\r\nCuộc thi được tổ chức thành 2 vòng:<br>\r\n Vòng 1: Pronunciation Challenge\r\n+ Thí sinh đọc chính xác các từ/cụm từ đã cho.<br>\r\n+ Yêu cầu video cần chất lượng, có thể tự quay bằng điện thoại hoặc nhờ quay video. Video cần ghi lại rõ khuôn mặt, khẩu hình miệng khi nói.<br>\r\n+ Thí sinh gửi video về email: <br>Khoangoaingu.atc@bav.edu.vn <br>\r\n+ 5 bạn đọc chính xác, đúng phát âm, ngữ điệu sẽ được BGK chọn vào vòng 2.<br>\r\n Vòng 2: <br>\r\n+ Các thí sinh làm video nói về 1 chủ đề mà BTC yêu cầu.<br>\r\n+ Thời lượng tối đa: 2 phút<br>\r\n+ Thí sinh gửi video về email <br>Khoangoaingu.atc@bav.edu.vn.\r\n+ Cách tính điểm:<br>\r\n 50% từ BGK là thầy cô khoa <br>Ngoại Ngữ HVNH\r\n 50% từ bình chọn:\r\n1 like/ love: 1pt<br>\r\n1 share: 5 pts<br>\r\n+ Yêu cầu:<br>\r\n. Quay video (video cần đảm bảo về chất lượng hình ảnh)<br>\r\n. Thí sinh có lời giới thiệu bản thân trước khi nói<br>\r\n. Không đăng tải bài thi có nội dung không phù hợp với thuần phong mỹ tục.<br>\r\n4. Thời gian cuộc thi\r\n Vòng 1:<br>\r\nThời gian nhận bài: 14 - 18/6/2020<br>\r\n Chấm bài: 19/6/2020<br>\r\nCông bố thí sinh lọt vào vòng trong: 20/6/2020<br>\r\nVòng 2:<br>\r\nThời gian thí sinh thực hiện video: 21 - 25/6/2020<br>\r\n<br>Thời gian kêu gọi vote: 26 - 27/6/2020<br>\r\n Thời gian chấm bài và tính điểm bình chọn: 28/6/2020<br>\r\n<br> Công bố giải: 29/6/2020\r\nMọi thắc mắc các bạn liên hệ fanpage Khoa Ngoại Ngữ HVNH\r\nhttps://www.facebook.com/khoangoainguhvnh/', 'speaking.jpg'),
(27, 12, 'Hướng dẫn 3 cách kiểm tra cấu hình, thông tin máy tính nhanh và đơn giản', '12/7/2020', 'Nếu muốn biết phần cứng trong máy tính có giống với thông tin bên ngoài hay không, cách đơn giản nhất cho bạn là kiểm tra cấu hình. Bài viết này của Techz sẽ hướng dẫn bạn 3 cách đơn giản để kiểm tra cấu hình máy. <br>\r\n<br>\r\nNhư các bạn đã biết, phần cứng của máy tính là bộ phận rất quan trọng. Đáng nói, nó không được hiển thị ra bên ngoài. Vậy khi có nhu cầu muốn kiểm tra hoặc muốn mua các thiết bị phù hợp với phần cứng để nâng cấp máy, bạn phải làm gì. Câu trả lời sẽ có trong bài viết dưới đây.\r\n<br>\r\nKhông phải ai cũng biết cách kiểm tra máy tính, đặc biệt là các bạn nữ, những người ít am hiểu về đồ công nghệ. Một vài thông tin của máy tính sẽ được ghi ngay bên ngoài vỏ, song cũng có nhiều thông tin phải tìm cách mới xem được, trong đó có phần cứng. Để xem thông tin cấu hình máy, bạn có thể áp dụng 3 cách dưới đây.\r\n<br>\r\n<hr>\r\nCách 1: Xem cấu hình máy tính với lệnh dxdiag<br>\r\nLệnh dxdiag này đã có từ lâu nhưng không hề lạc hậu chút nào. Nó vẫn rất tiện lợi cho bạn nếu biết cách dùng. Để thực hiện, bạn cần:\r\n<br>\r\nB1: Mở run (bấm biểu tượng windows + R).<br>\r\nB2: Tiếp đến bạn gõ dxdiag và bấm Enter.<br>\r\nB3: Khi dxdiag hiện ra, sẽ có các thông tin tương tự như với Computer Properties. Ngoài ra còn có thông số về màn hình ở trong phần Display, âm thanh – Sound và các thiết bị nhập liệu, hỗ trợ (trong Input, ở đây là chuột và bàn phím).\r\n<br>\r\n<hr>\r\nCách 2: Cách xem cấu hình máy tính bằng lệnh msinfo32\r\nVới Windows 8.1/10, bạn cần:\r\n<br>\r\nB1: Mở run (bấm biểu tượng windows + R)\r\n<br>\r\nB2: Nhập lệnh msinfo32 rồi bấm enter\r\n<br>\r\nLúc này đây, toàn bộ thông tin của máy tính sẽ hiện ra. Đáng chú ý, không chỉ có cấu hình mà các thông tin về phần cứng, phần mềm cùng một số thành phần khác của máy cũng xuất hiện.\r\n<br>\r\nKhi cửa sổ System Information hiện ra, bạn sẽ thấy khá nhiều thông số của hệ thống, có thể kể đến như: Tên hệ thống, nhà sản xuất, tên hệ điều hành kèm phiên bản Windows 32bit hay 64bit, thông số của RAM, bộ vi xử lý…\r\nNếu muốn biết chi tiết phần cứng, phần mềm hay các thành phần khác, bạn có thể điều hướng ở menu bên trái.\r\n<br>\r\n<hr>\r\nCách 3: Kiểm tra cấu hình máy tính bằng Computer Properties\r\nĐây là lựa chọn hàng đầu của nhiều người vì cách làm đơn giản, nhanh gọn. Nó được sử dụng với nhiều phiên bản windows như XP, Vista, windows 7 cho đến windows 10.\r\n<br>\r\nVới Windows 8 trở lên, bạn chọn chuột phải vào biểu tượng This PC rồi chọn Properties.\r\nVới Windows 7 trở về trước, bạn cần vào Star, nhấp chuột phải vào My Computer hoặc chọn chuột phải vào biểu tượng My Computer ngay trên màn hình desktop rồi chọn Properties.\r\nhi cửa sổ mới hiện ra, bạn có thể đọc được thông tin về hệ điều hành, RAM, tình trạng kích hoạt của Windows, thông số CPU, tên người dùng, tên máy và một số thiết lập hệ thống khác ở phía tay trái.\r\n<br>\r\nỞ mục System tupe, bạn có thể biết mình đang cài Windows 32bit hay 64bit.', 'kiem_tra_phan_cung.jpg'),
(28, 12, 'Lập Trình CSDL với ADO', '12/7/2020', 'Với Tài Liệu Này Sẽ Giúp Bạn Hiểu Rõ Về Lệnh Command Để Thao Tác Với SQL \r\n<br>\r\nTổng quan\r\n<br>\r\nMột Cơ sở dữ liệu là một tập hợp có tổ chức của thông tin được phân chia vào trong những bảng. Mỗi bảng lại\r\n<br>\r\nđược chia thành những hàng và những cột ; những cột này lưu trữ những thông tin thực tế. Bạn truy nhập một\r\n<br>\r\ncơ sở dữ liệu sử dụng ngôn ngữ truy vấn có cấu trúc (SQL), là một ngôn ngữ tiêu chuẩn được hỗ trợ bởi đa số\r\n<br>\r\nphần mềm cơ sở dữ liệu bao gồm SQL Server, Access, và Oracle.\r\n<br>\r\nTrong chương này, bạn sẽ thấy một chương trình C# kết nối tới một cơ sở dữ liệu máy chủ phục vụ SQL, truy cập vào đây để lấy tài liệu\r\n<br>\r\nlink: https://drive.google.com/file/d/1Vve4uQql62lcGZLH7Ey0EVvcAkULqgkL/view\r\n', 'ado.net-and-sql-connection-in-.net_.jpg'),
(29, 12, 'Cách khắc phục laptop bị lỗi Windows Update', '12/7/2020', 'Update windows là việc làm không thể tránh khỏi trong quá trình sử dụng laptop. Do đó, người dùng luôn phải trang bị cho mình một số bước chuẩn hướng dẫn cơ bản để tự khắc phục nhanh nhất. <br>\r\nHệ điều hành Windows về cơ bản tích hợp sẵn một công cụ gỡ rối dùng để phát hiện và tự động giải quyết bất kỳ vấn đề nào xảy ra với trình Windows Update. Tuy không phải lúc nào cũng khắc phục được mọi trường hợp lỗi song đây là công cụ mà được windows tích hợp sẵn.\r\n<br>\r\nĐể sử dụng công cụ này, đầu tiên cần gõ cụm từ “troubleshooting” vào ô tìm kiếm của Windows. Khi cửa sổ Control Panel xuất hiện hãy nhấn vào tùy chọn “Fix problems with Windows Update” trong mục System and Security. Sau đó nhấn vào liên kết Advanced rồi nhấn nút Next trong cửa số mới xuất hiện.<br>\r\n\r\nLúc này công cụ sẽ bắt đầu phát hiện những lỗi xuất hiện trong quá trình Update và tự động khắc phục. Người dùng có thể nhấn vào tùy chọn “View detailed information” để xem chi tiết về các lỗi. Cuối cùng là nhấn nút Close để đóng trình Troubleshooter và khởi động lại máy tính.<br> <hr>\r\n<b>1. Sửa lỗi bằng cách xóa thư mục Updates Download </b> <br>\r\n \r\n\r\nTrong trường hợp quá trình tải về bản cập nhật Windows bị mắc kẹt hoặc bị từ chối khi cài đặt thì rất có thể là các tập tin cập nhật có vấn đề. Để khắc phuc cần xóa thư mục chứa tất cả tập tin cập nhật được lưu trữ. Lúc này Windows Update sẽ tải lại từ đầu và giúp giải quyết những lỗi kể trên.\r\n<br>\r\nĐể xóa tập tin cần nhấn tổ hợp phím Windows Key + R để mở dòng lệnh Run. Tiếp tục hãy nhập vào Run đường dẫn C:WindowsSoftwareDistributionDownload rồi nhấn OK để truy xuất thư mục chứa các tập tin cập nhật của hệ thống.Khi thấy xuất hiện các tệp tin trong thư mục này, nhấn Ctrl + A để chọn tất cả rồi nhấn phím Delete. Lưu ý, tuyệt đối không được xóa chính thư mục đó.<br>\r\n\r\nTrong trường hợp có tập tin nào báo lỗi không thể xóa được hãy thử khởi động máy tính ở chế độ Safe Mode rồi thực hiện thao tác xóa tương tự. Khi đã xóa được thành công, hãy khởi động lại máy tính rồi chạy Windows Update.<br> <hr>\r\n<b> 2. Sửa lỗi bằng cách vô hiệu hóa chương trình antivirus </b> <br>\r\nThường các phần mềm antivirus không can thiệp vào quá trình cập nhật nhưng cũng không ngoại trừ khả năng này. Vậy nên tốt nhất nên tạm thời vô hiệu hóa chúng để giải quyết vấn đề laptop bị lỗi update.<br>\r\n\r\nMỗi chương trình chống virus sẽ có phương pháp vô hiệu hóa riêng, tuy nhiên cách đơn giản nhất là mở chương trình đó lên và tắt nó đi. Nếu không thể nhìn thấy nút đóng chương trình, hãy tìm trong mục Settings hoặc chọn mục Options trong chương trình đó. Hoặc nhấn chuột phải vào biểu tượng của chương trình chống virus trong khay hệ thống để có thể tìm thấy các tùy chọn để vô hiệu hóa ở đó.\r\n<br>\r\nNgắt kết nối ổ đĩa gắn ngoài, vô hiệu hóa VPN\r\nLaptop bị lỗi update cũng có thể là do các thiết bị lưu trữ gắn ngoài như ổ DVD, ổ USB hay đầu đọc thẻ. Do đó, hãy thử gỡ bỏ các ổ đĩa đó bằng cách thông thường là chọn biểu tượng Safely Remove Hardware nằm ở khay hệ thống. Hoặc có thể chọn mục Device Manager trong Control Panel của Windows, click chuột phải vào ổ đĩa tương ứng cần gỡ bỏ trong mục Disk Drives rồi chọn Disable.\r\n<br>\r\nTrong trường quá trình Windows Update có những thông báo lỗi cụ thể như 0x80200056 hay 0x800F0922 thì có thể đường truyền mạng Internet có vấn đề. Lúc này, cách giải quyết là hãy vô hiệu hóa các dịch vụ VPN đang chạy trên máy tính.<br>\r\nNguồn: techz.vn', 'laptop-update.jpg'),
(30, 13, 'Từ phạm nhân thành thiên tài toán học', '12/7/2020', '\r\nSau khi vào tù, Christopher Havens tự học toán cao cấp, giải các bài toán khó và chia sẻ đam mê với các bạn tù. <br>\r\nCuộc đời của Christopher Havens từng là một chuỗi thất bại. Người đàn ông 40 tuổi từng bị đuổi học thời phổ thông, không việc làm và rơi vào cảnh nghiện ngập. Năm 2011, Haves bị tòa án Washington kết án 25 năm tù vì phạm tội giết người.<br>\r\nTrong tù, cuộc đời Havens thay đổi sau khi anh tìm thấy tình yêu với toán học. Mỗi ngày, anh học 10 tiếng và tự mày mò học toán cao cấp. Tháng 1/2013, anh viết thư gửi tới các nhà xuất bản và hỏi xin vài ấn phẩm của tạp chí toán học Annals of Mathematics. Trong thư, Havens viết rằng những con số đã trở thành sứ mệnh của mình và anh muốn dành thời gian trong tù để cải thiện bản thân. Tuy nhiên, Havens không có ai để cùng thảo luận những chủ đề toán phức tạp.\r\nNhận thư của Havens, biên tập viên của nhà xuất bản Mathematica Science khi đó là Matthew Cargo lập tức liên hệ với Marta Cerruti, phó giáo sư kỹ thuật vật liệu ở Đại học McGill, Montreal (Canada). Bố Marta là giáo sư toán học Umberto Cerruti ở Đại học Torino (Italy). Ban đầu, giáo sư Cerruti hoài nghi Havens, nghĩ anh chỉ là một kẻ tầm thường với những ý tưởng sai lệch. Tuy vậy, nghe con gái nài nỉ, ông viết thư trả lời Havens và gửi cho người tù một bài toán để kiểm tra trình độ. Ít lâu sau, giáo sư Cerruti nhận được một tờ giấy dài 1,2 mét với những công thức dài, phức tạp. Nhập các công thức này vào máy tính, giáo sư Cerruti nhận ra Havens đã giải đúng bài toán.<br>\r\nNhanh chóng, giáo sư Cerruti mời Havens tham gia giải một toán cổ liên quan đến liên phân số do mà chính ông đã cố làm từ lâu mà chưa thành công. Liên phân số là một dạng biểu diễn các số thực dương, cả hữu tỷ và vô tỷ, dưới dạng một phân số nhiều tầng. Chỉ với giấy và bút chì, Havens cùng trao đổi với giáo sư Cerruti qua thư từ và tìm ra phát hiện ra kết quả gần đúng của một tập hợp số. \"Kết quả này có thể mở ra lĩnh vực nghiên cứu mới trong lý thuyết số. Tìm ra cách viết số mới cũng là một trong những vấn đề quan trọng nhất đối với người nghiên cứu lý thuyết số, kể cả khi chưa thể áp dụng ngay\", Marta nhận định. Giáo sư Cerruti giúp Havens viết bài báo khoa học hoàn chỉnh và gửi tới tạp chí toán. Tháng 1/2020, công trình của hai người được đăng trên tờ Research in Number Theory.<br>\r\nKhông chỉ giải được bài toán cổ, Havens còn truyền cảm hứng cho các tù nhân và lập nên một nhóm toán học gồm 14 thành viên. Mỗi năm, họ tổ chức ăn mừng vào ngày 14/3, hay còn gọi là Ngày số Pi. Giáo sư Cerruti cũng đến tham dự một lần và kinh ngạc khi một tù nhân ghi nhớ được 461 số thập phân của số Pi. Trong 16 năm còn lại của hạn tù, Havens muốn tiếp tục nghiên cứu các vấn đề toán học khác. Anh tin rằng làm toán là cách \"trả món nợ cho xã hội\". Havens cũng hy vọng sau khi được tự do, anh có thể lấy bằng đại học Toán và thành lập tổ chức toán học cho những tù nhân đam mê môn khoa học này.<br>\r\n-------<br>\r\ntrích: https://vnexpress.net/tu-pham-nhan-thanh-thien-tai-toan-hoc-4125597.html', 'tu_nhan_thien_tai.jpg'),
(31, 13, 'Loạt laptop cấu hình `ngon` giảm giá mạnh sau Covid-19', '12/7/2020', '<b>Laptop Asus Vivobook X407MA-BV043T Celeron N4000\r\n</b>  <br>\r\nHiện laptop Asus Vivobook đang được giảm 13%, từ 6.990.000 đồng xuống còn 6.099.000. Đây là mẫu laptop phổ thông, được thiết kế nhỏ gọn phù hợp với nhu cầu giải trí và xử lý các công việc điện toán hàng ngày.<br>\r\nCấu hình máy:<br>\r\n<br>\r\n-Chip: Intel Celeron N4000 <br>(1.1GHz Up to 2.6Ghz, 2 Cores 2 Threads, 4MB Cache L3).<br>\r\n-RAM: 4GB DDR4 2400MHz.\r\nỔ cứng: 1TB HDD 5400rpm.<br>\r\n-Chipset đồ họa: Intel UHD Graphics 600.<br>\r\n-Màn hình: 14 inch HD (1366 x 768) (16:9) LED backlit 60Hz Anti-Glare Panel with 45% NTSC.<br>\r\n-Hệ điều hành: Windows 10 Home.<br>\r\n-Pin: 3 Cell 33 Whrs.<br>\r\n<br>\r\n<b>Lenovo Ideapad 320-14ISK\r\n</b><br>\r\nĐây là chiếc laptop phù hợp với các bạn sinh viên hiện nay. Với hiệu năng ổn định, trọng lượng máy nhẹ, chạy mượt, giúp người dùng có những trải nghiệm tốt nhất.<br>\r\nCấu hình máy:<br>\r\n\r\n-Chip: Intel Core i3-6006U <br>\r\n-Processor (3M Cache, 2.00 GHz).<br>\r\n-RAM: 4G DDR4 2133 MHz.<br>\r\n-Ổ cứng: 500GB HDD 5400 rpm.<br>\r\n-Chipset đồ họa: Intel HD <br>Graphics 520.\r\n-Màn hình: 14 inch HD (1366 x 768) LED Backlit.<br>\r\n-Hệ điều hành: Windows 10 Home.<br>\r\n-Pin: 2 Cell.<br>\r\n<br>\r\n<b>Acer Aspire 5 A515-53-3153\r\n</b><br>\r\nDòng máy Acer này có hiệu năng vô cùng đáng nể so với các máy cùng tầm giá. Với ổ cứng Optane siêu mượt, giúp đáp ứng công việc một cách trôi chảy nhất.\r\n<br>\r\nVới phần cứng tốt, những người đòi hỏi phải làm những công việc khối lượng nhiều bằng lap. Acer Aspire 5 A515-53-3153 là chiếc máy lí tưởng.<br>\r\nCấu hình máy:<br>\r\n-CPU: Intel Core i3-8145U (2.1 GHz - 3.9 GHz / 4MB / 2 nhân, 4 luồng).<br>\r\n-Màn hình: 15.6\" (1920 x 1080) không cảm ứng.<br>\r\n-RAM: 1 x 4GB Onboard DDR4 2133MHz (1 Khe cắm / Hỗ trợ tối đa 12GB).<br>\r\n-Đồ họa: Intel UHD Graphics 605.<br>\r\n-Lưu trữ: 1TB HDD 5400RPM.<br>\r\n-Hệ điều hành: Windows 10 Home SL 64-bit.<br>\r\n-Pin: 3 cell 43 Wh Pin liền.\r\n<br>\r\n<br>\r\n<b>HP Envy X360 13-AR0071AU\r\n</b><br>\r\nEnvy X360 là dòng máy cao cấp mới nhất của HP, với thiết kế mỏng nhẹ và hiệu năng khủng. Ngoài ra, máy sở hữu màn hình cao cấp, khiến ENVY X360 chạy mượt mà trong các ứng dụng Sketchup và illustration, các thao tác vẽ trên màn hình sẽ trở nên cực kì chính xác.<br>\r\n\r\nĐây là dòng máy mà các team đồ họa không thể bỏ qua. Mức giá đang giảm đến hơn 20%.\r\n<br>\r\nCấu hình máy:<br>\r\n-Hệ điều hành : Windows 10 Home SL.<br>\r\n-Bộ vi xử lý : AMD Ryzen 5 3500U with Radeon Vega 8 Graphics (2.1 GHz base clock, up to 3.7 GHz max boost clock, 6 MB cache, 4 cores).<br>\r\n-Màn hình : 3.3\" FHD (1920 x 1080) IPS micro-edge WLED-backlit Touch Screen with Corning Gorilla Glass NBT, 72% Colour Gamut.<br>\r\n-Đồ họa : AMD Radeon Vega 8 Graphics.<br>\r\n-Bộ nhớ Ram ; 8 GB DDR4-2400 SDRAM (onboard).<br>\r\n-Ổ đĩa cứng : 256 GB PCIe NVMe M.2 SSD.<br>', 'lap_top_re.jpg'),
(32, 13, 'Thương mại điện tử - xu thế đón đầu thời đại 4.0', '12/7/2020', 'Trong những năm trở lại đây, số lượng người truy cập internet đã tăng lên nhanh chóng. Sự phát triển của internet đã làm chuyển biến dần hình thức kinh doanh thương mại truyền thống sang hình thức kinh doanh thương mại toàn cầu thông qua các thiết bị điện tử thông minh như điện thoại và máy tính.\r\n<br>\r\nHình thức kinh doanh thương mại điện (TMĐT) tử đã không còn quá xa lạ với các doanh nghiệp và lợi ích mà TMĐT đem đến cho các doanh nghiệp cũng như người tiêu dùng là không hề nhỏ. Chính vì thế, các chủ doanh nghiệp, cơ sở sản xuất chế biến và kinh doanh các sản phẩm tiêu dùng ngày càng đang quan tâm nhiều hơn tới việc xây dựng các website và các trang bán hàng trực tuyến.\r\n<br>\r\nVậy thị trường thương mại điện tử tại Việt Nam đang phát triển như thế nào? Và những lợi ích cụ thể thị trường này đem đến cho các doanh nghiệp và khách hàng là gì? Hãy cùng tìm hiểu qua bài viết sau.<br>\r\nTổng quan thị trường thương mại điện tử tại Việt Nam\r\nNgày nay, các hoạt động kinh doanh trên nền tảng internet tại Việt Nam đang được diễn ra vô cùng thuận lợi. Việt Nam hiện là một trong những quốc gia có nền TMĐT lớn nhất thế giới. Theo dự báo của các chuyên gia, trong năm 2020 quy mô nền TMĐT nước ta có thể đạt mốc 15 tỷ USD. Điều này cho thấy thị trường này ở Việt Nam đang có tốc độ tăng trưởng nhanh chóng.\r\nTheo thống kê, tính đến tháng 1/2017, Việt Nam đã có 50,05 triệu người dùng internet (chiếm 53% dân số), tăng 6% so với năm 2016. Số người dùng internet nước ta hiện đang được xếp ở mức cao trên thế giới và có đến 46 triệu người dùng mạng xã hội (chiếm 48% dân số).\r\n<br>\r\nKết quả khảo sát của Cục Thương mại điện tử và Công nghệ đã cho thấy có đến 36% số người tham gia khảo sát dành từ 3 - 5 giờ mỗi ngày cho việc sử dụng internet. Trong đó, máy tính xách tay và điện thoại là hai công cụ phổ biến được người dùng sử dụng nhiều nhất để truy cập internet và tham gia mua sắm trực tuyến hoặc phục vụ nhiều mục đích khác.\r\n<br>\r\nNhóm 5 mặt hàng được giao dịch trực tuyến nhiều nhất trên các website bao gồm:<br>\r\n\r\n● Thời trang (44%)<br>\r\n\r\n● Máy tính và mạng (43%)<br>\r\n\r\n● Quần áo, giày dép và mỹ phẩm (43%)<br>\r\n\r\n● Điện thoại (41%)<br>\r\n\r\n● Hàng điện lạnh và thiết bị gia dụng (25%)<br>\r\n\r\nCác doanh nghiệp trong nước cũng chú trọng hơn đến việc nâng cấp và cập nhật thông tin cho website công ty. Với ưu điểm số lượng người sử dụng cao, chi phí thấp, các hình thức quảng cáo website TMĐT và mạng xã hội đã trở thành một công cụ hữu hiệu để các doanh nghiệp quảng bá website TMĐT của mình. Ngoài ra, hiệu quả của việc quảng cáo website TMĐT qua các công cụ tìm kiếm cũng được phần lớn các doanh nghiệp lại đánh giá cao.\r\n<br>\r\nThương mại điện tử - yếu tố then chốt cho sự phát triển bền vững của doanh nghiệp\r\nƯu điểm của thị trường thương mại điện tử<br>\r\nViệc hình thành và phát triển của TMĐT là kết quả tất yếu của thời đại kinh tế số. Nhờ đó, việc trao đổi dữ liệu giữa người cung cấp và người sử dụng cũng diễn ra nhanh hơn và thuận tiện hơn. Đặc biệt, khi các ngành sản xuất ngày nay thường áp dụng máy móc được tích hợp những tính năng công nghệ thông tin, công nghệ nhân tạo và công nghệ tự động hóa ngày càng phổ biến, thì các doanh nghiệp cần phải nắm bắt và vận dụng tốt lợi thế này.\r\nSo với hình thức kinh doanh truyền thống, việc ứng dụng TMĐT trong kinh doanh đem lại cho doanh nghiệp nhiều lợi ích, giúp cho việc kinh doanh được diễn ra thuận lợi và đạt hiệu quả kinh doanh cao hơn.<br>\r\n\r\n● Hiệu quả trong việc quản lý hàng hóa và dữ liệu khách hàng, giúp nâng cao các chiến lược kinh doanh và chất lượng dịch vụ của doanh nghiệp.<br>\r\n\r\n● Có lượng khách hàng ổn định và dồi dào hơn. Khách hàng có thể dễ dàng tìm kiếm các sản phẩm và dịch vụ của doanh nghiệp với các thông tin chi tiết ngay tại nhà, mà không cần phụ thuộc vào không gian, thời gian.\r\n<br>\r\n● Tiết giảm kinh phí quản lý và thuận tiện trong giao dịch. TMĐT giúp tối ưu hóa các khâu bán hàng, tiết kiệm chi phí nhân công và chi phí quảng cáo. Điều này không chỉ đem lại lợi ích cho doanh nghiệp mà còn cho chính khách hàng. Vì khách hàng sẽ được hưởng những chế độ hậu mãi tốt hơn và được cắt giảm những chi phí không cần thiết.\r\n<br>\r\n● Quảng bá thương hiệu và làm tăng độ uy tín đối với khách hàng thông qua website của doanh nghiệp. Nhờ có TMĐT, người tiêu dùng cũng được tiếp xúc nhiều hơn với đa dạng các mặt hàng của doanh nghiệp.\r\n<br>\r\n● Nâng cao sức cạnh tranh cho doanh nghiệp. Trong thời đại số hóa như hiện nay, khách hàng cũng đòi hỏi mọi thứ phải nhanh hơn và thuận tiện hơn, từ việc cung cấp thông tin, mua hàng đến việc thanh toán. Chính vì thế, việc áp dụng kênh TMĐT là điều hết sức cần thiết trong việc chiếm lĩnh ưu thế thị trường.\r\n<br>\r\nKhi ngành công nghiệp 4.0 đang lên ngôi mạnh mẽ và đang dần chiếm ưu thế, thì đây được xem là thời điểm vàng để các doanh nghiệp Việt Nam nắm bắt cơ hội kinh doanh và đón đầu xu thế thị trường.\r\n<br>\r\nân chơi của sự sáng tạo và đột phá cho mọi doanh nghiệp\r\nĐối với những doanh nghiệp có những ý tưởng sáng tạo, chiến lược quảng bá, tiếp thị tốt và tận dụng tối ưu sự phát triển của công nghệ thông tin sẽ giành được phần thắng trên thị trường cạnh tranh. Chính vì thế, việc đầu tư vào các kênh TMĐT sẽ giúp đem lại cho doanh nghiệp những lợi thế rất lớn.\r\n<br>\r\nTrên thị trường hiện nay có rất nhiều những công ty digital marketing lớn và uy tín, chuyên cung cấp các dịch vụ digital marketing tổng thể, để giúp đưa website và thương hiệu của doanh nghiệp tiếp cận được nhiều đối tác và các khách hàng mục tiêu. On Digitals hiện là một trong những agency digital marketing uy tín hàng đầu tại Việt Nam và là đối tác của nhiều doanh nghiệp lớn. Công ty luôn được các đối tác đánh giá cao bởi các ưu thế như có sự nghiên cứu kỹ lưỡng, đưa ra những chiến lược đem lại hiệu quả cao trong các dự án, dịch vụ SEO, quảng cáo Google Ads và các dịch vụ quảng cáo online khác.', 'TMDTpng.png'),
(33, 14, 'Điều kiện đăng ký thành lập công ty TNHH', '12/7/2020', 'Chia sẻ những thông tin về điều kiện thành lập công ty TNHH, và vốn tối thiểu để thành lập công ty loại hình này cho các chủ doanh nghiệp mới tham khảo. Và qua bài viết này chúng tôi hy vọng bạn sẽ có cái nhìn tổng quan hơn, nắm bắt rõ hơn về loại hình công ty TNHH. <br>\r\nTheo quy định hiện hành điều kiện thành lập công ty TNHH bạn phải có: (i) Thứ nhất, thành viên, chủ sở hữu công ty không thuộc đối tượng quy định tại Điều 18 Luật doanh nghiệp 2014 ví dụ: Công chức, cán bộ theo quy định của pháp luật, Quân nhân chuyên nghiệp, sĩ quan, hạ sĩ quan, công nhân quốc phòng thuộc đơn vị hay cơ quan quân đội nhân dân Việt Nam, Người đang chấp hành án tù hoặc bị tòa án nhân dân xét xử cấm hành nghề kinh doanh, Người bị mất năng lực hay hạn chế về hành vi dân sự,... (ii) Thứ hai, người thực hiện thủ tục đăng ký doanh nghiệp kê khai chung thực thông tin đăng ký doanh nghiệp và đúng biểu mẫu quy định tại thông tư 02/2019/TT-BKHĐT. (iii) Thứ ba, người đại diện theo pháp luật không là người đại diện pháp luật, chủ hộ kinh doanh của đơn vị bị đóng mã số thuế, bỏ trốn khởi trụ sở kinh doanh.\r\n<br>\r\nVới ba điều kiện trên khi đã đáp ứng đủ bạn sẽ chỉ cần chuẩn bị những tài liệu sau để thực hiện thủ tục thành lập công ty: Giấy đề nghị đăng ký doanh nghiệp; Bản dự thảo điều lệ công ty TNHH; Danh sách thành viên đối với công ty TNHH hai thành viên trở lên; Bản sao công chứng CMTND/ hộ chiếu của thành viên công ty và đại diện theo pháp luật công ty.<br>\r\nTheo luật Trí Nam quy trình giải quyết thủ tục thành lập công ty TNHH chỉ 3 – 5 ngày nhưng để công ty có đủ các công cụ cần thiết để kinh doanh như con dấu công ty, hóa đơn GTGT, tài khoản ngân hàng,... chủ doanh nghiệp cần có cái nhìn tổng quát về các công việc cần làm khi thành lập công ty TNHH. Nội dung này bạn cũng có thể nhờ các công ty cung cấp dịch vụ thành lập công ty để được hỗ trợ tư vấn, sau đó mới tự triển khai thủ tục thành lập công ty theo quy định. Việc tư vấn cũng giúp cho chủ doanh nghiệp phòng trách việc đăng ký thiếu thông tin dẫn đến công ty khi bắt tay vào kinh doanh lại phát sinh thiếu ngành nghề, vốn điều lệ đăng ký không hợp lý,... dẫn đến phải thay đổi đăng ký kinh doanh trước khi kinh doanh. Tại công ty luật Trí Nam giá dịch vụ thành lập công ty trọn gói chỉ 1.400.000đ đảm bảo nhanh và uy tín, đây cũng là lựa chọn mà bạn nên sử dụng nếu muốn nhanh chóng bắt đầu kinh doanh theo mô hình công ty TNHH.', 'thanh_lap_cong_ty.jpg'),
(34, 14, 'Cơ hội và thách thức của thị trường tài chính trong nước sau Covid 19', '12/7/2020', 'Dịch Covid 19 làm cho nền kinh tế của nhiều quốc gia trên thế giới bị ảnh hưởng trong đó có Việt Nam. Tuy nhiên trong những diễn biến phức tạp của dịch bệnh, Việt Nam nổi lên là quốc gia phòng chống dịch có hiệu quả tạo điều kiện cho kinh tế xã hội được phát triển trở lại. Chính vì thế mà các nhà giao dịch trong lĩnh vực tài chính tận dụng cơ hội này để đầu tư sinh lời rất hiệu quả. <br>\r\nSự phát triển của thị trường chứng khoán, tài chính đang thu hút được rất nhiều nhà giao dịch lớn. Sức thu hút nguồn vốn đầu tư nước ngoài thông qua thị trường chứng khoán cho phép các doanh nghiệp dễ dàng tiếp cận từ đó có sự đầu tư cao hơn để có thể thu được nguồn lợi nhuận cao. \r\n<br>\r\ncC rất nhiều cơ hội để bạn có thể đầu tư tài chính vì thế việc chọn lựa được sàn giao dịch uy tín là điều rất cần thiết. Kèm theo đó là sự chuẩn bị về kinh tế, hạn chế mức rủi ro khi chưa nắm bắt được tình hình thị trường. Sàn môi giới chứng khoán là nơi tạo điều kiện  giúp bạn có thể thoải mái “mua bán” và kiếm lợi nhuận. Trong số những sàn giao dịch lớn thì FXTM là sàn giao dịch được nhiều người lựa chọn. Sàn giao dịch này được tin chọn vì độ an toàn cao, tốc độ giao dịch giao dịch nhanh chóng và thông tin luôn được cập nhật chính xác.\r\n<br>\r\nSàn giao dịch có thể mang lại hiệu quả là khi bạn biết chọn thời cơ, vững vàng về kinh tế cũng như có một “sân đấu” cực kỳ uy tín. Hiện nay có rất nhiều người có nhu cầu đầu tư tiền ngoại hối kéo theo sự thành lập của rất nhiều sàn giao dịch trên các trang mạng. Điều này dẫn đến tình trạng lạm dụng, lừa đảo làm mất niềm tin ở người chơi. \r\nNgoài cơ hội tốt thì thị trường chứng khoán tại Việt Nam cũng đang gặp phải những thách thức. Điều đầu tiên đó chính là thể chế kinh tế số ngân hàng số còn chậm, có những rủi ro xuất phát từ bên ngoài làm ảnh hưởng lớn đến thị trường chứng khoán. Bởi vì các sàn giao dịch chưa được kiểm soát và được bảo vệ chặt chẽ cho nên tình hình an ninh mạng cũng sẽ còn gặp những vấn đề trục trặc. \r\n<br>\r\nĐể có thể tham gia vào thị trường tài chính thì việc bạn cần chuẩn bị không chỉ về kinh tế mà còn biết nắm bắt được cơ hội. Sẵn sàng đối mặt với thách thức và lựa chọn được sàn giao dịch tốt nhất, uy tín nhất.', 'thi_truongtc.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_album_loai` (`id_loai_album`);

--
-- Chỉ mục cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `FK_Comment_tintuc` (`id_tin_tuc`);

--
-- Chỉ mục cho bảng `tbl_goc_hoc_tap`
--
ALTER TABLE `tbl_goc_hoc_tap`
  ADD PRIMARY KEY (`id_goc_hoc_tap`);

--
-- Chỉ mục cho bảng `tbl_loai_album`
--
ALTER TABLE `tbl_loai_album`
  ADD PRIMARY KEY (`id_loai_album`);

--
-- Chỉ mục cho bảng `tbl_loai_tin_tuc`
--
ALTER TABLE `tbl_loai_tin_tuc`
  ADD PRIMARY KEY (`id_loai_tin_tuc`);

--
-- Chỉ mục cho bảng `tbl_nha_sang_lap`
--
ALTER TABLE `tbl_nha_sang_lap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  ADD PRIMARY KEY (`id_tin_tuc`),
  ADD KEY `FK_loai_tin_tuc` (`id_loai_tin_tuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_comment` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_goc_hoc_tap`
--
ALTER TABLE `tbl_goc_hoc_tap`
  MODIFY `id_goc_hoc_tap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_loai_album`
--
ALTER TABLE `tbl_loai_album`
  MODIFY `id_loai_album` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_loai_tin_tuc`
--
ALTER TABLE `tbl_loai_tin_tuc`
  MODIFY `id_loai_tin_tuc` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_nha_sang_lap`
--
ALTER TABLE `tbl_nha_sang_lap`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  MODIFY `id_tin_tuc` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD CONSTRAINT `FK_album_loai` FOREIGN KEY (`id_loai_album`) REFERENCES `tbl_loai_album` (`id_loai_album`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `FK_Comment_tintuc` FOREIGN KEY (`id_tin_tuc`) REFERENCES `tbl_tin_tuc` (`id_tin_tuc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  ADD CONSTRAINT `FK_loai_tin_tuc` FOREIGN KEY (`id_loai_tin_tuc`) REFERENCES `tbl_loai_tin_tuc` (`id_loai_tin_tuc`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
