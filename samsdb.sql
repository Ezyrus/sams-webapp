-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 07:31 AM
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
(12, 'araAdmin', 'p@ssword12345'),
(13, 'monicaAdmin', 'p@ssword12345'),
(14, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `grade11_december2022`
--

CREATE TABLE `grade11_december2022` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `1` varchar(20) NOT NULL,
  `2` varchar(20) NOT NULL,
  `3` varchar(20) NOT NULL,
  `4` varchar(20) NOT NULL,
  `5` varchar(20) NOT NULL,
  `6` varchar(20) NOT NULL,
  `7` varchar(20) NOT NULL,
  `8` varchar(20) NOT NULL,
  `9` varchar(20) NOT NULL,
  `10` varchar(20) NOT NULL,
  `11` varchar(20) NOT NULL,
  `12` varchar(20) NOT NULL,
  `13` varchar(20) NOT NULL,
  `14` varchar(20) NOT NULL,
  `15` varchar(20) NOT NULL,
  `16` varchar(20) NOT NULL,
  `17` varchar(20) NOT NULL,
  `18` varchar(20) NOT NULL,
  `19` varchar(20) NOT NULL,
  `20` varchar(20) NOT NULL,
  `21` varchar(20) NOT NULL,
  `22` varchar(20) NOT NULL,
  `23` varchar(20) NOT NULL,
  `24` varchar(20) NOT NULL,
  `25` varchar(20) NOT NULL,
  `26` varchar(20) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL,
  `attendance_rate` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade11_february2023`
--

CREATE TABLE `grade11_february2023` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `1` varchar(20) NOT NULL,
  `2` varchar(20) NOT NULL,
  `3` varchar(20) NOT NULL,
  `4` varchar(20) NOT NULL,
  `5` varchar(20) NOT NULL,
  `6` varchar(20) NOT NULL,
  `7` varchar(20) NOT NULL,
  `8` varchar(20) NOT NULL,
  `9` varchar(20) NOT NULL,
  `10` varchar(20) NOT NULL,
  `11` varchar(20) NOT NULL,
  `12` varchar(20) NOT NULL,
  `13` varchar(20) NOT NULL,
  `14` varchar(20) NOT NULL,
  `15` varchar(20) NOT NULL,
  `16` varchar(20) NOT NULL,
  `17` varchar(20) NOT NULL,
  `18` varchar(20) NOT NULL,
  `19` varchar(20) NOT NULL,
  `20` varchar(20) NOT NULL,
  `21` varchar(20) NOT NULL,
  `22` varchar(20) NOT NULL,
  `23` varchar(20) NOT NULL,
  `24` varchar(20) NOT NULL,
  `25` varchar(20) NOT NULL,
  `26` varchar(20) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL,
  `attendance_rate` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade11_january2023`
--

CREATE TABLE `grade11_january2023` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `1` varchar(20) NOT NULL,
  `2` varchar(20) NOT NULL,
  `3` varchar(20) NOT NULL,
  `4` varchar(20) NOT NULL,
  `5` varchar(20) NOT NULL,
  `6` varchar(20) NOT NULL,
  `7` varchar(20) NOT NULL,
  `8` varchar(20) NOT NULL,
  `9` varchar(20) NOT NULL,
  `10` varchar(20) NOT NULL,
  `11` varchar(20) NOT NULL,
  `12` varchar(20) NOT NULL,
  `13` varchar(20) NOT NULL,
  `14` varchar(20) NOT NULL,
  `15` varchar(20) NOT NULL,
  `16` varchar(20) NOT NULL,
  `17` varchar(20) NOT NULL,
  `18` varchar(20) NOT NULL,
  `19` varchar(20) NOT NULL,
  `20` varchar(20) NOT NULL,
  `21` varchar(20) NOT NULL,
  `22` varchar(20) NOT NULL,
  `23` varchar(20) NOT NULL,
  `24` varchar(20) NOT NULL,
  `25` varchar(20) NOT NULL,
  `26` varchar(20) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL,
  `attendance_rate` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade11_march2023`
--

CREATE TABLE `grade11_march2023` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `1` varchar(20) NOT NULL,
  `2` varchar(20) NOT NULL,
  `3` varchar(20) NOT NULL,
  `4` varchar(20) NOT NULL,
  `5` varchar(20) NOT NULL,
  `6` varchar(20) NOT NULL,
  `7` varchar(20) NOT NULL,
  `8` varchar(20) NOT NULL,
  `9` varchar(20) NOT NULL,
  `10` varchar(20) NOT NULL,
  `11` varchar(20) NOT NULL,
  `12` varchar(20) NOT NULL,
  `13` varchar(20) NOT NULL,
  `14` varchar(20) NOT NULL,
  `15` varchar(20) NOT NULL,
  `16` varchar(20) NOT NULL,
  `17` varchar(20) NOT NULL,
  `18` varchar(20) NOT NULL,
  `19` varchar(20) NOT NULL,
  `20` varchar(20) NOT NULL,
  `21` varchar(20) NOT NULL,
  `22` varchar(20) NOT NULL,
  `23` varchar(20) NOT NULL,
  `24` varchar(20) NOT NULL,
  `25` varchar(20) NOT NULL,
  `26` varchar(20) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL,
  `attendance_rate` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade11_november2022`
--

CREATE TABLE `grade11_november2022` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `1` varchar(20) NOT NULL,
  `2` varchar(20) NOT NULL,
  `3` varchar(20) NOT NULL,
  `4` varchar(20) NOT NULL,
  `5` varchar(20) NOT NULL,
  `6` varchar(20) NOT NULL,
  `7` varchar(20) NOT NULL,
  `8` varchar(20) NOT NULL,
  `9` varchar(20) NOT NULL,
  `10` varchar(20) NOT NULL,
  `11` varchar(20) NOT NULL,
  `12` varchar(20) NOT NULL,
  `13` varchar(20) NOT NULL,
  `14` varchar(20) NOT NULL,
  `15` varchar(20) NOT NULL,
  `16` varchar(20) NOT NULL,
  `17` varchar(20) NOT NULL,
  `18` varchar(20) NOT NULL,
  `19` varchar(20) NOT NULL,
  `20` varchar(20) NOT NULL,
  `21` varchar(20) NOT NULL,
  `22` varchar(20) NOT NULL,
  `23` varchar(20) NOT NULL,
  `24` varchar(20) NOT NULL,
  `25` varchar(20) NOT NULL,
  `26` varchar(20) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL,
  `attendance_rate` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade11_october2022`
--

CREATE TABLE `grade11_october2022` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `1` varchar(20) NOT NULL,
  `2` varchar(20) NOT NULL,
  `3` varchar(20) NOT NULL,
  `4` varchar(20) NOT NULL,
  `5` varchar(20) NOT NULL,
  `6` varchar(20) NOT NULL,
  `7` varchar(20) NOT NULL,
  `8` varchar(20) NOT NULL,
  `9` varchar(20) NOT NULL,
  `10` varchar(20) NOT NULL,
  `11` varchar(20) NOT NULL,
  `12` varchar(20) NOT NULL,
  `13` varchar(20) NOT NULL,
  `14` varchar(20) NOT NULL,
  `15` varchar(20) NOT NULL,
  `16` varchar(20) NOT NULL,
  `17` varchar(20) NOT NULL,
  `18` varchar(20) NOT NULL,
  `19` varchar(20) NOT NULL,
  `20` varchar(20) NOT NULL,
  `21` varchar(20) NOT NULL,
  `22` varchar(20) NOT NULL,
  `23` varchar(20) NOT NULL,
  `24` varchar(20) NOT NULL,
  `25` varchar(20) NOT NULL,
  `26` varchar(20) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL,
  `attendance_rate` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade12_december2022`
--

CREATE TABLE `grade12_december2022` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `1` varchar(20) NOT NULL,
  `2` varchar(20) NOT NULL,
  `3` varchar(20) NOT NULL,
  `4` varchar(20) NOT NULL,
  `5` varchar(20) NOT NULL,
  `6` varchar(20) NOT NULL,
  `7` varchar(20) NOT NULL,
  `8` varchar(20) NOT NULL,
  `9` varchar(20) NOT NULL,
  `10` varchar(20) NOT NULL,
  `11` varchar(20) NOT NULL,
  `12` varchar(20) NOT NULL,
  `13` varchar(20) NOT NULL,
  `14` varchar(20) NOT NULL,
  `15` varchar(20) NOT NULL,
  `16` varchar(20) NOT NULL,
  `17` varchar(20) NOT NULL,
  `18` varchar(20) NOT NULL,
  `19` varchar(20) NOT NULL,
  `20` varchar(20) NOT NULL,
  `21` varchar(20) NOT NULL,
  `22` varchar(20) NOT NULL,
  `23` varchar(20) NOT NULL,
  `24` varchar(20) NOT NULL,
  `25` varchar(20) NOT NULL,
  `26` varchar(20) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL,
  `attendance_rate` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade12_february2023`
--

CREATE TABLE `grade12_february2023` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `1` varchar(20) NOT NULL,
  `2` varchar(20) NOT NULL,
  `3` varchar(20) NOT NULL,
  `4` varchar(20) NOT NULL,
  `5` varchar(20) NOT NULL,
  `6` varchar(20) NOT NULL,
  `7` varchar(20) NOT NULL,
  `8` varchar(20) NOT NULL,
  `9` varchar(20) NOT NULL,
  `10` varchar(20) NOT NULL,
  `11` varchar(20) NOT NULL,
  `12` varchar(20) NOT NULL,
  `13` varchar(20) NOT NULL,
  `14` varchar(20) NOT NULL,
  `15` varchar(20) NOT NULL,
  `16` varchar(20) NOT NULL,
  `17` varchar(20) NOT NULL,
  `18` varchar(20) NOT NULL,
  `19` varchar(20) NOT NULL,
  `20` varchar(20) NOT NULL,
  `21` varchar(20) NOT NULL,
  `22` varchar(20) NOT NULL,
  `23` varchar(20) NOT NULL,
  `24` varchar(20) NOT NULL,
  `25` varchar(20) NOT NULL,
  `26` varchar(20) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL,
  `attendance_rate` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade12_january2023`
--

CREATE TABLE `grade12_january2023` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `1` varchar(20) NOT NULL,
  `2` varchar(20) NOT NULL,
  `3` varchar(20) NOT NULL,
  `4` varchar(20) NOT NULL,
  `5` varchar(20) NOT NULL,
  `6` varchar(20) NOT NULL,
  `7` varchar(20) NOT NULL,
  `8` varchar(20) NOT NULL,
  `9` varchar(20) NOT NULL,
  `10` varchar(20) NOT NULL,
  `11` varchar(20) NOT NULL,
  `12` varchar(20) NOT NULL,
  `13` varchar(20) NOT NULL,
  `14` varchar(20) NOT NULL,
  `15` varchar(20) NOT NULL,
  `16` varchar(20) NOT NULL,
  `17` varchar(20) NOT NULL,
  `18` varchar(20) NOT NULL,
  `19` varchar(20) NOT NULL,
  `20` varchar(20) NOT NULL,
  `21` varchar(20) NOT NULL,
  `22` varchar(20) NOT NULL,
  `23` varchar(20) NOT NULL,
  `24` varchar(20) NOT NULL,
  `25` varchar(20) NOT NULL,
  `26` varchar(20) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL,
  `attendance_rate` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade12_march2023`
--

CREATE TABLE `grade12_march2023` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `1` varchar(20) NOT NULL,
  `2` varchar(20) NOT NULL,
  `3` varchar(20) NOT NULL,
  `4` varchar(20) NOT NULL,
  `5` varchar(20) NOT NULL,
  `6` varchar(20) NOT NULL,
  `7` varchar(20) NOT NULL,
  `8` varchar(20) NOT NULL,
  `9` varchar(20) NOT NULL,
  `10` varchar(20) NOT NULL,
  `11` varchar(20) NOT NULL,
  `12` varchar(20) NOT NULL,
  `13` varchar(20) NOT NULL,
  `14` varchar(20) NOT NULL,
  `15` varchar(20) NOT NULL,
  `16` varchar(20) NOT NULL,
  `17` varchar(20) NOT NULL,
  `18` varchar(20) NOT NULL,
  `19` varchar(20) NOT NULL,
  `20` varchar(20) NOT NULL,
  `21` varchar(20) NOT NULL,
  `22` varchar(20) NOT NULL,
  `23` varchar(20) NOT NULL,
  `24` varchar(20) NOT NULL,
  `25` varchar(20) NOT NULL,
  `26` varchar(20) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL,
  `attendance_rate` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade12_november2022`
--

CREATE TABLE `grade12_november2022` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `1` varchar(20) NOT NULL,
  `2` varchar(20) NOT NULL,
  `3` varchar(20) NOT NULL,
  `4` varchar(20) NOT NULL,
  `5` varchar(20) NOT NULL,
  `6` varchar(20) NOT NULL,
  `7` varchar(20) NOT NULL,
  `8` varchar(20) NOT NULL,
  `9` varchar(20) NOT NULL,
  `10` varchar(20) NOT NULL,
  `11` varchar(20) NOT NULL,
  `12` varchar(20) NOT NULL,
  `13` varchar(20) NOT NULL,
  `14` varchar(20) NOT NULL,
  `15` varchar(20) NOT NULL,
  `16` varchar(20) NOT NULL,
  `17` varchar(20) NOT NULL,
  `18` varchar(20) NOT NULL,
  `19` varchar(20) NOT NULL,
  `20` varchar(20) NOT NULL,
  `21` varchar(20) NOT NULL,
  `22` varchar(20) NOT NULL,
  `23` varchar(20) NOT NULL,
  `24` varchar(20) NOT NULL,
  `25` varchar(20) NOT NULL,
  `26` varchar(20) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL,
  `attendance_rate` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade12_october2022`
--

CREATE TABLE `grade12_october2022` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(12) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `1` varchar(20) NOT NULL,
  `2` varchar(20) NOT NULL,
  `3` varchar(20) NOT NULL,
  `4` varchar(20) NOT NULL,
  `5` varchar(20) NOT NULL,
  `6` varchar(20) NOT NULL,
  `7` varchar(20) NOT NULL,
  `8` varchar(20) NOT NULL,
  `9` varchar(20) NOT NULL,
  `10` varchar(20) NOT NULL,
  `11` varchar(20) NOT NULL,
  `12` varchar(20) NOT NULL,
  `13` varchar(20) NOT NULL,
  `14` varchar(20) NOT NULL,
  `15` varchar(20) NOT NULL,
  `16` varchar(20) NOT NULL,
  `17` varchar(20) NOT NULL,
  `18` varchar(20) NOT NULL,
  `19` varchar(20) NOT NULL,
  `20` varchar(20) NOT NULL,
  `21` varchar(20) NOT NULL,
  `22` varchar(20) NOT NULL,
  `23` varchar(20) NOT NULL,
  `24` varchar(20) NOT NULL,
  `25` varchar(20) NOT NULL,
  `26` varchar(20) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL,
  `attendance_rate` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `lrn` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `age` int(5) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`lrn`, `name`, `section`, `age`, `address`, `email`, `contact_number`, `timestamp`) VALUES
('20200126-M', 'Arnel Jay Bajalan', 'HUMMS 11-A', 20, 'Caloocan City', 'arnel@yahoo.com', '2147483647', '2022-12-01 00:52:07'),
('20200226-M', 'Marc Isaac Ablay', 'STEM 11-B', 21, 'Caloocan City', 'marcisaacablay@gmail.com', '2147483647', '2022-12-01 00:52:05'),
('20200231-M', 'Cyrus C. Cantero', 'STEM 11-A', 20, '888 Libis Baesa Caloocan City', 'slimshady.ca26@gmail.com', '2147483647', '2022-12-01 00:52:04'),
('20200232-M', 'Rowee Capinpin', 'ICT 11-A', 20, 'Caloocan City\r\n', 'rowee@gmail.com', '912345', '2022-12-01 06:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `students_archive`
--

CREATE TABLE `students_archive` (
  `time_deleted` timestamp NOT NULL DEFAULT current_timestamp(),
  `lrn` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `age` int(5) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_archive`
--

INSERT INTO `students_archive` (`time_deleted`, `lrn`, `name`, `section`, `age`, `address`, `email`, `contact_number`) VALUES
('2022-12-01 06:25:21', '136618070392', 'Paolo Rafael S. Tampico', 'ICT 11-B', 20, '791B P. Galauran St. 8th Ave. Caloocan City', 'paolorafaeltampico@gmail.com', '2147483647');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade11_december2022`
--
ALTER TABLE `grade11_december2022`
  ADD PRIMARY KEY (`month_id`),
  ADD KEY `lrn` (`lrn`),
  ADD KEY `lrn_2` (`lrn`);

--
-- Indexes for table `grade11_february2023`
--
ALTER TABLE `grade11_february2023`
  ADD PRIMARY KEY (`month_id`),
  ADD KEY `lrn` (`lrn`);

--
-- Indexes for table `grade11_january2023`
--
ALTER TABLE `grade11_january2023`
  ADD PRIMARY KEY (`month_id`),
  ADD KEY `lrn` (`lrn`);

--
-- Indexes for table `grade11_march2023`
--
ALTER TABLE `grade11_march2023`
  ADD PRIMARY KEY (`month_id`),
  ADD KEY `lrn` (`lrn`);

--
-- Indexes for table `grade11_november2022`
--
ALTER TABLE `grade11_november2022`
  ADD PRIMARY KEY (`month_id`),
  ADD KEY `lrn` (`lrn`);

--
-- Indexes for table `grade11_october2022`
--
ALTER TABLE `grade11_october2022`
  ADD PRIMARY KEY (`month_id`),
  ADD KEY `lrn` (`lrn`);

--
-- Indexes for table `grade12_december2022`
--
ALTER TABLE `grade12_december2022`
  ADD PRIMARY KEY (`month_id`),
  ADD KEY `lrn` (`lrn`);

--
-- Indexes for table `grade12_february2023`
--
ALTER TABLE `grade12_february2023`
  ADD PRIMARY KEY (`month_id`),
  ADD KEY `lrn` (`lrn`);

--
-- Indexes for table `grade12_january2023`
--
ALTER TABLE `grade12_january2023`
  ADD PRIMARY KEY (`month_id`),
  ADD KEY `lrn` (`lrn`);

--
-- Indexes for table `grade12_march2023`
--
ALTER TABLE `grade12_march2023`
  ADD PRIMARY KEY (`month_id`),
  ADD KEY `lrn` (`lrn`);

--
-- Indexes for table `grade12_november2022`
--
ALTER TABLE `grade12_november2022`
  ADD PRIMARY KEY (`month_id`),
  ADD KEY `lrn` (`lrn`);

--
-- Indexes for table `grade12_october2022`
--
ALTER TABLE `grade12_october2022`
  ADD PRIMARY KEY (`month_id`),
  ADD KEY `lrn` (`lrn`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`lrn`);

--
-- Indexes for table `students_archive`
--
ALTER TABLE `students_archive`
  ADD PRIMARY KEY (`lrn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `grade11_december2022`
--
ALTER TABLE `grade11_december2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grade11_february2023`
--
ALTER TABLE `grade11_february2023`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `grade11_january2023`
--
ALTER TABLE `grade11_january2023`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grade11_march2023`
--
ALTER TABLE `grade11_march2023`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grade11_november2022`
--
ALTER TABLE `grade11_november2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `grade11_october2022`
--
ALTER TABLE `grade11_october2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `grade12_december2022`
--
ALTER TABLE `grade12_december2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grade12_february2023`
--
ALTER TABLE `grade12_february2023`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grade12_january2023`
--
ALTER TABLE `grade12_january2023`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `grade12_march2023`
--
ALTER TABLE `grade12_march2023`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade12_november2022`
--
ALTER TABLE `grade12_november2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade12_october2022`
--
ALTER TABLE `grade12_october2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grade11_december2022`
--
ALTER TABLE `grade11_december2022`
  ADD CONSTRAINT `grade11_december2022_ibfk_1` FOREIGN KEY (`lrn`) REFERENCES `students` (`lrn`) ON DELETE CASCADE;

--
-- Constraints for table `grade11_february2023`
--
ALTER TABLE `grade11_february2023`
  ADD CONSTRAINT `grade11_february2023_ibfk_1` FOREIGN KEY (`lrn`) REFERENCES `students` (`lrn`) ON DELETE CASCADE;

--
-- Constraints for table `grade11_january2023`
--
ALTER TABLE `grade11_january2023`
  ADD CONSTRAINT `grade11_january2023_ibfk_1` FOREIGN KEY (`lrn`) REFERENCES `students` (`lrn`) ON DELETE CASCADE;

--
-- Constraints for table `grade11_march2023`
--
ALTER TABLE `grade11_march2023`
  ADD CONSTRAINT `grade11_march2023_ibfk_1` FOREIGN KEY (`lrn`) REFERENCES `students` (`lrn`) ON DELETE CASCADE;

--
-- Constraints for table `grade11_november2022`
--
ALTER TABLE `grade11_november2022`
  ADD CONSTRAINT `grade11_november2022_ibfk_1` FOREIGN KEY (`lrn`) REFERENCES `students` (`lrn`) ON DELETE CASCADE;

--
-- Constraints for table `grade11_october2022`
--
ALTER TABLE `grade11_october2022`
  ADD CONSTRAINT `grade11_october2022_ibfk_1` FOREIGN KEY (`lrn`) REFERENCES `students` (`lrn`) ON DELETE CASCADE;

--
-- Constraints for table `grade12_december2022`
--
ALTER TABLE `grade12_december2022`
  ADD CONSTRAINT `grade12_december2022_ibfk_1` FOREIGN KEY (`lrn`) REFERENCES `students` (`lrn`) ON DELETE CASCADE;

--
-- Constraints for table `grade12_february2023`
--
ALTER TABLE `grade12_february2023`
  ADD CONSTRAINT `grade12_february2023_ibfk_1` FOREIGN KEY (`lrn`) REFERENCES `students` (`lrn`) ON DELETE CASCADE;

--
-- Constraints for table `grade12_january2023`
--
ALTER TABLE `grade12_january2023`
  ADD CONSTRAINT `grade12_january2023_ibfk_1` FOREIGN KEY (`lrn`) REFERENCES `students` (`lrn`) ON DELETE CASCADE;

--
-- Constraints for table `grade12_march2023`
--
ALTER TABLE `grade12_march2023`
  ADD CONSTRAINT `grade12_march2023_ibfk_1` FOREIGN KEY (`lrn`) REFERENCES `students` (`lrn`) ON DELETE CASCADE;

--
-- Constraints for table `grade12_november2022`
--
ALTER TABLE `grade12_november2022`
  ADD CONSTRAINT `grade12_november2022_ibfk_1` FOREIGN KEY (`lrn`) REFERENCES `students` (`lrn`) ON DELETE CASCADE;

--
-- Constraints for table `grade12_october2022`
--
ALTER TABLE `grade12_october2022`
  ADD CONSTRAINT `grade12_october2022_ibfk_1` FOREIGN KEY (`lrn`) REFERENCES `students` (`lrn`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
