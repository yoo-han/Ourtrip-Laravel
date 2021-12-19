-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2021 at 05:50 PM
-- Server version: 10.3.32-MariaDB-log-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ourtripx_ourtrip`
--

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
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlPhoto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `title`, `description`, `urlPhoto`, `created_at`, `updated_at`) VALUES
(2, 'Floating Market Tour', 'Lembang adalah salah satu destinasi wisata keluarga terbaik di Jawa Barat. Ada banyak tempat rekreasi ramah anak yang tak hanya menyenangkan, tapi juga menawarkan pemandangan indah serta udara yang sejuk.', 'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit19201280gsm/events/2021/03/01/2ec5e3f6-a915-4cbb-98a2-1adc94e67cf7-1614572630014-7cceec833e1e5f319b432aa889600182.jpg', '2021-12-08 03:05:14', '2021-12-08 03:06:54'),
(4, 'Bali Tour', 'Pulau Bali', 'https://d3p0bla3numw14.cloudfront.net/news-content/img/2021/05/03112735/Tempat-Tinggal-Terbaik-di-Bali.jpg', '2021-12-08 05:07:53', '2021-12-08 05:08:08');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_12_04_225308_create_reservations_table', 1),
(11, '2021_12_05_002813_create_locations_table', 1),
(12, '2021_12_05_235714_create_ratings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('026481cc5f52f00ede5afc68938c42ceb9a6919bb3837c9361899ed65743d755d33cb60a04a568f5', 2, 1, 'Authentication Token', '[]', 0, '2021-12-07 10:07:27', '2021-12-07 10:07:27', '2022-12-07 17:07:27'),
('12aa26a959d7585d317edf22fbb29f7545741e8811a576b5111f6727b74b651894e09c9d9fb035b5', 2, 1, 'Authentication Token', '[]', 0, '2021-12-07 10:05:21', '2021-12-07 10:05:21', '2022-12-07 17:05:21'),
('32b45f259fb1efd28c0ccfbc41b74bfd9aedd394912e122fa7ffcdc037bdd1f1fb573c7cd1823220', 1, 1, 'Authentication Token', '[]', 0, '2021-12-07 10:07:04', '2021-12-07 10:07:04', '2022-12-07 17:07:04'),
('37604b85db915e590c96e77e2934106ef63a1a6e9896f8482988f8d955f9fbcfa069c50128605991', 4, 1, 'Authentication Token', '[]', 0, '2021-12-07 10:37:56', '2021-12-07 10:37:56', '2022-12-07 17:37:56'),
('3d806740f82a44f020fcd647b31587fb548e4c95bf6e88f874fc1ed8b8cf0f7889b57d35387cd75d', 1, 1, 'Authentication Token', '[]', 0, '2021-12-07 09:54:06', '2021-12-07 09:54:06', '2022-12-07 16:54:06'),
('5a2981ded75fa8102c535a75dfdd706076e5f90880d8e5bebb8f39ffa35c3be88b9ed033095124b9', 1, 1, 'Authentication Token', '[]', 0, '2021-12-07 10:42:44', '2021-12-07 10:42:44', '2022-12-07 17:42:44'),
('65257801cfc4f30894f1332dade840e3b0b7b1b85cede83d910af2df8b0aa8ebb9ef6009962f9a45', 1, 1, 'Authentication Token', '[]', 0, '2021-12-07 09:48:50', '2021-12-07 09:48:50', '2022-12-07 16:48:50'),
('7ffa1b38f03f3a55b032638b61462c497209e49cbe308189bae4b2f326447ecce7386625e08ae5b1', 1, 1, 'Authentication Token', '[]', 0, '2021-12-08 05:07:21', '2021-12-08 05:07:21', '2022-12-08 12:07:21'),
('837a0581a4def353eff2812baaecc91b529ccc0c0c3046647f3de209f09ed6bc6e63feaf84293c1d', 15, 1, 'Authentication Token', '[]', 0, '2021-12-08 05:06:26', '2021-12-08 05:06:26', '2022-12-08 12:06:26'),
('85293e2dff2c2bd13d3127f7473ead7755408b415bec4e2ff357fe1be7803f83ae6d2905deffe067', 15, 1, 'Authentication Token', '[]', 0, '2021-12-08 05:04:01', '2021-12-08 05:04:01', '2022-12-08 12:04:01'),
('887e6e321b63c14c4934b3761dee479ce25b07a6f874189a26c536ac9d799ce4291b47255bc99eca', 3, 1, 'Authentication Token', '[]', 0, '2021-12-07 10:20:33', '2021-12-07 10:20:33', '2022-12-07 17:20:33'),
('8dab38b52e22168065ca1f9cf6bc945bdad0577bbc0f8639e2dca726a39691bb5af1cd9c18086060', 1, 1, 'Authentication Token', '[]', 0, '2021-12-07 11:01:20', '2021-12-07 11:01:20', '2022-12-07 18:01:20'),
('8f270ea3599d634a58ad82228dffe51bf74c396db3349b5e1bfae86cb45729dc0a941adf913a3363', 2, 1, 'Authentication Token', '[]', 0, '2021-12-08 03:09:19', '2021-12-08 03:09:19', '2022-12-08 10:09:19'),
('906d4e997e8777a280808afeca99cd4a58b83cbe0d5533389b08a83dceb04f006dbd15163ef5ddcc', 13, 1, 'Authentication Token', '[]', 0, '2021-12-08 02:55:00', '2021-12-08 02:55:00', '2022-12-08 09:55:00'),
('944e8c2724218c8bf8e50c4c8415b282a4b01fe90f060d2ce47af9a48c5dfe36a9739f0d2b1409d4', 1, 1, 'Authentication Token', '[]', 0, '2021-12-08 02:57:14', '2021-12-08 02:57:14', '2022-12-08 09:57:14'),
('99314b867d6f62e4b862f43c2cfa5ca5a599413dc542b35fef980f4dcdb23342ee0ee49c994c00e3', 15, 1, 'Authentication Token', '[]', 0, '2021-12-08 05:09:05', '2021-12-08 05:09:05', '2022-12-08 12:09:05'),
('c41c404efd53ed5f053f3ffe7d2176fd348652a33816204795ddcea374f58cd8dcfe70488d7d90c2', 1, 1, 'Authentication Token', '[]', 0, '2021-12-07 05:43:02', '2021-12-07 05:43:02', '2022-12-07 12:43:02'),
('d1699d08eeb551895e8cce911ab829549a4982d54bdbf27f458c81bd3fa6d0bf1d5795cbf97e5e9f', 13, 1, 'Authentication Token', '[]', 0, '2021-12-07 13:26:00', '2021-12-07 13:26:00', '2022-12-07 20:26:00'),
('ede49590a5c5c215676bfd9ef8ccd5ef6fc4cae5c97a8f8be76b85a51f22731a3dc9c2ff1fe8f273', 12, 1, 'Authentication Token', '[]', 0, '2021-12-07 12:18:59', '2021-12-07 12:18:59', '2022-12-07 19:18:59'),
('f77825c5f41157fa88e7e3ee06b8a3f18a2a6dc65d3a3cde48ecb3bed3fbfadd8607660a2b3900d3', 13, 1, 'Authentication Token', '[]', 0, '2021-12-08 02:55:01', '2021-12-08 02:55:01', '2022-12-08 09:55:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'OurTrip Personal Access Client', 'AuC9y4O2l2k6DHbwWHRI6ZySb4AS2puVW9D4qkzt', NULL, 'http://localhost', 1, 0, 0, '2021-12-07 04:58:52', '2021-12-07 04:58:52'),
(2, NULL, 'OurTrip Password Grant Client', 'aXsGHxuyw0DHJvf3OEspwcn5iEWTJ0xn9ihvxtR3', 'users', 'http://localhost', 0, 1, 0, '2021-12-07 04:58:52', '2021-12-07 04:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-07 04:58:52', '2021-12-07 04:58:52');

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
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idUser` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `idUser`, `rating`, `description`, `created_at`, `updated_at`) VALUES
(3, 2, 5, 'Mantap bossque', '2021-12-07 10:06:22', '2021-12-07 10:06:22'),
(4, 4, 5, NULL, '2021-12-07 10:38:24', '2021-12-07 10:38:24');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idUser` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `idUser`, `date`, `name`, `location`, `created_at`, `updated_at`) VALUES
(1, 2, '2021-12-10', 'Yohan', 'Candi Borobudur, Magelang', '2021-12-07 10:05:36', '2021-12-07 10:05:44'),
(3, 4, '2021-12-24', 'Martin', 'Candi Borobudur, Magelang', '2021-12-07 10:38:13', '2021-12-07 10:38:13'),
(5, 12, '2021-12-24', 'evan', 'Candi Borobudur, Magelang', '2021-12-07 14:39:21', '2021-12-07 14:39:21'),
(6, 2, '2021-12-17', 'Yohan', 'Snorkling+Diving Nusa Dua', '2021-12-08 03:09:46', '2021-12-08 03:09:46'),
(8, 15, '2021-12-16', '1', 'Candi Borobudur', '2021-12-08 05:05:34', '2021-12-08 05:05:34'),
(10, 15, '2021-12-12', '3', 'Snorkling+Diving Nusa Dua', '2021-12-08 05:05:43', '2021-12-08 05:05:43');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@ourtrip.xyz', '2021-12-07 05:41:06', '$2b$10$USDHSIDcAN0.bANNblrMFeZbe/a9NwepLit47sudM3JTWahHd.Aha', NULL, NULL, NULL),
(2, 'Yohan Hadi', 'yoo.hadi11@gmail.com', '2021-12-07 09:51:34', '$2y$10$9d307Sz3pkrY4tSATieqG.TW0vP9vRLDvoiScIDlGlvruokUbYDHe', NULL, '2021-12-07 09:49:59', '2021-12-08 03:10:06'),
(4, 'Martin', 'youhanmartin123@gmail.com', '2021-12-07 10:37:45', '$2y$10$u.l9IJGWP672U.d.TrsTCO/T0PznAk1f.0qxbexi6.0zHBThB9rVe', NULL, '2021-12-07 10:36:08', '2021-12-07 10:37:45'),
(5, 'Yohan Hadi Wijaya', 'valoskuy@gmail.com', NULL, '$2y$10$G1w87FpDsOyCqJaKgZlpB./35aYyFTyGAs04ZBOdmC3ENjTVjz56e', NULL, '2021-12-07 10:36:18', '2021-12-07 10:36:18'),
(6, 'Makan McD', 'juanitobisangomongR@gmail.com', NULL, '$2y$10$VkYO1A54Fzd9eiQBYtB9Pe3WV8k4b/LAqUfZXM.4ofFSYW4QRMWCy', NULL, '2021-12-07 10:37:04', '2021-12-07 10:37:04'),
(7, 'Boy', 'Advanterserver1234@gmail.com', NULL, '$2y$10$4tU.UUE8.8wkq0EHOmALM.LXOixdM8muf8vVXiKDxjEqgISDfYgsC', NULL, '2021-12-07 10:38:46', '2021-12-07 10:38:46'),
(8, 'perton', 'franslaurentsius@gmail.com', NULL, '$2y$10$HYZRL/xOp92tIhISM7eroe7uuZOzhfLxKNl5zJsWw2s1sQHuhaDHy', NULL, '2021-12-07 10:40:05', '2021-12-07 10:40:05'),
(9, 'sembiring', 'laurentsiusfransesco@gmail.com', NULL, '$2y$10$.8QwDxrT/am.1d7ebs8R7udubJtSpttsBM2GyWfixdGSuv2uMxaqW', NULL, '2021-12-07 10:41:36', '2021-12-07 10:41:36'),
(10, 'Yono', 'noval.hijrahkhadavi@gmail.com', NULL, '$2y$10$5Acxqy.4pZIfGABmleLJJuRKZ4hAKWevwq.GschoOSgROKJQDYQDa', NULL, '2021-12-07 10:43:51', '2021-12-07 10:43:51'),
(11, 'Boy Perton Sembiring', 'boysembiring2001@gmail.com', NULL, '$2y$10$sB4gwVywTLx/vdE2bUt11.yMYH6kVbsGKgj3JzJnKLBquVffvDrkO', NULL, '2021-12-07 10:44:21', '2021-12-07 10:44:21'),
(12, 'evan', 'stevanuskristianto140801@gmail.com', '2021-12-07 12:18:42', '$2y$10$fWHwnlZ.QBKl8oE1ZblP/e6T2bMm1dVfDD7oq5842iIjIoy7GAlpK', NULL, '2021-12-07 12:18:13', '2021-12-07 12:18:42'),
(13, 'Boy Perton Sembiring', 'boyferton07@gmail.com', '2021-12-07 13:25:48', '$2y$10$qcaiLBYHnTf300VWbJtlweTzO78YF/XfmXS0wF6PR6TrSaAqjUZF2', NULL, '2021-12-07 13:23:31', '2021-12-07 13:25:48'),
(14, 'test', 'redipermana295@gmail.com', NULL, '$2y$10$3ot3k.pgozJz4mtrCvJqDeWJpZaB/I1kxXfNyQb1r8QjFKeJW9b92', NULL, '2021-12-08 02:57:01', '2021-12-08 02:57:01'),
(15, 'Yohan Hadi', 'yohanhw.2001@gmail.com', '2021-12-08 05:03:57', '$2y$10$I2Lqy2lnUtsEWAOJxVO62e0ki7nJEHINz78omfvqUxN7dsEYYFnWW', NULL, '2021-12-08 05:02:11', '2021-12-08 05:04:20'),
(16, 'valoo ga yohh?', 'valolah@valorant.com', NULL, '$2y$10$GhH5GbnXRNT0TXaUCgc.ZOFsPLPWsdFRS4JsUOzrdw5eOXQftHMsC', NULL, '2021-12-08 12:01:57', '2021-12-08 12:01:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_iduser_foreign` (`idUser`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_iduser_foreign` (`idUser`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
