-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2020 at 03:46 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `room_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qaunity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `status` enum('Not_Confirmed','Confirmed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Not_Confirmed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `first_name`, `last_name`, `email`, `phone`, `check_in`, `check_out`, `room_type`, `qaunity`, `adult`, `days`, `status`, `created_at`, `updated_at`) VALUES
(5, 'a', 'k', 'a@gmail.com', '43', '2020-01-18', '2020-01-21', 'Superior Room', 2, 4, 3, 'Not_Confirmed', '2020-01-16 19:27:27', '2020-01-16 19:27:27'),
(6, 'a', 'k', 'a@gmail.com', '43', '2020-01-18', '2020-01-21', 'Superior Room', 2, 4, 3, 'Not_Confirmed', '2020-01-16 19:27:51', '2020-01-16 19:27:51'),
(19, 'fd', 'df', 'd@ff', '43', '2020-01-17', '2020-01-22', 'Family Room', 4, 1, 5, 'Not_Confirmed', '2020-01-16 20:24:32', '2020-01-16 20:24:32'),
(20, 'fsdfkg', 'jjkj', 'a@gmail.com', '2132', '2020-01-17', '2020-01-18', 'Family Room', 3, 4, 1, 'Confirmed', '2020-01-17 00:14:29', '2020-01-17 00:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `First_Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Last_Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `First_Name`, `Last_Name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(6, 'Nalin', 'Srun', 'nalinsrun27@gmail.com', '34333', 'fge', '2020-01-14 22:25:01', '2020-01-14 22:25:01'),
(7, 'Nalin', 'Srun', 'nalinsrun27@gmail.com', '4635', 'ff', '2020-01-16 20:01:53', '2020-01-16 20:01:53'),
(8, 'Nalin', 'Srun', 'nalinsrun27@gmail.com', '4635', 'gvv', '2020-01-16 20:03:06', '2020-01-16 20:03:06'),
(9, 'Nalin', 'k', 'dalinsrun27@gmail.com', '9', 'ff', '2020-01-16 20:10:45', '2020-01-16 20:10:45'),
(10, 's', 'k', 'nalinsrun27@gmail.com', '4635', 'fg', '2020-01-16 20:14:25', '2020-01-16 20:14:25'),
(11, 's', 'k', 'a@gmail.com', '4635', 'hggh', '2020-01-16 20:18:40', '2020-01-16 20:18:40'),
(12, 's', 'k', 'dalinsrun27@gmail.com', '654', 'gg', '2020-01-16 20:23:31', '2020-01-16 20:23:31'),
(13, 'f', 'ghh', 'normaluser@gmail.com', '44', 'gf', '2020-01-16 20:25:06', '2020-01-16 20:25:06'),
(14, 'dfgk', 'kfdgj', 'a@gmail.com', '4574', 'fkgjsf', '2020-01-17 00:15:01', '2020-01-17 00:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_07_035031_create_contacts_table', 1),
(5, '2020_01_07_135333_create_products_table', 1),
(6, '2020_01_07_175549_create_rooms_table', 1),
(7, '2020_01_10_052519_add_usertype_to_users_table', 1),
(8, '2020_01_10_151620_create__room_type_table', 1),
(9, '2020_01_10_235928_change_roomtype_id_in__room_type_table', 1),
(10, '2020_01_11_141021_change_roomtypeid', 2),
(11, '2020_01_12_073147_create_roomstatus_table', 3),
(12, '2020_01_12_083509_create_room_table', 4),
(13, '2020_01_12_091208_add_room_to_foreign_key', 5),
(14, '2020_01_13_134936_create_contact_table', 6),
(15, '2020_01_14_041519_create_contact_table', 7),
(16, '2020_01_15_095543_create_book_table', 8),
(17, '2020_01_16_225238_create_books_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `room_status_id` int(11) NOT NULL,
  `room_price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type_id`, `room_status_id`, `room_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 30.00, '2020-01-12 08:57:31', '2020-01-12 08:57:31'),
(2, 5, 1, 30.00, '2019-12-31 17:00:00', '2019-12-31 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roomstatus`
--

CREATE TABLE `roomstatus` (
  `room_status_id` bigint(20) UNSIGNED NOT NULL,
  `room_status_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roomstatus`
--

INSERT INTO `roomstatus` (`room_status_id`, `room_status_name`, `created_at`, `updated_at`) VALUES
(1, 'One night', '2020-01-12 01:26:01', '2020-01-12 01:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `usertype`) VALUES
(2, 'admin', 'admin@gmail.com', '2020-01-08 17:00:00', '$2y$10$4Tnas7xIKadekIuhHmraFujkyAtF65qZnyj//dmQmfC/Sg0K5I6fO', NULL, '2020-01-14 22:38:54', '2020-01-14 22:38:54', 'admin'),
(3, 'normaluser', 'normaluser@gmail.com', NULL, '$2y$10$Tj5sr21MMEakSXeuDUEF.uLkUTz7AbwZZffmgtq8swkZgv0EpJe3S', NULL, '2020-01-16 21:19:12', '2020-01-16 21:19:12', 'admin'),
(4, 'b', 'd@gmail.com', NULL, '$2y$10$0Fglb6KEzlSiMnbW5N3gguoUnHlbz6fBEuA6OYouEpG.1iqDjWB.G', NULL, '2020-01-16 21:21:06', '2020-01-16 21:21:06', 'admin'),
(5, 'fdgjh', 'a@gmail.com', NULL, '$2y$10$h.V5kFeoeVLw.cmpIT07vuwqumETjZGlpiB6ohl3I8d3Ne2pKbv52', NULL, '2020-01-17 00:15:45', '2020-01-17 00:15:45', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `_room_type`
--

CREATE TABLE `_room_type` (
  `room_type_id` bigint(20) UNSIGNED NOT NULL,
  `room_type_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_room_type`
--

INSERT INTO `_room_type` (`room_type_id`, `room_type_name`, `created_at`, `updated_at`) VALUES
(1, 'alone', '2020-01-11 20:47:56', '2020-01-12 20:13:44'),
(4, 'luxddf', '2020-01-14 22:18:28', '2020-01-14 22:18:28'),
(3, 'single', '2020-01-12 19:15:55', '2020-01-12 19:15:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`),
  ADD KEY `room_status_id` (`room_status_id`);

--
-- Indexes for table `roomstatus`
--
ALTER TABLE `roomstatus`
  ADD PRIMARY KEY (`room_status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `_room_type`
--
ALTER TABLE `_room_type`
  ADD PRIMARY KEY (`room_type_id`),
  ADD UNIQUE KEY `_room_type_room_type_id_unique` (`room_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roomstatus`
--
ALTER TABLE `roomstatus`
  MODIFY `room_status_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `_room_type`
--
ALTER TABLE `_room_type`
  MODIFY `room_type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
