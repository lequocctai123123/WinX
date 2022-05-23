-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 11:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminid` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminMail` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `lvel` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminid`, `adminName`, `adminMail`, `adminUser`, `adminPass`, `lvel`) VALUES
(1, 'Tai', 'Tai@gmail.com', 'lequoctai123', '4887b7942b2d7dabd0de3d6dfffbfb27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Dareu'),
(2, 'JBL'),
(3, 'Logitech'),
(4, 'Razer'),
(5, 'Cosair'),
(6, 'Sony'),
(7, 'Akko');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, 1, '1i2cl14h0fqffgnb3pgdc9852e', 'Chuột Gaming Faker ', '690000', 1, '71790b5996.webp'),
(27, 17, 'd7vh7mlnnv30gmp9tvkv17o67f', 'Tai nghe thể thao True Wireless chống ồn Sony WF - SP800N', '399000', 1, '6df9004c6b.webp'),
(34, 5, 't15106he347svd746qh59mcp4p', 'Bàn phím Logitech G PRO KDA', '3269000', 4, 'cc182a0e99.webp'),
(38, 20, 'gk2n5jlgvvgki34hf5ltn5u05n', 'Chuột Razer Deathadder V2 Halo Infinite Edition', '2090000', 3, 'a3bd6885de.webp'),
(44, 6, 'agava0ulla15t50031a7rd7nv7', 'Bàn phím Logitech G913 TKL Lightspeed Wireless', '4390000', 1, '9b29db3ace.webp'),
(48, 7, 'fq6gnh603bl8jdmnd8pgu1lv37', 'Bàn phím Razer Blackwidow Green Switch', '2890000', 1, 'c4317b6bf3.webp'),
(49, 6, '6rqm03r5cu81ajj0edi5m4s1bd', 'Bàn phím Logitech G913 TKL Lightspeed Wireless', '4390000', 1, '9b29db3ace.webp'),
(56, 14, 'n1biut0vsca1k2hsnghjl2tljb', 'DAREU EH469 7.1 RGB PINK', '440000', 1, '092e7f2de3.webp'),
(60, 7, 'v5q049s92vriv5bp70s5d89p3g', 'Bàn phím Razer Blackwidow Green Switch', '2890000', 1, 'c4317b6bf3.webp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(3, 'Loa không dây'),
(4, 'Loa Có Dây'),
(5, 'Tai Nghe'),
(6, 'Chuột Có Dây'),
(7, 'Chuột Không Dây'),
(8, 'Bàn phím cơ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(1, 'tai', '26/6 ấp long mỹ , xã long thành bắc , hòa thành  , tây ninh', 'hòa thành', 'HCM', '2222', '0941709701', 'lequoctai1107@gmail.com', '4887b7942b2d7dabd0de3d6dfffbfb27'),
(2, 'tai', '26/6 ấp long mỹ , xã long thành bắc , hòa thành  , tây ninh', 'hòa thành', 'HCM', '2222', '0941709701', 'tai24102002@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(8, 7, 'Bàn phím Razer Blackwidow Green Switch', 0, 1, '2890000', 'c4317b6bf3.webp', 1, '2022-04-26 08:33:10'),
(9, 8, 'Bàn phím Razer Ornata Expert Pikachu Limited Edition', 0, 1, '2990000', 'd511401e6d.webp', 1, '2022-04-26 08:37:08'),
(10, 20, 'Chuột Razer Deathadder V2 Halo Infinite Edition', 0, 1, '2090000', 'a3bd6885de.webp', 1, '2022-04-26 08:37:08'),
(11, 8, 'Bàn phím Razer Ornata Expert Pikachu Limited Edition', 0, 1, '2990000', 'd511401e6d.webp', 1, '2022-04-28 07:22:45'),
(12, 14, 'DAREU EH469 7.1 RGB PINK', 2, 3, '1320000', '092e7f2de3.webp', 1, '2022-04-28 07:51:42'),
(13, 14, 'DAREU EH469 7.1 RGB PINK', 2, 1, '440000', '092e7f2de3.webp', 1, '2022-04-30 01:29:28'),
(14, 9, 'Chuột Razer Deathadder Essential', 2, 3, '1770000', '0c0a596814.webp', 1, '2022-05-08 19:38:17'),
(15, 7, 'Bàn phím Razer Blackwidow Green Switch', 2, 1, '2890000', 'c4317b6bf3.webp', NULL, '2022-05-10 13:51:37'),
(16, 9, 'Chuột Razer Deathadder Essential', 2, 1, '590000', '0c0a596814.webp', NULL, '2022-05-12 07:33:18'),
(17, 7, 'Bàn phím Razer Blackwidow Green Switch', 2, 1, '2890000', 'c4317b6bf3.webp', NULL, '2022-05-23 08:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(7, 'Bàn phím Razer Blackwidow Green Switch', 8, 4, '<p><span>Razer Blackwidow một trong những d&ograve;ng&nbsp;</span><a href=\"https://gearvn.com/pages/ban-phim-may-tinh\" target=\"_blank\">b&agrave;n ph&iacute;m cơ</a><span>&nbsp;được thiết kế v&agrave; sản xuất bởi h&atilde;ng Razer Inc. - một c&ocirc;ng ty của Mỹ, được th&agrave;nh lập bởi Min-Liang Tan, v&agrave; Robert Krakoff c&oacute; trụ sở ở Califoria chuy&ecirc;n cung cấp c&aacute;c sản phẩm, phụ kiện chất lượng d&agrave;nh cho game thủ. C&aacute;c sản phẩm đến từ Razer thường được giới game thủ đ&aacute;nh gi&aacute; cao về mặt chất lượng lẫn gi&aacute; cả.</span></p>', 0, '2890000', 'c4317b6bf3.webp'),
(8, 'Bàn phím Razer Ornata Expert Pikachu Limited Edition', 8, 4, '<p>B<span>ạn muốn trở th&agrave;nh người giỏi nhất? Sau đ&oacute;, h&atilde;y sẵn s&agrave;ng cho bất kỳ cuộc th&aacute;ch đấu n&agrave;o với b&agrave;n ph&iacute;m&nbsp;Razer đặc trưng của ch&uacute;ng t&ocirc;i, ph&aacute;t triển với phong c&aacute;ch Pok&eacute;mon mang t&iacute;nh biểu tượng. Điện kh&iacute; h&oacute;a thiết lập của bạn với bộ thiết bị ngoại vi hiệu suất cao độc quyền của ch&uacute;ng t&ocirc;i, lấy cảm hứng từ Pok&eacute;mon dễ thương v&agrave; được y&ecirc;u th&iacute;ch nhất mọi thời đại - Pikachu.</span></p>', 1, '2990000', 'd511401e6d.webp'),
(9, 'Chuột Razer Deathadder Essential', 6, 4, '<p><span>Chuột gaming DeathAdder Essential được Razer thiết kế với kiểu d&aacute;ng c&ocirc;ng th&aacute;i học (Ergonomic) cổ điển. Thiết kế đẹp mắt v&agrave; kh&aacute;c biệt ở c&aacute;c d&ograve;ng&nbsp;</span><a title=\"chuột gaming\" href=\"https://gearvn.com/collections/gaming-mouse\">chuột gaming</a><span>&nbsp;kh&aacute;c tạo ra sự thoải m&aacute;i, cho ph&eacute;p người chơi duy tr&igrave; mức hiệu suất cao trong suốt thời gian chơi game d&agrave;i, v&igrave; vậy bạn sẽ kh&ocirc;ng bao giờ bị ngập ngừng trong c&aacute;c trận chiến n&oacute;ng bỏn</span></p>', 0, '590000', '0c0a596814.webp'),
(12, 'Chuột Dare-U LM115G Wireless', 7, 1, '<p><span>DareU LM115G l&agrave; một trong những d&ograve;ng&nbsp;</span><a title=\"chuột kh&ocirc;ng d&acirc;y\" href=\"https://gearvn.com/collections/chuot-wireless\">chuột kh&ocirc;ng d&acirc;y</a><span>&nbsp;mang đến cho người d&ugrave;ng sự mới mẻ trong thiết kế. Với t&ocirc;ng m&agrave;u đen huyền b&iacute; v&agrave; sang trọng c&ugrave;ng với đ&oacute; mang tr&ecirc;n m&igrave;nh thiết kế bo tr&ograve;n cho cảm gi&aacute;c thoải m&aacute;i khi d&ugrave;ng. Sản phẩm tương th&iacute;ch v&agrave; dễ d&agrave;ng kết nối với nhiều hệ điều h&agrave;nh phổ th&ocirc;ng như: Windows, MAC.</span></p>', 1, '165000', '8c9648b497.webp'),
(14, 'DAREU EH469 7.1 RGB PINK', 5, 1, '<p><strong>Tai nghe&nbsp;DareU EH469 7.1 RGB Pink&nbsp;</strong><span>mang thiết kế headband k&eacute;p đơn giản, trọng lượng chỉ&nbsp;280g (kh&ocirc;ng bao gồm d&acirc;y),&nbsp;thoải m&aacute;i khi đeo m&agrave; kh&ocirc;ng g&acirc;y &aacute;p lực kh&oacute; chịu cho đầu.</span></p>', 1, '440000', '092e7f2de3.webp'),
(19, 'Bàn phím AKKO PC75B Plus Black & Silver', 8, 7, '<p><span>AKKO PC75B Plus Black &amp; Silver l&agrave; sản phẩm&nbsp;<a href=\"https://gearvn.com/pages/ban-phim-may-tinh\" target=\"_blank\">b&agrave;n ph&iacute;m cơ</a>&nbsp;đến từ thương hiệu AKKO. Với ngoại h&igrave;nh gọn g&agrave;ng c&ugrave;ng hệ thống LED rực rỡ tăng th&ecirc;m t&iacute;nh thẩm mỹ cho g&oacute;c l&agrave;m việc của người d&ugrave;ng.</span></p>\r\n<div><span><br /></span></div>', 0, '2190000', 'fde2f47837.webp'),
(20, 'Chuột Razer Deathadder V2 Halo Infinite Edition', 6, 4, '<p><span>Được ra mắt như l&agrave; một sự t&aacute;i sinh mạnh mẽ hơn&nbsp;cho d&ograve;ng&nbsp;Deathadder V2 đến từ nh&agrave; Razer, chuột Razer Deathadder V2 Halo Infinite Edition l&agrave; một trong những con&nbsp;</span><a href=\"https://gearvn.com/pages/chuot-may-tinh\" target=\"_blank\">chuột gaming</a><span>&nbsp;c&oacute; thiết kế độc lạ v&agrave; ho&agrave;nh tr&aacute;ng nhất hiện nay, một sự lựa kh&ocirc;ng thể bỏ qua d&agrave;nh cho những game thủ ch&iacute;nh hiệu. Với cảm biến v&agrave; c&ocirc;ng tắc thế hệ mới được tạo ra trong một h&igrave;nh thức nhẹ hơn, hứa hẹn sẽ l&agrave;&nbsp;sản phẩm ph&aacute; đảo thị trường game thủ sắp tới.</span></p>', 0, '2090000', 'a3bd6885de.webp'),
(21, 'Chuột gaming DareU A960 Yellow Ultralight', 6, 1, '<p><strong>DareU A960&nbsp;Yellow Ultralight</strong><span>&nbsp;bất ngờ nổi l&ecirc;n khi l&agrave;&nbsp;</span><a href=\"https://gearvn.com/collections/ban-phim-co-gaming\">chuột gaming gi&aacute; rẻ</a><span>&nbsp;đầu ti&ecirc;n đạt được&nbsp;trọng lượng si&ecirc;u nhẹ (chỉ 65 gram)&nbsp;m&agrave;&nbsp;kh&ocirc;ng cần d&ugrave;ng vỏ lỗ. Đ&acirc;y l&agrave; một bước tiến vượt bậc m&agrave; c&oacute; sẽ c&aacute;c nh&agrave; sản xuất&nbsp;chuột gaming&nbsp;kh&aacute;c phải ganh tị với DareU.</span></p>', 1, '740000', '3541f6c62f.webp'),
(22, 'Bàn phím cơ DareU EK807G Wireless', 8, 1, '<p><span>DareU EK807G Wireless&nbsp;sử dụng 2 vi&ecirc;n pin AAA cực kỳ th&ocirc;ng dụng, dễ mua. Thời lượng sử dụng pin tối đa l&ecirc;n tới 6 th&aacute;ng, đ&aacute;p ứng c&ocirc;ng việc sử dụng ph&iacute;m l&acirc;u d&agrave;i, bền bỉ v&agrave; rất tiện lợi. Chỗ lắp pin đ&atilde; c&oacute; sẵn khe cất đầu USB Receiver.</span></p>', 1, '640000', 'd3ba340024.webp'),
(24, 'Bàn phím cơ AKKO 3084B Plus Wireless Black Pink', 8, 7, '<p><span>Mojike l&agrave; thương hiệu con của AKKO với c&aacute;c sản phẩm đ&aacute;nh mạnh v&agrave;o ph&acirc;n kh&uacute;c b&agrave;n ph&iacute;m cơ gi&aacute; rẻ, b&igrave;nh d&acirc;n, dễ tiếp cận kh&aacute;ch h&agrave;ng.&nbsp;Với bộ Switch Akko của h&atilde;ng được thiết kế tỉ mỉ từng chi tiết. Ph&ugrave; hợp với hầu hết nhu cầu của người d&ugrave;ng v&agrave; cho độ bền cao</span></p>', 1, '820000', '10c2131ca4.webp'),
(25, 'Chuột AKKO RG325 Dragon Ball Z – Goku', 7, 7, '<p><span>Sự hợp t&aacute;c của Akko với t&aacute;c giả Toei Animation về nh&acirc;n vật Goku. Mẫu&nbsp;</span><a href=\"https://gearvn.com/collections/chuot-duoi-500-nghin\"><strong>chuột chơi game gi&aacute; rẻ</strong></a><span>&nbsp;</span><em>RG325&nbsp;</em><span>với phi&ecirc;n bản SONGOKU&nbsp;mang đến tone m&agrave;u của ch&uacute; khỉ con Songoku v&ocirc; c&ugrave;ng đ&aacute;ng y&ecirc;u.</span></p>', 1, '690000', '3bcb42d855.webp'),
(26, 'Chuột Akko AG325', 6, 7, '<p><span>Với thiết kế c&ocirc;ng th&aacute;i học&nbsp;n&agrave;y th&igrave; cho d&ugrave; bạn l&agrave; người thuận tay phải hay tay tr&aacute;i đều c&oacute; thể sử dụng ho&agrave;n to&agrave;n dễ d&agrave;ng. Kh&ocirc;ng phải gặp kh&oacute; khăn n&agrave;o khi đang di chuột hoặc bấm nhầm.</span></p>', 1, '490000', '0c0776caf6.webp'),
(27, 'Bàn phím Akko 3084SP Oceans', 8, 7, '<p><span>Nhắc tới&nbsp;B&agrave;n ph&iacute;m Akko 3084SP Oceanstar - Cherry switch l&agrave; người d&ugrave;ng sẽ nhớ ngay tới sự nhỏ gọn, tiện dụng với khả năng tiết kiệm tối đa kh&ocirc;ng gian tuy nhi&ecirc;n vẫn sở hữu đầy đủ t&iacute;nh năng cần thiết.</span></p>\r\n<div><span><br /></span></div>', 1, '1200000', 'c091d32b9e.webp'),
(28, 'Chuột Gaming Faker ', 8, 7, '<p>sasas</p>', 1, '3269000', '9c6d6c257a.webp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(7, 'aaa', 'fea5956c09.jpg', 1),
(8, 'Bàn phím cơ', '8c26f55135.jpg', 1),
(9, 'Tai nghe', 'd991d5ac49.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
