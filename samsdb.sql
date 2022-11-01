-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2022 at 01:59 AM
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
(4, 'virayAdmin', 'p@ssword12345'),
(12, 'araAdmin', 'p@ssword12345');

-- --------------------------------------------------------

--
-- Table structure for table `october2022`
--

CREATE TABLE `october2022` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
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
  `absent_total` int(10) NOT NULL,
  `attendance_rate` int(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `october2022`
--

INSERT INTO `october2022` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `timestamp`) VALUES
(8, '136606090102', 'Monica E. Paredes', 'ICT 11 - 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-10-28 04:46:26'),
(9, '136612070392', 'John Edrich Viray', 'STEM 11 - 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-10-28 04:46:54'),
(10, '136618070392', 'Paolo Rafael S. Tampico', 'ICT 11 - 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-10-28 04:47:14'),
(11, '223505070048', 'Arabella Belardo', 'ICT 11 - 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-10-28 08:52:20'),
(12, '136618123456', 'Cyrus C. Cantero', 'STEM 11 - 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-10-28 08:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `lrn` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `age` int(5) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`lrn`, `name`, `section`, `age`, `address`, `email`, `contact_number`, `timestamp`) VALUES
('136606090102', 'Monica E. Paredes', 'ICT 11 - 1', 20, '103 Francisco St. Brgy. 71 Caloocan City', 'nicaembateparedes@gmail.com', '09451323281', '2022-10-25 11:06:58'),
('136612070392', 'John Edrich Viray', 'STEM 11 - 1', 20, '#75 Dau St., 6th Ave., Caloocan City', 'Virayjohnedrich@gmail.com', '09760500860', '2022-10-25 11:06:58'),
('136618070392', 'Paolo Rafael S. Tampico', 'ICT 11 - 1', 20, '791B P. Galauran St. 8th Ave. Caloocan City', 'paolorafaeltampico@gmail.com', '09219098950', '2022-10-25 11:06:58'),
('136618123456', 'Cyrus C. Cantero', 'STEM 11 - 1', 20, '#888 Brgy. 160 Libis Baesa Caloocan City', 'slimshady.ca26@gmail.com', '09517563059', '2022-10-25 11:06:58'),
('223505070048', 'Arabella Belardo', 'ICT 11 - 1', 19, 'Blk15 lot11 North Triangle Caloocan City', 'belardoarabella05@gmail.com', '09219098950', '2022-10-25 11:06:58');

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
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`lrn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `october2022`
--
ALTER TABLE `october2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
