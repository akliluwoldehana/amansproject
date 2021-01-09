-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2021 at 08:24 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `detail`, `published`, `profile_id`, `created_at`, `updated_at`) VALUES
(1, 'PTA', 'parents meeting', 0, 1, NULL, '2020-12-29 03:14:41'),
(2, 'Some Stuff', 'Some kind of meeting. I don\'t know', 1, 1, NULL, '2020-12-29 05:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `annual_schedules`
--

CREATE TABLE `annual_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `annual_schedules`
--

INSERT INTO `annual_schedules` (`id`, `event`, `date`, `published`, `created_at`, `updated_at`) VALUES
(1, 'Registration', 'dec-11-2020', 1, NULL, NULL),
(2, 'Class Begin', 'jan-5-2020', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `present` tinyint(1) NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `kifl_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `present`, `date`, `student_id`, `kifl_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-12-02', 2, 1, NULL, NULL),
(2, 0, '2020-12-02', 2, 1, NULL, NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `grade`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-24 12:45:38', '2020-11-24 12:45:38'),
(2, 2, '2020-11-24 12:45:41', '2020-11-24 12:45:41'),
(3, 3, '2020-11-24 12:45:44', '2020-11-24 12:45:44'),
(4, 4, '2020-11-24 12:45:46', '2020-11-24 12:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardians`
--

INSERT INTO `guardians` (`id`, `profile_id`, `created_at`, `updated_at`) VALUES
(1, 17, '2020-11-24 12:52:14', '2020-11-24 12:52:14'),
(2, 18, '2020-11-24 12:52:30', '2020-11-24 12:52:30'),
(3, 19, '2020-11-24 12:52:36', '2020-11-24 12:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `kifls`
--

CREATE TABLE `kifls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `section` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(10) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kifls`
--

INSERT INTO `kifls` (`id`, `year`, `section`, `capacity`, `grade_id`, `created_at`, `updated_at`) VALUES
(1, 2020, 'A', 24, 1, '2020-11-24 12:47:15', '2020-11-24 12:47:15'),
(2, 2020, 'A', 24, 2, '2020-11-24 12:47:22', '2020-11-24 12:47:22'),
(3, 2020, 'A', 24, 3, '2020-11-24 12:47:26', '2020-11-24 12:47:26'),
(4, 2020, 'A', 24, 4, '2020-11-24 12:47:29', '2020-11-24 12:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `kifl_teacher`
--

CREATE TABLE `kifl_teacher` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `kifl_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `images`, `text`, `seen`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'ervsd.jpg', 'Hey', 0, '2020-12-28 21:00:00', '2020-12-22 21:00:00'),
(2, 2, 1, 'vsdsd.jpg', 'pis new?', 0, '2020-12-22 21:00:00', '2020-12-30 21:00:00');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_11_01_111339_create_grades_table', 1),
(10, '2020_11_01_111606_create_profiles_table', 1),
(11, '2020_11_01_111703_create_kifls_table', 1),
(12, '2020_11_01_111722_create_subjects_table', 1),
(13, '2020_11_01_111740_create_teachers_table', 1),
(14, '2020_11_01_111803_create_students_table', 1),
(15, '2020_11_01_111826_create_results_table', 1),
(16, '2020_11_01_111843_create_roles_table', 1),
(17, '2020_11_01_111923_subject_teacher', 1),
(18, '2020_11_01_111933_kifl_teacher', 1),
(19, '2020_11_02_065015_profile_role', 1),
(20, '2020_11_02_211117_create_staff_table', 1),
(21, '2020_11_02_212227_create_guardians_table', 1),
(22, '2020_11_26_094209_create_attendances_table', 2),
(23, '2020_11_26_094735_create_schedules_table', 2),
(24, '2020_11_26_094808_create_announcements_table', 2),
(25, '2020_11_26_094836_create_messages_table', 2),
(26, '2020_12_03_091521_create_annual_schedules_table', 3),
(27, '2021_01_05_070951_create_role_user_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0e473659d54542832dd7f5c3fd53bee9cd01785139bd297edfb67645f238a90ad5f0de00427f0b55', 20, 7, 'TutsForWeb', '[]', 0, '2020-12-04 19:54:20', '2020-12-04 19:54:20', '2021-12-04 22:54:20'),
('16c738478b9b7d32f500bf263b1a3cb5d5228f5369f480f8c9efda6983884282bbc7fcb626ab6ade', 22, 7, 'authToken', '[]', 0, '2020-12-04 20:38:33', '2020-12-04 20:38:33', '2021-12-04 23:38:33'),
('2a9c4d09a13961935c063aa2770e392ed0a576b8bb12e1944d2d1d6d6fa6aae4196b1ea781d551c4', 22, 7, 'authToken', '[]', 0, '2021-01-05 14:05:09', '2021-01-05 14:05:09', '2022-01-05 17:05:09'),
('3c3903eebcba09c5f66549d21005ce50660a29772177c6de379bb95d776a13d769041b96fd2c4377', 29, 7, 'authToken', '[]', 0, '2021-01-05 14:07:30', '2021-01-05 14:07:30', '2022-01-05 17:07:30'),
('771f9a52de26a7deda2b09e75a9835b9affd7b872ccf19eea41ee8de0a57570e284d60d8b24af699', 22, 7, 'TutsForWeb', '[]', 0, '2020-12-04 20:14:35', '2020-12-04 20:14:35', '2021-12-04 23:14:35'),
('86e6dce59240562d9bcbeccad16816de15210353a9525ab951a86bf1373e243267dd05cd8b6975eb', 29, 7, 'authToken', '[]', 0, '2021-01-05 16:38:20', '2021-01-05 16:38:20', '2022-01-05 19:38:20'),
('bd39779f55e0daeafce7738d04cad0b83cb3bfc428040b6a50c175132815cebfb283ee55dfc1eccc', 21, 7, 'TutsForWeb', '[]', 0, '2020-12-04 20:02:07', '2020-12-04 20:02:07', '2021-12-04 23:02:07'),
('da0edba5b365b58bdc80e8ce4c8361f4f7ee573f42190513f443b7d384349628881a2140422634f5', 29, 7, 'authToken', '[]', 0, '2021-01-05 14:35:22', '2021-01-05 14:35:22', '2022-01-05 17:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'MpCfJqjLCxATEsdMhJhDZ98rPoEQIHoevjKJ6e6c', 'http://localhost', 1, 0, 0, '2020-12-04 19:24:25', '2020-12-04 19:24:25'),
(2, NULL, 'Laravel Password Grant Client', 'XZ31gfVcG8JRZ1ytEbteHzL1pXw9esMmbKZeuzc7', 'http://localhost', 0, 1, 0, '2020-12-04 19:24:25', '2020-12-04 19:24:25'),
(3, NULL, 'Laravel Personal Access Client', '27D8KoObUWblPoYwF1RSrSuiBoJXFJGuh7eCDviS', 'http://localhost', 1, 0, 0, '2020-12-04 19:24:41', '2020-12-04 19:24:41'),
(4, NULL, 'Laravel Password Grant Client', '6ve8R5u6moNaWQUXicJkjA6myDlevPO8xR9cMlVU', 'http://localhost', 0, 1, 0, '2020-12-04 19:24:41', '2020-12-04 19:24:41'),
(5, NULL, 'Laravel Personal Access Client', 'MQKhAWsOgSyNs0No6wZvfLiSoQtpnusfoPndGsA3', 'http://localhost', 1, 0, 0, '2020-12-04 19:30:16', '2020-12-04 19:30:16'),
(6, NULL, 'Laravel Password Grant Client', 'BWtaEwEQMsjjMbYsV72CVT5EKSHGmfgX2aFttyTq', 'http://localhost', 0, 1, 0, '2020-12-04 19:30:17', '2020-12-04 19:30:17'),
(7, NULL, 'Laravel Personal Access Client', 'PRKWETZ5AUaAjidj67ID262aqA188M8wdNOksoX7', 'http://localhost', 1, 0, 0, '2020-12-04 19:30:24', '2020-12-04 19:30:24'),
(8, NULL, 'Laravel Password Grant Client', 'rohQGzJb6s3F9ytKQUGGKIQYqpfHM9kVt8lkDbdP', 'http://localhost', 0, 1, 0, '2020-12-04 19:30:25', '2020-12-04 19:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-12-04 19:24:25', '2020-12-04 19:24:25'),
(2, 3, '2020-12-04 19:24:41', '2020-12-04 19:24:41'),
(3, 5, '2020-12-04 19:30:17', '2020-12-04 19:30:17'),
(4, 7, '2020-12-04 19:30:25', '2020-12-04 19:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `picture`, `bio`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'none', 'none', 'none', '2020-11-24 12:23:09', '2020-11-24 12:23:09'),
(2, 2, 'none', 'none', 'none', '2020-11-24 12:42:57', '2020-11-24 12:42:57'),
(3, 3, 'none', 'none', 'none', '2020-11-24 12:43:17', '2020-11-24 12:43:17'),
(4, 4, 'none', 'none', '0389765421', '2020-11-24 12:43:29', '2020-12-29 07:18:19'),
(5, 5, 'none', 'none', '0456789321', '2020-11-24 12:43:38', '2020-12-29 07:18:28'),
(6, 6, 'none', 'none', 'none', '2020-11-24 12:44:09', '2020-11-24 12:44:09'),
(7, 7, 'none', 'none', 'none', '2020-11-24 12:44:32', '2020-11-24 12:44:32'),
(8, 8, 'none', 'none', 'none', '2020-11-24 12:45:03', '2020-11-24 12:45:03'),
(9, 9, 'none', 'none', 'none', '2020-11-24 12:45:55', '2020-11-24 12:45:55'),
(10, 10, 'none', 'none', 'none', '2020-11-24 12:46:08', '2020-11-24 12:46:08'),
(11, 11, 'none', 'none', 'none', '2020-11-24 12:47:34', '2020-11-24 12:47:34'),
(12, 12, 'none', 'none', 'none', '2020-11-24 12:47:47', '2020-11-24 12:47:47'),
(13, 13, 'none', 'none', 'none', '2020-11-24 12:48:02', '2020-11-24 12:48:02'),
(14, 14, 'none', 'none', 'none', '2020-11-24 12:48:38', '2020-11-24 12:48:38'),
(15, 15, 'none', 'none', 'none', '2020-11-24 12:48:47', '2020-11-24 12:48:47'),
(16, 16, 'none', 'none', 'none', '2020-11-24 12:48:54', '2020-11-24 12:48:54'),
(17, 17, 'none', 'none', 'none', '2020-11-24 12:52:13', '2020-11-24 12:52:13'),
(18, 18, 'none', 'none', 'none', '2020-11-24 12:52:29', '2020-11-24 12:52:29'),
(19, 19, 'none', 'none', 'none', '2020-11-24 12:52:36', '2020-11-24 12:52:36'),
(20, 23, 'none', 'none', 'none', '2020-12-20 12:25:06', '2020-12-20 12:25:06'),
(21, 24, 'none', 'none', 'none', '2020-12-20 12:31:39', '2020-12-20 12:31:39'),
(22, 25, 'none', 'none', 'none', '2020-12-29 05:01:21', '2020-12-29 05:01:21'),
(23, 26, 'none', 'none', 'none', '2020-12-29 07:07:00', '2020-12-29 07:07:00'),
(24, 27, 'none', 'none', '0987654326', '2020-12-29 07:11:30', '2020-12-29 07:11:30'),
(25, 28, 'none', 'none', '0231654789', '2020-12-29 07:18:43', '2020-12-29 07:18:43'),
(26, 29, 'none', 'none', 'none', '2021-01-05 03:54:09', '2021-01-05 03:54:09'),
(27, 30, 'none', 'none', 'none', '2021-01-05 04:29:28', '2021-01-05 04:29:28'),
(28, 31, 'none', 'none', 'none', '2021-01-09 14:56:08', '2021-01-09 14:56:08'),
(29, 32, 'none', 'none', 'none', '2021-01-10 01:47:37', '2021-01-10 01:47:37'),
(30, 33, 'none', 'none', 'none', '2021-01-10 02:09:45', '2021-01-10 02:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `profile_role`
--

CREATE TABLE `profile_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_role`
--

INSERT INTO `profile_role` (`id`, `profile_id`, `role_id`) VALUES
(2, 2, 1),
(3, 3, 1),
(4, 4, 3),
(5, 5, 3),
(6, 6, 4),
(7, 7, 4),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 4),
(15, 15, 4),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 1),
(21, 21, 1),
(22, 22, 2),
(23, 23, 1),
(24, 24, 3),
(25, 25, 3),
(26, 26, 1),
(27, 27, 2),
(28, 28, 1),
(29, 29, 2),
(30, 30, 2);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conduct` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_1` int(11) DEFAULT NULL,
  `test_2` int(11) DEFAULT NULL,
  `assignment_1` int(11) DEFAULT NULL,
  `assignment_2` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `final` int(11) DEFAULT NULL,
  `kifl_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `conduct`, `test_1`, `test_2`, `assignment_1`, `assignment_2`, `mid`, `final`, `kifl_id`, `student_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 'A', 10, 12, 6, 8, 15, 20, 1, 2, 1, NULL, NULL),
(2, 'C', 10, 2, 10, 10, 15, 20, 1, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Teacher', '2020-11-24 12:37:21', '2020-11-24 12:37:21'),
(2, 'Student', '2020-11-24 12:37:30', '2020-11-24 12:37:30'),
(3, 'Staff', '2020-11-24 12:37:34', '2020-11-24 12:37:34'),
(4, 'Parent', '2020-11-24 12:37:43', '2020-11-24 12:39:11'),
(5, 'Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 29, 1, NULL, NULL),
(2, 30, 4, NULL, NULL),
(3, 28, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kifl_id` bigint(20) UNSIGNED NOT NULL,
  `period` int(11) NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `kifl_id`, `period`, `day`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Mon', 1, NULL, NULL),
(2, 1, 2, 'Mon', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `profile_id`, `created_at`, `updated_at`) VALUES
(1, 4, '2020-11-24 12:43:29', '2020-11-24 12:43:29'),
(2, 5, '2020-11-24 12:43:38', '2020-11-24 12:43:38'),
(3, 24, '2020-12-29 07:11:30', '2020-12-29 07:11:30'),
(4, 25, '2020-12-29 07:18:43', '2020-12-29 07:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO name',
  `age` int(11) NOT NULL,
  `gender` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthDate` date DEFAULT NULL,
  `birthPlace` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fatherFullName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fatherAddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fatherPhone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motherFullName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motherAddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motherPhone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kifl_id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fullName`, `age`, `gender`, `birthDate`, `birthPlace`, `address`, `fatherFullName`, `fatherAddress`, `fatherPhone`, `motherFullName`, `motherAddress`, `motherPhone`, `kifl_id`, `profile_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(2, 'Abebe Arega', 22, 'male', '2020-12-23', 'Kemissie', 'Sebeta', 'Tsegaye Negassa', 'Sebeta', '0911984558', 'Genet Biru', 'Sebeta', '0911533094', 1, 11, 1, '2020-11-24 12:47:35', '2020-11-24 12:47:35'),
(4, 'Eyoel Mekonnen', 22, 'male', '2020-12-23', 'Kemissie', 'Sebeta', 'Tsegaye Negassa', 'Sebeta', '0911984558', 'Genet Biru', 'Sebeta', '0911533094', 1, 13, 1, '2020-11-24 12:48:02', '2020-11-24 12:48:02'),
(5, 'Abebe Arega', 22, 'male', '2020-12-23', 'Kemissie', 'Sebeta', 'Tsegaye Negassa', 'Sebeta', '0911984558', 'Genet Biru', 'Sebeta', '0911533094', 1, 22, 1, '2020-12-29 05:01:21', '2020-12-29 05:01:21'),
(6, 'Abdljewad', 20, 'male', '2021-01-12', 'Addis', 'Addis', 'Abdlshikur', 'Addis', '0912345678', 'Mothers name', 'Addis', '0987654231', 1, 27, 1, '2021-01-05 04:29:28', '2021-01-05 04:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kifl_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject`, `kifl_id`, `created_at`, `updated_at`) VALUES
(1, 'English', 1, NULL, NULL),
(2, 'Amharic', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject_teacher`
--

CREATE TABLE `subject_teacher` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `phone`, `profile_id`, `created_at`, `updated_at`) VALUES
(1, 'Abdisa Tsegaye RTYU', '0913654294', 1, '2020-11-24 12:23:09', '2021-01-10 02:30:41'),
(2, 'Abdisa Tsegaye', '0913654294', 2, '2020-11-24 12:42:57', '2020-11-24 12:42:57'),
(3, 'Tsegaye Negassa', '0911984558', 3, '2020-11-24 12:43:17', '2020-11-24 12:43:17'),
(4, 'Amanuel', '0912840671', 20, '2020-12-20 12:25:06', '2020-12-20 12:25:06'),
(5, 'Aklilu', '0913654290', 21, '2020-12-20 12:31:39', '2020-12-20 12:31:39'),
(6, 'Edomias tesfaye', '0987654326', 23, '2020-12-29 07:07:00', '2020-12-29 07:07:00'),
(7, 'Adnan', '0943215678', 26, '2021-01-05 03:54:09', '2021-01-05 03:54:09'),
(8, 'abebe', '0978665423', 28, '2021-01-09 14:56:08', '2021-01-09 14:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adminostrator', 'admin@school.server', NULL, '$2y$10$uGDrWtf5Y6TU3XMDbVAf0OiD8H6JOUrttJ1HPwTrMRJYEH37wJLTO', NULL, '2020-11-24 12:23:09', '2020-11-24 12:23:09'),
(2, 'Abdisa Tsegaye', 'abdisa tsegaye702@school.server', NULL, '$2y$10$pA9qTpatJ.iRssbMIGcTheHB9nRmIHVwMZntSkkfQMWILCZLzK/Ji', NULL, '2020-11-24 12:42:57', '2020-11-24 12:42:57'),
(3, 'Tsegaye Negassa', 'tsegaye negassa266@school.server', NULL, '$2y$10$ljEF/k7174BLQaLxv/tA9uxgoD2Df.PJ.M11emHrgm3vdln1HdXSO', NULL, '2020-11-24 12:43:17', '2020-11-24 12:43:17'),
(4, 'Haweni Tsegaye', 'haweni tsegaye347@school.server', NULL, '$2y$10$ToFCoSMjx3TKbZvRaJae8eH/HsPEVkUr7xUg4jzMnpkOlil2wt5yO', NULL, '2020-11-24 12:43:29', '2020-11-24 12:43:29'),
(5, 'Mersen Tsegaye', 'mersen tsegaye717@school.server', NULL, '$2y$10$JotTkIAZF4Nn01vXCEcs8uvXcJnEHE2jdgJvUwQrzy157IED599aO', NULL, '2020-11-24 12:43:38', '2020-11-24 12:43:38'),
(6, 'Amanuel Demissie', 'amanuel demissie842@school.server', NULL, '$2y$10$zbRvr7V3p5wFVQQLp8jzY.d7Nw7qAHt1TsmnI83h5goZ6kjAS4iRa', NULL, '2020-11-24 12:44:09', '2020-11-24 12:44:09'),
(7, 'Nahom Zerihun', 'nahom zerihun768@school.server', NULL, '$2y$10$rSAIGya2oQpBIU1ZeKs2e.uGEl/yVvPCkw7Fhgo5iGhVyjl4F.zMO', NULL, '2020-11-24 12:44:32', '2020-11-24 12:44:32'),
(8, 'Abebe Arega', 'abebe arega897@school.server', NULL, '$2y$10$HTKenUZbAw20AX1FZ5qUkeGWuEDgG83FK/l.A6XAJJU3KzEFTmy8e', NULL, '2020-11-24 12:45:03', '2020-11-24 12:45:03'),
(9, 'Abebe Arega', 'abebe arega90@school.server', NULL, '$2y$10$/8.YnA20ivPnArfs9jxr6Ody6jrt9e7PQ2uKjS/CE8/fczO2o6PSC', NULL, '2020-11-24 12:45:55', '2020-11-24 12:45:55'),
(10, 'Abebe Arega', 'abebe arega264@school.server', NULL, '$2y$10$uFVlTTqsvbivFlDTNyXSperuwNwzYSCu.IscsmIuFG4uX8H3swrFa', NULL, '2020-11-24 12:46:08', '2020-11-24 12:46:08'),
(11, 'Abebe Arega', 'abebe arega426@school.server', NULL, '$2y$10$ZmCA0atFAbkPp8GFG4H7lOskhFAO5AlNBP22OrN80A5DBgljmcEnq', NULL, '2020-11-24 12:47:34', '2020-11-24 12:47:34'),
(12, 'Amanuel Mokonnon', 'amanuel mokonnon181@school.server', NULL, '$2y$10$yHZm9b8j9I2YW/2KP4g6gelu8c1g73u3/LDqkCQR6s7aiQWIwWHiC', NULL, '2020-11-24 12:47:47', '2020-11-24 12:47:47'),
(13, 'Eyoel Mekonnen', 'eyoel mekonnen224@school.server', NULL, '$2y$10$3CBqfKJdQ3iRzXXPkc7n8.SqfjAdOIapEYSZF7WMDnoVBtO4ce0kG', NULL, '2020-11-24 12:48:02', '2020-11-24 12:48:02'),
(14, 'Nahom Zerihun', 'nahom zerihun118@school.server', NULL, '$2y$10$yHD4wN5mhpNA/XeLIPl/LOkGtYFkBKfS7TpeX.0huBl66G5/XN4.e', NULL, '2020-11-24 12:48:37', '2020-11-24 12:48:37'),
(15, 'Tigist Zerihun', 'tigist zerihun427@school.server', NULL, '$2y$10$06Yyni8RhX1Ei.x33u/Yp.K4ngROIGJAnBN.iPkEp8vhEXLuHrsve', NULL, '2020-11-24 12:48:47', '2020-11-24 12:48:47'),
(16, 'Zerihun Tolera', 'zerihun tolera296@school.server', NULL, '$2y$10$SoY0jg9pDVE2ZqfqCdtViuyuJcO5d6tD9NQeHtC/SqtqPB7QOTcVS', NULL, '2020-11-24 12:48:54', '2020-11-24 12:48:54'),
(17, 'Zerihun Tolera', 'zerihun tolera135@school.server', NULL, '$2y$10$c26q26RyDjNGimE7I95e../gHi7D4rD8KxmcGWtcpuKZzhiPC70iy', NULL, '2020-11-24 12:52:13', '2020-11-24 12:52:13'),
(18, 'Nahom Zerihun', 'nahom zerihun22@school.server', NULL, '$2y$10$6VCTO76m34IzZO54ZUFlcejXwPbz.s/IHrQv.Y.Miy8ivSPtXWad.', NULL, '2020-11-24 12:52:29', '2020-11-24 12:52:29'),
(19, 'Tigist Zerihun', 'tigist zerihun105@school.server', NULL, '$2y$10$szfihaG.tsanuwHrXK.7V.avDxD6UKRBNjXjZnlvWZOZNMsfv50/2', NULL, '2020-11-24 12:52:36', '2020-11-24 12:52:36'),
(21, 'Aboma', 'aboma@mail.com', NULL, '123456', NULL, '2020-12-04 20:02:06', '2020-12-04 20:02:06'),
(22, 'Aboma', 'aboma1@mail.com', NULL, '$2y$10$y1duAGDL4A0g8TxQn59zSeWLqTEROA5rJgg5rpihgtu2qtrSM7vnO', NULL, '2020-12-04 20:14:34', '2020-12-04 20:14:34'),
(23, 'Amanuel', 'amanuel366@school.server', NULL, '$2y$10$lDGoxHIFhz9xRagCzgFy/OuClFgtLz3rw0qj1hjRpcHPCPq1fHq/K', NULL, '2020-12-20 12:25:06', '2020-12-20 12:25:06'),
(24, 'Aklilu', 'aklilu257@school.server', NULL, '$2y$10$0PZ/UeRkZbnBTR5XIEXesOMFy0ChdgWleQcoDydzE7ITYouyISD86', NULL, '2020-12-20 12:31:39', '2020-12-20 12:31:39'),
(25, 'Abebe Arega', 'abebe arega487@school.server', NULL, '$2y$10$N3IbbLZdZ5Z54M2hOFxkQOmH/7nA2KxeK5Yaapu8wiudOFb8zvtTG', NULL, '2020-12-29 05:01:20', '2020-12-29 05:01:20'),
(26, 'Edomias tesfaye', 'edomiastesfaye772@school.server', NULL, '$2y$10$7nDntOvRtuwTiZ5//4JZAOpL09FLaREjPPDAwErj9rBRg73oUlJv.', NULL, '2020-12-29 07:07:00', '2020-12-29 07:07:00'),
(27, 'Edomias tesfaye', 'edomias tesfaye225@school.server', NULL, '$2y$10$Zr7H8KZjBrRRp6BQW4OLrOZGGPbLq564cwiOPeCA4vEjJsVbyh3B2', NULL, '2020-12-29 07:11:30', '2020-12-29 07:11:30'),
(28, 'Alamudin Ahmed', 'alamudinahmed61@school.server', NULL, '$2y$10$FiF78B4n6S4IIX9rvaqeZ..kL3VvHXpjxSfcvIfk/haT8UZWFNApO', NULL, '2020-12-29 07:18:43', '2020-12-29 07:18:43'),
(29, 'Adnan', 'adnan887@school.server', NULL, '$2y$10$FiF78B4n6S4IIX9rvaqeZ..kL3VvHXpjxSfcvIfk/haT8UZWFNApO', 'u5uEGv7IlueWwhmygPyDEMFJGPNqDErGXKvK7Gb5zmWodMX4yeiLrrEsT8uC', '2021-01-05 03:54:09', '2021-01-05 03:54:09'),
(30, 'Abdljewad', 'abdljewad183@school.server', NULL, '$2y$10$uGDrWtf5Y6TU3XMDbVAf0OiD8H6JOUrttJ1HPwTrMRJYEH37wJLTO', NULL, '2021-01-05 04:29:28', '2021-01-05 04:29:28'),
(31, 'abebe', 'abebe389@school.server', NULL, '$2y$10$bla0QAOWLt51zwJC8um2IOVa/a/i.p5B7KLM.eUrG1/qY9WKe8Cz6', NULL, '2021-01-09 14:56:08', '2021-01-09 14:56:08'),
(32, 'Abebe Arega damtew', 'abebe arega damtew334@school.server', NULL, '$2y$10$56H2N.XnZFWxXoeu4Q/FhOq/f9vOIkoENkS0DNdyLyev99W7bYAkO', NULL, '2021-01-10 01:47:37', '2021-01-10 01:47:37'),
(33, 'Feven Mokonnon afds', 'feven mokonnon afds654@school.server', NULL, '$2y$10$cW8UWIAFnREDlJmEgtrbEu9yXDcTDEuMLT0ziXDhXjyj.bqfR6yFy', NULL, '2021-01-10 02:09:45', '2021-01-10 02:09:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announcements_profile_id_foreign` (`profile_id`);

--
-- Indexes for table `annual_schedules`
--
ALTER TABLE `annual_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_student_id_foreign` (`student_id`),
  ADD KEY `attendances_kifl_id_foreign` (`kifl_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guardians_profile_id_foreign` (`profile_id`);

--
-- Indexes for table `kifls`
--
ALTER TABLE `kifls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kifls_grade_id_foreign` (`grade_id`);

--
-- Indexes for table `kifl_teacher`
--
ALTER TABLE `kifl_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kifl_teacher_teacher_id_foreign` (`teacher_id`),
  ADD KEY `kifl_teacher_kifl_id_foreign` (`kifl_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`),
  ADD KEY `messages_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `profile_role`
--
ALTER TABLE `profile_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_role_role_id_foreign` (`role_id`),
  ADD KEY `profile_role_profile_id_foreign` (`profile_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_kifl_id_foreign` (`kifl_id`),
  ADD KEY `results_student_id_foreign` (`student_id`),
  ADD KEY `results_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_kifl_id_foreign` (`kifl_id`),
  ADD KEY `schedules_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_profile_id_foreign` (`profile_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_kifl_id_foreign` (`kifl_id`),
  ADD KEY `students_profile_id_foreign` (`profile_id`),
  ADD KEY `students_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_kifl_id_foreign` (`kifl_id`);

--
-- Indexes for table `subject_teacher`
--
ALTER TABLE `subject_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_teacher_teacher_id_foreign` (`teacher_id`),
  ADD KEY `subject_teacher_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_profile_id_foreign` (`profile_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `annual_schedules`
--
ALTER TABLE `annual_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kifls`
--
ALTER TABLE `kifls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kifl_teacher`
--
ALTER TABLE `kifl_teacher`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `profile_role`
--
ALTER TABLE `profile_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subject_teacher`
--
ALTER TABLE `subject_teacher`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`);

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_kifl_id_foreign` FOREIGN KEY (`kifl_id`) REFERENCES `kifls` (`id`),
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `guardians`
--
ALTER TABLE `guardians`
  ADD CONSTRAINT `guardians_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`);

--
-- Constraints for table `kifls`
--
ALTER TABLE `kifls`
  ADD CONSTRAINT `kifls_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`);

--
-- Constraints for table `kifl_teacher`
--
ALTER TABLE `kifl_teacher`
  ADD CONSTRAINT `kifl_teacher_kifl_id_foreign` FOREIGN KEY (`kifl_id`) REFERENCES `kifls` (`id`),
  ADD CONSTRAINT `kifl_teacher_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `profiles` (`id`),
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `profiles` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `profile_role`
--
ALTER TABLE `profile_role`
  ADD CONSTRAINT `profile_role_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`),
  ADD CONSTRAINT `profile_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_kifl_id_foreign` FOREIGN KEY (`kifl_id`) REFERENCES `kifls` (`id`),
  ADD CONSTRAINT `results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `results_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_kifl_id_foreign` FOREIGN KEY (`kifl_id`) REFERENCES `kifls` (`id`),
  ADD CONSTRAINT `schedules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_kifl_id_foreign` FOREIGN KEY (`kifl_id`) REFERENCES `kifls` (`id`),
  ADD CONSTRAINT `students_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `profiles` (`id`),
  ADD CONSTRAINT `students_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_kifl_id_foreign` FOREIGN KEY (`kifl_id`) REFERENCES `kifls` (`id`);

--
-- Constraints for table `subject_teacher`
--
ALTER TABLE `subject_teacher`
  ADD CONSTRAINT `subject_teacher_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `subject_teacher_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
