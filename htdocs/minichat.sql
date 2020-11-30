-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Nov 30, 2020 at 08:10 AM
-- Server version: 10.3.22-MariaDB-1:10.3.22+maria~bionic
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minichat`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `ip_address` varchar(39) NOT NULL,
  `color` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `ip_address`, `color`, `created_at`) VALUES
(17, 22, 'alright moite\r\n', '172.16.238.1', 'black', '2020-05-06 11:50:58'),
(19, 21, 'hello again', '172.16.238.1', 'black', '2020-05-06 12:05:21'),
(38, 11, 'hello', '172.16.238.1', 'black', '2020-05-06 12:52:11'),
(39, 24, 'yo', '172.16.238.1', 'black', '2020-05-06 13:22:47'),
(40, 11, 'sqf', '172.16.238.1', 'black', '2020-05-06 13:24:24'),
(41, 11, 'YO', '172.16.238.1', 'black', '2020-05-06 13:25:00'),
(42, 11, 'f', '172.16.238.1', 'black', '2020-05-06 13:38:24'),
(43, 26, 'hello', '172.16.238.1', 'black', '2020-05-06 13:38:56'),
(44, 26, 'hello', '172.16.238.1', 'black', '2020-05-06 13:39:20'),
(45, 26, 'hello', '172.16.238.1', 'black', '2020-05-06 13:39:37'),
(46, 27, 'hello', '172.16.238.1', 'black', '2020-05-06 13:39:56'),
(47, 28, 'dsqfd', '172.16.238.1', 'black', '2020-05-06 13:40:17'),
(48, 11, 'fdsq', '172.16.238.1', 'black', '2020-05-06 13:41:52'),
(49, 20, 'dfqsd', '172.16.238.1', 'black', '2020-05-06 13:48:14'),
(50, 11, 'd', '172.16.238.1', 'black', '2020-05-06 13:48:30'),
(51, 21, 'dqfdsq', '172.16.238.1', 'black', '2020-05-06 13:49:05'),
(52, 20, 'dsq', '172.16.238.1', 'black', '2020-05-06 13:50:15'),
(53, 11, 'dfdsqdsq', '172.16.238.1', 'black', '2020-05-06 13:52:07'),
(54, 11, 'dgsqdgdsq', '172.16.238.1', 'black', '2020-05-06 13:52:31'),
(55, 29, 'ddddd\r\n', '172.16.238.1', 'black', '2020-05-06 13:54:19'),
(62, 31, 'ddd', '172.16.238.1', 'black', '2020-05-06 14:18:09'),
(63, 31, 'dsqfds', '172.16.238.1', 'black', '2020-05-06 14:19:01'),
(64, 32, 'dqsdqs', '172.16.238.1', 'black', '2020-05-06 14:53:10'),
(65, 33, 'At the end of the day', '172.16.238.1', 'black', '2020-05-06 15:13:37'),
(66, 11, 'dsqfsd', '172.16.238.1', 'black', '2020-05-06 15:20:57'),
(67, 11, 'gqsg', '172.16.238.1', 'black', '2020-05-06 15:21:23'),
(68, 11, 'gqsg', '172.16.238.1', 'black', '2020-05-06 15:21:45'),
(69, 11, 'dsqdgs', '172.16.238.1', 'black', '2020-05-06 15:23:33'),
(70, 11, 'dfsqd', '172.16.238.1', 'black', '2020-05-06 15:25:26'),
(71, 11, 'dsqg', '172.16.238.1', 'black', '2020-05-06 15:26:52'),
(72, 34, 'gsqdsgqdg', '172.16.238.1', 'black', '2020-05-06 15:28:11'),
(73, 11, 'dsqgfdsq', '172.16.238.1', 'black', '2020-05-06 15:30:10'),
(74, 35, 'dqfdsq', '172.16.238.1', 'black', '2020-05-06 15:32:33'),
(75, 36, 'dqsd', '172.16.238.1', 'black', '2020-05-06 15:35:05'),
(76, 37, 'dsfsdq', '172.16.238.1', 'black', '2020-05-06 15:35:24'),
(77, 26, 'dsqf', '172.16.238.1', 'black', '2020-05-06 15:37:07'),
(78, 11, 'dsqgdsg', '172.16.238.1', 'black', '2020-05-06 15:38:23'),
(79, 38, 'Je suis la\r\n', '172.16.238.1', 'black', '2020-05-06 15:47:48'),
(80, 35, 'fdsqfsf', '172.16.238.1', 'black', '2020-05-07 07:16:09'),
(81, 39, 'Salut', '172.16.238.1', 'black', '2020-05-07 14:27:24'),
(82, 40, 'oh well\r\n', '172.16.238.1', 'black', '2020-05-07 14:30:53'),
(83, 41, 'dlsqjd', '172.16.238.1', 'black', '2020-05-07 14:31:24'),
(84, 41, 'jkkj', '172.16.238.1', 'black', '2020-05-31 20:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `ip_address` varchar(39) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nickname`, `created_at`, `ip_address`) VALUES
(11, 'olivier', '2020-05-05 14:59:21', '172.16.238.1'),
(13, 'Boris', '2020-05-05 15:02:51', '172.16.238.1'),
(19, 'Perle', '2020-05-06 11:30:40', '172.16.238.1'),
(20, 'Usher', '2020-05-06 11:32:19', '172.16.238.1'),
(21, 'Céline', '2020-05-06 11:33:20', '172.16.238.1'),
(22, 'Raph', '2020-05-06 11:50:58', '172.16.238.1'),
(23, 'JOE', '2020-05-06 12:15:05', '172.16.238.1'),
(24, 'yoan', '2020-05-06 12:47:34', '172.16.238.1'),
(25, 'Gael', '2020-05-06 12:47:55', '172.16.238.1'),
(26, 'Sylvain', '2020-05-06 12:49:05', '172.16.238.1'),
(27, 'john', '2020-05-06 13:39:56', '172.16.238.1'),
(28, 'sylv', '2020-05-06 13:40:17', '172.16.238.1'),
(29, 'salut', '2020-05-06 13:54:19', '172.16.238.1'),
(31, 'yo', '2020-05-06 14:18:09', '172.16.238.1'),
(32, 'Jo', '2020-05-06 14:53:10', '172.16.238.1'),
(33, 'jason', '2020-05-06 15:13:37', '172.16.238.1'),
(34, 'fdsqgsd', '2020-05-06 15:28:11', '172.16.238.1'),
(35, 'simon', '2020-05-06 15:32:33', '172.16.238.1'),
(36, 'julie', '2020-05-06 15:35:05', '172.16.238.1'),
(37, 'julile', '2020-05-06 15:35:24', '172.16.238.1'),
(38, 'Sohpie', '2020-05-06 15:47:48', '172.16.238.1'),
(39, 'Maureen', '2020-05-07 14:27:24', '172.16.238.1'),
(40, 'jack', '2020-05-07 14:30:53', '172.16.238.1'),
(41, 'sev', '2020-05-07 14:31:24', '172.16.238.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nickname` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

