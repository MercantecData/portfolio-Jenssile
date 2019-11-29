-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2019 at 09:30 AM
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
-- Database: `department_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_ID` int(11) NOT NULL,
  `dm_ID` int(11) DEFAULT NULL,
  `de_ID` int(11) DEFAULT NULL,
  `dp_name` varchar(200) NOT NULL,
  `dp_dis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_ID`, `dm_ID`, `de_ID`, `dp_name`, `dp_dis`) VALUES
(11, 1, NULL, 'hell', 'why'),
(12, 2, NULL, 'death', 'why'),
(13, 3, NULL, 'not heven', 'why'),
(14, 4, NULL, 'hell3', 'why'),
(15, 5, NULL, 'hell4', 'why'),
(16, 6, NULL, 'hell5', 'why'),
(17, 7, NULL, 'hell6', 'why'),
(18, 8, NULL, 'hell7', 'why'),
(19, 9, NULL, 'hell8', 'why'),
(20, 10, NULL, 'hell9', 'why'),
(21, NULL, 11, 'hell', 'why'),
(22, NULL, 12, 'death', 'why'),
(23, NULL, 13, 'not heven', 'why'),
(24, NULL, 14, 'hell3', 'why'),
(25, NULL, 15, 'hell4', 'why'),
(26, NULL, 16, 'hell5', 'why'),
(27, NULL, 17, 'hell6', 'why'),
(28, NULL, 18, 'hell7', 'why'),
(29, NULL, 19, 'hell8', 'why'),
(30, NULL, 20, 'hell9', 'why'),
(31, NULL, 21, 'hell', 'why'),
(32, NULL, 22, 'death', 'why'),
(33, NULL, 23, 'not heven', 'why'),
(34, NULL, 24, 'hell3', 'why'),
(35, NULL, 25, 'hell4', 'why'),
(36, NULL, 26, 'hell5', 'why'),
(37, NULL, 27, 'hell6', 'why'),
(38, NULL, 28, 'hell7', 'why'),
(39, NULL, 29, 'hell8', 'why'),
(40, NULL, 30, 'hell9', 'why'),
(41, NULL, 31, 'hell', 'why'),
(42, NULL, 32, 'death', 'why'),
(43, NULL, 33, 'not heven', 'why'),
(44, NULL, 34, 'hell3', 'why'),
(45, NULL, 35, 'hell4', 'why'),
(46, NULL, 36, 'hell5', 'why'),
(47, NULL, 37, 'hell6', 'why'),
(48, NULL, 38, 'hell7', 'why'),
(49, NULL, 39, 'hell8', 'why'),
(50, NULL, 40, 'hell9', 'why'),
(61, NULL, 11, 'hell', 'why'),
(62, NULL, 12, 'death', 'why'),
(63, NULL, 13, 'not heven', 'why'),
(64, NULL, 14, 'hell3', 'why'),
(65, NULL, 15, 'hell4', 'why'),
(66, NULL, 16, 'hell5', 'why'),
(67, NULL, 17, 'hell6', 'why'),
(68, NULL, 18, 'hell7', 'why'),
(69, NULL, 19, 'hell8', 'why'),
(70, NULL, 20, 'hell9', 'why'),
(71, NULL, 21, 'hell', 'why'),
(72, NULL, 22, 'death', 'why'),
(73, NULL, 23, 'not heven', 'why'),
(74, NULL, 24, 'hell3', 'why'),
(75, NULL, 25, 'hell4', 'why'),
(76, NULL, 26, 'hell5', 'why'),
(77, NULL, 27, 'hell6', 'why'),
(78, NULL, 28, 'hell7', 'why'),
(79, NULL, 29, 'hell8', 'why'),
(80, NULL, 30, 'hell9', 'why'),
(81, NULL, 31, 'hell', 'why'),
(82, NULL, 32, 'death', 'why'),
(83, NULL, 33, 'not heven', 'why'),
(84, NULL, 34, 'hell3', 'why'),
(85, NULL, 35, 'hell4', 'why'),
(86, NULL, 36, 'hell5', 'why'),
(87, NULL, 37, 'hell6', 'why'),
(88, NULL, 38, 'hell7', 'why'),
(89, NULL, 39, 'hell8', 'why'),
(90, NULL, 40, 'hell9', 'why');

-- --------------------------------------------------------

--
-- Table structure for table `department_employee`
--

