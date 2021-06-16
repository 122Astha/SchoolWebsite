-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 16, 2021 at 04:59 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `p` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `year`, `p`, `img`, `status`, `created_at`, `updated_at`) VALUES
(1, 20, 'sponsor a girl to go to school in Nigeria. Consider charitable gift annuity for education. back to school gifts for kindergarten students in Nigeria. empowerment through education. Donate to charity. Partner with us. Destinations: Sponsor a child education, feeding hungry family.', 'gettyimages-1224919869-612x6121623396314.jpeg', 1, '2021-06-11 07:25:24', '2021-06-11 07:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `img` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `content`, `img`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Ram', 'Gurung', 'tips-to-teach-children1623429999.jpeg', 1, '2021-06-11 17:10:49', '2021-06-11 17:10:49'),
(11, 'astha', 'Shrestha', 'images1623429966.jpeg', 1, '2021-06-11 17:11:15', '2021-06-11 17:11:15'),
(12, '“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”', '“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”', 'handed-over-two-secondary-schools-1-1-1124x6841623430019.jpeg', 1, '2021-06-11 17:11:44', '2021-06-11 17:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Astha Shrestha', 'shresthaastha848@gmail.com', '986694244', 'hello i study in laa grandee international college. i am 20 years old', 1, '2021-06-12 13:05:51', '2021-06-12 13:05:51'),
(4, 'Astha Shrestha', 'shresthaastha848@gmail.com', '986694244', 'hello i study in laa grandee international college. i am 20 years old', 1, '2021-06-12 13:07:34', '2021-06-12 13:07:34'),
(5, 'Astha Shrestha', 'shresthaastha848@gmail.com', '986694244', 'hello i study in laa grandee international college. i am 20 years old', 1, '2021-06-12 13:07:41', '2021-06-12 13:07:41'),
(6, 'Astha Shrestha', 'shresthaastha848@gmail.com', '986694244', 'hello i study in laa grandee international college. i am 20 years old', 1, '2021-06-12 13:08:35', '2021-06-12 13:08:35'),
(7, 'Sita Gurung', 'sita@gmail.com', '9806659241', 'hello i am from airport Pokhara. I want to join this school from class 12 . Is there any entrance exam that i suppose to give.', 1, '2021-06-12 13:10:27', '2021-06-12 13:10:27'),
(8, 'Anmol Gurung', 'anmol@gmail.com', '9806685366', 'Hello i am from naya bazar Pokhara i want to join this school from next month is there possible to join in this middle of the session.', 1, '2021-06-12 13:12:08', '2021-06-12 13:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(250) NOT NULL,
  `e_date` date NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'New',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `e_date`, `img`, `status`, `created_at`, `updated_at`) VALUES
(8, 'sykysihyc@mailinator.com', 'gunelylit@mailinator.com', '2020-12-29', 'gettyimages-1224919869-612x6121623396314.jpeg', 'New', '2021-06-12 08:51:26', '2021-06-12 08:51:26'),
(9, 'polelakas@mailinator.com', 'sadaqemo@mailinator.com', '2018-11-30', 'images1623429966.jpeg', 'New', '2021-06-12 08:55:44', '2021-06-12 08:55:44'),
(11, 'balu@mailinator.com', 'homyzi@mailinator.com', '2002-06-28', 'image-asset(1)1623500791.jpeg', 'New', '2021-06-12 12:28:40', '2021-06-12 12:28:40'),
(12, 'texinyry@mailinator.com', 'pedype@mailinator.com', '1992-11-02', 'image-asset(2)1623500808.jpeg', 'New', '2021-06-12 12:28:55', '2021-06-12 12:28:55'),
(13, 'molisyher@mailinator.com', 'kaxad@mailinator.com', '2020-01-02', 'image-asset1623500857.jpeg', 'New', '2021-06-12 12:29:13', '2021-06-12 12:29:13'),
(14, 'futaxyce@mailinator.com', 'vadewa@mailinator.com', '1971-12-07', 'mass11623500901.jpeg', 'New', '2021-06-12 12:29:34', '2021-06-12 12:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `filelink` varchar(200) NOT NULL,
  `ext` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `filelink`, `ext`, `status`, `created_at`, `updated_at`) VALUES
