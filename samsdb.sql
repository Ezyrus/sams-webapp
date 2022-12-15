-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 03:27 AM
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
  `password` varchar(255) NOT NULL,
  `time_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `time_created`) VALUES
(21, 'admin', '$2y$10$PgO6HmuvLXwQrTmaHe5cx.rMUrtfeMCRzPZygODpZq9wtkl5gEHJy', '2022-12-14 10:25:10'),
(22, 'chsadmin', '$2y$10$60X1VUHZS7AMWvcW3O0zgeHg5LN/A6zFMDI5ibaEGcoCMWnmsuZaq', '2022-12-14 11:30:23');

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

--
-- Dumping data for table `grade11_december2022`
--

INSERT INTO `grade11_december2022` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(6, '136635789546', 'Villaluna, Ronalaine Nifras ', 'ABM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 16:21:29'),
(7, '136632399676', 'Lauigan, Cris Joshua Arboleda', 'STEM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 16:21:29'),
(8, '136635789677', 'Tong, Elija Joshua Baniqued', 'STEM 12-A', 'absent', 'absent', 'absent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 0, 3, 0, '2022-12-12 16:21:31'),
(9, '136652345678', 'Cabral, Arman Aquino', 'ABM 11-A', 'present', 'absent', 'present', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 2, 1, 66.6667, '2022-12-12 16:21:31'),
(10, '136656190043', 'Viray, John Edrich Cortez', 'STEM 11-A', 'present', 'present', 'absent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 2, 1, 66.6667, '2022-12-12 16:21:32');

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

--
-- Dumping data for table `grade11_march2023`
--

INSERT INTO `grade11_march2023` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(3, '136618070392', 'Tampico, Paolo Rafael Salazar', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 06:32:54'),
(4, '136622345678', 'Paredes, Monica Embate', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 06:32:55'),
(5, '136632345570', 'Hermogino, Ranilo Rarugal', 'STEM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 06:32:55'),
(6, '136632345649', 'De Guzman, Marco Amatosa', 'ABM 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 06:32:56');

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

--
-- Dumping data for table `grade11_november2022`
--

INSERT INTO `grade11_november2022` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(13, '136699989677', 'Martinez, Laica Mae Tardio', 'ICT 11-A', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', '', '', '', '', '', '', '', '', '', '', '', '', 19, 19, 0, 100, '2022-12-14 05:52:26'),
(15, '136688889677', 'Saturnino, Francis Bartolome', 'ICT 11-A', 'present', 'present', 'absent', 'absent', '', '', '', '', '', '', '', 'present', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, 3, 2, 60, '2022-12-14 05:52:27'),
(16, '136622345678', 'Paredes, Monica Embate', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-14 05:52:28'),
(17, '136618070392', 'Tampico, Paolo Rafael Salazar', 'ICT 11-A', 'present', 'present', 'absent', 'absent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 2, 2, 50, '2022-12-14 05:52:28');

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

--
-- Dumping data for table `grade11_october2022`
--

INSERT INTO `grade11_october2022` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(34, '136632345570', 'Hermogino, Ranilo Rarugal', 'STEM 12-A', 'absent', 'absent', 'absent', 'present', 'present', 'present', 'present', 'present', 'absent', 'present', 'absent', 'present', 'present', 'present', 'absent', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 31, 25, 6, 80.6452, '2022-12-06 02:33:15'),
(35, '136632345649', 'De Guzman, Marco Amatosa', 'ABM 11-A', 'absent', 'absent', 'absent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 0, 3, 0, '2022-12-06 02:33:15'),
(37, '136632345691', 'Carbungco, Darren Santos', 'ABM 11-A', 'absent', 'absent', 'absent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 0, 3, 0, '2022-12-06 02:33:16'),
(38, '136632345758', 'Gonzalo, Kervin Clark Pelayo', 'HUMMS 11-A', 'absent', 'absent', 'absent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 0, 3, 0, '2022-12-06 02:33:17'),
(39, '136632389677', 'Llenes, Harley Dave Venida', 'STEM 12-A', 'absent', 'present', 'present', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 2, 1, 66.6667, '2022-12-06 02:33:18'),
(40, '136632399676', 'Lauigan, Cris Joshua Arboleda', 'STEM 12-A', 'present', 'present', 'present', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 3, 0, 100, '2022-12-06 02:33:19'),
(41, '136635789546', 'Villaluna, Ronalaine Nifras ', 'ABM 12-A', 'present', 'present', 'present', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 3, 0, 100, '2022-12-06 02:33:20'),
(42, '136635789677', 'Tong, Elija Joshua Baniqued', 'STEM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:20'),
(43, '136699989677', 'Martinez, Laica Mae Tardio', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:22'),
(44, '136652345678', 'Cabral, Arman Aquino', 'ABM 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:23'),
(45, '136699989688', 'Taneza, James Reginald Gabriel', 'HUMMS 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:25'),
(47, '136688889677', 'Saturnino, Francis Bartolome', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:30'),
(53, '136618070392', 'Tampico, Paolo Rafael Salazar', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-11 08:05:26'),
(54, '136622345678', 'Paredes, Monica Embate', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-11 08:05:27'),
(55, '136632345677', 'Belardo, Arabella Bulawan', 'HUMMS 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-11 08:05:32');

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

--
-- Dumping data for table `grade12_february2023`
--

INSERT INTO `grade12_february2023` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(4, '136618070392', 'Tampico, Paolo Rafael Salazar', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-14 05:56:40'),
(5, '136622345678', 'Paredes, Monica Embate', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-14 05:56:40');

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

--
-- Dumping data for table `grade12_march2023`
--

INSERT INTO `grade12_march2023` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(1, '136632345570', 'Hermogino, Ranilo Rarugal', 'STEM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 16:26:17'),
(2, '136632345649', 'De Guzman, Marco Amatosa', 'ABM 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 16:26:18'),
(3, '136632345691', 'Carbungco, Darren Santos', 'ABM 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 16:26:19'),
(4, '136632345677', 'Belardo, Arabella Bulawan', 'HUMMS 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 16:26:26'),
(5, '136632345714', 'De Jesus, Mikaella Angela Cacho', 'HUMMS 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 16:26:27'),
(6, '136632345758', 'Gonzalo, Kervin Clark Pelayo', 'HUMMS 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 16:26:27'),
(7, '136699989688', 'Taneza, James Reginald Gabriel', 'HUMMS 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 16:26:28');

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

--
-- Dumping data for table `grade12_november2022`
--

INSERT INTO `grade12_november2022` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(1, '136699989688', 'Taneza, James Reginald Gabriel', 'HUMMS 11-A', '', '', 'present', 'present', 'present', 'present', 'present', '', 'present', 'present', 'absent', '', 'present', '', 'present', '', 'absent', 'present', 'present', 'noclass', 'present', 'present', '', '', '', '', '', '', '', '', '', 15, 13, 2, 86.6667, '2022-12-12 16:22:07'),
(2, '136699989677', 'Martinez, Laica Mae Tardio', 'ICT 11-A', '', 'present', '', 'present', '', '', 'present', 'present', '', '', 'present', 'present', '', 'present', '', 'absent', 'absent', 'absent', 'present', '', '', 'present', '', '', '', '', '', '', '', '', '', 12, 9, 3, 75, '2022-12-12 16:22:08'),
(4, '136652345678', 'Cabral, Arman Aquino', 'ABM 11-A', '', 'present', '', 'present', '', 'present', '', 'present', 'present', '', 'present', '', 'present', '', '', 'present', '', 'present', '', '', '', '', '', '', '', '', '', '', '', '', '', 9, 9, 0, 100, '2022-12-12 16:22:11');

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

--
-- Dumping data for table `grade12_october2022`
--

INSERT INTO `grade12_october2022` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(9, '136632345570', 'Hermogino, Ranilo Rarugal', 'STEM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 05:54:52'),
(11, '136635789546', 'Villaluna, Ronalaine Nifras ', 'ABM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 05:55:36'),
(12, '136678945677', 'Julia, Judell Sano', 'ABM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 05:55:38'),
(13, '136632389677', 'Llenes, Harley Dave Venida', 'STEM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 05:55:41'),
(14, '136632399676', 'Lauigan, Cris Joshua Arboleda', 'STEM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 05:55:42'),
(15, '136635789677', 'Tong, Elija Joshua Baniqued', 'STEM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-12 05:55:42');

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
('123123123123', 'Another Student', 'Section', 22, 'Caloocan City', 'AnotherStudent@yahoo.com', '0909', '2022-12-15 02:06:26'),
('136611111111', 'Pascual, Patricia Escota', 'ICT 11-A', 21, 'Caloocan City', 'pascual@gmail.com', '0909', '2022-12-15 02:26:05'),
('136612345678', 'Cantero, Cyrus Cruza ', 'STEM 11-A ', 20, '#888 Libis Baesa, Barangay 160, Caloocan City', 'ccantero27@yahoo.com ', '9517563059', '2022-12-15 02:11:20'),
('136618070392', 'Tampico, Paolo Rafael Salazar', 'ICT 11-A', 21, '#791B P. Galauran St. 8th Ave., Caloocan City', 'paolo@gmail.com', '9237981256', '2022-12-11 06:58:04'),
('136622345678', 'Paredes, Monica Embate', 'ICT 11-A', 21, 'Caloocan City', 'paredes@gmail.com', '9456723654', '2022-12-11 06:58:04'),
('136632345570', 'Hermogino, Ranilo Rarugal', 'STEM 12-A', 21, 'caloocan city\r\n', 'hermogino@gmail.com', '09562317945', '2022-12-06 01:52:23'),
('136632345649', 'De Guzman, Marco Amatosa', 'ABM 11-A', 20, 'caloocan city', 'marco@gmail.com', '0956471236', '2022-12-06 01:41:31'),
('136632345677', 'Belardo, Arabella Bulawan', 'HUMMS 11-A', 20, ' Caloocan City', 'belardo@gmail.com', '9256413897', '2022-12-11 06:58:04'),
('136632345691', 'Carbungco, Darren Santos', 'ABM 11-A', 21, 'caloocan city', 'carbungco@gmail.com', '09564812397', '2022-12-06 01:40:14'),
('136632345714', 'De Jesus, Mikaella Angela Cacho', 'HUMMS 11-A', 21, 'caloocan city', 'dejesus@gmail.com', '098974561235', '2022-12-06 01:47:26'),
('136632345758', 'Gonzalo, Kervin Clark Pelayo', 'HUMMS 11-A', 21, 'caloocan city', 'gonzalo@gmail.com', '09562314897', '2022-12-06 01:49:48'),
('136632389677', 'Llenes, Harley Dave Venida', 'STEM 12-A', 20, 'caloocan city', 'harley@yahoo.com', '09789456123', '2022-12-06 02:12:03'),
('136632399676', 'Lauigan, Cris Joshua Arboleda', 'STEM 12-A', 20, 'caloocan city', 'lauigan@gmail.com', '09789456123', '2022-12-06 02:10:14'),
('136635789546', 'Villaluna, Ronalaine Nifras ', 'ABM 12-A', 20, 'caloocan city', 'villaluna@yahoo.com', '09561379852', '2022-12-06 02:32:06'),
('136635789677', 'Tong, Elija Joshua Baniqued', 'STEM 12-B', 20, 'caloocan city', 'elija@gmail.com', '09569321789', '2022-12-06 02:30:10'),
('136652345678', 'Cabral, Arman Aquino', 'ABM 11-A', 20, 'caloocan city', 'cabral@gmail.com', '09123951753', '2022-12-06 01:33:09'),
('136656190043', 'Viray, John Edrich Cortez', 'STEM 11-A', 21, '#75 Dau St. 6th Ave., Caloocan City', 'viray@yahoo.com', '9760500860', '2022-12-11 06:58:04'),
('136678945677', 'Julia, Judell Sano', 'ABM 12-A', 21, 'caloocan city', 'julia@yahoo.com', '09451237895', '2022-12-06 01:56:30'),
('136688889677', 'Saturnino, Francis Bartolome', 'ICT 11-A', 20, 'caloocan city', 'francis@gmail.com', '09789632598', '2022-12-06 02:20:37'),
('136699989677', 'Martinez, Laica Mae Tardio', 'ICT 11-A', 20, 'caloocan city', 'martinez@gmail.com', '09456852963', '2022-12-06 02:16:32'),
('136699989688', 'Taneza, James Reginald Gabriel', 'HUMMS 11-A', 20, 'caloocan city', 'taneza@gmail.com', '09789456132', '2022-12-06 02:24:41');

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
('2022-12-15 02:05:54', '123123123123', 'Student', 'Section', 20, 'Caloocan City', 'Student@yahoo.com', '090999'),
('2022-12-13 13:45:25', '20200126-M', 'Arnel Jay Bajalan', 'HUMMS 11-b', 20, 'Caloocan City', 'arnel@yahoo.com', '2147483647'),
('2022-12-11 00:37:40', '20200226-M', 'Marc Isaac Ablay', 'STEM 11-B', 21, 'Caloocan City', 'marcisaacablay@gmail.com', '2147483647'),
('2022-12-06 01:24:02', '20200232-M', 'Rowee Capinpin', 'ICT 11-A', 20, 'Caloocan City\r\n', 'rowee@gmail.com', '912345');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `grade11_december2022`
--
ALTER TABLE `grade11_december2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `grade11_november2022`
--
ALTER TABLE `grade11_november2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `grade11_october2022`
--
ALTER TABLE `grade11_october2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `grade12_december2022`
--
ALTER TABLE `grade12_december2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grade12_february2023`
--
ALTER TABLE `grade12_february2023`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grade12_january2023`
--
ALTER TABLE `grade12_january2023`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `grade12_march2023`
--
ALTER TABLE `grade12_march2023`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `grade12_november2022`
--
ALTER TABLE `grade12_november2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `grade12_october2022`
--
ALTER TABLE `grade12_october2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
