-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2019 at 10:25 AM
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
-- Database: `accounting`
--

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `GiID` int(11) NOT NULL,
  `price_buget` int(11) NOT NULL,
  `number_people` int(11) NOT NULL,
  `money_spent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grocerys`
--

CREATE TABLE `grocerys` (
  `GrID` int(11) NOT NULL,
  `buget` int(11) NOT NULL,
  `money_spent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `household`
--

CREATE TABLE `household` (
  `HID` int(11) NOT NULL,
  `RID` int(11) DEFAULT NULL,
  `TID` int(11) DEFAULT NULL,
  `MeID` int(11) DEFAULT NULL,
  `SID` int(11) DEFAULT NULL,
  `GrID` int(11) DEFAULT NULL,
  `GiID` int(11) DEFAULT NULL,
  `VID` int(11) DEFAULT NULL,
  `IID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `IID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price_monthly` int(11) NOT NULL,
  `price_yearly` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `MaID` int(11) NOT NULL,
  `IID` int(11) NOT NULL,
  `inspection` int(11) NOT NULL,
  `road_tax` int(11) NOT NULL,
  `maintenance_cost` int(11) NOT NULL,
  `save_pr_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `MeID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `price_monthly` int(11) NOT NULL,
  `price_yearly` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `RID` int(11) NOT NULL,
  `monthly_rent` int(11) DEFAULT NULL,
  `yearly_rent` int(11) DEFAULT NULL,
  `water` int(11) DEFAULT NULL,
  `heating` int(11) DEFAULT NULL,
  `electricity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `SID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `price_monthly` int(11) NOT NULL,
  `price_yearly` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `TID` int(11) NOT NULL,
  `MaID` int(11) DEFAULT NULL,
  `method` varchar(200) NOT NULL,
  `km` int(11) NOT NULL,
  `fule_price` int(11) NOT NULL,
  `bus_price` int(11) NOT NULL,
  `liters_pr_kilometre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vacation`
--

CREATE TABLE `vacation` (
  `VID` int(11) NOT NULL,
  `transportation` int(11) NOT NULL,
  `accommodation` int(11) NOT NULL,
  `food` int(11) NOT NULL,
  `days` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`GiID`);

--
-- Indexes for table `grocerys`
--
ALTER TABLE `grocerys`
  ADD PRIMARY KEY (`GrID`);

--
-- Indexes for table `household`
--
ALTER TABLE `household`
  ADD PRIMARY KEY (`HID`),
  ADD KEY `RID` (`RID`),
  ADD KEY `TID` (`TID`),
  ADD KEY `MeID` (`MeID`),
  ADD KEY `SID` (`SID`),
  ADD KEY `GrID` (`GrID`),
  ADD KEY `GiID` (`GiID`),
  ADD KEY `VID` (`VID`),
  ADD KEY `IID` (`IID`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`IID`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`MaID`),
  ADD KEY `IID` (`IID`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`MeID`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`TID`),
  ADD KEY `MaID` (`MaID`);

--
-- Indexes for table `vacation`
--
ALTER TABLE `vacation`
  ADD PRIMARY KEY (`VID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `GiID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grocerys`
--
ALTER TABLE `grocerys`
  MODIFY `GrID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `household`
--
ALTER TABLE `household`
  MODIFY `HID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `IID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `MaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `MeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `RID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vacation`
--
ALTER TABLE `vacation`
  MODIFY `VID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `household`
--
ALTER TABLE `household`
  ADD CONSTRAINT `household_ibfk_1` FOREIGN KEY (`RID`) REFERENCES `rent` (`RID`),
  ADD CONSTRAINT `household_ibfk_2` FOREIGN KEY (`TID`) REFERENCES `transport` (`TID`),
  ADD CONSTRAINT `household_ibfk_3` FOREIGN KEY (`MeID`) REFERENCES `media` (`MeID`),
  ADD CONSTRAINT `household_ibfk_4` FOREIGN KEY (`SID`) REFERENCES `subscriptions` (`SID`),
  ADD CONSTRAINT `household_ibfk_5` FOREIGN KEY (`GrID`) REFERENCES `grocerys` (`GrID`),
  ADD CONSTRAINT `household_ibfk_6` FOREIGN KEY (`GiID`) REFERENCES `gifts` (`GiID`),
  ADD CONSTRAINT `household_ibfk_7` FOREIGN KEY (`VID`) REFERENCES `vacation` (`VID`),
  ADD CONSTRAINT `household_ibfk_8` FOREIGN KEY (`IID`) REFERENCES `insurance` (`IID`);

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`IID`) REFERENCES `insurance` (`IID`);

--
-- Constraints for table `transport`
--
ALTER TABLE `transport`
  ADD CONSTRAINT `transport_ibfk_1` FOREIGN KEY (`MaID`) REFERENCES `maintenance` (`MaID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
