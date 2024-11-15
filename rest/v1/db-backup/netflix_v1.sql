-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 08:52 AM
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
(2, 'pinoy', 'awsd', 'asd', 'asd', 'asd', 'asd', 'asd', 'banner-spider.jpg', 'PH', 1, '2024-11-04 10:06:22', '2024-10-30 14:32:29'),
(3, 'kdrama2', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '68211-original-1200.jpg', 'kdrama', 1, '2024-10-30 14:49:24', '2024-10-30 14:49:24'),
(4, 'kdrama 3', 'asd', 'asd', 'asd', 'das', 'asfd', 'ads', 'original-685504cc4bf910ad065930e1c9f24b69.png', 'K-Drama', 1, '2024-11-04 10:06:51', '2024-10-30 14:50:08'),
(5, 'kdrama 4', 'das', 'ads', 'das', 'sda', 'asd', 'asd', '68211-original-1200.jpg', 'K-Drama', 1, '2024-11-04 10:07:09', '2024-10-30 14:50:32'),
(6, 'kdrama 5', 'sda', 'asd', 'asd', 'asd', 'dsa', 'dsa', 'fast-1281628_1280.jpg', 'K-Drama', 1, '2024-11-04 10:07:13', '2024-10-30 14:50:54'),
(7, 'kdrama 6', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'Copy of Contact.jpg', 'kdrama', 1, '2024-10-30 14:51:21', '2024-10-30 14:51:21'),
(8, 'pinoy 1', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'fast-1281628_1280.jpg', 'PH', 1, '2024-11-04 10:06:27', '2024-10-30 14:56:18'),
(9, 'pinoy 2', 'asd', 'asd', 'sad', 'sad', 'asd', 'dsa', '68211-original-1200.jpg', 'pinoy', 1, '2024-10-30 14:56:44', '2024-10-30 14:56:44'),
(12, 'international 1', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'Copy of Contact.jpg', 'International', 1, '2024-11-04 10:07:29', '2024-10-30 14:58:11'),
(13, 'international 2', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '68211-original-1200.jpg', 'International', 1, '2024-11-04 10:07:34', '2024-10-30 14:58:40'),
(14, 'international 3', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'Copy of Contact.jpg', 'International', 1, '2024-11-04 10:07:40', '2024-10-30 14:59:14'),
(15, 'international 4', 'asd', 'asd', 'asd', 'sad', 'asd', 'asd', 'banner-spider.jpg', 'International', 1, '2024-11-04 10:07:44', '2024-10-30 15:01:02'),
(16, 'international 5', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'logo (1).png', 'International', 1, '2024-11-04 10:07:56', '2024-10-30 15:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `netflix_settings_category`
--

CREATE TABLE `netflix_settings_category` (
  `category_aid` int(11) NOT NULL,
  `category_title` varchar(50) NOT NULL,
  `category_is_active` tinyint(1) NOT NULL,
  `category_datetime` varchar(20) NOT NULL,
  `category_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `netflix_settings_category`
--

INSERT INTO `netflix_settings_category` (`category_aid`, `category_title`, `category_is_active`, `category_datetime`, `category_created`) VALUES
(4, 'PH', 1, '2024-11-04 09:58:38', '2024-11-04 09:58:38'),
(5, 'K-Drama', 1, '2024-11-04 09:59:00', '2024-11-04 09:59:00'),
(6, 'International', 1, '2024-11-04 09:59:12', '2024-11-04 09:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `netflix_settings_genre`
--

CREATE TABLE `netflix_settings_genre` (
  `genre_aid` int(11) NOT NULL,
  `genre_title` varchar(50) NOT NULL,
  `genre_is_active` tinyint(1) NOT NULL,
  `genre_datetime` varchar(20) NOT NULL,
  `genre_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `netflix_settings_genre`
--

INSERT INTO `netflix_settings_genre` (`genre_aid`, `genre_title`, `genre_is_active`, `genre_datetime`, `genre_created`) VALUES
(4, 'pinoy', 1, '2024-11-04 13:55:30', '2024-11-04 13:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `netflix_settings_ratings`
--

CREATE TABLE `netflix_settings_ratings` (
  `ratings_aid` int(11) NOT NULL,
  `ratings_title` varchar(50) NOT NULL,
  `ratings_is_active` tinyint(1) NOT NULL,
  `ratings_datetime` varchar(20) NOT NULL,
  `ratings_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `netflix_settings_ratings`
--

INSERT INTO `netflix_settings_ratings` (`ratings_aid`, `ratings_title`, `ratings_is_active`, `ratings_datetime`, `ratings_created`) VALUES
(1, '8.5', 1, '2024-11-04 09:18:38', '2024-11-04 09:18:38'),
(2, '9.5', 0, '2024-11-04 13:55:55', '2024-11-04 13:55:53');

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
  `topmovies_ranking` varchar(20) NOT NULL,
  `topmovies_is_active` tinyint(1) NOT NULL,
  `topmovies_datetime` varchar(20) NOT NULL,
  `topmovies_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `netflix_top_movies`
--

INSERT INTO `netflix_top_movies` (`topmovies_aid`, `topmovies_title`, `topmovies_year`, `topmovies_genre`, `topmovies_rating`, `topmovies_duration`, `topmovies_summary`, `topmovies_cast`, `topmovies_image`, `topmovies_ranking`, `topmovies_is_active`, `topmovies_datetime`, `topmovies_created`) VALUES
(2, 'asd', '333', '333', '33', '33', '3333', '333', 'banner-spider.jpg', '3', 1, '2024-10-31 08:24:30', '2024-10-30 15:46:59'),
(3, 'adasd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '68211-original-1200.jpg', '1', 1, '2024-10-31 07:50:38', '2024-10-31 07:42:43'),
(4, 'das', 'asd', 'asd', 'asd', 'das', 'sda', 'sad', '68211-original-1200.jpg', '2', 1, '2024-10-31 08:20:53', '2024-10-31 08:20:53'),
(5, 'asdqwe', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'fast-1281628_1280.jpg', '4', 1, '2024-10-31 08:25:08', '2024-10-31 08:25:08'),
(6, 'wqe', 'qwe', 'qwe', 'qwe', 'qwe', 'qew', 'qwe', 'Copy of Contact.jpg', '5', 1, '2024-10-31 08:25:41', '2024-10-31 08:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `netflix_top_series`
--

CREATE TABLE `netflix_top_series` (
  `topseries_aid` int(11) NOT NULL,
  `topseries_title` varchar(100) NOT NULL,
  `topseries_year` varchar(10) NOT NULL,
  `topseries_genre` varchar(20) NOT NULL,
  `topseries_rating` varchar(20) NOT NULL,
  `topseries_duration` varchar(10) NOT NULL,
  `topseries_summary` text NOT NULL,
  `topseries_cast` text NOT NULL,
  `topseries_image` varchar(30) NOT NULL,
  `topseries_ranking` varchar(20) NOT NULL,
  `topseries_is_active` tinyint(1) NOT NULL,
  `topseries_datetime` varchar(20) NOT NULL,
  `topseries_created` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `netflix_top_series`
--

INSERT INTO `netflix_top_series` (`topseries_aid`, `topseries_title`, `topseries_year`, `topseries_genre`, `topseries_rating`, `topseries_duration`, `topseries_summary`, `topseries_cast`, `topseries_image`, `topseries_ranking`, `topseries_is_active`, `topseries_datetime`, `topseries_created`) VALUES
(3, 'qwehqkjwehk', 'qjhwegjhgq', 'qkjwehbkjhqbwe', 'kqjwehhiq', 'qwkjjehqhw', 'asda', 'asdasd', 'Copy of Contact.jpg', '1', 1, '2024-10-31 09:33:06', '2024-10-31 09:33:06'),
(4, 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '68211-original-1200.jpg', '2', 1, '2024-10-31 09:34:30', '2024-10-31 09:34:30'),
(5, 'tyutyu', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'fast-1281628_1280.jpg', '3', 1, '2024-10-31 09:34:44', '2024-10-31 09:34:44'),
(6, 'xcvxcv', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'banner-spider.jpg', '4', 1, '2024-10-31 09:35:59', '2024-10-31 09:35:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `netflix_movies`
--
ALTER TABLE `netflix_movies`
  ADD PRIMARY KEY (`movies_aid`);

--
-- Indexes for table `netflix_settings_category`
--
ALTER TABLE `netflix_settings_category`
  ADD PRIMARY KEY (`category_aid`);

--
-- Indexes for table `netflix_settings_genre`
--
ALTER TABLE `netflix_settings_genre`
  ADD PRIMARY KEY (`genre_aid`);

--
-- Indexes for table `netflix_settings_ratings`
--
ALTER TABLE `netflix_settings_ratings`
  ADD PRIMARY KEY (`ratings_aid`);

--
-- Indexes for table `netflix_top_movies`
--
ALTER TABLE `netflix_top_movies`
  ADD PRIMARY KEY (`topmovies_aid`);

--
-- Indexes for table `netflix_top_series`
--
ALTER TABLE `netflix_top_series`
  ADD PRIMARY KEY (`topseries_aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `netflix_movies`
--
ALTER TABLE `netflix_movies`
  MODIFY `movies_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `netflix_settings_category`
--
ALTER TABLE `netflix_settings_category`
  MODIFY `category_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `netflix_settings_genre`
--
ALTER TABLE `netflix_settings_genre`
  MODIFY `genre_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `netflix_settings_ratings`
--
ALTER TABLE `netflix_settings_ratings`
  MODIFY `ratings_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `netflix_top_movies`
--
ALTER TABLE `netflix_top_movies`
  MODIFY `topmovies_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `netflix_top_series`
--
ALTER TABLE `netflix_top_series`
  MODIFY `topseries_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
