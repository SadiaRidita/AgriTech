-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2021 at 07:55 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `f1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact_number` int(12) DEFAULT NULL,
  `age` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `city`, `address`, `contact_number`, `age`) VALUES
(1474, 'johnson', 'khulna', '21/5 road', 175715, 40),
(1617, 'hakim', 'gazipur', '36 road', 156462, 35),
(1628, 'jewel', 'rajshahi', '10/1 road', 117514, 36),
(1648, 'mahmudur', 'cumilla', '9 road', 141436, 33),
(1712, 'kalam', 'gazipur', '8/4 road', 146812, 42);

-- --------------------------------------------------------

--
-- Table structure for table `farm`
--

CREATE TABLE `farm` (
  `farm_id` int(10) NOT NULL,
  `farm_name` varchar(100) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `farmer_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farm`
--

INSERT INTO `farm` (`farm_id`, `farm_name`, `city`, `address`, `farmer_id`) VALUES
(11, 'Kazi Farms', 'khulna', '24/1 baro mosjid road', 1401),
(18, 'Quality Feeds', 'gazipur', '14 ramnogor', 1419),
(49, 'maar', 'sylhet', '77/1 street', 1435),
(88, 'agrofact', 'gazipur', '45 gazipur', 1403),
(98, ' asik Farms', 'cumilla', '14 street', 1461);

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `farmer_id` int(10) NOT NULL,
  `farmer_name` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact_number` int(12) DEFAULT NULL,
  `farm_id` int(10) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`farmer_id`, `farmer_name`, `city`, `address`, `contact_number`, `farm_id`, `product_id`) VALUES
(1401, 'hasan', 'khulna', '24/5 road', 145715, 11, 145),
(1403, 'rakib', 'gazipur', '3/4 road', 146412, 88, 314),
(1419, 'iqbal', 'gazipur', '15 road', 157624, 18, 152),
(1435, 'nahid', 'sylhet', '21 road', 121472, 49, 121),
(1461, 'habib', 'cumilla', '9/1 road', 171436, 98, 278);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `farmer_id` int(10) DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `user_name`, `password`, `farmer_id`, `customer_id`) VALUES
(1, 'hasan', '1401hasan', 1401, NULL),
(2, 'rakib', '1403rakib', 1403, NULL),
(3, 'iqbal', '1419iqbal', 1419, NULL),
(4, 'nahid', '1435nahid', 1435, NULL),
(5, 'habib', '1461habib', 1461, NULL),
(6, 'Johnson', '1474Johnson', NULL, 1474),
(7, 'hakim', '1617hakim', NULL, 1617),
(8, 'jewel', '1628jewel', NULL, 1628),
(9, 'mahmudur', '1648mahmudur', NULL, 1648),
(10, 'kalam', '1712kalam', NULL, 1712);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `order_quantity` int(255) DEFAULT NULL,
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `product_id`, `order_quantity`, `order_date`) VALUES
(123, 1617, 145, 500, '2021-07-01'),
(125, 1628, 152, 300, '2021-08-04'),
(135, 1474, 121, 1, '2021-08-20'),
(140, 1648, 314, 30, '2021-09-14'),
(142, 1712, 278, 10, '2021-09-18');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_catagory` varchar(200) DEFAULT NULL,
  `product_availabity` varchar(100) DEFAULT NULL,
  `product_quantity` int(250) DEFAULT NULL,
  `product_price(per kg)` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_catagory`, `product_availabity`, `product_quantity`, `product_price(per kg)`) VALUES
(121, 'tea', 'new', 'yes', 2, 250),
(145, 'rice', 'new', 'yes', 2000, 70),
(152, 'potato', 'new', 'yes', 800, 30),
(278, 'jute', 'existing', 'yes', 2, 250),
(314, 'onion', 'new', 'yes', 70, 60);

-- --------------------------------------------------------

--
-- Table structure for table `soil`
--

CREATE TABLE `soil` (
  `farm_id` int(10) NOT NULL,
  `Date and Time` datetime NOT NULL,
  `Humidity(%)` float NOT NULL,
  `Temparature('C)` double NOT NULL,
  `Moisture(%)` int(11) NOT NULL,
  `Water_level(kgm-3)` float NOT NULL,
  `Soil_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soil`
--

INSERT INTO `soil` (`farm_id`, `Date and Time`, `Humidity(%)`, `Temparature('C)`, `Moisture(%)`, `Water_level(kgm-3)`, `Soil_section`) VALUES
(11, '2021-09-09 08:44:17', 56.3, 30, 60, 23, 1),
(11, '2021-09-21 01:23:03', 12.5, 30, 61, 24, 2),
(18, '2021-09-03 13:47:09', 42, -20.02, 55, 16, 4),
(49, '2021-09-21 18:11:35', 15.25, 60, 22, 20, 5),
(88, '2021-09-21 09:46:02', 34, -5, 34, 22, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `farm`
--
ALTER TABLE `farm`
  ADD PRIMARY KEY (`farm_id`),
  ADD KEY `farmer_id` (`farmer_id`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`farmer_id`),
  ADD KEY `farm_id` (`farm_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `farmer_id` (`farmer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `soil`
--
ALTER TABLE `soil`
  ADD PRIMARY KEY (`Soil_section`),
  ADD KEY `farm_id` (`farm_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `farm`
--
ALTER TABLE `farm`
  ADD CONSTRAINT `farm_ibfk_1` FOREIGN KEY (`farmer_id`) REFERENCES `farmer` (`farmer_id`);

--
-- Constraints for table `farmer`
--
ALTER TABLE `farmer`
  ADD CONSTRAINT `farmer_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`farmer_id`) REFERENCES `farmer` (`farmer_id`),
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `soil`
--
ALTER TABLE `soil`
  ADD CONSTRAINT `soil_ibfk_1` FOREIGN KEY (`farm_id`) REFERENCES `farm` (`farm_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
