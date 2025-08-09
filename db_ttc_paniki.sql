-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2025 at 09:48 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ttc_paniki`
--

-- --------------------------------------------------------

--
-- Table structure for table `dcpdu_1`
--

CREATE TABLE `dcpdu_1` (
  `id` int NOT NULL,
  `noDCPDU` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `source` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `aV` float NOT NULL,
  `aA` float NOT NULL,
  `bV` float NOT NULL,
  `bA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dcpdu_1`
--

INSERT INTO `dcpdu_1` (`id`, `noDCPDU`, `source`, `aV`, `aA`, `bV`, `bA`) VALUES
(1, '2.3.1', 'Recti 9 & Recti 1', 54, 53, 54, 53),
(70, '2.3.1', 'Recti 9 & Recti 1', 54, 53, 54, 53),
(71, '2.3.1', 'Recti 9 & Recti 1', 53.5, 53, 53.4, 67.2),
(76, '2.3.1', 'Recti 9 & Recti 1', 53.5, 53, 53.4, 67.2),
(77, '2.3.1', 'Recti 9 & Recti 1', 53.5, 53.7, 53.4, 66.8),
(78, '2.3.1', 'Recti 9 & Recti 1', 53.5, 53.4, 53.4, 67.2),
(79, '2.3.1', 'Recti 9 & Recti 1', 53.5, 53.7, 53.4, 66.8),
(80, '2.3.1', 'Recti 9 & Recti 1', 53.5, 53.7, 53.4, 66.8),
(81, '2.3.1', 'Recti 9 & Recti 1', 53.4, 53.3, 53.4, 60.7);

-- --------------------------------------------------------

--
-- Table structure for table `dcpdu_2`
--

CREATE TABLE `dcpdu_2` (
  `id` int NOT NULL,
  `noDCPDU` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `source` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `aV` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `aA` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `bV` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `bA` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dcpdu_2`
--

INSERT INTO `dcpdu_2` (`id`, `noDCPDU`, `source`, `aV`, `aA`, `bV`, `bA`, `date`) VALUES
(1, '2.5.1', 'Recti 9 & Recti 11', '54', '53', '54', '53', ''),
(70, '2.5.1', 'Recti 9 & Recti 11', '54', '53', '54', '53', '2024-11-04 02:00:00'),
(71, '2.5.01', 'Recti 9 & Recti 11', '53.7', '80', '53.7', '179', '2024-11-04 08:00:00'),
(76, '2.5.01', 'Recti 9 & Recti 11', '53.7', '80', '53.7', '179', '2024-11-04 14:00:00'),
(77, '2.5.01', 'Recti 9 & Recti 11', '53.7', '81', '53.7', '180', '2024-11-04 20:00:00'),
(78, '2.5.01', 'Recti 9 & Recti 11', '53.7', '81', '53.8', '180', '2024-11-05 14:00:00'),
(79, '2.5.01', 'Recti 9 & Recti 11', '53.7', '81', '53.7', '180', '2024-11-05 20:00:00'),
(80, '2.5.01', 'Recti 9 & Recti 11', '53.7', '81', '53.7', '180', '2024-11-06 07:00:00'),
(81, '2.5.01', 'Recti 9 & Recti 11', '53.7', '79', '53.7', '180', '2024-11-06 14:00:00'),
(85, '2.5.01', 'Recti 9 & Recti 11', '53.7', '79', '53.7', '180', '2024-11-08 13:33:00'),
(89, '2.5.01', 'Recti 9 & Recti 11', '53.7', '79', '53.7', '180', '2024-11-15 11:26:00'),
(90, '2.5.01', 'Recti 9 & Recti 11', '53.7', '79', '53.7', '180', '2024-11-16 18:41:00'),
(93, '2.5.01', 'Recti 9 & Recti 11', '53.7', '79', '53.7', '180', '2024-12-10 13:34:00'),
(95, '2.5.01', 'Recti 9 & Recti 11', '53.7', '79', '53.7', '180', '2024-12-11 10:37:00'),
(97, '2.5.01', 'Recti 9 & Recti 11', '53.7', '79', '53.7', '180', '2024-12-11 13:44:00'),
(98, '2.5.01', 'Recti 9 & Recti 11', '53.7', '79', '53.7', '180', '2024-12-11 14:25:00'),
(99, '2.5.01', 'Recti 9 & Recti 11', '53.7', '79', '53.7', '180', '2024-12-11 15:08:00'),
(100, '2.5.01', 'Recti 9 & Recti 11', '53.7', '79', '53.7', '180', '2024-12-11 15:46:00'),
(101, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2024-12-28 08:09:00'),
(106, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2024-12-28 12:21:00'),
(107, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2024-12-28 19:55:00'),
(108, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2024-12-29 06:33:00'),
(109, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2024-12-29 12:02:00'),
(110, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2024-12-29 19:25:00'),
(112, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2024-12-30 06:24:00'),
(113, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2024-12-30 12:51:00'),
(114, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2024-12-30 18:46:00'),
(115, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2024-12-31 06:23:00'),
(118, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2024-12-31 14:49:00'),
(119, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2024-12-31 18:11:00'),
(121, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-01 06:37:00'),
(122, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-01 06:47:00'),
(123, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-01 18:24:00'),
(124, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-02 05:40:00'),
(125, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-02 12:34:00'),
(126, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-02 18:45:00'),
(127, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-03 05:39:00'),
(128, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-03 14:00:00'),
(129, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-03 18:58:00'),
(130, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-04 07:56:00'),
(131, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-04 02:00:00'),
(132, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-04 20:00:00'),
(133, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-05 06:27:00'),
(135, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-05 14:50:00'),
(136, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-05 20:53:00'),
(137, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-05 21:01:00'),
(138, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-06 07:11:00'),
(139, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-06 13:25:00'),
(140, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-06 19:28:00'),
(141, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-07 06:21:00'),
(142, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-07 14:00:00'),
(143, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-07 19:22:00'),
(144, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-08 08:24:00'),
(145, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-08 13:46:00'),
(146, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-08 19:39:00'),
(147, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-09 08:00:00'),
(148, '2.11', 'Recti 1.7 & Recti 1.3', '53.0', '305', '52.9', '313', '2025-01-09 13:23:00'),
(149, '2.11', 'Recti 1.7 & Recti 1.3', '53.0', '363', '52.9', '367', '2025-01-09 19:56:00'),
(150, '2.11', 'Recti 1.7 & Recti 1.3', '53.0', '363', '52.9', '367', '2025-01-10 06:50:00'),
(151, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-10 13:38:00'),
(152, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-10 19:59:00'),
(153, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-11 06:31:00'),
(154, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-11 14:05:00'),
(155, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-11 19:27:00'),
(156, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-12 07:38:00'),
(157, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-12 02:00:00'),
(158, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-12 20:28:00'),
(160, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-13 08:31:00'),
(161, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-13 13:50:00'),
(163, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-13 20:29:00'),
(164, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-14 06:54:00'),
(165, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-14 13:52:00'),
(166, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-14 19:18:00'),
(167, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-15 06:45:00'),
(168, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-15 02:00:00'),
(169, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-15 20:29:00'),
(170, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-16 07:15:00'),
(171, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-16 13:56:00'),
(172, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-16 20:18:00'),
(173, '2.11', 'Recti 1.7 & Recti 1.3', '53.2', '0', '53.4', '0', '2025-01-17 07:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `dcpdu_3`
--

CREATE TABLE `dcpdu_3` (
  `id` int NOT NULL,
  `noDCPDU` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `source` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `aV` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `aA` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `bV` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `bA` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dcpdu_3`
--

INSERT INTO `dcpdu_3` (`id`, `noDCPDU`, `source`, `aV`, `aA`, `bV`, `bA`, `date`) VALUES
(1, '2.5.2', 'Recti 10 & Recti 12', '54', '53', '54', '53', ''),
(70, '2.5.2', 'Recti 10 & Recti 12', '54', '53', '54', '53', '2024-11-04 02:00:00'),
(71, '2.5.02', 'Recti 10 & Recti 12', '53.7', '125.8', '53.6', '106.3', '2024-11-04 08:00:00'),
(76, '2.5.02', 'Recti 10 & Recti 12', '53.7', '125.8', '53.6', '106.3', '2024-11-04 14:00:00'),
(77, '2.5.02', 'Recti 10 & Recti 12', '53.7', '130.7', '53.6', '107.6', '2024-11-04 20:00:00'),
(78, '2.5.02', 'Recti 10 & Recti 12', '53.7', '131', '53.6', '107.1', '2024-11-05 14:00:00'),
(79, '2.5.02', 'Recti 10 & Recti 12', '53.7', '130.7', '53.6', '107.6', '2024-11-05 20:00:00'),
(80, '2.5.02', 'Recti 10 & Recti 12', '53.7', '130.7', '53.6', '107.6', '2024-11-06 07:00:00'),
(81, '2.5.02', 'Recti 10 & Recti 12', '53.7', '130.6', '53.6', '106.4', '2024-11-06 14:00:00'),
(85, '2.5.02', 'Recti 10 & Recti 12', '53.7', '130.6', '53.6', '106.4', '2024-11-08 13:33:00'),
(89, '2.5.02', 'Recti 10 & Recti 12', '53.7', '130.6', '53.6', '106.4', '2024-11-15 11:26:00'),
(90, '2.5.02', 'Recti 10 & Recti 12', '53.7', '130.6', '53.6', '106.4', '2024-11-16 18:41:00'),
(93, '2.5.02', 'Recti 10 & Recti 12', '53.7', '130.6', '53.6', '106.4', '2024-12-10 13:34:00'),
(95, '2.5.02', 'Recti 10 & Recti 12', '53.7', '130.6', '53.6', '106.4', '2024-12-11 10:37:00'),
(97, '2.5.02', 'Recti 10 & Recti 12', '53.7', '130.6', '53.6', '106.4', '2024-12-11 13:44:00'),
(98, '2.5.02', 'Recti 10 & Recti 12', '53.7', '130.6', '53.6', '106.4', '2024-12-11 14:25:00'),
(99, '2.5.02', 'Recti 10 & Recti 12', '53.7', '130.6', '53.6', '106.4', '2024-12-11 15:08:00'),
(100, '2.5.02', 'Recti 10 & Recti 12', '53.7', '130.6', '53.6', '106.4', '2024-12-11 15:46:00'),
(101, '2.5.3', 'Recti 1 & Recti 2', '54.4', '331.4', '53.2', '349.5', '2024-12-28 08:09:00'),
(106, '2.5.3', 'Recti 1 & Recti 2', '53.2', '309', '53.4', '308', '2024-12-28 12:21:00'),
(107, '2.5.3', 'Recti 1 & Recti 2', '53.2', '309', '53.4', '308', '2024-12-28 19:55:00'),
(108, '2.5.3', 'Recti 1 & Recti 2', '53.2', '309', '53.4', '308', '2024-12-29 06:33:00'),
(109, '2.5.3', 'Recti 1 & Recti 2', '53.0', '307', '53.9', '308', '2024-12-29 12:02:00'),
(110, '2.5.3', 'Recti 1 & Recti 2', '53.0', '311', '53.9', '308', '2024-12-29 19:25:00'),
(112, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '53.9', '305', '2024-12-30 06:24:00'),
(113, '2.5.3', 'Recti 1 & Recti 2', '53.0', '309', '53.9', '308', '2024-12-30 12:51:00'),
(114, '2.5.3', 'Recti 1 & Recti 2', '53.0', '309', '53.9', '308', '2024-12-30 18:46:00'),
(115, '2.5.3', 'Recti 1 & Recti 2', '53.0', '307', '52.9', '308', '2024-12-31 06:23:00'),
(118, '2.5.3', 'Recti 1 & Recti 2', '53.0', '307', '52.9', '308', '2024-12-31 14:49:00'),
(119, '2.5.3', 'Recti 1 & Recti 2', '53.0', '309', '52.9', '305', '2024-12-31 18:11:00'),
(121, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '305', '2025-01-01 06:37:00'),
(122, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '305', '2025-01-01 06:47:00'),
(123, '2.5.3', 'Recti 1 & Recti 2', '53.0', '309', '52.9', '308', '2025-01-01 18:24:00'),
(124, '2.5.3', 'Recti 1 & Recti 2', '53.0', '303', '52.9', '305', '2025-01-02 05:40:00'),
(125, '2.5.3', 'Recti 1 & Recti 2', '53.0', '309', '52.9', '308', '2025-01-02 12:34:00'),
(126, '2.5.3', 'Recti 1 & Recti 2', '53.0', '309', '52.9', '308', '2025-01-02 18:45:00'),
(127, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '305', '2025-01-03 05:39:00'),
(128, '2.5.3', 'Recti 1 & Recti 2', '53.0', '309', '52.9', '308', '2025-01-03 14:00:00'),
(129, '2.5.3', 'Recti 1 & Recti 2', '53.0', '307', '52.9', '308', '2025-01-03 18:58:00'),
(130, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '305', '2025-01-04 07:56:00'),
(131, '2.5.3', 'Recti 1 & Recti 2', '53.0', '309', '52.9', '308', '2025-01-04 02:00:00'),
(132, '2.5.3', 'Recti 1 & Recti 2', '53.0', '309', '52.9', '308', '2025-01-04 20:00:00'),
(133, '2.5.3', 'Recti 1 & Recti 2', '53.0', '301', '52.9', '305', '2025-01-05 06:27:00'),
(135, '2.5.3', 'Recti 1 & Recti 2', '53.0', '529', '52.9', '313', '2025-01-05 14:50:00'),
(136, '2.5.3', 'Recti 1 & Recti 2', '53.0', '529', '52.9', '313', '2025-01-05 20:53:00'),
(137, '2.5.3', 'Recti 1 & Recti 2', '53.0', '529', '52.9', '313', '2025-01-05 21:01:00'),
(138, '2.5.3', 'Recti 1 & Recti 2', '53.0', '299', '52.9', '310', '2025-01-06 07:11:00'),
(139, '2.5.3', 'Recti 1 & Recti 2', '53.0', '303', '52.9', '310', '2025-01-06 13:25:00'),
(140, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '313', '2025-01-06 19:28:00'),
(141, '2.5.3', 'Recti 1 & Recti 2', '53.0', '299', '52.9', '310', '2025-01-07 06:21:00'),
(142, '2.5.3', 'Recti 1 & Recti 2', '53.0', '303', '52.9', '310', '2025-01-07 14:00:00'),
(143, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '313', '2025-01-07 19:22:00'),
(144, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '310', '2025-01-08 08:24:00'),
(145, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '313', '2025-01-08 13:46:00'),
(146, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '313', '2025-01-08 19:39:00'),
(147, '2.5.3', 'Recti 1 & Recti 2', '53.0', '301', '52.9', '310', '2025-01-09 08:00:00'),
(148, '2.5.3', 'Recti 1 & Recti 2', '53.0', '301', '52.4', '310', '2025-01-09 13:23:00'),
(149, '2.5.3', 'Recti 1 & Recti 2', '53.0', '307', '52.4', '313', '2025-01-09 19:56:00'),
(150, '2.5.3', 'Recti 1 & Recti 2', '53.0', '301', '52.4', '310', '2025-01-10 06:50:00'),
(151, '2.5.3', 'Recti 1 & Recti 2', '53.0', '303', '52.9', '310', '2025-01-10 13:38:00'),
(152, '2.5.3', 'Recti 1 & Recti 2', '53.0', '307', '52.9', '313', '2025-01-10 19:59:00'),
(153, '2.5.3', 'Recti 1 & Recti 2', '53.0', '299', '52.9', '310', '2025-01-11 06:31:00'),
(154, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '313', '2025-01-11 14:05:00'),
(155, '2.5.3', 'Recti 1 & Recti 2', '53.0', '307', '52.9', '313', '2025-01-11 19:27:00'),
(156, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '305', '2025-01-12 07:38:00'),
(157, '2.5.3', 'Recti 1 & Recti 2', '53.0', '303', '52.9', '310', '2025-01-12 02:00:00'),
(158, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '313', '2025-01-12 20:28:00'),
(160, '2.5.3', 'Recti 1 & Recti 2', '53.0', '303', '52.9', '310', '2025-01-13 08:31:00'),
(161, '2.5.3', 'Recti 1 & Recti 2', '53.0', '303', '52.9', '313', '2025-01-13 13:50:00'),
(163, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '313', '2025-01-13 20:29:00'),
(164, '2.5.3', 'Recti 1 & Recti 2', '53.0', '301', '52.9', '310', '2025-01-14 06:54:00'),
(165, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '313', '2025-01-14 13:52:00'),
(166, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '313', '2025-01-14 19:18:00'),
(167, '2.5.3', 'Recti 1 & Recti 2', '53.0', '299', '52.9', '308', '2025-01-15 06:45:00'),
(168, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '313', '2025-01-15 02:00:00'),
(169, '2.5.3', 'Recti 1 & Recti 2', '53.0', '307', '52.9', '315', '2025-01-15 20:29:00'),
(170, '2.5.3', 'Recti 1 & Recti 2', '53.0', '303', '52.9', '313', '2025-01-16 07:15:00'),
(171, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '313', '2025-01-16 13:56:00'),
(172, '2.5.3', 'Recti 1 & Recti 2', '53.0', '305', '52.9', '313', '2025-01-16 20:18:00'),
(173, '2.5.3', 'Recti 1 & Recti 2', '53.0', '303', '52.9', '310', '2025-01-17 07:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `dcpdu_4`
--

CREATE TABLE `dcpdu_4` (
  `id` int NOT NULL,
  `noDCPDU` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `source` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `aV` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `aA` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `bV` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `bA` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dcpdu_4`
--

INSERT INTO `dcpdu_4` (`id`, `noDCPDU`, `source`, `aV`, `aA`, `bV`, `bA`, `date`) VALUES
(1, '2.5.3', 'Recti 12 & Recti 13', '54', '53', '54', '53', ''),
(70, '2.5.3', 'Recti 12 & Recti 13', '54', '53', '54', '53', '2024-11-04 02:00:00'),
(71, '2.5.3', 'Recti 12 & Recti 13', '53.9', '6', '53.9', '8', '2024-11-04 08:00:00'),
(76, '2.5.3', 'Recti 12 & Recti 13', '53.9', '6', '53.9', '8', '2024-11-04 14:00:00'),
(77, '2.5.3', 'Recti 12 & Recti 13', '53.9', '6', '53.9', '7', '2024-11-04 20:00:00'),
(78, '2.5.3', 'Recti 12 & Recti 13', '53.9', '5', '53.8', '8', '2024-11-05 14:00:00'),
(79, '2.5.3', 'Recti 12 & Recti 13', '53.9', '6', '53.9', '7', '2024-11-05 20:00:00'),
(80, '2.5.3', 'Recti 12 & Recti 13', '53.9', '6', '53.9', '7', '2024-11-06 07:00:00'),
(81, '2.5.3', 'Recti 12 & Recti 13', '53.9', '5', '53.9', '8', '2024-11-06 14:00:00'),
(85, '2.5.3', 'Recti 12 & Recti 13', '53.9', '5', '53.9', '8', '2024-11-08 13:33:00'),
(89, '2.5.3', 'Recti 12 & Recti 13', '53.9', '5', '53.9', '8', '2024-11-15 11:26:00'),
(90, '2.5.3', 'Recti 12 & Recti 13', '53.9', '5', '53.9', '8', '2024-11-16 18:41:00'),
(93, '2.5.3', 'Recti 12 & Recti 13', '53.9', '5', '53.9', '8', '2024-12-10 13:34:00'),
(95, '2.5.3', 'Recti 12 & Recti 13', '53.9', '5', '53.9', '8', '2024-12-11 10:37:00'),
(97, '2.5.3', 'Recti 12 & Recti 13', '53.9', '5', '53.9', '8', '2024-12-11 13:44:00'),
(98, '2.5.3', 'Recti 12 & Recti 13', '53.9', '5', '53.9', '8', '2024-12-11 14:25:00'),
(99, '2.5.3', 'Recti 12 & Recti 13', '53.9', '5', '53.9', '8', '2024-12-11 15:08:00'),
(100, '2.5.3', 'Recti 12 & Recti 13', '53.9', '5', '53.9', '8', '2024-12-11 15:46:00'),
(101, '2.5.2', 'Recti 3 & Recti 4', '53.6', '333.1', '53.7', '345.2', '2024-12-28 08:09:00'),
(106, '2.5.2', 'Recti 3 & Recti 4', '53.6', '376.8', '53.7', '373.6', '2024-12-28 12:21:00'),
(107, '2.5.2', 'Recti 3 & Recti 4', '53.6', '387.7', '53.7', '379.0', '2024-12-28 19:55:00'),
(108, '2.5.2', 'Recti 3 & Recti 4', '53.6', '387.7', '53.7', '379.0', '2024-12-29 06:33:00'),
(109, '2.5.2', 'Recti 3 & Recti 4', '53.6', '376.1', '53.7', '372.9', '2024-12-29 12:02:00'),
(110, '2.5.2', 'Recti 3 & Recti 4', '53.6', '377.4', '53.7', '374.8', '2024-12-29 19:25:00'),
(112, '2.5.2', 'Recti 3 & Recti 4', '53.6', '341.9', '53.7', '358.2', '2024-12-30 06:24:00'),
(113, '2.5.2', 'Recti 3 & Recti 4', '53.6', '377.7', '53.7', '371.4', '2024-12-30 12:51:00'),
(114, '2.5.2', 'Recti 3 & Recti 4', '53.6', '382.2', '53.7', '371.5', '2024-12-30 18:46:00'),
(115, '2.5.2', 'Recti 3 & Recti 4', '53.6', '387.0', '53.7', '353.2', '2024-12-31 06:23:00'),
(118, '2.5.2', 'Recti 3 & Recti 4', '53.6', '382.8', '53.7', '370.1', '2024-12-31 14:49:00'),
(119, '2.5.2', 'Recti 3 & Recti 4', '53.6', '393.8', '53.7', '374.6', '2024-12-31 18:11:00'),
(121, '2.5.2', 'Recti 3 & Recti 4', '53.6', '335.4', '53.7', '351.4', '2025-01-01 06:37:00'),
(122, '2.5.2', 'Recti 3 & Recti 4', '53.6', '335.4', '53.7', '351.4', '2025-01-01 06:47:00'),
(123, '2.5.2', 'Recti 3 & Recti 4', '53.6', '369.2', '53.7', '368.4', '2025-01-01 18:24:00'),
(124, '2.5.2', 'Recti 3 & Recti 4', '53.6', '339.5', '53.7', '350.5', '2025-01-02 05:40:00'),
(125, '2.5.2', 'Recti 3 & Recti 4', '53.6', '361.0', '53.7', '366.3', '2025-01-02 12:34:00'),
(126, '2.5.2', 'Recti 3 & Recti 4', '53.6', '363.4', '53.7', '369.0', '2025-01-02 18:45:00'),
(127, '2.5.2', 'Recti 3 & Recti 4', '53.6', '337.1', '53.7', '347.1', '2025-01-03 05:39:00'),
(128, '2.5.2', 'Recti 3 & Recti 4', '53.6', '357.6', '53.7', '369.9', '2025-01-03 14:00:00'),
(129, '2.5.2', 'Recti 3 & Recti 4', '53.6', '370.6', '53.7', '371.5', '2025-01-03 18:58:00'),
(130, '2.5.2', 'Recti 3 & Recti 4', '53.6', '341.3', '53.7', '359.8', '2025-01-04 07:56:00'),
(131, '2.5.2', 'Recti 3 & Recti 4', '53.9', '330.1', '55.7', '374.4', '2025-01-04 02:00:00'),
(132, '2.5.2', 'Recti 3 & Recti 4', '53.6', '392.5', '55.7', '377.1', '2025-01-04 20:00:00'),
(133, '2.5.2', 'Recti 3 & Recti 4', '53.6', '370.2', '55.7', '354.4', '2025-01-05 06:27:00'),
(135, '2.5.2', 'Recti 3 & Recti 4', '53.7', '362.9', '55.7', '369.1', '2025-01-05 14:50:00'),
(136, '2.5.2', 'Recti 3 & Recti 4', '53.7', '362.9', '55.7', '369.1', '2025-01-05 20:53:00'),
(137, '2.5.2', 'Recti 3 & Recti 4', '53.7', '362.9', '55.7', '369.1', '2025-01-05 21:01:00'),
(138, '2.5.2', 'Recti 3 & Recti 4', '53.6', '347.1', '53.7', '354.9', '2025-01-06 07:11:00'),
(139, '2.5.2', 'Recti 3 & Recti 4', '53.7', '359.1', '53.7', '367.7', '2025-01-06 13:25:00'),
(140, '2.5.2', 'Recti 3 & Recti 4', '53.7', '370.5', '53.7', '369.6', '2025-01-06 19:28:00'),
(141, '2.5.2', 'Recti 3 & Recti 4', '53.7', '329.8', '53.7', '351.3', '2025-01-07 06:21:00'),
(142, '2.5.2', 'Recti 3 & Recti 4', '53.7', '353.9', '53.7', '365.3', '2025-01-07 14:00:00'),
(143, '2.5.2', 'Recti 3 & Recti 4', '53.7', '375.4', '53.7', '378.9', '2025-01-07 19:22:00'),
(144, '2.5.2', 'Recti 3 & Recti 4', '53.7', '350.0', '53.7', '362.4', '2025-01-08 08:24:00'),
(145, '2.5.2', 'Recti 3 & Recti 4', '53.6', '388.6', '53.7', '374.6', '2025-01-08 13:46:00'),
(146, '2.5.2', 'Recti 3 & Recti 4', '53.6', '382.6', '53.7', '376.2', '2025-01-08 19:39:00'),
(147, '2.5.2', 'Recti 3 & Recti 4', '53.6', '338.1', '53.7', '358.8', '2025-01-09 08:00:00'),
(148, '2.5.2', 'Recti 3 & Recti 4', '53.6', '363.6', '53.7', '367.8', '2025-01-09 13:23:00'),
(149, '2.5.2', 'Recti 3 & Recti 4', '53.6', '363.6', '53.7', '367.8', '2025-01-09 19:56:00'),
(150, '2.5.2', 'Recti 3 & Recti 4', '53.6', '3318', '53.7', '348.7', '2025-01-10 06:50:00'),
(151, '2.5.2', 'Recti 3 & Recti 4', '53.7', '350.1', '53.7', '368.2', '2025-01-10 13:38:00'),
(152, '2.5.2', 'Recti 3 & Recti 4', '53.7', '375.8', '53.7', '375.1', '2025-01-10 19:59:00'),
(153, '2.5.2', 'Recti 3 & Recti 4', '53.7', '331.5', '53.7', '349.1', '2025-01-11 06:31:00'),
(154, '2.5.2', 'Recti 3 & Recti 4', '53.7', '359.5', '53.7', '370.1', '2025-01-11 14:05:00'),
(155, '2.5.2', 'Recti 3 & Recti 4', '53.7', '365.6', '53.7', '373.5', '2025-01-11 19:27:00'),
(156, '2.5.2', 'Recti 3 & Recti 4', '53.7', '332.8', '53.7', '356.5', '2025-01-12 07:38:00'),
(157, '2.5.2', 'Recti 3 & Recti 4', '53.7', '368.2', '53.7', '367.2', '2025-01-12 02:00:00'),
(158, '2.5.2', 'Recti 3 & Recti 4', '53.7', '365.7', '53.7', '372.2', '2025-01-12 20:28:00'),
(160, '2.5.2', 'Recti 3 & Recti 4', '53.7', '351.6', '53.7', '361.2', '2025-01-13 08:31:00'),
(161, '2.5.2', 'Recti 3 & Recti 4', '53.7', '357.1', '53.7', '367.1', '2025-01-13 13:50:00'),
(163, '2.5.2', 'Recti 3 & Recti 4', '53.7', '367.3', '53.7', '372.8', '2025-01-13 20:29:00'),
(164, '2.5.2', 'Recti 3 & Recti 4', '53.7', '341.2', '53.7', '354.3', '2025-01-14 06:54:00'),
(165, '2.5.2', 'Recti 3 & Recti 4', '53.7', '362.4', '53.7', '370.2', '2025-01-14 13:52:00'),
(166, '2.5.2', 'Recti 3 & Recti 4', '53.6', '388.0', '53.7', '377.6', '2025-01-14 19:18:00'),
(167, '2.5.2', 'Recti 3 & Recti 4', '53.6', '332.0', '53.7', '350.7', '2025-01-15 06:45:00'),
(168, '2.5.2', 'Recti 3 & Recti 4', '53.6', '336.2', '53.7', '364.5', '2025-01-15 02:00:00'),
(169, '2.5.2', 'Recti 3 & Recti 4', '53.6', '370.2', '53.7', '374.5', '2025-01-15 20:29:00'),
(170, '2.5.2', 'Recti 3 & Recti 4', '53.6', '328.4', '53.7', '358.3', '2025-01-16 07:15:00'),
(171, '2.5.2', 'Recti 3 & Recti 4', '53.6', '376.9', '53.7', '371.8', '2025-01-16 13:56:00'),
(172, '2.5.2', 'Recti 3 & Recti 4', '53.6', '356.1', '53.7', '371.4', '2025-01-16 20:18:00'),
(173, '2.5.2', 'Recti 3 & Recti 4', '53.6', '334.8', '53.7', '360.8', '2025-01-17 07:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `dp_ac`
--

CREATE TABLE `dp_ac` (
  `id` int NOT NULL,
  `area` varchar(8) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `floor` varchar(5) DEFAULT NULL,
  `room` varchar(9) DEFAULT NULL,
  `merk` varchar(11) DEFAULT NULL,
  `type` varchar(17) DEFAULT NULL,
  `kode_pac` varchar(99) DEFAULT NULL,
  `type_compressor` varchar(99) DEFAULT NULL,
  `flow_type` varchar(99) DEFAULT NULL,
  `cooling_capacity_kw` varchar(99) DEFAULT NULL,
  `rh` varchar(99) DEFAULT NULL,
  `status_pac` varchar(99) DEFAULT NULL,
  `date_edit` varchar(99) DEFAULT NULL,
  `user_edit` varchar(99) DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `dp_ac`
--

INSERT INTO `dp_ac` (`id`, `area`, `location`, `floor`, `room`, `merk`, `type`, `kode_pac`, `type_compressor`, `flow_type`, `cooling_capacity_kw`, `rh`, `status_pac`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'Sulawesi', 'TTC Paniki', ' 1', 'Battery', 'RCG', 'Presisi', 'MDO002/L01/RCG/030/001', 'Single Comressor', 'Up Flow', '30', '54.5', 'Standby', NULL, NULL, NULL),
(2, 'Sulawesi', 'TTC Paniki', '1', 'Battery', 'RCG', 'Presisi', 'MDO002/L01/RCG/030/002', 'Single Compressor', 'Up Flow', '30', '56.9', 'Active', NULL, NULL, NULL),
(3, 'Sulawesi', 'TTC Paniki', '1', 'Battery', 'SCHNEIDER', 'Presisi', 'MDO002/L01/SCH/023/001', 'Single Compressor', 'Up Flow', '23', '58.3', 'Active', NULL, NULL, NULL),
(4, 'Sulawesi', 'TTC Paniki', '1', 'Battery', 'RCG', 'Presisi', 'MDO002/L01/RCG/025/003', 'Single Compressor', 'Up Flow', '25', '56.2', 'Off', NULL, NULL, NULL),
(5, 'Sulawesi', 'TTC Paniki', '2', 'NFVI', 'RCI', 'In Row', 'MDO002/L01/RC1/035/008', 'Single Compressor', 'Front Flow', '35', '53.3', 'Active', NULL, NULL, NULL),
(6, 'Sulawesi', 'TTC Paniki', '2', 'NFVI', 'RCI', 'In Row', 'MDO002/L01/RC1/035/009', 'Single Compressor', 'Front FLow', '35', '54.1', 'Standby', NULL, NULL, NULL),
(7, 'Sulawesi', 'TTC Paniki', '2', 'NFVI', 'RCI', 'In Row', 'MDO002/L01/RCG/035/010', 'Single Compressor', 'Front Flow', '35', '53.5', 'Active', NULL, NULL, NULL),
(8, 'Sulawesi', 'TTC Paniki', '2', 'NFVI', 'RCI', 'In Row', 'MDO002/L01/RCG/035/011', 'Single Compressor', 'Front Flow', '35', '55.4', 'Active', NULL, NULL, NULL),
(9, 'Sulawesi', 'TTC Paniki', '2', 'NFVI', 'RCI', 'In Row', 'MDO002/L01/RCG/035/012', 'Single Compressor', 'Front Flow', '35', '56.8', 'Active', NULL, NULL, NULL),
(10, 'Sulawesi', 'TTC Paniki', '2', 'RAN', 'CLIMAVENETA', 'Presisi', 'MDO002/L01/RCG/030/001', 'Single Compressor', 'Up Flow', '35', '50.2', 'Active', NULL, NULL, NULL),
(11, 'Sulawesi', 'TTC Paniki', '2', 'RAN', 'RCG', 'Presisi', 'MDO002/L02/RCG/030/004', 'Single Compressor', 'Up Flow', '30', '55.7', 'Active', NULL, NULL, NULL),
(12, 'Sulawesi', 'TTC Paniki', '2', 'RAN', 'RCG', 'Presisi', 'MDO002/L02/RCG/030/003', 'Single Compressor', 'Up FLow', '30', '56.3', 'Standby', NULL, NULL, NULL),
(13, 'Sulawesi', 'TTC Paniki', '2', 'Core', 'RCG', 'Presisi', 'MDO002/L02/RCG/060/005', 'Dual Compressor', 'Down Flow', '60', '45.6', 'Active', NULL, NULL, NULL),
(14, 'Sulawesi', 'TTC Paniki', '2', 'Core', 'RCG', 'Presisi', 'MDO002/L02/RCG/060/006', 'Dual Compressor', 'Down Flow', '60', '40.1', 'Active', NULL, NULL, NULL),
(15, 'Sulawesi', 'TTC Paniki', '2', 'Core', 'RCG', 'Presisi', 'MDO002/L02/RCG/060/007', 'Dual Compressor', 'Down FLow', '60', '52.6', 'Active', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_acces_control`
--

CREATE TABLE `dp_acces_control` (
  `id` int NOT NULL,
  `area` varchar(99) DEFAULT NULL,
  `no` varchar(10) DEFAULT NULL,
  `location` varchar(99) DEFAULT NULL,
  `lantai` varchar(99) DEFAULT NULL,
  `room` varchar(99) DEFAULT NULL,
  `merk` varchar(99) DEFAULT NULL,
  `type` varchar(99) DEFAULT NULL,
  `mlock` varchar(99) DEFAULT NULL,
  `pushbutton` varchar(99) DEFAULT NULL,
  `buzzer` varchar(99) DEFAULT NULL,
  `reader` varchar(99) DEFAULT NULL,
  `fingerprint` varchar(99) DEFAULT NULL,
  `total` varchar(99) DEFAULT NULL,
  `mulai_beroperasi` varchar(99) DEFAULT NULL,
  `date_edit` varchar(99) DEFAULT NULL,
  `user_edit` varchar(99) DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `dp_acces_control`
--

INSERT INTO `dp_acces_control` (`id`, `area`, `no`, `location`, `lantai`, `room`, `merk`, `type`, `mlock`, `pushbutton`, `buzzer`, `reader`, `fingerprint`, `total`, `mulai_beroperasi`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'Sulawesi', '1', 'TTC Paniki', '1', 'Control Room', 'HID', 'Multicase SE', 'OK', 'OK', 'OK', 'OK', 'NOK', '1', '01-Sep-2019', NULL, NULL, NULL),
(2, 'Sulawesi', '2', 'TTC Paniki', '1', 'Ruang Battery RAN', 'HID', 'Multicase SE', 'OK', 'OK', 'OK', 'OK', 'NOK', '1', '01-Sep-2019', NULL, NULL, NULL),
(3, 'Sulawesi', '3', 'TTC Paniki', '1', 'Ruang Battery Core', 'HID', 'Multicase SE', 'OK', 'OK', 'OK', 'OK', 'NOK', '1', '01-Sep-2019', NULL, NULL, NULL),
(4, 'Sulawesi', '4', 'TTC Paniki', '1', 'Akses Lantai 1', 'HID', 'Multicase SE', 'OK', 'OK', 'OK', 'OK', 'NOK', '1', '01-Sep-2019', NULL, NULL, NULL),
(5, 'Sulawesi', '5', 'TTC Paniki', '1', 'Ruang Panel', 'HID', 'Multicase SE', 'OK', 'OK', 'OK', 'OK', 'NOK', '1', '01-Sep-2019', NULL, NULL, NULL),
(6, 'Sulawesi', '6', 'TTC Paniki', '2', 'Ruang Operator', 'HID', 'Multicase SE', 'OK', 'OK', 'OK', 'OK', 'NOK', '1', '01-Sep-2019', NULL, NULL, NULL),
(7, 'Sulawesi', '7', 'TTC Paniki', '2', 'Ruang Staging', 'HID', 'Multicase SE', 'OK', 'OK', 'OK', 'OK', 'NOK', '1', '01-Sep-2019', NULL, NULL, NULL),
(8, 'Sulawesi', '8', 'TTC Paniki', '2', 'Ruang Core', 'HID', 'Multicase SE', 'OK', 'OK', 'OK', 'OK', 'NOK', '1', '01-Sep-2019', NULL, NULL, NULL),
(9, 'Sulawesi', '9', 'TTC Paniki', '2', 'Ruang NFVI', 'HID', 'Multicase SE', 'OK', 'OK', 'OK', 'OK', 'NOK', '1', '01-Sep-2019', NULL, NULL, NULL),
(10, 'Sulawesi', '10', 'TTC Paniki', '2', 'Ruang RAN', 'HID', 'Multicase SE', 'OK', 'OK', 'OK', 'OK', 'NOK', '1', '01-Sep-2019', NULL, NULL, NULL),
(11, 'Sulawesi', '11', 'TTC Paniki', '2', 'Ruang Interkoneksi', 'HID', 'Multicase SE', 'OK', 'OK', 'OK', 'OK', 'NOK', '1', '01-Sep-2019', NULL, NULL, NULL),
(12, 'Sulawesi', '12', 'TTC Paniki', '3', 'Akses Rooftop', 'HID', 'Multicase SE', 'OK', 'OK', 'OK', 'OK', 'NOK', '1', '01-Sep-2019', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_alarm`
--

CREATE TABLE `dp_alarm` (
  `id` int NOT NULL,
  `perangkat` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dp_alarm`
--

INSERT INTO `dp_alarm` (`id`, `perangkat`, `status`, `date`) VALUES
(1, 'recti1', 'disconnected', '2025-07-22 07:24:14'),
(2, 'lvmdp2', 'disconnected', '2025-07-22 07:30:03'),
(3, 'lvmdp1', 'disconnected', '2025-07-22 07:30:40'),
(4, 'recti2', 'disconnected', '2025-07-22 07:31:54'),
(5, 'ups1', 'disconnected', '2025-07-22 07:32:06'),
(6, 'ups2', 'disconnected', '2025-07-22 07:32:11'),
(7, 'recti3', 'disconnected', '2025-07-22 07:32:16'),
(8, 'recti4', 'disconnected', '2025-07-22 07:32:21'),
(9, 'genset', 'on', '2025-07-22 07:32:25'),
(10, 'recti2', 'disconnected', '2025-07-22 15:28:44'),
(11, 'lvmdp1', 'disconnected', '2025-07-22 18:00:17'),
(12, 'lvmdp1', 'disconnected', '2025-07-23 06:49:29'),
(13, 'genset', 'on', '2025-07-23 07:39:01'),
(14, 'lvmdp1', 'disconnected', '2025-07-23 20:33:40'),
(15, 'genset', 'on', '2025-07-23 20:55:35'),
(16, 'lvmdp1', 'disconnected', '2025-07-24 15:11:04'),
(17, 'lvmdp2', 'disconnected', '2025-07-25 20:16:41'),
(18, 'ups2', 'disconnected', '2025-07-25 20:17:01'),
(19, 'recti4', 'disconnected', '2025-07-25 20:17:03'),
(20, 'lvmdp1', 'disconnected', '2025-07-25 20:17:01'),
(21, 'recti3', 'disconnected', '2025-07-25 20:17:01'),
(22, 'recti2', 'disconnected', '2025-07-25 20:17:03'),
(23, 'ups1', 'disconnected', '2025-07-25 20:17:03'),
(24, 'recti1', 'disconnected', '2025-07-25 20:17:03'),
(25, 'lvmdp1', 'disconnected', '2025-07-26 18:34:14'),
(26, 'ups2', 'disconnected', '2025-07-26 18:34:14'),
(27, 'recti1', 'disconnected', '2025-07-26 18:34:14'),
(28, 'recti2', 'disconnected', '2025-07-26 18:34:14'),
(29, 'recti3', 'disconnected', '2025-07-26 18:34:14'),
(30, 'lvmdp2', 'disconnected', '2025-07-26 18:34:14'),
(31, 'recti4', 'disconnected', '2025-07-26 18:34:14'),
(32, 'ups1', 'disconnected', '2025-07-26 18:34:14'),
(33, 'lvmdp2', 'disconnected', '2025-07-28 15:07:55'),
(34, 'lvmdp1', 'disconnected', '2025-07-28 15:08:04'),
(35, 'lvmdp1', 'disconnected', '2025-07-28 20:11:07'),
(36, 'lvmdp2', 'disconnected', '2025-07-28 21:50:20'),
(37, 'lvmdp1', 'disconnected', '2025-07-28 21:50:21'),
(38, 'recti4', 'disconnected', '2025-07-28 21:50:22'),
(39, 'recti1', 'disconnected', '2025-07-28 21:50:23'),
(40, 'recti2', 'disconnected', '2025-07-28 21:50:24'),
(41, 'ups1', 'disconnected', '2025-07-28 21:50:26'),
(42, 'ups2', 'disconnected', '2025-07-28 21:50:27'),
(43, 'recti3', 'disconnected', '2025-07-28 21:50:29'),
(44, 'lvmdp2', 'disconnected', '2025-07-28 21:58:41'),
(45, 'lvmdp2', 'disconnected', '2025-07-29 06:01:46'),
(46, 'lvmdp1', 'disconnected', '2025-07-29 08:19:45'),
(47, 'recti3', 'disconnected', '2025-07-30 04:58:47'),
(48, 'lvmdp1', 'disconnected', '2025-07-30 04:58:47'),
(49, 'recti4', 'disconnected', '2025-07-30 04:58:48'),
(50, 'recti1', 'disconnected', '2025-07-30 04:58:49'),
(51, 'recti2', 'disconnected', '2025-07-30 04:58:50'),
(52, 'ups1', 'disconnected', '2025-07-30 04:58:52'),
(53, 'ups2', 'disconnected', '2025-07-30 04:58:53'),
(54, 'lvmdp2', 'disconnected', '2025-07-30 04:58:54'),
(55, 'lvmdp1', 'disconnected', '2025-08-01 10:40:15'),
(56, 'recti2', 'disconnected', '2025-08-08 19:02:28'),
(57, 'lvmdp2', 'disconnected', '2025-08-09 02:19:48'),
(58, 'recti1', 'disconnected', '2025-08-09 02:19:48'),
(59, 'recti2', 'disconnected', '2025-08-09 02:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `dp_apar`
--

CREATE TABLE `dp_apar` (
  `id` int NOT NULL,
  `site_id` varchar(6) DEFAULT NULL,
  `site_name` varchar(10) DEFAULT NULL,
  `floor` varchar(99) DEFAULT NULL,
  `room` varchar(99) DEFAULT NULL,
  `brand` varchar(99) DEFAULT NULL,
  `type` varchar(99) DEFAULT NULL,
  `total` varchar(5) DEFAULT NULL,
  `capacity` varchar(8) DEFAULT NULL,
  `certified_no` varchar(11) DEFAULT NULL,
  `status` varchar(13) DEFAULT NULL,
  `mitra_maintenance` varchar(99) DEFAULT NULL,
  `date_edit` varchar(99) DEFAULT NULL,
  `user_edit` varchar(99) DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `dp_apar`
--

INSERT INTO `dp_apar` (`id`, `site_id`, `site_name`, `floor`, `room`, `brand`, `type`, `total`, `capacity`, `certified_no`, `status`, `mitra_maintenance`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'MDO002', 'TTC Paniki', '1', 'R. Grounding PUMP', 'VULCAN', 'F.E.VULCAN AF-11', '1', '2.5', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(2, 'MDO002', 'TTC Paniki', '1', 'Pos Satpam', 'CHUB', 'EHL 11', '1', '6', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(3, 'MDO002', 'TTC Paniki', '1', 'R. Lobby', 'Gunnebo', 'ABC-90', '1', '12', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(4, 'MDO002', 'TTC Paniki', '1', 'R. Operator', 'VULCAN', 'F.E.VULCAN AF-11', '1', '2.5', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(5, 'MDO002', 'TTC Paniki', '1', 'R. Pantry', 'SERVO', 'D 840 SV-36', '1', '6', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(6, 'MDO002', 'TTC Paniki', '1', 'Pintu Masuk R. Battrey & Recti', 'VULCAN', 'F.E.VULCAN AF-11', '1', '2.5', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(7, 'MDO002', 'TTC Paniki', '1', 'R. Battrey Recti Ran', 'VULCAN', 'F.E.VULCAN AF-11', '1', '3', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(8, 'MDO002', 'TTC Paniki', '1', 'R. Battrey Recti Core', 'VULCAN', 'F.E.VULCAN AF-11', '1', '2.5', '2011', 'Aktif', 'Damkar', '', NULL, NULL),
(9, 'MDO002', 'TTC Paniki', '1', 'Genset', 'VULCAN', 'F.E.VULCAN AF-11', '1', '2.5', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(10, 'MDO002', 'TTC Paniki', '1', 'R. Panel', 'VULCAN', 'F.E.VULCAN AF-11', '2', '2.5', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(11, 'MDO002', 'TTC Paniki', '2', 'R. Trafo', 'Gunnebo', 'ABC-90', '2', '12', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(12, 'MDO002', 'TTC Paniki', '2', 'R. Trafo', 'VULCAN', 'F.E.VULCAN AF-11', '1', '2.5', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(13, 'MDO002', 'TTC Paniki', '2', 'Operator', 'VULCAN', 'F.E.VULCAN AF-11', '1', '2.5', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(14, 'MDO002', 'TTC Paniki', '2', 'R. Loading', 'Gunnebo', 'ABC-90', '1', '12', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(15, 'MDO002', 'TTC Paniki', '2', 'R. Staging', 'VULCAN', 'F.E.VULCAN AF-11', '1', '2.5', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(16, 'MDO002', 'TTC Paniki', '2', 'R. Ran', 'VULCAN', 'F.E.VULCAN AF-11', '1', '2.5', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(17, 'MDO002', 'TTC Paniki', '2', 'R. Core', 'VULCAN', 'F.E.VULCAN AF-11', '1', '2.5', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(18, 'MDO002', 'TTC Paniki', '2', 'R. Interkoneksi', 'VULCAN', 'F.E.VULCAN AF-11', '1', '2.5', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(19, 'MDO002', 'TTC Paniki', '2', 'Selasar LT.2', 'VULCAN', 'F.E.VULCAN AF-11', '1', '2.5', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(20, 'MDO002', 'TTC Paniki', '1', 'Selasar LT.2', 'VULCAN', 'F.E.VULCAN AF-11', '1', '3', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(21, 'MDO002', 'TTC Paniki', '1', 'Selasar LT.2', 'VULCAN', 'F.E.VULCAN AF-11', '1', '3', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL),
(22, 'MDO002', 'TTC Paniki', '2', 'R. NVFi', 'VULCAN', 'F.E.VULCAN AF-11', '1', '2.5', '2011', 'Aktif', 'Damkar', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_cctv`
--

CREATE TABLE `dp_cctv` (
  `id` int NOT NULL,
  `area` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `site_id` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `site_name` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `floor` int NOT NULL,
  `room` text COLLATE utf8mb4_general_ci NOT NULL,
  `merk` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `serial_number` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tahun_install` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_perangkat` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keterangan` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mulai_operasi` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dp_cctv`
--

INSERT INTO `dp_cctv` (`id`, `area`, `site_id`, `site_name`, `floor`, `room`, `merk`, `type`, `serial_number`, `tahun_install`, `status_perangkat`, `keterangan`, `mulai_operasi`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'Halaman', 'GRUNDIG', 'TELE IP Camera', 'BAX3E00028K8', '2019', 'AKTIF', '', '', NULL, NULL, NULL),
(2, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'Halaman', 'GRUNDIG', 'TELE IP Camera', 'BAX3E00031K8', '2019', 'AKTIF', '', '', NULL, NULL, NULL),
(3, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'R. GENSET', 'GRUNDIG', 'DOME IP Camera', 'C1X1Y00035K8', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(4, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'KORIDOR', 'GRUNDIG', 'DOME IP Camera', 'B9X1Y00303K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(5, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'R, Control CCTV\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00106K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(6, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'R. Battery Dan Rectifier', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00174K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(7, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'R. Battery Dan Rectifier\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00158K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(8, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'Halaman\r\n', 'GRUNDIG', 'TELE IP Camera\r\n', 'BAX3E00017K8\r\n', '2019', 'NO AKTIF', NULL, NULL, NULL, NULL, NULL),
(9, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'R. Battery Dan Rectifier', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00189K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(10, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'R. Battery Dan Rectifier\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00138K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(11, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'Halaman', 'GRUNDIG', 'TELE IP Camera\r\n', 'BAX3E00004K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(12, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'Halaman\r\n', 'GRUNDIG', 'TELE IP Camera\r\n', 'BAX3E00044K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(13, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'R. Battery Dan Rectifier\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00045K8\r\n', '2019\r\n', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(14, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'Ruang Panel Lt 1\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00321K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(15, 'SULAWESI', 'MDO002', 'TTC Paniki', 1, 'Ruang Lobby\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00136K8\r\n', '2019\r\n', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(16, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'R. Tangga', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1XY000W7K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(17, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'R. Tangga\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'BAX3E00018K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(18, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Ruang Trafo\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'B9X1Y00277K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(19, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Ruang RAN\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00014K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(20, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Ruang RAN\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00153K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(21, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Rabat Tangga Trafo lt 2\r\n', 'GRUNDIG', 'TELE IP Camera\r\n', 'BAX3E00033K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(22, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Koridor L 2\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00013K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(23, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Koridor\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00184K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(24, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Ruang RAN\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00179K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(25, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Ruang RAN\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00043K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(26, 'SULAWSESI\r\n', 'MDO002', 'TTC Paniki', 2, 'R. Interkoneksi\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00167K8\r\n', '2019\r\n', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(27, 'SULAWSESI\r\n', 'MDO002', 'TTC Paniki', 2, 'Ruang  NFVi\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00190K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(28, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Ruang  NFVi\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00105K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(29, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Ruang  NFVi\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00154K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(30, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Koridor L 2\r\n', 'GRUNDIG', 'TELE IP Camera\r\n', 'BAX3E00036K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(31, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Koridor L 2\r\n', 'GRUNDIG', 'TELE IP Camera\r\n', 'BAX3E00025K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(32, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'R Core\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00119K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(33, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'R Core\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00052K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(34, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Ruang Core', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00134K8\r\n', '2019', NULL, 'AKTIF', NULL, NULL, NULL, NULL),
(35, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Ruang Core', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00148K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(36, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'Ruang Core', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00073K8\r\n', '2019\r\n', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(37, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'R Oprator\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00023K8\r\n', '2019\r\n', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(38, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'R. Tangga\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00299K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(39, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'R. Staging\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00164K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(40, 'SULAWESI', 'MDO002', 'TTC Paniki', 2, 'R. Loading\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'BAX3E00027K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(41, 'SULAWESI', 'MDO002', 'TTC Paniki', 3, 'Atap\r\n', 'GRUNDIG', 'TELE IP Camera\r\n', 'BAX3E00008K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(42, 'SULAWESI', 'MDO002', 'TTC Paniki', 3, 'Ruang Panel Lt 3\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'B9X1Y00283K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(43, 'SULAWESI', 'MDO002', 'TTC Paniki', 3, 'R tangga\r\n', 'GRUNDIG', 'DOME IP Camera\r\n', 'C1X1Y00135K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(44, 'SULAWESI', 'MDO002', 'TTC Paniki', 3, 'Atap\r\n', 'GRUNDIG', 'TELE IP Camera\r\n', 'BAX3E00034K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(45, 'SULAWESI', 'MDO002', 'TTC Paniki', 3, 'Atap\r\n', 'GRUNDIG', 'TELE IP Camera\r\n', 'BAX3E00016K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL),
(46, 'SULAWESI', 'MDO002', 'TTC Paniki', 3, 'Atap\r\n', 'GRUNDIG', 'TELE IP Camera\r\n', 'BAX3E00001K8\r\n', '2019', 'AKTIF', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_crane`
--

CREATE TABLE `dp_crane` (
  `id` int NOT NULL,
  `area` varchar(99) NOT NULL,
  `location` varchar(10) DEFAULT NULL,
  `merk` varchar(5) DEFAULT NULL,
  `max_capasittion` varchar(13) DEFAULT NULL,
  `mulai_beroperasi` varchar(15) DEFAULT NULL,
  `description` varchar(11) DEFAULT NULL,
  `date_edit` varchar(99) DEFAULT NULL,
  `user_edit` varchar(99) DEFAULT NULL,
  `deleted` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `dp_crane`
--

INSERT INTO `dp_crane` (`id`, `area`, `location`, `merk`, `max_capasittion`, `mulai_beroperasi`, `description`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'Sulawesi', 'TTC PANIKI', 'DEMAG', '2,5', '2022', '-', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dp_fss`
--

CREATE TABLE `dp_fss` (
  `id` int NOT NULL,
  `site_id` varchar(6) DEFAULT NULL,
  `ne_id` varchar(22) DEFAULT NULL,
  `site_name_original` varchar(16) DEFAULT NULL,
  `site_name_actual` varchar(14) DEFAULT NULL,
  `regional` varchar(8) DEFAULT NULL,
  `province` varchar(14) DEFAULT NULL,
  `address` varchar(66) DEFAULT NULL,
  `area` varchar(4) DEFAULT NULL,
  `installed` varchar(9) DEFAULT NULL,
  `total_floor` varchar(10) DEFAULT NULL,
  `floor` varchar(5) DEFAULT NULL,
  `ruang` varchar(12) DEFAULT NULL,
  `system_wiring` varchar(12) DEFAULT NULL,
  `brand` varchar(9) DEFAULT NULL,
  `type` varchar(7) DEFAULT NULL,
  `qty` varchar(3) DEFAULT NULL,
  `battery` varchar(9) DEFAULT NULL,
  `qty_battery` varchar(10) DEFAULT NULL,
  `media` varchar(5) DEFAULT NULL,
  `brand_tabung_fm200` varchar(16) DEFAULT NULL,
  `height_tabung_fm200` varchar(17) DEFAULT NULL,
  `serial_number_tabung_fm200` varchar(23) DEFAULT NULL,
  `qty_tabung_fm200` varchar(14) DEFAULT NULL,
  `brand_tabung_inergen` varchar(18) DEFAULT NULL,
  `heigh_tabung_inergen` varchar(18) DEFAULT NULL,
  `qty_tabung_inergen` varchar(16) DEFAULT NULL,
  `brand_dect_photo` varchar(14) DEFAULT NULL,
  `qty_dect_photo` varchar(12) DEFAULT NULL,
  `avb_dect_photo` varchar(12) DEFAULT NULL,
  `brand_dect_ion` varchar(12) DEFAULT NULL,
  `qty_dect_ion` varchar(10) DEFAULT NULL,
  `avb_dect_ion` varchar(10) DEFAULT NULL,
  `brand_manual_release` varchar(18) DEFAULT NULL,
  `qty_manual_release` varchar(16) DEFAULT NULL,
  `brand_abort` varchar(10) DEFAULT NULL,
  `qty_abort` varchar(8) DEFAULT NULL,
  `brand_horn` varchar(9) DEFAULT NULL,
  `qty_horn` varchar(7) DEFAULT NULL,
  `brand_alarm_bell` varchar(14) DEFAULT NULL,
  `qty_alarm_bell` varchar(13) DEFAULT NULL,
  `brand_evacuate_sign_lamp` varchar(21) DEFAULT NULL,
  `qty_evacuate_sign_lamp` varchar(19) DEFAULT NULL,
  `brand_gas_discharge_sign_lamp` varchar(25) DEFAULT NULL,
  `qty_gas_discharge_sign_lamp` varchar(23) DEFAULT NULL,
  `brand_pressure_switch` varchar(19) DEFAULT NULL,
  `qty_pressure_switch` varchar(17) DEFAULT NULL,
  `brand_electric_control_head` varchar(24) DEFAULT NULL,
  `qty_electric_control_head` varchar(22) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `date_edit` varchar(99) DEFAULT NULL,
  `user_edit` varchar(99) DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `dp_fss`
--

INSERT INTO `dp_fss` (`id`, `site_id`, `ne_id`, `site_name_original`, `site_name_actual`, `regional`, `province`, `address`, `area`, `installed`, `total_floor`, `floor`, `ruang`, `system_wiring`, `brand`, `type`, `qty`, `battery`, `qty_battery`, `media`, `brand_tabung_fm200`, `height_tabung_fm200`, `serial_number_tabung_fm200`, `qty_tabung_fm200`, `brand_tabung_inergen`, `heigh_tabung_inergen`, `qty_tabung_inergen`, `brand_dect_photo`, `qty_dect_photo`, `avb_dect_photo`, `brand_dect_ion`, `qty_dect_ion`, `avb_dect_ion`, `brand_manual_release`, `qty_manual_release`, `brand_abort`, `qty_abort`, `brand_horn`, `qty_horn`, `brand_alarm_bell`, `qty_alarm_bell`, `brand_evacuate_sign_lamp`, `qty_evacuate_sign_lamp`, `brand_gas_discharge_sign_lamp`, `qty_gas_discharge_sign_lamp`, `brand_pressure_switch`, `qty_pressure_switch`, `brand_electric_control_head`, `qty_electric_control_head`, `status`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'MDO002', 'MDO018/L01/HOC/ADD/001', 'TTC  Manado 2', 'TTC Paniki', 'Sulawesi', 'Sulawesi Utara', 'Jl. Wiratama Lingkungan VII, Kel. Paniki Bawah, Kec. Mapanget', '4', '2011', '2', '1', 'Battery', 'Addressable', 'Hochiki', 'Firenet', '1', 'Panasonic', '1', 'FM200', 'HyGood', '268', 'ATM447550', '1', 'NA', 'NA', 'NA', 'Hochiki', '2', '1', 'Hochiki', '2', 'NA', 'PyroGard', '1', 'PyroGard', '1', 'Potter', '1', 'Potter', '1', 'Samcom', '1', 'Samcom', '1', 'Barksdude', '1', 'Electric Actuator', '1', '-', NULL, NULL, NULL),
(2, 'MDO002', 'MDO018/L01/HOC/ADD/002', 'TTC  Manado 2', 'TTC Paniki', 'Sulawesi', 'Sulawesi Utara', 'Jl. Wiratama Lingkungan VII, Kel. Paniki Bawah, Kec. Mapanget', '4', '2011', '2', '1', 'Battery', 'Addressable', 'Hochiki', 'Firenet', '1', 'Panasonic', '1', 'FM200', 'HyGood', '268', 'ATM447568', '1', 'NA', 'NA', 'NA', 'Hochiki', '2', '1', 'Hochiki', '2', 'NA', 'PyroGard', '1', 'PyroGard', '1', 'Potter', '1', 'Potter', '1', 'Samcom', '1', 'Samcom', '1', 'Barksdude', '1', 'Electric Actuator', '1', '-', NULL, NULL, NULL),
(3, 'MDO002', 'MDO018/L01/HOC/ADD/003', 'TTC  Manado 2', 'TTC Paniki', 'Sulawesi', 'Sulawesi Utara', 'Jl. Wiratama Lingkungan VII, Kel. Paniki Bawah, Kec. Mapanget', '4', '2011', '2', '1', 'Battery', 'Addressable', 'Hochiki', 'Firenet', '1', 'Panasonic', '1', 'FM200', 'HyGood', '268', 'ATM447497', '1', 'NA', 'NA', 'NA', 'Hochiki', '2', '1', 'Hochiki', '2', 'NA', 'PyroGard', '1', 'PyroGard', '1', 'Potter', '1', 'Potter', '1', 'Samcom', '1', 'Samcom', '1', 'Barksdude', '1', 'Electric Actuator', '1', '-', NULL, NULL, NULL),
(4, 'MDO002', 'MDO018/L02/HOC/ADD/001', 'TTC  Manado 2', 'TTC Paniki', 'Sulawesi', 'Sulawesi Utara', 'Jl. Wiratama Lingkungan VII, Kel. Paniki Bawah, Kec. Mapanget', '4', '2011', '2', '2', 'Transmisi', 'Addressable', 'Hochiki', 'Firenet', '1', 'Panasonic', '1', 'FM200', 'HyGood', '236', 'ATM447476', '1', 'NA', 'NA', 'NA', 'Hochiki', '1', '1', 'Hochiki', '1', 'NA', 'PyroGard', '1', 'PyroGard', '1', 'Potter', '1', 'Potter', '1', 'Samcom', '1', 'Samcom', '1', 'Barksdude', '1', 'Electric Actuator', '1', '-', NULL, NULL, NULL),
(5, 'MDO002', 'MDO018/L02/HOC/ADD/002', 'TTC  Manado 2', 'TTC Paniki', 'Sulawesi', 'Sulawesi Utara', 'Jl. Wiratama Lingkungan VII, Kel. Paniki Bawah, Kec. Mapanget', '4', '2011', '2', '2', 'Interkoneksi', 'Addressable', 'Hochiki', 'Firenet', '1', 'Panasonic', '1', 'FM200', 'HyGood', '168', 'ATM427391', '1', 'NA', 'NA', 'NA', 'Hochiki', '2', '1', 'Hochiki', '2', 'NA', 'PyroGard', '1', 'PyroGard', '1', 'Potter', '1', 'Potter', '1', 'Samcom', '1', 'Samcom', '1', 'Barksdude', '1', 'Electric Actuator', '1', '-', NULL, NULL, NULL),
(6, 'MDO002', 'MDO018/L02/HOC/ADD/003', 'TTC  Manado 2', 'TTC Paniki', 'Sulawesi', 'Sulawesi Utara', 'Jl. Wiratama Lingkungan VII, Kel. Paniki Bawah, Kec. Mapanget', '4', '2011', '2', '2', 'Switching', 'Addressable', 'Hochiki', 'Firenet', '1', 'Panasonic', '1', 'FM200', 'HyGood', '337', 'ATM447506', '1', 'NA', 'NA', 'NA', 'Hochiki', '6', '1', 'Hochiki', '6', 'NA', 'PyroGard', '1', 'PyroGard', '1', 'Potter', '1', 'Potter', '1', 'Samcom', '1', 'Samcom', '1', 'Barksdude', '1', 'Electric Actuator', '1', '-', NULL, NULL, NULL),
(7, 'MDO002', 'MDO018/L02/AUT/ADD/001', 'TTC  Manado 2', 'TTC Paniki', 'Sulawesi', 'Sulawesi Utara', 'Jl. Wiratama Lingkungan VII, Kel. Paniki Bawah, Kec. Mapanget', '4', '2020', '2', '2', 'NFV', 'Addressable', 'Autopulse', 'Z-20', '1', 'Panasonic', '1', 'FM200', 'HyGood', '197', ' -', '1', 'NA', 'NA', 'NA', 'Autopulse', '4', '1', 'NA', 'NA', 'NA', 'Autopulse', '1', 'Autopulse', '1', 'Fire', '1', 'Autopulse', '1', 'Samcom', '1', 'Samcom', '1', 'NA', 'NA', 'Electric Actuator', '1', '-', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_genset`
--

CREATE TABLE `dp_genset` (
  `id` int NOT NULL,
  `site_id` varchar(7) DEFAULT NULL,
  `site_name_actual` varchar(14) DEFAULT NULL,
  `regional` varchar(8) DEFAULT NULL,
  `brand` varchar(7) DEFAULT NULL,
  `model` varchar(9) DEFAULT NULL,
  `serial_number` varchar(12) DEFAULT NULL,
  `part_number_type` varchar(14) DEFAULT NULL,
  `jumlah` varchar(6) DEFAULT NULL,
  `operation_date` varchar(11) DEFAULT NULL,
  `years_operation` varchar(14) DEFAULT NULL,
  `operation_aging` varchar(15) DEFAULT NULL,
  `capacity_kva` varchar(11) DEFAULT NULL,
  `operation_kva` varchar(14) DEFAULT NULL,
  `load_kva` varchar(7) DEFAULT NULL,
  `utilization_genset` varchar(17) DEFAULT NULL,
  `operation_status` varchar(15) DEFAULT NULL,
  `remarks` varchar(9) DEFAULT NULL,
  `indoor1` varchar(7) DEFAULT NULL,
  `indoor2` varchar(7) DEFAULT NULL,
  `indoor3` varchar(7) DEFAULT NULL,
  `outdoor_1liter` varchar(13) DEFAULT NULL,
  `outdoor_2liter` varchar(13) DEFAULT NULL,
  `outdoor3` varchar(8) DEFAULT NULL,
  `total` varchar(8) DEFAULT NULL,
  `ada` varchar(3) DEFAULT NULL,
  `tidak` varchar(5) DEFAULT NULL,
  `date_edit` varchar(99) DEFAULT NULL,
  `user_edit` varchar(99) DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `dp_genset`
--

INSERT INTO `dp_genset` (`id`, `site_id`, `site_name_actual`, `regional`, `brand`, `model`, `serial_number`, `part_number_type`, `jumlah`, `operation_date`, `years_operation`, `operation_aging`, `capacity_kva`, `operation_kva`, `load_kva`, `utilization_genset`, `operation_status`, `remarks`, `indoor1`, `indoor2`, `indoor3`, `outdoor_1liter`, `outdoor_2liter`, `outdoor3`, `total`, `ada`, `tidak`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'MDO002', 'TTC Paniki', 'Sulawesi', 'Volvo', 'TAD1641GE', '2016052166', '869252', '2', '2011', '13', 'Uppers 10 Years', '500', 'Under 1000 kVA', '189', '37.8%', 'Ready auto', 'Genset 1', '1.000', '1.000', ' N/A ', '10.000 ', 'N/A', 'N/A', '12.000', 'Ada', '-', NULL, NULL, NULL),
(2, 'MDO002', 'TTC Paniki', 'Sulawesi', 'Volvo', 'TAD1641GE', '2016045238', '869252', '2', '2011', '13', 'Uppers 10 Years', '500', 'Under 1000 kVA', '189', '37.8%', 'Ready auto', 'Genset 2', '1.000', '1.000', ' N/A ', '10.000', 'N/A', 'N/A', '12.000', 'Ada', '-', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_issue`
--

CREATE TABLE `dp_issue` (
  `id` int NOT NULL,
  `issue` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `needed` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_edit` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_edit` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dp_issue`
--

INSERT INTO `dp_issue` (`id`, `issue`, `needed`, `status`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'DINDING DALAM ADANYA RETAKAN\r\n', 'PERBAIKAN KERUSAKAN DINDING (PT.REKANUSA)', 'Belum', '', '', 0),
(2, 'BEBERAPA PERIZINAN K3 YANG SUDAH HABIS MASA BERLAKU\r\n', 'PERPANJANG PERIZINAN K3\r\n', 'Belum', '', '', 0),
(3, 'PERANGKAT DDF YANG SUDAH POWER OFF', 'DISMANTLE PERANGKAT DDF', 'Belum', '', '', 0),
(4, 'TIDAK ADA HYDRANT', 'PEMBANGUNAN HYDRANT ON PROGRESS', 'On Progress', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dp_pac`
--

CREATE TABLE `dp_pac` (
  `id` int NOT NULL,
  `ne_id` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `site_id` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `site_ttc_sto_bsc` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `site_name_actual` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `regional` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `area` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `brand` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `floor` int NOT NULL,
  `room` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `ac_type` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `serial_number_indoor` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `installed` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `warranty` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `actual_operation` int NOT NULL,
  `upper_under_year` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_pac` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `freon_type` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `type_compressor` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `flow_type` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `cooling_dua` float NOT NULL,
  `cooling` float NOT NULL,
  `btuh` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `pk` float NOT NULL,
  `status_pk` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `asset_status` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `vendor_project` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `vendor_maintenance` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `start_contract_po` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `end_contract_po` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `po_number` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `start_contract_mpa` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `end_contract_mpa` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contract_number_mpa` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `date_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dp_pac`
--

INSERT INTO `dp_pac` (`id`, `ne_id`, `site_id`, `site_ttc_sto_bsc`, `site_name_actual`, `regional`, `area`, `brand`, `floor`, `room`, `ac_type`, `serial_number_indoor`, `installed`, `warranty`, `actual_operation`, `upper_under_year`, `jenis_pac`, `freon_type`, `type_compressor`, `flow_type`, `cooling_dua`, `cooling`, `btuh`, `pk`, `status_pk`, `asset_status`, `vendor_project`, `vendor_maintenance`, `start_contract_po`, `end_contract_po`, `po_number`, `start_contract_mpa`, `end_contract_mpa`, `contract_number_mpa`, `address`, `status`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'MDO037/002/CLI/030/001\r\n', 'MDO002', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'CLIMAVENETA\r\n', 2, 'TRANSMISI\r\n', 'Cool Blade SAO 030\r\n', 'A181001552\r\n', '7-May-19\r\n', '6-May-20\r\n', 3, 'Under 10Years\r\n', 'Presisi\r\n', 'R410A\r\n', 'Single Compressor\r\n', 'Up Flow', 30, 30, '102,360\n', 11.37, 'Over 10 PK\r\n', 'Active\r\n', 'Tribangun\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200026948\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \n', '', NULL, NULL, NULL),
(2, 'MDO002/L02/RCG/025/001\r\n', 'MDO002', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'RCG\r\n', 1, 'BATTERY 1 (RAN)\r\n', 'NEXT DX O 035M\r\n', 'M-11-00264\r\n', '24-Dec-11\r\n', '23-Dec-12\r\n', 10, 'Upper 10Years\r\n', 'Presisi\r\n', 'R410A\r\n', 'Single compressor\r\n', 'Up Flow', 25, 25, '85,300\n', 9.48, 'Under 10 PK\r\n', 'Active\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200026948\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL),
(3, 'MDO002/L02/SCH/023/001\r\n', 'MDO002', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'SCH\r\n', 1, 'BATTERY 1 (RAN)\r\n', 'PGD1000FZ1\r\n', 'C00384143 Rev. 1. 023\r\n', '9-Dec-17\r\n', '9-Dec-18\r\n', 10, 'Upper 10Years\r\n', 'Presisi\r\n', 'R410A\r\n', 'Single compressor\r\n', 'Up Flow', 23, 23, '78,400\n', 8.71, 'Under 10 PK\r\n', 'Active\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200026948\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL),
(4, 'MDO002/L01/RCG/030/001\r\n', 'MDO002', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'RCG\r\n', 1, 'BATTERY 2 (CORE)\r\n', 'NEXT DX O 025.P1.H4\r\n', 'A210200235\r\n', '6-Oct-21\r\n', '6-Oct-22\r\n', 0, 'Under 10Years\r\n', 'Presisi\r\n', 'R410A\r\n', 'Single compressor\r\n', 'Up Flow', 30, 30, '102,360\n', 11.37, 'Over 10 PK\r\n', 'New Assets\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200013426\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL),
(5, 'MDO002/L01/RCG/030/002\r\n', 'MDO002', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'RCG\r\n', 1, 'BATTERY 2 (CORE)\r\n', 'NEXT DX O 035M\r\n', 'A210200236\r\n', '6-Oct-21\r\n', '6-Oct-22\r\n', 0, 'Under 10Years\r\n', 'Presisi\r\n', 'R410A\r\n', 'Single compressor\r\n', 'Up Flow', 30, 30, '102,360\r\n', 11.37, 'Over 10 PK\r\n', 'New Assets\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200013426\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL),
(6, 'MDO002/L02/RCG/030/003\r\n', 'MDO002', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'RCG\r\n', 2, 'TRANSMISI\r\n', 'NEXT DX O 035M\r\n', 'A210200238\r\n', '6-Oct-21\r\n', '6-Oct-22\r\n', 0, 'Under 10Years\r\n', 'Presisi\r\n', 'R410A\r\n', 'Single compressor\r\n', 'Up Flow', 30, 30, '102,360\r\n', 11.37, 'Over 10 PK\r\n', 'New Assets\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200013426\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL),
(7, 'MDO002/L02/RCG/030/004\r\n', 'MDO002\r\n', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'RCG\r\n', 2, 'TRANSMISI\r\n', 'NEXT DX O 035M\r\n', 'A210200237\r\n', '6-Oct-21\r\n', '6-Oct-22\r\n', 0, 'Under 10Years\r\n', 'Presisi\r\n', 'R410A\r\n', 'Single compressor\r\n', 'Up Flow', 30, 30, '102,360\r\n', 11.37, 'Over 10 PK\r\n', 'New Assets\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200013426\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL),
(8, 'MDO002/L02/RCG/060/005\r\n', 'MDO002', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'RCG\r\n', 2, 'CORE\r\n', 'NEXT DX U 070M DC\r\n', 'A210100102\r\n', '6-Oct-21\r\n', '6-Oct-22\r\n', 0, 'Under 10Years\r\n', 'Presisi\r\n', 'R410A\r\n', 'Dual Compressor\r\n', 'Down Flow', 60, 60, '204,720\r\n', 22.75, 'Over 10 PK\r\n', 'New Assets\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200013426\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL),
(9, 'MDO002/L02/RCG/060/006\r\n', 'MDO002', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'RCG\r\n', 2, 'CORE\r\n', 'NEXT DX U 070M DC\r\n', 'A210100104\r\n', '6-Oct-21\r\n', '6-Oct-22\r\n', 0, 'Under 10Years\r\n', 'Presisi\r\n', 'R410A\r\n', 'Dual Compressor\r\n', 'Down Flow', 60, 60, '204,720\r\n', 22.75, 'Over 10 PK\r\n', 'New Assets\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200013426\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL),
(10, 'MDO002/L02/RCG/060/007\r\n', 'MDO002', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'RCG\r\n', 2, 'CORE\r\n', 'NEXT DX U 070M DC\r\n', 'A210100103\r\n', '6-Oct-21\r\n', '6-Oct-22\r\n', 0, 'Under 10Years\r\n', 'Presisi\r\n', 'R410A\r\n', 'Dual Compressor\r\n', 'Down Flow', 60, 60, '204,720\r\n', 22.75, 'Over 10 PK\r\n', 'New Assets\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200013426\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL),
(11, 'MDO002/L02/RCI/035/008\r\n', 'MDO002\r\n', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'RCG\r\n', 2, 'DATA CENTER\r\n', 'COOLSIDE DX 0151 IN\r\n', 'A200901383\r\n', '1-Jul-21\r\n', '1-Jul-22\r\n', 1, 'Under 10Years\r\n', 'In Row\r\n', 'R410A\r\n', 'Single compressor\r\n', 'Front Flow', 35, 35, '119,420\r\n', 13.27, 'Over 10 PK\r\n', 'New Assets\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22', '31-Dec-22\r\n', '4200008211\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL),
(12, 'MDO002/L02/RCI/035/009\r\n', 'MDO002', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'RCG\r\n', 2, 'DATA CENTER\r\n', 'COOLSIDE DX 0151 IN\r\n', 'A200901384\r\n', '1-Jul-21\r\n', '1-Jul-22\r\n', 1, 'Under 10Years\r\n', 'In Row\r\n', 'R410A\r\n', 'Single compressor\r\n', 'Front Flow', 35, 35, '119,420\r\n', 13.27, 'Over 10 PK\r\n', 'New Assets\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200008211\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL),
(13, 'MDO002/L02/RCI/035/010\r\n', 'MDO002', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'RCG\r\n', 2, 'DATA CENTER\r\n', 'COOLSIDE DX 0151 IN\r\n', 'A200901385\r\n', '1-Jul-21\r\n', '1-Jul-22\r\n', 1, 'Under 10Years\r\n', 'In Row\r\n', 'R410A\r\n', 'Single compressor\r\n', 'Front Flow', 35, 35, '119,420\r\n', 13.27, 'Over 10 PK\r\n', 'New Assets\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200008211\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL),
(14, 'MDO002/L02/RCI/035/011\r\n', 'MDO002', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'RCG\r\n', 2, 'DATA CENTER\r\n', 'COOLSIDE DX 0151 IN\r\n', 'A200901386\r\n', '1-Jul-21\r\n', '1-Jul-22\r\n', 1, 'Under 10Years\r\n', 'In Row\r\n', 'R410A\r\n', 'Single compressor\r\n', 'Front Flow', 35, 35, '119,420\r\n', 13.27, 'Over 10 PK\r\n', 'New Assets\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200008211\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL),
(15, 'MDO002/L02/RCI/035/012\r\n', 'MDO002', 'TTC', 'TTC PANIKI', 'SULAWESI', 'EAST', 'RCG\r\n', 2, 'DATA CENTER\r\n', 'COOLSIDE DX 0151 IN\r\n', 'A210701423\r\n', '5-Apr-22\r\n', '5-Apr-23\r\n', 0, 'Under 10Years\r\n', 'In Row\r\n', 'R410A\r\n', 'Single compressor\r\n', 'Front Flow', 35, 35, '119,420\r\n', 13.27, 'Over 10 PK\r\n', 'New Assets\r\n', 'Westindo Esa Perkasa\r\n', 'Westindo Esa Perkasa\r\n', '1-Jan-22\r\n', '31-Dec-22\r\n', '4200026561\r\n', '19-Aug-20\r\n', '18-Jul-23\r\n', 'M100001967\r\n', ' Jalan Wiratama Lingk. 7 Kel. Paniki Bawah Kec. Mapanget, MANADO-95256 \r\n', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_panel`
--

CREATE TABLE `dp_panel` (
  `id` int NOT NULL,
  `type` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `ne_id` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `site_id` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `site_name` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `regional` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `floor` int NOT NULL,
  `room` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `name_panel` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `ac_dc` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `category_panel` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `r` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `s` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `t` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `m` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `function` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `actual_name` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `capacity` int NOT NULL,
  `date_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dp_panel`
--

INSERT INTO `dp_panel` (`id`, `type`, `ne_id`, `site_id`, `site_name`, `regional`, `floor`, `room`, `name_panel`, `ac_dc`, `category_panel`, `r`, `s`, `t`, `m`, `function`, `actual_name`, `capacity`, `date_edit`, `user_edit`, `deleted`) VALUES
(28, 'KSP', 'MDN470/L01/LVMDP/3200/001', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'RUANG GENSET', 'INCOMING LVMDP 2 RISER', 'AC', '', '108', '105', '103', '0', 'PANEL POWER VAC', 'Panel Incoming TTC Paniki', 4000, NULL, NULL, NULL),
(30, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'RUANG PANEL', 'DP-1', 'AC', '0', '54.8', '53.4', '53.7', '0', 'PANEL POWER AC DAN PENERANGAN ATAP', 'Panel DP 1', 250, NULL, NULL, NULL),
(31, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'RUANG PANEL', 'PP-VAC-1', 'AC', '0', '27.5', '25.1', '25.3', '0', 'PANEL POWER VAC', 'Panel PP-VAC-1', 100, NULL, NULL, NULL),
(32, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'RUANG BATTERY', 'PP-PU-AC-1.1 A', 'AC', '0', '18', '16.3', '19.1', '0', 'RECTIFIER 4', 'PP-PU-AC-1.1 A', 400, NULL, NULL, NULL),
(33, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'RUANG BATTERY', 'PP-PU-AC-1.2 A', 'AC', '0', '0', '0', '0', '0', 'SPARE', 'PP-PU-AC-1.2 A', 400, NULL, NULL, NULL),
(34, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'RUANG BATTERY', 'PP-PU-AC-1.1 B', 'AC', '0', '0', '0', '0', '0', 'SPARE', 'PP-PU-AC-1.1 B', 400, NULL, NULL, NULL),
(35, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'RUANG BATTERY', 'PP-PU-AC-1.2 B', 'AC', '0', '3,12', '2,86', '3,2', '0', 'SPARE', 'PP-PU-AC-1.2 B', 250, NULL, NULL, NULL),
(36, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'RUANG BATTERY', 'PP-PU-AC-1.3 A', 'AC', '0', '29,6', '29,4', '29,1', '0', 'RECTIFIER 1 DAN RECTIFIER 2 ', 'PP-PU-AC-1.3 A', 400, NULL, NULL, NULL),
(37, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'RUANG BATTERY', 'PP-PU-AC-1.3 B', 'AC', '0', '17,5', '17,6', '17,8', '0', 'RECTIFIER 3', 'PP-PU-AC-1.3 B', 400, NULL, NULL, NULL),
(38, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'RUANG BATTERY', 'PP-PU-AC-1.4 B', 'AC', '0', '43,2', '42,9', '43,6', '0', 'DISTRIBUSI IO PANEL ', 'PP-PU-AC-1.4 B', 400, NULL, NULL, NULL),
(39, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'RUANG BATTERY', 'ATS PAC SCHNEIDER', 'AC', '0', '1,7', '1,9', '1,4', '0', 'PAC SCHNEIDER', 'ATS PAC SCHNEIDER', 20, NULL, NULL, NULL),
(40, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'CONTROL ROOM', 'AC PDB', 'AC', '0', '0,6', '1,4', '1,1', '0', 'FM 200', 'AC PDB', 63, NULL, NULL, NULL),
(41, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 2, 'RUANG TRAFO', 'Incoming LVMDP 1', 'AC', '0', '175', '161', '164', '0', 'DP 1, DP2 DAN DP ATAP', 'Panel LVMDP', 1600, NULL, NULL, NULL),
(42, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 2, 'RUANG TRAFO', 'PKG', 'AC', '0', '149', '142', '140', '0', 'BACK UP DP 1, DP2 DAN DP ATAP1', 'Panel PKG A', 1600, NULL, NULL, NULL),
(43, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 2, 'CORIDOR LANTAI 2', 'DP-2', 'AC', '0', '143', '154', '140', '0', 'ATAP, CRANE, PP-VAC-2, MAIN LAMP, LAMP DAN STOPKONTAK LANTAI 2', 'Panel DP 2', 400, NULL, NULL, NULL),
(44, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 2, 'CORIDOR LANTAI 2', 'PP-CRANE', 'AC', '0', '2,1', '2,9', '2,6', '0', 'CRANE', 'PP-CRANE', 25, NULL, NULL, NULL),
(45, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 2, 'CORIDOR LANTAI 2', 'PP-VAC-2', 'AC', '0', '14,7', '13,9', '15,3', '0', 'RAK CCTV', 'PANEL PP-VAC-3', 250, NULL, NULL, NULL),
(46, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 2, 'RUANG CORE', 'PP-VAC- /SWITCHING', 'AC', '0', '45,8', '44,7', '48,9', '0', 'PAC 005, PAC 006, PAC 007 DAN PAC 012', 'PP-VAC- /SWITCHING', 400, NULL, NULL, NULL),
(47, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 2, 'RUANG CORE', 'DB PAC', 'AC', '0', '27,4', '28,9', '21,5', '0', 'PAC CORE ROOM', 'DB PAC', 250, NULL, NULL, NULL),
(48, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 2, 'RUANG CORE', 'I-PDU 1', 'AC', '0', '0,66', '0,56', '8,31', '0', 'Kominfo( Source 1), FNA 200 (Source 1), LBA', 'I-PDU 1', 200, NULL, NULL, NULL),
(49, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 2, 'RUANG RAN', 'I-PDU 2', 'AC', '0', '8,12', '2,71', '0,26', '0', 'FM 200 LANTAI 1 & 2, Kominfo (Source 2), FNA 200 (Source 2)', 'I-PDU 2', 200, NULL, NULL, NULL),
(50, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 2, 'RUANG RAN', 'I-PDU 2', 'AC', '0', '75,8', '62,9', '60,1', '0', 'PAC 003, PAC 004 PAC 013', 'PP-VAC-P/2 1 BSS/TRANSMISI', 250, NULL, NULL, NULL),
(51, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'Sulawesi', 2, 'RUANGF NFVI', 'I-PDU  CONTAIMENT (SOURCE 1)', 'AC', '0', '35,3', '37,7', '34,6', '0', 'RAK DI RUANG NFVI', 'I-PDU  CONTAIMENT', 250, NULL, NULL, NULL),
(52, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 2, 'RUANG NFVI', 'I-PDU  CONTAIMENT (SOURCE 2)', 'AC', '0', '38,6', '41,6', '37,2', '0', 'RAK DI RUANG NFVI', 'I-PDU  CONTAIMENT', 250, NULL, NULL, NULL),
(53, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 3, 'RUANG PANEL ATAP', 'DP-ATAP', 'AC', '0', '0,22', '0', '1,2', '0', 'PENERANGAN ATAP', 'PANEL DP-ATAP', 25, NULL, NULL, NULL),
(54, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'GROUND PUMP', 'PP-PUMP', 'AC', '0', '0', '0', '0', '0', 'PUMP ISAP DAN TRANSFER PUMP CONTROL', 'PP-PUMP', 63, NULL, NULL, NULL),
(55, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'Sulawesi', 3, 'RUANG PANEL ATAP', 'PP-VAC-VAR', 'AC', '0', '0,3', '0', '0', '0', 'PANEL PERANGKAT AC LT. 3', 'PP-VAC-VAR', 63, NULL, NULL, NULL),
(56, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'SULAWESI', 1, 'GROUND PUMP', 'TRANSFER PUMP CONTROL', 'AC', '0', '0', '0', '0', '0', 'PUMP', 'TRANSFER PUMP CONTROL', 25, NULL, NULL, NULL),
(57, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'Sulawesi', 1, 'LUAR GEDUNG', 'LP-OL', 'AC', '0', '3,1', '1,6', '1,3', '0', 'POWER LAMPU PENERANGAN TAMAN DAN JALAN', 'LP-OL', 40, NULL, NULL, NULL),
(58, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'Sulawesi', 1, 'LUAR GEDUNG', 'DP-PH', 'AC', '0', '1,24', '1,68', '0,3', '0', 'PENERANGAN, STOP KONTAK RUANG GENSET DAN PANEL LP-OL', 'DP-PH', 40, NULL, NULL, NULL),
(59, 'KSP', 'MDO002', 'MDO002', 'TTC 2 PANIKI', 'Sulawesi', 1, 'POS SECURITY', 'LP-PJ', 'AC', '0', '0,08', '0', '0', '0', 'POWER LAMPU, STOP KONTAK ', 'LP-PJ', 16, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_perijinan`
--

CREATE TABLE `dp_perijinan` (
  `id` int NOT NULL,
  `site_id` varchar(99) DEFAULT NULL,
  `site_name_actual` varchar(99) DEFAULT NULL,
  `site_id2` varchar(99) DEFAULT NULL,
  `site_name_original` varchar(99) DEFAULT NULL,
  `regional` varchar(99) DEFAULT NULL,
  `sertifikat_tanah_number` varchar(99) DEFAULT NULL,
  `sertifikat_tanah_date` varchar(99) DEFAULT NULL,
  `sertifikat_status_ada_na` varchar(99) DEFAULT NULL,
  `sertifikat_imb_number` varchar(99) DEFAULT NULL,
  `sertifikat_imb_date` varchar(99) DEFAULT NULL,
  `sertifikat_imb_duration` varchar(99) DEFAULT NULL,
  `imb_status_ada_na` varchar(99) DEFAULT NULL,
  `izin_gangguan_ho_number` varchar(99) DEFAULT NULL,
  `izin_gangguan_ho_date` varchar(99) DEFAULT NULL,
  `izin_gangguan_ho_duration` varchar(99) DEFAULT NULL,
  `izin_gangguan_ho_status_ada_na` varchar(99) DEFAULT NULL,
  `pajak_bumi_dan_bangunan_pbb_number` varchar(99) DEFAULT NULL,
  `pajak_bumi_bangunan_pbb_date` varchar(99) DEFAULT NULL,
  `pajak_bumi_bangunan_pbb_duration` varchar(99) DEFAULT NULL,
  `pajak_bumi_bangunan_pbb_status_ada_na` varchar(99) DEFAULT NULL,
  `sertifikat_laik_fungsi_slf_number` varchar(99) DEFAULT NULL,
  `sertifikat_laik_fungsi_slf_date` varchar(99) DEFAULT NULL,
  `sertifikat_laik_fungsi_slf_duration` varchar(99) DEFAULT NULL,
  `sertifikat_laik_fungsi_slf_status_ada_na` varchar(99) DEFAULT NULL,
  `izin_instalasi_listrik_number` varchar(99) DEFAULT NULL,
  `izin_instalasi_listrik_date` varchar(99) DEFAULT NULL,
  `izin_instalasi_listrik_duration` varchar(99) DEFAULT NULL,
  `izin_instalasi_listrik_ada_na` varchar(99) DEFAULT NULL,
  `Izin_penggunaan_genset_number` varchar(99) DEFAULT NULL,
  `izin_penggunaan_genset_date` varchar(99) DEFAULT NULL,
  `izin_penggunaan_genset_duration` varchar(99) DEFAULT NULL,
  `izin_penggunaan_genset_ada_na` varchar(99) DEFAULT NULL,
  `izin_pengambilan_air_tanah_sipa_number` varchar(99) DEFAULT NULL,
  `izin_pengambilan_air_tanah_sipa_date` varchar(99) DEFAULT NULL,
  `izin_pengambilan_air_tanah_sipa_duration` varchar(99) DEFAULT NULL,
  `izin_pengambilan_air_tanah_sipa_ada_na` varchar(99) DEFAULT NULL,
  `izin_penangkal_petir_number` varchar(99) DEFAULT NULL,
  `izin_penangkal_petir_date` varchar(99) DEFAULT NULL,
  `izin_penangkal_petir_duration` varchar(99) DEFAULT NULL,
  `izin_penangkal_petir_ada_na` varchar(99) DEFAULT NULL,
  `izin_operasional_proteksi_kebakaran_number` varchar(99) DEFAULT NULL,
  `izin_operasional_proteksi_kebakaran_date` varchar(99) DEFAULT NULL,
  `izin_operasional_proteksi_kebakaran_duration` varchar(99) DEFAULT NULL,
  `izin_operasional_proteksi_kebakaran_ada_na` varchar(99) DEFAULT NULL,
  `izin_operasi_gondola_number` varchar(99) DEFAULT NULL,
  `izin_operasi_gondola_date` varchar(99) DEFAULT NULL,
  `izin_operasi_gondola_duration` varchar(99) DEFAULT NULL,
  `izin_operasi_gondola_ada_na` varchar(99) DEFAULT NULL,
  `izin_operasi_hydrant_number` varchar(99) DEFAULT NULL,
  `izin_operasi_hydrant_date` varchar(99) DEFAULT NULL,
  `izin_operasi_hydrant_duration` varchar(99) DEFAULT NULL,
  `izin_operasi_hydrant_ada_na` varchar(99) DEFAULT NULL,
  `izin_bejana_tekan_number` varchar(99) DEFAULT NULL,
  `izin_bejana_tekan_date` varchar(99) DEFAULT NULL,
  `izin_bejana_tekan_duration` varchar(99) DEFAULT NULL,
  `izin_bejana_tekan_ada_na` varchar(99) DEFAULT NULL,
  `sertifikasi_limbah_cairI_ipal_number` varchar(99) DEFAULT NULL,
  `sertifikasi_limbah_cair_ipal_date` varchar(99) DEFAULT NULL,
  `sertifikasi_limbah_cair_ipal_duration` varchar(99) DEFAULT NULL,
  `sertifikasi_limbah_cair_ipal_ada_na` varchar(99) DEFAULT NULL,
  `sertifikasi_b3_number` varchar(99) DEFAULT NULL,
  `sertifikat_b3_date` varchar(99) DEFAULT NULL,
  `sertifikat_b3_duration` varchar(99) DEFAULT NULL,
  `sertifikat_b3_ada_na` varchar(99) DEFAULT NULL,
  `sertifikat_pemadam_kebakaran_simulasi_number` varchar(99) DEFAULT NULL,
  `sertifikat_pemadam_kebakaran_simulasi_date` varchar(99) DEFAULT NULL,
  `sertifikat_pemadam_kebakaran_simulasi_duration` varchar(99) DEFAULT NULL,
  `sertifikat_pemadam_kebakaran_simulasi_ada_na` varchar(99) DEFAULT NULL,
  `izin_tower_number` varchar(99) DEFAULT NULL,
  `perizinan_tower_date` varchar(99) DEFAULT NULL,
  `perizinan_tower_duration` varchar(99) DEFAULT NULL,
  `perizinan_tower_ada_na` varchar(99) DEFAULT NULL,
  `perizinan_ketinggian_menara_number` varchar(99) DEFAULT NULL,
  `perizinan_ketinggian_menara_date` varchar(99) DEFAULT NULL,
  `perizinan_ketinggian_menara_duration` varchar(99) DEFAULT NULL,
  `perizinan_ketinggian_menara_ada_na` varchar(99) DEFAULT NULL,
  `izin_domisili_number` varchar(99) DEFAULT NULL,
  `izin_domisili_date` varchar(99) DEFAULT NULL,
  `izin_domisili_duration` varchar(99) DEFAULT NULL,
  `izin_domisili_ada_na` varchar(99) DEFAULT NULL,
  `izin_pesawat_angkat_dan_angkut_hoist_crane_number` varchar(99) DEFAULT NULL,
  `izin_pesawat_angkat_dan_angkut_hoist_crane_date` varchar(99) DEFAULT NULL,
  `izin_pesawatangkat_dan_angkut_hoist_crane_duration` varchar(99) DEFAULT NULL,
  `izin_pesawat_angkat_dan_angkut_hoist_crane_ada_na` varchar(99) DEFAULT NULL,
  `izin_pesawat_lift_barang_number` varchar(99) DEFAULT NULL,
  `izin_pesawat_lift_barang_date` varchar(99) DEFAULT NULL,
  `izin_pesawat_lift_barang_duration` varchar(99) DEFAULT NULL,
  `izin_pesawat_lift_barang_ada_na` varchar(99) DEFAULT NULL,
  `izin_pesawat_lift_penumpang_number` varchar(99) DEFAULT NULL,
  `izin_pesawat_lift_penumpang_date` varchar(99) DEFAULT NULL,
  `izin_pesawat_lift_penumpang_duration` varchar(99) DEFAULT NULL,
  `izin_pesawat_lift_penumpang_ada_na` varchar(99) DEFAULT NULL,
  `date_edit` varchar(99) DEFAULT NULL,
  `user_edit` varchar(99) DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `dp_perijinan`
--

INSERT INTO `dp_perijinan` (`id`, `site_id`, `site_name_actual`, `site_id2`, `site_name_original`, `regional`, `sertifikat_tanah_number`, `sertifikat_tanah_date`, `sertifikat_status_ada_na`, `sertifikat_imb_number`, `sertifikat_imb_date`, `sertifikat_imb_duration`, `imb_status_ada_na`, `izin_gangguan_ho_number`, `izin_gangguan_ho_date`, `izin_gangguan_ho_duration`, `izin_gangguan_ho_status_ada_na`, `pajak_bumi_dan_bangunan_pbb_number`, `pajak_bumi_bangunan_pbb_date`, `pajak_bumi_bangunan_pbb_duration`, `pajak_bumi_bangunan_pbb_status_ada_na`, `sertifikat_laik_fungsi_slf_number`, `sertifikat_laik_fungsi_slf_date`, `sertifikat_laik_fungsi_slf_duration`, `sertifikat_laik_fungsi_slf_status_ada_na`, `izin_instalasi_listrik_number`, `izin_instalasi_listrik_date`, `izin_instalasi_listrik_duration`, `izin_instalasi_listrik_ada_na`, `Izin_penggunaan_genset_number`, `izin_penggunaan_genset_date`, `izin_penggunaan_genset_duration`, `izin_penggunaan_genset_ada_na`, `izin_pengambilan_air_tanah_sipa_number`, `izin_pengambilan_air_tanah_sipa_date`, `izin_pengambilan_air_tanah_sipa_duration`, `izin_pengambilan_air_tanah_sipa_ada_na`, `izin_penangkal_petir_number`, `izin_penangkal_petir_date`, `izin_penangkal_petir_duration`, `izin_penangkal_petir_ada_na`, `izin_operasional_proteksi_kebakaran_number`, `izin_operasional_proteksi_kebakaran_date`, `izin_operasional_proteksi_kebakaran_duration`, `izin_operasional_proteksi_kebakaran_ada_na`, `izin_operasi_gondola_number`, `izin_operasi_gondola_date`, `izin_operasi_gondola_duration`, `izin_operasi_gondola_ada_na`, `izin_operasi_hydrant_number`, `izin_operasi_hydrant_date`, `izin_operasi_hydrant_duration`, `izin_operasi_hydrant_ada_na`, `izin_bejana_tekan_number`, `izin_bejana_tekan_date`, `izin_bejana_tekan_duration`, `izin_bejana_tekan_ada_na`, `sertifikasi_limbah_cairI_ipal_number`, `sertifikasi_limbah_cair_ipal_date`, `sertifikasi_limbah_cair_ipal_duration`, `sertifikasi_limbah_cair_ipal_ada_na`, `sertifikasi_b3_number`, `sertifikat_b3_date`, `sertifikat_b3_duration`, `sertifikat_b3_ada_na`, `sertifikat_pemadam_kebakaran_simulasi_number`, `sertifikat_pemadam_kebakaran_simulasi_date`, `sertifikat_pemadam_kebakaran_simulasi_duration`, `sertifikat_pemadam_kebakaran_simulasi_ada_na`, `izin_tower_number`, `perizinan_tower_date`, `perizinan_tower_duration`, `perizinan_tower_ada_na`, `perizinan_ketinggian_menara_number`, `perizinan_ketinggian_menara_date`, `perizinan_ketinggian_menara_duration`, `perizinan_ketinggian_menara_ada_na`, `izin_domisili_number`, `izin_domisili_date`, `izin_domisili_duration`, `izin_domisili_ada_na`, `izin_pesawat_angkat_dan_angkut_hoist_crane_number`, `izin_pesawat_angkat_dan_angkut_hoist_crane_date`, `izin_pesawatangkat_dan_angkut_hoist_crane_duration`, `izin_pesawat_angkat_dan_angkut_hoist_crane_ada_na`, `izin_pesawat_lift_barang_number`, `izin_pesawat_lift_barang_date`, `izin_pesawat_lift_barang_duration`, `izin_pesawat_lift_barang_ada_na`, `izin_pesawat_lift_penumpang_number`, `izin_pesawat_lift_penumpang_date`, `izin_pesawat_lift_penumpang_duration`, `izin_pesawat_lift_penumpang_ada_na`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'MDO002', 'TTC Paniki', 'MDO002', 'TTC Paniki', 'SULAWESI', '18.01.04.07.3.00.757', '25-Apr-1996', 'Ada (lahan Milik Telkom)', '202/0242/0025/IMB/BP2T/I/2011', '20 Januari 2011', 'Selamanya', 'Ada', '102/6889/1116/HO/BP2T/IX/2011', '23-Sep-2016', '5 Tahun', 'Ada', '71.72.040.007.003-0141.0', '20-Feb-2023', '1 Tahun', 'Ada (Milik Telkom)', 'N/A', 'N/A', 'N/A', 'N/A', '560/DTKT.V/WAS/038/2022', '25/01/2023', '1 Tahun', 'Ada', 'IO : 503/DPMPTSPD/IO/267/X/2019', '10 Oktober 2024', '5 Tahun', 'Ada', 'N/A', 'N/A', 'N/A', 'N/A', '560/DTKT.V/WAS/037/2022', '25/01/2023', '1 Tahun', 'Ada', '560/DTKT.V/WAS/036/2022', '25/01/2023', '1 Tahun', 'Ada', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '41/BLH/PPL/II/2012', '22-Feb-2013', '1 Tahun', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '560/DTKT.V/WAS/033/2022', '25/01/2023', '1 Tahun', 'Ada', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_power`
--

CREATE TABLE `dp_power` (
  `id` int NOT NULL,
  `site_id` varchar(6) DEFAULT NULL,
  `site_name` varchar(10) DEFAULT NULL,
  `regional` varchar(8) DEFAULT NULL,
  `id_pelanggan` varchar(12) DEFAULT NULL,
  `capacity_kva` varchar(11) DEFAULT NULL,
  `operation_aging_kva_pln` varchar(20) DEFAULT NULL,
  `load_kva` varchar(7) DEFAULT NULL,
  `utilisation_pln` varchar(14) DEFAULT NULL,
  `brand_acb` varchar(9) DEFAULT NULL,
  `part_number_type` varchar(14) DEFAULT NULL,
  `sn` varchar(13) DEFAULT NULL,
  `capacity_a` varchar(9) DEFAULT NULL,
  `operation_date_pln` varchar(16) DEFAULT NULL,
  `operation_start_date_pln` varchar(21) DEFAULT NULL,
  `year_operation_pln` varchar(16) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `brand_ats` varchar(8) DEFAULT NULL,
  `sn2` varchar(13) DEFAULT NULL,
  `capacity_a2` varchar(10) DEFAULT NULL,
  `brand_cubicle` varchar(12) DEFAULT NULL,
  `part_number_type2` varchar(15) DEFAULT NULL,
  `serial_number` varchar(14) DEFAULT NULL,
  `serial_number_incoming` varchar(20) DEFAULT NULL,
  `serial_number_outgoing` varchar(21) DEFAULT NULL,
  `capacity_cubicle_kva` varchar(18) DEFAULT NULL,
  `current_load_kva2` varchar(15) DEFAULT NULL,
  `utilization_capacity_cubicle2` varchar(27) DEFAULT NULL,
  `operation_start_date_cubicle` varchar(25) DEFAULT NULL,
  `year_operation_cubicle` varchar(20) DEFAULT NULL,
  `operating_aging` varchar(15) DEFAULT NULL,
  `brand_trafo` varchar(10) DEFAULT NULL,
  `part_number` varchar(10) DEFAULT NULL,
  `serial_number2` varchar(13) DEFAULT NULL,
  `operation_start` varchar(14) DEFAULT NULL,
  `year_operation_trafo` varchar(18) DEFAULT NULL,
  `operating_aging_trafo_years` varchar(24) DEFAULT NULL,
  `total_unit` varchar(9) DEFAULT NULL,
  `cooling_type` varchar(11) DEFAULT NULL,
  `temperature` varchar(11) DEFAULT NULL,
  `service_status` varchar(13) DEFAULT NULL,
  `trafo_location` varchar(13) DEFAULT NULL,
  `capacity_trafo_kva` varchar(16) DEFAULT NULL,
  `operating_aging_trafo_kva` varchar(22) DEFAULT NULL,
  `load_kva3` varchar(8) DEFAULT NULL,
  `utilization_trafo` varchar(16) DEFAULT NULL,
  `keterangan` varchar(10) DEFAULT NULL,
  `date_edit` varchar(99) DEFAULT NULL,
  `user_edit` varchar(99) DEFAULT NULL,
  `deleted` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `dp_power`
--

INSERT INTO `dp_power` (`id`, `site_id`, `site_name`, `regional`, `id_pelanggan`, `capacity_kva`, `operation_aging_kva_pln`, `load_kva`, `utilisation_pln`, `brand_acb`, `part_number_type`, `sn`, `capacity_a`, `operation_date_pln`, `operation_start_date_pln`, `year_operation_pln`, `status`, `brand_ats`, `sn2`, `capacity_a2`, `brand_cubicle`, `part_number_type2`, `serial_number`, `serial_number_incoming`, `serial_number_outgoing`, `capacity_cubicle_kva`, `current_load_kva2`, `utilization_capacity_cubicle2`, `operation_start_date_cubicle`, `year_operation_cubicle`, `operating_aging`, `brand_trafo`, `part_number`, `serial_number2`, `operation_start`, `year_operation_trafo`, `operating_aging_trafo_years`, `total_unit`, `cooling_type`, `temperature`, `service_status`, `trafo_location`, `capacity_trafo_kva`, `operating_aging_trafo_kva`, `load_kva3`, `utilization_trafo`, `keterangan`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'MDO002', 'TTC Paniki', 'Sulawesi', '311900025636', '865', 'Under 1000 kVA', '196', '22.66%', 'ABB', 'BB63000773', '110053', '1600', '2011', '9', 'Under 10 Years', 'Auto', 'ABB', 'BB63000551', '1,600', 'ABB', 'IEC60298', '1VC1DB00016612', '110053', '110054', '1.000', '196', '20%', '2011', '9', 'Under 10 Years', 'Trafindo', 'IEC60076', '11331205', '2011', '9', 'Under 10 Years', '1', 'ONAN', '30/35 ⁰C', 'Tahunan', 'Indoor', '865', 'Under 1000 kVA', '195', '23%', 'Terpasang', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dp_rectifier`
--

CREATE TABLE `dp_rectifier` (
  `id` int NOT NULL,
  `ne_id` text COLLATE utf8mb4_general_ci NOT NULL,
  `check_double` int NOT NULL,
  `site_id` text COLLATE utf8mb4_general_ci NOT NULL,
  `site_name` text COLLATE utf8mb4_general_ci NOT NULL,
  `regional` text COLLATE utf8mb4_general_ci NOT NULL,
  `lantai` int NOT NULL,
  `room` text COLLATE utf8mb4_general_ci NOT NULL,
  `vendor` text COLLATE utf8mb4_general_ci NOT NULL,
  `rectifier_name` text COLLATE utf8mb4_general_ci NOT NULL,
  `master_slave` int NOT NULL,
  `panel_dcpdu` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `rectifier_brand` text COLLATE utf8mb4_general_ci NOT NULL,
  `serial_number` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rectifier_series` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rectifier_type` text COLLATE utf8mb4_general_ci NOT NULL,
  `modul_rectifier` int NOT NULL,
  `rec_capacity` float NOT NULL,
  `rect_cap` float NOT NULL,
  `battery_capacity_perbank` text COLLATE utf8mb4_general_ci NOT NULL,
  `battery_ah` int NOT NULL,
  `battery_brand` text COLLATE utf8mb4_general_ci NOT NULL,
  `remark` text COLLATE utf8mb4_general_ci NOT NULL,
  `remark_aging` text COLLATE utf8mb4_general_ci NOT NULL,
  `battery_type` text COLLATE utf8mb4_general_ci NOT NULL,
  `jumlah_blok` int NOT NULL,
  `battery_capacity_ah` int NOT NULL,
  `carging_batere` int NOT NULL,
  `load_curent` int NOT NULL,
  `total_load` int NOT NULL,
  `total_load_real` int NOT NULL,
  `backup_time` float NOT NULL,
  `occupancy_rec` float NOT NULL,
  `prosentage_load_rec_carge_per` float NOT NULL,
  `status_rec` text COLLATE utf8mb4_general_ci NOT NULL,
  `status_rec2` text COLLATE utf8mb4_general_ci NOT NULL,
  `status_rec3` text COLLATE utf8mb4_general_ci NOT NULL,
  `small_lerge_sys` text COLLATE utf8mb4_general_ci NOT NULL,
  `date_install_rec` date NOT NULL,
  `date_install_batt` date NOT NULL,
  `area_west_east` text COLLATE utf8mb4_general_ci NOT NULL,
  `list_ne` text COLLATE utf8mb4_general_ci NOT NULL,
  `load_a_per_ne` float NOT NULL,
  `statss` text COLLATE utf8mb4_general_ci NOT NULL,
  `jumlah_bank` int NOT NULL,
  `date_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dp_rectifier`
--

INSERT INTO `dp_rectifier` (`id`, `ne_id`, `check_double`, `site_id`, `site_name`, `regional`, `lantai`, `room`, `vendor`, `rectifier_name`, `master_slave`, `panel_dcpdu`, `rectifier_brand`, `serial_number`, `rectifier_series`, `rectifier_type`, `modul_rectifier`, `rec_capacity`, `rect_cap`, `battery_capacity_perbank`, `battery_ah`, `battery_brand`, `remark`, `remark_aging`, `battery_type`, `jumlah_blok`, `battery_capacity_ah`, `carging_batere`, `load_curent`, `total_load`, `total_load_real`, `backup_time`, `occupancy_rec`, `prosentage_load_rec_carge_per`, `status_rec`, `status_rec2`, `status_rec3`, `small_lerge_sys`, `date_install_rec`, `date_install_batt`, `area_west_east`, `list_ne`, `load_a_per_ne`, `statss`, `jumlah_bank`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'MDO002/L01/HUAWEI/R4850G/001', 1, 'MDO002', 'TTC Paniki', 'Sulawesi', 1, 'Battery Core', 'Wiraky Nusa Telekomunikasi', 'Rectifier#1', 0, 'DCPDU 2.5.2 & DCPDB-1', 'Huawei', '6H170001713', NULL, 'TP481200B-N20B1	', 24, 55.56, 1333.44, '48V/2000Ah', 2000, 'Hoppecke', 'Plan Swap 2023', 'Above 10 Years', '16OPzV2000', 48, 4000, 200, 203, 403, 203, 15.8, 15.22, 30.22, 'ON', 'Non-Obs', 'Under 10 Years', 'Large System', '2022-01-01', '2024-03-28', 'EAST', 'SR 02 New Paniki, SR 01 New Paniki, SSU Symmetricom, Smartcare, Traffica Mnd 02, MDO FE2, Ran AGG 01, Ran AGG 02, BCP 4, EXFO        ', 0, '0', 2, NULL, NULL, NULL),
(2, 'MDO002/L01/HUAWEI/R4850G/002', 1, 'MDO002', 'TTC Paniki', 'Sulawesi', 1, 'Battery Core', 'Wiraky Nusa Telekomunikasi', 'Rectifier#2', 0, 'DCPDU 2.5.2 & DCPDB-2', 'Huawei', NULL, NULL, 'TP481200B-N20B1	', 24, 55.56, 1333.44, '48V/4800Wh', 100, 'Huawei', 'NEW', 'Under 10 Years', 'ESM-48100B1', 20, 2000, 100, 120, 320, 120, 26.7, 9, 24, 'ON', 'Non-Obs', 'Under 10 Years', 'Large System', '2022-01-01', '2024-03-28', 'EAST', 'SSU Symmetricom, Smartcare, Traffica Mnd 02, TWAMP, MDO FE2, Ran AGG 01, Ran AGG 02, BCP 4    ', 0, ' ', 2, NULL, NULL, NULL),
(3, 'MDO002/L01/HUAWEI/R4850G/003', 1, 'MDO002', 'TTC Paniki', 'Sulawesi', 1, 'Battery Core', 'Wiraky Nusa TelekomunikasI', 'Rectifier#3', 0, 'DCPDU 2.5.5 & DCPDB-3', 'Huawei', '6H16A0005070', NULL, 'TP481200B-N20B1	', 24, 55.56, 1333.44, '48V/4800Wh', 2000, 'Huawei', 'NEW', 'Above 10 Years', 'ESM-48100B1', 10, 1000, 100, 179, 279, 179, 8.9, 13.42, 20.92, 'ON', 'Non-Obs	', 'Under 10 Years', 'Large System', '2022-01-01', '2024-03-28', 'EAST', 'SR 02 New Paniki, SR 01 New Paniki, CPS Paniki 01, CPS Paniki 02, BSC Paniki 02, CMM, VMAX, TAP Agregator, PSS32, PE Mobile 01, PE Mobile 02    ', 0, '', 1, NULL, NULL, NULL),
(4, 'MDO002/L01/HUAWEI/R4850G/004', 1, 'MDO002', ' TTC Paniki', 'Sulawesi', 1, 'Battery RAN', 'Wiraky Nusa Telekomunikasi', 'Rectifier#4', 0, 'DCPDU 2.5.3', 'Huawei', 'TP481200B', NULL, 'TP481200B-N20B1	', 24, 55.56, 1333.44, '48V/4800Wh', 2000, 'Huawei', 'NEW', 'Above 10 Years', 'ESM-48100B1', 10, 1000, 100, 195, 295, 195, 8.2, 14.62, 22.12, 'ON', 'Non-Obs', 'Under 10 Years', 'Large System', '2022-01-01', '2024-03-28', 'EAST', 'SR 02 New Paniki, SR 01 New Paniki, CPS Paniki 01, CPS Paniki 02, BSC Paniki 02, CMM, VMAX, TAP Agregator, PSS32, PE Mobile 01, PE Mobile 02, Lintas ALU 1660, PSS16, ALU 2012, RNC Manado 6, Node B, ALU 2012, PSS16, RNC Manado 6 Shelf A, RNC Manado 6 Shelf B, NDS ZTE Inverter 1-2, RFTS 2018, RNC Manado 6  ', 0, '', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_resume`
--

CREATE TABLE `dp_resume` (
  `id` int NOT NULL,
  `site` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_Perangkat` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `brand` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `jumlah` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `date_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dp_resume`
--

INSERT INTO `dp_resume` (`id`, `site`, `jenis_Perangkat`, `brand`, `jumlah`, `status`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, ' MDO018 ', ' UPS ', ' Vektor ', ' 1 ', ' - ', NULL, NULL, NULL),
(2, ' MDO018 ', ' UPS ', ' ABB ', ' 1 ', ' - ', NULL, NULL, NULL),
(3, ' MDO018 ', ' Rectifier ', ' Huawey ', ' 9 ', ' - ', NULL, NULL, NULL),
(4, 'MDO018', ' PAC ', ' RCG ', ' 10', ' - ', NULL, NULL, NULL),
(6, 'MDO018', ' CCTV ', ' GRUNDIG', ' 38 ', ' - ', NULL, NULL, NULL),
(7, ' MDO018 ', ' FM200 Panel ', ' Notifier ', ' 2 ', ' - ', NULL, NULL, NULL),
(8, ' MDO018 ', ' FM200 Tabung ', ' HyGood ', ' 2 ', ' - ', NULL, NULL, NULL),
(9, ' MDO018 ', ' FM200 Tabung ', ' Chemetron ', ' 3 ', ' - ', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_site`
--

CREATE TABLE `dp_site` (
  `id` int NOT NULL,
  `site_id_actual` varchar(99) DEFAULT NULL,
  `site_name_actual` varchar(99) DEFAULT NULL,
  `site_name_po` varchar(99) DEFAULT NULL,
  `regional` varchar(99) DEFAULT NULL,
  `lat` varchar(99) DEFAULT NULL,
  `long` varchar(99) DEFAULT NULL,
  `address` varchar(99) DEFAULT NULL,
  `propinsi` varchar(99) DEFAULT NULL,
  `kota` varchar(99) DEFAULT NULL,
  `site_type` varchar(99) DEFAULT NULL,
  `office_grapari_status` varchar(99) DEFAULT NULL,
  `operational_start_date` varchar(99) DEFAULT NULL,
  `tahun_operasional` varchar(99) DEFAULT NULL,
  `building_age_years` varchar(99) DEFAULT NULL,
  `tower_height_m` varchar(99) DEFAULT NULL,
  `tower_type` varchar(99) DEFAULT NULL,
  `as_build_drawing` varchar(99) DEFAULT NULL,
  `date_edit` varchar(99) DEFAULT NULL,
  `user_edit` varchar(99) DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `dp_site`
--

INSERT INTO `dp_site` (`id`, `site_id_actual`, `site_name_actual`, `site_name_po`, `regional`, `lat`, `long`, `address`, `propinsi`, `kota`, `site_type`, `office_grapari_status`, `operational_start_date`, `tahun_operasional`, `building_age_years`, `tower_height_m`, `tower_type`, `as_build_drawing`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'MDO002', 'TTC Paniki', 'TTC Manado 2', 'Sulawesi', '1°30\"36.4\"N', '124˚54\"52.4\"E', 'Jl. Raya Paniki Atas, Kel. Paniki Bawah, Kec. Mapanget, MANADO-95256', 'Sulawesi Utara', 'Manado', 'TTC', 'TTC', 'Januari', '2011', '13', 'Na', 'Na', 'Ada', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_spaceupdate`
--

CREATE TABLE `dp_spaceupdate` (
  `id` int NOT NULL,
  `area` varchar(99) DEFAULT NULL,
  `regional` varchar(8) DEFAULT NULL,
  `lokasi_ttc` varchar(17) DEFAULT NULL,
  `space` varchar(8) DEFAULT NULL,
  `luasan_gedung` varchar(12) DEFAULT NULL,
  `lantai` varchar(6) DEFAULT NULL,
  `nama_ruang` varchar(28) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `total_space` varchar(10) DEFAULT NULL,
  `used_space` varchar(9) DEFAULT NULL,
  `free_space` varchar(9) DEFAULT NULL,
  `occu` varchar(99) DEFAULT NULL,
  `date_edit` varchar(99) DEFAULT NULL,
  `user_edit` varchar(99) DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `dp_spaceupdate`
--

INSERT INTO `dp_spaceupdate` (`id`, `area`, `regional`, `lokasi_ttc`, `space`, `luasan_gedung`, `lantai`, `nama_ruang`, `type`, `total_space`, `used_space`, `free_space`, `occu`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Battery Core', 'Perangkat', '150', '105', '45', '70%', NULL, NULL, NULL),
(2, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Battery RAN', 'Perangkat', '150', '135', '15', '23%', NULL, NULL, NULL),
(3, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'BM', 'Office', '21', '0', '21', NULL, NULL, NULL, NULL),
(4, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Control Room', 'Perangkat', '5', '5', '0', '100%', NULL, NULL, NULL),
(5, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Lobby', 'Office', '50', '50', '0', '100%', NULL, NULL, NULL),
(6, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Meeting', 'Office', '10.5', '10.5', '0', '100%', NULL, NULL, NULL),
(7, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Panel', 'Perangkat', '12', '8', '4', '67%', NULL, NULL, NULL),
(8, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Genset', 'Perangkat', '80', '80', '0', '100%', NULL, NULL, NULL),
(9, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Pantry', 'Common Area', '16', '-', '-', NULL, NULL, NULL, NULL),
(10, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Mushola', 'Common Area', '15', '-', '-', NULL, NULL, NULL, NULL),
(11, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Wudhu', 'Common Area', '4', '-', '-', NULL, NULL, NULL, NULL),
(12, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Toilet Pria', 'Common Area', '2', '-', '-', NULL, NULL, NULL, NULL),
(13, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Toilet Wanita', 'Common Area', '2', '-', '-', NULL, NULL, NULL, NULL),
(14, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Kamar Mandi', 'Common Area', '2', '-', '-', NULL, NULL, NULL, NULL),
(15, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Tangga', 'Common Area', '13.5', '-', '-', NULL, NULL, NULL, NULL),
(16, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '556.04', '1', 'Koridor', 'Common Area', '18', '-', '-', NULL, NULL, NULL, NULL),
(17, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '533.77', '2', 'Core', 'Perangkat', '150', '125', '25', '83%', NULL, NULL, NULL),
(18, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '533.77', '2', 'RAN', 'Perangkat', '120', '110', '10', '92%', NULL, NULL, NULL),
(19, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '533.77', '2', 'NFVi', 'Perangkat', '72', '65', '7', '90%', NULL, NULL, NULL),
(20, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '533.77', '2', 'Interkoneksi', 'Perangkat', '60', '12', '48', '20%', NULL, NULL, NULL),
(21, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '533.77', '2', 'Operator', 'Office', '12', '3', '9', '25%', NULL, NULL, NULL),
(22, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '533.77', '2', 'Staging', 'Perangkat', '14.5', '2.5', '12', '17%', NULL, NULL, NULL),
(23, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '533.77', '2', 'Trafo', 'Perangkat', '40', '40', '0', '100%', NULL, NULL, NULL),
(24, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '533.77', '2', 'Toilet', 'Common Area', '1.5', '-', '-', NULL, NULL, NULL, NULL),
(25, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '533.77', '2', 'Janitor', 'Office', '1.8', '-', '-', NULL, NULL, NULL, NULL),
(26, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '533.77', '2', 'Tangga', 'Common Area', '13.5', '-', '-', NULL, NULL, NULL, NULL),
(27, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '533.77', '2', 'Koridor', 'Common Area', '71.7', '-', '-', NULL, NULL, NULL, NULL),
(28, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '565.44', '3', 'Tangga', 'Common Area', '13.5', '-', '-', NULL, NULL, NULL, NULL),
(29, 'Area 4', 'Sulawesi', 'TTC Paniki Manado', 'Gedung 1', '565.44', '3', 'Panel', 'Perangkat', '11.5', '1.5', '10', '13%', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_tob`
--

CREATE TABLE `dp_tob` (
  `id` int NOT NULL,
  `regional` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `site_id` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `site_name` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lantai` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `raiser_id` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `brand_raiser` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `raiser_caps` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `r` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `s` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `t` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `n` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `label_tob` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `caps` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `used` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `occ` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rr` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ss` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tt` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nn` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remark` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dp_tob`
--

INSERT INTO `dp_tob` (`id`, `regional`, `site_id`, `site_name`, `lantai`, `raiser_id`, `brand_raiser`, `raiser_caps`, `r`, `s`, `t`, `n`, `label_tob`, `caps`, `used`, `occ`, `rr`, `ss`, `tt`, `nn`, `remark`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'SULAWESI', 'MDO002', 'TTC PANIKI', 'Lantai 1\r\n', 'Rizer A\r\n', NULL, '1600\r\n', '17.55\r\n', '17.56\r\n', '17.55\r\n', NULL, 'TOB  - 1\r\n', '400\r\n', '17.55\r\n', '4.4%\r\n', '17.55\r\n', '17.56\r\n', '17.55\r\n', NULL, NULL, NULL, NULL, NULL),
(2, 'SULAWESI', 'MDO002', 'TTC PANIKI', 'Lantai 1\r\n', 'Rizer A\r\n', NULL, '1600\r\n', '1.8\r\n', '1.8\r\n', '2\r\n', NULL, 'TOB - 2\r\n', '250\r\n', '1.87\r\n', '0.7%\r\n', '1.8\r\n', '1.8\r\n', '2', NULL, NULL, NULL, NULL, NULL),
(3, 'SULAWESI', 'MDO002', 'TTC PANIKI', 'Lantai 1\r\n', 'Rizer A\r\n', NULL, '1600\r\n', NULL, NULL, NULL, NULL, 'TOB - 3\r\n', '400\r\n', NULL, '0%\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'SULAWESI', 'MDO002', 'TTC PANIKI', 'Lantai 1\r\n', 'Rizer A\r\n', NULL, '1600\r\n', '5.2\r\n', '4.7\r\n', '5\r\n', NULL, 'TOB - 4\r\n', '250\r\n', '4.97\r\n', '2.0%\r\n', '5.2\r\n', '4.7\r\n', '5', NULL, NULL, NULL, NULL, NULL),
(5, 'SULAWESI', 'MDO002', 'TTC PANIKI', 'Lantai 1\r\n', 'Rizer A\r\n', NULL, '1600\r\n', NULL, NULL, NULL, NULL, 'TOB - 5\r\n', '400\r\n', NULL, '0%\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'SULAWESI', 'MDO002', 'TTC PANIKI', 'Lantai 1\r\n', 'Rizer A\r\n', NULL, '1600\r\n', '46.64\r\n', '46.64\r\n', '46.72\r\n', NULL, 'TOB - 6\r\n', '400\r\n', '46.67\r\n', '11.7%\r\n', '46.64\r\n', '46.64\r\n', '46.72\r\n', NULL, NULL, NULL, NULL, NULL),
(7, 'SULAWESI', 'MDO002', 'TTC PANIKI', 'Lantai 1\r\n', 'Rizer A\r\n', '1600\r\n', NULL, NULL, NULL, NULL, NULL, 'TOB - 7\r\n', '400\r\n', NULL, '0%\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'SULAWESI', 'MDO002', 'TTC PANIKI', 'Lantai 1\r\n', 'Rizer A\r\n', NULL, '1600\r\n', '42.43\r\n', '38.66\r\n', '50.05\r\n', NULL, 'TOB - 8\r\n', '400\r\n', '43.71\r\n', '10.9%\r\n', '42.43\r\n', '38.66\r\n', '50.05\r\n', NULL, NULL, NULL, NULL, NULL),
(9, 'SULAWESI', 'MDO002', 'TTC PANIKI', 'Lantai 1\r\n', 'Rizer A\r\n', NULL, '1600\r\n', NULL, NULL, NULL, NULL, 'TOB - 9\r\n', '250\r\n', NULL, '0%\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'SULAWESI', 'MDO002', 'TTC PANIKI', 'Lantai 1\r\n', 'Rizer A\r\n', NULL, '1600\r\n', NULL, NULL, NULL, NULL, 'TOB - 10\r\n', '400', NULL, '0%\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_trafo`
--

CREATE TABLE `dp_trafo` (
  `id` int NOT NULL,
  `area` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(999) COLLATE utf8mb4_general_ci NOT NULL,
  `merk` text COLLATE utf8mb4_general_ci NOT NULL,
  `total` int NOT NULL,
  `capacity` int NOT NULL,
  `tipe_pendingin` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `mulai_operasi` date NOT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci NOT NULL,
  `date_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dp_trafo`
--

INSERT INTO `dp_trafo` (`id`, `area`, `location`, `merk`, `total`, `capacity`, `tipe_pendingin`, `jenis`, `mulai_operasi`, `deskripsi`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'Sulawesi', 'TTC MANADO 2', 'TRAFFINDO', 1, 1000, 'ONAN', 'Basah', '2024-05-14', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dp_ups`
--

CREATE TABLE `dp_ups` (
  `id` int NOT NULL,
  `ne_id` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `check_double` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `site` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `site_id` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `reg_id` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `area` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `site_name` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `regional` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `provinci` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `floor` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `room` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `brand_ups` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `type_ups` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `ups_name` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `kab_modul` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `mhodul` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `capacity_ups_kva` float NOT NULL,
  `capacity_ups_full` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `ups_data_center` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `serial_number` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `r_n` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `s_n` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `tn` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `just_r` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `just_s` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `just_t` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `load_ups_kw` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `load_ups_kva` float NOT NULL,
  `ocupancy_ups` float NOT NULL,
  `usulan_penambahan` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `list_ne` text COLLATE utf8mb4_general_ci NOT NULL,
  `total_load` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `modular` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `ups_install` date NOT NULL,
  `date_waranty` date NOT NULL,
  `total_year` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `up_or_und` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `battery_brand` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `battery_type` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `total_bank` int NOT NULL,
  `qt_battery` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `usulan` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `battery_install_date` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `warranty_batt` date NOT NULL,
  `total_years2` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `bms` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `vendor_project` text COLLATE utf8mb4_general_ci NOT NULL,
  `vendor_main` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `start_po` date NOT NULL,
  `end_po` date NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `start_mp` date NOT NULL,
  `end_mp` date NOT NULL,
  `contact_mp` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `po_number` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `up_un_year` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `date_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_edit` varchar(99) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dp_ups`
--

INSERT INTO `dp_ups` (`id`, `ne_id`, `check_double`, `site`, `site_id`, `reg_id`, `area`, `site_name`, `regional`, `provinci`, `floor`, `room`, `brand_ups`, `type_ups`, `ups_name`, `kab_modul`, `mhodul`, `capacity_ups_kva`, `capacity_ups_full`, `ups_data_center`, `serial_number`, `r_n`, `s_n`, `tn`, `just_r`, `just_s`, `just_t`, `load_ups_kw`, `load_ups_kva`, `ocupancy_ups`, `usulan_penambahan`, `list_ne`, `total_load`, `modular`, `ups_install`, `date_waranty`, `total_year`, `up_or_und`, `battery_brand`, `battery_type`, `total_bank`, `qt_battery`, `usulan`, `battery_install_date`, `warranty_batt`, `total_years2`, `bms`, `vendor_project`, `vendor_main`, `start_po`, `end_po`, `description`, `start_mp`, `end_mp`, `contact_mp`, `address`, `status`, `po_number`, `up_un_year`, `date_edit`, `user_edit`, `deleted`) VALUES
(1, 'MDO002/L01/APM/090/001', '1', 'TTC', 'MDO002', ' 9', 'EAST Area', 'TTC  Paniki ', 'Sulawesi', 'Sulawesi Utara', '1', 'R. Battery', 'Liebert APM', ' APM300', 'Battery', '30', '4', 120, '300', ' 0', '2101200811218C040001', '218', '210', '222', '43', '41', '24', '23.3', 23.3, 23.1, ' Not Yet ', 'vGGSN Manado 1 SDN ACI Paniki vMME Manado 5 Agnostic Platform F5-MDO1-01 F5-MDO1-02 F5-MDO1-03 Router EBR-MDO1 Router EBR-MDO2 Google GGC DNS Gn Server TKPPSE Kominfo', '', 'Modular', '2020-09-20', '2020-09-21', '3', 'Under 10 Years', 'Vision', '12V 192 AH', 1, '40', '0', '19 Des 2018', '2019-12-19', '5', 'Non Battery Monitoring System ', 'KST', 'Telkom Infra', '0001-01-01', '0001-01-01', 'Maintenance Contract  Uninteruptible UPS Power Supplies & System', '0001-01-01', '0001-01-01', 'NON MPA', '0', 'ON', '0', 'Under 10 Years', NULL, NULL, NULL),
(2, 'MDO002/L03/EAT/125/002', '1', 'TTC', 'MDO002', '9', 'EAST Area', 'TTC  Paniki ', 'Sulawesi', 'Sulawesi Utara', '1', NULL, 'EATON', 'EATON 93PR', 'Battery', '25', '7', 175, '200', '0', '4N453WAA02', '228', '224', '228', '36', '36', '37', '23.6', 24.2, 17.8, ' Not Yet ', '\"vGGSN Manado 1 SDN ACI Paniki vMME Manado 5 Agnostic Platform F5-MDO1-01 F5-MDO1-02 F5-MDO1-03 Router EBR-MDO1 Router EBR-MDO2 Google GGC Facebook FNA DNS Gn NDS\"', '', 'Modular', '2021-09-16', '2022-09-16', '2', 'Under 10 Years', 'Leoch', '12V 200AH', 2, '40', '0', '16 Sep 21', '2022-09-16', '2', 'Battery Monitoring System ', 'Telkom Infra', 'Telkom Infra', '2024-05-01', '2024-05-01', 'Maintenance Contract  Uninteruptible UPS Power Supplies & System', '2024-05-01', '2024-05-01', 'NON MPA', '', '', '0', 'Under 10 Years', NULL, NULL, NULL),
(3, '', '0', 'TTC', 'MDO002', '9', 'EAST Area', 'TTC Paniki', 'Sulawesi', 'Sulawesi Utara', '1', 'R.Battery', 'Eaton', '', '', '', '', 2.1, '10', '', '2L113JBA29', '221', '223', '221', '0.47', '0.89', '0.56', '20.05', 2.1, 21, 'Not Yet', 'Semua Perangkat di Control Room', '', '', '0000-00-00', '0000-00-00', '', '', '', '0 Ah 30 A', 0, '', '', NULL, '0000-00-00', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '', '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genset1`
--

CREATE TABLE `genset1` (
  `id` int NOT NULL,
  `prosses` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `gen_on` time(6) NOT NULL,
  `gen_off` time(6) NOT NULL,
  `tanki_bulanan` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `tangki_harian` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `suhu` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `hours_mater` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genset1`
--

INSERT INTO `genset1` (`id`, `prosses`, `gen_on`, `gen_off`, `tanki_bulanan`, `tangki_harian`, `suhu`, `hours_mater`) VALUES
(29, 'Auto Rehersal', '09:00:00.000000', '09:20:00.000000', '9963', '964', '73', '308H 22M'),
(31, 'MANUAL  REHEARSAL', '21:25:00.000000', '21:45:00.000000', '9963', '959', '73', '309H 22M'),
(66, 'AUTO REHARSHAL', '21:00:00.000000', '21:20:00.000000', '654', '167', '22', '234 HM'),
(68, 'AUTO REHARSHAL', '18:20:00.000000', '19:20:00.000000', '1234', '5678', '31', '132 HM'),
(74, 'Pemadaman PLN', '11:18:00.000000', '12:40:00.000000', '9963', '855', '70', '621 H 18 M'),
(82, 'Auto Reharshal', '09:00:00.000000', '09:20:00.000000', '9963', '849', '75', '621 H 37 M'),
(102, 'Standby', '08:26:00.000000', '08:26:00.000000', '8264', '1000', '30', '113'),
(104, 'Standby', '08:32:00.000000', '08:32:00.000000', '8264', '1000', '30', '113'),
(116, 'Standby', '06:33:00.000000', '06:33:00.000000', '8264', '1000', '30', '114');

-- --------------------------------------------------------

--
-- Table structure for table `genset2`
--

CREATE TABLE `genset2` (
  `id` int NOT NULL,
  `prosses` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `gen_on` time(6) NOT NULL,
  `gen_off` time(6) NOT NULL,
  `tanki_bulanan` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `tangki_harian` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `suhu` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `hours_mater1` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `hours_mater2` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genset2`
--

INSERT INTO `genset2` (`id`, `prosses`, `gen_on`, `gen_off`, `tanki_bulanan`, `tangki_harian`, `suhu`, `hours_mater1`, `hours_mater2`) VALUES
(30, 'Auto Rehersal', '09:00:00.000000', '09:20:00.000000', '9530', '761', '73', '308H 22M', '308H 22M'),
(32, 'MANUAL  REHEARSAL', '21:00:00.000000', '21:20:00.000000', '9530', '757', '73', '309H 23M', '308H 22M'),
(75, 'Auto Rehearsal', '09:00:00.000000', '09:20:00.000000', '9530', '709', '70', '312 H 24 M', '312 H 26 M'),
(82, 'Manual Reharshal', '09:20:00.000000', '09:40:00.000000', '9530', '704', '75', '312 H 44 M', '312 H 46 M'),
(103, 'Standby', '08:27:00.000000', '08:27:00.000000', '1000', '1000', '30', '113', '97'),
(105, 'Standby', '08:33:00.000000', '08:33:00.000000', '1000', '1000', '30', '97', '97'),
(117, 'Standby', '06:35:00.000000', '06:35:00.000000', '1000', '1000', '30', '114', '98');

-- --------------------------------------------------------

--
-- Table structure for table `lvmdp1`
--

CREATE TABLE `lvmdp1` (
  `kwh` float NOT NULL,
  `kva` float NOT NULL,
  `l1n` float NOT NULL,
  `l2n` float NOT NULL,
  `l3n` float NOT NULL,
  `l1b` float NOT NULL,
  `l2b` float NOT NULL,
  `l3b` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lvmdp2`
--

CREATE TABLE `lvmdp2` (
  `kwh` float NOT NULL,
  `kva` float NOT NULL,
  `l1n` float NOT NULL,
  `l2n` float NOT NULL,
  `l3n` float NOT NULL,
  `l1b` float NOT NULL,
  `l2b` float NOT NULL,
  `l3b` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pac1`
--

CREATE TABLE `pac1` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac1`
--

INSERT INTO `pac1` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 1', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 1', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 1', '60', '22', '23.2', '45.3', 'On', '2024-11-04'),
(76, 'RCG 1', '60', '22', '22.2', '45.3', 'On', '2024-11-04'),
(77, 'RCG 1', '60', 'Off', 'Off', 'Off', 'Off', '2024-11-04'),
(78, 'RCG 1', '60', 'Standby', 'Standby', 'Standby', 'Standby', '2024-11-05'),
(79, 'RCG 1', '60', '22', '26', '43.7', 'StandBy', '2024-11-05'),
(80, 'RCG 1', '60', '22', '26', '43.7', 'StandBy', '2024-11-06'),
(81, 'RCG 1', '60', '22', '26.6', '41.9', 'StandBy', '2024-11-06'),
(85, 'RCG 1', '60', '22', '26.6', '41.9', 'StandBy', '2024-11-08'),
(89, 'RCG 1', '60', '22', '26.6', '41.9', 'StandBy', '2024-11-15'),
(90, 'RCG 1', '60', '22', '26.6', '41.9', 'StandBy', '2024-11-16'),
(93, 'RCG 1', '60', '', '', '', 'StandBy', '2024-12-10'),
(95, 'RCG 1', '60', '', '', '', 'StandBy', '2024-12-11'),
(97, 'RCG 1', '60', '17', '70', '13', 'On', '2024-12-11'),
(98, 'RCG 1', '60', '17', '70', '13', 'On', '2024-12-11'),
(99, 'RCG 1', '60', '', '', '', 'Standby', '2024-12-11'),
(100, 'RCG 1', '60', '', '', '', 'Off', '2024-12-11'),
(101, 'PAC RCG 001', '60', '', '', '', 'Standby', '2024-12-28'),
(106, 'PAC RCG 001', '60', '', '', '', 'Standby', '2024-12-28'),
(107, 'PAC RCG 001', '60', '', '', '', 'Standby', '2024-12-28'),
(108, 'PAC RCG 001', '60', '', '', '', 'Standby', '2024-12-29'),
(109, 'PAC RCG 001', '60', '', '', '', 'Standby', '2024-12-29'),
(110, 'PAC RCG 001', '60', '', '', '', 'Standby', '2024-12-29'),
(112, 'PAC RCG 001', '60', '', '', '', 'Standby', '2024-12-30'),
(113, 'PAC RCG 001', '60', '', '', '', 'Standby', '2024-12-30'),
(114, 'PAC RCG 001', '60', '', '', '', 'Standby', '2024-12-30'),
(115, 'PAC RCG 001', '60', '', '', '', 'Standby', '2024-12-31'),
(118, 'PAC RCG 001', '60', '', '', '', 'Standby', '2024-12-31'),
(119, 'PAC RCG 001', '60', '', '', '', 'Standby', '2024-12-31'),
(121, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-01'),
(122, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-01'),
(123, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-01'),
(124, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-02'),
(125, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-02'),
(126, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-02'),
(127, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-03'),
(128, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-03'),
(129, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-03'),
(130, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-04'),
(131, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-04'),
(132, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-04'),
(133, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-05'),
(135, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-05'),
(136, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-05'),
(137, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-05'),
(138, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-06'),
(139, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-06'),
(140, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-06'),
(141, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-07'),
(142, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-07'),
(143, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-07'),
(144, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-08'),
(145, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-08'),
(146, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-08'),
(147, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-09'),
(148, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-09'),
(149, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-09'),
(150, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-10'),
(151, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-10'),
(152, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-10'),
(153, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-11'),
(154, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-11'),
(155, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-11'),
(156, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-12'),
(157, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-12'),
(158, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-12'),
(160, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-13'),
(161, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-13'),
(163, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-13'),
(164, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-14'),
(165, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-14'),
(166, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-14'),
(167, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-15'),
(168, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-15'),
(169, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-15'),
(170, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-16'),
(171, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-16'),
(172, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-16'),
(173, 'PAC RCG 001', '60', '', '', '', 'Standby', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac2`
--

CREATE TABLE `pac2` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac2`
--

INSERT INTO `pac2` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 2', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 2', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 2', '60', 'Off', 'Off', 'Off', 'Off', '2024-11-04'),
(76, 'RCG 2', '60', 'Off', 'Off', 'Off', 'Off', '2024-11-04'),
(77, 'RCG 2', '60', '22', '24.0', '56.0', 'On', '2024-11-04'),
(78, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2024-11-05'),
(79, 'RCG 2', '60', '22', '24', '56', 'On', '2024-11-05'),
(80, 'RCG 2', '60', '22', '24', '56', 'On', '2024-11-06'),
(81, 'RCG 2', '60', '22', '22.8', '56.8', 'On', '2024-11-06'),
(85, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2024-11-08'),
(89, 'RCG 2', '60', '22', '24', '56', 'On', '2024-11-15'),
(90, 'RCG 2', '60', '22', '24', '56', 'On', '2024-11-16'),
(93, 'RCG 2', '60', '22', '22.8', '56.8', 'On', '2024-12-10'),
(95, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2024-12-11'),
(97, 'RCG 2', '60', '22', '24', '56', 'On', '2024-12-11'),
(98, 'RCG 2', '60', '22', '24', '56', 'On', '2024-12-11'),
(99, 'RCG 2', '60', '22', '22.8', '56.8', 'On', '2024-12-11'),
(100, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2024-12-11'),
(101, 'PAC RCG 002', '60', '22', '24', '56', 'On', '2024-12-28'),
(106, 'RCG 2', '60', '22', '26', '56', 'On', '2024-12-28'),
(107, 'RCG 2', '60', '22', '22.8', '56.8', 'On', '2024-12-28'),
(108, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2024-12-29'),
(109, 'PAC RCG 002', '60', '22', '26.4', '60', 'On', '2024-12-29'),
(110, 'RCG 2', '60', '22', '26', '56', 'On', '2024-12-29'),
(112, 'RCG 2', '60', '22', '22.8', '56.8', 'On', '2024-12-30'),
(113, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2024-12-30'),
(114, 'PAC RCG 002', '60', '22', '24.4', '60', 'On', '2024-12-30'),
(115, 'RCG 2', '60', '22', '26', '56', 'On', '2024-12-31'),
(118, 'RCG 2', '60', '22', '25.9', '60.5', 'On', '2024-12-31'),
(119, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2024-12-31'),
(121, 'PAC RCG 002', '60', '22', '24.4', '60', 'On', '2025-01-01'),
(122, 'RCG 2', '60', '22', '26', '56', 'On', '2025-01-01'),
(123, 'RCG 2', '60', '22', '25.9', '60.5', 'On', '2025-01-01'),
(124, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2025-01-02'),
(125, 'PAC RCG 002', '60', '22', '24.4', '60', 'On', '2025-01-02'),
(126, 'RCG 2', '60', '22', '26', '56', 'On', '2025-01-02'),
(127, 'RCG 2', '60', '22', '25.9', '60.5', 'On', '2025-01-03'),
(128, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2025-01-03'),
(129, 'PAC RCG 002', '60', '22', '24.4', '60', 'On', '2025-01-03'),
(130, 'RCG 2', '60', '22', '26', '56', 'On', '2025-01-04'),
(131, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-04'),
(132, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2025-01-04'),
(133, 'PAC RCG 002', '60', '22', '24.4', '60', 'On', '2025-01-05'),
(135, 'RCG 2', '60', '22', '26', '56', 'On', '2025-01-05'),
(136, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-05'),
(137, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2025-01-05'),
(138, 'PAC RCG 002', '60', '22', '24.4', '60', 'On', '2025-01-06'),
(139, 'RCG 2', '60', '22', '226', '56', 'On', '2025-01-06'),
(140, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-06'),
(141, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2025-01-07'),
(142, 'PAC RCG 002', '60', '22', '24.4', '60', 'On', '2025-01-07'),
(143, 'RCG 2', '60', '22', '226', '56', 'On', '2025-01-07'),
(144, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-08'),
(145, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2025-01-08'),
(146, 'PAC RCG 002', '60', '22', '24.4', '60', 'On', '2025-01-08'),
(147, 'RCG 2', '60', '22', '226', '56', 'On', '2025-01-09'),
(148, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-09'),
(149, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2025-01-09'),
(150, 'PAC RCG 002', '60', '22', '24.4', '60', 'On', '2025-01-10'),
(151, 'RCG 2', '60', '22', '226', '56', 'On', '2025-01-10'),
(152, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-10'),
(153, 'RCG 2', '60', '22', '23.8', '51.7', 'On', '2025-01-11'),
(154, 'PAC RCG 002', '60', '22', '24.4', '60', 'On', '2025-01-11'),
(155, 'RCG 2', '60', '22', '226', '56', 'On', '2025-01-11'),
(156, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-12'),
(157, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-12'),
(158, 'PAC RCG 002', '60', '22', '24.4', '60', 'On', '2025-01-12'),
(160, 'RCG 2', '60', '22', '226', '56', 'On', '2025-01-13'),
(161, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-13'),
(163, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-13'),
(164, 'PAC RCG 002', '60', '22', '24.4', '60', 'On', '2025-01-14'),
(165, 'RCG 2', '60', '22', '226', '56', 'On', '2025-01-14'),
(166, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-14'),
(167, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-15'),
(168, 'PAC RCG 002', '60', '22', '26.2', '56.6', 'On', '2025-01-15'),
(169, 'RCG 2', '60', '22', '226', '56', 'On', '2025-01-15'),
(170, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-16'),
(171, 'RCG 2', '60', '22', '26.2', '56.6', 'On', '2025-01-16'),
(172, 'PAC RCG 002', '60', '22', '26.2', '56.6', 'On', '2025-01-16'),
(173, 'RCG 2', '60', '22', '226', '56', 'On', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac3`
--

CREATE TABLE `pac3` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac3`
--

INSERT INTO `pac3` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 3', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 3', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 3', '60', '22', '22.7', '55.3', 'On', '2024-11-04'),
(76, 'RCG 3', '60', '22', '22.7', '55.3', 'On', '2024-11-04'),
(77, 'RCG 3', '60', 'Off', 'Off', 'Off', 'Off', '2024-11-04'),
(78, 'RCG 3', '60', 'Standby', 'Standby', 'Standby', 'Standby', '2024-11-05'),
(79, 'RCG 3', '60', '22', '24', '50.1', 'Standby', '2024-11-05'),
(80, 'RCG 3', '60', '22', '24', '50.1', 'Standby', '2024-11-06'),
(81, 'RCG 3', '60', '22', '24.2', '50.3', 'Standby', '2024-11-06'),
(85, 'RCG 3', '60', '22', '24.2', '50.3', 'Standby', '2024-11-08'),
(89, 'RCG 3', '60', '22', '24.2', '50.3', 'Standby', '2024-11-15'),
(90, 'RCG 3', '60', '22', '24.2', '50.3', 'Standby', '2024-11-16'),
(93, 'RCG 3', '60', '22', '24.2', '50.3', 'Standby', '2024-12-10'),
(95, 'RCG 3', '60', '22', '24.2', '50.3', 'Standby', '2024-12-11'),
(97, 'RCG 3', '60', '22', '24.2', '50.3', 'Standby', '2024-12-11'),
(98, 'RCG 3', '60', '22', '24.2', '50.3', 'Standby', '2024-12-11'),
(99, 'RCG 3', '60', '22', '24.2', '50.3', 'Off', '2024-12-11'),
(100, 'RCG 3', '60', '', '', '', 'Off', '2024-12-11'),
(101, 'PAC RCG 13', '60', '', '', '', 'Standby', '2024-12-28'),
(106, 'PAC RCG 13', '60', '', '', '', 'Standby', '2024-12-28'),
(107, 'PAC RCG 13', '60', '', '', '', 'Standby', '2024-12-28'),
(108, 'PAC RCG 13', '60', '', '', '', 'Standby', '2024-12-29'),
(109, 'PAC RCG 13', '60', '', '', '', 'Standby', '2024-12-29'),
(110, 'PAC RCG 13', '60', '', '', '', 'Standby', '2024-12-29'),
(112, 'PAC RCG 13', '60', '', '', '', 'Standby', '2024-12-30'),
(113, 'PAC RCG 13', '60', '', '', '', 'Standby', '2024-12-30'),
(114, 'PAC RCG 13', '60', '', '', '', 'Standby', '2024-12-30'),
(115, 'PAC RCG 13', '60', '', '', '', 'Standby', '2024-12-31'),
(118, 'PAC RCG 13', '60', '', '', '', 'Standby', '2024-12-31'),
(119, 'PAC RCG 13', '60', '', '', '', 'Standby', '2024-12-31'),
(121, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-01'),
(122, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-01'),
(123, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-01'),
(124, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-02'),
(125, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-02'),
(126, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-02'),
(127, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-03'),
(128, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-03'),
(129, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-03'),
(130, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-04'),
(131, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-04'),
(132, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-04'),
(133, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-05'),
(135, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-05'),
(136, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-05'),
(137, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-05'),
(138, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-06'),
(139, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-06'),
(140, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-06'),
(141, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-07'),
(142, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-07'),
(143, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-07'),
(144, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-08'),
(145, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-08'),
(146, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-08'),
(147, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-09'),
(148, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-09'),
(149, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-09'),
(150, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-10'),
(151, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-10'),
(152, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-10'),
(153, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-11'),
(154, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-11'),
(155, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-11'),
(156, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-12'),
(157, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-12'),
(158, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-12'),
(160, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-13'),
(161, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-13'),
(163, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-13'),
(164, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-14'),
(165, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-14'),
(166, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-14'),
(167, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-15'),
(168, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-15'),
(169, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-15'),
(170, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-16'),
(171, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-16'),
(172, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-16'),
(173, 'PAC RCG 13', '60', '', '', '', 'Standby', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac4`
--

CREATE TABLE `pac4` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac4`
--

INSERT INTO `pac4` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 4', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 4', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 4', '60', 'Off', 'Off', 'Off', 'Off', '2024-11-04'),
(76, 'RCG 4', '60', 'Off', 'Off', 'Off', 'Off', '2024-11-04'),
(77, 'RCG 4', '60', '22', '22.3', '52.7', 'On', '2024-11-04'),
(78, 'RCG 4', '60', '22', '22.3', '52.7', 'On', '2024-11-05'),
(79, 'RCG 4', '60', '22', '22', '52.7', 'On', '2024-11-05'),
(80, 'RCG 4', '60', '22', '22.3', '52.7', 'On', '2024-11-06'),
(81, 'RCG 4', '60', '22', '22.2', '51.7', 'On', '2024-11-06'),
(85, 'RCG 4', '60', '22', '22.2', '51.7', 'On', '2024-11-08'),
(89, 'RCG 4', '60', '22', '22.2', '51.7', 'On', '2024-11-15'),
(90, 'RCG 4', '60', '22', '22.2', '51.7', 'On', '2024-11-16'),
(93, 'RCG 4', '60', '22', '22.2', '51.7', 'On', '2024-12-10'),
(95, 'RCG 4', '60', '22', '22.2', '51.7', 'On', '2024-12-11'),
(97, 'RCG 4', '60', '22', '22.2', '51.7', 'On', '2024-12-11'),
(98, 'RCG 4', '60', '22', '22.2', '51.7', 'On', '2024-12-11'),
(99, 'RCG 4', '60', '', '', '', 'Standby', '2024-12-11'),
(100, 'RCG 4', '60', '', '', '', 'Standby', '2024-12-11'),
(101, 'PAC SCH 001', '60', '25', '25', '66.5', 'On', '2024-12-28'),
(106, 'PAC SCH 001', '60', '25', '25', '60.5', 'On', '2024-12-28'),
(107, 'PAC SCH 001', '60', '25', '25', '60.5', 'On', '2024-12-28'),
(108, 'PAC SCH 001', '60', '25', '25', '60.5', 'On', '2024-12-29'),
(109, 'PAC SCH 001', '60', '25', '25', '67.6', 'On', '2024-12-29'),
(110, 'PAC SCH 001', '60', '25', '25', '67.6', 'On', '2024-12-29'),
(112, 'PAC SCH 001', '60', '25', '25', '67.6', 'On', '2024-12-30'),
(113, 'PAC SCH 001', '60', '25', '25', '67.6', 'On', '2024-12-30'),
(114, 'PAC SCH 001', '60', '25', '24', '67.6', 'On', '2024-12-30'),
(115, 'PAC SCH 001', '60', '25', '24', '67.6', 'On', '2024-12-31'),
(118, 'PAC SCH 001', '60', '25', '24.7', '67.3', 'On', '2024-12-31'),
(119, 'PAC SCH 001', '60', '25', '24.7', '67.3', 'On', '2024-12-31'),
(121, 'PAC SCH 001', '60', '25', '24.7', '67.3', 'On', '2025-01-01'),
(122, 'PAC SCH 001', '60', '25', '24.7', '67.3', 'On', '2025-01-01'),
(123, 'PAC SCH 001', '60', '25', '24.7', '67.3', 'On', '2025-01-01'),
(124, 'PAC SCH 001', '60', '25', '24.7', '67.3', 'On', '2025-01-02'),
(125, 'PAC SCH 001', '60', '25', '24.7', '67.3', 'On', '2025-01-02'),
(126, 'PAC SCH 001', '60', '25', '24.7', '67.3', 'On', '2025-01-02'),
(127, 'PAC SCH 001', '60', '25', '24.7', '67.3', 'On', '2025-01-03'),
(128, 'PAC SCH 001', '60', '25', '24.7', '67.3', 'On', '2025-01-03'),
(129, 'PAC SCH 001', '60', '25', '24.7', '67.3', 'On', '2025-01-03'),
(130, 'PAC SCH 001', '60', '25', '24.7', '67.3', 'On', '2025-01-04'),
(131, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-04'),
(132, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-04'),
(133, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-05'),
(135, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-05'),
(136, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-05'),
(137, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-05'),
(138, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-06'),
(139, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-06'),
(140, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-06'),
(141, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-07'),
(142, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-07'),
(143, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-07'),
(144, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-08'),
(145, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-08'),
(146, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-08'),
(147, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-09'),
(148, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-09'),
(149, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-09'),
(150, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-10'),
(151, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-10'),
(152, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-10'),
(153, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-11'),
(154, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-11'),
(155, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-11'),
(156, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-12'),
(157, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-12'),
(158, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-12'),
(160, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-13'),
(161, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-13'),
(163, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-13'),
(164, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-14'),
(165, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-14'),
(166, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-14'),
(167, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-15'),
(168, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-15'),
(169, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-15'),
(170, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-16'),
(171, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-16'),
(172, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-16'),
(173, 'PAC SCH 001', '60', '25', '25.3', '61.6', 'On', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac5`
--

CREATE TABLE `pac5` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac5`
--

INSERT INTO `pac5` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 5', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 5', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 5', '60', 'Off', 'Off', 'Off', 'Off', '2024-11-04'),
(76, 'RCG 5', '60', 'Off', 'Off', 'Off', 'Off', '2024-11-04'),
(77, 'RCG 5', '60', '22', '23.4', '55.6', 'On', '2024-11-04'),
(78, 'RCG 5', '60', '22', '22.5', '55.4', 'On', '2024-11-05'),
(79, 'RCG 5', '60', '22', '22.5', '55.4', 'On', '2024-11-05'),
(80, 'RCG 5', '60', '22', '23.4', '55.6', 'On', '2024-11-06'),
(81, 'RCG 5', '60', '22', '22.6', '55.9', 'On', '2024-11-06'),
(85, 'RCG 5', '60', '22', '22.6', '55.9', 'On', '2024-11-08'),
(89, 'RCG 5', '60', '22', '22.6', '55.9', 'On', '2024-11-15'),
(90, 'RCG 5', '60', '22', '22.6', '55.9', 'On', '2024-11-16'),
(93, 'RCG 5', '60', '22', '22.6', '55.9', 'On', '2024-12-10'),
(95, 'RCG 5', '60', '22', '22.6', '55.9', 'On', '2024-12-11'),
(97, 'RCG 5', '60', '22', '22.6', '55.9', 'On', '2024-12-11'),
(98, 'RCG 5', '60', '22', '22.6', '55.9', 'On', '2024-12-11'),
(99, 'RCG 5', '60', '22', '22.6', '55.9', 'Off', '2024-12-11'),
(100, 'RCG 5', '60', '', '', '', 'Off', '2024-12-11'),
(101, 'PAC RCG 008', '60', '22', '22.9', '62.8', 'On', '2024-12-28'),
(106, 'PAC RCG 008', '60', '22', '23.4', '45', 'On', '2024-12-28'),
(107, 'PAC RCG 008', '60', '22', '23.4', '45', 'On', '2024-12-28'),
(108, 'PAC RCG 008', '60', '22', '23.4', '45', 'On', '2024-12-29'),
(109, 'PAC RCG 008', '60', '22', '23.5', '39.2', 'On', '2024-12-29'),
(110, 'PAC RCG 008', '60', '22', '23.5', '39.2', 'On', '2024-12-29'),
(112, 'PAC RCG 008', '60', '22', '23.5', '39.2', 'On', '2024-12-30'),
(113, 'PAC RCG 008', '60', '22', '23.5', '39.2', 'On', '2024-12-30'),
(114, 'PAC RCG 008', '60', '22', '23.5', '39.2', 'On', '2024-12-30'),
(115, 'PAC RCG 008', '60', '22', '23.5', '39.2', 'On', '2024-12-31'),
(118, 'PAC RCG 008', '60', '22', '23.8', '53.2', 'On', '2024-12-31'),
(119, 'PAC RCG 008', '60', '22', '23.8', '53.2', 'On', '2024-12-31'),
(121, 'PAC RCG 008', '60', '22', '23.8', '53.2', 'On', '2025-01-01'),
(122, 'PAC RCG 008', '60', '22', '23.8', '53.2', 'On', '2025-01-01'),
(123, 'PAC RCG 008', '60', '22', '23.8', '53.2', 'On', '2025-01-01'),
(124, 'PAC RCG 008', '60', '22', '23.8', '53.2', 'On', '2025-01-02'),
(125, 'PAC RCG 008', '60', '22', '23.8', '53.2', 'On', '2025-01-02'),
(126, 'PAC RCG 008', '60', '22', '23.8', '53.2', 'On', '2025-01-02'),
(127, 'PAC RCG 008', '60', '22', '23.8', '53.2', 'On', '2025-01-03'),
(128, 'PAC RCG 008', '60', '22', '23.8', '53.2', 'On', '2025-01-03'),
(129, 'PAC RCG 008', '60', '22', '23.8', '53.2', 'On', '2025-01-03'),
(130, 'PAC RCG 008', '60', '22', '23.8', '53.2', 'On', '2025-01-04'),
(131, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-04'),
(132, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-04'),
(133, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-05'),
(135, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-05'),
(136, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-05'),
(137, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-05'),
(138, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-06'),
(139, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-06'),
(140, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-06'),
(141, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-07'),
(142, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-07'),
(143, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-07'),
(144, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-08'),
(145, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-08'),
(146, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-08'),
(147, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-09'),
(148, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-09'),
(149, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-09'),
(150, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-10'),
(151, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-10'),
(152, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-10'),
(153, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-11'),
(154, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-11'),
(155, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-11'),
(156, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-12'),
(157, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-12'),
(158, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-12'),
(160, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-13'),
(161, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-13'),
(163, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-13'),
(164, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-14'),
(165, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-14'),
(166, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-14'),
(167, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-15'),
(168, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-15'),
(169, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-15'),
(170, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-16'),
(171, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-16'),
(172, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-16'),
(173, 'PAC RCG 008', '60', '22', '19', '72.8', 'On', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac6`
--

CREATE TABLE `pac6` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac6`
--

INSERT INTO `pac6` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 6', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 6', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 6', '60', '22', '19.9', '58.7', 'On', '2024-11-04'),
(76, 'RCG 6', '60', '22', '19.9', '58.7', 'On', '2024-11-04'),
(77, 'RCG 6', '60', 'Off', 'Off', 'Off', 'Off', '2024-11-04'),
(78, 'RCG 6', '60', 'Standby', 'Standby', 'Standby', 'Standby', '2024-11-05'),
(79, 'RCG 6', '60', '22', '20.5', '60.5', 'Standby', '2024-11-05'),
(80, 'RCG 6', '60', '22', '20.5', '60.5', 'Standby', '2024-11-06'),
(81, 'RCG 6', '60', '22', '20.4', '62.6', 'Standby', '2024-11-06'),
(85, 'RCG 6', '60', '22', '20.4', '62.6', 'Standby', '2024-11-08'),
(89, 'RCG 6', '60', '22', '20.4', '62.6', 'Standby', '2024-11-15'),
(90, 'RCG 6', '60', '22', '20.4', '62.6', 'Standby', '2024-11-16'),
(93, 'RCG 6', '60', '', '', '', 'Standby', '2024-12-10'),
(95, 'RCG 6', '60', '', '', '', 'Standby', '2024-12-11'),
(97, 'RCG 6', '60', '', '', '', 'Standby', '2024-12-11'),
(98, 'RCG 6', '60', '', '', '', 'Standby', '2024-12-11'),
(99, 'RCG 6', '60', '', '', '', 'Standby', '2024-12-11'),
(100, 'RCG 6', '60', '', '', '', 'Standby', '2024-12-11'),
(101, 'PAC RCG 009', '60', '22', '23.8', '55.8', 'On', '2024-12-28'),
(106, 'PAC RCG 009', '60', '22', '23.4', '47.2', 'On', '2024-12-28'),
(107, 'PAC RCG 009', '60', '22', '23.4', '47.2', 'On', '2024-12-28'),
(108, 'PAC RCG 009', '60', '22', '23.4', '47.2', 'On', '2024-12-29'),
(109, 'PAC RCG 009', '60', '22', '18.5', '58.5', 'On', '2024-12-29'),
(110, 'PAC RCG 009', '60', '22', '18.5', '58.5', 'On', '2024-12-29'),
(112, 'PAC RCG 009', '60', '22', '18.5', '58.5', 'On', '2024-12-30'),
(113, 'PAC RCG 009', '60', '22', '18.5', '58.5', 'On', '2024-12-30'),
(114, 'PAC RCG 009', '60', '22', '18.5', '58.5', 'On', '2024-12-30'),
(115, 'PAC RCG 009', '60', '22', '18.5', '58.5', 'On', '2024-12-31'),
(118, 'PAC RCG 009', '60', '22', '19.1', '65', 'On', '2024-12-31'),
(119, 'PAC RCG 009', '60', '22', '19.1', '65', 'On', '2024-12-31'),
(121, 'PAC RCG 009', '60', '22', '19.1', '65', 'On', '2025-01-01'),
(122, 'PAC RCG 009', '60', '22', '19.1', '65', 'On', '2025-01-01'),
(123, 'PAC RCG 009', '60', '22', '19.1', '65', 'On', '2025-01-01'),
(124, 'PAC RCG 009', '60', '22', '19.1', '65', 'On', '2025-01-02'),
(125, 'PAC RCG 009', '60', '22', '19.1', '65', 'On', '2025-01-02'),
(126, 'PAC RCG 009', '60', '22', '19.1', '65', 'On', '2025-01-02'),
(127, 'PAC RCG 009', '60', '22', '19.1', '65', 'On', '2025-01-03'),
(128, 'PAC RCG 009', '60', '22', '19.1', '65', 'On', '2025-01-03'),
(129, 'PAC RCG 009', '60', '22', '19.1', '65', 'On', '2025-01-03'),
(130, 'PAC RCG 009', '60', '22', '19.1', '65', 'On', '2025-01-04'),
(131, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-04'),
(132, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-04'),
(133, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-05'),
(135, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-05'),
(136, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-05'),
(137, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-05'),
(138, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-06'),
(139, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-06'),
(140, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-06'),
(141, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-07'),
(142, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-07'),
(143, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-07'),
(144, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-08'),
(145, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-08'),
(146, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-08'),
(147, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-09'),
(148, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-09'),
(149, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-09'),
(150, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-10'),
(151, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-10'),
(152, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-10'),
(153, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-11'),
(154, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-11'),
(155, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-11'),
(156, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-12'),
(157, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-12'),
(158, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-12'),
(160, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-13'),
(161, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-13'),
(163, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-13'),
(164, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-14'),
(165, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-14'),
(166, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-14'),
(167, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-15'),
(168, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-15'),
(169, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-15'),
(170, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-16'),
(171, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-16'),
(172, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-16'),
(173, 'PAC RCG 009', '60', '22', '19.9', '65', 'On', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac7`
--

CREATE TABLE `pac7` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac7`
--

INSERT INTO `pac7` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 7', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 7', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 7', '60', '22', '19.2', '587', 'On', '2024-11-04'),
(76, 'RCG 7', '60', '22', '19.2', '58.7', 'On', '2024-11-04'),
(77, 'RCG 7', '60', '22', '20.4', '63.5', 'On', '2024-11-04'),
(78, 'RCG 7', '60', '22', '20.6', '61.6', 'On', '2024-11-05'),
(79, 'RCG 7', '60', '22', '20.6', '61.6', 'On', '2024-11-05'),
(80, 'RCG 7', '60', '22', '20.4', '63.5', 'On', '2024-11-06'),
(81, 'RCG 7', '60', '22', '20.9', '60.9', 'On', '2024-11-06'),
(85, 'RCG 7', '60', '22', '20.9', '60.9', 'On', '2024-11-08'),
(89, 'RCG 7', '60', '22', '20.9', '60.9', 'On', '2024-11-15'),
(90, 'RCG 7', '60', '22', '20.9', '60.9', 'On', '2024-11-16'),
(93, 'RCG 7', '60', '22', '20.9', '60.9', 'On', '2024-12-10'),
(95, 'RCG 7', '60', '22', '20.9', '60.9', 'On', '2024-12-11'),
(97, 'RCG 7', '60', '22', '20.9', '60.9', 'On', '2024-12-11'),
(98, 'RCG 7', '60', '22', '20.9', '60.9', 'On', '2024-12-11'),
(99, 'RCG 7', '60', '22', '20.9', '60.9', 'On', '2024-12-11'),
(100, 'RCG 7', '60', '22', '20.9', '60.9', 'On', '2024-12-11'),
(101, 'PAC RCG 010', '60', '22', '24.4', '58.2', 'On', '2024-12-28'),
(106, 'PAC RCG 010', '60', '22', '24.4', '40.5', 'On', '2024-12-28'),
(107, 'PAC RCG 010', '60', '22', '24.4', '40.5', 'On', '2024-12-28'),
(108, 'PAC RCG 010', '60', '22', '24.4', '40.5', 'On', '2024-12-29'),
(109, 'PAC RCG 010', '60', '22', '22.3', '40.1', 'On', '2024-12-29'),
(110, 'PAC RCG 010', '60', '22', '22.3', '40.1', 'On', '2024-12-29'),
(112, 'PAC RCG 010', '60', '22', '22.3', '40.1', 'On', '2024-12-30'),
(113, 'PAC RCG 010', '60', '22', '22.3', '40.1', 'On', '2024-12-30'),
(114, 'PAC RCG 010', '60', '22', '22.3', '40.1', 'On', '2024-12-30'),
(115, 'PAC RCG 010', '60', '22', '22.3', '40.1', 'On', '2024-12-31'),
(118, 'PAC RCG 010', '60', '22', '22.9', '52.7', 'On', '2024-12-31'),
(119, 'PAC RCG 010', '60', '22', '22.9', '52.7', 'On', '2024-12-31'),
(121, 'PAC RCG 010', '60', '22', '22.9', '52.7', 'On', '2025-01-01'),
(122, 'PAC RCG 010', '60', '22', '22.9', '52.7', 'On', '2025-01-01'),
(123, 'PAC RCG 010', '60', '22', '22.9', '52.7', 'On', '2025-01-01'),
(124, 'PAC RCG 010', '60', '22', '22.9', '52.7', 'On', '2025-01-02'),
(125, 'PAC RCG 010', '60', '22', '22.9', '52.7', 'On', '2025-01-02'),
(126, 'PAC RCG 010', '60', '22', '22.9', '52.7', 'On', '2025-01-02'),
(127, 'PAC RCG 010', '60', '22', '22.9', '52.7', 'On', '2025-01-03'),
(128, 'PAC RCG 010', '60', '22', '22.9', '52.7', 'On', '2025-01-03'),
(129, 'PAC RCG 010', '60', '22', '22.9', '52.7', 'On', '2025-01-03'),
(130, 'PAC RCG 010', '60', '22', '22.9', '52.7', 'On', '2025-01-04'),
(131, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-04'),
(132, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-04'),
(133, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-05'),
(135, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-05'),
(136, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-05'),
(137, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-05'),
(138, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-06'),
(139, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-06'),
(140, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-06'),
(141, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-07'),
(142, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-07'),
(143, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-07'),
(144, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-08'),
(145, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-08'),
(146, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-08'),
(147, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-09'),
(148, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-09'),
(149, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-09'),
(150, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-10'),
(151, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-10'),
(152, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-10'),
(153, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-11'),
(154, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-11'),
(155, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-11'),
(156, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-12'),
(157, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-12'),
(158, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-12'),
(160, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-13'),
(161, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-13'),
(163, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-13'),
(164, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-14'),
(165, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-14'),
(166, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-14'),
(167, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-15'),
(168, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-15'),
(169, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-15'),
(170, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-16'),
(171, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-16'),
(172, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-16'),
(173, 'PAC RCG 010', '60', '22', '23.9', '54.1', 'On', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac8`
--

CREATE TABLE `pac8` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac8`
--

INSERT INTO `pac8` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 8', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 8', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 8', '60', '22', '20.7', '52.6', 'On', '2024-11-04'),
(76, 'RCG 8', '60', '22', '20.7', '52.6', 'On', '2024-11-04'),
(77, 'RCG 8', '60', 'Off', 'Off', 'Off', 'Off', '2024-11-04'),
(78, 'RCG 8', '60', 'Standby', 'Standby', 'Standby', 'Standby', '2024-11-05'),
(79, 'RCG 8', '60', '22', '23.6', '50.2', 'Standby', '2024-11-05'),
(80, 'RCG 8', '60', '22', '23.6', '50.2', 'Standby', '2024-11-06'),
(81, 'RCG 8', '60', '22', '23.8', '50.9', 'Standby', '2024-11-06'),
(85, 'RCG 8', '60', '22', '23.8', '50.9', 'Standby', '2024-11-08'),
(89, 'RCG 8', '60', '22', '23.8', '50.9', 'Standby', '2024-11-15'),
(90, 'RCG 8', '60', '22', '23.8', '50.9', 'Standby', '2024-11-16'),
(93, 'RCG 8', '60', '22', '23.8', '50.9', 'Standby', '2024-12-10'),
(95, 'RCG 8', '60', '22', '23.8', '50.9', 'Standby', '2024-12-11'),
(97, 'RCG 8', '60', '22', '23.8', '50.9', 'Standby', '2024-12-11'),
(98, 'RCG 8', '60', '22', '23.8', '50.9', 'Standby', '2024-12-11'),
(99, 'RCG 8', '60', '', '', '', 'Standby', '2024-12-11'),
(100, 'RCG 8', '60', '', '', '', 'Standby', '2024-12-11'),
(101, 'PAC RCG 011', '60', '22', '19.8', '73.6', 'On', '2024-12-28'),
(106, 'PAC RCG 011', '60', '22', '21.6', '48.2', 'On', '2024-12-28'),
(107, 'PAC RCG 011', '60', '22', '21.6', '48.2', 'On', '2024-12-28'),
(108, 'PAC RCG 011', '60', '22', '21.6', '48.2', 'On', '2024-12-29'),
(109, 'PAC RCG 011', '60', '22', '27.4', '30.5', 'On', '2024-12-29'),
(110, 'PAC RCG 011', '60', '22', '27.4', '30.5', 'On', '2024-12-29'),
(112, 'PAC RCG 011', '60', '22', '27.4', '30.5', 'On', '2024-12-30'),
(113, 'PAC RCG 011', '60', '22', '27.4', '30.5', 'On', '2024-12-30'),
(114, 'PAC RCG 011', '60', '22', '27.4', '30.5', 'On', '2024-12-30'),
(115, 'PAC RCG 011', '60', '22', '27.4', '30.5', 'On', '2024-12-31'),
(118, 'PAC RCG 011', '60', '22', '27.1', '43.7', 'On', '2024-12-31'),
(119, 'PAC RCG 011', '60', '22', '27.1', '43.7', 'On', '2024-12-31'),
(121, 'PAC RCG 011', '60', '22', '27.1', '43.7', 'On', '2025-01-01'),
(122, 'PAC RCG 011', '60', '22', '27.1', '43.7', 'On', '2025-01-01'),
(123, 'PAC RCG 011', '60', '22', '27.1', '43.7', 'On', '2025-01-01'),
(124, 'PAC RCG 011', '60', '22', '27.1', '43.7', 'On', '2025-01-02'),
(125, 'PAC RCG 011', '60', '22', '27.1', '43.7', 'On', '2025-01-02'),
(126, 'PAC RCG 011', '60', '22', '27.1', '43.7', 'On', '2025-01-02'),
(127, 'PAC RCG 011', '60', '22', '27.1', '43.7', 'On', '2025-01-03'),
(128, 'PAC RCG 011', '60', '22', '27.1', '43.7', 'On', '2025-01-03'),
(129, 'PAC RCG 011', '60', '22', '27.1', '43.7', 'On', '2025-01-03'),
(130, 'PAC RCG 011', '60', '22', '27.1', '43.7', 'On', '2025-01-04'),
(131, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-04'),
(132, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-04'),
(133, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-05'),
(135, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-05'),
(136, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-05'),
(137, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-05'),
(138, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-06'),
(139, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-06'),
(140, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-06'),
(141, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-07'),
(142, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-07'),
(143, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-07'),
(144, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-08'),
(145, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-08'),
(146, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-08'),
(147, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-09'),
(148, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-09'),
(149, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-09'),
(150, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-10'),
(151, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-10'),
(152, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-10'),
(153, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-11'),
(154, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-11'),
(155, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-11'),
(156, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-12'),
(157, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-12'),
(158, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-12'),
(160, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-13'),
(161, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-13'),
(163, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-13'),
(164, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-14'),
(165, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-14'),
(166, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-14'),
(167, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-15'),
(168, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-15'),
(169, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-15'),
(170, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-16'),
(171, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-16'),
(172, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-16'),
(173, 'PAC RCG 011', '60', '22', '28.7', '42.6', 'On', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac9`
--

CREATE TABLE `pac9` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac9`
--

INSERT INTO `pac9` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 10', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 10', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 10', '30', '22', '23.6', '45.7', 'On', '2024-11-04'),
(76, 'RCG 10', '30', '22', '23.6', '45.7', 'On', '2024-11-04'),
(77, 'RCG 10', '30', '22', '23.6', '56.6', 'On', '2024-11-04'),
(78, 'RCG 10', '30', '22', '22.3', '63.5', 'On', '2024-11-05'),
(79, 'RCG 10', '30', '22', '23.6', '56.6', 'On', '2024-11-05'),
(80, 'RCG 10', '30', '22', '23.6', '52.1', 'On', '2024-11-06'),
(81, 'RCG 10', '30', '22', '24.3', '55.9', 'On', '2024-11-06'),
(85, 'RCG 10', '30', '22', '24.3', '55.9', 'On', '2024-11-08'),
(89, 'RCG 10', '30', '22', '24.3', '55.9', 'On', '2024-11-15'),
(90, 'RCG 10', '30', '22', '24.3', '55.9', 'On', '2024-11-16'),
(93, 'RCG 10', '30', '22', '24.3', '55.9', 'On', '2024-12-10'),
(95, 'RCG 10', '30', '22', '24.3', '55.9', 'On', '2024-12-11'),
(97, 'RCG 10', '30', '22', '24.3', '55.9', 'On', '2024-12-11'),
(98, 'RCG 10', '30', '22', '24.3', '55.9', 'On', '2024-12-11'),
(99, 'RCG 10', '30', '22', '24.3', '55.9', 'On', '2024-12-11'),
(100, 'RCG 10', '30', '22', '24.3', '55.9', 'On', '2024-12-11'),
(101, 'PAC RCG 012', '30', '', '', '', 'Standby', '2024-12-28'),
(106, 'PAC RCG 012', '30', '', '', '', 'Standby', '2024-12-28'),
(107, 'PAC RCG 012', '30', '', '', '', 'Standby', '2024-12-28'),
(108, 'PAC RCG 012', '30', '', '', '', 'Standby', '2024-12-29'),
(109, 'PAC RCG 012', '30', '', '', '', 'Standby', '2024-12-29'),
(110, 'PAC RCG 012', '30', '', '', '', 'Standby', '2024-12-29'),
(112, 'PAC RCG 012', '30', '', '', '', 'Standby', '2024-12-30'),
(113, 'PAC RCG 012', '30', '', '', '', 'Standby', '2024-12-30'),
(114, 'PAC RCG 012', '30', '', '', '', 'Standby', '2024-12-30'),
(115, 'PAC RCG 012', '30', '', '', '', 'Standby', '2024-12-31'),
(118, 'PAC RCG 012', '30', '', '', '', 'Standby', '2024-12-31'),
(119, 'PAC RCG 012', '30', '', '', '', 'Standby', '2024-12-31'),
(121, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-01'),
(122, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-01'),
(123, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-01'),
(124, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-02'),
(125, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-02'),
(126, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-02'),
(127, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-03'),
(128, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-03'),
(129, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-03'),
(130, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-04'),
(131, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-04'),
(132, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-04'),
(133, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-05'),
(135, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-05'),
(136, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-05'),
(137, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-05'),
(138, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-06'),
(139, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-06'),
(140, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-06'),
(141, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-07'),
(142, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-07'),
(143, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-07'),
(144, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-08'),
(145, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-08'),
(146, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-08'),
(147, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-09'),
(148, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-09'),
(149, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-09'),
(150, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-10'),
(151, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-10'),
(152, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-10'),
(153, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-11'),
(154, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-11'),
(155, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-11'),
(156, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-12'),
(157, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-12'),
(158, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-12'),
(160, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-13'),
(161, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-13'),
(163, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-13'),
(164, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-14'),
(165, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-14'),
(166, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-14'),
(167, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-15'),
(168, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-15'),
(169, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-15'),
(170, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-16'),
(171, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-16'),
(172, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-16'),
(173, 'PAC RCG 012', '30', '', '', '', 'Standby', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac10`
--

CREATE TABLE `pac10` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac10`
--

INSERT INTO `pac10` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 11', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 11', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 11', '60', '22', '22.9', '46.7', 'On', '2024-11-04'),
(76, 'RCG 11', '60', '22', '22.9', '46.7', 'On', '2024-11-04'),
(77, 'RCG 11', '60', '22', '23.7', '52.1', 'On', '2024-11-04'),
(78, 'RCG 11', '30', '22', '23.2', '62.9', 'On', '2024-11-05'),
(79, 'RCG 11', '30', '22', '23.7', '52.1', 'On', '2024-11-05'),
(80, 'RCG 11', '30', '22', '23.7', '52.1', 'On', '2024-11-06'),
(81, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-06'),
(85, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-08'),
(89, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-15'),
(90, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-16'),
(93, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-10'),
(95, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(97, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(98, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(99, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(100, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(101, 'PAC RCG 003', '30', '22', '20.1', '72.9', 'On', '2024-12-28'),
(106, 'PAC RCG 003', '30', '22', '20.5', '68.2', 'On', '2024-12-28'),
(107, 'PAC RCG 003', '30', '22', '20.5', '68.2', 'On', '2024-12-28'),
(108, 'PAC RCG 003', '30', '22', '20.5', '68.2', 'On', '2024-12-29'),
(109, 'PAC RCG 003', '30', '22', '19.8', '70.3', 'On', '2024-12-29'),
(110, 'PAC RCG 003', '30', '22', '19.8', '70.3', 'On', '2024-12-29'),
(112, 'PAC RCG 003', '30', '22', '19.8', '70.3', 'On', '2024-12-30'),
(113, 'PAC RCG 003', '30', '22', '19.8', '70.3', 'On', '2024-12-30'),
(114, 'PAC RCG 003', '30', '22', '19.8', '70.3', 'On', '2024-12-30'),
(115, 'PAC RCG 003', '30', '22', '19.8', '70.3', 'On', '2024-12-31'),
(118, 'PAC RCG 003', '30', '22', '20.4', '69.3', 'On', '2024-12-31'),
(119, 'PAC RCG 003', '30', '22', '20.4', '69.3', 'On', '2024-12-31'),
(121, 'PAC RCG 003', '30', '22', '20.4', '69.3', 'On', '2025-01-01'),
(122, 'PAC RCG 003', '30', '22', '20.4', '69.3', 'On', '2025-01-01'),
(123, 'PAC RCG 003', '30', '22', '20.4', '69.3', 'On', '2025-01-01'),
(124, 'PAC RCG 003', '30', '22', '20.4', '69.3', 'On', '2025-01-02'),
(125, 'PAC RCG 003', '30', '22', '20.4', '69.3', 'On', '2025-01-02'),
(126, 'PAC RCG 003', '30', '22', '20.4', '69.3', 'On', '2025-01-02'),
(127, 'PAC RCG 003', '30', '22', '20.4', '69.3', 'On', '2025-01-03'),
(128, 'PAC RCG 003', '30', '22', '20.4', '69.3', 'On', '2025-01-03'),
(129, 'PAC RCG 003', '30', '22', '20.4', '69.3', 'On', '2025-01-03'),
(130, 'PAC RCG 003', '30', '22', '20.4', '69.3', 'On', '2025-01-04'),
(131, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-04'),
(132, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-04'),
(133, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-05'),
(135, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-05'),
(136, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-05'),
(137, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-05'),
(138, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-06'),
(139, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-06'),
(140, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-06'),
(141, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-07'),
(142, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-07'),
(143, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-07'),
(144, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-08'),
(145, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-08'),
(146, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-08'),
(147, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-09'),
(148, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-09'),
(149, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-09'),
(150, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-10'),
(151, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-10'),
(152, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-10'),
(153, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-11'),
(154, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-11'),
(155, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-11'),
(156, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-12'),
(157, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-12'),
(158, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-12'),
(160, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-13'),
(161, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-13'),
(163, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-13'),
(164, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-14'),
(165, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-14'),
(166, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-14'),
(167, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-15'),
(168, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-15'),
(169, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-15'),
(170, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-16'),
(171, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-16'),
(172, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-16'),
(173, 'PAC RCG 003', '30', '22', '21.2', '72.9', 'On', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac11`
--

CREATE TABLE `pac11` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac11`
--

INSERT INTO `pac11` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 11', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 11', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 11', '60', '22', '22.9', '46.7', 'On', '2024-11-04'),
(76, 'RCG 11', '60', '22', '22.9', '46.7', 'On', '2024-11-04'),
(77, 'RCG 11', '60', '22', '23.7', '52.1', 'On', '2024-11-04'),
(78, 'RCG 11', '30', '22', '23.2', '62.9', 'On', '2024-11-05'),
(79, 'RCG 11', '30', '22', '23.7', '52.1', 'On', '2024-11-05'),
(80, 'RCG 11', '30', '22', '23.7', '52.1', 'On', '2024-11-06'),
(81, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-06'),
(85, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-08'),
(89, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-15'),
(90, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-16'),
(93, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-10'),
(95, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(97, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(98, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(99, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(100, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(101, 'PAC RCG 004', '30', '22', '21.7', '52', 'On', '2024-12-28'),
(106, 'PAC RCG 004', '30', '22', '21.7', '52', 'On', '2024-12-28'),
(107, 'PAC RCG 004', '30', '22', '21.7', '52', 'On', '2024-12-28'),
(108, 'PAC RCG 004', '30', '22', '21.7', '52', 'On', '2024-12-29'),
(109, 'PAC RCG 004', '30', '22', '21.7', '53.6', 'On', '2024-12-29'),
(110, 'PAC RCG 004', '30', '22', '21.7', '53.6', 'On', '2024-12-29'),
(112, 'PAC RCG 004', '30', '22', '21.7', '53.6', 'On', '2024-12-30'),
(113, 'PAC RCG 004', '30', '22', '21.7', '53.6', 'On', '2024-12-30'),
(114, 'PAC RCG 004', '30', '22', '21.7', '53.6', 'On', '2024-12-30'),
(115, 'PAC RCG 004', '30', '22', '21.7', '53.6', 'On', '2024-12-31'),
(118, 'PAC RCG 004', '30', '22', '21.6', '53.2', 'On', '2024-12-31'),
(119, 'PAC RCG 004', '30', '22', '21.6', '53.2', 'On', '2024-12-31'),
(121, 'PAC RCG 004', '30', '22', '21.6', '53.2', 'On', '2025-01-01'),
(122, 'PAC RCG 004', '30', '22', '21.6', '53.2', 'On', '2025-01-01'),
(123, 'PAC RCG 004', '30', '22', '21.6', '53.2', 'On', '2025-01-01'),
(124, 'PAC RCG 004', '30', '22', '21.6', '53.2', 'On', '2025-01-02'),
(125, 'PAC RCG 004', '30', '22', '21.6', '53.2', 'On', '2025-01-02'),
(126, 'PAC RCG 004', '30', '22', '21.6', '53.2', 'On', '2025-01-02'),
(127, 'PAC RCG 004', '30', '22', '21.6', '53.2', 'On', '2025-01-03'),
(128, 'PAC RCG 004', '30', '22', '21.6', '53.2', 'On', '2025-01-03'),
(129, 'PAC RCG 004', '30', '22', '21.6', '53.2', 'On', '2025-01-03'),
(130, 'PAC RCG 004', '30', '22', '21.6', '53.2', 'On', '2025-01-04'),
(131, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-04'),
(132, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-04'),
(133, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-05'),
(135, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-05'),
(136, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-05'),
(137, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-05'),
(138, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-06'),
(139, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-06'),
(140, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-06'),
(141, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-07'),
(142, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-07'),
(143, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-07'),
(144, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-08'),
(145, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-08'),
(146, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-08'),
(147, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-09'),
(148, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-09'),
(149, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-09'),
(150, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-10'),
(151, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-10'),
(152, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-10'),
(153, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-11'),
(154, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-11'),
(155, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-11'),
(156, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-12'),
(157, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-12'),
(158, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-12'),
(160, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-13'),
(161, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-13'),
(163, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-13'),
(164, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-14'),
(165, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-14'),
(166, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-14'),
(167, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-15'),
(168, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-15'),
(169, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-15'),
(170, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-16'),
(171, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-16'),
(172, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-16'),
(173, 'PAC RCG 004', '30', '22', '21.9', '61.4', 'On', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac12`
--

CREATE TABLE `pac12` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac12`
--

INSERT INTO `pac12` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 11', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 11', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 11', '60', '22', '22.9', '46.7', 'On', '2024-11-04'),
(76, 'RCG 11', '60', '22', '22.9', '46.7', 'On', '2024-11-04'),
(77, 'RCG 11', '60', '22', '23.7', '52.1', 'On', '2024-11-04'),
(78, 'RCG 11', '30', '22', '23.2', '62.9', 'On', '2024-11-05'),
(79, 'RCG 11', '30', '22', '23.7', '52.1', 'On', '2024-11-05'),
(80, 'RCG 11', '30', '22', '23.7', '52.1', 'On', '2024-11-06'),
(81, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-06'),
(85, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-08'),
(89, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-15'),
(90, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-16'),
(93, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-10'),
(95, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(97, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(98, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(99, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(100, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(101, 'PAC CLI 001', '30', '', '', '', 'Standby', '2024-12-28'),
(106, 'PAC CLI 001', '30', '', '', '', 'Standby', '2024-12-28'),
(107, 'PAC CLI 001', '30', '', '', '', 'Standby', '2024-12-28'),
(108, 'PAC CLI 001', '30', '', '', '', 'Standby', '2024-12-29'),
(109, 'PAC CLI 001', '30', '', '', '', 'Standby', '2024-12-29'),
(110, 'PAC CLI 001', '30', '', '', '', 'Standby', '2024-12-29'),
(112, 'PAC CLI 001', '30', '', '', '', 'Standby', '2024-12-30'),
(113, 'PAC CLI 001', '30', '', '', '', 'Standby', '2024-12-30'),
(114, 'PAC CLI 001', '30', '', '', '', 'Standby', '2024-12-30'),
(115, 'PAC CLI 001', '30', '', '', '', 'Standby', '2024-12-31'),
(118, 'PAC CLI 001', '30', '', '', '', 'Standby', '2024-12-31'),
(119, 'PAC CLI 001', '30', '', '', '', 'Standby', '2024-12-31'),
(121, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-01'),
(122, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-01'),
(123, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-01'),
(124, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-02'),
(125, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-02'),
(126, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-02'),
(127, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-03'),
(128, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-03'),
(129, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-03'),
(130, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-04'),
(131, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-04'),
(132, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-04'),
(133, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-05'),
(135, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-05'),
(136, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-05'),
(137, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-05'),
(138, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-06'),
(139, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-06'),
(140, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-06'),
(141, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-07'),
(142, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-07'),
(143, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-07'),
(144, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-08'),
(145, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-08'),
(146, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-08'),
(147, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-09'),
(148, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-09'),
(149, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-09'),
(150, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-10'),
(151, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-10'),
(152, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-10'),
(153, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-11'),
(154, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-11'),
(155, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-11'),
(156, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-12'),
(157, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-12'),
(158, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-12'),
(160, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-13'),
(161, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-13'),
(163, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-13'),
(164, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-14'),
(165, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-14'),
(166, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-14'),
(167, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-15'),
(168, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-15'),
(169, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-15'),
(170, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-16'),
(171, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-16'),
(172, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-16'),
(173, 'PAC CLI 001', '30', '', '', '', 'Standby', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac13`
--

CREATE TABLE `pac13` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac13`
--

INSERT INTO `pac13` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 11', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 11', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 11', '60', '22', '22.9', '46.7', 'On', '2024-11-04'),
(76, 'RCG 11', '60', '22', '22.9', '46.7', 'On', '2024-11-04'),
(77, 'RCG 11', '60', '22', '23.7', '52.1', 'On', '2024-11-04'),
(78, 'RCG 11', '30', '22', '23.2', '62.9', 'On', '2024-11-05'),
(79, 'RCG 11', '30', '22', '23.7', '52.1', 'On', '2024-11-05'),
(80, 'RCG 11', '30', '22', '23.7', '52.1', 'On', '2024-11-06'),
(81, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-06'),
(85, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-08'),
(89, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-15'),
(90, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-16'),
(93, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-10'),
(95, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(97, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(98, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(99, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(100, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(101, 'PAC RCG 005', '30', '22', '23.2', '52.2', 'On', '2024-12-28'),
(106, 'PAC RCG 005', '30', '22', '23.2', '52.2', 'On', '2024-12-28'),
(107, 'PAC RCG 005', '30', '22', '23.2', '52.2', 'On', '2024-12-28'),
(108, 'PAC RCG 005', '30', '22', '23.2', '52.2', 'On', '2024-12-29'),
(109, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2024-12-29'),
(110, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2024-12-29'),
(112, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2024-12-30'),
(113, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2024-12-30'),
(114, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2024-12-30'),
(115, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2024-12-31'),
(118, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2024-12-31'),
(119, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2024-12-31'),
(121, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2025-01-01'),
(122, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2025-01-01'),
(123, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2025-01-01'),
(124, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2025-01-02'),
(125, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2025-01-02'),
(126, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2025-01-02'),
(127, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2025-01-03'),
(128, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2025-01-03'),
(129, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2025-01-03'),
(130, 'PAC RCG 005', '30', '22', '22.4', '54', 'On', '2025-01-04'),
(131, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-04'),
(132, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-04'),
(133, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-05'),
(135, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-05'),
(136, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-05'),
(137, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-05'),
(138, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-06'),
(139, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-06'),
(140, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-06'),
(141, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-07'),
(142, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-07'),
(143, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-07'),
(144, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-08'),
(145, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-08'),
(146, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-08'),
(147, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-09'),
(148, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-09'),
(149, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-09'),
(150, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-10'),
(151, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-10'),
(152, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-10'),
(153, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-11'),
(154, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-11'),
(155, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-11'),
(156, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-12'),
(157, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-12'),
(158, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-12'),
(160, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-13'),
(161, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-13'),
(163, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-13'),
(164, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-14'),
(165, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-14'),
(166, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-14'),
(167, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-15'),
(168, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-15'),
(169, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-15'),
(170, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-16'),
(171, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-16'),
(172, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-16'),
(173, 'PAC RCG 005', '30', '22', '22.5', '53.5', 'On', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac14`
--

CREATE TABLE `pac14` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac14`
--

INSERT INTO `pac14` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 11', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 11', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 11', '60', '22', '22.9', '46.7', 'On', '2024-11-04'),
(76, 'RCG 11', '60', '22', '22.9', '46.7', 'On', '2024-11-04'),
(77, 'RCG 11', '60', '22', '23.7', '52.1', 'On', '2024-11-04'),
(78, 'RCG 11', '30', '22', '23.2', '62.9', 'On', '2024-11-05'),
(79, 'RCG 11', '30', '22', '23.7', '52.1', 'On', '2024-11-05'),
(80, 'RCG 11', '30', '22', '23.7', '52.1', 'On', '2024-11-06'),
(81, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-06'),
(85, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-08'),
(89, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-15'),
(90, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-16'),
(93, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-10'),
(95, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(97, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(98, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(99, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(100, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(101, 'PAC RCG 006', '30', '22', '21.1', '59.4', 'On', '2024-12-28'),
(106, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2024-12-28'),
(107, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2024-12-28'),
(108, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2024-12-29'),
(109, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2024-12-29'),
(110, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2024-12-29'),
(112, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2024-12-30'),
(113, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2024-12-30'),
(114, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2024-12-30'),
(115, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2024-12-31'),
(118, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2024-12-31'),
(119, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2024-12-31'),
(121, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2025-01-01'),
(122, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2025-01-01'),
(123, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2025-01-01'),
(124, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2025-01-02'),
(125, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2025-01-02'),
(126, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2025-01-02'),
(127, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2025-01-03'),
(128, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2025-01-03'),
(129, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2025-01-03'),
(130, 'PAC RCG 006', '30', '22', '22.5', '56.6', 'On', '2025-01-04'),
(131, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-04'),
(132, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-04'),
(133, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-05'),
(135, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-05'),
(136, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-05'),
(137, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-05'),
(138, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-06'),
(139, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-06'),
(140, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-06'),
(141, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-07'),
(142, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-07'),
(143, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-07'),
(144, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-08'),
(145, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-08'),
(146, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-08'),
(147, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-09'),
(148, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-09'),
(149, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-09'),
(150, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-10'),
(151, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-10'),
(152, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-10'),
(153, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-11'),
(154, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-11'),
(155, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-11'),
(156, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-12'),
(157, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-12'),
(158, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-12'),
(160, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-13'),
(161, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-13'),
(163, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-13'),
(164, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-14'),
(165, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-14'),
(166, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-14'),
(167, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-15'),
(168, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-15'),
(169, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-15'),
(170, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-16'),
(171, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-16'),
(172, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-16'),
(173, 'PAC RCG 006', '30', '22', '22.6', '56.1', 'On', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `pac15`
--

CREATE TABLE `pac15` (
  `id` int NOT NULL,
  `Nama` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipe` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `SetPoint` varchar(190) COLLATE utf8mb4_general_ci NOT NULL,
  `Suhu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelembaban` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pac15`
--

INSERT INTO `pac15` (`id`, `Nama`, `Tipe`, `SetPoint`, `Suhu`, `Kelembaban`, `Status`, `Date`) VALUES
(1, 'RCG 11', '60', '22', '23', '60', 'On', '2024-08-10'),
(70, 'RCG 11', '60', '22', '23', '60', 'On', '2024-11-04'),
(71, 'RCG 11', '60', '22', '22.9', '46.7', 'On', '2024-11-04'),
(76, 'RCG 11', '60', '22', '22.9', '46.7', 'On', '2024-11-04'),
(77, 'RCG 11', '60', '22', '23.7', '52.1', 'On', '2024-11-04'),
(78, 'RCG 11', '30', '22', '23.2', '62.9', 'On', '2024-11-05'),
(79, 'RCG 11', '30', '22', '23.7', '52.1', 'On', '2024-11-05'),
(80, 'RCG 11', '30', '22', '23.7', '52.1', 'On', '2024-11-06'),
(81, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-06'),
(85, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-08'),
(89, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-15'),
(90, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-11-16'),
(93, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-10'),
(95, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(97, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(98, 'RCG 11', '30', '22', '22.7', '55.4', 'On', '2024-12-11'),
(99, 'RCG 11', '30', '', '', '', 'Standby', '2024-12-11'),
(100, 'RCG 11', '30', '', '', '', 'Standby', '2024-12-11'),
(101, 'PAC RCG 007', '30', '', '', '', 'Standby', '2024-12-28'),
(106, 'PAC RCG 007', '30', '', '', '', 'Standby', '2024-12-28'),
(107, 'PAC RCG 007', '30', '', '', '', 'Standby', '2024-12-28'),
(108, 'PAC RCG 007', '30', '', '', '', 'Standby', '2024-12-29'),
(109, 'PAC RCG 007', '30', '', '', '', 'Standby', '2024-12-29'),
(110, 'PAC RCG 007', '30', '', '', '', 'Standby', '2024-12-29'),
(112, 'PAC RCG 007', '30', '', '', '', 'Standby', '2024-12-30'),
(113, 'PAC RCG 007', '30', '', '', '', 'Standby', '2024-12-30'),
(114, 'PAC RCG 007', '30', '', '', '', 'Standby', '2024-12-30'),
(115, 'PAC RCG 007', '30', '', '', '', 'Standby', '2024-12-31'),
(118, 'PAC RCG 007', '30', '', '', '', 'Standby', '2024-12-31'),
(119, 'PAC RCG 007', '30', '', '', '', 'Standby', '2024-12-31'),
(121, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-01'),
(122, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-01'),
(123, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-01'),
(124, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-02'),
(125, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-02'),
(126, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-02'),
(127, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-03'),
(128, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-03'),
(129, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-03'),
(130, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-04'),
(131, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-04'),
(132, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-04'),
(133, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-05'),
(135, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-05'),
(136, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-05'),
(137, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-05'),
(138, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-06'),
(139, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-06'),
(140, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-06'),
(141, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-07'),
(142, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-07'),
(143, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-07'),
(144, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-08'),
(145, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-08'),
(146, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-08'),
(147, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-09'),
(148, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-09'),
(149, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-09'),
(150, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-10'),
(151, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-10'),
(152, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-10'),
(153, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-11'),
(154, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-11'),
(155, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-11'),
(156, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-12'),
(157, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-12'),
(158, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-12'),
(160, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-13'),
(161, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-13'),
(163, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-13'),
(164, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-14'),
(165, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-14'),
(166, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-14'),
(167, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-15'),
(168, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-15'),
(169, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-15'),
(170, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-16'),
(171, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-16'),
(172, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-16'),
(173, 'PAC RCG 007', '30', '', '', '', 'Standby', '2025-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `rec1`
--

CREATE TABLE `rec1` (
  `id` int NOT NULL,
  `Nama` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Brand` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `BebanTotal` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `CapsRec` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `TotalLoad` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Occupancy` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Status` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `dateTime` varchar(99) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rec1`
--

INSERT INTO `rec1` (`id`, `Nama`, `Brand`, `BebanTotal`, `CapsRec`, `TotalLoad`, `Occupancy`, `Status`, `dateTime`) VALUES
(23, 'Rectifier#1.2.1', 'Huawei', '1280', '50', '50', '50', '50', ''),
(24, 'Rectifier#1.2.1', 'Huawei', '1280', '50', '50', '1', '', '2024-08-22 20:19:00'),
(25, 'Rectifier#1.2.1', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-10 07:53:00'),
(27, 'Rectifier#1.2.1', 'Huawei', '1280', '50', '50', '1', 'Off', '2024-08-14 17:17:00'),
(28, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '12.2', '0.953125', 'Off', '2024-08-15 20:00:00'),
(31, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '9.7', '0.7578125', 'ON', '2024-08-22 14:54:00'),
(42, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '9.7', '0.7578125', 'ON', '2024-08-24 01:41:00'),
(43, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '11.1', '0.8671875', 'ON', '2024-08-23 20:00:00'),
(45, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '12.7', '0.9921875', 'ON', '2024-08-26 14:00:00'),
(46, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '12.7', '0.9921875', 'ON', '2024-08-27 18:00:00'),
(47, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '12.8', '1', 'ON', '2024-08-27 20:00:00'),
(61, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '8.7', '0.6796875', 'ON', '2024-08-28 06:00:00'),
(62, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '8.7', '0.6796875', 'ON', '2024-08-30 00:00:00'),
(63, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '10.2', '0.796875', 'ON', '2024-08-30 14:00:00'),
(64, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '11.1', '0.8671875', 'ON', '2024-08-31 20:59:00'),
(70, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '11.1', '0.8671875', 'ON', '2024-11-04 02:00:00'),
(71, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '13.9', '1.0859375', 'ON', '2024-11-04 08:00:00'),
(76, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '23.1', '1.8046875', 'ON', '2024-11-04 14:00:00'),
(77, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '29.2', '2.28125', 'ON', '2024-11-04 20:00:00'),
(78, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '11.1', '0.8671875', 'ON', '2024-11-05 14:00:00'),
(79, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '14.2', '1.109375', 'On', '2024-11-05 20:00:00'),
(80, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '11.2', '0.875', 'On', '2024-11-06 07:00:00'),
(81, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '17.5', '1.3671875', 'On', '2024-11-06 14:00:00'),
(85, 'Rectifier#1.2.1', 'Huawei', '1280`', '54', '17.5', '1.3671875', 'On', '2024-11-08 13:33:00'),
(89, 'Rectifier#1.2.1', 'xiaomi', '1280`', '67', '45.9', '3.5859375', 'On', '2024-11-15 11:26:00'),
(90, 'Rectifier#1.2.1', 'xiaomi', '1280`', '67', '45.9', '3.5859375', 'On', '2024-11-16 18:41:00'),
(93, 'Rectifier#1.2.1', 'xiaomi', '1280`', '67', '45.9', '3.5859375', 'On', '2024-12-10 13:34:00'),
(95, 'Rectifier#1.2.1', 'xiaomi', '1280`', '67', '45.9', '3.5859375', 'On', '2024-12-11 10:37:00'),
(97, 'Rectifier#1.2.1', 'xiaomi', '1280`', '67', '45.9', '3.5859375', 'On', '2024-12-11 13:44:00'),
(98, 'Rectifier#1.2.1', 'xiaomi', '1280`', '67', '45.9', '3.5859375', 'On', '2024-12-11 14:25:00'),
(99, 'Rectifier#1.2.1', 'xiaomi', '1280`', '67', '45.9', '3.5859375', 'On', '2024-12-11 15:08:00'),
(100, 'Rectifier#1.2.1', 'xiaomi', '1280`', '67', '45.9', '3.5859375', 'On', '2024-12-11 15:46:00'),
(101, 'Rectifier#1', 'huawei', '1280`', '54', '45.9', '3.5859375', 'On', '2024-12-28 08:09:00'),
(106, 'Rectifier#1', 'huawei', '1280`', '54', '183', '14.296875', 'On', '2024-12-28 12:21:00'),
(107, 'Rectifier#1', 'huawei', '1280`', '54', '186', '14.53125', 'On', '2024-12-28 19:55:00'),
(108, 'Rectifier#1', 'huawei', '1280`', '54', '186', '14.53125', 'On', '2024-12-29 06:33:00'),
(109, 'Rectifier#1', 'huawei', '1280`', '54', '182', '14.21875', 'On', '2024-12-29 12:02:00'),
(110, 'Rectifier#1', 'huawei', '1280`', '54', '183', '14.296875', 'On', '2024-12-29 19:25:00'),
(112, 'Rectifier#1', 'huawei', '1280`', '54', '173', '13.515625', 'On', '2024-12-30 06:24:00'),
(113, 'Rectifier#1', 'huawei', '1280`', '54', '187', '14.609375', 'On', '2024-12-30 12:51:00'),
(114, 'Rectifier#1', 'huawei', '1280`', '54', '194', '15.15625', 'On', '2024-12-30 18:46:00'),
(115, 'Rectifier#1', 'huawei', '1280`', '54', '117', '9.140625', 'On', '2024-12-31 06:23:00'),
(118, 'Rectifier#1', 'huawei', '1280`', '54', '199', '15.546875', 'On', '2024-12-31 14:49:00'),
(119, 'Rectifier#1', 'huawei', '1280`', '54', '184', '14.375', 'On', '2024-12-31 18:11:00'),
(120, 'Rectifier#1', 'huawei', '1280`', '54', '172', '13.4375', 'On', '2025-01-01 06:32:00'),
(121, 'Rectifier#1', 'huawei', '1280`', '54', '172', '13.4375', 'On', '2025-01-01 06:37:00'),
(122, 'Rectifier#1', 'huawei', '1280`', '54', '172', '13.4375', 'On', '2025-01-01 06:47:00'),
(123, 'Rectifier#1', 'huawei', '1280`', '54', '181', '14.140625', 'On', '2025-01-01 18:24:00'),
(124, 'Rectifier#1', 'huawei', '1280`', '54', '171', '13.359375', 'On', '2025-01-02 05:40:00'),
(125, 'Rectifier#1', 'huawei', '1280`', '54', '187', '14.609375', 'On', '2025-01-02 12:34:00'),
(126, 'Rectifier#1', 'huawei', '1280`', '54', '196', '15.3125', 'On', '2025-01-02 18:45:00'),
(127, 'Rectifier#1', 'huawei', '1280`', '54', '173.2', '13.53125', 'On', '2025-01-03 05:39:00'),
(128, 'Rectifier#1', 'huawei', '1280`', '54', '181.7', '14.1953125', 'On', '2025-01-03 14:00:00'),
(129, 'Rectifier#1', 'huawei', '1280`', '54', '183.3', '14.3203125', 'On', '2025-01-03 18:58:00'),
(130, 'Rectifier#1', 'huawei', '1280`', '54', '178.2', '13.921875', 'On', '2025-01-04 07:56:00'),
(131, 'Rectifier#1', 'huawei', '1280`', '54', '112.3', '8.7734375', 'On', '2025-01-04 02:00:00'),
(132, 'Rectifier#1', 'huawei', '1280`', '54', '182.1', '14.2265625', 'On', '2025-01-04 20:00:00'),
(133, 'Rectifier#1', 'huawei', '1280`', '54', '173.8', '13.578125', 'On', '2025-01-05 06:27:00'),
(135, 'Rectifier#1', 'huawei', '1280`', '54', '173.8', '13.578125', 'On', '2025-01-05 14:50:00'),
(136, 'Rectifier#1', 'huawei', '1280`', '54', '173.8', '13.578125', 'On', '2025-01-05 20:53:00'),
(137, 'Rectifier#1', 'huawei', '1280`', '54', '173.8', '13.578125', 'On', '2025-01-05 21:01:00'),
(138, 'Rectifier#1', 'huawei', '1280`', '54', '171.8', '13.421875', 'On', '2025-01-06 07:11:00'),
(139, 'Rectifier#1', 'huawei', '1280`', '54', '181', '14.140625', 'On', '2025-01-06 13:25:00'),
(140, 'Rectifier#1', 'huawei', '1280`', '54', '192', '15', 'On', '2025-01-06 19:28:00'),
(141, 'Rectifier#1', 'huawei', '1280`', '54', '167.7', '13.1015625', 'On', '2025-01-07 06:21:00'),
(142, 'Rectifier#1', 'huawei', '1280`', '54', '181.4', '14.171875', 'On', '2025-01-07 14:00:00'),
(143, 'Rectifier#1', 'huawei', '1280`', '54', '183.8', '14.359375', 'On', '2025-01-07 19:22:00'),
(144, 'Rectifier#1', 'huawei', '1280`', '54', '180', '14.0625', 'On', '2025-01-08 08:24:00'),
(145, 'Rectifier#1', 'huawei', '1280`', '54', '186', '14.53125', 'On', '2025-01-08 13:46:00'),
(146, 'Rectifier#1', 'huawei', '1280`', '54', '181', '14.140625', 'On', '2025-01-08 19:39:00'),
(147, 'Rectifier#1', 'huawei', '1280`', '54', '174', '13.59375', 'On', '2025-01-09 08:00:00'),
(148, 'Rectifier#1', 'huawei', '1280`', '54', '198', '15.46875', 'On', '2025-01-09 13:23:00'),
(149, 'Rectifier#1', 'huawei', '1280`', '54', '198', '15.46875', 'On', '2025-01-09 19:56:00'),
(150, 'Rectifier#1', 'huawei', '1280`', '54', '176', '13.75', 'On', '2025-01-10 06:50:00'),
(151, 'Rectifier#1', 'huawei', '1280`', '54', '180', '14.0625', 'On', '2025-01-10 13:38:00'),
(152, 'Rectifier#1', 'huawei', '1280`', '54', '191', '14.921875', 'On', '2025-01-10 19:59:00'),
(153, 'Rectifier#1', 'huawei', '1280`', '54', '173.0', '13.515625', 'On', '2025-01-11 06:31:00'),
(154, 'Rectifier#1', 'huawei', '1280`', '54', '183', '14.296875', 'On', '2025-01-11 14:05:00'),
(155, 'Rectifier#1', 'huawei', '1280`', '54', '185', '14.453125', 'On', '2025-01-11 19:27:00'),
(156, 'Rectifier#1', 'huawei', '1280`', '54', '172.7', '13.4921875', 'On', '2025-01-12 07:38:00'),
(157, 'Rectifier#1', 'huawei', '1280`', '54', '184.9', '14.4453125', 'On', '2025-01-12 02:00:00'),
(158, 'Rectifier#1', 'huawei', '1280`', '54', '189.1', '14.7734375', 'On', '2025-01-12 20:28:00'),
(160, 'Rectifier#1', 'huawei', '1280`', '54', '178', '13.90625', 'On', '2025-01-13 08:31:00'),
(161, 'Rectifier#1', 'huawei', '1280`', '54', '187', '14.609375', 'On', '2025-01-13 13:50:00'),
(163, 'Rectifier#1', 'huawei', '1280`', '54', '178', '13.90625', 'On', '2025-01-13 20:29:00'),
(164, 'Rectifier#1', 'huawei', '1280`', '54', '170', '13.28125', 'On', '2025-01-14 06:54:00'),
(165, 'Rectifier#1', 'huawei', '1280`', '54', '174', '13.59375', 'On', '2025-01-14 13:52:00'),
(166, 'Rectifier#1', 'huawei', '1280`', '54', '183', '14.296875', 'On', '2025-01-14 19:18:00'),
(167, 'Rectifier#1', 'huawei', '1280`', '54', '174.8', '13.65625', 'On', '2025-01-15 06:45:00'),
(168, 'Rectifier#1', 'huawei', '1280`', '54', '179.3', '14.0078125', 'On', '2025-01-15 02:00:00'),
(169, 'Rectifier#1', 'huawei', '1280`', '54', '177.7', '13.8828125', 'On', '2025-01-15 20:29:00'),
(170, 'Rectifier#1', 'huawei', '1280`', '54', '173', '13.515625', 'On', '2025-01-16 07:15:00'),
(171, 'Rectifier#1', 'huawei', '1280`', '54', '173', '13.515625', 'On', '2025-01-16 13:56:00'),
(172, 'Rectifier#1', 'huawei', '1280`', '54', '185', '14.453125', 'On', '2025-01-16 20:18:00'),
(173, 'Rectifier#1', 'huawei', '1280`', '54', '174.7', '13.6484375', 'On', '2025-01-17 07:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `rec2`
--

CREATE TABLE `rec2` (
  `id` int NOT NULL,
  `Nama` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Brand` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `BebanTotal` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `CapsRec` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `TotalLoad` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Occupancy` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Status` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `dateTime` varchar(99) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rec2`
--

INSERT INTO `rec2` (`id`, `Nama`, `Brand`, `BebanTotal`, `CapsRec`, `TotalLoad`, `Occupancy`, `Status`, `dateTime`) VALUES
(23, 'Rectifier#1.2.2', 'Huawei', '1280', '50', '50', '50', '50', ''),
(24, 'Rectifier#1.2.2', 'Huawei', '1280', '50', '50', '1', '', '2024-08-22 20:19:00'),
(25, 'Rectifier#1.2.2', 'Huawei', '1280', '50', '50', '1', 'Off', '2024-08-10 07:53:00'),
(27, 'Rectifier#1.2.2', 'Huawei', '1280', '50', '50', '1', 'Off', '2024-08-14 17:17:00'),
(28, 'Rectifier#1.2.2', 'Huawei', '1280', '53', '0', '0', 'On', '2024-08-15 20:00:00'),
(31, 'Rectifier#1.2.2', 'Huawei', '1280', '53', '0', '0', 'On', '2024-08-22 14:54:00'),
(42, 'Rectifier#1.2.2', 'Huawei', '1280', '53', '0', '0', 'On', '2024-08-24 01:41:00'),
(43, 'Rectifier#1.2.2', 'Huawei', '1280', '53', '0', '0', 'On', '2024-08-23 20:00:00'),
(45, 'Rectifier#1.2.2', 'Huawei', '1280', '53', '0', '0', 'On', '2024-08-26 14:00:00'),
(46, 'Rectifier#1.2.2', 'Huawei', '1280', '53', '0', '0', 'On', '2024-08-27 18:00:00'),
(47, 'Rectifier#1.2.2', 'Huawei', '1280', '53', '0', '0', 'On', '2024-08-27 20:00:00'),
(61, 'Rectifier#1.2.2', 'Huawei', '1280', '53', '0', '0', 'On', '2024-08-28 06:00:00'),
(62, 'Rectifier#1.2.2', 'Huawei', '1280', '53', '0', '0', 'On', '2024-08-30 00:00:00'),
(63, 'Rectifier#1.2.2', 'Huawei', '1280', '53', '0', '0', 'On', '2024-08-30 14:00:00'),
(64, 'Rectifier#1.2.2', 'Huawei', '1280', '53', '0', '0', 'On', '2024-08-31 20:59:00'),
(70, 'Rectifier#1.2.2', 'Huawei', '1280', '53', '0', '0', 'On', '2024-11-04 02:00:00'),
(71, 'Rectifier#1.2.2', 'Huawei', '1280', '54', '0', '0', 'Off', '2024-11-04 08:00:00'),
(76, 'Rectifier#1.2.2', 'Huawei', '1280', '54', '0', '0', 'Off', '2024-11-04 14:00:00'),
(77, 'Rectifier#1.2.2', 'Huawei', '1280', '54', '0', '0', 'Off', '2024-11-04 20:00:00'),
(78, 'Rectifier#1.2.2', 'Huawei', '1280', '54', '0', '0', 'Off', '2024-11-05 14:00:00'),
(79, 'Rectifier#1.2.2', 'Huawei', '1280', '54', '0', '0', 'On', '2024-11-05 20:00:00'),
(80, 'Rectifier#1.2.2', 'Huawei', '1280', '54', '0', '0', 'On', '2024-11-06 07:00:00'),
(81, 'Rectifier#1.2.2', 'Huawei', '1280', '54', '0.0', '0', 'On', '2024-11-06 14:00:00'),
(85, 'Rectifier#1.2.2', 'Huawei', '1280', '54', '0.0', '0', 'On', '2024-11-08 13:33:00'),
(89, 'Rectifier#1.2.2', 'redmi', '1280', '77', '8.8', '0.6875', 'On', '2024-11-15 11:26:00'),
(90, 'Rectifier#1.2.2', 'redmi', '1280', '77', '8.8', '0.6875', 'On', '2024-11-16 18:41:00'),
(93, 'Rectifier#1.2.2', 'redmi', '1280', '77', '8.8', '0.6875', 'On', '2024-12-10 13:34:00'),
(95, 'Rectifier#1.2.2', 'redmi', '1280', '77', '8.8', '0.6875', 'On', '2024-12-11 10:37:00'),
(97, 'Rectifier#1.2.2', 'redmi', '1280', '77', '8.8', '0.6875', 'On', '2024-12-11 13:44:00'),
(98, 'Rectifier#1.2.2', 'redmi', '1280', '77', '8.8', '0.6875', 'On', '2024-12-11 14:25:00'),
(99, 'Rectifier#1.2.2', 'redmi', '1280', '77', '8.8', '0.6875', 'On', '2024-12-11 15:08:00'),
(100, 'Rectifier#1.2.2', 'redmi', '1280', '77', '8.8', '0.6875', 'On', '2024-12-11 15:46:00'),
(101, 'Rectifier#2', 'huawei', '1280', '54', '98.8', '7.71875', 'On', '2024-12-28 08:09:00'),
(106, 'Rectifier#2', 'huawei', '1280', '54', '198', '15.46875', 'On', '2024-12-28 12:21:00'),
(107, 'Rectifier#2', 'huawei', '1280', '54', '199', '15.546875', 'On', '2024-12-28 19:55:00'),
(108, 'Rectifier#2', 'huawei', '1280', '54', '199', '15.546875', 'On', '2024-12-29 06:33:00'),
(109, 'Rectifier#2', 'huawei', '1280', '54', '197', '15.390625', 'On', '2024-12-29 12:02:00'),
(110, 'Rectifier#2', 'huawei', '1280', '54', '197', '15.390625', 'On', '2024-12-29 19:25:00'),
(112, 'Rectifier#2', 'huawei', '1280', '54', '193', '15.078125', 'On', '2024-12-30 06:24:00'),
(113, 'Rectifier#2', 'huawei', '1280', '54', '198', '15.46875', 'On', '2024-12-30 12:51:00'),
(114, 'Rectifier#2', 'huawei', '1280', '54', '189', '14.765625', 'On', '2024-12-30 18:46:00'),
(115, 'Rectifier#2', 'huawei', '1280', '54', '192', '15', 'On', '2024-12-31 06:23:00'),
(118, 'Rectifier#2', 'huawei', '1280', '54', '194', '15.15625', 'On', '2024-12-31 14:49:00'),
(119, 'Rectifier#2', 'huawei', '1280', '54', '195', '15.234375', 'On', '2024-12-31 18:11:00'),
(120, 'Rectifier#2', 'huawei', '1280', '54', '195', '15.234375', 'On', '2025-01-01 06:32:00'),
(121, 'Rectifier#2', 'huawei', '1280', '54', '192', '15', 'On', '2025-01-01 06:37:00'),
(122, 'Rectifier#2', 'huawei', '1280', '54', '192', '15', 'On', '2025-01-01 06:47:00'),
(123, 'Rectifier#2', 'huawei', '1280', '54', '196', '15.3125', 'On', '2025-01-01 18:24:00'),
(124, 'Rectifier#2', 'huawei', '1280', '54', '192', '15', 'On', '2025-01-02 05:40:00'),
(125, 'Rectifier#2', 'huawei', '1280', '54', '200', '15.625', 'On', '2025-01-02 12:34:00'),
(126, 'Rectifier#2', 'huawei', '1280', '54', '202', '15.78125', 'On', '2025-01-02 18:45:00'),
(127, 'Rectifier#2', 'huawei', '1280', '54', '188.0', '14.6875', 'On', '2025-01-03 05:39:00'),
(128, 'Rectifier#2', 'huawei', '1280', '54', '196.8', '15.375', 'On', '2025-01-03 14:00:00'),
(129, 'Rectifier#2', 'huawei', '1280', '54', '199.5', '15.5859375', 'On', '2025-01-03 18:58:00'),
(130, 'Rectifier#2', 'huawei', '1280', '54', '194.0', '15.15625', 'On', '2025-01-04 07:56:00'),
(131, 'Rectifier#2', 'huawei', '1280', '54', '254.4', '19.875', 'On', '2025-01-04 02:00:00'),
(132, 'Rectifier#2', 'huawei', '1280', '54', '201.2', '15.71875', 'On', '2025-01-04 20:00:00'),
(133, 'Rectifier#2', 'huawei', '1280', '54', '193.2', '15.09375', 'On', '2025-01-05 06:27:00'),
(135, 'Rectifier#2', 'huawei', '1280', '54', '193.2', '15.09375', 'On', '2025-01-05 14:50:00'),
(136, 'Rectifier#2', 'huawei', '1280', '54', '193.2', '15.09375', 'On', '2025-01-05 20:53:00'),
(137, 'Rectifier#2', 'huawei', '1280', '54', '193.2', '15.09375', 'On', '2025-01-05 21:01:00'),
(138, 'Rectifier#2', 'huawei', '1280', '54', '193.9', '15.1484375', 'On', '2025-01-06 07:11:00'),
(139, 'Rectifier#2', 'huawei', '1280', '54', '190', '14.84375', 'On', '2025-01-06 13:25:00'),
(140, 'Rectifier#2', 'huawei', '1280', '54', '198', '15.46875', 'On', '2025-01-06 19:28:00'),
(141, 'Rectifier#2', 'huawei', '1280', '54', '192.2', '15.015625', 'On', '2025-01-07 06:21:00'),
(142, 'Rectifier#2', 'huawei', '1280', '54', '197.7', '15.4453125', 'On', '2025-01-07 14:00:00'),
(143, 'Rectifier#2', 'huawei', '1280', '54', '197.7', '15.4453125', 'On', '2025-01-07 19:22:00'),
(144, 'Rectifier#2', 'huawei', '1280', '54', '195', '15.234375', 'On', '2025-01-08 08:24:00'),
(145, 'Rectifier#2', 'huawei', '1280', '54', '199', '15.546875', 'On', '2025-01-08 13:46:00'),
(146, 'Rectifier#2', 'huawei', '1280', '54', '200', '15.625', 'On', '2025-01-08 19:39:00'),
(147, 'Rectifier#2', 'huawei', '1280', '54', '197', '15.390625', 'On', '2025-01-09 08:00:00'),
(148, 'Rectifier#2', 'huawei', '1280', '54', '188', '14.6875', 'On', '2025-01-09 13:23:00'),
(149, 'Rectifier#2', 'huawei', '1280', '54', '188', '14.6875', 'On', '2025-01-09 19:56:00'),
(150, 'Rectifier#2', 'huawei', '1280', '54', '189', '14.765625', 'On', '2025-01-10 06:50:00'),
(151, 'Rectifier#2', 'huawei', '1280', '54', '197', '15.390625', 'On', '2025-01-10 13:38:00'),
(152, 'Rectifier#2', 'huawei', '1280', '54', '200', '15.625', 'On', '2025-01-10 19:59:00'),
(153, 'Rectifier#2', 'huawei', '1280', '54', '190.6', '14.890625', 'On', '2025-01-11 06:31:00'),
(154, 'Rectifier#2', 'huawei', '1280', '54', '202', '15.78125', 'On', '2025-01-11 14:05:00'),
(155, 'Rectifier#2', 'huawei', '1280', '54', '201', '15.703125', 'On', '2025-01-11 19:27:00'),
(156, 'Rectifier#2', 'huawei', '1280', '54', '198.0', '15.46875', 'On', '2025-01-12 07:38:00'),
(157, 'Rectifier#2', 'huawei', '1280', '54', '198.2', '15.484375', 'On', '2025-01-12 02:00:00'),
(158, 'Rectifier#2', 'huawei', '1280', '54', '204.9', '16.0078125', 'On', '2025-01-12 20:28:00'),
(160, 'Rectifier#2', 'huawei', '1280', '54', '195', '15.234375', 'On', '2025-01-13 08:31:00'),
(161, 'Rectifier#2', 'huawei', '1280', '54', '195', '15.234375', 'On', '2025-01-13 13:50:00'),
(163, 'Rectifier#2', 'huawei', '1280', '54', '201', '15.703125', 'On', '2025-01-13 20:29:00'),
(164, 'Rectifier#2', 'huawei', '1280', '54', '194', '15.15625', 'On', '2025-01-14 06:54:00'),
(165, 'Rectifier#2', 'huawei', '1280', '54', '202', '15.78125', 'On', '2025-01-14 13:52:00'),
(166, 'Rectifier#2', 'huawei', '1280', '54', '200', '15.625', 'On', '2025-01-14 19:18:00'),
(167, 'Rectifier#2', 'huawei', '1280', '54', '190.7', '14.8984375', 'On', '2025-01-15 06:45:00'),
(168, 'Rectifier#2', 'huawei', '1280', '54', '197.3', '15.4140625', 'On', '2025-01-15 02:00:00'),
(169, 'Rectifier#2', 'huawei', '1280', '54', '203.1', '15.8671875', 'On', '2025-01-15 20:29:00'),
(170, 'Rectifier#2', 'huawei', '1280', '54', '197', '15.390625', 'On', '2025-01-16 07:15:00'),
(171, 'Rectifier#2', 'huawei', '1280', '54', '197', '15.390625', 'On', '2025-01-16 13:56:00'),
(172, 'Rectifier#2', 'huawei', '1280', '54', '202', '15.78125', 'On', '2025-01-16 20:18:00'),
(173, 'Rectifier#2', 'huawei', '1280', '54', '196.3', '15.3359375', 'On', '2025-01-17 07:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `rec3`
--

CREATE TABLE `rec3` (
  `id` int NOT NULL,
  `Nama` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Brand` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `BebanTotal` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `CapsRec` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `TotalLoad` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Occupancy` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Status` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `dateTime` varchar(99) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rec3`
--

INSERT INTO `rec3` (`id`, `Nama`, `Brand`, `BebanTotal`, `CapsRec`, `TotalLoad`, `Occupancy`, `Status`, `dateTime`) VALUES
(23, 'Rectifier#1.2.13', 'Huawei', '1280', '50', '50', '50', '50', ''),
(24, 'Rectifier#1.2.13', 'Huawei', '1280', '50', '50', '1', '', '2024-08-22 20:19:00'),
(25, 'Rectifier#1.2.13', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-10 07:53:00'),
(27, 'Rectifier#1.2.13', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-14 17:17:00'),
(28, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '8.9', '0.6953125', 'On', '2024-08-15 20:00:00'),
(31, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '8.9', '0.6953125', 'On', '2024-08-22 14:54:00'),
(42, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '8.9', '0.6953125', 'On', '2024-08-24 01:41:00'),
(43, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '8.9', '0.6953125', 'On', '2024-08-23 20:00:00'),
(45, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '8.9', '0.6953125', 'On', '2024-08-26 14:00:00'),
(46, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '8.9', '0.6953125', 'On', '2024-08-27 18:00:00'),
(47, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '8.9', '0.6953125', 'On', '2024-08-27 20:00:00'),
(61, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '8.9', '0.6953125', 'On', '2024-08-28 06:00:00'),
(62, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '8.9', '0.6953125', 'On', '2024-08-30 00:00:00'),
(63, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '8.9', '0.6953125', 'On', '2024-08-30 14:00:00'),
(64, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '8.9', '0.6953125', 'On', '2024-08-31 20:59:00'),
(70, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '8.9', '0.6953125', 'On', '2024-11-04 02:00:00'),
(71, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '9.1', '0.7109375', 'On', '2024-11-04 08:00:00'),
(76, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '9.1', '0.7109375', 'On', '2024-11-04 14:00:00'),
(77, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '9.6', '0.75', 'On', '2024-11-04 20:00:00'),
(78, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '9.6', '0.75', 'On', '2024-11-05 14:00:00'),
(79, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '9.6', '0.75', 'On', '2024-11-05 20:00:00'),
(80, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '9.6', '0.75', 'On', '2024-11-06 07:00:00'),
(81, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '10.7', '0.75', 'On', '2024-11-06 14:00:00'),
(85, 'Rectifier#1.2.13', 'Huawei', '1280', '54', '10.7', '0.8359375', 'On', '2024-11-08 13:33:00'),
(89, 'Rectifier#1.2.13', 'realme', '1280', '32', '77.7', '6.0703125', 'On', '2024-11-15 11:26:00'),
(90, 'Rectifier#1.2.13', 'realme', '1280', '32', '77.7', '6.0703125', 'On', '2024-11-16 18:41:00'),
(93, 'Rectifier#1.2.13', 'realme', '1280', '32', '77.7', '6.0703125', 'On', '2024-12-10 13:34:00'),
(95, 'Rectifier#1.2.13', 'realme', '1280', '32', '77.7', '6.0703125', 'On', '2024-12-11 10:37:00'),
(97, 'Rectifier#1.2.13', 'realme', '1280', '32', '77.7', '6.0703125', 'On', '2024-12-11 13:44:00'),
(98, 'Rectifier#1.2.13', 'realme', '1280', '32', '77.7', '6.0703125', 'On', '2024-12-11 14:25:00'),
(99, 'Rectifier#1.2.13', 'realme', '1280', '32', '77.7', '6.0703125', 'On', '2024-12-11 15:08:00'),
(100, 'Rectifier#1.2.13', 'realme', '1280', '32', '77.7', '6.0703125', 'On', '2024-12-11 15:46:00'),
(101, 'Rectifier#3', 'huawei', '1280', '54', '77.7', '6.0703125', 'On', '2024-12-28 08:09:00'),
(106, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2024-12-28 12:21:00'),
(107, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2024-12-28 19:55:00'),
(108, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2024-12-29 06:33:00'),
(109, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2024-12-29 12:02:00'),
(110, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2024-12-29 19:25:00'),
(112, 'Rectifier#3', 'huawei', '1280', '54', '198', '15.46875', 'On', '2024-12-30 06:24:00'),
(113, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2024-12-30 12:51:00'),
(114, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2024-12-30 18:46:00'),
(115, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2024-12-31 06:23:00'),
(118, 'Rectifier#3', 'huawei', '1280', '54', '185', '14.453125', 'On', '2024-12-31 14:49:00'),
(119, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2024-12-31 18:11:00'),
(120, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2025-01-01 06:32:00'),
(121, 'Rectifier#3', 'huawei', '1280', '54', '201', '15.703125', 'On', '2025-01-01 06:37:00'),
(122, 'Rectifier#3', 'huawei', '1280', '54', '201', '15.703125', 'On', '2025-01-01 06:47:00'),
(123, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2025-01-01 18:24:00'),
(124, 'Rectifier#3', 'huawei', '1280', '54', '200', '15.625', 'On', '2025-01-02 05:40:00'),
(125, 'Rectifier#3', 'huawei', '1280', '54', '200', '15.625', 'On', '2025-01-02 12:34:00'),
(126, 'Rectifier#3', 'huawei', '1280', '54', '199', '15.546875', 'On', '2025-01-02 18:45:00'),
(127, 'Rectifier#3', 'huawei', '1280', '54', '200.8', '15.6875', 'On', '2025-01-03 05:39:00'),
(128, 'Rectifier#3', 'huawei', '1280', '54', '202.4', '15.8125', 'On', '2025-01-03 14:00:00'),
(129, 'Rectifier#3', 'huawei', '1280', '54', '199.8', '15.609375', 'On', '2025-01-03 18:58:00'),
(130, 'Rectifier#3', 'huawei', '1280', '54', '200.0', '15.625', 'On', '2025-01-04 07:56:00'),
(131, 'Rectifier#3', 'huawei', '1280', '54', '201.5', '15.7421875', 'On', '2025-01-04 02:00:00'),
(132, 'Rectifier#3', 'huawei', '1280', '54', '202.1', '15.7890625', 'On', '2025-01-04 20:00:00'),
(133, 'Rectifier#3', 'huawei', '1280', '54', '199.1', '15.5546875', 'On', '2025-01-05 06:27:00'),
(135, 'Rectifier#3', 'huawei', '1280', '54', '199.1', '15.5546875', 'On', '2025-01-05 14:50:00'),
(136, 'Rectifier#3', 'huawei', '1280', '54', '199.1', '15.5546875', 'On', '2025-01-05 20:53:00'),
(137, 'Rectifier#3', 'huawei', '1280', '54', '199.1', '15.5546875', 'On', '2025-01-05 21:01:00'),
(138, 'Rectifier#3', 'huawei', '1280', '54', '203.8', '15.921875', 'On', '2025-01-06 07:11:00'),
(139, 'Rectifier#3', 'huawei', '1280', '54', '203', '15.859375', 'On', '2025-01-06 13:25:00'),
(140, 'Rectifier#3', 'huawei', '1280', '54', '203', '15.859375', 'On', '2025-01-06 19:28:00'),
(141, 'Rectifier#3', 'huawei', '1280', '54', '202.7', '15.8359375', 'On', '2025-01-07 06:21:00'),
(142, 'Rectifier#3', 'huawei', '1280', '54', '204.8', '16', 'On', '2025-01-07 14:00:00'),
(143, 'Rectifier#3', 'huawei', '1280', '54', '205.3', '16.0390625', 'On', '2025-01-07 19:22:00'),
(144, 'Rectifier#3', 'huawei', '1280', '54', '201', '15.703125', 'On', '2025-01-08 08:24:00'),
(145, 'Rectifier#3', 'huawei', '1280', '54', '204', '15.9375', 'On', '2025-01-08 13:46:00'),
(146, 'Rectifier#3', 'huawei', '1280', '54', '205', '16.015625', 'On', '2025-01-08 19:39:00'),
(147, 'Rectifier#3', 'huawei', '1280', '54', '204', '15.9375', 'On', '2025-01-09 08:00:00'),
(148, 'Rectifier#3', 'huawei', '1280', '54', '203', '15.859375', 'On', '2025-01-09 13:23:00'),
(149, 'Rectifier#3', 'huawei', '1280', '54', '203', '15.859375', 'On', '2025-01-09 19:56:00'),
(150, 'Rectifier#3', 'huawei', '1280', '54', '203', '15.859375', 'On', '2025-01-10 06:50:00'),
(151, 'Rectifier#3', 'huawei', '1280', '54', '205', '16.015625', 'On', '2025-01-10 13:38:00'),
(152, 'Rectifier#3', 'huawei', '1280', '54', '204', '15.9375', 'On', '2025-01-10 19:59:00'),
(153, 'Rectifier#3', 'huawei', '1280', '54', '203.0', '15.859375', 'On', '2025-01-11 06:31:00'),
(154, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2025-01-11 14:05:00'),
(155, 'Rectifier#3', 'huawei', '1280', '54', '205', '16.015625', 'On', '2025-01-11 19:27:00'),
(156, 'Rectifier#3', 'huawei', '1280', '54', '199.3', '15.5703125', 'On', '2025-01-12 07:38:00'),
(157, 'Rectifier#3', 'huawei', '1280', '54', '204.8', '16', 'On', '2025-01-12 02:00:00'),
(158, 'Rectifier#3', 'huawei', '1280', '54', '203.6', '15.90625', 'On', '2025-01-12 20:28:00'),
(160, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2025-01-13 08:31:00'),
(161, 'Rectifier#3', 'huawei', '1280', '54', '202', '15.78125', 'On', '2025-01-13 13:50:00'),
(163, 'Rectifier#3', 'huawei', '1280', '54', '203', '15.859375', 'On', '2025-01-13 20:29:00'),
(164, 'Rectifier#3', 'huawei', '1280', '54', '204', '15.9375', 'On', '2025-01-14 06:54:00'),
(165, 'Rectifier#3', 'huawei', '1280', '54', '203', '15.859375', 'On', '2025-01-14 13:52:00'),
(166, 'Rectifier#3', 'huawei', '1280', '54', '205', '16.015625', 'On', '2025-01-14 19:18:00'),
(167, 'Rectifier#3', 'huawei', '1280', '54', '203.6', '15.90625', 'On', '2025-01-15 06:45:00'),
(168, 'Rectifier#3', 'huawei', '1280', '54', '205.7', '16.0703125', 'On', '2025-01-15 02:00:00'),
(169, 'Rectifier#3', 'huawei', '1280', '54', '203.8', '15.921875', 'On', '2025-01-15 20:29:00'),
(170, 'Rectifier#3', 'huawei', '1280', '54', '204', '15.9375', 'On', '2025-01-16 07:15:00'),
(171, 'Rectifier#3', 'huawei', '1280', '54', '204', '15.9375', 'On', '2025-01-16 13:56:00'),
(172, 'Rectifier#3', 'huawei', '1280', '54', '204', '15.9375', 'On', '2025-01-16 20:18:00'),
(173, 'Rectifier#3', 'huawei', '1280', '54', '204.2', '15.953125', 'On', '2025-01-17 07:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `rec4`
--

CREATE TABLE `rec4` (
  `id` int NOT NULL,
  `Nama` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Brand` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `BebanTotal` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `CapsRec` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `TotalLoad` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Occupancy` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Status` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `dateTime` varchar(99) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rec4`
--

INSERT INTO `rec4` (`id`, `Nama`, `Brand`, `BebanTotal`, `CapsRec`, `TotalLoad`, `Occupancy`, `Status`, `dateTime`) VALUES
(23, 'Rectifier#1.2.4', 'Huawei', '1280', '50', '50', '50', '50', ''),
(24, 'Rectifier#1.2.4', 'Huawei', '1280', '50', '50', '1', '', '2024-08-22 20:19:00'),
(25, 'Rectifier#1.2.4', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-10 07:53:00'),
(27, 'Rectifier#1.2.4', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-14 17:17:00'),
(28, 'Rectifier#1.2.4', 'Huawei', '1280', '53', '160.9', '12.5703125', 'On', '2024-08-15 20:00:00'),
(31, 'Rectifier#1.2.4', 'Huawei', '1280', '53', '100.6', '7.859375', 'On', '2024-08-22 14:54:00'),
(42, 'Rectifier#1.2.4', 'Huawei', '1280', '53', '100.6', '7.859375', 'On', '2024-08-24 01:41:00'),
(43, 'Rectifier#1.2.4', 'Huawei', '1280', '53', '154.6', '12.078125', 'On', '2024-08-23 20:00:00'),
(45, 'Rectifier#1.2.4', 'Huawei', '1280', '53', '167.8', '13.109375', 'On', '2024-08-26 14:00:00'),
(46, 'Rectifier#1.2.4', 'Huawei', '1280', '53', '167.8', '13.109375', 'On', '2024-08-27 18:00:00'),
(47, 'Rectifier#1.2.4', 'Huawei', '1280', '53', '156.1', '12.1953125', 'On', '2024-08-27 20:00:00'),
(61, 'Rectifier#1.2.4', 'Huawei', '1280', '53', '150.2', '11.734375', 'On', '2024-08-28 06:00:00'),
(62, 'Rectifier#1.2.4', 'Huawei', '1280', '53', '150.2', '11.734375', 'On', '2024-08-30 00:00:00'),
(63, 'Rectifier#1.2.4', 'Huawei', '1280', '53', '156.1', '12.1953125', 'On', '2024-08-30 14:00:00'),
(64, 'Rectifier#1.2.4', 'Huawei', '1280', '53', '158.0', '12.34375', 'On', '2024-08-31 20:59:00'),
(70, 'Rectifier#1.2.4', 'Huawei', '1280', '53', '158.0', '12.34375', 'On', '2024-11-04 02:00:00'),
(71, 'Rectifier#1.2.4', 'Huawei', '1280', '54', '151.3', '11.8203125', 'On', '2024-11-04 08:00:00'),
(76, 'Rectifier#1.2.4', 'Huawei', '1280', '54', '151.5', '11.8359375', 'On', '2024-11-04 14:00:00'),
(77, 'Rectifier#1.2.4', 'Huawei', '1280', '54', '152.3', '11.8984375', 'On', '2024-11-04 20:00:00'),
(78, 'Rectifier#1.2.4', 'Huawei', '1280', '54', '151.2', '11.8125', 'On', '2024-11-05 14:00:00'),
(79, 'Rectifier#1.2.4', 'Huawei', '1280', '54', '157.8', '12.328125', 'On', '2024-11-05 20:00:00'),
(80, 'Rectifier#1.2.4', 'Huawei', '1280', '54', '147.1', '11.4921875', 'On', '2024-11-06 07:00:00'),
(81, 'Rectifier#1.2.4', 'Huawei', '1280', '54', '154.1', '11.4921875', 'On', '2024-11-06 14:00:00'),
(85, 'Rectifier#1.2.4', 'Huawei', '1280', '54', '154.1', '12.0390625', 'On', '2024-11-08 13:33:00'),
(89, 'Rectifier#1.2.4', 'poco', '1280', '44', '88.9', '6.9453125', 'On', '2024-11-15 11:26:00'),
(90, 'Rectifier#1.2.4', 'poco', '1280', '44', '88.9', '6.9453125', 'On', '2024-11-16 18:41:00'),
(93, 'Rectifier#1.2.4', 'poco', '1280', '44', '88.9', '6.9453125', 'On', '2024-12-10 13:34:00'),
(95, 'Rectifier#1.2.4', 'poco', '1280', '44', '88.9', '6.9453125', 'On', '2024-12-11 10:37:00'),
(97, 'Rectifier#1.2.4', 'poco', '1280', '44', '88.9', '6.9453125', 'On', '2024-12-11 13:44:00'),
(98, 'Rectifier#1.2.4', 'poco', '1280', '44', '88.9', '6.9453125', 'On', '2024-12-11 14:25:00'),
(99, 'Rectifier#1.2.4', 'poco', '1280', '44', '88.9', '6.9453125', 'On', '2024-12-11 15:08:00'),
(100, 'Rectifier#1.2.4', 'poco', '1280', '44', '88.9', '6.9453125', 'On', '2024-12-11 15:46:00'),
(101, 'Rectifier#4', 'huawei', '1280', '54', '88.9', '6.9453125', 'On', '2024-12-28 08:09:00'),
(106, 'Rectifier#4', 'huawei', '1280', '54', '230', '17.96875', 'On', '2024-12-28 12:21:00'),
(107, 'Rectifier#4', 'huawei', '1280', '54', '230', '17.96875', 'On', '2024-12-28 19:55:00'),
(108, 'Rectifier#4', 'huawei', '1280', '54', '230', '17.96875', 'On', '2024-12-29 06:33:00'),
(109, 'Rectifier#4', 'huawei', '1280', '54', '229', '17.890625', 'On', '2024-12-29 12:02:00'),
(110, 'Rectifier#4', 'huawei', '1280', '54', '229', '17.890625', 'On', '2024-12-29 19:25:00'),
(112, 'Rectifier#4', 'huawei', '1280', '54', '229', '17.890625', 'On', '2024-12-30 06:24:00'),
(113, 'Rectifier#4', 'huawei', '1280', '54', '228', '17.8125', 'On', '2024-12-30 12:51:00'),
(114, 'Rectifier#4', 'huawei', '1280', '54', '2229', '174.140625', 'On', '2024-12-30 18:46:00'),
(115, 'Rectifier#4', 'huawei', '1280', '54', '226', '17.65625', 'On', '2024-12-31 06:23:00'),
(118, 'Rectifier#4', 'huawei', '1280', '54', '232', '18.125', 'On', '2024-12-31 14:49:00'),
(119, 'Rectifier#4', 'huawei', '1280', '54', '229', '17.890625', 'On', '2024-12-31 18:11:00'),
(120, 'Rectifier#4', 'huawei', '1280', '54', '229', '17.890625', 'On', '2025-01-01 06:32:00'),
(121, 'Rectifier#4', 'huawei', '1280', '54', '225', '17.578125', 'On', '2025-01-01 06:37:00'),
(122, 'Rectifier#4', 'huawei', '1280', '54', '225', '17.578125', 'On', '2025-01-01 06:47:00'),
(123, 'Rectifier#4', 'huawei', '1280', '54', '229', '17.890625', 'On', '2025-01-01 18:24:00'),
(124, 'Rectifier#4', 'huawei', '1280', '54', '224', '17.5', 'On', '2025-01-02 05:40:00'),
(125, 'Rectifier#4', 'huawei', '1280', '54', '233', '18.203125', 'On', '2025-01-02 12:34:00'),
(126, 'Rectifier#4', 'huawei', '1280', '54', '232', '18.125', 'On', '2025-01-02 18:45:00'),
(127, 'Rectifier#4', 'huawei', '1280', '54', '224.8', '17.5625', 'On', '2025-01-03 05:39:00'),
(128, 'Rectifier#4', 'huawei', '1280', '54', '229.8', '17.953125', 'On', '2025-01-03 14:00:00'),
(129, 'Rectifier#4', 'huawei', '1280', '54', '233.2', '18.21875', 'On', '2025-01-03 18:58:00'),
(130, 'Rectifier#4', 'huawei', '1280', '54', '231.7', '18.1015625', 'On', '2025-01-04 07:56:00'),
(131, 'Rectifier#4', 'huawei', '1280', '54', '229.0', '17.890625', 'On', '2025-01-04 02:00:00'),
(132, 'Rectifier#4', 'huawei', '1280', '54', '228.8', '17.875', 'On', '2025-01-04 20:00:00'),
(133, 'Rectifier#4', 'huawei', '1280', '54', '226.4', '17.6875', 'On', '2025-01-05 06:27:00'),
(135, 'Rectifier#4', 'huawei', '1280', '54', '226.4', '17.6875', 'On', '2025-01-05 14:50:00'),
(136, 'Rectifier#4', 'huawei', '1280', '54', '226.4', '17.6875', 'On', '2025-01-05 20:53:00'),
(137, 'Rectifier#4', 'huawei', '1280', '54', '226.4', '17.6875', 'On', '2025-01-05 21:01:00'),
(138, 'Rectifier#4', 'huawei', '1280', '54', '223.1', '17.4296875', 'On', '2025-01-06 07:11:00'),
(139, 'Rectifier#4', 'huawei', '1280', '54', '225', '17.578125', 'On', '2025-01-06 13:25:00'),
(140, 'Rectifier#4', 'huawei', '1280', '54', '230', '17.96875', 'On', '2025-01-06 19:28:00'),
(141, 'Rectifier#4', 'huawei', '1280', '54', '222.1', '17.3515625', 'On', '2025-01-07 06:21:00'),
(142, 'Rectifier#4', 'huawei', '1280', '54', '225.4', '17.609375', 'On', '2025-01-07 14:00:00'),
(143, 'Rectifier#4', 'huawei', '1280', '54', '232', '18.125', 'On', '2025-01-07 19:22:00'),
(144, 'Rectifier#4', 'huawei', '1280', '54', '227', '17.734375', 'On', '2025-01-08 08:24:00'),
(145, 'Rectifier#4', 'huawei', '1280', '54', '229', '17.890625', 'On', '2025-01-08 13:46:00'),
(146, 'Rectifier#4', 'huawei', '1280', '54', '226', '17.65625', 'On', '2025-01-08 19:39:00'),
(147, 'Rectifier#4', 'huawei', '1280', '54', '223', '17.421875', 'On', '2025-01-09 08:00:00'),
(148, 'Rectifier#4', 'huawei', '1280', '54', '228', '17.8125', 'On', '2025-01-09 13:23:00'),
(149, 'Rectifier#4', 'huawei', '1280', '54', '228', '17.8125', 'On', '2025-01-09 19:56:00'),
(150, 'Rectifier#4', 'huawei', '1280', '54', '222', '17.34375', 'On', '2025-01-10 06:50:00'),
(151, 'Rectifier#4', 'huawei', '1280', '54', '225', '17.578125', 'On', '2025-01-10 13:38:00'),
(152, 'Rectifier#4', 'huawei', '1280', '54', '231', '18.046875', 'On', '2025-01-10 19:59:00'),
(153, 'Rectifier#4', 'huawei', '1280', '54', '221.6', '17.3125', 'On', '2025-01-11 06:31:00'),
(154, 'Rectifier#4', 'huawei', '1280', '54', '230', '17.96875', 'On', '2025-01-11 14:05:00'),
(155, 'Rectifier#4', 'huawei', '1280', '54', '227', '17.734375', 'On', '2025-01-11 19:27:00'),
(156, 'Rectifier#4', 'huawei', '1280', '54', '231.2', '18.0625', 'On', '2025-01-12 07:38:00'),
(157, 'Rectifier#4', 'huawei', '1280', '54', '225.8', '17.640625', 'On', '2025-01-12 02:00:00'),
(158, 'Rectifier#4', 'huawei', '1280', '54', '231.2', '18.0625', 'On', '2025-01-12 20:28:00'),
(160, 'Rectifier#4', 'huawei', '1280', '54', '227', '17.734375', 'On', '2025-01-13 08:31:00'),
(161, 'Rectifier#4', 'huawei', '1280', '54', '229', '17.890625', 'On', '2025-01-13 13:50:00'),
(163, 'Rectifier#4', 'huawei', '1280', '54', '230', '17.96875', 'On', '2025-01-13 20:29:00'),
(164, 'Rectifier#4', 'huawei', '1280', '54', '222', '17.34375', 'On', '2025-01-14 06:54:00'),
(165, 'Rectifier#4', 'huawei', '1280', '54', '226', '17.65625', 'On', '2025-01-14 13:52:00'),
(166, 'Rectifier#4', 'huawei', '1280', '54', '226', '17.65625', 'On', '2025-01-14 19:18:00'),
(167, 'Rectifier#4', 'huawei', '1280', '54', '222.4', '17.375', 'On', '2025-01-15 06:45:00'),
(168, 'Rectifier#4', 'huawei', '1280', '54', '226.2', '17.671875', 'On', '2025-01-15 02:00:00'),
(169, 'Rectifier#4', 'huawei', '1280', '54', '231.1', '18.0546875', 'On', '2025-01-15 20:29:00'),
(170, 'Rectifier#4', 'huawei', '1280', '54', '224', '17.5', 'On', '2025-01-16 07:15:00'),
(171, 'Rectifier#4', 'huawei', '1280', '54', '224', '17.5', 'On', '2025-01-16 13:56:00'),
(172, 'Rectifier#4', 'huawei', '1280', '54', '230', '17.96875', 'On', '2025-01-16 20:18:00'),
(173, 'Rectifier#4', 'huawei', '1280', '54', '224.2', '17.515625', 'On', '2025-01-17 07:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `rec5`
--

CREATE TABLE `rec5` (
  `id` int NOT NULL,
  `Nama` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Brand` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `BebanTotal` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `CapsRec` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `TotalLoad` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Occupancy` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Status` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `dateTime` varchar(99) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rec5`
--

INSERT INTO `rec5` (`id`, `Nama`, `Brand`, `BebanTotal`, `CapsRec`, `TotalLoad`, `Occupancy`, `Status`, `dateTime`) VALUES
(23, 'Rectifier#1.2.5', 'Huawei', '1280', '50', '50', '50', '50', ''),
(24, 'Rectifier#1.2.5', 'Huawei', '1280', '50', '50', '1', '', '2024-08-22 20:19:00'),
(25, 'Rectifier#1.2.5', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-10 07:53:00'),
(27, 'Rectifier#1.2.5', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-14 17:17:00'),
(28, 'Rectifier#1.2.5', 'Huawei', '1280', '54', '122', '9.53125', 'On', '2024-08-15 20:00:00'),
(31, 'Rectifier#1.2.5', 'Huawei', '1280', '54', '100.2', '7.828125', 'On', '2024-08-22 14:54:00'),
(42, 'Rectifier#1.2.5', 'Huawei', '1280', '54', '100.2', '7.828125', 'On', '2024-08-24 01:41:00'),
(43, 'Rectifier#1.2.5', 'Huawei', '1280', '54', '156.1', '12.1953125', 'On', '2024-08-23 20:00:00'),
(45, 'Rectifier#1.2.5', 'Huawei', '1280', '54', '120.1', '9.3828125', 'On', '2024-08-26 14:00:00'),
(46, 'Rectifier#1.2.5', 'Huawei', '1280', '54', '120.1', '9.3828125', 'On', '2024-08-27 18:00:00'),
(47, 'Rectifier#1.2.5', 'Huawei', '1280', '54', '120.3', '9.3984375', 'On', '2024-08-27 20:00:00'),
(61, 'Rectifier#1.2.5', 'Huawei', '1280', '54', '119.0', '9.296875', 'On', '2024-08-28 06:00:00'),
(62, 'Rectifier#1.2.5', 'Huawei', '1280', '54', '119.0', '9.296875', 'On', '2024-08-30 00:00:00'),
(63, 'Rectifier#1.2.5', 'Huawei', '1280', '54', '120.4', '9.40625', 'On', '2024-08-30 14:00:00'),
(64, 'Rectifier#1.2.5', 'Huawei', '1280', '54', '120.3', '9.3984375', 'On', '2024-08-31 20:59:00'),
(70, 'Rectifier#1.2.5', 'Huawei', '1280', '54', '120.3', '9.3984375', 'On', '2024-11-04 02:00:00'),
(71, 'Rectifier#1.2.5', 'Huawei', '1280', '53.9', '119.8', '9.359375', 'On', '2024-11-04 08:00:00'),
(76, 'Rectifier#1.2.5', 'Huawei', '1280', '53.9', '121.8', '9.515625', 'On', '2024-11-04 14:00:00'),
(77, 'Rectifier#1.2.5', 'Huawei', '1280', '53.9', '114.0', '8.90625', 'On', '2024-11-04 20:00:00'),
(78, 'Rectifier#1.2.5', 'Huawei', '1280', '53.9', '112', '8.75', 'On', '2024-11-05 14:00:00'),
(79, 'Rectifier#1.2.5', 'Huawei', '1280', '53.9', '116.8', '9.125', 'On', '2024-11-05 20:00:00'),
(80, 'Rectifier#1.2.5', 'Huawei', '1280', '53.9', '115.8', '9.046875', 'On', '2024-11-06 07:00:00'),
(81, 'Rectifier#1.2.5', 'Huawei', '1280', '53.9', '116.8', '9.046875', 'On', '2024-11-06 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rec6`
--

CREATE TABLE `rec6` (
  `id` int NOT NULL,
  `Nama` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Brand` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `BebanTotal` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `CapsRec` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `TotalLoad` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Occupancy` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Status` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `dateTime` varchar(99) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rec6`
--

INSERT INTO `rec6` (`id`, `Nama`, `Brand`, `BebanTotal`, `CapsRec`, `TotalLoad`, `Occupancy`, `Status`, `dateTime`) VALUES
(23, 'Rectifier#1.2.9', 'Huawei', '1280', '50', '50', '50', '50', ''),
(24, 'Rectifier#1.2.9', 'Huawei', '1280', '50', '50', '1', '', '2024-08-22 20:19:00'),
(25, 'Rectifier#1.2.9', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-10 07:53:00'),
(27, 'Rectifier#1.2.9', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-14 17:17:00'),
(28, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '208', '16.25', 'On', '2024-08-15 20:00:00'),
(31, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '208.9', '16.3203125', 'On', '2024-08-22 14:54:00'),
(42, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '208.9', '16.3203125', 'On', '2024-08-24 01:41:00'),
(43, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '207.5', '16.2109375', 'On', '2024-08-23 20:00:00'),
(45, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '209.4', '16.359375', 'On', '2024-08-26 14:00:00'),
(46, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '209.4', '16.359375', 'On', '2024-08-27 18:00:00'),
(47, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '207.7', '16.2265625', 'On', '2024-08-27 20:00:00'),
(61, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '211.0', '16.484375', 'On', '2024-08-28 06:00:00'),
(62, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '211.0', '16.484375', 'On', '2024-08-30 00:00:00'),
(63, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '208.5', '16.2890625', 'On', '2024-08-30 14:00:00'),
(64, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '207.5', '16.2109375', 'On', '2024-08-31 20:59:00'),
(70, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '207.5', '16.2109375', 'On', '2024-11-04 02:00:00'),
(71, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '209.9', '16.3984375', 'On', '2024-11-04 08:00:00'),
(76, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '210.2', '16.421875', 'On', '2024-11-04 14:00:00'),
(77, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '211.5', '16.5234375', 'On', '2024-11-04 20:00:00'),
(78, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '211', '16.484375', 'On', '2024-11-05 14:00:00'),
(79, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '210.3', '16.4296875', 'On', '2024-11-05 20:00:00'),
(80, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '210.5', '16.4453125', 'On', '2024-11-06 07:00:00'),
(81, 'Rectifier#1.2.9', 'Huawei', '1280', '54', '210.9', '16.4453125', 'On', '2024-11-06 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rec7`
--

CREATE TABLE `rec7` (
  `id` int NOT NULL,
  `Nama` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Brand` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `BebanTotal` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `CapsRec` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `TotalLoad` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Occupancy` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Status` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `dateTime` varchar(99) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rec7`
--

INSERT INTO `rec7` (`id`, `Nama`, `Brand`, `BebanTotal`, `CapsRec`, `TotalLoad`, `Occupancy`, `Status`, `dateTime`) VALUES
(23, 'Rectifier#1.2.10', 'Huawei', '1280', '50', '50', '50', '50', ''),
(24, 'Rectifier#1.2.10', 'Huawei', '1280', '50', '50', '1', '', '2024-08-22 20:19:00'),
(25, 'Rectifier#1.2.10', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-10 07:53:00'),
(27, 'Rectifier#1.2.10', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-14 17:17:00'),
(28, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '218', '17.03125', 'On', '2024-08-15 20:00:00'),
(31, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '204.2', '15.953125', 'On', '2024-08-22 14:54:00'),
(42, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '204.2', '15.953125', 'On', '2024-08-24 01:41:00'),
(43, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '211.6', '16.53125', 'On', '2024-08-23 20:00:00'),
(45, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '219.2', '17.125', 'On', '2024-08-26 14:00:00'),
(46, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '219.2', '17.125', 'On', '2024-08-27 18:00:00'),
(47, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '218.8', '17.09375', 'On', '2024-08-27 20:00:00'),
(61, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '218.2', '17.046875', 'On', '2024-08-28 06:00:00'),
(62, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '218.2', '17.046875', 'On', '2024-08-30 00:00:00'),
(63, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '212.5', '16.6015625', 'On', '2024-08-30 14:00:00'),
(64, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '218.4', '17.0625', 'On', '2024-08-31 20:59:00'),
(70, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '218.4', '17.0625', 'On', '2024-11-04 02:00:00'),
(71, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '211.5', '16.5234375', 'On', '2024-11-04 08:00:00'),
(76, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '212.3', '16.5859375', 'On', '2024-11-04 14:00:00'),
(77, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '218.8', '17.09375', 'On', '2024-11-04 20:00:00'),
(78, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '218.1', '17.0390625', 'On', '2024-11-05 14:00:00'),
(79, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '218.6', '17.078125', 'On', '2024-11-05 20:00:00'),
(80, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '217.1', '16.9609375', 'On', '2024-11-06 07:00:00'),
(81, 'Rectifier#1.2.10', 'Huawei', '1280', '54', '218', '16.9609375', 'On', '2024-11-06 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rec8`
--

CREATE TABLE `rec8` (
  `id` int NOT NULL,
  `Nama` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Brand` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `BebanTotal` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `CapsRec` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `TotalLoad` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Occupancy` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Status` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `dateTime` varchar(99) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rec8`
--

INSERT INTO `rec8` (`id`, `Nama`, `Brand`, `BebanTotal`, `CapsRec`, `TotalLoad`, `Occupancy`, `Status`, `dateTime`) VALUES
(23, 'Rectifier#1.2.11', 'Huawei', '1280', '50', '50', '50', '50', ''),
(24, 'Rectifier#1.2.11', 'Huawei', '1280', '50', '50', '1', '', '2024-08-22 20:19:00'),
(25, 'Rectifier#1.2.11', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-10 07:53:00'),
(27, 'Rectifier#1.2.11', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-14 17:17:00'),
(28, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '286.4', '22.375', 'On', '2024-08-15 20:00:00'),
(31, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '284.4', '22.21875', 'On', '2024-08-22 14:54:00'),
(42, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '284.4', '22.21875', 'On', '2024-08-24 01:41:00'),
(43, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '285.6', '22.3125', 'On', '2024-08-23 20:00:00'),
(45, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '283.6', '22.15625', 'On', '2024-08-26 14:00:00'),
(46, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '283.6', '22.15625', 'On', '2024-08-27 18:00:00'),
(47, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '285.1', '22.2734375', 'On', '2024-08-27 20:00:00'),
(61, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '282.3', '22.0546875', 'On', '2024-08-28 06:00:00'),
(62, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '282.3', '22.0546875', 'On', '2024-08-30 00:00:00'),
(63, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '288.3', '22.5234375', 'On', '2024-08-30 14:00:00'),
(64, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '285.6', '22.3125', 'On', '2024-08-31 20:59:00'),
(70, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '285.6', '22.3125', 'On', '2024-11-04 02:00:00'),
(71, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '282.6', '22.078125', 'On', '2024-11-04 08:00:00'),
(76, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '283.3', '22.1328125', 'On', '2024-11-04 14:00:00'),
(77, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '283.9', '22.1796875', 'On', '2024-11-04 20:00:00'),
(78, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '283.5', '22.1484375', 'On', '2024-11-05 14:00:00'),
(79, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '283.2', '22.125', 'On', '2024-11-05 20:00:00'),
(80, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '283.6', '22.15625', 'On', '2024-11-06 07:00:00'),
(81, 'Rectifier#1.2.11', 'Huawei', '1280', '54', '282.9', '22.15625', 'On', '2024-11-06 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rec9`
--

CREATE TABLE `rec9` (
  `id` int NOT NULL,
  `Nama` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Brand` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `BebanTotal` varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  `CapsRec` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `TotalLoad` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Occupancy` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `Status` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `dateTime` varchar(99) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rec9`
--

INSERT INTO `rec9` (`id`, `Nama`, `Brand`, `BebanTotal`, `CapsRec`, `TotalLoad`, `Occupancy`, `Status`, `dateTime`) VALUES
(23, 'Rectifier#1.2.12', 'Huawei', '1280', '50', '50', '50', '50', ''),
(24, 'Rectifier#1.2.12', 'Huawei', '1280', '50', '50', '1', '', '2024-08-22 20:19:00'),
(25, 'Rectifier#1.2.12', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-10 07:53:00'),
(27, 'Rectifier#1.2.12', 'Huawei', '1280', '50', '50', '1', 'On', '2024-08-14 17:17:00'),
(28, 'Rectifier#1.2.12', 'Huawei', '1280', '56', '222.2', '17.359375', 'On', '2024-08-15 20:00:00'),
(31, 'Rectifier#1.2.12', 'Huawei', '1280', '56', '215.3', '16.8203125', 'On', '2024-08-22 14:54:00'),
(42, 'Rectifier#1.2.12', 'Huawei', '1280', '56', '215.3', '16.8203125', 'On', '2024-08-24 01:41:00'),
(43, 'Rectifier#1.2.12', 'Huawei', '1280', '56', '192.8', '15.0625', 'On', '2024-08-23 20:00:00'),
(45, 'Rectifier#1.2.12', 'Huawei', '1280', '56', '223.3', '17.4453125', 'On', '2024-08-26 14:00:00'),
(46, 'Rectifier#1.2.12', 'Huawei', '1280', '56', '223.3', '17.4453125', 'On', '2024-08-27 18:00:00'),
(47, 'Rectifier#1.2.12', 'Huawei', '1280', '56', '222.3', '17.3671875', 'On', '2024-08-27 20:00:00'),
(61, 'Rectifier#1.2.12', 'Huawei', '1280', '56', '221.0', '17.265625', 'On', '2024-08-28 06:00:00'),
(62, 'Rectifier#1.2.12', 'Huawei', '1280', '56', '221.0', '17.265625', 'On', '2024-08-30 00:00:00'),
(63, 'Rectifier#1.2.12', 'Huawei', '1280', '56', '226.4', '17.6875', 'On', '2024-08-30 14:00:00'),
(64, 'Rectifier#1.2.12', 'Huawei', '1280', '56', '222.1', '17.3515625', 'On', '2024-08-31 20:59:00'),
(70, 'Rectifier#1.2.12', 'Huawei', '1280', '56', '222.1', '17.3515625', 'On', '2024-11-04 02:00:00'),
(71, 'Rectifier#1.2.12', 'Huawei', '1280', '54', '219', '17.109375', 'On', '2024-11-04 08:00:00'),
(76, 'Rectifier#1.2.12', 'Huawei', '1280', '54', '220.8', '17.25', 'On', '2024-11-04 14:00:00'),
(77, 'Rectifier#1.2.12', 'Huawei', '1280', '54', '221.2', '17.28125', 'On', '2024-11-04 20:00:00'),
(78, 'Rectifier#1.2.12', 'Huawei', '1280', '54', '220.4', '17.21875', 'On', '2024-11-05 14:00:00'),
(79, 'Rectifier#1.2.12', 'Huawei', '1280', '54', '219.6', '17.15625', 'On', '2024-11-05 20:00:00'),
(80, 'Rectifier#1.2.12', 'Huawei', '1280', '54', '218', '17.03125', 'On', '2024-11-06 07:00:00'),
(81, 'Rectifier#1.2.12', 'Huawei', '1280', '54', '219.5', '17.03125', 'On', '2024-11-06 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `report_info`
--

CREATE TABLE `report_info` (
  `no_report` int NOT NULL,
  `petugasME` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `petugasME2` varchar(1500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nomor_1` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `nomor_2` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_report` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_info`
--

INSERT INTO `report_info` (`no_report`, `petugasME`, `petugasME2`, `nomor_1`, `nomor_2`, `jenis_report`, `date_time`) VALUES
(1, 'Vinci', 'Dwi', '0', '0', '0', '2024-07-26 22:12:53'),
(2, 'Vinci', 'Dwi', '0', '0', '0', '2024-07-30 23:44:00'),
(3, 'Beni', 'Brian', '0', '0', '0', '2024-07-12 22:20:00'),
(4, 'Beni', 'Brian', '0', '0', '0', '2024-07-12 22:20:00'),
(5, 'Beni', 'Brian', '0', '0', '0', '2024-07-12 22:20:00'),
(6, 'Beni', 'Brian', '0', '0', '0', '2024-07-12 22:20:00'),
(7, 'Beni', 'Brian', '0', '0', '0', '2024-07-12 22:20:00'),
(8, 'Beni', 'Brian', '0', '0', '0', '2024-07-12 22:20:00'),
(9, 'Beni', 'Brian', '0', '0', '0', '2024-07-12 22:20:00'),
(10, 'Beni', 'Brian', '0', '0', '0', '2024-07-12 22:20:00'),
(11, 'Wahyu', 'Imam', '0', '0', '0', '2024-07-12 22:20:00'),
(12, 'Vinci', 'Dwi', '0', '0', '0', '2024-07-06 08:10:00'),
(13, 'Vinci', 'Dwi', '0', '0', '0', '2024-07-06 08:10:00'),
(14, 'Rivo', 'Dandi', '0', '0', '0', '2024-07-24 11:20:00'),
(15, 'Wahyu', 'Imam', '0', '0', '0', '2024-07-11 00:10:00'),
(16, 'Wahyuu', 'Imam', '0', '0', '0', '2024-07-11 00:10:00'),
(17, 'Vinci', 'Dwi', '0', '0', '0', '2024-07-20 02:34:00'),
(18, 'Vinci', 'Dwi', '0', '0', '0', '2024-07-18 05:30:00'),
(19, 'Beni', 'Brian', '0', '0', '0', '2024-08-16 14:03:00'),
(20, 'Dwi', 'Franco', '0', '0', '0', '2024-08-21 03:13:00'),
(21, 'kk', 'ade', '0', '0', '0', '2024-08-24 06:41:00'),
(22, 'Beni', 'Brian', '0', '0', '0', '2024-08-21 08:43:00'),
(23, 'Vinci', 'Dwi', '0', '0', '0', '2024-08-16 12:00:00'),
(24, 'Beni', 'Brian', '0', '0', '0', '2024-08-22 20:19:00'),
(25, 'Beni', 'Franco', '0', '0', '0', '2024-08-10 07:53:00'),
(26, 'Vinci', 'Dwi', '0', '0', '0', '2024-08-10 23:44:00'),
(27, 'Wahyu', 'Imam', '0', '0', '0', '2024-08-14 17:17:00'),
(28, 'Rivo', 'Vinci', '0', '0', '0', '2024-08-15 20:00:00'),
(29, 'Dwi', 'Vinci', '0', '0', '0', '2024-08-07 03:34:00'),
(30, 'Dwi', 'Vinci', '0', '0', '0', '2024-08-20 04:58:00'),
(31, 'Dwi', 'Vinci', '0', '0', '0', '2024-08-22 14:54:00'),
(32, 'Dwi', 'Vinci', '0', '0', '0', '2024-08-22 15:40:00'),
(33, 'Dwi', 'Vinci', '0', '0', 'KWH & Suhu', '2024-08-24 00:59:00'),
(34, 'Dwi', 'Vinci', '0', '0', 'KWH & Suhu', '2024-08-24 00:59:00'),
(35, 'Dwi', 'Vinci', '0', '0', 'KWH & Suhu', '2024-08-24 00:59:00'),
(36, 'Dwi', 'Vinci', '0', '0', 'Genset', '2024-08-24 01:25:00'),
(37, 'Dwi', 'Vinci', '0', '0', 'Ceklist', '2024-08-24 01:26:00'),
(38, 'Dwi', 'Vinci', '0', '0', 'Ceklist', '2024-08-24 01:26:00'),
(39, 'Dwi', 'Vinci', '0', '0', 'Ceklist', '2024-08-24 01:26:00'),
(40, 'Dwi', 'Vinci', '0', '0', 'KWH & Suhu', '2024-08-24 01:26:00'),
(41, 'Dwi', 'Vinci', '0', '0', 'Ceklist', '2024-08-24 01:41:00'),
(42, 'Dwi', 'Vinci', '0', '0', 'Ceklist', '2024-08-24 01:41:00'),
(43, 'Dwi', 'Vinci', '0', '0', 'Ceklist', '2024-08-23 20:00:00'),
(44, 'Beni', 'Brian', '0', '0', 'Genset', '2024-08-24 02:42:00'),
(45, 'Vinci', 'Dwi', '0', '0', 'Ceklist', '2024-08-26 14:00:00'),
(46, 'Dwi', 'Vinci', '0', '0', 'KWH & Suhu', '2024-08-27 18:00:00'),
(47, 'Rivo', 'Vinci', '0', '0', 'Ceklist', '2024-08-27 20:00:00'),
(48, 'Dwi', 'Vinci', '0', '0', 'Genset', '2024-08-28 03:44:00'),
(49, 'Dwi', 'Vinci', '0', '0', 'KWH & Suhu', '2024-08-28 03:44:00'),
(50, 'Dwi', 'Vinci', '0', '0', 'Genset', '2024-08-28 03:44:00'),
(51, 'Dwi', 'Brian', '0', '0', 'Genset', '2024-08-21 03:46:00'),
(52, 'Dwi', 'Brian', '0', '0', 'Ceklist', '2024-08-21 03:46:00'),
(53, 'Dwi', 'Brian', '0', '0', 'KWH & Suhu', '2024-08-21 03:46:00'),
(54, 'Dwi', 'Vinci', '0', '0', 'Genset', '2024-08-09 03:47:00'),
(55, 'Dwi', 'Vinci', '0', '0', 'KWH & Suhu', '2024-08-09 03:47:00'),
(56, 'Beni', 'Brian', '0', '0', 'KWH & Suhu', '2024-08-28 03:48:00'),
(57, 'Vinci', 'Vinci', '0', '0', 'KWH & Suhu', '2024-08-28 03:49:00'),
(58, 'Vinci', 'Vinci', '0', '0', 'Genset', '2024-08-15 03:49:00'),
(59, 'Vinci', 'Dwi', '0', '0', 'Ceklist', '2024-08-15 03:49:00'),
(60, 'Dwi', 'Dwi', '0', '0', 'KWH & Suhu', '2024-08-15 03:49:00'),
(61, 'Vinci', 'Rivo', '0', '0', 'Ceklist', '2024-08-28 06:00:00'),
(62, 'Dwi', 'Vinci', '0', '0', 'Ceklist', '2024-08-30 00:00:00'),
(63, 'Vinci', 'Dwi', '0', '0', 'Ceklist', '2024-08-30 14:00:00'),
(64, 'Vinci', 'Dwi', '0', '0', 'Ceklist', '2024-08-31 20:59:00'),
(65, 'Vinci', 'Dwi', '0', '0', 'KWH & Suhu', '2024-08-31 22:00:00'),
(66, 'Vinci', 'Dwi', '0', '0', 'Genset', '2024-09-25 15:14:00'),
(67, 'Vinci', 'Dwi', '0', '0', 'Genset', '2024-09-03 15:11:00'),
(68, 'Vinci', 'Dwi', '0', '0', 'Genset', '2024-09-10 14:16:00'),
(69, 'Beni', 'Franci', '0', '0', 'Ceklist', '2024-11-01 01:14:00'),
(70, 'Dyan', 'Imam', '0', '0', 'Ceklist', '2024-11-04 02:00:00'),
(71, 'Dwi', 'Akbar', '0', '0', 'Ceklist', '2024-11-04 08:00:00'),
(72, 'Beni', 'Franco', '0', '0', 'Genset', '2024-10-30 09:00:00'),
(73, 'Rivo', 'Brian', '0', '0', 'Genset', '2024-10-30 09:00:00'),
(74, 'Beni', 'Franco', '0', '0', 'Genset', '2024-11-01 11:18:00'),
(75, 'Rivo', 'Brian', '0', '0', 'Genset', '2024-10-30 09:00:00'),
(76, 'Imam 081242618588', 'Dwi 085298610099', '0', '0', 'Ceklist', '2024-11-04 14:00:00'),
(77, 'Rivo 082187733313', 'Brian 085240308086', '0', '0', 'Ceklist', '2024-11-04 20:00:00'),
(78, 'Vinci - 085240534296', 'Beni - 081359335975', '0', '0', 'Ceklist', '2024-11-05 14:00:00'),
(79, 'Imam - 081242618588', 'Diyan - 081335993665', '0', '0', 'Ceklist', '2024-11-05 20:00:00'),
(80, 'Imam - 081242618588', 'Diyan - 081335993665', '0', '0', 'Ceklist', '2024-11-06 07:00:00'),
(81, 'Dwi 085298610099', 'Akbar 082395782947', '0', '0', 'Ceklist', '2024-11-06 14:00:00'),
(82, 'Dwi', 'Akbar', '0', '0', 'Genset', '2024-11-06 10:00:00'),
(83, 'Beni 081359335975', 'Franco 0822584443822', '0', '0', 'Ceklist', '2024-11-06 20:29:00'),
(84, 'Beni 081359335975', 'Franco 0822584443822', '0', '0', 'Ceklist', '2024-11-06 20:39:00'),
(85, 'kiel', 'vinci', '0', '0', 'Ceklist', '2024-11-08 13:33:00'),
(86, 'Kiel', 'Vinci', '0', '0', 'KWH & Suhu', '2024-11-13 17:21:00'),
(87, 'Kiel', 'Vinci', '0', '0', 'Ceklist', '2024-11-13 17:21:00'),
(88, 'Kiel', 'Vinci', '0', '0', 'Genset', '2024-11-13 17:21:00'),
(89, 'kiel', 'lewi', '0', '0', 'Ceklist', '2024-11-15 11:26:00'),
(90, 'kiel', 'lewi', '0', '0', 'Ceklist', '2024-11-16 18:41:00'),
(91, 'kiel', 'lewi', '0', '0', 'Ceklist', '2024-12-10 13:29:00'),
(92, 'kiel', 'lewi', '0', '0', 'KWH & Suhu', '2024-12-10 13:29:00'),
(93, 'kiel', 'lewi', '0', '0', 'Ceklist', '2024-12-10 13:34:00'),
(94, 'kiel', 'lewi', '0', '0', 'Ceklist', '2024-12-10 19:47:00'),
(95, 'kiel', 'lewi', '0', '0', 'Ceklist', '2024-12-11 10:37:00'),
(96, 'kiel', 'lewi', '0', '0', 'Ceklist', '2024-12-11 11:19:00'),
(97, 'kiel', 'lewi', '0', '0', 'Ceklist', '2024-12-11 13:44:00'),
(98, 'Kiel', 'Vinci', '0', '0', 'Ceklist', '2024-12-11 14:25:00'),
(99, 'Kiel', 'Vinci', '0', '0', 'Ceklist', '2024-12-11 15:08:00'),
(100, 'Kiel', 'Vinci', '0832166724', '3428753998', 'Ceklist', '2024-12-11 15:46:00'),
(101, 'Kiel', 'Ricky', '082188347196', '085342731110', 'Ceklist', '2024-12-28 08:09:00'),
(102, 'Kiel', 'Ricky', '082188347196', '085342731110', 'Genset', '2024-12-28 08:26:00'),
(103, 'Kiel', 'Ricky', '082188347196', '085342731110', 'Genset', '2024-12-28 08:27:00'),
(104, 'Kiel', 'Ricky', '082188347196', '085342731110', 'Genset', '2024-12-28 08:32:00'),
(105, 'Kiel', 'Ricky', '082188347196', '085342731110', 'Genset', '2024-12-28 08:33:00'),
(106, 'Kiel', 'Ricky', '082188347196', '085340179196', 'Ceklist', '2024-12-28 12:21:00'),
(107, 'doni', 'danu', '085256654324', '081355040194', 'Ceklist', '2024-12-28 19:55:00'),
(108, 'danu', 'doni', '081355040194', '085256654324', 'Ceklist', '2024-12-29 06:33:00'),
(109, 'Riki ', 'Yusni', '085340179196', '082135932073', 'Ceklist', '2024-12-29 12:02:00'),
(110, 'doni', 'hendry', '085256654324', '081340299004', 'Ceklist', '2024-12-29 19:25:00'),
(111, 'Hendry', 'doni', '081340299004', '085256654324', 'Ceklist', '2024-12-30 05:59:00'),
(112, 'Hendry', 'doni', '081340299004', '085256654324', 'Ceklist', '2024-12-30 06:24:00'),
(113, 'Yusni', 'Lewi', '082135932073', '082321484246', 'Ceklist', '2024-12-30 12:51:00'),
(114, 'Yelsin', 'Ricky', '05399067723', '085340179196', 'Ceklist', '2024-12-30 18:46:00'),
(115, 'Kiel, Ricky', 'Yelsin', '082188347196', '085399067723', 'Ceklist', '2024-12-31 06:23:00'),
(116, 'Kiel, Ricky', 'Yelsin', '082188347196', '085399067723', 'Genset', '2024-12-31 06:32:00'),
(117, 'Kiel, Ricky', 'Yelsin', '082188347196', '085399067723', 'Genset', '2024-12-31 06:35:00'),
(118, 'Yusni Mokodongan', 'Danu Mardanih', '082135932073', '081355040194', 'Ceklist', '2024-12-31 14:49:00'),
(119, 'Kiel, Henry', 'Ricky', '082188347196', '085340179196', 'Ceklist', '2024-12-31 18:11:00'),
(120, 'Kiel, Ricky', 'Ricky', '082188347196', '085340179196', 'Ceklist', '2025-01-01 06:32:00'),
(121, 'Kiel, Ricky', 'Ricky', '082188347196', '085340179196', 'Ceklist', '2025-01-01 06:37:00'),
(122, 'Kiel, Ricky', 'Ricky', '082188347196', '085340179196', 'Ceklist', '2025-01-01 06:47:00'),
(123, 'Kiel', 'Danu', '082188347196', '081355040194', 'Ceklist', '2025-01-01 18:24:00'),
(124, 'Doni', 'Danu Mardanih & Kiel', '085256654324', '081355040194', 'Ceklist', '2025-01-02 05:40:00'),
(125, 'Ricky Narua', 'Wahyuni ', '082188347196', '082195008065', 'Ceklist', '2025-01-02 12:34:00'),
(126, 'Ananda ', 'Dhoni & Rayhan', '082292193254', '085256654324', 'Ceklist', '2025-01-02 18:45:00'),
(127, 'Ananda ', 'Dhoni & Rayhan', '082292193254', '085256654324', 'Ceklist', '2025-01-03 05:39:00'),
(128, 'Muhammad Atthariq', 'Yusni Mokodongan', '081354871151', '082135932073', 'Ceklist', '2025-01-03 14:00:00'),
(129, 'Ananda ', 'Yelsin', '082292193254', '085399067723', 'Ceklist', '2025-01-03 18:58:00'),
(130, 'Hendri', 'Yelsin', '081340299004', '085399067723', 'Ceklist', '2025-01-04 07:56:00'),
(131, 'Yusni Mokodongan', 'Ricky Narua', '082135932073', '085340179196', 'Ceklist', '2025-01-04 02:00:00'),
(132, 'Muhammad Atthariq', 'Hendry', '081354871151', '081340299004', 'Ceklist', '2025-01-04 20:00:00'),
(133, 'Hendry', 'Atar', '081340299004', '081354871151', 'Ceklist', '2025-01-05 06:27:00'),
(134, 'Reyhan', 'Ananda, Yuni', '085343518854', '082292193254', 'Ceklist', '2025-01-05 14:40:00'),
(135, 'Reyhan', 'Ananda, Yuni', '085343518854', '082292193254', 'Ceklist', '2025-01-05 14:50:00'),
(136, 'danu', 'doni', '081355040194', '085256654324', 'Ceklist', '2025-01-05 20:53:00'),
(137, 'danu', 'doni', '081355040194', '085256654324', 'Ceklist', '2025-01-05 21:01:00'),
(138, 'danu', 'doni', '081355040194', '085256654324', 'Ceklist', '2025-01-06 07:11:00'),
(139, 'Yelsin', 'Wahyuni ', '085399067723', '082195008065', 'Ceklist', '2025-01-06 13:25:00'),
(140, 'Ananda', 'Rayhan dan Dhoni', '082292193254', '085343518854', 'Ceklist', '2025-01-06 19:28:00'),
(141, 'Ananda ', 'Dhoni & Rayhan', '082292193254', '085256654324', 'Ceklist', '2025-01-07 06:21:00'),
(142, 'Atar', 'Wahyuni', '081354871151', '082195008065', 'Ceklist', '2025-01-07 14:00:00'),
(143, 'RIKY', 'yel , hendri', '085340179196', '085399067723', 'Ceklist', '2025-01-07 19:22:00'),
(144, 'Yelsin', 'Ricky', '085399067723', '085256654324', 'Ceklist', '2025-01-08 08:24:00'),
(145, 'danu', 'Wahyuni ', '081355040194', '082195008065', 'Ceklist', '2025-01-08 13:46:00'),
(146, 'Ricky Narua', 'Atar', '085340179196', '081354871151', 'Ceklist', '2025-01-08 19:39:00'),
(147, 'Atar', 'Ricky', '081354871151', '085340179196', 'Ceklist', '2025-01-09 08:00:00'),
(148, 'Reyhan', 'Wahyuni ', '085343518854', '082195008065', 'Ceklist', '2025-01-09 13:23:00'),
(149, 'danu', 'doni', '081355040194', '085256654324', 'Ceklist', '2025-01-09 19:56:00'),
(150, 'Doni', 'Ananda, Danu', '085256654324', '082292193254', 'Ceklist', '2025-01-10 06:50:00'),
(151, 'Ricky Narua', 'Wahyuni ', '085340179196', '082195008065', 'Ceklist', '2025-01-10 13:38:00'),
(152, 'Ananda ', 'Dhoni & Rayhan', '082292193254', '085256654324', 'Ceklist', '2025-01-10 19:59:00'),
(153, 'Ananda ', 'Dhoni & Rayhan', '082292193254', '085256654324', 'Ceklist', '2025-01-11 06:31:00'),
(154, 'Atar', 'Yelsin', '081354871151', '085399067723', 'Ceklist', '2025-01-11 14:05:00'),
(155, 'Ricky Narua', 'Hendry', '085340179196', '081340299004', 'Ceklist', '2025-01-11 19:27:00'),
(156, 'Hendry', 'Ricky', '081340299004', '085340179196', 'Ceklist', '2025-01-12 07:38:00'),
(157, 'Yusni Mokodongan', 'Muhamamad Attar', '082135932073', '801354871151', 'Ceklist', '2025-01-12 02:00:00'),
(158, 'Hendry', 'Yelsin', '081340299004', '085399067723', 'Ceklist', '2025-01-12 20:28:00'),
(159, 'Yelsin', 'Hendry', '085399067723', '085340179196', '', '2025-01-13 08:21:00'),
(160, 'Yelsin', 'Hendry', '085399067723', '085256654324', 'Ceklist', '2025-01-13 08:31:00'),
(161, 'Reyhan', 'Wahyuni ', '085343518854', '082195008065', 'Ceklist', '2025-01-13 13:50:00'),
(162, 'Ananda ', 'Dhoni Danu', '082292193254', '081355040194', 'Ceklist', '2025-01-13 20:29:00'),
(163, 'Ananda ', 'Dhoni Danu', '082292193254', '081355040194', 'Ceklist', '2025-01-13 20:29:00'),
(164, 'Ananda ', 'Dhoni & Danu', '082292193254', '085256654324', 'Ceklist', '2025-01-14 06:54:00'),
(165, 'Yelsin', 'Wahyuni ', '085399067723', '082195008065', 'Ceklist', '2025-01-14 13:52:00'),
(166, 'Ricky Narua', 'Dhoni & Rayhan', '085340179196', '085256654324', 'Ceklist', '2025-01-14 19:18:00'),
(167, 'Ricky Narua', 'Dhoni & Rayhan', '082188347196', '085256654324', 'Ceklist', '2025-01-15 06:45:00'),
(168, 'Yusni Mokodongan', 'Atar', '082135932073', '081354871151', 'Ceklist', '2025-01-15 02:00:00'),
(169, 'Hendry', 'Yelsin', '081340299004', '085399067723', 'Ceklist', '2025-01-15 20:29:00'),
(170, 'Ricky Narua', 'Yelsin', '085340179196', '085399067723', 'Ceklist', '2025-01-16 07:15:00'),
(171, 'Danu', 'Yusni', '081355040194', '082135932073', 'Ceklist', '2025-01-16 13:56:00'),
(172, 'Hendry', 'Ananda attar', '081340299004', '082292193254', 'Ceklist', '2025-01-16 20:18:00'),
(173, 'Hendry', 'Atar, Ananda', '081340299004', '081354871151', 'Ceklist', '2025-01-17 07:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `report_lvmdp1`
--

CREATE TABLE `report_lvmdp1` (
  `id_report_lvmdp1` int NOT NULL,
  `R` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `S` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `T` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `L1N` float NOT NULL,
  `L2N` float NOT NULL,
  `L3N` float NOT NULL,
  `R1N` float NOT NULL,
  `R2N` float NOT NULL,
  `R3N` float NOT NULL,
  `kv` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `kva` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `date_time` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `dokumentasi` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_lvmdp1`
--

INSERT INTO `report_lvmdp1` (`id_report_lvmdp1`, `R`, `S`, `T`, `L1N`, `L2N`, `L3N`, `R1N`, `R2N`, `R3N`, `kv`, `kva`, `date_time`, `dokumentasi`) VALUES
(27, '12', '12', '12', 0, 0, 0, 0, 0, 0, '12', '12', '2024-08-14 17:17:00', 'Screenshot 2023-03-10 171907.png'),
(28, '106', '100', '100', 0, 0, 0, 0, 0, 0, '67', '64', '2024-08-15 20:00:00', 'WhatsApp Image 2024-08-15 at 20.03.19_6cef4328.jpg'),
(31, '110', '108', '107', 0, 0, 0, 0, 0, 0, '72', '73', '2024-08-22 14:54:00', 'WhatsApp Image 2024-08-22 at 14.35.45_94154d2c.jpg'),
(42, '123', '569', '789', 0, 0, 0, 0, 0, 0, '789', '1236', '2024-08-24 01:41:00', 'WhatsApp Image 2024-08-15 at 20.03.21_196cc30c.jpg'),
(43, '122', '130', '102', 0, 0, 0, 0, 0, 0, '83', '85', '2024-08-23 20:00:00', 'WhatsApp Image 2024-08-15 at 20.03.22_23528855.jpg'),
(45, '110', '115', '111', 0, 0, 0, 0, 0, 0, '84', '86', '2024-08-26 14:00:00', 'WhatsApp Image 2024-08-26 at 14.32.52_1ad2c3a2.jpg'),
(46, '43', '55', '43', 0, 0, 0, 0, 0, 0, '434', '43', '2024-08-27 18:00:00', 'WhatsApp Image 2024-08-26 at 14.32.52_bc358179.jpg'),
(61, '147', '155', '149', 0, 0, 0, 0, 0, 0, '99', '103', '2024-08-28 06:00:00', 'WhatsApp Image 2024-08-28 at 06.24.50_96158267.jpg'),
(62, '150', '150', '150', 0, 0, 0, 0, 0, 0, '89', '89', '2024-08-30 00:00:00', 'WhatsApp Image 2024-08-28 at 06.24.52_c0cefd7b.jpg'),
(63, '147', '150', '149', 0, 0, 0, 0, 0, 0, '99', '103', '2024-08-30 14:00:00', 'WhatsApp Image 2024-08-30 at 14.44.42_e461ee03.jpg'),
(64, '106', '110', '97', 0, 0, 0, 0, 0, 0, '66', '67', '2024-08-31 20:59:00', 'WhatsApp Image 2024-08-31 at 20.25.26_38b2cc87.jpg'),
(70, '50', '50', '50', 50, 50, 50, 50, 50, 50, '50', '50', '2024-11-04 02:00:00', 'Capture 2.JPG'),
(71, '118', '112', '114', 388, 386, 386, 224, 223, 222, '73', '74', '2024-11-04 08:00:00', 'WhatsApp Image 2024-11-04 at 7.32.39 AM(1).jpeg'),
(76, '388', '386', '387', 224, 223, 222, 123, 122, 113, '81', '82', '2024-11-04 14:00:00', 'WhatsApp Image 2024-11-04 at 2.23.56 PM.jpeg'),
(77, '389', '386', '386', 224, 224, 222, 81, 86, 85, '58', '58', '2024-11-04 20:00:00', 'WhatsApp Image 2024-11-04 at 7.32.38 AM(1).jpeg'),
(78, '111', '127', '114', 224, 223, 222, 388, 386, 387, '77', '78', '2024-11-05 14:00:00', 'WhatsApp Image 2024-11-05 at 2.27.47 PM.jpeg'),
(79, '95', '77', '97', 225, 225, 224, 391, 388, 389, '68', '68', '2024-11-05 20:00:00', 'WhatsApp Image 2024-11-05 at 20.28.50(1).jpeg'),
(80, '99', '96', '99', 224, 224, 223, 389, 386, 387, '65', '66', '2024-11-06 07:00:00', 'WhatsApp Image 2024-11-06 at 07.39.48(1).jpeg'),
(81, '98', '107', '100', 226, 224, 223, 389, 387, 388, '69', '70', '2024-11-06 14:00:00', 'WhatsApp Image 2024-11-06 at 14.27.34 (2).jpeg'),
(83, '107', '116', '113', 224, 223, 222, 388, 386, 386, '74', '75', '2024-11-06 20:29:00', 'WhatsApp Image 2024-11-06 at 20.22.49 (1).jpeg'),
(85, '12', '22', '33', 65, 78, 98, 44, 67, 88, '57', '46', '2024-11-08 13:33:00', 'temperatur_icon.png'),
(89, '223', '112', '214', 111, 563, 234, 887, 999, 673, '115', '210', '2024-11-15 11:26:00', 'MTA (1).png'),
(90, '223', '457', '214', 111, 563, 234, 887, 999, 673, '115', '210', '2024-11-16 18:41:00', 'WhatsApp Image 2024-10-28 at 10.02.33.jpeg'),
(93, '223', '457', '214', 111, 563, 834, 887, 999, 673, '115', '210', '2024-12-10 13:34:00', 'images.jpg'),
(95, '223', '457', '214', 111, 563, 234, 887, 999, 975, '115', '445', '2024-12-11 10:37:00', 'images.png'),
(97, '223', '457', '214', 111, 563, 234, 887, 999, 673, '115', '210', '2024-12-11 13:44:00', 'images.jpg'),
(98, '565', '567', '35', 4565, 325, 8654, 654, 3676, 4675, '436', '5656', '2024-12-11 14:25:00', 'images (1).png'),
(99, '436', '467', '325', 266, 46663, 52325, 523253, 32, 3254, '34', '3325', '2024-12-11 15:08:00', 'images (2).png'),
(100, '436', '467', '325', 266, 325, 8654, 654, 3676, 3254, '34', '3325', '2024-12-11 15:46:00', 'temperatur_icon.png'),
(101, '122', '110', '111', 223, 225, 225, 390, 391, 393, '123.2', '111.2', '2024-12-28 08:09:00', 'WhatsApp Image 2024-12-26 at 08.06.19.jpeg'),
(106, '128', '101', '111', 225, 224, 226, 389, 389, 392, '75.05', '76.00', '2024-12-28 12:21:00', 'WhatsApp Image 2024-12-21 at 3.07.22 PM.jpeg'),
(107, '204.0', '156.8', '180.0', 228.1, 226.5, 228.5, 393, 393.5, 396.5, '113.1', '122.0', '2024-12-28 19:55:00', 'Screenshot (2).png'),
(108, '179', '131', '141', 227, 226, 228, 393, 393, 396, '95.9', '101.1', '2024-12-29 06:33:00', 'Screenshot nw.png'),
(109, '172', '135', '156', 223, 222, 224, 385, 386, 388, '099.4', '104.0', '2024-12-29 12:02:00', 'WhatsApp Image 2024-12-12 at 5.10.09 PM.jpeg'),
(110, '195.2', '155.2', '162.8', 230, 228, 230, 396, 397, 400, '109.4', '118.3', '2024-12-29 19:25:00', 'Screenshot (18).png'),
(112, '187', '140', '149', 226, 225, 227, 390, 391, 394, '101.1', '107.0', '2024-12-30 06:24:00', 'WhatsApp Image 2024-12-30 at 06.21.38 (2).jpeg'),
(113, '122', '88', '110', 226, 225, 227, 391, 391, 394, '71.45', '72.06', '2024-12-30 12:51:00', 'WhatsApp Image 2024-12-20 at 9.40.14 AM.jpeg'),
(114, '166', '129', '151', 395, 395, 398, 229, 227, 230, '97.2', '102.5', '2024-12-30 18:46:00', 'Kwh.jpeg'),
(115, '113', '94', '108', 228, 227, 228, 394, 394, 397, '69.76', '70.65', '2024-12-31 06:23:00', 'WhatsApp Image 2024-12-21 at 3.06.41 PM.jpeg'),
(118, '186', '145', '168', 226, 224, 226, 390, 390, 393, '106.2', '112.8', '2024-12-31 14:49:00', 'WhatsApp Image 2024-12-11 at 7.29.07 AM (1).jpeg'),
(119, '193', '155', '170', 230, 228, 230, 396, 397, 400, '108.5', '117.5', '2024-12-31 18:11:00', 'WhatsApp Image 2024-12-21 at 3.07.21 PM.jpeg'),
(120, '154', '130', '138', 227, 226, 228, 392, 392, 395, '90.78', '94.69', '2025-01-01 06:32:00', 'Screenshot (56).png'),
(121, '154', '130', '138', 227, 226, 227, 392, 392, 395, '90.78', '94.69', '2025-01-01 06:37:00', 'Screenshot (53).png'),
(122, '154', '130', '138', 227, 226, 228, 392, 392, 395, '90.78', '94.69', '2025-01-01 06:47:00', 'Screenshot (36).png'),
(123, '202', '156', '173', 227, 225, 228, 391, 392, 395, '110', '119', '2025-01-01 18:24:00', 'WhatsApp Image 2024-12-18 at 11.50.49 PM.jpeg'),
(124, '129.6', '118.4', '128.0', 228, 226, 228, 393, 393, 396, '104.2', '112.5', '2025-01-02 05:40:00', 'Screenshot (61).png'),
(125, '180', '137', '160', 226, 224, 226, 390, 390, 393, '104.1', '109', '2025-01-02 12:34:00', 'WhatsApp Image 2024-12-18 at 4.47.14 PM (1).jpeg'),
(126, '142', '115', '137', 230, 229, 231, 397, 398, 401, '89.27', '92.27', '2025-01-02 18:45:00', 'WhatsApp Image 2024-12-16 at 9.49.08 PM.jpeg'),
(127, '168.8', '130.4', '147.6', 228.1, 226.5, 228.3, 393.1, 393.5, 396.3, '96.4', '101.5', '2025-01-03 05:39:00', 'Screenshot (62).png'),
(128, '160', '129', '149', 225, 223, 225, 388, 388, 391, '97.8', '102.6', '2025-01-03 14:00:00', 'Screenshot (73).png'),
(129, '167', '129', '146', 227, 225, 227, 391, 392, 395, '95.7', '100.6', '2025-01-03 18:58:00', 'Screenshot (37).png'),
(130, '182', '144', '148', 226, 225, 226, 394, 394, 398, '83.24', '84.98', '2025-01-04 07:56:00', 'Screenshot (65).png'),
(131, '186.4', '138.8', '162.4', 226.4, 225, 226.9, 390.2, 391, 393.7, '98.5', '102.0', '2025-01-04 02:00:00', 'WhatsApp Image 2025-01-04 at 13.27.30.jpeg'),
(132, '184', '141', '151', 230, 228, 230, 396, 397, 400, '105.1', '112.5', '2025-01-04 20:00:00', 'Screenshot (84).png'),
(133, '214', '171', '187', 227, 226, 228, 392, 393, 396, '123.9', '135.1', '2025-01-05 06:27:00', 'Screenshot (87).png'),
(134, '117', '113', '115', 228, 226, 229, 394, 394, 398, '94.2', '90.7', '2025-01-05 14:40:00', 'WhatsApp Image 2025-01-04 at 13.27.30 (1).jpeg'),
(135, '226', '171', '195', 227, 226, 228, 392, 393, 395, '94.2', '90.7', '2025-01-05 14:50:00', 'WhatsApp Image 2024-12-18 at 4.47.16 PM (1).jpeg'),
(136, '154', '114', '126', 228, 227, 229, 394, 395, 398, '86.76', '90.08', '2025-01-05 20:53:00', 'WhatsApp Image 2025-01-05 at 20.49.08 (3).jpeg'),
(137, '154', '114', '126', 228, 227, 229, 394, 395, 398, '86.76', '90.08', '2025-01-05 21:01:00', 'WhatsApp Image 2025-01-05 at 20.49.08 (7).jpeg'),
(138, '160.0', '125.6', '130.4', 227.1, 225.5, 227.5, 391.6, 391.8, 394.8, '89.64', '94.22', '2025-01-06 07:11:00', 'Screenshot (91).png'),
(139, '154', '106', '124', 227, 226, 228, 392, 393, 395, '86.76', '89.94', '2025-01-06 13:25:00', 'WhatsApp Image 2025-01-05 at 20.49.08 (6).jpeg'),
(140, '126', '95', '118', 228, 226, 228, 93, 394, 397, '77.13', '78.25', '2025-01-06 19:28:00', 'WhatsApp Image 2025-01-05 at 20.49.09.jpeg'),
(141, '151.6', '112.8', '122.0', 227, 226, 228, 392.5, 393, 395.8, '83.13', '86.49', '2025-01-07 06:21:00', 'Screenshot (99).png'),
(142, '113', '84', '106', 226, 225, 227, 391, 391, 394, '68.23', '68.75', '2025-01-07 14:00:00', 'Screenshot (104).png'),
(143, '173', '135', '159', 230, 228, 230, 396, 396, 399, '107.8', '102.6', '2025-01-07 19:22:00', 'Screenshot (105).png'),
(144, '206', '159', '185', 225, 224, 25, 388, 389, 391, '113', '122', '2025-01-08 08:24:00', 'Screenshot (101).png'),
(145, '184', '144', '165', 224, 222, 224, 386, 387, 389, '10.44', '11.07', '2025-01-08 13:46:00', 'WhatsApp Image 2025-01-08 at 8.56.01 AM (1).jpeg'),
(146, '176', '137', '156', 227, 226, 228, 392, 393, 396, '102.2', '107.0', '2025-01-08 19:39:00', 'Screenshot (113).png'),
(147, '187', '143', '153', 224, 223, 224, 387, 387, 390, '113.4', '121.5', '2025-01-09 08:00:00', 'Screenshot (120).png'),
(148, '193', '146', '162', 225, 224, 226, 387, 387, 390, '107.1', '113.5', '2025-01-09 13:23:00', 'WhatsApp Image 2025-01-09 at 9.04.25 AM.jpeg'),
(149, '202', '153', '178', 229, 227, 229, 395, 395, 398, '113', '122', '2025-01-09 19:56:00', 'WhatsApp Image 2025-01-09 at 19.43.51 (1).jpeg'),
(150, '162.0', '126.0', '132.0', 227.8, 226.4, 228.1, 393, 393.2, 395.9, '90.53', '95.25', '2025-01-10 06:50:00', 'Screenshot (123).png'),
(151, '182', '138', '157', 224, 223, 224, 387, 387, 390, '102.7', '106.9', '2025-01-10 13:38:00', 'WhatsApp Image 2025-01-09 at 19.43.51 (3).jpeg'),
(152, '228', '227', '229', 394, 395, 397, 181, 136, 159, '102.3', '107.5', '2025-01-10 19:59:00', 'WhatsApp Image 2025-01-09 at 19.43.50.jpeg'),
(153, '196.0', '146.4', '16.0', 227.3, 225.8, 227.6, 391.8, 392.1, 394.9, '106.9', '113.5', '2025-01-11 06:31:00', 'Screenshot (126).png'),
(154, '163', '130', '146', 226, 224, 226, 390, 390, 393, '95.13', '99.74', '2025-01-11 14:05:00', 'Screenshot (136).png'),
(155, '177', '133', '145', 229, 227, 229, 395, 395, 398, '99.3', '104.6', '2025-01-11 19:27:00', 'Screenshot (137).png'),
(156, '190', '140', '151', 226, 224, 226, 390, 390, 393, '109.2', '102.8', '2025-01-12 07:38:00', 'WhatsApp Image 2025-01-05 at 20.49.08.jpeg'),
(157, '165.2', '128.0', '151.6', 227.3, 225.8, 227.5, 392, 392.3, 394.9, '125.1', '132.22', '2025-01-12 02:00:00', 'Screenshot (98).png'),
(158, '187', '144', '168', 229, 227, 229, 395, 395, 398, '105.8', '113.0', '2025-01-12 20:28:00', 'WhatsApp Image 2025-01-12 at 20.27.25 (2).jpeg'),
(160, '141', '19', '128', 225, 224, 225, 390, 390, 392, '76.87', '77.23', '2025-01-13 08:31:00', 'WhatsApp Image 2025-01-12 at 20.27.26 (1).jpeg'),
(161, '131', '105', '127', 226, 225, 226, 390, 391, 393, '89.25', '92.34', '2025-01-13 13:50:00', 'WhatsApp Image 2025-01-12 at 20.27.26.jpeg'),
(163, '186', '136', '162', 228, 227, 229, 394, 395, 397, '103', '110', '2025-01-13 20:29:00', 'Screenshot (150).png'),
(164, '149.6', '116.0', '125.2', 226.4, 225, 226.7, 390.5, 390.7, 393.3, '85.62', '88.79', '2025-01-14 06:54:00', 'Screenshot (139).png'),
(165, '212', '158', '178', 228, 227, 228, 394, 394, 397, '116.6', '125.6', '2025-01-14 13:52:00', 'WhatsApp Image 2025-01-14 at 12.00.11 PM (3).jpeg'),
(166, '164', '132', '154', 228, 227, 229, 394, 394, 397, '99.4', '104.6', '2025-01-14 19:18:00', 'WhatsApp Image 2025-01-14 at 2.27.28 PM (4).jpeg'),
(167, '182.4', '162.4', '167.6', 225.4, 223.8, 225.6, 388.7, 388.8, 391.5, '110.3', '117.4', '2025-01-15 06:45:00', 'Screenshot (156).png'),
(168, '208.4', '154.4', '170.0', 226.4, 225.3, 226.8, 390.7, 391, 393.4, '111.1', '120.0', '2025-01-15 02:00:00', 'WhatsApp Image 2025-01-14 at 2.27.28 PM (5).jpeg'),
(169, '159', '121', '138', 229, 228, 229, 395, 396, 398, '92.51', '96.04', '2025-01-15 20:29:00', 'WhatsApp Image 2025-01-15 at 20.22.56.jpeg'),
(170, '188', '138', '147', 226, 225, 226, 390, 390, 393, '100.9', '107.7', '2025-01-16 07:15:00', 'WhatsApp Image 2025-01-15 at 20.22.56 (1).jpeg'),
(171, '248', '188', '200', 226, 225, 226, 390, 390, 393, '128', '140', '2025-01-16 13:56:00', 'WhatsApp Image 2025-01-16 at 13.50.59 (1).jpeg'),
(172, '146', '113', '124', 229, 227, 229, 395, 395, 398, '84.9', '88.45', '2025-01-16 20:18:00', 'WhatsApp Image 2025-01-16 at 20.15.51.jpeg'),
(173, '164', '126', '134', 226, 225, 227, 390, 390, 393, '90.90', '95.92', '2025-01-17 07:43:00', 'Screenshot (173).png');

-- --------------------------------------------------------

--
-- Table structure for table `report_lvmdp2`
--

CREATE TABLE `report_lvmdp2` (
  `id_report_lvmdp2` int NOT NULL,
  `R` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `S` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `T` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `L1N` float NOT NULL,
  `L2N` float NOT NULL,
  `L3N` float NOT NULL,
  `R1N` float NOT NULL,
  `R2N` float NOT NULL,
  `R3N` float NOT NULL,
  `kv` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `kva` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `date_time` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `dokumentasi` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_lvmdp2`
--

INSERT INTO `report_lvmdp2` (`id_report_lvmdp2`, `R`, `S`, `T`, `L1N`, `L2N`, `L3N`, `R1N`, `R2N`, `R3N`, `kv`, `kva`, `date_time`, `dokumentasi`) VALUES
(27, '123', '43', '23', 0, 0, 0, 0, 0, 0, '2323', '32', '2024-08-14 17:17:00', 'Screenshot 2023-03-24 104850.png'),
(28, '96', '94', '95', 0, 0, 0, 0, 0, 0, '63', '34', '2024-08-15 20:00:00', 'WhatsApp Image 2024-08-15 at 20.03.20_d6cdf07c.jpg'),
(31, '92', '95', '92', 0, 0, 0, 0, 0, 0, '62', '63', '2024-08-22 14:54:00', 'WhatsApp Image 2024-08-22 at 14.35.45_227e9cc7.jpg'),
(42, '890', '8756', '76', 0, 0, 0, 0, 0, 0, '434', '123', '2024-08-24 01:41:00', 'SLD dan Topologi AC_001.png'),
(43, '103', '108', '102', 0, 0, 0, 0, 0, 0, '71', '71', '2024-08-23 20:00:00', 'WhatsApp Image 2024-08-15 at 20.03.22_23528855.jpg'),
(45, '112', '107', '107', 0, 0, 0, 0, 0, 0, '73', '73', '2024-08-26 14:00:00', 'WhatsApp Image 2024-08-26 at 14.32.52_b7e12bf0.jpg'),
(46, '43', '43', '43', 0, 0, 0, 0, 0, 0, '434', '43', '2024-08-27 18:00:00', 'WhatsApp Image 2024-08-26 at 14.32.51_45372148.jpg'),
(61, '103', '109', '103', 0, 0, 0, 0, 0, 0, '73', '73', '2024-08-28 06:00:00', 'WhatsApp Image 2024-08-28 at 06.24.51_13f1992a.jpg'),
(62, '83', '79', '78', 0, 0, 0, 0, 0, 0, '12', '79', '2024-08-30 00:00:00', 'WhatsApp Image 2024-08-28 at 06.24.50_5825801e.jpg'),
(63, '103', '109', '103', 0, 0, 0, 0, 0, 0, '73', '73', '2024-08-30 14:00:00', 'WhatsApp Image 2024-08-30 at 14.44.42_fb01c076.jpg'),
(64, '103', '110', '106', 0, 0, 0, 0, 0, 0, '71', '72', '2024-08-31 20:59:00', 'WhatsApp Image 2024-08-31 at 20.25.26_ed6d06ad.jpg'),
(70, '30', '30', '30', 30, 30, 30, 30, 30, 30, '30', '30', '2024-11-04 02:00:00', 'Capture2.JPG'),
(71, '105', '101', '104', 389, 387, 387, 224, 224, 223, '71', '71', '2024-11-04 08:00:00', 'WhatsApp Image 2024-11-04 at 7.32.40 AM.jpeg'),
(76, '389', '387', '388', 225, 224, 223, 107, 111, 107, '72', '72', '2024-11-04 14:00:00', 'WhatsApp Image 2024-11-04 at 2.23.55 PM.jpeg'),
(77, '389', '387', '387', 224, 224, 223, 100, 100, 102, '66', '67', '2024-11-04 20:00:00', 'WhatsApp Image 2024-11-04 at 7.32.38 AM(1).jpeg'),
(78, '114', '111', '109', 225, 224, 223, 389, 387, 388, '74', '75', '2024-11-05 14:00:00', 'WhatsApp Image 2024-11-05 at 2.27.46 PM.jpeg'),
(79, '99', '98', '100', 226, 226, 225, 392, 389, 390, '66', '67', '2024-11-05 20:00:00', 'WhatsApp Image 2024-11-05 at 20.28.50.jpeg'),
(80, '113', '108', '108', 224, 224, 223, 390, 387, 387, '73', '74', '2024-11-06 07:00:00', 'WhatsApp Image 2024-11-06 at 07.39.48.jpeg'),
(81, '94', '92', '95', 225, 225, 224, 391, 388, 389, '63', '64', '2024-11-06 14:00:00', 'WhatsApp Image 2024-11-06 at 14.27.34 (3).jpeg'),
(85, '86', '22', '33', 65, 78, 98, 44, 67, 88, '57', '46', '2024-11-08 13:33:00', 'logo-telkomsel-baru-570x320.png'),
(89, '56', '457', '753', 556, 345, 834, 689, 235, 975, '678', '445', '2024-11-15 11:26:00', 'MTA (1).png'),
(90, '223', '457', '214', 111, 563, 234, 887, 999, 673, '115', '210', '2024-11-16 18:41:00', 'MTA.png'),
(93, '223', '457', '214', 111, 563, 234, 887, 999, 975, '678', '210', '2024-12-10 13:34:00', 'images (1).png'),
(95, '223', '457', '214', 556, 563, 234, 887, 999, 975, '115', '210', '2024-12-11 10:37:00', 'images.png'),
(97, '223', '457', '214', 556, 563, 834, 887, 999, 975, '115', '445', '2024-12-11 13:44:00', 'images.jpg'),
(98, '436', '467', '325', 266, 46663, 52325, 523253, 32, 3254, '34', '3325', '2024-12-11 14:25:00', 'images (2).png'),
(99, '436', '467', '325', 266, 46663, 52325, 523253, 32, 3254, '34', '3325', '2024-12-11 15:08:00', 'images (1).jpg'),
(100, '436', '467', '325', 266, 46663, 52325, 523253, 32, 3254, '436', '3325', '2024-12-11 15:46:00', 'temperatur_icon.png'),
(101, '133', '118', '125', 221, 220, 25, 397, 392, 391, '77.2', '77.69', '2024-12-28 08:09:00', 'WhatsApp Image 2024-12-26 at 08.06.19.jpeg'),
(106, '116', '112', '114', 228, 225, 228, 392, 393, 396, '78.08', '78.39', '2024-12-28 12:21:00', 'WhatsApp Image 2024-12-21 at 3.07.20 PM.jpeg'),
(107, '118.8', '112.9', '115.8', 229.6, 227.4, 229.8, 395.1, 395.6, 398.8, '78.4', '79.0', '2024-12-28 19:55:00', 'Screenshot (1).png'),
(108, '113', '110', '112', 229, 227, 229, 395, 395, 398, '76.45', '76.94', '2024-12-29 06:33:00', 'Screenshot (5).png'),
(109, '117', '114', '116', 264, 254, 261, 387, 387, 390, '26.44', '26.54', '2024-12-29 12:02:00', 'WhatsApp Image 2024-12-06 at 11.37.01 AM (1).jpeg'),
(110, '115.4', '111.6', '113.9', 231, 229, 231, 398.7, 399.1, 402.5, '78.2', '78.5', '2024-12-29 19:25:00', 'Screenshot (18).png'),
(112, '113', '110', '112', 226, 225, 227, 390, 391, 394, '76.2', '76.5', '2024-12-30 06:24:00', 'WhatsApp Image 2024-12-30 at 06.21.38 (2).jpeg'),
(113, '116', '112', '114', 227, 225, 227, 391, 392, 395, '77.66', '78.02', '2024-12-30 12:51:00', 'WhatsApp Image 2024-12-16 at 9.47.33 PM (1).jpeg'),
(114, '115', '111', '113', 230, 228, 231, 397, 397, 401, '78.20', '70.59', '2024-12-30 18:46:00', 'Kwh.jpeg'),
(115, '114', '110', '112', 229, 227, 229, 395, 395, 398, '76.44', '76.90', '2024-12-31 06:23:00', 'WhatsApp Image 2024-12-21 at 3.06.41 PM.jpeg'),
(118, '116', '113', '114', 227, 225, 227, 391, 392, 394, '77.71', '78.10', '2024-12-31 14:49:00', 'WhatsApp Image 2024-12-19 at 4.27.21 PM.jpeg'),
(119, '114', '111', '113', 231, 229, 231, 398, 399, 402, '78.00', '78.46', '2024-12-31 18:11:00', 'WhatsApp Image 2024-12-21 at 3.07.21 PM.jpeg'),
(120, '113', '110', '112', 229, 227, 229, 394, 394, 397, '76.40', '76.94', '2025-01-01 06:32:00', 'Screenshot (55).png'),
(121, '113', '110', '112', 229, 227, 229, 394, 394, 397, '76.40', '76.94', '2025-01-01 06:37:00', 'Screenshot (52).png'),
(122, '113', '110', '112', 229, 227, 229, 394, 394, 397, '76.40', '76.94', '2025-01-01 06:47:00', 'Screenshot (37).png'),
(123, '116', '112', '114', 229, 226, 229, 394, 394, 398, '78.05', '78.54', '2025-01-01 18:24:00', 'WhatsApp Image 2024-12-18 at 11.50.49 PM.jpeg'),
(124, '112.7', '109.2', '111.1', 229.8, 227.6, 229.7, 395.5, 395.7, 398.7, '75.95', '76.59', '2025-01-02 05:40:00', 'Screenshot (64).png'),
(125, '116', '113', '114', 227, 225, 227, 391, 392, 395, '77.56', '77.91', '2025-01-02 12:34:00', 'WhatsApp Image 2024-12-17 at 8.12.35 PM.jpeg'),
(126, '115', '111', '113', 231, 229, 232, 399, 399, 402, '78.49', '78.88', '2025-01-02 18:45:00', 'WhatsApp Image 2024-12-20 at 9.40.13 AM (1).jpeg'),
(127, '112.8', '109.3', '111.8', 229.1, 227.2, 229.4, 394.7, 395, 398.2, '75.82', '76.38', '2025-01-03 05:39:00', 'Screenshot (62).png'),
(128, '117', '113', '115', 226, 224, 226, 389, 390, 393, '77.97', '78.98', '2025-01-03 14:00:00', 'Screenshot (74).png'),
(129, '116', '112', '114', 228, 226, 228, 393, 394, 397, '78.17', '78.69', '2025-01-03 18:58:00', 'Screenshot (47).png'),
(130, '114', '111', '112', 226, 224, 226, 390, 390, 393, '76.6', '77.0', '2025-01-04 07:56:00', 'Screenshot (65).png'),
(131, '116.0', '112.1', '114.1', 228.1, 226, 228.2, 392.7, 393.1, 396.1, '77.36', '77.86', '2025-01-04 02:00:00', 'WhatsApp Image 2025-01-04 at 13.27.29 (1).jpeg'),
(132, '115', '111', '114', 231, 229, 232, 398, 399, 402, '78.27', '78.73', '2025-01-04 20:00:00', 'Screenshot (85).png'),
(133, '115', '116', '113', 227, 226, 228, 392, 393, 396, '77.3', '77.7', '2025-01-05 06:27:00', 'Screenshot (87).png'),
(135, '117', '113', '115', 228, 226, 229, 394, 394, 398, '26.67', '26.66', '2025-01-05 14:50:00', 'WhatsApp Image 2024-12-18 at 4.47.16 PM.jpeg'),
(136, '116', '112', '115', 229, 227, 230, 395, 396, 399, '78.52', '78.83', '2025-01-05 20:53:00', 'WhatsApp Image 2025-01-05 at 20.49.08 (1).jpeg'),
(137, '116', '112', '115', 229, 227, 230, 395, 396, 399, '78.52', '78.83', '2025-01-05 21:01:00', 'WhatsApp Image 2025-01-05 at 20.49.08 (8).jpeg'),
(138, '114.2', '110.4', '112.4', 228.9, 226.5, 228.8, 393.9, 393.9, 397.2, '76.58', '77.15', '2025-01-06 07:11:00', 'Screenshot (90).png'),
(139, '116', '113', '114', 227, 225, 227, 391, 393, 395, '78.07', '78.55', '2025-01-06 13:25:00', 'WhatsApp Image 2025-01-05 at 20.49.08 (5).jpeg'),
(140, '117', '112', '114', 230, 227, 230, 395, 396, 399, '78.61', '79.04', '2025-01-06 19:28:00', 'WhatsApp Image 2024-12-30 at 06.21.39.jpeg'),
(141, '113.4', '109.6', '111.1', 229.3, 227.1, 229.4, 394.8, 394.9, 398.2, '76.12', '76.42', '2025-01-07 06:21:00', 'Screenshot (98).png'),
(142, '117', '113', '115', 227, 225, 227, 391, 391, 394, '78.22', '78.58', '2025-01-07 14:00:00', 'Screenshot (105).png'),
(143, '116', '112', '114', 230, 228, 230, 397, 397, 400, '78.42', '78.95', '2025-01-07 19:22:00', 'Screenshot (104).png'),
(144, '115', '112', '113', 226, 224, 226, 390, 390, 393, '76.83', '77.38', '2025-01-08 08:24:00', 'Screenshot (100).png'),
(145, '116', '113', '114', 225, 223, 225, 398, 389, 392, '26.29', '26.44', '2025-01-08 13:46:00', 'WhatsApp Image 2025-01-08 at 8.56.01 AM.jpeg'),
(146, '117', '113', '115', 228, 226, 229, 393, 394, 398, '78.68', '79.28', '2025-01-08 19:39:00', 'Screenshot (112).png'),
(147, '116', '112', '114', 224, 223, 224, 387, 387, 390, '77.08', '77.46', '2025-01-09 08:00:00', 'Screenshot (121).png'),
(148, '118', '115', '116', 226, 224, 226, 390, 390, 393, '78.09', '78.29', '2025-01-09 13:23:00', 'WhatsApp Image 2025-01-09 at 9.04.24 AM (1).jpeg'),
(149, '116', '112', '113', 231, 28, 231, 398, 398, 401, '78.99', '78.29', '2025-01-09 19:56:00', 'WhatsApp Image 2025-01-09 at 19.43.51.jpeg'),
(150, '113.5', '110.3', '111.9', 229.2, 227.3, 229.3, 394.8, 395.1, 398.1, '76.68', '77.04', '2025-01-10 06:50:00', 'Screenshot (120).png'),
(151, '117', '113', '115', 225, 223, 225, 388, 389, 392, '77.73', '78.19', '2025-01-10 13:38:00', 'WhatsApp Image 2025-01-09 at 19.43.51 (2).jpeg'),
(152, '116', '112', '114', 230, 228, 230, 396, 396, 399, '78.68', '79.03', '2025-01-10 19:59:00', 'WhatsApp Image 2025-01-09 at 9.04.26 AM (1).jpeg'),
(153, '113.1', '110.0', '111.6', 228.9, 226.8, 228.9, 394.1, 394.3, 397.4, '75.88', '76.45', '2025-01-11 06:31:00', 'Screenshot (129).png'),
(154, '116', '113', '114', 227, 225, 227, 391, 392, 394, '78.09', '78.30', '2025-01-11 14:05:00', 'Screenshot (137).png'),
(155, '116', '112', '114', 230, 228, 230, 396, 396, 400, '78.20', '78.86', '2025-01-11 19:27:00', 'Screenshot (136).png'),
(156, '114', '112', '113', 226, 224, 226, 390, 390, 393, '76.5', '76.9', '2025-01-12 07:38:00', 'WhatsApp Image 2024-12-30 at 06.21.38 (1).jpeg'),
(157, '117.8', '113.2', '115.8', 228.5, 226.5, 228.6, 393.5, 393.9, 396.8, '78.23', '78.47', '2025-01-12 02:00:00', 'Screenshot (124).png'),
(158, '116', '112', '114', 229, 227, 229, 395, 395, 398, '78.6', '79.0', '2025-01-12 20:28:00', 'WhatsApp Image 2025-01-12 at 20.27.25 (2).jpeg'),
(160, '115', '112', '113', 226, 225, 226, 392, 392, 394, '77.23', '76.87', '2025-01-13 08:31:00', 'WhatsApp Image 2025-01-12 at 20.27.27.jpeg'),
(161, '116', '112', '114', 228, 226, 228, 392, 393, 395, '77.69', '78.18', '2025-01-13 13:50:00', 'WhatsApp Image 2025-01-12 at 20.27.25 (1).jpeg'),
(163, '117', '114', '115', 230, 227, 230, 395, 396, 399, '79.19', '79.58', '2025-01-13 20:29:00', 'Screenshot (149).png'),
(164, '114.7', '111.4', '113.0', 227.6, 225.5, 227.6, 392, 392, 395.1, '76.57', '76.98', '2025-01-14 06:54:00', 'Screenshot (142).png'),
(165, '116', '113', '113', 228, 227, 228, 394, 394, 397, '77.98', '78.30', '2025-01-14 13:52:00', 'WhatsApp Image 2025-01-14 at 12.00.11 PM (2).jpeg'),
(166, '116', '112', '114', 230, 227, 230, 396, 396, 399, '78.22', '78.64', '2025-01-14 19:18:00', 'WhatsApp Image 2025-01-14 at 2.27.28 PM (3).jpeg'),
(167, '114.5', '111.6', '112.8', 226.8, 224.9, 226.9, 390.8, 390.9, 393.9, '76.13', '76.59', '2025-01-15 06:45:00', 'Screenshot (155).png'),
(168, '116.8', '113.6', '114.4', 228.6, 226.6, 228.5, 393.9, 393.8, 396.5, '78.15', '78.44', '2025-01-15 02:00:00', 'WhatsApp Image 2025-01-14 at 2.27.28 PM (4).jpeg'),
(169, '116', '112', '114', 229, 228, 229, 395, 396, 398, '92.5', '96.4', '2025-01-15 20:29:00', 'WhatsApp Image 2025-01-15 at 20.22.56.jpeg'),
(170, '114', '112', '111', 228, 225, 228, 392, 392, 396, '76.53', '76.89', '2025-01-16 07:15:00', 'WhatsApp Image 2025-01-15 at 20.22.56 (1).jpeg'),
(171, '117', '114', '114', 227, 225, 226, 391, 390, 393, '78.17', '77.78', '2025-01-16 13:56:00', 'WhatsApp Image 2025-01-16 at 13.50.58 (1).jpeg'),
(172, '116', '112', '114', 229, 227, 229, 395, 395, 398, '78.2', '79.0', '2025-01-16 20:18:00', 'WhatsApp Image 2025-01-16 at 20.15.51.jpeg'),
(173, '115', '111', '113', 227, 225, 227, 392, 392, 395, '77.05', '77.51', '2025-01-17 07:43:00', 'Screenshot (174).png');

-- --------------------------------------------------------

--
-- Table structure for table `report_suhu`
--

CREATE TABLE `report_suhu` (
  `id_report_suhu` int NOT NULL,
  `RTrafo` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `RGenset` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `RBattery` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `RKontrol` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `RRan` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `RTransmissi` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `RCore` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `dokumentasi` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL,
  `date_time` varchar(1500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_suhu`
--

INSERT INTO `report_suhu` (`id_report_suhu`, `RTrafo`, `RGenset`, `RBattery`, `RKontrol`, `RRan`, `RTransmissi`, `RCore`, `dokumentasi`, `date_time`) VALUES
(17, '22', '22', '23', '23', '23', '23', '2', 'WhatsApp Image 2022-08-01 at 01.25.29.jpeg', ''),
(18, '78', '78', '78', '78', '787', '87', '7', 'WhatsApp Image 2024-06-19 at 7.04.18 PM.jpeg', ''),
(20, '90', '89', '32', '23', '123', '34', '234', 'telepon penting.jpg', ''),
(21, '34', '43', '43', '43', '43', '43', '43', 'PEMADAM.jpg', ''),
(22, '34', '89', '78', '23', '123', '43', '234', 'pemadam kebakaran.jpg', ''),
(23, '34', '43', '43', '43', '43', '43', '43', 'Screenshot 2023-03-10 192740.png', ''),
(24, '11', '111', '11', '11', '11', '11', '11', 'WIN_20230305_16_43_00_Pro.jpg', ''),
(27, '23', '23', '23', '23', '23', '23', '23', 'WhatsApp Image 2024-04-04 at 6.58.38 PM (2).jpeg', ''),
(40, '34', '89', '22', '67', '43', '22', '43', 'WhatsApp Image 2024-08-22 at 14.35.45_227e9cc7.jpg', ''),
(41, '34', '111', '22', '22', '123', '22', '11', 'SLD dan Topologi AC_002.png', ''),
(42, '11', '89', '22', '23', '123', '22', '67', 'WhatsApp Image 2024-08-15 at 20.03.19_6cef4328.jpg', ''),
(43, '29', '29', '22', '22', '22', '22', '22', 'WhatsApp Image 2024-08-15 at 20.03.22_23528855.jpg', ''),
(45, '32', '29', '22', '22', '22', '23', '22', 'WhatsApp Image 2024-08-26 at 14.32.52_bc358179.jpg', ''),
(46, '29', '30', '22', '22', '22', '22', '22', 'WhatsApp Image 2024-08-26 at 14.32.52_b7e12bf0.jpg', ''),
(60, '29', '31', '22', '22', '22', '22', '22', 'WhatsApp Image 2024-08-26 at 14.32.51_ade17da9.jpg', ''),
(61, '28', '28', '22', '22', '22', '22', '21', 'WhatsApp Image 2024-08-28 at 06.24.52_c0cefd7b.jpg', ''),
(62, '22', '22', '22', '22', '22', '22', '22', 'WhatsApp Image 2024-08-28 at 06.24.51_531e11b0.jpg', ''),
(63, '28', '28', '22', '22', '22', '22', '21', 'WhatsApp Image 2024-08-30 at 14.44.43_a55283c0.jpg', ''),
(64, '29', '28', '22', '22', '22', '22', '22', 'WhatsApp Image 2024-08-31 at 20.25.27_a326e32f.jpg', ''),
(65, '29', '28', '22', '22', '22', '22', '22', 'WhatsApp Image 2024-08-31 at 22.21.15_fd343de2.jpg', ''),
(69, '12', '12', '12', '12', '12', '12', '12', 'Capture 3.JPG', ''),
(70, '50', '50', '50', '50', '50', '50', '50', '4.JPG', ''),
(71, '28.5', '29.0', '22.4', '23.9', '22.6', '22.6', '20.5', 'WhatsApp Image 2024-11-04 at 7.32.38 AM.jpeg', ''),
(76, '33.3', '30.6', '22.2', '24.4', '22.2', '22.6', '20.9', 'WhatsApp Image 2024-11-04 at 2.23.57 PM.jpeg', ''),
(77, '28.9', '29.6', '23.9', '23.7', '23.0', '22.5', '23.4', 'WhatsApp Image 2024-10-24 at 11.54.01.jpeg', ''),
(78, '33', '30', '24', '24', '22.4', '22.5', '23.2', 'WhatsApp Image 2024-11-05 at 2.27.47 PM (1).jpeg', ''),
(79, '28.8', '29', '24', '23.7', '22.6', '22.4', '24', 'WhatsApp Image 2024-11-05 at 20.39.06.jpeg', ''),
(80, '27', '28', '24', '23', '22', '22', '24', 'WhatsApp Image 2024-11-06 at 07.39.47.jpeg', ''),
(81, '31.1', '31.1', '24.1', '24.1', '22.6', '22.9', '23.4', 'WhatsApp Image 2024-11-06 at 14.27.34 (1).jpeg', ''),
(83, '29', '30', '24', '24', '22', '22', '23', 'WhatsApp Image 2024-11-06 at 20.22.49 (2).jpeg', ''),
(85, '12', '11', '23', '11', '43', '11', '22', 'MTA.png', ''),
(89, '12', '13', '55', '34', '65', '23', '55', 'temperatur_icon.png', ''),
(90, '12', '13', '55', '34', '65', '23', '55', 'WhatsApp Image 2024-10-21 at 11.21.38.jpeg', ''),
(92, '12', '13', '55', '34', '65', '23', '55', 'images (1).png', ''),
(93, '12', '13', '55', '34', '65', '23', '55', 'images.png', ''),
(95, '12', '13', '55', '34', '65', '23', '55', 'images.png', ''),
(97, '12', '13', '55', '34', '65', '23', '55', 'images.jpg', ''),
(98, '123', '2134', '4657', '53556', '65444', '64343', '4356', 'images (1).png', ''),
(99, '123', '2134', '4657', '53556', '65444', '64343', '4356', 'images (2).png', ''),
(100, '123', '2134', '4657', '53556', '65444', '64343', '4356', 'temperatur_icon.png', ''),
(101, '12', '27', '25', '22', '26', '25', '22', 'WhatsApp Image 2024-12-26 at 08.06.19.jpeg', ''),
(106, '30', '28', '25', '22', '19', '25', '21', 'WhatsApp Image 2024-12-21 at 3.07.22 PM (1).jpeg', ''),
(107, '27.1', '29.3', '25.8', '22.9', '20.1', '20.1', '21.0', 'Screenshot (3).png', ''),
(108, '30', '29', '25', '22', '26', '25', '23', 'Screenshot (1).png', ''),
(109, '30.9', '28.1', '25.5', '22.7', '19.2', '25.5', '21.0', 'WhatsApp Image 2024-12-12 at 6.23.44 PM.jpeg', ''),
(110, '28.8', '26.8', '25.8', '22.0', '20.2', '25.5', '21.0', 'Screenshot (15).png', ''),
(112, '27.7', '25.9', '25.8', '22.3', '20.0', '26.0', '21.0', 'WhatsApp Image 2024-12-30 at 06.21.40.jpeg', ''),
(113, '32', '28', '25', '21.9', '19', '25', '21', 'WhatsApp Image 2024-12-17 at 8.12.34 PM.jpeg', ''),
(114, '30', '28', '25', '23', '20', '19', '21', 'Kwh.jpeg', ''),
(115, '28.2', '26.0', '25.9', '26.7', '20.0', '25.7', '21.1', 'WhatsApp Image 2024-12-21 at 3.06.41 PM.jpeg', ''),
(118, '31', '28', '26', '25', '19', '26', '23', 'WhatsApp Image 2024-12-05 at 3.16.06 PM (1).jpeg', ''),
(119, '29.9', '27.5', '25.7', '27.0', '20.1', '26.0', '21.1', 'WhatsApp Image 2024-12-21 at 3.07.21 PM.jpeg', ''),
(120, '28', '26', '26', '28', '20.0', '25', '21', 'Screenshot (57).png', ''),
(121, '28', '26', '26', '28', '20.0', '25', '21', 'Screenshot (53).png', ''),
(122, '28', '26', '26', '28', '20.0', '25', '21', 'Screenshot (59).png', ''),
(123, '30.4', '28', '25.8', '27.9', '20.1', '25.5', '21.1', 'WhatsApp Image 2024-12-18 at 11.50.49 PM.jpeg', ''),
(124, '28', '26', '26', '25', '20', '25', '21', 'Screenshot (64).png', ''),
(125, '31.4', '28.5', '25.7', '22.1', '19.2', '25.7', '21.1', 'WhatsApp Image 2024-12-11 at 7.29.11 AM.jpeg', ''),
(126, '30', '28', '25', '20', '20', '26', '21', 'WhatsApp Image 2024-12-20 at 2.22.51 PM.jpeg', ''),
(127, '28.4', '26.5', '26.1', '19.4', '20.6', '25.7', '21.0', 'Screenshot (67).png', ''),
(128, '30.9', '28.7', '25.6', '21', '19.2', '25.9', '21.1', 'Screenshot (72).png', ''),
(129, '30', '27', '25', '20', '20', '26', '21', 'Screenshot (36).png', ''),
(130, '28', '28', '26', '20', '19', '25', '21', 'Screenshot (65).png', ''),
(131, '31.1', '28.5', '25.9', '21.1', '19.3', '25.9', '21.1', 'WhatsApp Image 2025-01-04 at 13.27.29 (2).jpeg', ''),
(132, '29', '27', '25', '20', '20', '26', '21', 'Screenshot (83).png', ''),
(133, '28', '28', '25', '19', '20', '26.0', '21', 'Screenshot (87).png', ''),
(134, '30.8', '29.0', '2525.8', '20.1', '19.1', '29.9', '21.1', 'WhatsApp Image 2025-01-04 at 13.27.31.jpeg', ''),
(135, '30.6', '29.0', '25.8', '20.1', '19.1', '25.9', '21.1', 'WhatsApp Image 2024-12-12 at 5.10.09 PM.jpeg', ''),
(136, '30', '29', '26', '20', '20', '25', '23', 'WhatsApp Image 2025-01-05 at 20.49.08 (4).jpeg', ''),
(137, '30', '29', '25', '20', '22', '25', '21', 'WhatsApp Image 2025-01-05 at 20.49.08 (6).jpeg', ''),
(138, '28.0', '26.1', '25.6', '20.5', '20.2', '25.5', '21.1', 'Screenshot (92).png', ''),
(139, '31', '28', '25', '20', '19', '25', '21', 'WhatsApp Image 2025-01-05 at 20.49.08 (7).jpeg', ''),
(140, '31', '28', '25', '20', '20', '25', '21', 'WhatsApp Image 2025-01-05 at 20.49.09 (2).jpeg', ''),
(141, '28.0', '26.0', '25.6', '20.9', '19.0', '25.5', '21.0', 'Screenshot (98).png', ''),
(142, '32.5', '29', '25', '26', '19', '26', '21', 'Screenshot (103).png', ''),
(143, '31', '29', '25', '25', '19', '25', '21', 'Screenshot (106).png', ''),
(144, '29', '28', '25', '25', '19', '25', '21', 'Screenshot (99).png', ''),
(145, '30.6', '28.5', '25', '25.1', '19.4', '26.2', '23.6', 'WhatsApp Image 2025-01-08 at 8.56.03 AM.jpeg', ''),
(146, '29', '27', '25', '22', '20', '26', '21', 'Screenshot (114).png', ''),
(147, '28', '26', '25', '22', '20', '22', '21', 'Screenshot (119).png', ''),
(148, '31.1', '29.5', '25.5', '22.0', '19.5', '26.0', '21.1', 'WhatsApp Image 2025-01-09 at 9.04.26 AM.jpeg', ''),
(149, '28', '26', '25', '21', '22', '25', '23', 'WhatsApp Image 2025-01-09 at 19.43.51 (3).jpeg', ''),
(150, '27.5', '26.0', '25.7', '20.0', '20.1', '25.8', '21.1', 'Screenshot (126).png', ''),
(151, '31', '29', '25', '21', '19', '26', '21', 'WhatsApp Image 2025-01-09 at 19.43.51 (4).jpeg', ''),
(152, '30', '30', '28', '20', '20', '26', '21', 'WhatsApp Image 2025-01-09 at 9.04.25 AM.jpeg', ''),
(153, '28.2', '26.5', '24.8', '20.08', '20.0', '26.0', '21.1', 'Screenshot (130).png', ''),
(154, '29', '27', '26', '20', '19', '26', '21', 'Screenshot (135).png', ''),
(155, '28', '26', '25', '21', '19', '25', '21', 'Screenshot (138).png', ''),
(156, '27.4', '25.7', '25.6', '21.0', '20.3', '24.6', '21.0', 'WhatsApp Image 2024-12-12 at 6.23.43 PM.jpeg', ''),
(157, '30.8', '28.0', '25.6', '26.9', '19.2', '25.6', '21.0', 'WhatsApp Image 2025-01-12 at 13.46.45.jpeg', ''),
(158, '30', '27', '25', '27', '20', '25', '21', 'WhatsApp Image 2025-01-12 at 20.27.25 (1).jpeg', ''),
(159, '28', '28', '26', '21', '20', '26', '21', 'Screenshot (147).png', ''),
(160, '29', '28', '26', '21', '21', '25', '21', 'WhatsApp Image 2025-01-12 at 20.27.26.jpeg', ''),
(161, '29.9', '27.9', '25.6', '21.0', '19.2', '25.7', '21.0', 'WhatsApp Image 2025-01-12 at 20.27.26 (1).jpeg', ''),
(163, '28', '26', '25', '21', '20', '25', '21', 'Screenshot (151).png', ''),
(164, '27.6', '26.0', '24.7', '19.7', '20.0', '20.0', '25.3', 'Screenshot (150).png', ''),
(165, '28.5', '27.0', '26.0', '20.9', '19.4', '25.4', '21.1', 'WhatsApp Image 2025-01-14 at 12.00.13 PM.jpeg', ''),
(166, '29', '27', '25', '23', '20', '25', '21', 'WhatsApp Image 2025-01-14 at 2.27.28 PM (5).jpeg', ''),
(167, '27.6', '26.0', '24.9', '22.0', '20.1', '25.0', '21.0', 'Screenshot (157).png', ''),
(168, '29.5', '27.5', '25.7', '21.8', '20.3', '25.5', '21.0', 'WhatsApp Image 2025-01-14 at 2.27.28 PM (6).jpeg', ''),
(169, '28', '26', '25', '20', '19', '25', '21', 'WhatsApp Image 2025-01-15 at 20.22.56 (1).jpeg', ''),
(170, '27', '26', '25', '17', '19', '25', '21', 'WhatsApp Image 2025-01-15 at 20.22.55.jpeg', ''),
(171, '30', '28', '26', '20', '20', '25', '21', 'WhatsApp Image 2025-01-16 at 13.50.59.jpeg', ''),
(172, '29', '27', '25', '24', '19', '25', '21', 'WhatsApp Image 2025-01-16 at 20.15.54.jpeg', ''),
(173, '28', '26.5', '25.7', '21.1', '19', '25.2', '21', 'Screenshot (172).png', '');

-- --------------------------------------------------------

--
-- Table structure for table `ups1`
--

CREATE TABLE `ups1` (
  `id` int NOT NULL,
  `Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `brand` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `kw` float NOT NULL,
  `kwper` float NOT NULL,
  `kva` float NOT NULL,
  `battery` int NOT NULL,
  `batteryper` int NOT NULL,
  `runtime` int NOT NULL,
  `A` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ups1`
--

INSERT INTO `ups1` (`id`, `Time`, `no`, `brand`, `type`, `kw`, `kwper`, `kva`, `battery`, `batteryper`, `runtime`, `A`) VALUES
(70, '2024-11-04 02:00:00', '1.2.01', 'Vektor', '30', 3.9, 14, 4.2, 274, 100, 120, 6.7),
(71, '2024-11-04 08:00:00', '1.2.01', 'Vektor', '30', 3.9, 14.3333, 4.3, 274, 100, 62, 6.7),
(76, '2024-11-04 14:00:00', '1.2.01', 'Vektor', '30', 3.9, 14.3333, 4.3, 274, 100, 62, 6.7),
(77, '2024-11-04 20:00:00', '1.2.01', 'Vektor', '30', 3.9, 14, 4.2, 274, 100, 62, 6.7),
(78, '2024-11-05 14:00:00', '1.2.01', 'Vektor', '30', 4, 14.3333, 4.3, 274, 100, 62, 6.7),
(79, '2024-11-05 20:00:00', '1.2.01', 'Vektor', '30', 3.9, 14, 4.2, 274, 100, 62, 6.7),
(80, '2024-11-06 07:00:00', '1.2.01', 'Vektor', '30', 3.9, 14.3333, 4.3, 274, 100, 62, 6.7),
(81, '2024-11-06 14:00:00', '1.2.01', 'Vektor', '30', 3.9, 14, 4.2, 274, 100, 62, 6.7),
(85, '2024-11-08 13:33:00', '1.2.01', 'Vektor', '30', 3.9, 14, 4.2, 274, 100, 62, 6.7),
(89, '2024-11-15 11:26:00', '1.2.01', 'Vektor', '30', 3.9, 14, 4.2, 274, 100, 62, 6.7),
(90, '2024-11-16 18:41:00', '1.2.01', 'Vektor', '30', 3.9, 14, 4.2, 274, 100, 62, 6.7),
(93, '2024-12-10 13:34:00', '1.2.01', 'Vektor', '30', 3.9, 14, 4.2, 274, 100, 62, 6.7),
(95, '2024-12-11 10:37:00', '1.2.01', 'Vektor', '30', 3.9, 14, 4.2, 274, 100, 62, 6.7),
(97, '2024-12-11 13:44:00', '1.2.01', 'Vektor', '30', 3.9, 14, 4.2, 274, 100, 62, 6.7),
(98, '2024-12-11 14:25:00', '1.2.01', 'Vektor', '30', 3.9, 14, 4.2, 274, 100, 62, 6.7),
(99, '2024-12-11 15:08:00', '1.2.01', 'Vektor', '30', 3.9, 14, 4.2, 274, 100, 62, 6.7),
(100, '2024-12-11 15:46:00', '1.2.01', 'Vektor', '30', 3.9, 14, 4.2, 274, 100, 62, 6.7),
(101, '2024-12-28 08:09:00', '1.01', 'Liebert', '30', 29.51, 99.7667, 29.93, 544, 100, 159, 40.6),
(106, '2024-12-28 12:21:00', '1.01', 'Liebert', '30', 30.27, 102.3, 30.69, 544, 100, 159, 40.6),
(107, '2024-12-28 19:55:00', '1.01', 'Liebert', '30', 30.52, 103.167, 30.95, 544, 100, 159, 40.6),
(108, '2024-12-29 06:33:00', '1.01', 'Liebert', '30', 29.78, 100.533, 30.16, 544, 100, 159, 40.6),
(109, '2024-12-29 12:02:00', '1.01', 'Liebert', '30', 30.3, 102.5, 30.75, 544, 100, 159, 40.6),
(110, '2024-12-29 19:25:00', '1.01', 'Liebert', '30', 30.6, 103.367, 31.01, 544, 100, 159, 40.6),
(112, '2024-12-30 06:24:00', '1.01', 'Liebert', '30', 30.6, 103.367, 31.01, 544, 100, 159, 40.6),
(113, '2024-12-30 12:51:00', '1.01', 'Liebert', '30', 30.1, 101.733, 30.52, 544, 100, 159, 40.6),
(114, '2024-12-30 18:46:00', '1.01', 'Liebert', '30', 30.68, 103.4, 31.02, 544, 100, 159, 40.6),
(115, '2024-12-31 06:23:00', '1.01', 'Liebert', '30', 29.84, 100.867, 30.26, 544, 100, 159, 40.6),
(118, '2024-12-31 14:49:00', '1.01', 'Liebert', '30', 30.25, 102.267, 30.68, 544, 100, 159, 40.6),
(119, '2024-12-31 18:11:00', '1.01', 'Liebert', '30', 30.36, 102.633, 30.79, 544, 100, 159, 40.6),
(121, '2025-01-01 06:37:00', '1.01', 'Liebert', '30', 29.52, 99.9, 29.97, 544, 100, 159, 40.6),
(122, '2025-01-01 06:47:00', '1.01', 'Liebert', '30', 29.52, 99.9, 29.97, 544, 100, 159, 40.6),
(123, '2025-01-01 18:24:00', '1.01', 'Liebert', '30', 30.43, 102.833, 30.85, 544, 100, 159, 40.6),
(124, '2025-01-02 05:40:00', '1.01', 'Liebert', '30', 29.57, 99.5, 29.85, 544, 100, 159, 40.6),
(125, '2025-01-02 12:34:00', '1.01', 'Liebert', '30', 30.18, 102, 30.6, 544, 100, 159, 40.6),
(126, '2025-01-02 18:45:00', '1.01', 'Liebert', '30', 30.47, 102.967, 30.89, 544, 100, 159, 40.6),
(127, '2025-01-03 05:39:00', '1.01', 'Liebert', '30', 29.62, 100.033, 30.01, 544, 100, 159, 40.6),
(128, '2025-01-03 14:00:00', '1.01', 'Liebert', '30', 30.37, 102.633, 30.79, 544, 100, 159, 40.6),
(129, '2025-01-03 18:58:00', '1.01', 'Liebert', '30', 30.4, 102.733, 30.82, 544, 100, 159, 40.6),
(130, '2025-01-04 07:56:00', '1.01', 'Liebert', '30', 30.56, 107.933, 32.38, 544, 100, 159, 40.6),
(131, '2025-01-04 02:00:00', '1.01', 'Liebert', '30', 30.28, 108.667, 32.6, 544, 100, 159, 40.6),
(132, '2025-01-04 20:00:00', '1.01', 'Liebert', '30', 30.55, 103.567, 31.07, 544, 100, 159, 40.6),
(133, '2025-01-05 06:27:00', '1.01', 'Liebert', '30', 29.59, 99.9, 29.97, 544, 100, 159, 40.6),
(135, '2025-01-05 14:50:00', '1.01', 'Liebert', '30', 30.33, 102.5, 30.75, 544, 100, 159, 40.6),
(136, '2025-01-05 20:53:00', '1.01', 'Liebert', '30', 30.33, 102.5, 30.75, 544, 100, 159, 40.6),
(137, '2025-01-05 21:01:00', '1.01', 'Liebert', '30', 31.1, 108.333, 32.5, 544, 100, 159, 40.6),
(138, '2025-01-06 07:11:00', '1.01', 'Liebert', '30', 29.7, 100.667, 30.2, 544, 100, 159, 40.6),
(139, '2025-01-06 13:25:00', '1.01', 'Liebert', '30', 30.45, 103.1, 30.93, 544, 100, 159, 40.6),
(140, '2025-01-06 19:28:00', '1.01', 'Liebert', '30', 30.46, 102.933, 30.88, 544, 100, 159, 40.6),
(141, '2025-01-07 06:21:00', '1.01', 'Liebert', '30', 29.6, 100.2, 30.06, 544, 100, 159, 40.6),
(142, '2025-01-07 14:00:00', '1.01', 'Liebert', '30', 30.23, 102.433, 30.73, 544, 100, 159, 40.6),
(143, '2025-01-07 19:22:00', '1.01', 'Liebert', '30', 30.45, 102.933, 30.88, 544, 100, 159, 40.6),
(144, '2025-01-08 08:24:00', '1.01', 'Liebert', '30', 30.45, 101.3, 30.39, 544, 100, 159, 40.6),
(145, '2025-01-08 13:46:00', '1.01', 'Liebert', '30', 30.45, 102.633, 30.79, 544, 100, 159, 40.6),
(146, '2025-01-08 19:39:00', '1.01', 'Liebert', '30', 30.37, 102.667, 30.8, 544, 100, 159, 40.6),
(147, '2025-01-09 08:00:00', '1.01', 'Liebert', '30', 31.38, 99.7, 29.91, 544, 100, 159, 40.6),
(148, '2025-01-09 13:23:00', '1.01', 'Liebert', '30', 30.22, 102.167, 30.65, 544, 100, 159, 40.6),
(149, '2025-01-09 19:56:00', '1.01', 'Liebert', '30', 31.2, 106.667, 32, 544, 100, 159, 40.6),
(150, '2025-01-10 06:50:00', '1.01', 'Liebert', '30', 29.7, 100.667, 30.2, 544, 100, 159, 40.6),
(151, '2025-01-10 13:38:00', '1.01', 'Liebert', '30', 30.1, 103.1, 30.93, 544, 100, 159, 40.6),
(152, '2025-01-10 19:59:00', '1.01', 'Liebert', '30', 30.51, 103.1, 30.93, 544, 100, 159, 40.6),
(153, '2025-01-11 06:31:00', '1.01', 'Liebert', '30', 30.08, 99.1, 29.73, 544, 100, 159, 40.6),
(154, '2025-01-11 14:05:00', '1.01', 'Liebert', '30', 30.21, 102.1, 30.63, 544, 100, 159, 40.6),
(155, '2025-01-11 19:27:00', '1.01', 'Liebert', '30', 30.47, 102.967, 30.89, 544, 100, 159, 40.6),
(156, '2025-01-12 07:38:00', '1.01', 'Liebert', '30', 30.47, 102.967, 30.89, 544, 100, 159, 40.6),
(157, '2025-01-12 02:00:00', '1.01', 'Liebert', '30', 30.53, 103.167, 30.95, 544, 100, 159, 40.6),
(158, '2025-01-12 20:28:00', '1.01', 'Liebert', '30', 30.53, 103.167, 30.95, 544, 100, 159, 40.6),
(160, '2025-01-13 08:31:00', '1.01', 'Liebert', '30', 30.04, 101.4, 30.42, 544, 100, 159, 40.6),
(161, '2025-01-13 13:50:00', '1.01', 'Liebert', '30', 30, 101.4, 30.42, 544, 100, 159, 40.6),
(163, '2025-01-13 20:29:00', '1.01', 'Liebert', '30', 30.73, 103.833, 31.15, 544, 100, 159, 40.6),
(164, '2025-01-14 06:54:00', '1.01', 'Liebert', '30', 29.71, 100.2, 30.06, 544, 100, 159, 40.6),
(165, '2025-01-14 13:52:00', '1.01', 'Liebert', '30', 30.25, 102.267, 30.68, 544, 100, 159, 40.6),
(166, '2025-01-14 19:18:00', '1.01', 'Liebert', '30', 30.28, 102.267, 30.68, 544, 100, 159, 40.6),
(167, '2025-01-15 06:45:00', '1.01', 'Liebert', '30', 29.61, 100.2, 30.06, 544, 100, 159, 40.6),
(168, '2025-01-15 02:00:00', '1.01', 'Liebert', '30', 30.08, 101.333, 30.4, 544, 100, 159, 40.6),
(169, '2025-01-15 20:29:00', '1.01', 'Liebert', '30', 30.08, 101.333, 30.4, 544, 100, 159, 40.6),
(170, '2025-01-16 07:15:00', '1.01', 'Liebert', '30', 29.93, 101.2, 30.36, 544, 100, 159, 40.6),
(171, '2025-01-16 13:56:00', '1.01', 'Liebert', '30', 29.93, 101.2, 30.36, 544, 100, 159, 40.6),
(172, '2025-01-16 20:18:00', '1.01', 'Liebert', '30', 29.93, 101.2, 30.36, 544, 100, 159, 40.6),
(173, '2025-01-17 07:43:00', '1.01', 'Liebert', '30', 29.79, 100.533, 30.16, 544, 100, 159, 40.6);

-- --------------------------------------------------------

--
-- Table structure for table `ups2`
--

CREATE TABLE `ups2` (
  `id` int NOT NULL,
  `Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `brand` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `kw` float NOT NULL,
  `kwper` float NOT NULL,
  `kva` float NOT NULL,
  `battery` int NOT NULL,
  `batteryper` int NOT NULL,
  `runtime` int NOT NULL,
  `A` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ups2`
--

INSERT INTO `ups2` (`id`, `Time`, `no`, `brand`, `type`, `kw`, `kwper`, `kva`, `battery`, `batteryper`, `runtime`, `A`) VALUES
(0, '2024-02-12 15:14:56', '', '', '', 67, 53, 54, 97, 23, 19, 0),
(0, '2024-02-12 15:16:15', '', '', '', 12, 3, 95, 77, 543, 87, 0),
(75, '2024-11-01 13:57:00', '1.2.02', 'ABB', '40', 0.59, 1.85, 0.74, 326, 100, 120, 1.5),
(75, '2024-11-01 13:57:00', '1.2.02', 'ABB', '40', 0.59, 1.85, 0.74, 326, 100, 120, 1.5),
(70, '2024-11-04 02:00:00', '1.2.02', 'ABB', '40', 0.59, 1.85, 0.74, 326, 100, 120, 1.5),
(71, '2024-11-04 08:00:00', '1.2.02', 'ABB', '40', 0.59, 1.875, 0.75, 326, 100, 120, 1.5),
(76, '2024-11-04 14:00:00', '1.2.02', 'ABB', '40', 0.59, 1.875, 0.75, 326, 100, 120, 1.5),
(77, '2024-11-04 20:00:00', '1.2.02', 'ABB', '40', 0.59, 1.9, 0.76, 326, 100, 120, 1.5),
(78, '2024-11-05 14:00:00', '1.2.02', 'ABB', '40', 0.6, 1.875, 0.75, 326, 100, 120, 1.5),
(79, '2024-11-05 20:00:00', '1.2.02', 'ABB', '40', 0.59, 1.9, 0.76, 326, 100, 120, 1.5),
(80, '2024-11-06 07:00:00', '1.2.02', 'ABB', '40', 0.6, 1.875, 0.75, 326, 100, 120, 1.5),
(81, '2024-11-06 14:00:00', '1.2.02', 'ABB', '40', 0.6, 1.9, 0.76, 326, 100, 120, 1.5),
(85, '2024-11-08 13:33:00', '1.2.02', 'ABB', '40', 0.6, 1.9, 0.76, 326, 100, 120, 1.5),
(89, '2024-11-15 11:26:00', '1.2.02', 'ABB', '40', 0.6, 1.9, 0.76, 326, 100, 120, 1.5),
(90, '2024-11-16 18:41:00', '1.2.02', 'ABB', '40', 0.6, 1.9, 0.76, 326, 100, 120, 1.5),
(93, '2024-12-10 13:34:00', '1.2.02', 'ABB', '40', 0.6, 1.9, 0.76, 326, 100, 120, 1.5),
(95, '2024-12-11 10:37:00', '1.2.02', 'ABB', '40', 0.6, 1.9, 0.76, 326, 100, 120, 1.5),
(97, '2024-12-11 13:44:00', '1.2.02', 'ABB', '40', 0.6, 1.9, 0.76, 326, 100, 120, 1.5),
(98, '2024-12-11 14:25:00', '1.2.02', 'ABB', '40', 0.6, 1.9, 0.76, 326, 100, 120, 1.5),
(99, '2024-12-11 15:08:00', '1.2.02', 'ABB', '40', 0.6, 1.9, 0.76, 326, 100, 120, 1.5),
(100, '2024-12-11 15:46:00', '1.2.02', 'ABB', '40', 0.6, 1.9, 0.76, 326, 100, 120, 1.5),
(101, '2024-12-28 08:09:00', '1.02', 'Eaton', '40', 31.25, 79.75, 31.9, 553, 100, 33, 32.82),
(106, '2024-12-28 12:21:00', '1.02', 'Eaton', '40', 32.01, 81.625, 32.65, 553, 100, 33, 32.82),
(107, '2024-12-28 19:55:00', '1.02', 'Eaton', '40', 32.32, 82.275, 32.91, 553, 100, 33, 50),
(108, '2024-12-29 06:33:00', '1.02', 'Eaton', '40', 31.4, 80.025, 32.01, 553, 100, 33, 50),
(109, '2024-12-29 12:02:00', '1.02', 'Eaton', '40', 33.01, 81.625, 32.65, 553, 100, 33, 50),
(110, '2024-12-29 19:25:00', '1.02', 'Eaton', '40', 32.25, 82.15, 32.86, 553, 100, 33, 50),
(112, '2024-12-30 06:24:00', '1.02', 'Eaton', '40', 32.25, 82.15, 32.86, 553, 100, 33, 50),
(113, '2024-12-30 12:51:00', '1.02', 'Eaton', '40', 31.94, 81.5, 32.6, 553, 100, 33, 50),
(114, '2024-12-30 18:46:00', '1.02', 'Eaton', '40', 32.34, 82.425, 32.97, 553, 100, 33, 50),
(115, '2024-12-31 06:23:00', '1.02', 'Eaton', '40', 31.52, 80.425, 32.17, 553, 100, 33, 50),
(118, '2024-12-31 14:49:00', '1.02', 'Eaton', '40', 31.99, 81.45, 32.58, 553, 100, 33, 50),
(119, '2024-12-31 18:11:00', '1.02', 'Eaton', '40', 32.17, 82.025, 32.81, 553, 100, 33, 50),
(121, '2025-01-01 06:37:00', '1.02', 'Eaton', '40', 31.23, 79.65, 31.86, 553, 100, 33, 50),
(122, '2025-01-01 06:47:00', '1.02', 'Eaton', '40', 31.23, 79.65, 31.86, 553, 100, 33, 50),
(123, '2025-01-01 18:24:00', '1.02', 'Eaton', '40', 32.28, 81.9, 32.76, 553, 100, 33, 50),
(124, '2025-01-02 05:40:00', '1.02', 'Eaton', '40', 31.25, 79.7, 31.88, 553, 100, 33, 50),
(125, '2025-01-02 12:34:00', '1.02', 'Eaton', '40', 32.05, 81.9, 32.76, 553, 100, 33, 50),
(126, '2025-01-02 18:45:00', '1.02', 'Eaton', '40', 32.36, 82.575, 33.03, 553, 100, 33, 50),
(127, '2025-01-03 05:39:00', '1.02', 'Eaton', '40', 31.22, 79.625, 31.85, 553, 100, 33, 50),
(128, '2025-01-03 14:00:00', '1.02', 'Eaton', '40', 32.01, 81.65, 32.66, 553, 100, 33, 50),
(129, '2025-01-03 18:58:00', '1.02', 'Eaton', '40', 32.3, 82.375, 32.95, 553, 100, 33, 50),
(130, '2025-01-04 07:56:00', '1.02', 'Eaton', '40', 32.38, 82.1, 32.84, 553, 100, 33, 50),
(131, '2025-01-04 02:00:00', '1.02', 'Eaton', '40', 31.97, 81.5, 32.6, 553, 100, 33, 50),
(132, '2025-01-04 20:00:00', '1.02', 'Eaton', '40', 32.3, 82.375, 32.95, 553, 100, 33, 50),
(133, '2025-01-05 06:27:00', '1.02', 'Eaton', '40', 31.2, 79.625, 31.85, 553, 100, 33, 50),
(135, '2025-01-05 14:50:00', '1.02', 'Eaton', '40', 31.84, 81.2, 32.48, 553, 100, 33, 50),
(136, '2025-01-05 20:53:00', '1.02', 'Eaton', '40', 31.84, 81.2, 32.48, 553, 100, 33, 50),
(137, '2025-01-05 21:01:00', '1.02', 'Eaton', '40', 31.78, 82, 32.8, 553, 100, 33, 50),
(138, '2025-01-06 07:11:00', '1.02', 'Eaton', '40', 31.26, 80.1, 32.04, 553, 100, 33, 50),
(139, '2025-01-06 13:25:00', '1.02', 'Eaton', '40', 31.97, 81.725, 32.69, 553, 100, 33, 50),
(140, '2025-01-06 19:28:00', '1.02', 'Eaton', '40', 32.13, 81.925, 32.77, 553, 100, 33, 50),
(141, '2025-01-07 06:21:00', '1.02', 'Eaton', '40', 31.11, 79.25, 31.7, 553, 100, 33, 50),
(142, '2025-01-07 14:00:00', '1.02', 'Eaton', '40', 31.88, 81.275, 32.51, 553, 100, 33, 50),
(143, '2025-01-07 19:22:00', '1.02', 'Eaton', '40', 31.95, 81.45, 32.58, 553, 100, 33, 50),
(144, '2025-01-08 08:24:00', '1.02', 'Eaton', '40', 31.95, 80.15, 32.06, 553, 100, 33, 50),
(145, '2025-01-08 13:46:00', '1.02', 'Eaton', '40', 31.5, 80.45, 32.18, 553, 100, 33, 50),
(146, '2025-01-08 19:39:00', '1.02', 'Eaton', '40', 31.39, 81.3, 32.52, 553, 100, 33, 50),
(147, '2025-01-09 08:00:00', '1.02', 'Eaton', '40', 31.37, 80.025, 32.01, 553, 100, 33, 50),
(148, '2025-01-09 13:23:00', '1.02', 'Eaton', '40', 32.07, 81.75, 32.7, 553, 100, 33, 50),
(149, '2025-01-09 19:56:00', '1.02', 'Eaton', '40', 31.2, 80, 32, 553, 100, 33, 50),
(150, '2025-01-10 06:50:00', '1.02', 'Eaton', '40', 319, 78.75, 31.5, 553, 100, 33, 50),
(151, '2025-01-10 13:38:00', '1.02', 'Eaton', '40', 32.02, 81.6, 32.64, 553, 100, 33, 50),
(152, '2025-01-10 19:59:00', '1.02', 'Eaton', '40', 32.01, 81.575, 32.63, 553, 100, 33, 50),
(153, '2025-01-11 06:31:00', '1.02', 'Eaton', '40', 31.15, 79.525, 31.81, 553, 100, 33, 50),
(154, '2025-01-11 14:05:00', '1.02', 'Eaton', '40', 31.78, 81.025, 32.41, 553, 100, 33, 50),
(155, '2025-01-11 19:27:00', '1.02', 'Eaton', '40', 32.06, 81.675, 32.67, 553, 100, 33, 50),
(156, '2025-01-12 07:38:00', '1.02', 'Eaton', '40', 32.06, 81.675, 32.67, 553, 100, 33, 50),
(157, '2025-01-12 02:00:00', '1.02', 'Eaton', '40', 32.13, 81.65, 32.66, 553, 100, 33, 50),
(158, '2025-01-12 20:28:00', '1.02', 'Eaton', '40', 32.13, 81.65, 32.66, 553, 100, 33, 50),
(160, '2025-01-13 08:31:00', '1.02', 'Eaton', '40', 32.13, 81.65, 32.66, 553, 100, 33, 50),
(161, '2025-01-13 13:50:00', '1.02', 'Eaton', '40', 32.13, 81.65, 32.66, 553, 100, 33, 50),
(163, '2025-01-13 20:29:00', '1.02', 'Eaton', '40', 32.11, 81.825, 32.73, 553, 100, 33, 50),
(164, '2025-01-14 06:54:00', '1.02', 'Eaton', '40', 31.28, 79.6, 31.84, 553, 100, 33, 50),
(165, '2025-01-14 13:52:00', '1.02', 'Eaton', '40', 31.87, 81.225, 32.49, 553, 100, 33, 50),
(166, '2025-01-14 19:18:00', '1.02', 'Eaton', '40', 30.7, 81.225, 32.49, 553, 100, 33, 50),
(167, '2025-01-15 06:45:00', '1.02', 'Eaton', '40', 31.75, 77.775, 31.11, 553, 100, 33, 50),
(168, '2025-01-15 02:00:00', '1.02', 'Eaton', '40', 31.84, 81.175, 32.47, 553, 100, 33, 50),
(169, '2025-01-15 20:29:00', '1.02', 'Eaton', '40', 31.84, 81.175, 32.47, 553, 100, 33, 50),
(170, '2025-01-16 07:15:00', '1.02', 'Eaton', '40', 31.36, 79.975, 31.99, 553, 100, 33, 50),
(171, '2025-01-16 13:56:00', '1.02', 'Eaton', '40', 31.36, 79.975, 31.99, 553, 100, 33, 50),
(172, '2025-01-16 20:18:00', '1.02', 'Eaton', '40', 31.36, 79.975, 31.99, 553, 100, 33, 50),
(173, '2025-01-17 07:43:00', '1.02', 'Eaton', '40', 31.13, 79.425, 31.77, 553, 100, 33, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dp_ac`
--
ALTER TABLE `dp_ac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_acces_control`
--
ALTER TABLE `dp_acces_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_alarm`
--
ALTER TABLE `dp_alarm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_apar`
--
ALTER TABLE `dp_apar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_cctv`
--
ALTER TABLE `dp_cctv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_crane`
--
ALTER TABLE `dp_crane`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_fss`
--
ALTER TABLE `dp_fss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_genset`
--
ALTER TABLE `dp_genset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_issue`
--
ALTER TABLE `dp_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_pac`
--
ALTER TABLE `dp_pac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_panel`
--
ALTER TABLE `dp_panel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_perijinan`
--
ALTER TABLE `dp_perijinan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_power`
--
ALTER TABLE `dp_power`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_rectifier`
--
ALTER TABLE `dp_rectifier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_resume`
--
ALTER TABLE `dp_resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_site`
--
ALTER TABLE `dp_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_spaceupdate`
--
ALTER TABLE `dp_spaceupdate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_tob`
--
ALTER TABLE `dp_tob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_trafo`
--
ALTER TABLE `dp_trafo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dp_ups`
--
ALTER TABLE `dp_ups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_info`
--
ALTER TABLE `report_info`
  ADD PRIMARY KEY (`no_report`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dp_acces_control`
--
ALTER TABLE `dp_acces_control`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dp_alarm`
--
ALTER TABLE `dp_alarm`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `dp_genset`
--
ALTER TABLE `dp_genset`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dp_issue`
--
ALTER TABLE `dp_issue`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dp_pac`
--
ALTER TABLE `dp_pac`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `dp_panel`
--
ALTER TABLE `dp_panel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `dp_perijinan`
--
ALTER TABLE `dp_perijinan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dp_power`
--
ALTER TABLE `dp_power`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dp_rectifier`
--
ALTER TABLE `dp_rectifier`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `dp_resume`
--
ALTER TABLE `dp_resume`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dp_site`
--
ALTER TABLE `dp_site`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dp_spaceupdate`
--
ALTER TABLE `dp_spaceupdate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `dp_tob`
--
ALTER TABLE `dp_tob`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dp_trafo`
--
ALTER TABLE `dp_trafo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dp_ups`
--
ALTER TABLE `dp_ups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `report_info`
--
ALTER TABLE `report_info`
  MODIFY `no_report` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
