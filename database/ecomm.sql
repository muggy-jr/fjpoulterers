-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2020 at 11:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Cage Water Systems', 'Water Systems'),
(2, 'Chicken Feeders', 'Chicken Feeders'),
(3, 'Incubator Turning Systems', 'Incubator Turning Systems'),
(4, 'Controlers', 'Controlers');


-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Feeder', '<p>Six litre feeder for chicken. F, M&reg; N&reg; F.</p>\r\n', 'lorem', 3, 'Feeder.jpg', '2020-12-31', 4),
(2, 1, 'Feeder', '', 'A', 3, 'Feeders.jpg', '2018-05-10', 3),
(3, 1, 'DELL ', '', '', 599, 'Feeder.jpg', '2018-05-12', 1),
(4, 1, 'LENO', '','', 399, 'Feeders.jpg', '2018-05-10', 3),
(5, 3, 'JOSE', '','apple-9-7-ipad-32-gb-gold', 339, 'Feeder.jpg', '2018-07-09', 3),
(6, 1, 'DELL Inspiron', ' ', 'dell', 449.99, 'Feeders.jpg', '0000-00-00', 0),
(7, 3, 'APPLE ', 'coating', 'apple-10', 619, 'Feeder.jpg', '0000-00-00', 0),
(8, 1, 'ASUS Transformer ', 'mobile charger ', 'asus-transformer', 549.99, 'Feeders.jpg', '0000-00-00', 0),
(9, 2, 'PC SPECIALIST', '','to suit ', 599.99, 'Feeder.jpg', '0000-00-00', 0),
(10, 2, 'NEW', '', '', 599.99, 'Feeders.jpg', '2018-05-10', 1),
(11, 2, 'HP Barebones', ' theaggressive', 'hp-bar', 489.98, 'Feeder.jpg', '2018-05-12', 1),
(12, 2, 'ACER','' ,'resolutions&nbsp;', 749.99, 'Feeders.jpg', '2018-05-12', 3),
(13, 2, 'HP Pavilion', '', 'hp-pavilion', 799.99, 'Feeder.jpg', '2018-05-12', 1),
(14, 2, 'LENOVO ', '', 'lenovo-legion', 899.99, 'Feeders.jpg', '2018-05-10', 13),
(15, 2, 'PC C', 'generation Intel&reg;', '', 999.99, 'Feeder.jpg', '2018-07-09', 1),
(16, 2, 'Core ', '<p>Processor: Intel&reg;  GHz- 3MB</p>\r\n\r\n<p>Memory (RAM)', 'pc-sp', 649.99, 'Feeders.jpg', '2018-05-10', 2),
(17, 3, 'AMAZON', 'pp', 'amazon', 49.99, 'Feeder.jpg', '2018-05-12', 1),
(18, 3, 'Fire HD ', 'dada', 'kak', 79.99, 'Feeder.jpg', '2018-05-12', 2),
(19, 3, 'HD Black', 'battery life, a vibrant 8&quot', '-fire-hd-8-', 99.99, 'Feeders.jpg', '2018-05-10', 1),
(20, 3, 'iPad', 'wide color', 'grey', 339, 'Feeder.jpg', '2018-05-12', 1),
(27, 1, 'XPS', 'class laptop ', 'dell-xps-15-9560', 1599, 'Feeders.jpg', '2018-07-09', 9),
(28, 4, 'Samsung Note 8', 'Galaxy Note8 in your', 'samsung-note-8', 829, 'Feeder.jpg', '0000-00-00', 0),
(29, 4, 'Samsung Galaxy S', 'human eye. It&#39;', '', 889.99, 'Feeders.jpg', '2018-07-09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'fjtzpoulters@gmail.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'F&J', 'SLAES HUB', '', '', 'logoo.png', 1, '', '', '2022-09-25'),
(13, 'lucy@gmail.com', '$2y$10$THCiaipRqs51LgZNNSp7henK8SJ17r7abaH44slwjXavv/nVEw29e', 0, 'Lucy Willilo', 'The sexy', 'Dar es salaam City', '0786642298', 'cover.jpg', 1, '', '', '2022-09-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
