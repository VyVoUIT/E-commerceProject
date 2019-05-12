-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 12, 2019 lúc 08:47 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecom_store`
--
CREATE DATABASE IF NOT EXISTS `ecom_store` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecom_store`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `admin_about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(0, 'Thông', 'lethong291@gmail.com', 'Thong123', 'ic_manager.png', 'Củ Chi', '    Admin', '01676473481', 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `size`) VALUES
(4, '::1', 1, ''),
(5, '::1', 1, ''),
(8, '::1', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cat_desc` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Sản Phẩm Bán Chạy', 'Những Sản Phẩm Bán Chạy Nhất Được Khách Hàng Lựa chọn Nhiều Nhất'),
(2, 'Sản Phẩm Mới Nhất', 'Cửa hàng luôn có sản phẩm mới nhất trên thị trường'),
(3, 'Sản Phẩm Nổi Bật', 'Những Sản Phẩm Nổi Bật');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_pass` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_country` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_city` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_contact` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_address` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_image` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_ip` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(1, 'Lê Trọng Thông', 'behuuhuan@gmail.com', '123456', 'Việt Nam', 'HCM', '1676473481', '12,Lê Vĩnh Huy', 'ic_manager.png', '::1'),
(3, 'Nguyễn A', 'nguyena@yahoo.com', '123456', 'Việt Nam', 'Tây Ninh', '908070605', '1a', 'ic_manager.png', '::1'),
(4, 'Vy Vy', 'test@gmail.com', '1234567', 'TP HCM', 'Tân Bình', '012345678', 'abc', 'CSC_1474.JPG', '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `size` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `order_date`, `order_status`, `size`) VALUES
(1, 2, 1900000, 1459734463, 1, '2019-04-28', 'pending', 'Medium'),
(2, 1, 1900000, 633848648, 1, '2019-04-28', 'Complete', ''),
(3, 1, 1900000, 1624158031, 1, '2019-04-28', 'pending', ''),
(4, 1, 1900000, 1787000381, 1, '2019-04-28', 'pending', ''),
(5, 3, 5700000, 1555540475, 3, '2019-04-28', 'Complete', ''),
(6, 3, 1900000, 2130556179, 1, '2019-04-28', 'Complete', ''),
(7, 1, 9500000, 1632874603, 5, '2019-04-28', 'Complete', 'Large'),
(8, 4, 1900000, 2011575508, 1, '2019-05-05', 'pending', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(0, 1555540475, 1, 'BIDV', 123456, 25083649, '28-04-2019'),
(0, 1555540475, 2, 'TP Bank', 123456, 25083649, '28-04-2019'),
(0, 2130556179, 1, 'Sacombank', 123456, 25083649, '28-04-2019'),
(0, 1632874603, 5, 'BIDV', 123456, 25083649, '28/04/2019');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pending_orders`
--

DROP TABLE IF EXISTS `pending_orders`;
CREATE TABLE `pending_orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `order_status` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(0, 1, 1632874603, 4, 5, 'Large', 'pending'),
(0, 4, 2011575508, 4, 1, '', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_img1` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_img2` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_img3` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_price` int(20) NOT NULL,
  `product_keywords` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(4, 5, 2, '2019-04-13 02:16:03', 'Máy Khoan', 'mk2.jpg', 'mk3.jpg', 'mk1.jpg', 1900000, 'MK', 'Máy Khoan'),
(5, 1, 3, '2019-05-05 14:17:57', 'Loa Bluetooth Remax RB-M26', '1273_6.jpg', 'loa-bluetooth-kiem-dong-ho-bao-thuc-remax-rb-m26-19032018100136.jpg', '', 600000, 'M26', ''),
(6, 1, 3, '2019-05-05 14:19:53', 'Loa di động JBL', '1592_a_jbl_charge_4_blue_songlongmedia.jpg', 'loa-di-dong-jbl-xtreme-anh-dai-dien-1.jpg', 'loa-jbl-extreme-1-chinh.jpg', 550000, 'M23', ''),
(7, 1, 2, '2019-05-05 14:22:00', 'Tai nghe EP AWEI ES500ni', 'tai-nghe-ep-awei-es500ni-2-4-600x600.jpg', '', '', 230000, 'M21', ''),
(8, 1, 1, '2019-05-05 14:23:01', 'Tai nghe EP AWEI Q19HI', 'tai-nghe-ep-awei-q19hi-add-600x600.jpg', '', '', 350000, 'M20', ''),
(9, 1, 3, '2019-05-05 14:23:49', 'Tai nghe Samsung S5', 'tai-nghe-s5.jpg', '', '', 330000, 'M18', ''),
(10, 1, 1, '2019-05-05 14:25:26', 'Tai nghe Beast Studio 3 Wireless', '5900286overear-solo2-red-zoom-thrqrtright-o-jpeg.jpg', 'beats_studio_3_wireless-_red.jpg', '', 1900, 'M12', ''),
(11, 1, 3, '2019-05-05 14:26:41', 'Loa Bluetooth 2020Q', '143822967540.jpg', 'loa-bluetooth-2020q-1m4G3-27ede8.jpg', '', 500000, 'M10', ''),
(12, 3, 1, '2019-05-05 14:28:11', 'Breadboard cable', 'breadboard-cable-65-500x500.jpg', '', '', 200000, 'L10', ''),
(13, 3, 1, '2019-05-05 14:28:55', 'Breadboard cable 02', 'dcawm.jpg', '', '', 150000, 'L11', ''),
(14, 2, 1, '2019-05-05 14:30:18', 'Mạch Altera DE2', 'altera_de2.jpg', '', '', 650000, 'A10', ''),
(15, 2, 2, '2019-05-05 14:30:57', 'Mạch C3H', 'C3H-0.jpg', '', '', 250000, 'A11', ''),
(16, 2, 3, '2019-05-05 14:31:46', 'Kit FPGA Altera DE2', 'kit-fpga-altera DE2-115.jpg', '', '', 680000, 'A12', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `p_cat_desc` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Âm Thanh', 'Cung cấp các phụ kiện âm thanh chính hãng'),
(2, 'Mạch Ứng dụng', 'Cung cấp các loại mạch điện tử và ứng dụng'),
(3, 'Linh Kiện', 'Cung cấp các loại linh kiện điện tử, transistor'),
(4, 'LED', 'Các loại LED :LED dây,LED 7 đoạn...'),
(5, 'Phụ Kiện Chung', 'Lưỡi cắt,Keo AB,Tản Nhiệt,Kê Bo...');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `slide_image` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', '1.jpg'),
(2, 'Slide number 2', '2.jpg'),
(3, 'Slide number 3', '3.jpg'),
(4, 'Slide number 4', '4.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `invoice_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2011575509;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
