-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2022 at 10:00 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `curawork_coding_challenge`
--

-- --------------------------------------------------------

--
-- Table structure for table `connection_models`
--

CREATE TABLE `connection_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `friend_status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `connection_models`
--

INSERT INTO `connection_models` (`id`, `sender_id`, `receiver_id`, `friend_status`, `created_at`, `updated_at`) VALUES
(2, 1, 2, '1', '2022-08-30 14:27:55', '2022-08-30 14:27:55'),
(3, 1, 3, '1', '2022-08-30 14:27:56', '2022-08-30 14:27:56'),
(4, 1, 4, '1', '2022-08-30 14:28:00', '2022-08-30 14:28:00'),
(5, 1, 5, '1', '2022-08-30 14:30:11', '2022-08-30 14:30:11'),
(6, 1, 6, '1', '2022-08-30 14:30:11', '2022-08-30 14:30:11'),
(7, 1, 7, '1', '2022-08-30 14:30:11', '2022-08-30 14:30:11'),
(8, 1, 8, '1', '2022-08-30 14:30:11', '2022-08-30 14:30:11'),
(9, 1, 9, '1', '2022-08-30 14:30:11', '2022-08-30 14:30:11'),
(10, 1, 10, '1', '2022-08-30 14:30:11', '2022-08-30 14:30:11'),
(11, 1, 11, '1', '2022-08-30 14:30:12', '2022-08-30 14:30:12'),
(12, 1, 12, '0', '2022-08-30 14:30:12', '2022-08-30 14:30:12'),
(13, 1, 13, '0', '2022-08-30 14:30:12', '2022-08-30 14:30:12'),
(14, 1, 14, '0', '2022-08-30 14:30:14', '2022-08-30 14:30:14'),
(15, 1, 25, '0', '2022-08-30 14:30:15', '2022-08-30 14:30:15'),
(16, 1, 24, '0', '2022-08-30 14:30:16', '2022-08-30 14:30:16'),
(17, 2, 2, '1', '2022-08-30 14:27:55', '2022-08-30 14:27:55'),
(18, 2, 3, '1', '2022-08-30 14:27:56', '2022-08-30 14:27:56'),
(19, 2, 4, '1', '2022-08-30 14:28:00', '2022-08-30 14:28:00'),
(20, 2, 5, '1', '2022-08-30 14:30:11', '2022-08-30 14:30:11'),
(21, 2, 6, '1', '2022-08-30 14:30:11', '2022-08-30 14:30:11'),
(22, 2, 7, '1', '2022-08-30 14:30:11', '2022-08-30 14:30:11'),
(23, 2, 8, '1', '2022-08-30 14:30:11', '2022-08-30 14:30:11'),
(24, 2, 9, '1', '2022-08-30 14:30:11', '2022-08-30 14:30:11'),
(25, 2, 10, '1', '2022-08-30 14:30:11', '2022-08-30 14:30:11'),
(26, 2, 11, '1', '2022-08-30 14:30:12', '2022-08-30 14:30:12'),
(27, 1, 15, '0', '2022-08-30 14:49:43', '2022-08-30 14:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_28_041546_create_connection_models_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ali', 'alimughal5566@gmail.com', NULL, '$2y$10$Ys.LlngNIuzq/B3ON3gQNekJyIDVV0uRvqFrW4c9/3CXoBFVOlw9m', NULL, NULL, NULL, NULL, '2022-08-30 14:25:26', '2022-08-30 14:25:26'),
(2, 'Miss Mina Kovacek I', 'haag.arvid@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'NqUH0JGEme', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(3, 'Tressie Grimes', 'susanna.durgan@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dbb5EbXErX', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(4, 'Ms. Paula Altenwerth II', 'bailey95@example.org', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Ts5IzQhFSA', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(5, 'Miss Catherine Krajcik V', 'elton.kling@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'I1fcFlRrwh', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(6, 'Isaias Orn', 'emily.hand@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'XLiKmPS7KA', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(7, 'Christiana Jast', 'price38@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dmEnMs4cze', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(8, 'Montana Jenkins IV', 'zoila67@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'fvuwmRe3iI', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(9, 'Shad Mertz', 'zane74@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'anEkUfPVpv', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(10, 'Prof. Wilson Conroy', 'sheaney@example.org', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'MTmo51glEW', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(11, 'Weldon Romaguera', 'dgleichner@example.org', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '814eZvr575', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(12, 'Myrtice Lang', 'verner42@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ntiiCe1xcZ', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(13, 'Jasper Boehm', 'walker.yasmin@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '08GrRuYP8K', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(14, 'Valentina Renner', 'gbarton@example.org', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '8wYoqueBol', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(15, 'Dr. Dario Hettinger I', 'dillon.hintz@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'MYY4ychBn0', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(16, 'Magnus Metz', 'jakubowski.lula@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'H4nbG17D1q', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(17, 'Stephany Schumm I', 'bettye.boyle@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Q7bWvumd0l', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(18, 'Erica Hauck', 'raleigh.nader@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'jIlPwAp286', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(19, 'Walter Schuster', 'zbeatty@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ch3dhcEuix', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(20, 'Heber Mante', 'jennyfer.collier@example.org', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'rF9Nre0ME8', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(21, 'Mr. Bailey Goyette', 'eleazar.eichmann@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'I2uXXCNCS6', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(22, 'Adrain Jerde', 'sbeer@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '5HcRYysKNC', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(23, 'Dillon Feest II', 'carli.casper@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'T89uNWe5Pl', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(24, 'Domenico Terry', 'lula09@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'HTsrHpNSCo', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(25, 'Odie Anderson', 'wilton.witting@example.org', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'OD31t79N5Q', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(26, 'Virginia Dickens', 'oda27@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'BqoJZm2tNV', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(27, 'Enrico Fahey', 'ryder44@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'mNnVqullil', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(28, 'Dr. Nash Larkin V', 'williamson.arch@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '3smWDB0Ig6', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(29, 'Janiya Glover', 'ywhite@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '59Yfp1OMko', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(30, 'Isidro Barton', 'dicki.norwood@example.org', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'gZcfSl4SE0', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(31, 'Mr. Hiram Leffler Jr.', 'amurphy@example.org', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xEkSbovwec', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(32, 'Mrs. Retta Douglas', 'miller.mandy@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Jx5MZjYExq', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(33, 'Lyla Romaguera MD', 'emmitt.prohaska@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'GuRY5FS7gL', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(34, 'Derrick Tillman', 'dallas.orn@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'hKrxaOnuTB', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(35, 'Ford Sporer MD', 'funk.verner@example.org', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'AvQULm6TJv', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(36, 'Michaela Cassin', 'harris.janet@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '6NSXzAt8FU', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(37, 'Eloisa Prosacco', 'juliana.kertzmann@example.org', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'D7fe6f0tTb', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(38, 'Samir Gleichner', 'zieme.cale@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'vd6pbMWksp', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(39, 'Prof. Kristin Lemke', 'raphael.runte@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'yZnZ0CoseF', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(40, 'Elmo Jakubowski', 'beatrice.breitenberg@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'T47w4cMNhc', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(41, 'Mr. Marco Lebsack', 'thurman56@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'CCDFdae22y', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(42, 'Dr. Virginie Hessel', 'runolfsson.gust@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'QBbWa2FibE', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(43, 'Demarco Rolfson', 'gladyce.doyle@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'SCMbBJC6IB', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(44, 'Armando Goyette MD', 'ymaggio@example.org', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'nyzrmlS1xq', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(45, 'Sigurd Gislason', 'schinner.kane@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '2GLmzuT90e', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(46, 'Spencer Doyle', 'shanny.runte@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '5nKBKzr88H', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(47, 'Augusta Hane', 'iryan@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'M8z5IFSq1w', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(48, 'Mr. Major Hane I', 'kaleb59@example.org', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'yBn30VFogB', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(49, 'Prof. Erica Wisoky', 'ygleichner@example.net', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Pqt58u3qCg', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(50, 'Prof. Irma Okuneva', 'murray.margaret@example.com', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'GOcQfzvEEl', '2022-08-30 14:27:30', '2022-08-30 14:27:30'),
(51, 'Miss Clementina Kirlin', 'shania66@example.org', '2022-08-30 14:27:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'snAS3uSCWp', '2022-08-30 14:27:30', '2022-08-30 14:27:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connection_models`
--
ALTER TABLE `connection_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `connection_models_sender_id_foreign` (`sender_id`),
  ADD KEY `connection_models_receiver_id_foreign` (`receiver_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `connection_models`
--
ALTER TABLE `connection_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `connection_models`
--
ALTER TABLE `connection_models`
  ADD CONSTRAINT `connection_models_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `connection_models_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