CREATE TABLE `department_employee` (
  `de_ID` int(11) NOT NULL,
  `employee_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_employee`
--

INSERT INTO `department_employee` (`de_ID`, `employee_ID`) VALUES
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 19),
(10, 20),
(11, 21),
(12, 22),
(13, 23),
(14, 24),
(15, 25),
(16, 26),
(17, 27),
(18, 28),
(19, 29),
(20, 30),
(21, 31),
(22, 32),
(23, 33),
(24, 34),
(25, 35),
(26, 36),
(27, 37),
(28, 38),
(29, 39),
(30, 40),
(31, 41),
(32, 42),
(33, 43),
(34, 44),
(35, 45),
(36, 46),
(37, 47),
(38, 48),
(39, 49),
(40, 50);

-- --------------------------------------------------------

--
-- Table structure for table `department_manager`
--

CREATE TABLE `department_manager` (
  `dm_ID` int(11) NOT NULL,
  `employee_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_manager`
--

INSERT INTO `department_manager` (`dm_ID`, `employee_ID`) VALUES
(6, 1),
(5, 2),
(2, 3),
(10, 4),
(1, 5),
(9, 6),
(3, 7),
(4, 8),
(7, 9),
(8, 10);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_ID` int(11) NOT NULL,
  `title_ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `addres` varchar(200) NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_ID`, `title_ID`, `NAME`, `addres`, `age`) VALUES
(1, 26, 'Jacqueline', '151-3890 Taciti Road', 48),
(2, 37, 'Dalton', '1340 Donec St.', 45),
(3, 29, 'Samantha', 'P.O. Box 274, 7174 Magna Rd.', 38),
(4, 46, 'Boris', 'Ap #396-6637 Odio, Road', 23),
(5, 19, 'Ahmed', 'P.O. Box 437, 8814 Cursus Avenue', 23),
(6, 37, 'Molly', 'P.O. Box 485, 6324 Ornare Road', 62),
(7, 39, 'Rae', 'Ap #110-9176 Nulla Rd.', 60),
(8, 36, 'Susan', '1299 Orci. St.', 46),
(9, 5, 'Tarik', 'P.O. Box 818, 3183 Aliquam Ave', 55),
(10, 31, 'Jin', 'P.O. Box 625, 6821 Urna Ave', 30),
(11, 18, 'Naomi', '5705 Quisque Road', 51),
(12, 10, 'Merrill', 'Ap #317-2395 Ut Road', 48),
(13, 1, 'Lavinia', 'P.O. Box 981, 6739 Sit Av.', 22),
(14, 24, 'Calvin', '9426 At St.', 55),
(15, 50, 'Kasper', 'P.O. Box 386, 3414 Gravida Rd.', 25),
(16, 1, 'Cally', '674-7985 Sed Av.', 22),
(17, 41, 'Carla', 'P.O. Box 962, 1934 Senectus St.', 61),
(18, 49, 'Evelyn', 'Ap #867-2213 Et Av.', 52),
(19, 8, 'Stella', '821-7591 At, Rd.', 65),
(20, 49, 'Owen', '4308 Sit Ave', 26),
(21, 1, 'Glenna', 'P.O. Box 576, 6777 Pellentesque. Av.', 54),
(22, 10, 'Damon', 'P.O. Box 360, 9446 Dictum Ave', 27),
(23, 37, 'Hayden', 'Ap #174-1757 Suspendisse St.', 25),
(24, 42, 'James', 'P.O. Box 503, 4886 Mi Av.', 28),
(25, 16, 'Ahmed', '187-636 Tellus Rd.', 28),
(26, 15, 'Chase', 'Ap #935-3766 Sed Av.', 39),
(27, 8, 'Craig', '9547 Augue Road', 60),
(28, 2, 'Lars', '458-8224 Imperdiet Avenue', 39),
(29, 42, 'Kenneth', 'Ap #782-3455 Eget Rd.', 21),
(30, 44, 'Barclay', 'P.O. Box 578, 652 Fusce Avenue', 39),
(31, 22, 'Ariana', '559-382 Aliquam Rd.', 70),
(32, 9, 'Amos', '4726 Sed Rd.', 33),
(33, 35, 'Odette', 'P.O. Box 763, 5829 Nascetur Ave', 68),
(34, 18, 'Sawyer', 'P.O. Box 347, 7085 Ante Rd.', 56),
(35, 20, 'Simone', '7835 Mi, St.', 22),
(36, 5, 'Lars', 'Ap #580-1246 Massa. Road', 62),
(37, 4, 'Mark', 'P.O. Box 990, 3819 Dis Road', 53),
(38, 31, 'Driscoll', '582-8382 Cum Ave', 61),
(39, 20, 'Hanna', 'P.O. Box 108, 5576 Quisque Street', 25),
(40, 32, 'George', '946-6483 Mollis Road', 63),
(41, 27, 'Philip', '685-6254 Eu Road', 22),
(42, 17, 'Zia', 'P.O. Box 931, 5590 Massa Rd.', 33),
(43, 20, 'James', 'P.O. Box 736, 8712 Dictum Av.', 51),
(44, 23, 'Maisie', 'P.O. Box 337, 1405 Nisi. Street', 68),
(45, 44, 'Cameron', 'P.O. Box 235, 2582 Vulputate Ave', 60),
(46, 45, 'Cheyenne', '8866 Lacus. St.', 19),
(47, 35, 'Raven', 'Ap #386-9331 Tempus St.', 22),
(48, 7, 'Alyssa', 'P.O. Box 804, 2384 Phasellus Rd.', 47),
(49, 24, 'Ryder', '215-116 Cras St.', 22),
(50, 15, 'Oleg', '3159 Eu St.', 53);

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `salary_ID` int(11) NOT NULL,
  `salary_year` double(10,2) NOT NULL,
  `salary_month` double(10,2) NOT NULL,
  `salary_hour` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`salary_ID`, `salary_year`, `salary_month`, `salary_hour`) VALUES
(1, 269952.00, 22496.00, 152.00),
(2, 632256.00, 52688.00, 356.00),
(3, 1308912.00, 109076.00, 737.00),
(4, 1184592.00, 98716.00, 667.00),
(5, 1410144.00, 117512.00, 794.00),
(6, 280608.00, 23384.00, 158.00),
(7, 140304.00, 11692.00, 79.00),
(8, 1079808.00, 89984.00, 608.00),
(9, 713952.00, 59496.00, 402.00),
(10, 912864.00, 76072.00, 514.00),
(11, 246864.00, 20572.00, 139.00),
(12, 607392.00, 50616.00, 342.00),
(13, 24864.00, 2072.00, 14.00),
(14, 1291152.00, 107596.00, 727.00),
(15, 644688.00, 53724.00, 363.00),
(16, 921744.00, 76812.00, 519.00),
(17, 781440.00, 65120.00, 440.00),
(18, 1383504.00, 115292.00, 779.00),
(19, 1371072.00, 114256.00, 772.00),
(20, 1005216.00, 83768.00, 566.00),
(21, 408480.00, 34040.00, 230.00),
(22, 39072.00, 3256.00, 22.00),
(23, 211344.00, 17612.00, 119.00),
(24, 451104.00, 37592.00, 254.00),
(25, 722832.00, 60236.00, 407.00),
(26, 103008.00, 8584.00, 58.00),
(27, 690864.00, 57572.00, 389.00),
(28, 847152.00, 70596.00, 477.00),
(29, 531024.00, 44252.00, 299.00),
(30, 264624.00, 22052.00, 149.00),
(31, 1371072.00, 114256.00, 772.00),
(32, 1070928.00, 89244.00, 603.00),
(33, 758352.00, 63196.00, 427.00),
(34, 1095792.00, 91316.00, 617.00),
(35, 1250304.00, 104192.00, 704.00),
(36, 1379952.00, 114996.00, 777.00),
(37, 763680.00, 63640.00, 430.00),
(38, 1310688.00, 109224.00, 738.00),
(39, 237984.00, 19832.00, 134.00),
(40, 891552.00, 74296.00, 502.00),
(41, 351648.00, 29304.00, 198.00),
(42, 712176.00, 59348.00, 401.00),
(43, 943056.00, 78588.00, 531.00),
(44, 550560.00, 45880.00, 310.00),
(45, 763680.00, 63640.00, 430.00),
(46, 266400.00, 22200.00, 150.00),
(47, 239760.00, 19980.00, 135.00),
(48, 967920.00, 80660.00, 545.00),
(49, 392496.00, 32708.00, 221.00),
(50, 312576.00, 26048.00, 176.00);

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `title_ID` int(11) NOT NULL,
  `salary_ID` int(11) NOT NULL,
  `title_name` varchar(200) NOT NULL,
  `title_dis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`title_ID`, `salary_ID`, `title_name`, `title_dis`) VALUES
