-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2020 lúc 07:34 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uml_category`
--

CREATE TABLE `uml_category` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `category_slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `category_parentid` int(11) UNSIGNED NOT NULL,
  `category_order` int(11) UNSIGNED NOT NULL,
  `category_icon` varchar(255) CHARACTER SET latin1 NOT NULL,
  `category_metakey` varchar(255) CHARACTER SET utf8 NOT NULL,
  `category_metadesc` varchar(255) CHARACTER SET utf8 NOT NULL,
  `category_createdat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `category_createdby` int(11) UNSIGNED NOT NULL,
  `category_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `category_updatedby` int(11) UNSIGNED NOT NULL,
  `category_status` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `uml_category`
--

INSERT INTO `uml_category` (`category_id`, `category_name`, `category_slug`, `category_parentid`, `category_order`, `category_icon`, `category_metakey`, `category_metadesc`, `category_createdat`, `category_createdby`, `category_updatedat`, `category_updatedby`, `category_status`) VALUES
(31, 'CONVERSE', 'converse', 0, 0, '', '', '', '2020-12-04 00:36:22', 1, '2020-12-04 00:36:22', 1, 1),
(32, 'RENEW', 'renew', 31, 0, '', '', '', '2020-12-04 00:39:01', 1, '2020-12-04 00:39:01', 1, 1),
(33, 'CX', 'cx', 31, 0, '', '', '', '2020-12-04 00:39:19', 1, '2020-12-04 00:39:19', 1, 1),
(34, 'CLASSIC', 'classic', 31, 0, '', '', '', '2020-12-04 00:39:34', 1, '2020-12-04 00:39:34', 1, 1),
(35, 'CHUCK 70S', 'chuck-70s', 31, 0, '', '', '', '2020-12-04 00:39:47', 1, '2020-12-04 00:39:47', 1, 1),
(36, 'ONE STAR', 'one-star', 31, 0, '', '', '', '2020-12-04 00:40:09', 1, '2020-12-04 00:40:09', 1, 1),
(37, 'ADIDAS', 'adidas', 0, 0, '', '', '', '2020-12-04 00:43:44', 1, '2020-12-04 00:43:44', 1, 1),
(38, 'STAN SMITH', 'stan-smith', 37, 0, '', '', '', '2020-12-04 00:44:01', 1, '2020-12-04 00:44:01', 1, 1),
(39, 'ULTRABOOST', 'ultraboost', 37, 0, '', '', '', '2020-12-04 00:44:22', 1, '2020-12-04 00:44:22', 1, 1),
(40, 'YEEZY', 'yeezy', 37, 0, '', '', '', '2020-12-04 00:45:17', 1, '2020-12-04 00:45:17', 1, 1),
(41, 'NMD', 'nmd', 37, 0, '', '', '', '2020-12-04 00:45:27', 1, '2020-12-04 00:45:27', 1, 1),
(42, 'SUPER STAR', 'super-star', 37, 0, '', '', '', '2020-12-04 00:45:46', 1, '2020-12-04 00:45:46', 1, 1),
(43, 'NIKE', 'nike', 0, 0, '', '', '', '2020-12-04 03:19:00', 1, '2020-12-04 03:19:00', 1, 1),
(44, 'AIR FORCE 1', 'air-force-1', 43, 0, '', '', '', '2020-12-04 03:19:29', 1, '2020-12-04 03:19:29', 1, 1),
(45, 'AIR JORDAN', 'air-jordan', 43, 0, '', '', '', '2020-12-04 03:20:05', 1, '2020-12-04 03:20:05', 1, 1),
(46, 'AIR MAX', 'air-max', 43, 0, '', '', '', '2020-12-04 03:20:18', 1, '2020-12-04 03:20:18', 1, 1),
(47, 'VANS', 'vans', 0, 0, '', '', '', '2020-12-04 03:20:37', 1, '2020-12-04 03:20:37', 1, 1),
(48, 'OLD SKOOL', 'old-skool', 47, 0, '', '', '', '2020-12-04 03:20:52', 1, '2020-12-04 03:20:52', 1, 1),
(49, 'ERA', 'era', 47, 0, '', '', '', '2020-12-04 03:21:04', 1, '2020-12-04 03:21:04', 1, 1),
(50, 'SK8', 'sk8', 47, 0, '', '', '', '2020-12-04 03:21:16', 1, '2020-12-04 03:21:16', 1, 1),
(51, 'PUMA', 'puma', 0, 0, '', '', '', '2020-12-04 03:23:11', 1, '2020-12-04 03:23:11', 1, 1),
(52, 'BTS COURT', 'bts-court', 51, 0, '', '', '', '2020-12-04 03:23:30', 1, '2020-12-04 03:23:30', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uml_contact`
--

CREATE TABLE `uml_contact` (
  `contact_id` int(11) NOT NULL,
  `contact_fullname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `contact_email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `contact_phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `contact_detail` text CHARACTER SET utf8 NOT NULL,
  `contact_createdat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `contact_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `contact_updatedby` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `contact_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `uml_contact`
--

INSERT INTO `uml_contact` (`contact_id`, `contact_fullname`, `contact_email`, `contact_phone`, `contact_detail`, `contact_createdat`, `contact_updatedat`, `contact_updatedby`, `contact_status`) VALUES
(1, 'Lê Tú Hoàng', 'hotboyld99@gmail.com', '0869695431', 'xin chào', '2020-12-04 05:42:27', '2020-12-03 22:08:07', 1, 2),
(2, 'Trần Xuân Bắc', 'boye.2904@gmail.com', '0869695431', 'hello', '2020-12-04 05:42:45', '2020-12-03 22:08:13', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uml_menu`
--

CREATE TABLE `uml_menu` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `menu_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `menu_link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `menu_parentid` int(11) UNSIGNED NOT NULL,
  `menu_order` int(11) UNSIGNED NOT NULL,
  `menu_position` varchar(255) CHARACTER SET utf8 NOT NULL,
  `menu_createdat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `menu_createdby` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `menu_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `menu_updatedby` int(11) NOT NULL,
  `menu_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `uml_menu`
--

INSERT INTO `uml_menu` (`menu_id`, `menu_name`, `menu_link`, `menu_parentid`, `menu_order`, `menu_position`, `menu_createdat`, `menu_createdby`, `menu_updatedat`, `menu_updatedby`, `menu_status`) VALUES
(1, 'Trang Chủ', 'index.php', 0, 0, 'mainmenu', '2019-06-10 21:00:00', 1, '2020-12-04 03:45:19', 1, 1),
(2, 'Giới Thiệu', 'index.php?option=post&id=gioi-thieu', 0, 3, 'mainmenu', '2019-06-10 21:00:00', 1, '2020-12-04 03:44:24', 1, 1),
(3, 'Cửa Hàng', 'index.php?option=product', 0, 1, 'mainmenu', '2019-06-10 21:00:00', 1, '2020-12-04 03:44:16', 1, 1),
(4, 'Tin Tức', 'index.php?option=post&cat=tin-tuc', 0, 2, 'mainmenu', '2019-06-10 21:00:00', 1, '2020-12-04 03:44:20', 1, 1),
(5, 'Liên Hệ', 'index.php?option=contact', 0, 4, 'mainmenu', '2019-06-10 21:00:00', 1, '2020-12-04 03:45:25', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uml_order`
--

CREATE TABLE `uml_order` (
  `order_id` int(23) UNSIGNED NOT NULL,
  `order_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `order_address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `order_phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `order_email` varchar(20) CHARACTER SET utf8 NOT NULL,
  `order_another` int(11) NOT NULL DEFAULT 0,
  `order_deliveryname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `order_deliveryaddress` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `order_deliveryphone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `order_deliveryemail` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `order_notes` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_createdat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_updatedat` timestamp NULL DEFAULT NULL,
  `order_updatedby` int(11) DEFAULT 0,
  `order_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uml_orderdetail`
--

CREATE TABLE `uml_orderdetail` (
  `orderdetail_id` int(11) UNSIGNED NOT NULL,
  `orderdetail_orderid` int(11) UNSIGNED NOT NULL,
  `orderdetail_productid` int(11) UNSIGNED NOT NULL,
  `orderdetail_price` float(12,0) NOT NULL,
  `orderdetail_quantity` int(11) UNSIGNED NOT NULL,
  `orderdetail_amount` float(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `uml_orderdetail`
--

INSERT INTO `uml_orderdetail` (`orderdetail_id`, `orderdetail_orderid`, `orderdetail_productid`, `orderdetail_price`, `orderdetail_quantity`, `orderdetail_amount`) VALUES
(1, 1, 1, 9290000, 1, 9290000),
(2, 2, 2, 23990000, 2, 47980000),
(3, 2, 1, 9290000, 1, 9290000),
(4, 3, 1, 9290000, 1, 9290000),
(5, 3, 3, 3490000, 1, 3490000),
(6, 4, 2, 23990000, 1, 23990000),
(7, 4, 5, 4900000, 1, 4900000),
(8, 5, 3, 3490000, 3, 10470000),
(9, 5, 2, 23990000, 1, 23990000),
(10, 6, 122, 3800000, 1, 3800000),
(11, 6, 54, 8700000, 1, 8700000),
(12, 6, 55, 30000000, 1, 30000000),
(13, 7, 59, 14800000, 1, 14800000),
(14, 7, 23, 17100000, 1, 17100000),
(15, 7, 22, 18700000, 1, 18700000),
(16, 7, 12, 6000000, 1, 6000000),
(17, 8, 115, 13600000, 1, 13600000),
(18, 8, 121, 23900000, 1, 23900000),
(19, 9, 124, 7400000, 1, 7400000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uml_post`
--

CREATE TABLE `uml_post` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `post_topid` int(11) UNSIGNED DEFAULT NULL,
  `post_title` varchar(10000) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_detail` text NOT NULL,
  `post_img` varchar(255) DEFAULT NULL,
  `post_type` varchar(100) DEFAULT 'post',
  `post_metakey` varchar(255) NOT NULL,
  `post_metadesc` varchar(255) NOT NULL,
  `post_createdat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_createdby` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `post_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_updatedby` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `post_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `uml_post`
--

INSERT INTO `uml_post` (`post_id`, `post_topid`, `post_title`, `post_slug`, `post_detail`, `post_img`, `post_type`, `post_metakey`, `post_metadesc`, `post_createdat`, `post_createdby`, `post_updatedat`, `post_updatedby`, `post_status`) VALUES
(1, 0, 'Giới Thiệu', 'gioi-thieu', '<h2>Tầm nhìn</h2><p>&nbsp;</p><p>Cùng với sự phát triển của xã hội và thị trường công nghệ, Công ty Cổ phần Bán lẻ Kỹ thuật số FPT đã, đang và sẽ nỗ lực không ngừng để trở thành đối tác uy tín đối với các nhà sản xuất Kỹ thuật số hàng đầu thế giới, đồng thời là điểm đến tin cậy của khách hàng Việt Nam.</p><p>&nbsp;</p><h2>Sứ mệnh</h2><p>&nbsp;</p><p>Với mục tiêu mở rộng độ phủ cửa hàng trên toàn quốc, Công ty Cổ phần Bán lẻ Kỹ thuật số FPT hướng tới trở thành Hệ thống bán lẻ các sản phẩm Viễn thông Kỹ thuật số hàng đầu Việt Nam. Cùng với quy mô ngày càng lớn, FPT Shop sẽ cung cấp tới mọi tầng lớp khách hàng những trải nghiệm mua sắm tích cực, thông qua các sản phẩm Kỹ thuật số chính hãng chất lượng cao, giá cả cạnh tranh đi kèm dịch vụ chăm sóc khách hàng thân thiện, được đảm bảo bởi uy tín của doanh nghiệp.</p><p>&nbsp;</p><h2>Giá trị cốt lõi</h2><p>&nbsp;</p><ul><li><strong>Chất lượng:&nbsp;</strong>Luôn đi đầu trong việc gây dựng uy tín, trách nhiệm để đảm bảo chất lượng sản phẩm, FPT Retail đem đến cho khách hàng sự an tâm tuyệt đối khi mua sắm các sản phẩm công nghệ.</li><li><strong>Tin cậy:&nbsp;</strong>: Chữ “tín” chính là điều mà FPT Retail luôn chú trọng trong hoạt động phát triển thương hiệu, là điểm tựa niềm tin vững chắc cho khách hàng, là đối tác tin cậy với các hãng công nghệ.</li><li><strong>Thân thiện:&nbsp;</strong>Hình ảnh FPT Retail thân thiện với khách hàng và tích cực trong các hoạt động cộng đồng chính là hướng đi lâu dài.</li><li><strong>Chăm sóc:&nbsp;</strong>Với mục tiêu phục vụ khách hàng là ưu tiên số một, FPT Retail đang ngày càng hoàn thiện hơn chất lượng dịch vụ, đào tạo đội ngũ nhân viên nhiệt tình, trung thực, chân thành, làm hài lòng bất cứ khách hàng nào đến mua sắm.</li></ul><h2>Giới thiệu chung</h2><p>Công ty Cổ phần Bán lẻ Kỹ thuật số FPT (gọi tắt là FPT Retail) được thành lập từ năm 2012 tại Việt Nam, là một thành viên của Tập đoàn FPT, sở hữu 2 chuỗi bán lẻ là FPT Shop và F.Studio By FPT với tổng số cửa hàng là 500 trên khắp 63 tỉnh thành (tính đến tháng 4/2018).</p><ul><li><strong>Hệ thống bán lẻ FPT Shop</strong> là chuỗi chuyên bán lẻ các sản phẩm kỹ thuật số di động bao gồm điện thoại di động, máy tính bảng, laptop, phụ kiện và dịch vụ công nghệ… FPT Shop là hệ thống bán lẻ đầu tiên ở Việt Nam đuợc cấp chứng chỉ ISO 9001:2000 về quản lý chất luợng theo tiêu chuẩn quốc tế. Hiện nay, FPT Shop là chuỗi bán lẻ lớn thứ 2 trên thị trường bán lẻ hàng công nghệ.</li><li><strong>Chuỗi cửa hàng F.Studio By FPT: </strong>Là chuỗi cửa hàng được ủy quyền chính thức của Apple tại Việt Nam ở cấp độ cao cấp nhất, chuyên kinh doanh các sản phẩm chính hãng của Apple. FPT Retail là công ty đầu tiên có chuỗi bán lẻ với đầy đủ mô hình cửa hàng của Apple bao gồm: Cấp 1 là APR (Apple Premium Reseller), cấp 2 AAR (Apple Authorised Reseller) và iCorner, mang đến cho khách hàng không gian tuyệt vời để trải nghiệm những sản phẩm công nghệ độc đáo, tinh tế của Apple cùng dịch vụ bán hàng và chất lượng chăm sóc khách hàng cao cấp và thân thiện nhất.</li></ul><p>Trong suốt nhiều năm qua, bằng những nỗ lực không mệt mỏi,&nbsp;trung thành với chính sách “tận tâm phục vụ khách hàng”, FPT Retail quyết tâm hoạt động, xây dựng phong cách phục vụ khách hàng cho tất cả các mảng kinh doanh dù mới hay cũ, lấy đó làm nền tảng tăng trưởng bền vững, hoàn thiện hình ảnh một thương hiệu gần gũi, thân thiện và hướng tới mục tiêu phục vụ khách hàng là ưu tiên hàng đầu .</p><p>Luôn đặt khách hàng làm trung tâm trong mọi suy nghĩ và hành động, FPT Shop đã xây dựng được một đội ngũ nhân viên với phong cách làm việc chuyên nghiệp, nhiệt tình và tận tâm với khách hàng. Bên cạnh đó, chúng tôi đã, đang và sẽ tiếp tục xây dựng&nbsp;trung tâm kinh doanh trực tuyến hiện đại nhất để khách hàng có thể tìm thấy FPT Shop dễ dàng và nhanh nhất.</p><p>Sự đầu tư nghiêm túc và nỗ lực không ngừng của FPT Retail đã được cộng đồng ghi nhận qua số lượt khách hàng đến tham quan mua sắm tăng mạnh và ổn định trong suốt nhiều năm qua.&nbsp;Sau 6 năm hoạt động, FPT Retail đã tạo dựng được niềm tin nơi Quý khách hàng&nbsp;khi là nhà bán lẻ đứng thứ 1 về thị phần máy tính xách tay tại Việt Nam (từ năm 2015 đến nay), đứng thứ 2 về thị phần điện thoại và là nhà bán lẻ Apple chính hãng hàng đầu tại Việt Nam với đầy đủ các chuẩn cửa hàng từ cấp độ cao nhất APR và là top 4 nhà bán lẻ hàng đầu Việt Nam.</p><p>Kết thúc năm 2017, FPT Shop đạt doanh thu 13.147 tỉ đồng, lợi nhuận trước thuế đạt 363 tỉ đồng. Trong đó, doanh thu bán hàng trực tuyến đạt 2,034 tỉ đồng, tăng trưởng 68% so với năm 2016 và chiếm 15.47% tổng doanh thu của công ty.</p><p>FPT Retail cũng vinh dự được nhận nhiều giải thưởng: Top 100 giải thưởng “Sản phẩm, dịch vụ uy tín chất lượng” do người tiêu dùng bình chọn (Hội Tiêu chuẩn và bảo vệ người tiêu dùng Việt Nam tổ chức), được vinh danh Thương hiệu mạnh Việt Nam liên tiếp trong 3 năm 2013, 2014, 2015&nbsp; và năm 2017 (Thời báo Kinh tế Việt Nam tổ chức), Nhà bán lẻ được yêu thích nhất 2016 do Thời báo Kinh tế VN bình chọn. Tính đến tháng 7/2017, FPT Retail lọt vào Top 4 nhà bán lẻ hàng đầu ở Việt Nam, Top 500 nhà bán lẻ hàng đầu Châu Á – Thái Bình Dương (Retail Asia). Tháng 11/2017, FPT Retail đã lọt Top 10 nhà bán lẻ uy tín do Công ty cổ phần Báo cáo đánh giá VN (Vietnam Report) và báo điện tử Vietnamnet tiến hành khảo sát. Theo Euromonitor và Retail Asia Publishing, với doanh thu 15.717 USD / m2, FPT Retail là nhà bán lẻ hiệu quả nhất Việt Nam.</p>', 'about-us.png', 'page', '', '', '2020-10-03 20:00:00', 1, '2020-12-04 00:52:08', 1, 0),
(2, 0, 'Điều khoản', 'terms', 'ĐIỀU 1: THỜI GIAN HOẠT ĐỘNG CỬA HÀNG\r\n\r\nCửa hàng hoạt động từ 8h đến 22h hàng ngày. Tết và các ngày khác sẽ có thông báo riêng.\r\n\r\nĐIỀU 2: QUY ĐỊNH HÀNG HOÁ, DỊCH VỤ KINH DOANH TẠI CỬA HÀNG\r\n\r\n- Hàng hóa, dịch vụ kinh doanh tại cửa hàng phải phù hợp với các mặt hàng đã đăng ký trong giấy chứng nhận đăng ký kinh doanh và không thuộc danh mục pháp luật cấm kinh doanh.\r\n\r\n- Không kinh doanh hàng nhái, hàng lậu, hàng giả, hàng không rõ nguồn gốc.\r\n\r\n- Hàng hóa có bảo hành thì giấy bảo hành phải ghi rõ thời gian bảo hành và địa điểm bảo hành. Tất cả hàng hóa dịch vụ kinh doanh tại cửa hàng phải có thương mại, giá bán phải niêm yết tại địa điểm kinh doanh bằng VNĐ.\r\n\r\nĐIỀU 3: QUY ĐỊNH VỀ NGƯỜI ĐẾN GIAO DỊCH MUA BÁN, THAM QUAN, THI HÀNH CÔNG VỤ TẠI CỬA HÀNG\r\n\r\n- Mọi người đến cửa hàng giao dịch mua bán, tham quan, thi hành công vụ phải chấp hành nghiêm chỉnh nội quy tại cửa hàng, các quy định pháp luật hiện hành và sự hướng dẫn của cán bộ nhân viên cửa hàng.\r\n\r\n- CBNV cơ quan nhà nước vào cửa hàng để thi hành nhiệm vụ phải thông báo, xuất trình chứng minh nhân dân và các giấy tờ có liên quan đến việc thi hành nhiệm vụ với người có thẩm quyền ở cửa hàng.\r\n\r\nĐIỀU 4: QUY ĐỊNH ĐỐI VỚI CÁN BỘ NHÂN VIÊN CỬA HÀNG\r\n\r\n- Thực hiện đúng chức trách, nhiệm vụ được phân công, có tác phong đúng mực, thái độ hòa nhã, khiêm tốn khi giao tiếp và giải quyết công việc.\r\n\r\n- Hướng dẫn tận tình cho mọi người trong cửa hàng hiểu rõ và chấp hành theo đúng quy định của cửa hàng và các quy định của nhà nước.\r\n\r\n- Nghiêm cấm mọi biểu hiện tiêu cực, gian lận, gây cản trở khó khăn trong kinh doanh của cửa hàng.\r\n\r\n- Nghiêm cấm uống rượu bia, sử dụng chất kích thích trong thời gian thực hiện nhiệm vụ.\r\n\r\nĐIỀU 5: QUY ĐỊNH VỀ ĐẢM BẢO AN TOÀN PHÒNG CHÁY CHỮA CHÁY (PCCC)\r\n\r\n- Mọi người nghiêm chỉnh thực hiện đúng quy định về PCCC, phòng chống cháy nổ, các hiệu lệnh, bảng chỉ dẫn thoát hiểm, bảng cấm theo quy định pháp luật PCCC được đặt treo nơi dễ thấy.\r\n\r\n- Nghiêm cấm mua bán, tàng trữ, vận chuyển, sử dụng các chất, vật liệu, dụng cụ dễ cháy, nổ.\r\n\r\n- Không đun nấu, thắp hương, đốt nến, vàng mã trong cửa hàng.\r\n\r\n- Bộ phận phụ trách về PCCC của cửa hàng có trách nhiệm đôn đốc, kiểm tra mọi người thực hiện tốt các quy định về PCCC. Khi có sự cố xảy ra phải bình tĩnh báo động và tìm cách báo ngay cho phòng cảnh sát PCCC TP.\r\n\r\n- Các hành vi vi phạm về quy định PCCC để xảy ra sự cố phải chịu trách nhiệm trước pháp luật.\r\n\r\nĐIỀU 6: QUY ĐỊNH VỀ ĐẢM BẢO AN NINH TRẬT TỰ TẠI CỬA HÀNG\r\n\r\n- Nghiêm cấm mọi hành vi gây rối trật tự trị an trong phạm vi cửa hàng.\r\n\r\n- Nghiêm cấm tổ chức tham gia đánh đề, hụi, cá cược, bói toán mê tín. Không phổ biến các loại văn hóa phẩm đồi trụy, phản động.\r\n\r\n- Người đang mắc bệnh truyền nhiễm nhưng không áp dụng các biện pháp phòng chống lây lan, người ăn xin, người đang say rượu bia, người đang mắc bệnh tâm thần không được phép vào cửa hàng.\r\n\r\n- Lực lượng bảo vệ trong cửa hàng, trong ca trực có trách nhiệm đảm bảo an ninh, an toàn tài sản, hàng hóa tại cửa hàng, cuối ca trực có bàn giao báo cáo cụ thể tình hình ca trực.\r\n\r\nĐIỀU 7: QUY ĐỊNH VỀ VĂN MINH THƯƠNG MẠI\r\n\r\n- Thực hiện văn minh thương mại: ăn mặc gọn gàng, lịch sự, hòa nhã trong giao tiếp ứng xử với mọi người.\r\n\r\n- Trung thực trong kinh doanh, thực hiện mua bán hàng hóa dịch vụ đúng giá niêm yết tại điểm kinh doanh.\r\n\r\n- Hàng hóa được sắp xếp gọn gàng, ngăn nắp theo khu vực kinh doanh đảm bảo thẩm mỹ, thông thoáng và yêu cầu phòng chống cháy nổ.\r\n\r\nĐIỀU 8: QUY ĐỊNH VỀ XỬ LÝ VI PHẠM TẠI CỬA HÀNG\r\n\r\n- Vi phạm liên quan đến pháp luật, cửa hàng sẽ lập văn bản và chuyển cho cơ quan nhà nước có thẩm quyền xử lý.\r\n\r\n- Vi phạm nội quy cửa hàng: Công ty sẽ có các hình thức phê bình, cảnh cáo, đình chỉ tạm thời, xử lý riêng đối với các cá nhân vi phạm là CBNV công ty.', 'Terms-of-Use.png', 'page', '', '', '2020-10-03 20:00:00', 1, '2020-12-04 00:52:14', 1, 1),
(3, 0, 'CONVERSE X LAYZHANG – SỰ GẮN KẾT GIỮA NGHỆ THUẬT TRUYỀN THỐNG VÀ HIỆN ĐẠI', 'converse-x-layzhang-su-gan-ket-giua-nghe-thuat-truyen-thong-va-hien-dai', '<p><i>(Ngày 03/12/2020)</i></p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/c70-lay-zhang-ho20/01.jpg\"></figure><p><br>&nbsp;</p><p><br>&nbsp;</p><p>Gốm sứ - một lĩnh vực nghệ thuật truyền thống lâu đời đầy giá trị và hôm nay chúng sẽ là nguồn cảm hứng chính để kết hợp với khẩu vị thời trang hiện đại để tạo ra bộ collab giới hạn lần thứ 2 giữa Layzhang và Converse. BST sẽ lên kệ chính thức vào ngày 03/12/2020.</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/c70-lay-zhang-ho20/02.jpg\"></figure><p><br>&nbsp;</p><p><br>&nbsp;</p><p>Một BST Đông Tây giao thoa với tinh thần thúc đẩy ứng dụng giá trị truyền thống có thể đâu đó bị xem là khá cũ kĩ vào lĩnh vực thời trang hiện đại để gần gũi hóa chúng hơn với giới trẻ và hiện đại hóa, phát triển những nền tảng truyền thống vốn có hơn nữa nhưng vẫn giữ vững giá trị nguyên bản của chúng.</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/c70-lay-zhang-ho20/03.jpg\"></figure><p><br>&nbsp;</p><p>&nbsp;</p><p>Bằng dấu ấn Phương Đông – gốm sứ là đề tài chính của BST, họa tiết gốm sứ được bố trí mảng miếng khéo léo ẩn trong lớp đế Converse trong suốt thời thượng “Translucent”. Tổng thể những hình thể chủ đạo hoa sen được tạo ra và thiết kế trên tông xanh đặc trưng của loại gốm sứ truyền thống thể hiện rất thanh tao hoàn chỉnh vibe gốm sứ bằng một silhouette của Converse.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/c70-lay-zhang-ho20/04.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/c70-lay-zhang-ho20/05.jpg\"></figure><p><br>&nbsp;</p><p><br>&nbsp;</p><p>Dải để Icy Blue xu hướng không chỉ thể hiện được bức tranh phương Đông thanh nhã mà chủ nhân Layzhang mang lại, chúng còn kết hợp khăn phụ kiện đính kèm Bandana, một phụ kiện đến từ văn hóa phương Tây được đầu tư tái hiện rõ nét các hình thể hoa sen và họa tiết gốm sứ cùng logo Layzhang.&nbsp;</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/c70-lay-zhang-ho20/06.jpg\"></figure><p><br>&nbsp;</p><p>&nbsp;</p><p>Một tác phẩm Đông Tây giao thoa và là một bản hợp xướng giữa truyền thống và hiện đại để gửi gắm ý niệm hãy phát huy những giá trị lâu đời bằng góc nhìn hiện đại để nghệ thuật được đa dạng hơn và mở rộng hơn nhưng đâu đó hãy giữ lại những giá trị cốt lõi và nguyên bản huyền thoại vốn có để tạo dấu ấn riêng.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/c70-lay-zhang-ho20/07.jpg\"></figure><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/c70-lay-zhang-ho20/08.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/c70-lay-zhang-ho20/09.jpg\"></figure><p><br>&nbsp;</p><p><br>&nbsp;</p><p>BST Converse x Layzhang Chuck 70 sẽ lên kệ từ ngày 03/12/2020 tại cửa hàng Converse VN – Vạn Hạnh Mall với số lượng giới hạn.</p><p>Các bạn có thể xem thêm chi tiết sản phẩm tại đây nhé:</p>', 'converse-x-layzhang-su-gan-ket-giua-nghe-thuat-truyen-thong-va-hien-dai.jpg', 'post', '', '', '2020-10-03 20:00:00', 1, '2020-12-04 00:55:59', 1, 1),
(19, 1, 'THIẾT KẾ ỨNG DỤNG ĐẾ “TRANSPARENT” CONVERSE CX TIẾP TỤC ĐƯỢC RA MẮT TRONG PHỐI MÀU MỚI', 'thiet-ke-ung-dung-de-transparent-converse-cx-tiep-tuc-duoc-ra-mat-trong-phoi-mau-moi', '<figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/converse-cx-oct-chi-nhung/11.jpg\"></figure><p>“Transparency” – Trong Suốt là xu hướng được các nhà mốt lớn phát triển không ít trên các sàn diễn thời trang quốc tế những năm gần đây và ngày càng phổ biến rộng rãi. Và hiển nhiên chúng được ứng dụng không ít lên các nhãn hàng streetwear lớn và xuất hiện trong các bộ collab đình đám như: Converse x OFF-WHITE, Nike Air Vapormax x OFF-WHITE, v.v.. Và Converse đã tiếp tục tận dụng lối thiết kế này làm điểm chính để tạo dựng nền tảng độc đáo táo bạo mới cho 1 silhouette mang tên CX từ đầu năm 2020 đến nay.</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/converse-cx-oct-chi-nhung/02.jpg\"></figure><p>Đế giày ngoài trong suốt, Vải Canvas linh hoạt co giãn và bộ đệm êm siêu nhẹ bên trong vỏ giày CX Foam, 3 yếu tố này sinh ra để làm nên 1 icon CX với phân khúc hoàn toàn mới bổ trợ khái niệm cải tiến trong thời trang Sneaker kết hợp cùng việc di chuyển bền bỉ cho người mang. Và HO20 lần này, Converse CX tiếp tục tận dụng 3 điểm mạnh kết hợp cùng phối màu hợp mắt mùa Holiday sắp tới.&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/converse-cx-oct-chi-nhung/03.jpg\"></figure><p><i>Gót giày luôn có label riêng biệt CX của dòng</i></p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/converse-cx-oct-chi-nhung/04.jpg\"></figure><p>“Midsole” độc quyền CX bọt biển màu cam đặc trưng riêng của dòng Chuck CX mang lại việc nâng đỡ cho bàn chân tốt hơn cũng như kết hợp với dải tape trong suốt để làm nên 1 diện mạo “catchy” hơn</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/converse-cx-oct-chi-nhung/05.jpg\"></figure><p><i>Dải đế trong suốt theo tone màu Icy Blue cực kì hút mắt</i></p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/converse-cx-oct-chi-nhung/06.jpg\"></figure><p><i>Chất liệu canvas co giãn linh hoạt hỗ trợ việc “on-off” dễ dàng hơn khi mang</i></p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/converse-cx-oct-chi-nhung/07.jpg\"></figure><p><i>Thông thoáng hơn khi hệ thống thoáng khí trên dải lưới vải được dệt với công nghệ cải tiến.</i></p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/converse-cx-oct-chi-nhung/08.jpg\"></figure><p><i>Converse CX Disrupt với dòng đế được cách tân bức phá cùng bộ đệm CX được gọt cắt vùng gót đặc trưng&nbsp;</i></p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/converse-cx-oct-chi-nhung/09.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/converse-cx-oct-chi-nhung/10.1.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/converse-cx-oct-chi-nhung/10.2.jpg\"></figure><p>Nằm trong chiến lược bức phá cải tiến từ cộng đồng đến văn hóa và cả sản phẩm, CX chính là 1 trong các công cụ mang nhiệm vụ chung này, đồng hành với những thành viên khác trong ngôi nhà Converse để bước ra khỏi vùng an toàn, phát huy và đóng góp cho ngành thời trang Streetwear cũng như các nền văn hóa cộng đồng khác.</p><p>Converse CX Innovation trong mùa HO20 sẽ được phát hành tại tất cả các cửa hàng thuộc hệ thống Converse VN từ ngày 08/10/2020 với giá bán lẻ từ 2.200.000 VNĐ</p>', 'thiet-ke-ung-dung-de-transparent-converse-cx-tiep-tuc-duoc-ra-mat-trong-phoi-mau-moi.jpg', 'post', '', '', '2020-12-04 06:10:28', 1, '2020-12-04 06:10:28', 1, 1),
(20, 1, 'BẢNH TỎN ĐÓN GIÓ MÙA VỚI PACK “FINAL CLUB” VÀ “LUXE LEATHER” MỚI TỪ CONVERSE', 'banh-ton-don-gio-mua-voi-pack-final-club-va-luxe-leather-moi-tu-converse', '<p>Thu, Đông luôn là mùa yêu thích của những tín đồ thời trang. Tiết trời mát mẻ có chút gió lạnh tha hồ layer, lại tiện hơn nữa với vô vàn dịp để diện.</p><p>Outfit mùa lạnh thường mang thiên hướng “classy”, “dressy”, với lựa chọn màu sắc là tông trung tính, nhẹ nhàng. Với pack “<strong>Final Club</strong>” và “<strong>Luxe Leather</strong>” mới, Converse mang đến 2 sắc thái bảnh tỏn – một với chút nét vintage, rugged; và một sẵn sàng để diện cùng những bộ suit.</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/01.jpg\"></figure><p><br>&nbsp;</p><p><i>Chuck 70 High-Top “Final Club” – Phối màu Xanh Navy/Trắng Diệc Bạch</i></p><p>Đầu tiên, pack “Final Club”. Tất cả sản phẩm Converse giới thiệu hôm nay đều nằm trong BST “Mix &amp; Match”. Với Final Club, đó là sự “mix” giữa Suede và Canvas – 2 chất liệu không thể “match” hơn cho outfit mang cảm hứng workwear, vintage.</p><p>Nếu thích lối phối tương phản cao, phiên bản <strong>Chuck 70 High-Top “Final Club”</strong> phối màu Xanh Navy/Diệc Bạch dành cho bạn. Phối color-block, mảng Navy từ chất liệu Canvas Hữu Cơ được đặt ngay giữa thân giày. Ở các chi tiết còn lại là Trắng Diệc Bạch của Suede, tệp cùng màu đế và mũi giày.</p><p>Tổng thể Trắng Diệc Bạch bao bên ngoài điểm nhấn Navy, trông giày như một bộ Tuxedo chất chơi.</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/02.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/03.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/04.jpg\"></figure><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/05.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/06.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/07.jpg\"></figure><p>Tiếp tục một phiên bản Chuck 70 “Final Club” High-Top nữa -Trắng/Trắng Diệc Bạch. Nhẹ nhàng cho những tín đồ Monochrome, phiên bản chỉ mang đến chút khác biệt giữa Trắng và Trắng Diệc Bạch.&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/08.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/09.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/10.jpg\"></figure><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/11.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/12.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/13.jpg\"></figure><p>Phá cách hơn cả trong bộ ba Chuck 70 “Final Club” – là bản Low-Top với phối màu Khaki Du Mục/Trắng Diệc Bạch. Sự xuất hiện của tông Nâu tạo tổng thể “rugged”, hoài cổ hơn.&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/14.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/15.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/16.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/17.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/18.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/19.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/27.jpg\"></figure><p><i>Chuck Taylor All Star High-Top “Luxe Leather”</i></p><p>Tiếp đến, Chuck Taylor All Star “Luxe Leather” mang đến sự lịch lãm với chất liệu da cao cấp. Tiếp tục “mix” và “match”, giày kết hợp 2 tông màu menswear kinh điển – Xám Mason và Đen.</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/20.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/21.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/22.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/23.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/24.jpg\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mixandmatch-september/25.jpg\"></figure><p><br>&nbsp;</p><p>Chuck 70 “Final Club” pack và Chuck Taylor All Star High-Top “Luxe Leather” có giá retail từ 2,000,000đ – 2,100,000đ.</p>', 'banh-ton-don-gio-mua-voi-pack-final-club-va-luxe-leather-moi-tu-converse.jpg', 'post', '', '', '2020-12-04 06:13:40', 1, '2020-12-04 06:13:40', 1, 1),
(21, 1, 'KHI HUYỀN THOẠI CONVERSE CHUCK TAYLOR ĐƯỢC TÁI BẢN THEO QUY LUẬT MIX & MATCH MỚI', 'khi-huyen-thoai-converse-chuck-taylor-duoc-tai-ban-theo-quy-luat-mix-match-moi', '<p>Converse Run Star Hike có thể xem là một bản phối thành công với việc mở lối đi mới cho phong cách thiết kế giày sneaker cũng như sở hữu một vị trí hoàn toàn nhất định đối với giới thời trang và sneaker. Và dưới mái nhà “ELEVATION” còn được hiểu với khái niệm Bức Phá, Converse lại tiếp tục cho ra mắt BST để phục vụ hướng đi này theo một cách mới với đó chính là BST Mix &amp; Match sẽ lên kệ vào 20/08 năm nay.&nbsp;</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mix-and-match/02.jpg\"></figure><p><br>&nbsp;</p><p>Để chạm tới những khía cạnh thời trang của giới trẻ và có thể dễ dàng dẫn dắt hoặc tạo cảm hứng cho đối tượng này trong việc “mix and match”, cũng chính câu chữ và góc nhìn này mà các nhà sáng tạo đã đi đến BST mang đậm khái niệm tái bản trên nền tảng biểu tượng Chuck Taylor.</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mix-and-match/03.jpg\"></figure><p><br>&nbsp;</p><p><br>&nbsp;</p><p>Nhuộm, chắp vá, nâng cấp bộ đế đều sẽ là các thao tác sáng tạo chính để phục vụ cho BST này trên hình thể Chuck 70, Chuck Taylor Classic vốn có. Chúng vẫn mang vóc dáng của Chuck Taylor huyền thoại nhưng đâu đó sẽ được hoán đổi các graphic hay thậm chí là chất liệu để khi kết hợp tổng thể sẽ cho ra một bản thiết kế được phối hiện đại hợp mắt.</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mix-and-match/04.jpg\"></figure><p><br>&nbsp;</p><p><br>&nbsp;</p><p>Đầu tiên, chúng ta sẽ lần đầu chạm được một phiên bản Converse theo phong cách nhuộm đang khá thịnh với giới thời trang qua Chuck 70 Glen Plaid Tie Dye High Top và cả Low Top, chúng sẽ được góp mặt trong BST này khi được vận dụng khéo léo họa tiết kẻ sọc và kĩ thuật nhuộm tie-dye trên nền tảng Chuck 70 cao cấp.</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mix-and-match/05.jpg\"></figure><p><br>&nbsp;</p><p>Bản Chuck 70 Low Glen Plaid Tie Dye</p><p><br>&nbsp;</p><p>Hay người anh em Chuck Taylor được “mixed” cùng các mảng chắp vá từ họa tiết vải kẻ cổ điển trứ danh của vùng Scotland Anh Quốc “HoundStooth” với các chất liệu vải lưới, vải nylon cùng logo trong suốt Converse Chuck Taylor All Star.</p><p>&nbsp;</p><p>&nbsp;</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mix-and-match/06.jpg\"></figure><p><br>&nbsp;</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mix-and-match/07.jpg\"></figure><p><br>&nbsp;</p><p><br>&nbsp;</p><p>Tiếp đến, về SKU được liệt kê cho yếu tố mạo hiểm nhất nhì BST chính là CPX70. Chúng được thiết kế từ cảm hứng tái cấu trúc của 4 nền tảng nổi tiếng của Converse gồm: Chuck Taylor, Pro Leather, One Star và cả ERX260. Bên cạnh “outsole” khá quen mà lạ này, phiên bản 4 in 1 bên dưới còn được đổ màu khá tinh tế chỉ đúng trên các điểm chính nổi bật ở gót và cả logo giày.</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mix-and-match/08.jpg\"></figure><p><br>&nbsp;</p><p>Và nhân vật chốt hạ tại sao chúng ta lại gọi đây là bộ sưu tập tái bản thì hãy gọi tên SKU có tên Chuck Taylor All Star Move. Giống các anh em ở trên, chúng được sinh ra trên nền tảng câu chuyện của quốc dân Chuck Taylor hơn 100 năm lịch sử nhưng điểm sáng chính là bộ đế “Outsole” hoàn toàn được biến thể theo thiết kế đế “Chunky” nhưng cực kì nhẹ phục vụ hoàn toàn đa phần cho sứ mệnh giúp đẩy mạnh nền tảng Chuck cổ điển, dẫn dắt tạo một câu chuyện thời trang mới gắn liền với việc hỗ trợ thoải mái di chuyển linh hoạt.</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mix-and-match/09.jpg\"></figure><p><br>&nbsp;</p><p>Phiên bản Chuck Taylor All Star Move với thiết kế logo trong suốt</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mix-and-match/10.jpg\"></figure><p><br>&nbsp;</p><p>Bộ đế sẽ có thể làm nên thương hiệu và khẩu vị thời trang riêng cho Chuck Taylor All Star Move</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/mix-and-match/11.jpg\"></figure><p><br>&nbsp;</p><p><br>&nbsp;</p><p>Đây cũng là người anh em xa gần của Run Star Hike vì giá trị chính vẫn xuất phát từ một thiết kế trung tính nhưng có 1 khẩu vị thời trang riêng biệt với thông điệp khuyến khích tự do thể hiện cá tính và cứ thoải mái làm mới chính mình.BST Mix and Match với các SKU trên sẽ được lên kệ tại các hệ thống cửa hàng Converse VN từ ngày 20/08/2020 với giá từ 1.800.000 VNĐ</p>', 'khi-huyen-thoai-converse-chuck-taylor-duoc-tai-ban-theo-quy-luat-mix-match-moi.jpg', 'post', '', '', '2020-12-04 06:14:35', 1, '2020-12-04 06:14:35', 1, 1),
(22, 1, 'CONVERSE CONS COLLAB CÙNG SKATE BRAND DUY NHẤT TỪNG CÓ MẶT TẠI PARIS FASHION WEEK – POP TRADING COMPANY', 'converse-cons-collab-cung-skate-brand-duy-nhat-tung-co-mat-tai-paris-fashion-week-pop-trading-company', '<p>Đến từ Hà Lan, skate brand <strong>POP Trading Company</strong> có mặt tại hàng loạt retailer có sức ảnh hưởng trong giới thời trang đương đại như <strong>Supreme </strong>(store Pháp), <strong>Mr.Porter</strong>, <strong>Dover Street Market</strong>, <strong>ARROWS</strong>,… Phong cách đặc trưng của POP Trading Company đến từ nền tảng thiết kế menswear, workwear kinh điển, dáng cắt riêng biệt, chất liệu high-end và pha trộn thêm vào đó “vibe” phóng khoáng, đậm tính cá nhân của hai founder là các skater ki cựu.</p><p>&nbsp;</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/jp-pro-x-pop-trading-company/01.jpg\"></figure><p><br>&nbsp;</p><p>Converse CONS và POP Trading Company đã làm việc cùng nhau từ khá lâu, nhưng chủ yếu trong các dự án xây dựng sân chơi và phát triển cộng đồng Skaters địa phương. Collab lần này như món quà kỉ niệm những thành quả trong suốt nhiều năm qua của cả hai.</p><p><br>&nbsp;</p><p>&nbsp;</p><p>Dòng giày được lựa chọn cho collab là Converse CONS JP Pro, với sự góp mặt cả hai phiên bản High-Top và Low-Top, mỗi dáng một phối màu riêng.</p><p>&nbsp;</p><p>Phiên bản <strong>JP Pro High-Top</strong> đặc biệt hơn cả khi sử dụng nét tương phản giữa Navy và Vàng – bộ màu tương trưng cho sự cân bằng hài hoà giữa truyền thống và hiện đại, giữa kinh điển và phóng khoáng. Nếu chỉ dùng duy nhất màu sắc để truyền tải phong cách của POP Trading Company, đó chắc chắn phải là Navy và Vàng.&nbsp;</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/jp-pro-x-pop-trading-company/03.png\"></figure><p>POP Trading Company gia cố thêm cho JP Pro chi tiết Ollie Patch. Nhìn kĩ vào mảng panel Vàng, các bạn sẽ thấy đây thực chất là dải cao su bọc bên trên upper Canvas. Quá nhiều trick Ollie thì đây sẽ là phần ra đi đầu tiên. Giờ có cao su bảo vệ rồi thì tha hồ mà “vuốt” nhé.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/jp-pro-x-pop-trading-company/04.png\"></figure><p><i>Ollie Patch trông cực ăn rơ cùng Smile Toe signature của Jack Purcell.</i></p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/jp-pro-x-pop-trading-company/05.png\"></figure><p><i>Branding của POP Trading Company được đặt ở mũi và gót giày.</i></p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/jp-pro-x-pop-trading-company/06.png\"></figure><p><br>&nbsp;</p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/jp-pro-x-pop-trading-company/07.png\"></figure><p><i>Và chắc chắn, không thể thiếu Gum out-sole cho một đôi giày skate.</i></p><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/jp-pro-x-pop-trading-company/08.png\"></figure><p><br>&nbsp;</p><p>Bản POP Trading Company x JP Pro Low-Top đơn giản hơn với Trắng Egret chủ đạo phối cùng sắc Đỏ là điểm nhấn. Còn lại, giày có thiết kế tương đồng bản High-Top với các chi tiết Ollie Patch, branding ở mũi và gót, cùng Gum out-sole.<br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/jp-pro-x-pop-trading-company/09.png\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/jp-pro-x-pop-trading-company/10.png\"></figure><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/jp-pro-x-pop-trading-company/11.png\"></figure><p><br>&nbsp;</p><p>Incubate Converse CONS x POP Trading Company được lên kệ vào 23/07/2020, tại duy nhất cửa hàng<a href=\"https://www.converse.com.vn/stores/converse-saigon-centre.html\"><strong>Converse Saigon Centre</strong></a>, giá bán lẻ 2,400,000đ cho mẫu High-Top và 2,300,000đ cho mẫu Low-Top.</p>', 'converse-cons-collab-cung-skate-brand-duy-nhat-tung-co-mat-tai-paris-fashion-week-pop-trading-company.png', 'post', '', '', '2020-12-04 06:15:17', 1, '2020-12-04 06:15:17', 1, 1),
(23, 1, 'CONVERSE VÀ CÂU CHUYỆN VINH DANH NHỮNG NHÂN VẬT HUYỀN THOẠI CỦA MÙA GIẢI NBA', 'converse-va-cau-chuyen-vinh-danh-nhung-nhan-vat-huyen-thoai-cua-mua-giai-nba', '<figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/pro-leather-og-blocking-su20/01-thumb.jpg\"></figure><p><br>&nbsp;</p><p>Vào 1950, Chuck Cooper, Nat Clifton và Earl Lloyd là những cái tên đã gỡ bỏ rào cản màu da ở sân chơi NBA và giúp giải đấu được nhìn nhận ở góc độ đa dạng hơn, tiến bộ hơn. 70 năm sau đó, Converse đã cho ra đời BST Converse Breaking Down Barries để vinh danh sự cống hiến có sức ảnh hưởng này đến những vận động viên huyền thoại Clifton, Cooper và Lloyd ngầm cảm tạ sự đóng góp của họ cho hiệp hội Bóng Rổ quốc tế và hơn thế nữa.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/pro-leather-og-blocking-su20/02.jpg\"></figure><p><br>&nbsp;</p><p><i>Các vận động viên Chuck Cooper, Earl Lloyd và Nat Clifton đã xác nhập vào giải NBA từ 1950</i></p><p><br>&nbsp;</p><p>Charles “Chuck” Cooper đã phá bỏ rào cản về màu da khi tên của ông được xuất hiện trong hệ thống NBA Draft vào tháng 04,1950 khi đội bóng rổ Mỹ tiếng tăm Boston Celtics mời cái tên này cho hàng ngũ của mình. Cũng cùng thời điểm lúc ấy, vào ngày 31/10/1950, Lloyd trở thành vận động viên người Mỹ gốc Phi đầu tiên chơi cho giải NBA với màu áo của đội tuyển Washington Capitols.Tiếp nối điều này Clifton cũng chính thức là vận động viên người Mỹ gốc Phi đầu tiên sở hữu trong tay hợp đồng chính thức với NBA với đội New York Knickerbockers.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/pro-leather-og-blocking-su20/03.jpg\"></figure><p><br>&nbsp;</p><p><br>&nbsp;</p><p>Lịch sử về bóng rổ và nhiều thứ hơn thế nữa xung quanh bộ môn này rất đa dạng nên hiển nhiên vũ khí trên sân đấu của họ cũng không hề đơn giản về bề ngoài cũng như câu chuyện trong đó.Converse đã cho thiết kế trên 2 silhouette Chuck 70 và Pro Leather mục đích vừa bảo vệ tinh thần đôi “hoop shoes” danh giá của giới All Star nhưng vẫn biến tấu thời trang hơn với Chuck 70.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/pro-leather-og-blocking-su20/04.jpg\"></figure><p><br>&nbsp;</p><p><br>&nbsp;</p><p>Ở Pro Leather, như được tái hiện lại từ nền tảng All Star Game một trong những đôi giày bóng rổ có lịch sử lâu đời nhất tính đến hiện tại và dày đặc văn hóa về bộ môn này thì chúng đều sở hữu chất liệu da cao cấp cùng 3 tone màu tôn vinh 3 màu áo của 3 đội như trên. Chi tiết NBA được biết đến như 1 thương hiệu được lồng ghép ở phía cổ giày thay vì ở vị trí lable của Converse như mọi khi. Upper được phủ màu trắng nguyên bản của da mềm cao cấp đã qua xử lý cùng logo Chevron được thêu 3D.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/pro-leather-og-blocking-su20/05.jpg\"></figure><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/pro-leather-og-blocking-su20/06.jpg\"></figure><p><br>&nbsp;</p><p>&nbsp;</p><p><i>Từng item sẽ ứng với từng màu áo đặc trưng của mỗi đội nhà: Boston Celtics , Washington Capitols, New York Knickerbockers</i></p><p><br>&nbsp;</p><p>Khác hơn với Chuck 70, các chi tiết dường như tương tự nhưng độ phủ tone màu chính từ màu áo của 3 đội chơi nổi tiếng trên được rõ hơn ở toàn outlook. Và điểm tuyệt vời ở chi tiết dưới mỗi vị trí lable giày, từng phiên bản Chuck 70 Barries sẽ thể hiện 3 cái tên của 3 huyền thoại : Chuck Cooper, Earl Lloyd và Nat Clifton được “custom” xuất hiện cùng logo Converse mang lại cảm giác chúng ta đang sở hữu được 1 biểu tượng thời gian của nền bóng rổ. Chưa kể chất liệu được gia công lên upper của Chuck 70 không phải là canvas như mọi khi, Satin đã được thay thế để thể hiện hoàn hảo 3 màu áo biểu tượng của 3 đội ứng với mỗi nhân vật của đội đó trên phần lable giày.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/pro-leather-og-blocking-su20/07.jpg\"></figure><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/pro-leather-og-blocking-su20/08.jpg\"></figure><p><br>&nbsp;</p><p>&nbsp;</p><p><i>Các label được custom bộ tem mới riêng cùng những cái tên của 3 huyền thoại.</i></p><p><br>&nbsp;</p><p>Điểm thêm cho BST bóng rổ, trong đợt lên kệ lần này, Converse VN cũng mang về toàn thể những con Pro Leather OG được tái phát hành ở thị trường Mỹ và Converse VN cũng sẽ thực hiện nghĩa vụ mang nó lên kệ ở hệ thống VN. Vâng ! Và mọi người sẽ có thể có cơ hội mua được mẫu giày bóng rổ đã từng được Michale Jordan mang trong những thời điểm bóng rổ mới ra đời, được lãnh đạo bởi thương hiệu huyền thoại Converse - phiên bản Converse Pro Leather OG.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/pro-leather-og-blocking-su20/09.jpg\"></figure><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/pro-leather-og-blocking-su20/10.jpg\"></figure><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.converse.com.vn/pictures/catalog/news/fashion/2020/pro-leather-og-blocking-su20/11.jpg\"></figure><p><br>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>Những bộ sản phẩm trên đều đã lên kệ tại hệ thống Converse VN từ 05.03.2020.</p>', 'converse-va-cau-chuyen-vinh-danh-nhung-nhan-vat-huyen-thoai-cua-mua-giai-nba.jpg', 'post', '', '', '2020-12-04 06:17:11', 1, '2020-12-04 06:17:11', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uml_product`
--

CREATE TABLE `uml_product` (
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_catid` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `product_img` varchar(100) NOT NULL,
  `product_detail` text NOT NULL,
  `product_number` int(11) UNSIGNED NOT NULL,
  `product_price` float(12,0) NOT NULL,
  `product_pricesale` float(12,0) NOT NULL,
  `product_metakey` varchar(255) NOT NULL,
  `product_metadesc` varchar(255) NOT NULL,
  `product_createdat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_createdby` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `product_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_updatedby` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `product_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `uml_product`
--

INSERT INTO `uml_product` (`product_id`, `product_catid`, `product_name`, `product_slug`, `product_img`, `product_detail`, `product_number`, `product_price`, `product_pricesale`, `product_metakey`, `product_metadesc`, `product_createdat`, `product_createdby`, `product_updatedat`, `product_updatedby`, `product_status`) VALUES
(124, 33, 'Chuck Taylor All Star CX High-Top', 'chuck-taylor-all-star-cx-high-top', 'chuck-taylor-all-star-cx-high-top.jpg', '<p>Color: Obsidian/Sail Blue/Wild Mango</p>', 10, 2300000, 0, '', '', '2019-06-24 03:43:34', 1, '2020-12-04 05:31:07', 1, 0),
(125, 32, 'Chuck Taylor All Star Renew Canvas', 'chuck-taylor-all-star-renew-canvas', 'chuck-taylor-all-star-renew-canvas.jpg', '<p>Color: Black/Black/White</p>', 54, 1800000, 1260000, '', '', '2020-12-04 00:51:07', 1, '2020-12-04 00:51:07', 1, 1),
(126, 34, 'Chuck Taylor Classic', 'chuck-taylor-classic', 'chuck-taylor-classic.jpg', '<p>Color: Natural</p>', 1111, 1500000, 1050000, '', '', '2020-12-04 03:11:15', 1, '2020-12-04 03:11:15', 1, 1),
(127, 35, 'Chuck Taylor 1970s Hi', 'chuck-taylor-1970s-hi', 'chuck-taylor-1970s-hi.jpg', '<p>Color: Black</p>', 11, 2000000, 0, '', '', '2020-12-04 03:13:40', 1, '2020-12-04 03:13:40', 1, 1),
(128, 36, 'One Star Carnival', 'one-star-carnival', 'one-star-carnival.jpg', '<p>Color: Ponderosa Pine/Neptune Green/Illusion Green</p>', 99, 1800000, 0, '', '', '2020-12-04 03:15:30', 1, '2020-12-04 03:15:30', 1, 1),
(129, 33, 'Chuck Taylor All Star CX High-Top', 'chuck-taylor-all-star-cx-high-top', 'chuck-taylor-all-star-cx-high-top.jpg', '<p>Color: Obsidian/Sail Blue/Wild Mango</p>', 99, 2300000, 0, '', '', '2020-12-04 05:30:59', 1, '2020-12-04 05:30:59', 1, 1),
(130, 32, 'Renew Chuck 70 High-Top ', 'renew-chuck-70-high-top', 'renew-chuck-70-high-top.jpg', '', 0, 2200000, 2000000, '', '', '2020-12-04 06:19:50', 1, '2020-12-04 06:19:50', 1, 1),
(131, 42, 'GIÀY SUPERSTAR', 'giay-superstar', 'giay-superstar.jpg', '', 0, 2400000, 0, '', '', '2020-12-04 06:22:12', 1, '2020-12-04 06:22:12', 1, 1),
(132, 39, 'X9000L4 CYBERPUNK 2077', 'x9000l4-cyberpunk-2077', 'x9000l4-cyberpunk-2077.jpg', '', 99, 3500000, 0, '', '', '2020-12-04 06:24:01', 1, '2020-12-04 06:24:01', 1, 1),
(133, 41, 'NMD_R1', 'nmd_r1', 'nmd_r1.jpg', '', 0, 3400000, 300000, '', '', '2020-12-04 06:25:13', 1, '2020-12-04 06:25:13', 1, 1),
(134, 41, 'NMD_R1.V2', 'nmd_r1-v2', 'nmd_r1-v2.jpg', '', 0, 3400000, 0, '', '', '2020-12-04 06:26:00', 1, '2020-12-04 06:26:00', 1, 1),
(135, 41, 'HU NMD', 'hu-nmd', 'hu-nmd.jpg', '', 0, 6000000, 0, '', '', '2020-12-04 06:27:04', 1, '2020-12-04 06:27:04', 1, 1),
(136, 41, 'HU NMD', 'hu-nmd', 'hu-nmd.jpg', '', 0, 6000000, 0, '', '', '2020-12-04 06:27:42', 1, '2020-12-04 06:27:47', 1, 0),
(137, 44, 'Nike Air Force 1 Crater', 'nike-air-force-1-crater', 'nike-air-force-1-crater.jpg', '', 0, 3239000, 0, '', '', '2020-12-04 06:29:40', 1, '2020-12-04 06:32:47', 1, 1),
(138, 45, 'Air Jordan 1 Zoom Cmft', 'air-jordan-1-zoom-cmft', 'air-jordan-1-zoom-cmft.jpg', '', 0, 4100000, 0, '', '', '2020-12-04 06:30:22', 1, '2020-12-04 06:30:22', 1, 1),
(139, 45, 'Air Jordan 1 Low', 'air-jordan-1-low', 'air-jordan-1-low.jpg', '', 0, 3000000, 2779000, '', '', '2020-12-04 06:31:09', 1, '2020-12-04 06:31:09', 1, 1),
(140, 45, 'Air Jordan 7 Retro SE', 'air-jordan-7-retro-se', 'air-jordan-7-retro-se.jpg', '', 0, 0, 0, '', '', '2020-12-04 06:31:50', 1, '2020-12-04 06:31:50', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uml_topic`
--

CREATE TABLE `uml_topic` (
  `topic_id` int(11) UNSIGNED NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `topic_slug` varchar(255) NOT NULL,
  `topic_parentid` int(11) UNSIGNED NOT NULL,
  `topic_order` int(11) UNSIGNED NOT NULL,
  `topic_metakey` varchar(255) NOT NULL,
  `topic_metadesc` varchar(255) NOT NULL,
  `topic_createdat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topic_createdby` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `topic_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topic_updatedby` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `topic_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `uml_topic`
--

INSERT INTO `uml_topic` (`topic_id`, `topic_name`, `topic_slug`, `topic_parentid`, `topic_order`, `topic_metakey`, `topic_metadesc`, `topic_createdat`, `topic_createdby`, `topic_updatedat`, `topic_updatedby`, `topic_status`) VALUES
(1, 'Tin Tức', 'tin-tuc', 0, 1, '', '', '2019-06-10 01:31:00', 1, '2019-06-23 10:54:17', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uml_user`
--

CREATE TABLE `uml_user` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_gender` tinyint(1) NOT NULL,
  `user_phone` varchar(11) NOT NULL,
  `user_img` varchar(100) DEFAULT NULL,
  `user_access` tinyint(1) NOT NULL,
  `user_createdat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_createdby` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `user_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_updatedby` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `user_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `uml_user`
--

INSERT INTO `uml_user` (`user_id`, `user_fullname`, `user_username`, `user_password`, `user_email`, `user_gender`, `user_phone`, `user_img`, `user_access`, `user_createdat`, `user_createdby`, `user_updatedat`, `user_updatedby`, `user_status`) VALUES
(1, 'Ngọc Hoàng', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'hotboyld99@gmail.com', 1, '0869695431', NULL, 1, '2020-10-02 23:15:17', 1, '0000-00-00 00:00:00', 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `uml_category`
--
ALTER TABLE `uml_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `uml_contact`
--
ALTER TABLE `uml_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `uml_menu`
--
ALTER TABLE `uml_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Chỉ mục cho bảng `uml_order`
--
ALTER TABLE `uml_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `uml_orderdetail`
--
ALTER TABLE `uml_orderdetail`
  ADD PRIMARY KEY (`orderdetail_id`);

--
-- Chỉ mục cho bảng `uml_post`
--
ALTER TABLE `uml_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `uml_product`
--
ALTER TABLE `uml_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `uml_topic`
--
ALTER TABLE `uml_topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Chỉ mục cho bảng `uml_user`
--
ALTER TABLE `uml_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `uml_category`
--
ALTER TABLE `uml_category`
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `uml_contact`
--
ALTER TABLE `uml_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `uml_menu`
--
ALTER TABLE `uml_menu`
  MODIFY `menu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `uml_order`
--
ALTER TABLE `uml_order`
  MODIFY `order_id` int(23) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `uml_orderdetail`
--
ALTER TABLE `uml_orderdetail`
  MODIFY `orderdetail_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `uml_post`
--
ALTER TABLE `uml_post`
  MODIFY `post_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `uml_product`
--
ALTER TABLE `uml_product`
  MODIFY `product_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `uml_topic`
--
ALTER TABLE `uml_topic`
  MODIFY `topic_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `uml_user`
--
ALTER TABLE `uml_user`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
