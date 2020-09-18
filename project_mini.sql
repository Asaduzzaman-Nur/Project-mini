-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 05:53 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_mini`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class` varchar(2) NOT NULL,
  `roll` int(6) NOT NULL,
  `parent_cont` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `name`, `class`, `roll`, `parent_cont`, `city`, `photo`, `created_at`, `updated_at`) VALUES
(23, 'Asaduzzaman Nur', '2', 123456, '01796182582', 'Sylhet', '123456.jpg', '2020-09-15 10:03:44', '2020-09-15 13:27:59'),
(24, 'Asaduzzamanjnjb ', '3', 333333, '01345555555', 'Sylhet', '333333.jpg', '2020-09-15 10:04:39', '2020-09-15 10:05:18'),
(25, 'Asaduzzaman', '3', 333333, '01345555555', 'Sylhet', '333333.jpg', '2020-09-15 10:04:39', '2020-09-15 10:04:39'),
(26, 'digital marketing', '3', 999999, '01777777777', 'mymensing', '999999.jpg', '2020-09-15 10:07:16', '2020-09-15 10:07:16'),
(27, 'digital marketing', '3', 999999, '01777777777', 'mymensing', '999999.jpg', '2020-09-15 10:07:16', '2020-09-15 10:07:16'),
(28, 'web design', '3', 676767, '01345555555', 'Dhaka', '676767.jpg', '2020-09-15 10:08:25', '2020-09-15 10:08:25'),
(29, 'Zaman', '4', 898989, '01777777777', 'Sylhet', '898989.png', '2020-09-15 10:10:46', '2020-09-15 10:10:46'),
(30, 'Asaduzzaman Nur', '3', 676767, '01345555555', 'Sylhet', '676767.png', '2020-09-15 10:11:38', '2020-09-15 10:11:38'),
(31, 'digital marketing', '3', 333333, '01345555555', 'Sylhet', '333333.png', '2020-09-15 10:12:47', '2020-09-15 10:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Asaduzzaman Nur', 'asaduzzamanur2017@gmail.com', 'Asaduzzaman', '25d55ad283aa400af464c76d713c07ad', 'Asaduzzaman.jpg', 'active', '2020-09-14 09:54:23', '2020-09-17 13:13:50'),
(10, 'Asaduzzaman Roman', 'asaduzzamanromanur@gmail.com', 'Roman', '25d55ad283aa400af464c76d713c07ad', 'Roman.jpg', 'active', '2020-09-14 09:55:51', '2020-09-15 13:25:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
