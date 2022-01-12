-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 11, 2022 lúc 05:47 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fastfood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `visible`) VALUES
(1, 'KFC', 1),
(2, 'Jollibee', 1),
(3, 'Domino\'sPizza', 1),
(4, 'Cocacola', 1),
(5, 'McDonald\'s', 1),
(6, 'Lotteria', 1),
(7, 'Burger King', 1),
(8, 'PizzaHut', 1),
(17, 'a', 1),
(18, 'VN', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cart_id`, `product_id`, `product_title`, `quantity`, `user_id`) VALUES
(237, 34, 'C3', 1, 31),
(238, 38, 'Pizza Viền Phomai', 1, 31),
(242, 29, 'Combo A', 2, 31),
(243, 30, 'Combo Gà Rán B', 3, 31),
(244, 49, 'Burger Bò Nướng', 1, 31),
(245, 55, 'nuoc', 2, 31),
(246, 54, 'Pizza Viền Phomai1111111', 1, 31),
(247, 51, 'â', 3, 31),
(248, 56, 'rrr', 7, 31);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `visible`) VALUES
(1, 'Gà rán', 1),
(2, 'Nước', 1),
(3, 'Pizza', 1),
(4, 'Hamburger', 1),
(5, 'Snack', 1),
(17, 'Ruou', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8_unicode_ci NOT NULL,
  `product_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `date` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `product_soluong` tinyint(255) DEFAULT 1,
  `brand_id` int(100) NOT NULL,
  `cat_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`, `views`, `visible`, `date`, `product_soluong`, `brand_id`, `cat_id`) VALUES
(29, 'Combo A', 77000, '2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống\r\n1 Pepsi Lon', 'f1.jpg', 'ga ran, gà, gà rán, chicken, nước, combo a, gà 2 miếng', 0, 1, '', 1, 1, 1),
(30, 'Combo Gà Rán B', 87000, '1 Phần Hot Wings 3 Miếng\r\n1 Khoai Tây Chiên (Lớn)\r\n1 Pepsi Lon', 'f2.jpg', 'ga ran, gà, gà rán, chicken, nước, combo a, gà 2 miếng', 0, 1, '', 1, 1, 1),
(31, 'Combo Gà Rán C', 99000, '1 Miếng Gà Giòn Cay / 1 Miếng Gà Giòn Không Cay / 1 Miếng Gà Truyền Thống\r\n1 Burger Tôm\r\n1 Pepsi Lon', 'f3.jpg', 'ga ran, gà, gà rán, chicken, nước, combo a, gà 2 miếng', 0, 1, '', 1, 1, 1),
(32, 'Combo Cơm B', 199000, '1 Cơm Gà Giòn Cay / 1 Cơm Gà Giòn Không Cay / 1 Cơm Gà Truyền Thống / 1 Cơm Phi-lê Gà Quay Flava / 1 Cơm Phi-lê Gà Quay Tiêu / 1 Cơm Phi-lê Gà Giòn / 1 Cơm Gà Xiên Que\r\n1 Miếng Gà Giòn Cay / 1 Miếng Gà Truyền Thống / 1 Miếng Gà Giòn Không Cay\r\n1 Pepsi Lon', 'f4.jpg', 'cơm gà , cơm', 0, 1, '', 1, 1, 1),
(34, 'C3', 97000, '2 MIẾNG GÀ GIÒN + KHOAI TÂY VỪA + NƯỚC NGỌT', 'f5.png', 'ga ran, gà, gà rán, chicken, nước, combo a, gà 2 miếng', 0, 1, '', 1, 1, 2),
(38, 'Pizza Viền Phomai', 7500000, 'Pizza', 'f6.jpg', 'ga ran, gà, gà rán, chicken, nước, combo a, gà 2 miếng', 0, 1, '', 1, 3, 1),
(48, 'Burger Phomai', 49000, 'Nhân phomai tan chảy', 'f7.jpg', 'burger', 0, 1, '', 1, 4, 5),
(49, 'Burger Bò Nướng', 48000, 'Bò nướng khoai tây lát', 'f8.jpg', 'burger', 0, 1, '', 1, 4, 2),
(51, 'â', 1, '', 'f1.jpg', 'a', 0, 1, '', 1, 3, 1),
(54, 'Pizza Viền Phomai1111111', 1, '1', 'f6.jpg', 'qqq', 0, 1, '', 1, 8, 3),
(55, 'nuoc', 1, '1', 'f5.png', '2', 0, 1, '', 1, 6, 2),
(56, 'rrr', 1, 'ư', 'f4.jpg', 'a', 0, 1, '', 1, 18, 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8_unicode_ci NOT NULL,
  `user_address` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'guest',
  `visible` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `ip_address`, `name`, `email`, `password`, `country`, `city`, `contact`, `user_address`, `image`, `role`, `visible`) VALUES
(14, '127.0.0.1', 'Tien Nghia', 'admin@gmail.com', '750a301a171efe0917a93d2c0c441d8b', NULL, NULL, 'contact2', 'address2', '1.jpg', 'admin', 1),
(30, '::1', 'asd', 'test1@gmail.com', 'test', 'AD', 'asd', 'asd', 'asd', '8-640-1634396279-967-width640height480.jpg', 'guest', 1),
(31, '::1', 'asd', 'test@gmail.com', '7815696ecbf1c96e6894b779456d330e', 'AO', 'asd', 'asd', 'asd', '1634263844-698-thumbnail-width640height480.jpg', 'admin', 1),
(37, '::1', 'asd', 'asd@gmail.com', '7815696ecbf1c96e6894b779456d330e', 'AD', 'asd', 'asd', 'asd', '1634263844-698-thumbnail-width640height480.jpg', 'guest', 1),
(38, '::1', 'asd', 'asd`@gmail.com', '7815696ecbf1c96e6894b779456d330e', 'AR', 'asd', 'asd', 'asd', '1634263844-698-thumbnail-width640height480.jpg', 'guest', 1),
(39, '::1', 'asd', 'asd7@gmail.com', '7815696ecbf1c96e6894b779456d330e', 'AS', 'asd', 'asd', 'asd', '1634201500-168-thumbnail-width640height480.jpg', 'guest', 1),
(40, '::1', 'oc cho', 'cho@gmail.com', '7815696ecbf1c96e6894b779456d330e', 'CG', 'asd', 'asd', 'asd', '1634263844-698-thumbnail-width640height480.jpg', 'guest', 1),
(41, '::1', 'dsadsa', 'dsa@gmail.com', '7815696ecbf1c96e6894b779456d330e', 'HR', 'asd', 'asd', 'asd', '1634263844-698-thumbnail-width640height480.jpg', 'guest', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
