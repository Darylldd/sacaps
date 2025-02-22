-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 22, 2025 at 04:15 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fmo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `aquaculture_facilities`
--

DROP TABLE IF EXISTS `aquaculture_facilities`;
CREATE TABLE IF NOT EXISTS `aquaculture_facilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `facility_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `species` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `contact_info` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `aquaculture_facilities`
--

INSERT INTO `aquaculture_facilities` (`id`, `facility_name`, `location`, `species`, `capacity`, `owner`, `contact_info`, `created_at`) VALUES
(1, 'Cloyd Pond', 'Romblon', 'koi', 'Puerto Galera', 'cloyd fesalbon', '898989989', '2025-02-17 14:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `fisherfolk`
--

DROP TABLE IF EXISTS `fisherfolk`;
CREATE TABLE IF NOT EXISTS `fisherfolk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(119) NOT NULL,
  `contact_info` varchar(119) NOT NULL,
  `fishing_methods` varchar(119) NOT NULL,
  `fishing_zone` varchar(119) NOT NULL,
  `license_number` varchar(119) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fisherfolk`
--

INSERT INTO `fisherfolk` (`id`, `name`, `contact_info`, `fishing_methods`, `fishing_zone`, `license_number`, `created_at`) VALUES
(1, 'cloyd alec', 'Calapan City', 'Fish Farming', 'Romblon', '01', '2025-02-17 13:55:00'),
(2, 'cloyd alec', 'Romblon', 'Fish Farming', 'Romblon', '01', '2025-02-17 13:55:44'),
(3, 'cloyd alec', 'Calapan City', 'Fish Farming', 'Romblon', '01', '2025-02-17 13:56:17'),
(4, 'cloyd alec', 'Calapan City', 'Fish Farming', 'Romblon', '01', '2025-02-17 13:56:56'),
(5, 'cloyd alec', 'Calapan City', 'Fish Farming', 'Romblon', '01', '2025-02-17 13:57:04'),
(6, 'Darylld Tupas', 'San Isidro', 'Fish net', 'Puerto Galera', '12345', '2025-02-17 13:57:11'),
(7, 'cloyd alec', 'Romblon', 'Fish Farming', 'Romblon', '01', '2025-02-17 14:20:16'),
(8, 'cloyd alec', 'Romblon', 'Fish Farming', 'Romblon', '01', '2025-02-17 14:21:37'),
(9, 'cloyd alec', 'Romblon', 'Fish Farming', 'Romblon', '01', '2025-02-17 14:28:15'),
(10, 'Darylld Tupasddd', 'San Isidro', 'Fish net', 'Puerto Galera', '12345', '2025-02-17 14:28:31'),
(11, 'cloyd alec', 'Romblon', 'Fish Farming', 'Romblon', '01', '2025-02-17 14:32:41'),
(12, 'cloyd alec', 'Romblon', 'Fish Farming', 'Romblon', '01', '2025-02-17 14:34:20'),
(13, 'cloyd alec', 'Romblon', 'Fish Farming', 'Romblon', '01', '2025-02-17 14:35:27'),
(14, 'cloyd alec', 'Romblon', 'Fish Farming', 'Romblon', '01', '2025-02-17 14:37:40'),
(15, 'cloyd alec', 'Romblon', 'Fish Farming', 'Romblon', '01', '2025-02-17 14:38:21'),
(16, 'cloyd alec', 'Romblon', 'Fish Farming', 'Romblon', '01', '2025-02-17 14:38:51'),
(17, 'cloyd alec', 'Romblon', 'Fish Farming', 'Romblon', '01', '2025-02-17 14:38:59'),
(18, 'cloyd alec', 'Calapan City', 'Fish Farming', 'Romblon', '01', '2025-02-17 14:42:48'),
(19, 'cloyd alec', 'Calapan City', 'Fish Farming', 'Romblon', '01', '2025-02-17 14:54:14'),
(20, 'cloyd alec', 'Calapan City', 'Fish Farming', 'Romblon', '01', '2025-02-17 14:56:08'),
(21, 'cloyd alec', 'Calapan City', 'Fish Farming', 'Romblon', '01', '2025-02-17 15:13:13'),
(22, 'cloyd alec', 'Calapan City', 'Fish Farming', 'Romblon', '01', '2025-02-17 15:26:31'),
(23, 'cloyd alec', 'Calapan City', 'Fish Farming', 'Romblon', '01', '2025-02-17 15:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT '0',
  `verification_token` varchar(191) DEFAULT NULL,
  `reset_token` varchar(191) DEFAULT NULL,
  `reset_token_expiry` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_verified`, `verification_token`, `reset_token`, `reset_token_expiry`) VALUES
(2, 'Darylld Tupas', 'aash100227@gmail.com', '$2b$10$OmGgDucv0MvY2pZTpQ5O9OsFZeswLaGNCWYtx2nKRVQZaI4ay9286', 'admin', 1, NULL, NULL, NULL),
(3, 'cloyd', 'hakd857@gmail.com', '$2b$10$GCheXPstNbMEWR8wjoJ06uh/HcebPcwf/b0Kuy8F8kj84MkyBoKO6', 'user', 1, NULL, NULL, NULL),
(4, 'Cleofe Lyn', 'zyggizyg72@gmail.com', '$2b$10$QowTheJXvLBRIrpeBOAvEOyRrX.JhgFNXHEneYEORuk0R2IZ5DGtG', 'admin', 1, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
