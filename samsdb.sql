-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 08:29 AM
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

--
-- Dumping data for table `grade11_october2022`
--

INSERT INTO `grade11_october2022` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(27, '136656190043', 'Viray, John Edrich Cortes', 'STEM 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-05 08:16:33'),
(31, '136612345678', 'Cantero, Cyrus Cruza', 'STEM 11-A', 'present', 'present', 'absent', 'present', 'present', 'present', 'present', 'present', 'absent', 'present', 'absent', 'present', 'present', 'present', 'absent', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 31, 27, 4, 87.0968, '2022-12-06 02:33:13'),
(32, '136618070392', 'Tampico, Paolo Rafael Salazar', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:14'),
(33, '136622345678', 'Paredes, Monica Embate', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:15'),
(34, '136632345570', 'Hermogino, Ranilo Rarugal', 'STEM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:15'),
(35, '136632345649', 'De Guzman, Marco Amatosa', 'ABM 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:15'),
(36, '136632345677', 'Belardo, Arabella Bulawan', 'HUMMS 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:16'),
(37, '136632345691', 'Carbungco, Darren Santos', 'ABM 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:16'),
(38, '136632345758', 'Gonzalo, Kervin Clark Pelayo', 'HUMMS 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:17'),
(39, '136632389677', 'Llenes, Harley Dave Venida', 'STEM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:18'),
(40, '136632399676', 'Lauigan, Cris Joshua Arboleda', 'STEM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:19'),
(41, '136635789546', 'Villaluna, Ronalaine Nifras ', 'ABM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:20'),
(42, '136635789677', 'Tong, Elija Joshua Baniqued', 'STEM 12-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:20'),
(43, '136699989677', 'Martinez, Laica Mae Tardio', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:22'),
(44, '136652345678', 'Cabral, Arman Aquino', 'ABM 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:23'),
(45, '136699989688', 'Taneza, James Reginald Gabriel', 'HUMMS 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:25'),
(46, '136699912377', 'Pascual, Patricia Escota', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:28'),
(47, '136688889677', 'Saturnino, Francis Bartolome', 'ICT 11-A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '2022-12-06 02:33:30');

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
('136612345678', 'Cantero, Cyrus Cruza', 'STEM 11-A', 20, '#888 Libis Baesa, Barangay 160, Caloocan City', 'ccantero27@yahoo.com', '09517563059', '2022-12-06 01:23:52'),
('136618070392', 'Tampico, Paolo Rafael Salazar', 'ICT 11-A', 20, '791B P. Galauran St. 8th Ave. Caloocan City', 'paolorafaeltampico@gmail.com', '09237981256', '2022-12-06 01:23:50'),
('136622345678', 'Paredes, Monica Embate', 'ICT 11-A', 21, 'Caloocan City\r\n', 'monica@yahoo.com', '09456723654', '2022-12-06 01:27:47'),
('136632345570', 'Hermogino, Ranilo Rarugal', 'STEM 12-A', 21, 'caloocan city\r\n', 'hermogino@gmail.com', '09562317945', '2022-12-06 01:52:23'),
('136632345649', 'De Guzman, Marco Amatosa', 'ABM 11-A', 20, 'caloocan city\r\n\r\n', 'marco@gmail.com', '095648971236', '2022-12-06 01:41:31'),
('136632345677', 'Belardo, Arabella Bulawan', 'HUMMS 11-A', 20, 'caloocan city', 'belardo@gmail.com', '09256431897', '2022-12-06 01:29:28'),
('136632345691', 'Carbungco, Darren Santos', 'ABM 11-A', 21, 'caloocan city', 'carbungco@gmail.com', '09564812397', '2022-12-06 01:40:14'),
('136632345714', 'De Jesus, Mikaella Angela Cacho', 'HUMMS 11-A', 21, 'caloocan city', 'dejesus@gmail.com', '098974561235', '2022-12-06 01:47:26'),
('136632345758', 'Gonzalo, Kervin Clark Pelayo', 'HUMMS 11-A', 21, 'caloocan city', 'gonzalo@gmail.com', '09562314897', '2022-12-06 01:49:48'),
('136632389677', 'Llenes, Harley Dave Venida', 'STEM 12-A', 20, 'caloocan city', 'harley@yahoo.com', '09789456123', '2022-12-06 02:12:03'),
('136632399676', 'Lauigan, Cris Joshua Arboleda', 'STEM 12-A', 20, 'caloocan city', 'lauigan@gmail.com', '09789456123', '2022-12-06 02:10:14'),
('136635789546', 'Villaluna, Ronalaine Nifras ', 'ABM 12-A', 20, 'caloocan city', 'villaluna@yahoo.com', '09561379852', '2022-12-06 02:32:06'),
('136635789677', 'Tong, Elija Joshua Baniqued', 'STEM 12-A', 20, 'caloocan city', 'elija@gmail.com', '09569321789', '2022-12-06 02:30:10'),
('136652345678', 'Cabral, Arman Aquino', 'ABM 11-A', 20, 'caloocan city', 'cabral@gmail.com', '09123951753', '2022-12-06 01:33:09'),
('136656190043', 'Viray, John Edrich Cortes', 'STEM 12-A', 21, '#75 Dau Street,6thAvenue,Caloocan City\r\n', 'virayjohnedrich@gmail.com', '09760500860', '2022-12-03 03:20:29'),
('136678945677', 'Julia, Judell Sano', 'ABM 12-A', 21, 'caloocan city', 'julia@yahoo.com', '09451237895', '2022-12-06 01:56:30'),
('136688889677', 'Saturnino, Francis Bartolome', 'ICT 11-A', 20, 'caloocan city', 'francis@gmail.com', '09789632598', '2022-12-06 02:20:37'),
('136699912377', 'Pascual, Patricia Escota', 'ICT 11-A', 20, 'caloocan city', 'pascual@gmail.com', '09963685294', '2022-12-06 02:18:41'),
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
('2022-12-06 04:42:07', '123456789123', '123', '123', 0, '213', '123', ''),
('2022-12-06 01:23:58', '20200126-M', 'Arnel Jay Bajalan', 'HUMMS 11-b', 20, 'Caloocan City', 'arnel@yahoo.com', '2147483647'),
('2022-12-06 01:24:00', '20200226-M', 'Marc Isaac Ablay', 'STEM 11-B', 21, 'Caloocan City', 'marcisaacablay@gmail.com', '2147483647'),
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
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
