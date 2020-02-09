-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 09, 2020 at 09:28 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gallery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `author`, `body`) VALUES
(6, 1, 'Raffy', 'nice car'),
(12, 1, 'Raffy', 'Yeah Nice Card');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `filename` varchar(255) NOT NULL,
  `alternate_text` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `caption`, `description`, `filename`, `alternate_text`, `type`, `size`, `user_id`) VALUES
(1, 'Car 1', 'Cool Car', '<p>This is a cool car!</p>', 'images-1.jpg', 'Awit', 'image/jpeg', 28947, 0),
(2, 'Car 2', '', '', 'images-2.jpg', '', 'image/jpeg', 18578, 0),
(4, 'Car 4', '', '', 'images-4.jpg', '', 'image/jpeg', 23270, 0),
(5, 'Awit', '', '', 'images-5.jpg', '', 'image/jpeg', 33192, 0),
(6, 'raffy', '', '', 'images-24.jpg', '', 'image/jpeg', 29850, 0),
(7, 'Raffy2', '', '', 'images-16.jpg', '', 'image/jpeg', 21133, 0),
(8, 'raffy4', '', '', 'images-29.jpg', '', 'image/jpeg', 25493, 0),
(9, 'Index', 'Eat my dust', '<p>sacsdvdfbdffedvfabd</p>', '_large_image_3.jpg', 'yeah!', 'image/jpeg', 165053, 0),
(10, 'Yeah', '', '', '_large_image_4.jpg', '', 'image/jpeg', 554659, 0),
(11, '', '', '', 'images-3.jpg', '', 'image/jpeg', 18096, 0),
(12, '', '', '', 'images-4.jpg', '', 'image/jpeg', 23270, 0),
(13, '', '', '', 'images-6.jpg', '', 'image/jpeg', 21886, 0),
(14, '', '', '', 'images-7.jpg', '', 'image/jpeg', 24140, 0),
(15, '', '', '', 'images-8.jpg', '', 'image/jpeg', 20810, 0),
(16, '', '', '', 'images-9.jpg', '', 'image/jpeg', 21108, 0),
(17, '', '', '', 'images-10.jpg', '', 'image/jpeg', 20401, 0),
(18, 'awesome', '', '', 'images-50.jpg', '', 'image/jpeg', 21652, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `user_image`) VALUES
(3, 'Raffy', '0414', 'Raffy', 'Ramos', 'images-2.jpg'),
(17, 'Rico', '12345', 'Ricardo', 'Milos', '_large_image_3.jpg'),
(20, 'Admin', '12345', 'Admin', 'Admin', '_large_image_1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`photo_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
