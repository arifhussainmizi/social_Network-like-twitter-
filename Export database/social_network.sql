-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2019 at 03:15 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`) VALUES
(2, 9, 4, 'Cow...........!', 'arif_hussain_964447', '2019-11-22 04:54:38'),
(3, 9, 4, 'Oh man\r\n', 'arif_hussain_964447', '2019-11-22 04:58:10'),
(6, 9, 4, 'hello naymar!!', 'arif_hussain_964447', '2019-11-22 05:30:52'),
(7, 9, 4, 'ha....ha', 'arif_hussain_964447', '2019-11-22 05:33:24'),
(8, 10, 7, 'Good Looking...........', 'arif_hussain_964447', '2019-11-22 06:02:18'),
(9, 10, 7, 'thanks', 'jannat_ara_129455', '2019-11-22 06:03:19'),
(10, 10, 7, 'WOw\r\n', 'bijon_sen_241821', '2019-11-22 15:26:41'),
(11, 9, 4, 'He......he\r\n', 'bijon_sen_241821', '2019-11-22 17:50:25'),
(12, 11, 6, 'wow....\r\n', 'arif_hussain_964447', '2019-11-23 15:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(1, 4, '					\r\n				Hello world', 'IMG_20190801_222033.jpg.66', '2019-11-21 02:40:41'),
(5, 4, 'No', '', '2019-11-21 12:57:04'),
(6, 4, 'Hi, Bro, How r u?', '', '2019-11-21 12:58:03'),
(7, 4, 'hello', 'IMG_20190309_091845.jpg.76', '2019-11-21 12:59:01'),
(8, 4, 'hello', 'IMG_20190309_091845.jpg.54', '2019-11-21 13:00:42'),
(9, 4, 'Hello Gye!!!!', '75552930_2504192366484452_7051592871257833472_o.jpg.40', '2019-11-21 14:19:57'),
(10, 7, 'Wellcome', '3d-super-art-stars-gallery.jpg.84', '2019-11-22 06:01:13'),
(11, 6, 'Well Come back', 'cool-full-hd-tree-image.jpg.89', '2019-11-22 16:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `Relationship` text NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` text NOT NULL,
  `posts` text NOT NULL,
  `recovery_account` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `Relationship`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`) VALUES
(4, 'Arif', 'Hussain', 'arif_hussain_964447', 'Have a good day', 'Single', '87654321', 'arifhussainmizi@gmail.com', 'Afganisthan', 'Male', '1991-01-02', '70508061_2259991930795072_5541454401157201920_n.jpg.49', 'IMG_20190801_225011.jpg.84', '2019-11-13 16:36:15', 'verified', 'yes', 'Hit Man'),
(5, 'Abir', 'Hussain', 'abir_hussain_703308', 'Hello K2.com', '...', '12345678', 'abirhussainmizi@gmail.com', 'Bangladesh', 'Male', '2005-02-03', 'img3.jpg', 'deafult_cover.jpg', '2019-11-22 05:35:25', 'verified', 'no', 'Iron Man'),
(6, 'Bijon', 'Sen', 'bijon_sen_241821', 'Hello K2.com', '...', '12345678', 'bijon@yahoo.com', 'India', 'Male', '2000-03-02', 'img2.jpg', 'deafult_cover.jpg', '2019-11-22 05:36:33', 'verified', 'yes', 'Rz'),
(7, 'Jannat', 'Ara', 'jannat_ara_129455', 'Hello K2.com', '...', '12345678', 'jannat@gmail.com', 'Canada', 'Female', '1996-05-07', 'beautiful-flowers-image-free-download-4k-image-1.jpg.32', '1 (1).jpg.17', '2019-11-22 05:37:24', 'verified', 'yes', 'Iron Man');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `msg_body` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `msg_seen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_to`, `user_from`, `msg_body`, `date`, `msg_seen`) VALUES
(1, 6, 4, 'Hello', '2019-11-23 17:07:14', 'no'),
(2, 4, 6, 'hey.......', '2019-11-23 18:10:19', 'no'),
(3, 6, 4, 'dfdfdf\r\n', '2019-11-23 18:11:52', 'no'),
(4, 6, 4, 'fdfd', '2019-11-23 18:11:57', 'no'),
(5, 4, 6, 'ki\r\n', '2019-11-23 18:12:21', 'no'),
(6, 6, 4, 'fdfd', '2019-11-23 18:12:46', 'no'),
(7, 6, 4, 'fdfd', '2019-11-23 18:14:50', 'no'),
(8, 6, 4, 'cvncxvj', '2019-11-23 18:23:57', 'no'),
(9, 6, 4, 'dfdsfs', '2019-11-23 18:24:01', 'no'),
(10, 6, 4, 'eeqd', '2019-11-23 18:24:06', 'no'),
(11, 6, 4, 'dldl', '2019-11-23 18:24:12', 'no'),
(12, 6, 4, 'ddfefe', '2019-11-23 18:24:16', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
