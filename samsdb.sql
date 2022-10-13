-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2022 at 07:33 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'cyrusAdmin', 'p@ssword12345'),
(3, 'paoloAdmin', 'p@ssword12345'),
(4, 'virayAdmin', 'p@ssword12345');

-- --------------------------------------------------------

--
-- Table structure for table `october2022`
--

CREATE TABLE `october2022` (
  `month_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `1` varchar(10) NOT NULL,
  `2` varchar(10) NOT NULL,
  `3` varchar(10) NOT NULL,
  `4` varchar(10) NOT NULL,
  `5` varchar(10) NOT NULL,
  `6` varchar(10) NOT NULL,
  `7` varchar(10) NOT NULL,
  `8` varchar(10) NOT NULL,
  `9` varchar(10) NOT NULL,
  `10` varchar(10) NOT NULL,
  `11` varchar(10) NOT NULL,
  `12` varchar(10) NOT NULL,
  `13` varchar(10) NOT NULL,
  `14` varchar(10) NOT NULL,
  `15` varchar(10) NOT NULL,
  `16` varchar(10) NOT NULL,
  `17` varchar(10) NOT NULL,
  `18` varchar(10) NOT NULL,
  `19` varchar(10) NOT NULL,
  `20` varchar(10) NOT NULL,
  `21` varchar(10) NOT NULL,
  `22` varchar(10) NOT NULL,
  `23` varchar(10) NOT NULL,
  `24` varchar(10) NOT NULL,
  `25` varchar(10) NOT NULL,
  `26` varchar(10) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `year_level` varchar(10) NOT NULL,
  `strand` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `october2022`
--
ALTER TABLE `october2022`
  ADD PRIMARY KEY (`month_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `october2022`
--
ALTER TABLE `october2022`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `october2022`
--
ALTER TABLE `october2022`
  ADD CONSTRAINT `october2022_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
