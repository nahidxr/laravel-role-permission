-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 12, 2024 at 11:52 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_scorm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@example.com', 'superadmin', NULL, '$2y$10$PSxi1lVrF5OTf94scUUJsOKjnjpAY368ehU.beEwSUBR.HuOFhbXO', 'cg8Uc9MLKdXLtlQoXSr9O6bw2sF5kIsyhSzDJAsPCuu8srVugRzXMrssHMp1', '2024-09-11 01:12:25', '2024-09-11 01:12:25'),
(2, 'Scorm', 'scorm@nexdecade.com', 'scorm', NULL, '$2y$10$0hxVrA1.eMq0QhQJPPBn0eQmCx9NhWwm6wpPG4sGWv2V80aTqbbSK', NULL, '2024-09-11 23:03:14', '2024-09-11 23:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_27_131400_create_scorm_tables', 1),
(6, '2020_07_24_184706_create_permission_tables', 2),
(7, '2020_09_12_043205_create_admins_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(2, 'App\\Models\\Admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'admin', 'dashboard', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(2, 'dashboard.edit', 'admin', 'dashboard', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(3, 'blog.create', 'admin', 'blog', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(4, 'blog.view', 'admin', 'blog', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(5, 'blog.edit', 'admin', 'blog', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(6, 'blog.delete', 'admin', 'blog', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(7, 'blog.approve', 'admin', 'blog', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(8, 'admin.create', 'admin', 'admin', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(9, 'admin.view', 'admin', 'admin', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(10, 'admin.edit', 'admin', 'admin', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(11, 'admin.delete', 'admin', 'admin', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(12, 'admin.approve', 'admin', 'admin', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(13, 'role.create', 'admin', 'role', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(14, 'role.view', 'admin', 'role', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(15, 'role.edit', 'admin', 'role', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(16, 'role.delete', 'admin', 'role', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(17, 'role.approve', 'admin', 'role', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(18, 'profile.view', 'admin', 'profile', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(19, 'profile.edit', 'admin', 'profile', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(20, 'profile.delete', 'admin', 'profile', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(21, 'profile.update', 'admin', 'profile', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(22, 'scorm.view', 'admin', 'scorm', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(23, 'scorm.edit', 'admin', 'scorm', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(24, 'scorm.delete', 'admin', 'scorm', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(25, 'scorm.update', 'admin', 'scorm', '2024-09-11 01:12:26', '2024-09-11 01:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'admin', '2024-09-11 01:12:26', '2024-09-11 01:12:26'),
(2, 'Scorm', 'admin', '2024-09-11 23:02:02', '2024-09-11 23:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `scorm`
--

CREATE TABLE `scorm` (
  `id` bigint UNSIGNED NOT NULL,
  `resource_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `resource_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `origin_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin_file_mime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratio` double DEFAULT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `entry_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scorm`
--

INSERT INTO `scorm` (`id`, `resource_type`, `resource_id`, `title`, `version`, `hash_name`, `origin_file`, `origin_file_mime`, `ratio`, `uuid`, `identifier`, `entry_url`, `created_at`, `updated_at`) VALUES
(1, '\'\'', 202409121118, 'Employee Health and Wellness (Sample Course)', 'scorm_12', '\'\'', '202409121118', NULL, NULL, '700f9f4f-9475-4d8c-a60f-5d246fe52426', '\'\'', 'scormdriver/indexAPI.html', '2024-09-12 05:10:18', '2024-09-12 05:10:18'),
(2, '\'\'', 202409121129, 'SL360 LMS SCORM 1.2', 'scorm_12', '\'\'', '202409121129', NULL, NULL, '2ec2de41-625b-47b2-bdb2-58d3eaab5fd1', '\'\'', 'index_lms.html', '2024-09-12 05:37:29', '2024-09-12 05:37:29'),
(3, '\'\'', 202409121131, 'SL360 LMS SCORM 2004', 'scorm_2004', '\'\'', '202409121131', NULL, NULL, '1ffb5c42-5c54-40f4-a6c6-0b6829c2d2e4', '\'\'', 'index_lms.html', '2024-09-12 05:39:31', '2024-09-12 05:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `scorm_sco`
--

CREATE TABLE `scorm_sco` (
  `id` bigint UNSIGNED NOT NULL,
  `scorm_id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sco_parent_id` bigint UNSIGNED DEFAULT NULL,
  `entry_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint NOT NULL,
  `sco_parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `launch_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `max_time_allowed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_limit_action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` tinyint NOT NULL,
  `score_int` int DEFAULT NULL,
  `score_decimal` decimal(10,7) DEFAULT NULL,
  `completion_threshold` decimal(10,7) DEFAULT NULL,
  `prerequisites` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scorm_sco`
--

INSERT INTO `scorm_sco` (`id`, `scorm_id`, `uuid`, `sco_parent_id`, `entry_url`, `identifier`, `title`, `visible`, `sco_parameters`, `launch_data`, `max_time_allowed`, `time_limit_action`, `block`, `score_int`, `score_decimal`, `completion_threshold`, `prerequisites`, `created_at`, `updated_at`) VALUES
(1, 1, 'e34e85ba-32e3-4e8a-874b-87ca5f6e1a7c', NULL, 'scormdriver/indexAPI.html', 'i1', 'Employee Health and Wellness (Sample Course)', 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-09-12 05:10:18', '2024-09-12 05:10:18'),
(2, 2, 'd72718e1-8582-4f34-95c1-9fc653fc2696', NULL, 'index_lms.html', 'Sample_SL360_LMS_Output_SCO', 'SL360 LMS SCORM 1.2', 1, NULL, NULL, NULL, NULL, 0, 80, NULL, NULL, NULL, '2024-09-12 05:37:29', '2024-09-12 05:37:29'),
(3, 3, 'e30e49e5-e472-4a40-97e5-5fd04dfd0ebf', NULL, 'index_lms.html', 'Sample_SL360_LMS_Output_SCO', 'SL360 LMS SCORM 2004', 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2024-09-12 05:39:31', '2024-09-12 05:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `scorm_sco_tracking`
--

CREATE TABLE `scorm_sco_tracking` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `sco_id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `progression` double NOT NULL,
  `score_raw` int DEFAULT NULL,
  `score_min` int DEFAULT NULL,
  `score_max` int DEFAULT NULL,
  `score_scaled` decimal(10,7) DEFAULT NULL,
  `lesson_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completion_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_time` int DEFAULT NULL,
  `total_time_int` int DEFAULT NULL,
  `total_time_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suspend_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `credit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exit_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesson_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesson_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_locked` tinyint DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'json_array',
  `latest_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scorm_sco_tracking`
--

INSERT INTO `scorm_sco_tracking` (`id`, `user_id`, `sco_id`, `uuid`, `progression`, `score_raw`, `score_min`, `score_max`, `score_scaled`, `lesson_status`, `completion_status`, `session_time`, `total_time_int`, `total_time_string`, `entry`, `suspend_data`, `credit`, `exit_mode`, `lesson_location`, `lesson_mode`, `is_locked`, `details`, `latest_date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '797f5dea-2e9a-4312-ba51-d3e0827dd0f8', 0, NULL, NULL, NULL, NULL, 'not attempted', 'unknown', 18932, 40528, NULL, NULL, '{\"v\":1,\"d\":[123,34,112,114,111,103,114,101,115,115,34,58,256,108,263,115,111,110,265,267,34,48,266,256,99,266,49,44,257,281,48,48,283,105,278,276,290,280,58,49,125,283,49,292,281,296,34,50,299,294,301,51,304,295,283,52,308,125,313,301,112,266,50,53,313]}', 'no-credit', 'suspend', 'index.html#/lessons/ka1HlXzKNxczaK1haUUYuPsyyVJzCbbZ', 'normal', 0, '{\"cmi.core.exit\":\"suspend\",\"cmi.suspend_data\":\"{\\\"v\\\":1,\\\"d\\\":[123,34,112,114,111,103,114,101,115,115,34,58,256,108,263,115,111,110,265,267,34,48,266,256,99,266,49,44,257,281,48,48,283,105,278,276,290,280,58,49,125,283,49,292,281,296,34,50,299,294,301,51,304,295,283,52,308,125,313,301,112,266,50,53,313]}\",\"cmi.core.lesson_location\":\"index.html#\\/lessons\\/ka1HlXzKNxczaK1haUUYuPsyyVJzCbbZ\",\"cmi.core.session_time\":\"0000:03:09.32\"}', '2024-09-12 11:29:57', '2024-09-12 05:26:32', '2024-09-12 05:29:57'),
(2, 1, 2, '59d1accf-b0ce-48f1-8dc4-ef1a5233ce1f', 0, NULL, NULL, NULL, NULL, 'incomplete', 'unknown', 71453, 366071, NULL, NULL, '2z1a60708090a0yx1001412p0101201112012120131201412G101^1^v_player.6MdNfgnZ6cO.5zM3D3RsZRg1^1^0030002000', 'no-credit', NULL, NULL, 'normal', 0, '{\"cmi.core.session_time\":\"0000:11:54.53\"}', '2024-09-12 11:50:13', '2024-09-12 05:38:11', '2024-09-12 05:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'MD Arman', 'arman.ullah@nexdecade.com', NULL, '$2y$10$gazyVHb5YO0hxTBeYQhN.ubKBNJ6gjDyWfVgS19dnEleAkdAYkqz.', NULL, NULL, NULL),
(2, 'Md Arman Ullah', 'amd@nexdecade.com', NULL, '$2y$10$WEeglgBbI7JezTiGOgkRdeA9mLQaFUHTPaqO6s6BWFRrAvA0St.eu', NULL, '2024-09-08 04:18:50', '2024-09-08 04:18:50'),
(3, 'Test User', 'test@nexd.com', NULL, '$2y$10$ibh9hhNnWJ06evitNmmZn.erU9bw/HMjIOYIDXd/hNvvCa/BTe/Gy', NULL, '2024-09-08 05:18:49', '2024-09-08 05:18:49'),
(4, 'Maniruzzaman Akash', 'manirujjamanakash@gmail.com', NULL, '$2y$10$198PWliUSmoxBNB8GmmlfObl74LIweF1Xk.JAu8AQgINZFt0Lu7q6', NULL, '2024-09-11 01:12:25', '2024-09-11 01:12:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `scorm`
--
ALTER TABLE `scorm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scorm_resource_type_resource_id_index` (`resource_type`,`resource_id`);

--
-- Indexes for table `scorm_sco`
--
ALTER TABLE `scorm_sco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scorm_sco_scorm_id_foreign` (`scorm_id`);

--
-- Indexes for table `scorm_sco_tracking`
--
ALTER TABLE `scorm_sco_tracking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scorm_sco_tracking_user_id_foreign` (`user_id`),
  ADD KEY `scorm_sco_tracking_sco_id_foreign` (`sco_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scorm`
--
ALTER TABLE `scorm`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scorm_sco`
--
ALTER TABLE `scorm_sco`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scorm_sco_tracking`
--
ALTER TABLE `scorm_sco_tracking`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scorm_sco`
--
ALTER TABLE `scorm_sco`
  ADD CONSTRAINT `scorm_sco_scorm_id_foreign` FOREIGN KEY (`scorm_id`) REFERENCES `scorm` (`id`);

--
-- Constraints for table `scorm_sco_tracking`
--
ALTER TABLE `scorm_sco_tracking`
  ADD CONSTRAINT `scorm_sco_tracking_sco_id_foreign` FOREIGN KEY (`sco_id`) REFERENCES `scorm_sco` (`id`),
  ADD CONSTRAINT `scorm_sco_tracking_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
