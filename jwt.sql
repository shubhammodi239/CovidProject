-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 07:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jwt`
--

-- --------------------------------------------------------

--
-- Table structure for table `epass`
--

CREATE TABLE `epass` (
  `id` double NOT NULL,
  `ano` varchar(16) NOT NULL,
  `cno` varchar(10) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `aadr` varchar(75) DEFAULT NULL,
  `ser` varchar(75) DEFAULT NULL,
  `fdate` date DEFAULT NULL,
  `ldate` date DEFAULT NULL,
  `mail` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `epass`
--

INSERT INTO `epass` (`id`, `ano`, `cno`, `name`, `aadr`, `ser`, `fdate`, `ldate`, `mail`) VALUES
(2, '1212121', '887151244', 'shubham modi', '20 tilak path rajwada', 'Fair price shops (public distribution system )', '2020-05-14', '2020-05-21', 'shubhammodi239@gmail.com'),
(3, '123', '887151244', 'shubham modi', '20 tilak path rajwada', 'Cashier/teller operations of banks(including ATMs)', '2020-05-09', '2020-05-22', 'shubhammodi239@gmail.com'),
(6, '1234567890123456', '7974431470', 'shubham', '20 tilak path rajwada', 'offices charged with law and order and magisterial duties', '2020-05-07', '2020-05-31', 'shubhammodi555556@gmail.com'),
(5, '456', '887151244', 'shubham modi', '20 tilak path rajwada', 'offices charged with law and order and magisterial duties', '2020-05-01', '2020-05-10', 'shubhammodi239@gmail.com'),
(4, '45644', '887151244', 'shubham modi', '20 tilak path rajwada', 'Muncipal services', '2020-05-14', '2020-04-29', 'shubhammodi239@gmail.com'),
(1, '7777777777', '887151244', 'shubham modi', '20 tilak path rajwada', 'offices charged with law and order and magisterial duties', '2020-05-07', '2020-05-28', 'shubhammodi239@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `govdata`
--

CREATE TABLE `govdata` (
  `id` double NOT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `adhar` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `govdata`
--

INSERT INTO `govdata` (`id`, `firstName`, `email`, `adhar`) VALUES
(1, 'shubham modi', 'shubhammodi239@gmail.com', '1212121'),
(2, 'shubham modi', 'shubhammodi239@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `id` double NOT NULL,
  `Dat` varchar(75) DEFAULT NULL,
  `Msg` varchar(200) DEFAULT NULL,
  `Reciever` varchar(45) DEFAULT NULL,
  `Sender` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`id`, `Dat`, `Msg`, `Reciever`, `Sender`) VALUES
(1, '29-04-2020 23:38:16', 'dededed', 'shubhammodi820@gmail.com', 'shubham239'),
(2, '29-04-2020 23:39:59', 'dwdwddd', 'shubhammodi810@gmail.com', 'shubham239'),
(3, '29-04-2020 23:40:30', NULL, NULL, 'shubham239'),
(4, '29-04-2020 23:42:55', 'wfwfwffff', 'shubhammodi2222@gmail.com', 'shubham239'),
(5, '30-04-2020 00:10:40', 'vbbb', 'shubhammodi810@gmail.com', 'shubham239'),
(6, '30-04-2020 01:27:46', 'hahahahahahahahaaha', 'shubham810', 'shubham239'),
(7, '30-04-2020 01:29:04', 'ioioioioiioioioioioioioi', 'shubham810', 'shubham239'),
(8, '30-04-2020 01:52:36', 'gdggdggdg', 'shubhammodi820@gmail.com', 'shubham810'),
(9, '30-04-2020 10:49:08', 'aqaqa', 'qaqq', 'shubham239'),
(10, '30-04-2020 15:49:50', 'hello', 'shubham239', 'shubham810'),
(11, '30-04-2020 19:31:48', 'hell shubham modi', 'shubham239', 'shubham810');

-- --------------------------------------------------------

--
-- Table structure for table `issued`
--

CREATE TABLE `issued` (
  `id` double NOT NULL,
  `adrn` varchar(16) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `fir` date DEFAULT NULL,
  `las` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issued`
--

INSERT INTO `issued` (`id`, `adrn`, `name`, `fir`, `las`) VALUES
(1, '123', 'shubham modi', '2020-05-09', '2020-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` double NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `userId` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `firstName`, `middleName`, `lastName`, `email`, `userId`, `password`) VALUES
(4, 'kalash', 'kumar', 'gangwal', 'kalashgangwal8@gmail.com', 'kalu123', 'k'),
(6, 'shubham', 'kumar', 'modi', 'shubhammodi239@gmail.com', 'rrrrr', 'a'),
(2, 'shubham', 'kumar', 'modi', 'shubhammodi239@gmail.com', 'shubham239', 'a'),
(1, 'shubham', 'kumar', 'modi', 'shubhammodi239@gmail.com', 'shubham810', 'haha'),
(3, 'shubham', 'kumar', 'modi', 'shubhammodi239@gmail.com', 'sm1', '1'),
(7, 'shubham', 'kumar', 'modi', 'shubhammodi239@gmail.com', 'ssm', '121'),
(5, 'shubham', 'kumar', 'modi', 'shubhammodi239@gmail.com', 'zaza', 'q');

-- --------------------------------------------------------

--
-- Table structure for table `usser_table`
--

CREATE TABLE `usser_table` (
  `id` double NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `cont` varchar(10) NOT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usser_table`
--

INSERT INTO `usser_table` (`id`, `firstName`, `middleName`, `lastName`, `email`, `cont`, `password`) VALUES
(3, 'shubham', 'kumar', 'modi', 'shubhammodi239@gmail.com', '1234567890', 'aa'),
(1, 'shubham', 'kumar', 'modi', 'shubhammodi239@gmail.com', '8871512441', 'a'),
(2, 'shubham', 'kumar', 'modi', 'shubhammodi239@gmail.com', 'shubham810', 'k');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `epass`
--
ALTER TABLE `epass`
  ADD PRIMARY KEY (`ano`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `govdata`
--
ALTER TABLE `govdata`
  ADD PRIMARY KEY (`adhar`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `issued`
--
ALTER TABLE `issued`
  ADD PRIMARY KEY (`adrn`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `usser_table`
--
ALTER TABLE `usser_table`
  ADD PRIMARY KEY (`cont`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `epass`
--
ALTER TABLE `epass`
  MODIFY `id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `govdata`
--
ALTER TABLE `govdata`
  MODIFY `id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `issued`
--
ALTER TABLE `issued`
  MODIFY `id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `usser_table`
--
ALTER TABLE `usser_table`
  MODIFY `id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
