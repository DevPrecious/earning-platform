-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 01:55 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `earn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'e3274be5c857fb42ab72d786e281b4b8');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `t_at` date NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `username`, `comment`, `t_at`, `post_id`) VALUES
(3, 'devprecious', 'Commenter Name', '2020-06-24', 3),
(9, 'devprecious', 'You did it man', '2020-06-04', 4),
(10, 'devprecious', 'Dope man', '2020-06-09', 4);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `coupon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`) VALUES
(1, '3ege278haw938r'),
(2, 'ejfh1dv356xhjj789kcc'),
(3, 'uurrjrjrjrjrjrjrjrj'),
(4, '3ege278haw938rfgg'),
(5, 'e54drr6fpftjc56'),
(6, '3ege278haw938rp');

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `money` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `image` varchar(225) NOT NULL,
  `by_who` varchar(225) NOT NULL,
  `created_at` date NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `by_who`, `created_at`, `category`) VALUES
(1, 'How to code in php', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '9ja1.png', 'admin', '2020-06-16', 'sport'),
(2, 'HTML LAYOUT', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '1200px-NumPy_logo_svg.png', 'admin', '2020-06-10', 'game'),
(3, 'How to hack', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, co', '1200px-NumPy_logo_svg.png', 'devprecious', '2020-06-19', 'politics'),
(4, 'HTML TEXT FORMATTING', 'babababababababababababa', 'devp6.jpg', 'admin', '2020-06-12', 'sport'),
(5, 'Hello world in dragon', 'asetyguhiuyetyuiytyuliyguhhtyliuh;oij\'okpl', 'cmd.png', 'admin', '0000-00-00', 'latest'),
(6, 'Do you need a website', ' Inbox me today', '1.jpg', 'admin', '2020-06-22', 'latest');

-- --------------------------------------------------------

--
-- Table structure for table `read_e`
--

CREATE TABLE `read_e` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `money` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `read_e`
--

INSERT INTO `read_e` (`id`, `username`, `money`) VALUES
(2, 'devprecious', '5'),
(3, 'devprecious', '5'),
(4, 'devprecious', '5'),
(5, 'devprecious', '5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `ref` varchar(225) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `coupon` varchar(255) NOT NULL,
  `image` varchar(225) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `money` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `ref`, `username`, `email`, `phone`, `country`, `coupon`, `image`, `password`, `created_date`, `money`) VALUES
(6, 'Reffered by Sunbiz', 'devprecious', 'oladeleprecious012@gmail.com', '09078070922', 'Nigeria', '3ege278haw938r', 'devp7.jpg', 'cd3df3b2d328c564e3d6480cb00167b9', '2020-06-06', '200'),
(10, 'Reffered by Sunbiz', 'user11', 'checyril89@gmail.com', '09078070922', 'Nigeria', 'ejfh1dv356xhjj789kcc', 'draaa.png', '692d15bd0e09e6c8e3146edc28ca5bc3', '2020-06-07', ''),
(12, 'Reffered by Sunbiz', 'user11', 'checyril89@gmail.com', '09078070922', 'Nigeria', 'uurrjrjrjrjrjrjrjrj', 'draaa.png', '692d15bd0e09e6c8e3146edc28ca5bc3', '2020-06-07', ''),
(13, 'Reffered by Sunbiz', 'mbitiouz.orgfree.com', 'oladelep77@gmail.com', '09078070922', 'Nigeria', '3ege278haw938rfgg', 'devp5.jpg', 'cd3df3b2d328c564e3d6480cb00167b9', '2020-06-07', ''),
(17, 'devprecious', 'user11', 'checyril89@gmail.com', '09078070922', 'Nigeria', 'e54drr6fpftjc56', 'draaa.png', 'cd3df3b2d328c564e3d6480cb00167b9', '2020-06-07', ''),
(18, 'devprecious', 'newuser', 'codingexample12@gmail.com', '09078070922', 'Nigeria', '3ege278haw938rp', '', 'cd3df3b2d328c564e3d6480cb00167b9', '2020-06-07', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `read_e`
--
ALTER TABLE `read_e`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `read_e`
--
ALTER TABLE `read_e`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