(1, 17, 'Nisi A Odio Incorporated', 'eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis'),
(2, 36, 'Sed Institute', 'habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum'),
(3, 21, 'Sagittis Augue Eu Consulting', 'In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque'),
(4, 48, 'Erat Eget Ltd', 'eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum'),
(5, 8, 'Odio Etiam Corporation', 'In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque'),
(6, 12, 'Fringilla LLP', 'commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc'),
(7, 23, 'Imperdiet Company', 'luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam'),
(8, 1, 'Tortor Corp.', 'enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui.'),
(9, 8, 'Id Consulting', 'faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante'),
(10, 3, 'Nullam Ltd', 'erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis'),
(11, 39, 'A Nunc In Inc.', 'vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt'),
(12, 44, 'Pharetra Nibh Aliquam Limited', 'nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum.'),
(13, 47, 'Neque Pellentesque LLC', 'Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in'),
(14, 33, 'Nec Euismod Associates', 'Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc'),
(15, 30, 'Elit Fermentum Risus Institute', 'neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus'),
(16, 50, 'Amet Ornare Lectus Industries', 'litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis'),
(17, 9, 'In Hendrerit Consectetuer LLP', 'nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor.'),
(18, 9, 'Purus LLC', 'placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie'),
(19, 18, 'Duis Elementum LLP', 'Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna'),
(20, 24, 'Vestibulum Ante Ipsum Limited', 'sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla'),
(21, 44, 'Ac Mi Corp.', 'varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in'),
(22, 50, 'Maecenas Company', 'luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis,'),
(23, 32, 'Curae; Phasellus Ornare Associates', 'Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros.'),
(24, 8, 'Non Luctus Sit Associates', 'hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu'),
(25, 10, 'Eu Augue Porttitor Incorporated', 'consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a,'),
(26, 39, 'Dolor Sit Company', 'cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent'),
(27, 44, 'Mauris Non PC', 'odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies'),
(28, 23, 'Quis Urna Corporation', 'facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer'),
(29, 29, 'Integer Company', 'pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac,'),
(30, 33, 'Aenean Corp.', 'adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus'),
(31, 5, 'Vulputate Dui Consulting', 'dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id,'),
(32, 14, 'Elit Corporation', 'felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient'),
(33, 27, 'Egestas Consulting', 'sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non'),
(34, 29, 'Etiam Gravida Molestie PC', 'in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit'),
(35, 10, 'Mollis Institute', 'enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec,'),
(36, 14, 'Dis Parturient Montes LLP', 'nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat'),
(37, 22, 'Nunc Consulting', 'Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum.'),
(38, 6, 'Justo LLP', 'gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue'),
(39, 50, 'At Iaculis Quis Institute', 'Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla.'),
(40, 22, 'Dictum Sapien Corporation', 'Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean'),
(41, 38, 'Magna Inc.', 'a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus'),
(42, 49, 'Montes Associates', 'tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam'),
(43, 5, 'Condimentum Incorporated', 'interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non'),
(44, 18, 'Auctor Foundation', 'amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel'),
(45, 9, 'Neque Venenatis Company', 'scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor'),
(46, 42, 'Purus Nullam Incorporated', 'in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam'),
(47, 10, 'Proin Eget Odio Incorporated', 'enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.'),
(48, 18, 'Nunc PC', 'Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede'),
(49, 39, 'Lectus Pede Corp.', 'velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula'),
(50, 32, 'Sollicitudin Ltd', 'erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_ID`),
  ADD KEY `dm_ID` (`dm_ID`),
  ADD KEY `de_ID` (`de_ID`);

--
-- Indexes for table `department_employee`
--
ALTER TABLE `department_employee`
  ADD PRIMARY KEY (`de_ID`),
  ADD KEY `employee_ID` (`employee_ID`);

--
-- Indexes for table `department_manager`
--
ALTER TABLE `department_manager`
  ADD PRIMARY KEY (`dm_ID`),
  ADD KEY `employee_ID` (`employee_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_ID`),
  ADD KEY `title_ID` (`title_ID`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`salary_ID`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`title_ID`),
  ADD KEY `salary_ID` (`salary_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `department_employee`
--
ALTER TABLE `department_employee`
  MODIFY `de_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `department_manager`
--
ALTER TABLE `department_manager`
  MODIFY `dm_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `salary_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `title_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`dm_ID`) REFERENCES `department_manager` (`dm_ID`),
  ADD CONSTRAINT `departments_ibfk_2` FOREIGN KEY (`de_ID`) REFERENCES `department_employee` (`de_ID`);

--
-- Constraints for table `department_employee`
--
ALTER TABLE `department_employee`
  ADD CONSTRAINT `department_employee_ibfk_1` FOREIGN KEY (`employee_ID`) REFERENCES `employee` (`employee_ID`);

--
-- Constraints for table `department_manager`
--
ALTER TABLE `department_manager`
  ADD CONSTRAINT `department_manager_ibfk_1` FOREIGN KEY (`employee_ID`) REFERENCES `employee` (`employee_ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`title_ID`) REFERENCES `titles` (`title_ID`);

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`salary_ID`) REFERENCES `salaries` (`salary_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
