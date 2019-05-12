-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 05 Mai 2019 à 03:06
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecom_store`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

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
-- Contenu de la table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(0, 'Thông', 'lethong291@gmail.com', 'Thong123', 'ic_manager.png', 'Củ Chi', '    Admin', '01676473481', 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cat_desc` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Sản Phẩm Bán Chạy', 'Những Sản Phẩm Bán Chạy Nhất Được Khách Hàng Lựa chọn Nhiều Nhất'),
(2, 'Sản Phẩm Mới Nhất', 'Cửa hàng luôn có sản phẩm mới nhất trên thị trường'),
(3, 'Sản Phẩm Nổi Bật', 'Những Sản Phẩm Nổi Bật');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

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
-- Contenu de la table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(1, 'Lê Trọng Thông', 'behuuhuan@gmail.com', '123456', 'Việt Nam', 'HCM', '1676473481', '12,Lê Vĩnh Huy', 'ic_manager.png', '::1'),
(3, 'Nguyễn A', 'nguyena@yahoo.com', '123456', 'Việt Nam', 'Tây Ninh', '908070605', '1a', 'ic_manager.png', '::1');

-- --------------------------------------------------------

--
-- Structure de la table `customer_orders`
--

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
-- Contenu de la table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `order_date`, `order_status`, `size`) VALUES
(1, 2, 1900000, 1459734463, 1, '2019-04-28', 'pending', 'Medium'),
(2, 1, 1900000, 633848648, 1, '2019-04-28', 'Complete', ''),
(3, 1, 1900000, 1624158031, 1, '2019-04-28', 'pending', ''),
(4, 1, 1900000, 1787000381, 1, '2019-04-28', 'pending', ''),
(5, 3, 5700000, 1555540475, 3, '2019-04-28', 'Complete', ''),
(6, 3, 1900000, 2130556179, 1, '2019-04-28', 'Complete', ''),
(7, 1, 9500000, 1632874603, 5, '2019-04-28', 'Complete', 'Large');

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

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
-- Contenu de la table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(0, 1555540475, 1, 'BIDV', 123456, 25083649, '28-04-2019'),
(0, 1555540475, 2, 'TP Bank', 123456, 25083649, '28-04-2019'),
(0, 2130556179, 1, 'Sacombank', 123456, 25083649, '28-04-2019'),
(0, 1632874603, 5, 'BIDV', 123456, 25083649, '28/04/2019');

-- --------------------------------------------------------

--
-- Structure de la table `pending_orders`
--

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
-- Contenu de la table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(0, 1, 1632874603, 4, 5, 'Large', 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

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
-- Contenu de la table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(4, 5, 2, '2019-04-13 02:16:03', 'Máy Khoan', 'mk2.jpg', 'mk3.jpg', 'mk1.jpg', 1900000, 'MK', 'Máy Khoan');

-- --------------------------------------------------------

--
-- Structure de la table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `p_cat_desc` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Contenu de la table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Âm Thanh', 'Cung cấp các phụ kiện âm thanh chính hãng'),
(2, 'Mạch Ứng dụng', 'Cung cấp các loại mạch điện tử và ứng dụng'),
(3, 'Linh Kiện', 'Cung cấp các loại linh kiện điện tử, transistor'),
(4, 'LED', 'Các loại LED :LED dây,LED 7 đoạn...'),
(5, 'Phụ Kiện Chung', 'Lưỡi cắt,Keo AB,Tản Nhiệt,Kê Bo...');

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `slide_image` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Contenu de la table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', '1.jpg'),
(2, 'Slide number 2', '2.jpg'),
(3, 'Slide number 3', '3.jpg'),
(4, 'Slide number 4', '4.jpg');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Index pour la table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Index pour la table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `invoice_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1632874604;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
