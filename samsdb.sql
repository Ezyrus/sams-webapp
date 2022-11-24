-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 05:06 AM
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
  `lrn` varchar(50) NOT NULL,
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
  `lrn` varchar(50) NOT NULL,
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

--
-- Dumping data for table `grade11_february2023`
--

INSERT INTO `grade11_february2023` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(1, '136606090102', 'Monica E. Paredes', 'ICT 11-A', '', '', '', '', '', '', '', 'absent', '', 'present', 'present', '', 'absent', '', 'present', '', 'present', '', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', 'noclass', 'present', '', 17, 14, 3, 82.3529, '2022-11-22 08:16:37'),
(2, '136612070392', 'John Edrich Viray', 'STEM 11-A', 'absent', 'absent', 'absent', 'absent', 'absent', 'present', 'absent', 'absent', 'absent', 'present', 'absent', 'present', '', '', '', '', '', 'present', '', 'present', '', '', 'present', '', '', '', '', 'absent', 'present', 'absent', 'present', 19, 8, 11, 42.1053, '2022-11-22 08:16:37'),
(3, '136618070392', 'Paolo Rafael S. Tampico', 'ICT 11-A', '', 'absent', 'absent', '', 'absent', '', 'present', '', 'absent', '', '', 'present', '', 'absent', '', 'absent', '', 'present', '', 'absent', '', 'absent', 'present', 'absent', '', 'absent', 'present', '', 'absent', 'present', '', 17, 6, 11, 35.2941, '2022-11-23 04:01:15'),
(4, '20200126-M', 'Arnel Jay Bajalan', 'HUMMS 11-A', 'absent', 'absent', 'present', 'present', 'present', 'absent', 'absent', 'absent', 'present', '', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', 'present', 'present', 30, 18, 12, 60, '2022-11-23 04:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `grade11_january2023`
--

CREATE TABLE `grade11_january2023` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(50) NOT NULL,
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

--
-- Dumping data for table `grade11_january2023`
--

INSERT INTO `grade11_january2023` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(1, '136606090102', 'Monica E. Paredes', 'ICT 11-A', 'present', 'present', '', '', 'present', '', 'present', 'present', 'present', 'present', 'present', '', 'present', 'absent', '', 'present', 'present', 'absent', '', 'present', '', 'present', 'absent', 'present', '', 'present', 'present', 'absent', 'absent', 'absent', 'absent', 23, 16, 7, 69.5652, '2022-11-24 03:54:41'),
(2, '136612070392', 'John Edrich Viray', 'STEM 11-A', 'present', 'present', 'absent', 'present', 'present', 'absent', 'present', 'absent', 'present', 'absent', '', 'present', '', 'absent', 'absent', 'present', 'present', '', 'present', 'present', '', '', 'present', 'absent', 'present', '', 'present', 'present', 'present', '', 'present', 24, 17, 7, 70.8333, '2022-11-24 03:54:42'),
(3, '136618070392', 'Paolo Rafael S. Tampico', 'ICT 11-A', 'present', '', '', '', 'present', '', '', 'present', '', '', '', '', 'present', 'absent', 'absent', 'present', 'absent', 'present', 'present', 'present', 'absent', 'present', 'absent', 'present', 'absent', 'present', 'present', 'present', 'present', 'absent', 'present', 22, 15, 7, 68.1818, '2022-11-24 03:54:46'),
(4, '20200126-M', 'Arnel Jay Bajalan', 'HUMMS 11-A', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', '', 'present', '', 'absent', '', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 28, 17, 11, 60.7143, '2022-11-24 03:54:47'),
(5, '20200226-M', 'Marc Isaac Ablay', 'STEM 11-B', 'absent', 'present', 'present', 'present', 'present', '', 'present', 'present', 'present', 'present', 'present', 'absent', 'present', 'absent', 'absent', 'absent', 'absent', 'present', 'absent', 'absent', 'present', 'absent', 'present', 'absent', 'present', 'present', 'absent', 'present', 'present', 'absent', 'present', 30, 18, 12, 60, '2022-11-24 03:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `grade11_march2023`
--

CREATE TABLE `grade11_march2023` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(50) NOT NULL,
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
  `lrn` varchar(50) NOT NULL,
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

--
-- Dumping data for table `grade11_november2022`
--

INSERT INTO `grade11_november2022` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(7, '23823882732', 'Rarugal Hermogino', 'ABM 11-A', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'noclass', '', '', '', '', '', '', '', 23, 15, 8, 65.2174, '2022-11-22 08:15:25'),
(8, '136606090102', 'Monica E. Paredes', 'ICT 11-A', '', 'present', '', 'present', '', '', '', 'present', 'present', 'present', 'absent', '', 'absent', '', 'present', '', 'absent', 'present', 'present', 'present', 'absent', 'present', '', 'absent', 'absent', '', 'present', '', 'absent', 'absent', 'absent', 20, 11, 9, 55, '2022-11-23 03:59:12'),
(9, '136612070392', 'John Edrich Viray', 'STEM 11-A', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', 'absent', 'present', 'absent', 'absent', 'absent', 'present', 'absent', 'absent', 'absent', 'present', 'absent', 'absent', '', '', '', '', 'present', '', '', 25, 15, 10, 60, '2022-11-23 03:59:14'),
(10, '136618070392', 'Paolo Rafael S. Tampico', 'ICT 11-A', 'present', 'present', 'present', 'absent', 'present', 'absent', 'present', 'present', 'absent', '', 'absent', 'present', 'absent', '', 'present', 'present', 'absent', '', 'present', 'present', 'present', 'present', '', 'present', 'present', 'present', '', 'present', '', 'absent', 'absent', 25, 17, 8, 68, '2022-11-23 03:59:15'),
(11, '20200126-M', 'Arnel Jay Bajalan', 'HUMMS 11-A', 'present', 'present', 'present', 'absent', '', 'absent', 'present', 'absent', '', 'absent', 'present', 'present', 'absent', 'absent', 'absent', '', 'present', 'absent', '', '', 'absent', '', 'present', 'absent', 'absent', '', 'absent', 'present', '', 'absent', 'present', 23, 10, 13, 43.4783, '2022-11-23 03:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `grade11_october2022`
--

CREATE TABLE `grade11_october2022` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(50) NOT NULL,
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

--
-- Dumping data for table `grade11_october2022`
--

INSERT INTO `grade11_october2022` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(7, '136612070392', 'John Edrich Viray', 'STEM 11-A', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', '', 'present', 'present', '', 'present', '', '', 'present', 'present', 'present', 'present', '', 'absent', 'present', '', 'absent', '', '', 'absent', '', '', 'absent', 'absent', 21, 16, 5, 76.1905, '2022-11-21 08:05:19'),
(11, '20200233-M', 'Darren Carbungco', 'HUMMS 11-A', 'absent', 'absent', 'present', 'present', 'present', 'present', 'present', 'absent', 'present', 'absent', 'present', 'present', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 31, 20, 11, 64.5161, '2022-11-21 08:25:36'),
(13, '20200231-M', 'Cyrus C. Cantero', 'STEM 11-A', 'absent', 'present', 'absent', 'absent', 'present', 'absent', 'absent', 'absent', 'present', 'absent', '', 'present', 'absent', '', '', '', '', '', 'present', 'present', '', 'present', '', 'absent', 'present', 'present', 'absent', 'present', 'absent', 'absent', 'present', 23, 11, 12, 47.8261, '2022-11-21 10:26:19'),
(15, '136618070392', 'Paolo Rafael S. Tampico', 'ICT 11-A', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 31, 31, 0, 100, '2022-11-21 10:26:24'),
(20, '223505070048', 'Arabella Belardo', 'ICT 11-A', 'absent', 'absent', 'present', 'absent', 'present', '', 'absent', 'absent', '', 'noclass', '', 'present', 'present', 'noclass', 'absent', 'absent', '', '', 'absent', 'absent', 'noclass', 'present', 'present', 'absent', 'present', 'present', 'absent', 'absent', 'absent', 'present', 'absent', 23, 9, 14, 39.1304, '2022-11-22 08:03:18'),
(21, '136606090102', 'Monica E. Paredes', 'ICT 11-A', '', 'present', '', '', '', 'present', 'present', '', 'present', '', 'present', '', 'present', 'present', '', '', 'present', 'present', '', '', '', 'present', '', 'present', 'present', 'absent', 'present', 'present', 'present', 'present', 'present', 18, 17, 1, 94.4444, '2022-11-22 08:03:20'),
(22, '23823882732', 'Rarugal Hermogino', 'ABM 11-A', 'present', '', 'present', 'present', 'present', 'absent', 'present', 'present', 'noclass', 'present', 'present', 'present', 'absent', 'absent', 'present', '', 'present', 'present', 'absent', 'present', 'present', 'present', '', 'present', 'present', 'absent', 'present', 'absent', 'present', '', 'absent', 26, 19, 7, 73.0769, '2022-11-22 08:53:23'),
(23, '2020029-M', 'Arman Cabral', 'HUMMS 11-A', 'present', '', 'absent', '', 'absent', '', 'absent', 'absent', 'present', 'absent', 'present', 'present', 'present', 'present', '', 'present', '', 'present', 'present', '', 'present', '', 'present', 'present', 'present', 'present', '', 'present', 'absent', 'absent', 'absent', 23, 15, 8, 65.2174, '2022-11-22 08:53:23'),
(24, '20200232-M', 'Rowee Capinpin', 'ICT 11-A', 'present', 'present', 'present', 'absent', 'absent', 'present', 'present', 'present', 'absent', '', 'present', 'present', 'present', 'present', '', 'present', '', '', 'present', 'present', 'present', '', 'present', '', 'present', 'absent', '', 'present', 'present', 'present', 'present', 24, 20, 4, 83.3333, '2022-11-22 08:53:24'),
(25, '20200226-M', 'Marc Isaac Ablay', 'STEM 11-B', 'present', 'present', 'present', 'present', 'absent', 'present', 'absent', 'present', 'absent', '', 'absent', 'present', 'absent', 'absent', 'present', '', 'present', 'absent', 'present', 'absent', 'present', 'present', '', 'absent', '', 'present', '', 'present', 'absent', '', 'present', 25, 15, 10, 60, '2022-11-22 08:53:28'),
(26, '20200126-M', 'Arnel Jay Bajalan', 'HUMMS 11-A', 'present', 'present', 'absent', 'absent', 'present', 'present', 'present', 'present', 'absent', 'present', 'absent', 'present', 'absent', 'absent', 'absent', 'absent', 'present', 'absent', 'present', 'absent', 'absent', 'absent', 'absent', 'absent', 'present', 'absent', 'absent', 'absent', 'absent', 'present', 'absent', 31, 12, 19, 38.7097, '2022-11-22 08:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `grade12_december2022`
--

CREATE TABLE `grade12_december2022` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(50) NOT NULL,
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

--
-- Dumping data for table `grade12_december2022`
--

INSERT INTO `grade12_december2022` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(1, '136606090102', 'Monica E. Paredes', 'ICT 11-A', '', '', '', '', 'present', '', '', '', 'absent', '', '', '', 'absent', '', '', '', '', '', 'present', '', '', 'present', 'absent', 'absent', 'absent', 'present', '', 'absent', 'present', 'present', 'absent', 13, 6, 7, 46.1538, '2022-11-22 08:23:05'),
(2, '136612070392', 'John Edrich Viray', 'STEM 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-11-22 08:23:06'),
(3, '136618070392', 'Paolo Rafael S. Tampico', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-11-22 08:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `grade12_february2023`
--

CREATE TABLE `grade12_february2023` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(50) NOT NULL,
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

--
-- Dumping data for table `grade12_february2023`
--

INSERT INTO `grade12_february2023` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(1, '223505070048', 'Arabella Belardo', 'ICT 11-A', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'present', 'present', '', 'present', 'present', '', 'present', 'present', '', 'present', '', 'present', '', 'present', '', 'present', '', 'absent', '', 23, 10, 13, 43.4783, '2022-11-22 08:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `grade12_january2023`
--

CREATE TABLE `grade12_january2023` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(50) NOT NULL,
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

--
-- Dumping data for table `grade12_january2023`
--

INSERT INTO `grade12_january2023` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(1, '136606090102', 'Monica E. Paredes', 'ICT 11-A', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', 'absent', 'present', 'absent', 'present', 'absent', 'present', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 31, 19, 12, 61.2903, '2022-11-22 08:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `grade12_march2023`
--

CREATE TABLE `grade12_march2023` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(50) NOT NULL,
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
  `lrn` varchar(50) NOT NULL,
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
  `lrn` varchar(50) NOT NULL,
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

--
-- Dumping data for table `grade12_october2022`
--

INSERT INTO `grade12_october2022` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(7, '23823882732', 'Rarugal Hermogino', 'ABM 11-A', 'present', '', 'present', 'present', '', 'present', 'present', 'absent', 'present', 'present', 'present', 'present', 'present', 'present', '', 'present', 'present', '', 'present', '', 'present', '', '', 'present', 'present', 'present', 'present', 'absent', 'present', 'absent', 'absent', 24, 20, 4, 83.3333, '2022-11-22 08:22:09'),
(8, '223505070048', 'Arabella Belardo', 'ICT 11-A', '', 'present', 'absent', 'present', '', 'present', 'present', 'absent', 'absent', 'present', 'absent', 'absent', 'present', 'absent', 'present', 'absent', 'present', 'absent', 'present', 'present', 'absent', 'absent', 'present', 'present', 'present', 'absent', 'present', 'absent', 'present', 'present', 'present', 29, 17, 12, 58.6207, '2022-11-22 08:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `lrn` varchar(50) NOT NULL,
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
('136606090102', 'Monica E. Paredes', 'ICT 11-A', 20, '103 Francisco St. Brgy. 71 Caloocan City', 'nicaembateparedes@gmail.com', '09451323281', '2022-10-25 11:06:58'),
('136612070392', 'John Edrich Viray', 'STEM 11-A', 20, '#75 Dau St., 6th Ave., Caloocan City', 'Virayjohnedrich@gmail.com', '09760500860', '2022-10-25 11:06:58'),
('136618070392', 'Paolo Rafael S. Tampico', 'ICT 11-A', 20, '791B P. Galauran St. 8th Ave. Caloocan City', 'paolorafaeltampico@gmail.com', '09219098950', '2022-10-25 11:06:58'),
('20200126-M', 'Arnel Jay Bajalan', 'HUMMS 11-A', 20, 'Caloocan City', 'arnel@yahoo.com', '091111111234', '2022-11-05 08:57:22'),
('20200226-M', 'Marc Isaac Ablay', 'STEM 11-B', 21, 'Caloocan City', 'marcisaacablay@gmail.com', '091231333333', '2022-11-05 08:53:18'),
('20200231-M', 'Cyrus C. Cantero', 'STEM 11-A', 20, '888 Libis Baesa Caloocan City', 'slimshady.ca26@gmail.com', '09517563059', '2022-11-05 07:55:09'),
('20200232-M', 'Rowee Capinpin', 'ICT 11-A', 20, 'Caloocan City\r\n', 'rowee@gmail.com', '0912345', '2022-11-05 08:59:47'),
('20200233-M', 'Darren Carbungco', 'HUMMS 11-A', 20, 'caloocan city', 'darren@gmail.com\r\n', '092131231513', '2022-11-05 09:00:22'),
('2020029-M', 'Arman Cabral', 'HUMMS 11-A', 20, 'Caloocan City', 'armalcabral@gmail.com', '09123456789', '2022-11-05 08:58:08'),
('223505070048', 'Arabella Belardo', 'ICT 11-A', 19, 'Blk15 lot11 North Triangle Caloocan City', 'belardoarabella05@gmail.com', '09219098950', '2022-10-25 11:06:58'),
('23823882732', 'Rarugal Hermogino', 'ABM 11-A', 40, 'Valenzuela City', 'nar@yahoo.com', '092133092', '2022-11-07 02:22:27');

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
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
