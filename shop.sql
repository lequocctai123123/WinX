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
(1, 1, '1i2cl14h0fqffgnb3pgdc9852e', 'Chu???t Gaming Faker ', '690000', 1, '71790b5996.webp'),
(27, 17, 'd7vh7mlnnv30gmp9tvkv17o67f', 'Tai nghe th??? thao True Wireless ch???ng ???n Sony WF - SP800N', '399000', 1, '6df9004c6b.webp'),
(34, 5, 't15106he347svd746qh59mcp4p', 'Ba??n phi??m Logitech G PRO KDA', '3269000', 4, 'cc182a0e99.webp'),
(38, 20, 'gk2n5jlgvvgki34hf5ltn5u05n', 'Chu???t Razer Deathadder V2 Halo Infinite Edition', '2090000', 3, 'a3bd6885de.webp'),
(44, 6, 'agava0ulla15t50031a7rd7nv7', 'B??n ph??m Logitech G913 TKL Lightspeed Wireless', '4390000', 1, '9b29db3ace.webp'),
(48, 7, 'fq6gnh603bl8jdmnd8pgu1lv37', 'B??n ph??m Razer Blackwidow Green Switch', '2890000', 1, 'c4317b6bf3.webp'),
(49, 6, '6rqm03r5cu81ajj0edi5m4s1bd', 'B??n ph??m Logitech G913 TKL Lightspeed Wireless', '4390000', 1, '9b29db3ace.webp'),
(56, 14, 'n1biut0vsca1k2hsnghjl2tljb', 'DAREU EH469 7.1 RGB PINK', '440000', 1, '092e7f2de3.webp'),
(60, 7, 'v5q049s92vriv5bp70s5d89p3g', 'B??n ph??m Razer Blackwidow Green Switch', '2890000', 1, 'c4317b6bf3.webp');

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
(3, 'Loa kh??ng d??y'),
(4, 'Loa C?? D??y'),
(5, 'Tai Nghe'),
(6, 'Chu???t C?? D??y'),
(7, 'Chu???t Kh??ng D??y'),
(8, 'B??n ph??m c??');

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
(1, 'tai', '26/6 ???p long m??? , x?? long th??nh b???c , h??a th??nh  , t??y ninh', 'h??a th??nh', 'HCM', '2222', '0941709701', 'lequoctai1107@gmail.com', '4887b7942b2d7dabd0de3d6dfffbfb27'),
(2, 'tai', '26/6 ???p long m??? , x?? long th??nh b???c , h??a th??nh  , t??y ninh', 'h??a th??nh', 'HCM', '2222', '0941709701', 'tai24102002@gmail.com', '202cb962ac59075b964b07152d234b70');

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
(8, 7, 'B??n ph??m Razer Blackwidow Green Switch', 0, 1, '2890000', 'c4317b6bf3.webp', 1, '2022-04-26 08:33:10'),
(9, 8, 'B??n ph??m Razer Ornata Expert Pikachu Limited Edition', 0, 1, '2990000', 'd511401e6d.webp', 1, '2022-04-26 08:37:08'),
(10, 20, 'Chu???t Razer Deathadder V2 Halo Infinite Edition', 0, 1, '2090000', 'a3bd6885de.webp', 1, '2022-04-26 08:37:08'),
(11, 8, 'B??n ph??m Razer Ornata Expert Pikachu Limited Edition', 0, 1, '2990000', 'd511401e6d.webp', 1, '2022-04-28 07:22:45'),
(12, 14, 'DAREU EH469 7.1 RGB PINK', 2, 3, '1320000', '092e7f2de3.webp', 1, '2022-04-28 07:51:42'),
(13, 14, 'DAREU EH469 7.1 RGB PINK', 2, 1, '440000', '092e7f2de3.webp', 1, '2022-04-30 01:29:28'),
(14, 9, 'Chu???t Razer Deathadder Essential', 2, 3, '1770000', '0c0a596814.webp', 1, '2022-05-08 19:38:17'),
(15, 7, 'B??n ph??m Razer Blackwidow Green Switch', 2, 1, '2890000', 'c4317b6bf3.webp', NULL, '2022-05-10 13:51:37'),
(16, 9, 'Chu???t Razer Deathadder Essential', 2, 1, '590000', '0c0a596814.webp', NULL, '2022-05-12 07:33:18'),
(17, 7, 'B??n ph??m Razer Blackwidow Green Switch', 2, 1, '2890000', 'c4317b6bf3.webp', NULL, '2022-05-23 08:42:36');

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
(7, 'B??n ph??m Razer Blackwidow Green Switch', 8, 4, '<p><span>Razer Blackwidow m???t trong nh???ng d&ograve;ng&nbsp;</span><a href=\"https://gearvn.com/pages/ban-phim-may-tinh\" target=\"_blank\">b&agrave;n ph&iacute;m c??</a><span>&nbsp;???????c thi???t k??? v&agrave; s???n xu???t b???i h&atilde;ng Razer Inc. - m???t c&ocirc;ng ty c???a M???, ???????c th&agrave;nh l???p b???i Min-Liang Tan, v&agrave; Robert Krakoff c&oacute; tr??? s??? ??? Califoria chuy&ecirc;n cung c???p c&aacute;c s???n ph???m, ph??? ki???n ch???t l?????ng d&agrave;nh cho game th???. C&aacute;c s???n ph???m ?????n t??? Razer th?????ng ???????c gi???i game th??? ??&aacute;nh gi&aacute; cao v??? m???t ch???t l?????ng l???n gi&aacute; c???.</span></p>', 0, '2890000', 'c4317b6bf3.webp'),
(8, 'B??n ph??m Razer Ornata Expert Pikachu Limited Edition', 8, 4, '<p>B<span>???n mu???n tr??? th&agrave;nh ng?????i gi???i nh???t? Sau ??&oacute;, h&atilde;y s???n s&agrave;ng cho b???t k??? cu???c th&aacute;ch ?????u n&agrave;o v???i b&agrave;n ph&iacute;m&nbsp;Razer ?????c tr??ng c???a ch&uacute;ng t&ocirc;i, ph&aacute;t tri???n v???i phong c&aacute;ch Pok&eacute;mon mang t&iacute;nh bi???u t?????ng. ??i???n kh&iacute; h&oacute;a thi???t l???p c???a b???n v???i b??? thi???t b??? ngo???i vi hi???u su???t cao ?????c quy???n c???a ch&uacute;ng t&ocirc;i, l???y c???m h???ng t??? Pok&eacute;mon d??? th????ng v&agrave; ???????c y&ecirc;u th&iacute;ch nh???t m???i th???i ?????i - Pikachu.</span></p>', 1, '2990000', 'd511401e6d.webp'),
(9, 'Chu???t Razer Deathadder Essential', 6, 4, '<p><span>Chu???t gaming DeathAdder Essential ???????c Razer thi???t k??? v???i ki???u d&aacute;ng c&ocirc;ng th&aacute;i h???c (Ergonomic) c??? ??i???n. Thi???t k??? ?????p m???t v&agrave; kh&aacute;c bi???t ??? c&aacute;c d&ograve;ng&nbsp;</span><a title=\"chu???t gaming\" href=\"https://gearvn.com/collections/gaming-mouse\">chu???t gaming</a><span>&nbsp;kh&aacute;c t???o ra s??? tho???i m&aacute;i, cho ph&eacute;p ng?????i ch??i duy tr&igrave; m???c hi???u su???t cao trong su???t th???i gian ch??i game d&agrave;i, v&igrave; v???y b???n s??? kh&ocirc;ng bao gi??? b??? ng???p ng???ng trong c&aacute;c tr???n chi???n n&oacute;ng b???n</span></p>', 0, '590000', '0c0a596814.webp'),
(12, 'Chu???t Dare-U LM115G Wireless', 7, 1, '<p><span>DareU LM115G l&agrave; m???t trong nh???ng d&ograve;ng&nbsp;</span><a title=\"chu???t kh&ocirc;ng d&acirc;y\" href=\"https://gearvn.com/collections/chuot-wireless\">chu???t kh&ocirc;ng d&acirc;y</a><span>&nbsp;mang ?????n cho ng?????i d&ugrave;ng s??? m???i m??? trong thi???t k???. V???i t&ocirc;ng m&agrave;u ??en huy???n b&iacute; v&agrave; sang tr???ng c&ugrave;ng v???i ??&oacute; mang tr&ecirc;n m&igrave;nh thi???t k??? bo tr&ograve;n cho c???m gi&aacute;c tho???i m&aacute;i khi d&ugrave;ng. S???n ph???m t????ng th&iacute;ch v&agrave; d??? d&agrave;ng k???t n???i v???i nhi???u h??? ??i???u h&agrave;nh ph??? th&ocirc;ng nh??: Windows, MAC.</span></p>', 1, '165000', '8c9648b497.webp'),
(14, 'DAREU EH469 7.1 RGB PINK', 5, 1, '<p><strong>Tai nghe&nbsp;DareU EH469 7.1 RGB Pink&nbsp;</strong><span>mang thi???t k??? headband k&eacute;p ????n gi???n, tr???ng l?????ng ch???&nbsp;280g (kh&ocirc;ng bao g???m d&acirc;y),&nbsp;tho???i m&aacute;i khi ??eo m&agrave; kh&ocirc;ng g&acirc;y &aacute;p l???c kh&oacute; ch???u cho ?????u.</span></p>', 1, '440000', '092e7f2de3.webp'),
(19, 'B??n ph??m AKKO PC75B Plus Black & Silver', 8, 7, '<p><span>AKKO PC75B Plus Black &amp; Silver l&agrave; s???n ph???m&nbsp;<a href=\"https://gearvn.com/pages/ban-phim-may-tinh\" target=\"_blank\">b&agrave;n ph&iacute;m c??</a>&nbsp;?????n t??? th????ng hi???u AKKO. V???i ngo???i h&igrave;nh g???n g&agrave;ng c&ugrave;ng h??? th???ng LED r???c r??? t??ng th&ecirc;m t&iacute;nh th???m m??? cho g&oacute;c l&agrave;m vi???c c???a ng?????i d&ugrave;ng.</span></p>\r\n<div><span><br /></span></div>', 0, '2190000', 'fde2f47837.webp'),
(20, 'Chu???t Razer Deathadder V2 Halo Infinite Edition', 6, 4, '<p><span>???????c ra m???t nh?? l&agrave; m???t s??? t&aacute;i sinh m???nh m??? h??n&nbsp;cho d&ograve;ng&nbsp;Deathadder V2 ?????n t??? nh&agrave; Razer, chu???t Razer Deathadder V2 Halo Infinite Edition l&agrave; m???t trong nh???ng con&nbsp;</span><a href=\"https://gearvn.com/pages/chuot-may-tinh\" target=\"_blank\">chu???t gaming</a><span>&nbsp;c&oacute; thi???t k??? ?????c l??? v&agrave; ho&agrave;nh tr&aacute;ng nh???t hi???n nay, m???t s??? l???a kh&ocirc;ng th??? b??? qua d&agrave;nh cho nh???ng game th??? ch&iacute;nh hi???u. V???i c???m bi???n v&agrave; c&ocirc;ng t???c th??? h??? m???i ???????c t???o ra trong m???t h&igrave;nh th???c nh??? h??n, h???a h???n s??? l&agrave;&nbsp;s???n ph???m ph&aacute; ?????o th??? tr?????ng game th??? s???p t???i.</span></p>', 0, '2090000', 'a3bd6885de.webp'),
(21, 'Chu???t gaming DareU A960 Yellow Ultralight', 6, 1, '<p><strong>DareU A960&nbsp;Yellow Ultralight</strong><span>&nbsp;b???t ng??? n???i l&ecirc;n khi l&agrave;&nbsp;</span><a href=\"https://gearvn.com/collections/ban-phim-co-gaming\">chu???t gaming gi&aacute; r???</a><span>&nbsp;?????u ti&ecirc;n ?????t ???????c&nbsp;tr???ng l?????ng si&ecirc;u nh??? (ch??? 65 gram)&nbsp;m&agrave;&nbsp;kh&ocirc;ng c???n d&ugrave;ng v??? l???. ??&acirc;y l&agrave; m???t b?????c ti???n v?????t b???c m&agrave; c&oacute; s??? c&aacute;c nh&agrave; s???n xu???t&nbsp;chu???t gaming&nbsp;kh&aacute;c ph???i ganh t??? v???i DareU.</span></p>', 1, '740000', '3541f6c62f.webp'),
(22, 'B??n ph??m c?? DareU EK807G Wireless', 8, 1, '<p><span>DareU EK807G Wireless&nbsp;s??? d???ng 2 vi&ecirc;n pin AAA c???c k??? th&ocirc;ng d???ng, d??? mua. Th???i l?????ng s??? d???ng pin t???i ??a l&ecirc;n t???i 6 th&aacute;ng, ??&aacute;p ???ng c&ocirc;ng vi???c s??? d???ng ph&iacute;m l&acirc;u d&agrave;i, b???n b??? v&agrave; r???t ti???n l???i. Ch??? l???p pin ??&atilde; c&oacute; s???n khe c???t ?????u USB Receiver.</span></p>', 1, '640000', 'd3ba340024.webp'),
(24, 'B??n ph??m c?? AKKO 3084B Plus Wireless Black Pink', 8, 7, '<p><span>Mojike l&agrave; th????ng hi???u con c???a AKKO v???i c&aacute;c s???n ph???m ??&aacute;nh m???nh v&agrave;o ph&acirc;n kh&uacute;c b&agrave;n ph&iacute;m c?? gi&aacute; r???, b&igrave;nh d&acirc;n, d??? ti???p c???n kh&aacute;ch h&agrave;ng.&nbsp;V???i b??? Switch Akko c???a h&atilde;ng ???????c thi???t k??? t??? m??? t???ng chi ti???t. Ph&ugrave; h???p v???i h???u h???t nhu c???u c???a ng?????i d&ugrave;ng v&agrave; cho ????? b???n cao</span></p>', 1, '820000', '10c2131ca4.webp'),
(25, 'Chu???t AKKO RG325 Dragon Ball Z ??? Goku', 7, 7, '<p><span>S??? h???p t&aacute;c c???a Akko v???i t&aacute;c gi??? Toei Animation v??? nh&acirc;n v???t Goku. M???u&nbsp;</span><a href=\"https://gearvn.com/collections/chuot-duoi-500-nghin\"><strong>chu???t ch??i game gi&aacute; r???</strong></a><span>&nbsp;</span><em>RG325&nbsp;</em><span>v???i phi&ecirc;n b???n SONGOKU&nbsp;mang ?????n tone m&agrave;u c???a ch&uacute; kh??? con Songoku v&ocirc; c&ugrave;ng ??&aacute;ng y&ecirc;u.</span></p>', 1, '690000', '3bcb42d855.webp'),
(26, 'Chu???t Akko AG325', 6, 7, '<p><span>V???i thi???t k??? c&ocirc;ng th&aacute;i h???c&nbsp;n&agrave;y th&igrave; cho d&ugrave; b???n l&agrave; ng?????i thu???n tay ph???i hay tay tr&aacute;i ?????u c&oacute; th??? s??? d???ng ho&agrave;n to&agrave;n d??? d&agrave;ng. Kh&ocirc;ng ph???i g???p kh&oacute; kh??n n&agrave;o khi ??ang di chu???t ho???c b???m nh???m.</span></p>', 1, '490000', '0c0776caf6.webp'),
(27, 'B??n ph??m Akko 3084SP Oceans', 8, 7, '<p><span>Nh???c t???i&nbsp;B&agrave;n ph&iacute;m Akko 3084SP Oceanstar - Cherry switch l&agrave; ng?????i d&ugrave;ng s??? nh??? ngay t???i s??? nh??? g???n, ti???n d???ng v???i kh??? n??ng ti???t ki???m t???i ??a kh&ocirc;ng gian tuy nhi&ecirc;n v???n s??? h???u ?????y ????? t&iacute;nh n??ng c???n thi???t.</span></p>\r\n<div><span><br /></span></div>', 1, '1200000', 'c091d32b9e.webp'),
(28, 'Chu???t Gaming Faker ', 8, 7, '<p>sasas</p>', 1, '3269000', '9c6d6c257a.webp');

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
(8, 'B??n ph??m c??', '8c26f55135.jpg', 1),
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
