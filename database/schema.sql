-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 03, 2024 at 01:19 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `narsa_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `infractions`
--

DROP TABLE IF EXISTS `infractions`;
CREATE TABLE IF NOT EXISTS `infractions` (
  `id_infraction` bigint NOT NULL AUTO_INCREMENT,
  `rfidtag` bigint NOT NULL,
  `lieu` varchar(100) NOT NULL,
  `date_infraction` datetime NOT NULL,
  `date_paiement` datetime NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id_infraction`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `infractions`
--

INSERT INTO `infractions` (`id_infraction`, `rfidtag`, `lieu`, `date_infraction`, `date_paiement`, `status`) VALUES
(1, 123456789, 'Kenitra', '2024-05-30 12:48:01', '2024-06-05 12:48:01', 1),
(2, 123456789, 'Rabat', '2024-05-31 12:49:17', '2024-06-06 12:49:17', 1),
(3, 987654321, 'Settat', '2024-05-29 12:57:26', '2024-06-04 12:57:26', 0),
(4, 1111, 'Fes', '2024-05-29 10:52:04', '2024-06-04 10:52:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users2`
--

DROP TABLE IF EXISTS `users2`;
CREATE TABLE IF NOT EXISTS `users2` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `first_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `idcard` bigint NOT NULL,
  `phonenumber` bigint NOT NULL,
  `email` varchar(100) NOT NULL,
  `rfidtag` bigint NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users2`
--

INSERT INTO `users2` (`id`, `user_id`, `first_name`, `last_name`, `idcard`, `phonenumber`, `email`, `rfidtag`, `password`, `date`) VALUES
(7, 563776409018554, 'KHALIL', 'En', 1234567, 0, 'hacked@example.com', 123456789, 'hacked', '0000-00-00 00:00:00'),
(17, 5762332, '<script>alert(\"You are hacked\");</script>', 'hacker', 12344, 642814374, 'hacker@gmail.com', 12034, '000', '0000-00-00 00:00:00'),
(14, 583441705641166, 'Taha', 'Sbari', 123789, 0, 'hacked@example.com', 1234, 'hacked', '0000-00-00 00:00:00'),
(21, 713770174149248, 'KHALIL', 'En', 123456, 642814374, 'elZmNUNNdmlZUXpkbGE5QUZPckkrQzhBSCtDaTBTWXAzdTZXeHo5WDhSRT06OkTtribQ2+ZIjOB1mM/FvNc=', 111111, '$2y$10$8i5OCfL49fsNfXlXgnVuiOk3S51Kl0urLdT/i76oPFSr1B6eX/Ebi', '0000-00-00 00:00:00'),
(23, 399635525790057, '<script>alert(\"You are hacked\");</script>', 'hacker', 11111, 642814374, 'dDNqZ0d5bWpBSjg0cGh1R3FUcEdZV2VxeG80S0VXd2VYSUp5TXVOZ0ZSYz06OhWMa14HUG1hdpOuh2R29wQ=', 333, '$2y$10$mHoCM3MP3GjTNn2DNhyZyu/DqMRs7NfK7H9mQlX7h2cdUmW7VGkx2', '0000-00-00 00:00:00'),
(24, 401181065465894328, 'Test', 'En', 2345, 712345683, 'Z0tJb0FVRkJGKytOZWFqcHl2bnA5QT09Ojra2yIITkz1zdwgbiQP1I7d', 444, '$2y$10$dWiVHjGJuOdzzIdqKzkzh.DRO9kDsE36fPMVNd7xw2j3Z8qFeLEEu', '0000-00-00 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
