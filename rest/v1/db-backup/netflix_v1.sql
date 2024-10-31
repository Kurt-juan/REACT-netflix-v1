-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 08:27 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netflix_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `netflix_movies`
--

CREATE TABLE `netflix_movies` (
  `movies_aid` int(11) NOT NULL,
  `movies_title` varchar(150) NOT NULL,
  `movies_year` varchar(10) NOT NULL,
  `movies_genre` varchar(20) NOT NULL,
  `movies_rating` varchar(20) NOT NULL,
  `movies_duration` varchar(15) NOT NULL,
  `movies_summary` text NOT NULL,
  `movies_cast` text NOT NULL,
  `movies_image` varchar(50) NOT NULL,
  `movies_category` varchar(50) NOT NULL,
  `movies_is_active` tinyint(1) NOT NULL,
  `movies_datetime` varchar(20) NOT NULL,
  `movies_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `netflix_movies`
--

INSERT INTO `netflix_movies` (`movies_aid`, `movies_title`, `movies_year`, `movies_genre`, `movies_rating`, `movies_duration`, `movies_summary`, `movies_cast`, `movies_image`, `movies_category`, `movies_is_active`, `movies_datetime`, `movies_created`) VALUES
(1, 'kdrama1', 'as', 'as', 'as', 'as', 'as', 'as', 'logo (1).png', 'kdrama', 1, '2024-10-30 14:32:02', '2024-10-30 14:32:02'),
(2, 'pinoy', 'awsd', 'asd', 'asd', 'asd', 'asd', 'asd', 'banner-spider.jpg', 'pinoy', 1, '2024-10-30 14:32:29', '2024-10-30 14:32:29'),
(3, 'kdrama2', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '68211-original-1200.jpg', 'kdrama', 1, '2024-10-30 14:49:24', '2024-10-30 14:49:24'),
(4, 'kdrama 3', 'asd', 'asd', 'asd', 'das', 'asfd', 'ads', 'original-685504cc4bf910ad065930e1c9f24b69.png', 'kdrama', 1, '2024-10-30 14:50:08', '2024-10-30 14:50:08'),
(5, 'kdrama 4', 'das', 'ads', 'das', 'sda', 'asd', 'asd', '68211-original-1200.jpg', 'kdrama', 1, '2024-10-30 14:50:32', '2024-10-30 14:50:32'),
(6, 'kdrama 5', 'sda', 'asd', 'asd', 'asd', 'dsa', 'dsa', 'fast-1281628_1280.jpg', 'kdrama', 1, '2024-10-30 14:50:54', '2024-10-30 14:50:54'),
(7, 'kdrama 6', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'Copy of Contact.jpg', 'kdrama', 1, '2024-10-30 14:51:21', '2024-10-30 14:51:21'),
(8, 'pinoy 1', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'fast-1281628_1280.jpg', 'pinoy', 1, '2024-10-30 14:56:18', '2024-10-30 14:56:18'),
(9, 'pinoy 2', 'asd', 'asd', 'sad', 'sad', 'asd', 'dsa', '68211-original-1200.jpg', 'pinoy', 1, '2024-10-30 14:56:44', '2024-10-30 14:56:44'),
(10, 'pinoy 3', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'Copy of Contact.jpg', 'pinoy 3', 1, '2024-10-30 14:57:13', '2024-10-30 14:57:13'),
(11, 'pinoy 4', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'fast-1281628_1280.jpg', 'pinoy 4', 1, '2024-10-30 14:57:37', '2024-10-30 14:57:37'),
(12, 'international 1', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'Copy of Contact.jpg', 'international', 1, '2024-10-30 14:58:11', '2024-10-30 14:58:11'),
(13, 'international 2', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '68211-original-1200.jpg', 'international', 1, '2024-10-30 14:58:40', '2024-10-30 14:58:40'),
(14, 'international 3', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'Copy of Contact.jpg', 'international ', 1, '2024-10-30 14:59:14', '2024-10-30 14:59:14'),
(15, 'international 4', 'asd', 'asd', 'asd', 'sad', 'asd', 'asd', 'banner-spider.jpg', 'international ', 1, '2024-10-30 15:01:02', '2024-10-30 15:01:02'),
(16, 'international 5', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'logo (1).png', 'international', 1, '2024-10-30 15:01:19', '2024-10-30 15:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `netflix_top_movies`
--

CREATE TABLE `netflix_top_movies` (
  `topmovies_aid` int(11) NOT NULL,
  `topmovies_title` varchar(100) NOT NULL,
  `topmovies_year` varchar(10) NOT NULL,
  `topmovies_genre` varchar(20) NOT NULL,
  `topmovies_rating` varchar(20) NOT NULL,
  `topmovies_duration` varchar(10) NOT NULL,
  `topmovies_summary` text NOT NULL,
  `topmovies_cast` text NOT NULL,
  `topmovies_image` varchar(30) NOT NULL,
  `topmovies_category` varchar(20) NOT NULL,
  `topmovies_is_active` tinyint(1) NOT NULL,
  `topmovies_datetime` varchar(20) NOT NULL,
  `topmovies_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `netflix_movies`
--
ALTER TABLE `netflix_movies`
  ADD PRIMARY KEY (`movies_aid`);

--
-- Indexes for table `netflix_top_movies`
--
ALTER TABLE `netflix_top_movies`
  ADD PRIMARY KEY (`topmovies_aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `netflix_movies`
--
ALTER TABLE `netflix_movies`
  MODIFY `movies_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `netflix_top_movies`
--
ALTER TABLE `netflix_top_movies`
  MODIFY `topmovies_aid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
