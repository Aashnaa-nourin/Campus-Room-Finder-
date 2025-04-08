-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 05:55 PM
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
-- Database: `classroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `image` varchar(145) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `image`) VALUES
(1, 'South Block', '1710084534132.png'),
(2, 'Main Block', '1710084714217.png'),
(3, 'E Abdul Khadar Block', '1710084733456.png'),
(4, 'Aimat Block', '1710084750914.png'),
(6, 'Store', '1710858360418.png');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` int(11) NOT NULL,
  `room_number` int(11) NOT NULL,
  `block` varchar(45) NOT NULL,
  `floor` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `room_number`, `block`, `floor`) VALUES
(1, 701, 'South Block', 'Ground Floor'),
(3, 405, 'E Abdul Khadar Block', 'Ground Floor'),
(4, 508, 'E Abdul Khadar Block', 'First Floor'),
(5, 802, 'South Block', 'First Floor'),
(6, 308, 'Main Block', 'Ground Floor'),
(7, 604, 'E Abdul Khadar Block', 'Ground Floor');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `block` varchar(45) NOT NULL,
  `floor` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `block`, `floor`) VALUES
(1, 'Department of computer application', 'South Block', 'Ground Floor'),
(2, 'Store', 'Store', 'Ground Floor'),
(3, 'Office', 'Main Block', 'First Floor'),
(4, 'BUSINESS ADMINISTRATION', 'E Abdul Khadar Block', 'ground floor'),
(5, 'department of electronics', 'Main Block', 'first block'),
(6, 'Department of Logistics', 'Aimat Block', 'First Floor');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(45) NOT NULL,
  `description` varchar(145) NOT NULL,
  `room_number` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `staff_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `description`, `room_number`, `date`, `staff_id`) VALUES
(4, 'INKRIT\'24', 'Tech fest by BCA department', '701', '2024-03-22', '15'),
(5, 'MERCATO ', 'A  fest conducting by Commerce Department ', '508 ', '2024-03-15 ', '16');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'not verified',
  `department` varchar(45) NOT NULL,
  `designation` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `name`, `email`, `password`, `phone_number`, `status`, `department`, `designation`) VALUES
(15, 'jasmin', 'jasminn@gmail.com', 'Asdasd', '7854126320', 'not verified', 'MATHEMATICS AND STATISTICS', 'Professor'),
(16, 'sam', 'sam@gmail.com', 'sam567', '7896541233 ', 'not verified', 'department of electronics', 'Professor'),
(17, 'margret', 'margretmarg@gmail.com', 'margret23', '6282214454', 'not verified', 'PHYSICS', 'Professor'),
(18, 'swapna', 'swapna@gmail.com', 'swapna989', '1234565432', 'not verified', 'BUSINESS ADMINISTRATION', 'HOD'),
(20, 'Amal saroj', 'amalsaroj@gmail.com', 'amalsaroj3344', '9994568911', 'not verified', 'INDUSTRIAL INSTRUMENTATION & AUTOMATION', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone_number`, `status`) VALUES
(4, 'neena', 'neena@gmail.com', 'nee23222', '9895432113', 0),
(7, 'john', 'john@gmail.com', 'asdfghj', '9447699112 ', 1),
(8, 'salman', 'salman@gmail.com', 'Asdasd', '8765467896 ', 1),
(9, 'noora', 'nooraa@gmail.com', 'noora123', '7896541232', 1),
(10, 'muhammed', 'muhammed@gmail.com', 'muhammed07', '7896541233', 1),
(11, 'noorunniza', 'noorunniza@gmail.com', 'nooru159', '8569856923', 1),
(13, 'rahna', 'rahna@gmail.com', 'rahu223', '8894327866', 1),
(14, 'shabnam', 'shabnamshabu@gmail.com', 'shabnam2424', '9845432213', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number_UNIQUE` (`phone_number`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `phone_number_UNIQUE` (`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