(14, 'slider5', '25cbd2b44462dc92373f7c4a223588e91623297163.jpeg', 'jpeg', 'Active', '2021-06-10 03:52:43', '2021-06-10 03:52:43'),
(15, 'slider6', 'images(4)1623305757.jpeg', 'jpeg', 'Active', '2021-06-10 06:15:57', '2021-06-10 06:15:57'),
(19, 'slider1', 'banner_31623391222.jpeg', 'jpeg', 'Active', '2021-06-11 06:00:22', '2021-06-11 06:00:22'),
(20, 'slider2', 'banner_41623391315.jpeg', 'jpeg', 'Active', '2021-06-11 06:01:55', '2021-06-11 06:01:55'),
(21, 'about us 1', 'gettyimages-1224919869-612x6121623396314.jpeg', 'jpeg', 'Active', '2021-06-11 07:25:14', '2021-06-11 07:25:14'),
(22, 'award 1', 'images1623429966.jpeg', 'jpeg', 'Active', '2021-06-11 16:46:06', '2021-06-11 16:46:06'),
(23, 'award 2', 'tips-to-teach-children1623429999.jpeg', 'jpeg', 'Active', '2021-06-11 16:46:39', '2021-06-11 16:46:39'),
(24, 'award 3', 'handed-over-two-secondary-schools-1-1-1124x6841623430019.jpeg', 'jpeg', 'Active', '2021-06-11 16:46:59', '2021-06-11 16:46:59'),
(25, 'event 1', 'image-asset(1)1623500791.jpeg', 'jpeg', 'Active', '2021-06-12 12:26:31', '2021-06-12 12:26:31'),
(26, 'event 2', 'image-asset(2)1623500808.jpeg', 'jpeg', 'Active', '2021-06-12 12:26:48', '2021-06-12 12:26:48'),
(27, 'event 3', 'image-asset1623500857.jpeg', 'jpeg', 'Active', '2021-06-12 12:27:37', '2021-06-12 12:27:37'),
(28, 'event 4', 'mass11623500901.jpeg', 'jpeg', 'Active', '2021-06-12 12:28:21', '2021-06-12 12:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `g_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_category`
--

CREATE TABLE `gallery_category` (
  `g_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

CREATE TABLE `siteconfig` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `site_key` varchar(100) NOT NULL,
  `site_value` longtext NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siteconfig`
--

INSERT INTO `siteconfig` (`id`, `name`, `site_key`, `site_value`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Zenaida Douglas', 'Camilla Medina', 'Tarik Black', 'Active', '2021-06-09 14:21:54', '2021-06-09 14:21:54'),
(6, 'johehy@mailinator.com', 'zexeta@mailinator.com', 'futo@mailinator.com', 'Active', '2021-06-10 08:05:20', '2021-06-10 08:05:20'),
(7, 'lamehu@mailinator.com', 'qokuloses@mailinator.com', 'luvimahaq@mailinator.com', 'Active', '2021-06-10 08:06:40', '2021-06-10 08:06:40'),
(8, 'gyheze@mailinator.com', 'xojizob@mailinator.com', 'volas@mailinator.com', 'Active', '2021-06-10 08:55:52', '2021-06-10 08:55:52'),
(9, 'qume@mailinator.com', 'dadyfyx@mailinator.com', 'helloworld', 'Active', '2021-06-10 08:59:42', '2021-06-10 08:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `h1` varchar(100) NOT NULL,
  `p` varchar(255) NOT NULL,
  `btn_txt` varchar(100) NOT NULL,
  `btn_link` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `h1`, `p`, `btn_txt`, `btn_link`, `img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slider 1 ', 'this is first slider header', 'this is first slider text', 'Apply Now', 'addmisson.php', 'banner_31623391222.jpeg', 1, '2021-06-11 06:18:22', '2021-06-11 06:18:22'),
(2, 'Slider 2', 'this is second slider header', 'this is second slider text', 'apply now', 'addmmission.php', 'banner_41623391315.jpeg', 1, '2021-06-11 06:19:27', '2021-06-11 06:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `status`, `created_at`, `updated_at`) VALUES
(2, 'fosy@mailinator.com', 'nirusesen@mailinator.com', '9806694244', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2021-06-10 08:59:16', '2021-06-10 08:59:16'),
(4, 'Astha Shrestha', 'shresthaastha@gmail.com', '9806694244', 'b1eb4d0b383339a26c16c5a9253c1188', 1, '2021-06-12 16:44:02', '2021-06-12 16:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_us`
--

CREATE TABLE `why_choose_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `h1` varchar(50) NOT NULL,
  `txt` varchar(250) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `why_choose_us`
--

INSERT INTO `why_choose_us` (`id`, `name`, `h1`, `txt`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Christian Randall', 'Sawyer Joyner', 'Zena Atkinson', 'Active', '2021-06-02 17:06:17', '2021-06-02 17:06:17'),
(8, 'Rylee Hebert', 'ghjk', 'Eaton Swanson', 'Active', '2021-06-02 17:13:57', '2021-06-02 17:13:57'),
(9, 'Darius Bolton', 'Lunea Vang', 'Serina Holcomb', 'Inactive', '2021-06-03 01:58:59', '2021-06-03 01:58:59'),
(13, 'Welcome to our school website', 'hellowoworld', 'Customers who view your About Us page will spend 22.5% more than those that don’t. And, according to Blue Acorn, those who view it are 5x more likely to make a purchase.', 'Active', '2021-06-11 06:54:11', '2021-06-11 06:54:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_category`
--
ALTER TABLE `gallery_category`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `siteconfig`
--
ALTER TABLE `siteconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_category`
--
ALTER TABLE `gallery_category`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siteconfig`
--
ALTER TABLE `siteconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
