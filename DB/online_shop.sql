-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 12:06 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shop`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteorder` (`orderID` INT(11))  BEGIN
	DELETE FROM orders WHERE order_ID = orderID;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `addres_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `addres` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `zipcode` int(25) NOT NULL,
  `country` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`addres_ID`, `user_ID`, `addres`, `city`, `zipcode`, `country`) VALUES
(1, 1, 'somewhere 65', 'dead', 8883, 'N/A'),
(2, 2, 'somewhere 345', 'dead', 8883, 'N/A'),
(3, 3, 'somewhere 12', 'dead', 8883, 'N/A'),
(4, 4, 'somewhere 645', 'dead', 8883, 'N/A'),
(5, 5, 'somewhere 84', 'dead', 8883, 'N/A'),
(6, 6, 'somewhere 53', 'dead', 8883, 'N/A'),
(7, 7, 'somewhere 985', 'dead', 8883, 'N/A'),
(8, 8, 'somewhere 902', 'dead', 8883, 'N/A'),
(9, 9, 'somewhere 62', 'dead', 8883, 'N/A'),
(10, 10, 'somewhere 42', 'dead', 8883, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `addres_ID` int(11) NOT NULL,
  `product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `user_ID`, `addres_ID`, `product_ID`) VALUES
(1, 1, 1, 5),
(2, 4, 4, 8),
(3, 2, 2, 2),
(4, 7, 7, 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `order_overview`
-- (See below for the actual view)
--
CREATE TABLE `order_overview` (
`order_ID` int(11)
,`first_name` varchar(200)
,`product_name` varchar(200)
,`addres` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_ID` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_discription` text NOT NULL,
  `product_stock` int(25) NOT NULL,
  `product_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_ID`, `product_name`, `product_discription`, `product_stock`, `product_price`) VALUES
(1, 'coke', 'lorem ipsum', 1000, 4875.35),
(2, 'coke2', 'lorem ipsum', 1000, 4875.35),
(3, 'coke3', 'lorem ipsum', 1000, 4875.35),
(4, 'coke4', 'lorem ipsum', 1000, 4875.35),
(5, 'coke5', 'lorem ipsum', 1000, 4875.35),
(6, 'coke6', 'lorem ipsum', 1000, 4875.35),
(7, 'coke7', 'lorem ipsum', 1000, 4875.35),
(8, 'coke8', 'lorem ipsum', 1000, 4875.35),
(9, 'coke9', 'lorem ipsum', 1000, 4875.35),
(10, 'coke10', 'lorem ipsum', 1000, 4875.35);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_ID` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_ID`, `username`, `first_name`, `last_name`) VALUES
(1, 'name1', 'first1', 'second1'),
(2, 'name2', 'first2', 'second2'),
(3, 'name3', 'first3', 'second3'),
(4, 'name4', 'first4', 'second4'),
(5, 'name5', 'first5', 'second5'),
(6, 'name6', 'first6', 'second6'),
(7, 'name7', 'first7', 'second7'),
(8, 'name8', 'first8', 'second8'),
(9, 'name9', 'first9', 'second9'),
(10, 'name10', 'first10', 'second10');

-- --------------------------------------------------------

--
-- Structure for view `order_overview`
--
DROP TABLE IF EXISTS `order_overview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_overview`  AS  select `orders`.`order_ID` AS `order_ID`,`users`.`first_name` AS `first_name`,`products`.`product_name` AS `product_name`,`addresses`.`addres` AS `addres` from (((`orders` join `users` on(`orders`.`user_ID` = `users`.`user_ID`)) join `products` on(`orders`.`product_ID` = `products`.`product_ID`)) join `addresses` on(`orders`.`addres_ID` = `addresses`.`addres_ID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`addres_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `user_ID` (`user_ID`),
  ADD KEY `addres_ID` (`addres_ID`),
  ADD KEY `product_ID` (`product_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `addres_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`addres_ID`) REFERENCES `addresses` (`addres_ID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
