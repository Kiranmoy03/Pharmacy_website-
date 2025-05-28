-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2025 at 01:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`, `quantity`, `created_at`) VALUES
(57, 14, 3, 1, '2025-05-27 11:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `description`, `created_at`) VALUES
(1, 'Antibiotics', '', '2025-05-19 03:53:20'),
(2, 'Digestive', NULL, '2025-05-19 03:53:20'),
(3, 'Eye Care', '', '2025-05-19 03:53:20'),
(4, 'First Aid', NULL, '2025-05-19 03:53:20'),
(5, 'Pain Relief', NULL, '2025-05-19 03:53:20');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `message_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `delivered_at` timestamp NULL DEFAULT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `total_amount`, `status`, `delivered_at`, `payment_method`, `shipping_address`, `created_at`) VALUES
(1, 1, 65.00, 'completed', NULL, NULL, '123 Main St, City', '2025-05-17 05:01:11'),
(2, 1, 50.00, 'completed', '2025-05-17 08:10:00', NULL, '123 Main St, City', '2025-05-17 05:01:11'),
(3, 2, 75.00, 'completed', '2025-05-17 08:09:54', NULL, '456 Oak Ave, City', '2025-05-17 05:01:11'),
(4, 3, 50.00, 'completed', '2025-05-17 08:09:52', NULL, NULL, '2025-05-17 05:14:14'),
(5, 3, 22.00, 'completed', '2025-05-17 08:09:50', NULL, NULL, '2025-05-17 05:21:06'),
(6, 3, 20.00, 'completed', '2025-05-17 08:09:36', 'cod', NULL, '2025-05-17 05:32:40'),
(7, 3, 48.00, 'completed', '2025-05-17 08:09:41', 'cod', NULL, '2025-05-17 05:34:24'),
(8, 3, 10.00, 'completed', '2025-05-17 08:09:40', 'cod', NULL, '2025-05-17 06:10:56'),
(9, 3, 48.00, 'completed', '2025-05-17 08:09:38', 'card', NULL, '2025-05-17 07:13:30'),
(10, 3, 20.00, 'returned', '2025-05-17 08:09:23', 'cod', NULL, '2025-05-17 07:14:09'),
(11, 3, 20.00, 'cancelled', NULL, 'cod', NULL, '2025-05-17 07:16:46'),
(12, 3, 20.00, 'cancelled', NULL, 'cod', NULL, '2025-05-17 07:19:19'),
(13, 12, 15.00, 'cancelled', NULL, 'cod', NULL, '2025-05-17 16:00:28'),
(14, 3, 20.00, 'completed', '2025-05-17 17:11:35', 'cod', NULL, '2025-05-17 17:11:08'),
(15, 14, 20.00, 'completed', '2025-05-17 17:17:00', 'cod', NULL, '2025-05-17 17:16:46'),
(16, 14, 15.00, 'completed', '2025-05-18 06:57:30', 'cod', NULL, '2025-05-17 18:09:24'),
(17, 3, 50.00, 'cancelled', NULL, 'cod', NULL, '2025-05-18 08:02:20'),
(18, 14, 30.00, 'cancelled', NULL, 'cod', NULL, '2025-05-18 08:57:45'),
(19, 14, 10.00, 'completed', '2025-05-24 07:12:01', 'cod', NULL, '2025-05-19 06:48:33'),
(20, 19, 15.00, 'completed', '2025-05-24 07:12:00', 'cod', NULL, '2025-05-19 06:50:31'),
(21, 3, 45.00, 'completed', '2025-05-24 07:12:02', 'cod', NULL, '2025-05-19 07:31:44'),
(22, 3, 10.00, 'cancelled', NULL, 'cod', NULL, '2025-05-19 07:32:00'),
(23, 3, 20.00, 'completed', '2025-05-25 04:30:06', 'cod', NULL, '2025-05-23 17:05:07'),
(24, 3, 50.00, 'completed', '2025-05-25 04:30:02', 'cod', NULL, '2025-05-25 04:25:23'),
(25, 14, 30.00, 'processing', NULL, 'cod', NULL, '2025-05-27 11:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 1, 2, 10.00),
(2, 1, 2, 1, 15.00),
(3, 1, 3, 1, 20.00),
(4, 2, 4, 2, 25.00),
(5, 3, 5, 3, 30.00),
(6, 4, 3, 1, 20.00),
(7, 4, 5, 1, 30.00),
(8, 5, 7, 1, 22.00),
(9, 6, 3, 1, 20.00),
(10, 7, 5, 1, 30.00),
(11, 7, 8, 1, 18.00),
(12, 8, 1, 1, 10.00),
(13, 9, 5, 1, 30.00),
(14, 9, 8, 1, 18.00),
(15, 10, 3, 1, 20.00),
(16, 11, 3, 1, 20.00),
(17, 12, 3, 1, 20.00),
(18, 13, 2, 1, 15.00),
(19, 14, 1, 1, 10.00),
(20, 14, 1, 1, 10.00),
(21, 15, 3, 1, 20.00),
(22, 16, 2, 1, 15.00),
(23, 17, 3, 1, 20.00),
(24, 17, 5, 1, 30.00),
(25, 18, 5, 1, 30.00),
(26, 19, 1, 1, 10.00),
(27, 20, 2, 1, 15.00),
(28, 21, 3, 1, 20.00),
(29, 21, 4, 1, 25.00),
(30, 22, 1, 1, 10.00),
(31, 23, 3, 1, 20.00),
(32, 24, 3, 1, 20.00),
(33, 24, 5, 1, 30.00),
(34, 25, 3, 1, 20.00),
(35, 25, 1, 1, 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `status` varchar(20) DEFAULT 'active',
  `category` varchar(50) DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `price`, `stock_quantity`, `status`, `category`, `manufacturer`, `image_url`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Paracetamol 500mg', 'Pain relief and fever reducer', 10.00, 105, 'active', 'Pain Relief', 'Generic', 'uploads/products/68299cca6118b.jpg', '2025-05-17 05:01:11', '2025-05-24 05:50:47', 5),
(2, 'Ibuprofen 400mg', 'Anti-inflammatory pain reliever', 15.00, 150, 'active', 'Pain Relief', 'Generic', 'uploads/products/68299e515e4a8.jpg', '2025-05-17 05:01:11', '2025-05-19 03:53:20', 5),
(3, 'Antacid Syrup', 'For heartburn and indigestion', 20.00, 200, 'active', 'Digestive', 'Generic', 'uploads/products/68299f501b171.jpg', '2025-05-17 05:01:11', '2025-05-19 03:53:20', 2),
(4, 'Cough Syrup', 'For dry and productive cough', 25.00, 180, 'active', 'Respiratory', 'Generic', 'uploads/products/68299f5d66c25.jpg', '2025-05-17 05:01:11', '2025-05-19 03:53:20', NULL),
(5, 'Antibiotic Tablet', 'Broad spectrum antibiotic', 30.00, 120, 'active', 'Antibiotics', 'Generic', 'uploads/products/68299f67c894b.jpg', '2025-05-17 05:01:11', '2025-05-19 03:53:20', 1),
(6, 'Multivitamin', 'Daily multivitamin supplement', 40.00, 250, 'active', 'Supplements', 'Generic', 'uploads/products/68299f7613c18.jpg', '2025-05-17 05:01:11', '2025-05-19 03:53:20', NULL),
(7, 'Eye Drops', 'For dry and irritated eyes', 22.00, 150, 'active', 'Eye Care', 'Generic', 'uploads/products/68299f89350a0.jpg', '2025-05-17 05:01:11', '2025-05-19 03:53:20', 3),
(8, 'Antiseptic Liquid', 'For wound cleaning', 18.00, 200, 'active', 'First Aid', 'Generic', 'uploads/products/68299fce2c15b.jpg', '2025-05-17 05:01:11', '2025-05-19 03:53:20', 4);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(50) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Pharmacy Management', '2025-05-19 06:35:20', '2025-05-19 06:35:20'),
(2, 'items_per_page', '10', '2025-05-19 06:35:20', '2025-05-19 06:35:20'),
(3, 'maintenance_mode', '0', '2025-05-19 06:35:20', '2025-05-19 07:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `pincode` varchar(10) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'user',
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `full_name`, `phone`, `address`, `created_at`, `pincode`, `role`, `status`) VALUES
(3, 'user3', 'hkiranmoy@gamil.com', '$2y$10$T74BEBNh5m2f9mJO6ZhK2eykBx595ipwDB9UMe7TxIl4Clk9YgSjS', 'Kiranmoy Handique', '7086551649', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Nakachari                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', '2025-05-17 05:03:04', '785635', 'user', 'active'),
(12, 'user12', 'ananta@gmail.com', '$2y$10$iI7uoj3fK8ROvsvPmS2nt.xcnOqpIxkdPN5Bxlgueh17VBGSsLdQa', 'Ananta bora dutta', '8011896578', 'Nakachari                                                                                                                                                                                                                                                            ', '2025-05-17 15:55:17', '785635', 'user', 'active'),
(14, 'admin', 'karungogoi@gmail.com', '$2y$10$EmG7xsWTDWYyJVMrTX8fY.TxZDAraZfcacNbZhLkDKNUn0EhD5tOq', 'Karun Gogoi', '9123456789', 'Nakachari Sukafa Nagar', '2025-05-17 16:31:13', '785635', 'admin', 'active'),
(16, 'pharmacyadmin', 'pharmacy@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pharmacy Admin', NULL, NULL, '2025-05-18 05:36:21', NULL, 'admin', 'active'),
(19, '', 'arnab@gmail.com', '$2y$10$85B6dJW7RfgRSj5dqqbkC.U4BhtpbDXGwh7b1M70kocsaEDojC72W', 'Arnab Goswami', '9856435673', NULL, '2025-05-19 06:49:53', NULL, 'user', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `idx_category` (`category`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `fk_product_category` (`category_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD KEY `idx_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
