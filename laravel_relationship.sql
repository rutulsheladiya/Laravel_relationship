-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2023 at 07:33 PM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_relationship`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Rutul Sheladiya', '2023-07-04 09:35:54', '2023-07-04 09:35:54'),
(2, 'Ravi Patel', '2023-07-04 09:36:03', '2023-07-04 09:36:03');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` bigint UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `Name`, `email`, `created_at`, `updated_at`) VALUES
(9, 'Rutul Sheladiya', 'rutulsheladiya2@gmail.com', '2023-06-29 07:47:04', '2023-06-29 07:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `photo_id`, `created_at`, `updated_at`) VALUES
(1, 'Rutul Post 1 First Comment', 1, '2023-07-04 09:39:39', '2023-07-04 09:39:39'),
(2, 'Rutul Post 1 second Comment', 1, '2023-07-04 09:39:57', '2023-07-04 09:39:57'),
(3, 'Rutul Post 1 third Comment', 1, '2023-07-04 09:40:17', '2023-07-04 09:40:17'),
(4, 'Rutul Post 3 First Comment', 3, '2023-07-04 09:40:44', '2023-07-04 09:40:44'),
(5, 'Rutul Post 3 second Comment', 3, '2023-07-04 09:41:01', '2023-07-04 09:41:01'),
(6, 'Ravi Post 2 First Comment', 6, '2023-07-04 09:41:34', '2023-07-04 09:41:34'),
(7, 'Ravi Post 2 Second Comment', 6, '2023-07-04 09:42:00', '2023-07-04 09:42:00'),
(8, 'Ravi Post 3 First Comment', 7, '2023-07-04 09:42:25', '2023-07-04 09:42:25'),
(9, 'Ravi Post 3 Second Comment', 7, '2023-07-04 09:42:48', '2023-07-04 09:42:48'),
(10, 'Ravi Post 3 third Comment', 7, '2023-07-04 09:43:01', '2023-07-04 09:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Rutul', 'Rutul@gmail.com', '2023-06-29 04:40:20', '2023-06-29 04:40:20'),
(2, 'Dhenish', 'dhenish@gmail.com', '2023-06-29 04:42:46', '2023-06-29 04:42:46'),
(3, 'Dhulo', 'Dhulo@gmail.com', '2023-06-29 04:43:27', '2023-06-29 04:43:27'),
(4, 'Dhulo', 'Dhulo@gmail.com', '2023-06-29 04:53:09', '2023-06-29 04:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `image1t1ps`
--

CREATE TABLE `image1t1ps` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image1t1ps`
--

INSERT INTO `image1t1ps` (`id`, `name`, `imageable_type`, `imageable_id`, `created_at`, `updated_at`) VALUES
(1, 'Image Of User 2', 'App\\Models\\User1t1p', 2, '2023-07-05 11:34:11', '2023-07-05 11:34:11'),
(2, 'Image Of User 1', 'App\\Models\\User1t1p', 1, '2023-07-05 11:35:45', '2023-07-05 11:35:45'),
(3, 'Image of post 101 PHP.', 'App\\Models\\Post1t1p', 101, '2023-07-19 11:37:18', '2023-07-19 11:37:18'),
(4, 'Image of post 103 Node.Js.', 'App\\Models\\Post1t1p', 103, '2023-07-23 11:38:21', '2023-07-23 11:38:21'),
(5, 'Image of post 102 React.Js.', 'App\\Models\\Post1t1p', 102, '2023-07-05 11:39:17', '2023-07-05 11:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2023_06_29_082520_create_customers_table', 1),
(9, '2023_06_29_082731_create_mobiles_table', 1),
(10, '2023_06_29_125309_create_authors_table', 2),
(11, '2023_06_29_125317_create_posts_table', 2),
(14, '2023_07_04_054845_create_suppliers_table', 3),
(15, '2023_07_04_055044_create_products_table', 3),
(16, '2023_07_04_055645_create_orders_table', 4),
(17, '2023_07_04_092705_create_admins_table', 5),
(18, '2023_07_04_092929_create_photos_table', 6),
(19, '2023_07_04_093319_create_comments_table', 7),
(20, '2023_07_04_121652_create_stories_table', 8),
(21, '2023_07_04_121746_create_tags_table', 9),
(22, '2023_07_04_121944_create_story_tags_table', 10),
(23, '2023_07_05_055411_create_songs_table', 11),
(24, '2023_07_05_055602_create_songs_table', 12),
(25, '2023_07_05_055758_create_singers_table', 13),
(26, '2023_07_05_055856_create_singer_songs_table', 14),
(27, '2023_07_05_112708_create_user1t1ps_table', 15),
(28, '2023_07_05_112844_create_post1t1ps_table', 16),
(30, '2023_07_05_112923_create_image1t1ps_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `mobiles`
--

CREATE TABLE `mobiles` (
  `id` bigint UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobiles`
--

INSERT INTO `mobiles` (`id`, `model`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'LG100', 1, '2023-06-29 04:40:20', '2023-06-29 04:40:20'),
(2, 'LG151', 2, '2023-06-29 04:42:46', '2023-06-29 04:42:46'),
(3, 'SamsungG51', 3, '2023-06-29 04:43:27', '2023-06-29 04:43:27'),
(4, 'SamsungG51', 4, '2023-06-29 04:53:09', '2023-06-29 04:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_id` bigint UNSIGNED NOT NULL,
  `order_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `order_name`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Order 2', 2, '2023-07-04 06:10:09', '2023-07-04 06:10:09'),
(2, 'Order 1', 1, '2023-07-04 06:10:20', '2023-07-04 06:10:20'),
(4, 'Order 4', 4, '2023-07-04 06:10:30', '2023-07-04 06:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `name`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Rutul Post 1', 1, '2023-07-04 09:36:56', '2023-07-04 09:36:56'),
(2, 'Rutul Post 2', 1, '2023-07-04 09:37:12', '2023-07-04 09:37:12'),
(3, 'Rutul Post 3', 1, '2023-07-04 09:37:26', '2023-07-04 09:37:26'),
(4, 'Rutul Post 4', 1, '2023-07-04 09:37:33', '2023-07-04 09:37:33'),
(5, 'Ravi Post 1', 2, '2023-07-04 09:37:52', '2023-07-04 09:37:52'),
(6, 'Ravi Post 2', 2, '2023-07-04 09:38:13', '2023-07-04 09:38:13'),
(7, 'Ravi Post 3', 2, '2023-07-04 09:38:30', '2023-07-04 09:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `post1t1ps`
--

CREATE TABLE `post1t1ps` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post1t1ps`
--

INSERT INTO `post1t1ps` (`id`, `name`, `created_at`, `updated_at`) VALUES
(101, 'PHP Is Easy Language.', '2023-07-05 11:31:46', '2023-07-05 11:31:46'),
(102, 'React.Js is library of JS.', '2023-07-05 11:31:46', '2023-07-05 11:31:46'),
(103, 'Node.js is use for backend', '2023-07-05 11:31:46', '2023-07-05 11:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `content`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 'PHP/Laravel', 'PHP is easy Language', 9, '2023-06-29 07:47:04', '2023-06-29 07:47:04'),
(2, 'React.js', 'React is on trending', 9, NULL, NULL),
(3, 'Vue.js', 'Vue is on trending', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `product_name`, `supplier_id`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 1002, '2023-07-04 06:07:29', '2023-07-04 06:07:29'),
(2, 'Product 2', 1005, '2023-07-04 06:07:37', '2023-07-04 06:07:37'),
(3, 'Product 3', 1007, '2023-07-04 06:07:45', '2023-07-04 06:07:45'),
(4, 'Product 4', 1001, '2023-07-04 06:07:54', '2023-07-04 06:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `singers`
--

CREATE TABLE `singers` (
  `id` bigint UNSIGNED NOT NULL,
  `singer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `singers`
--

INSERT INTO `singers` (`id`, `singer_name`, `created_at`, `updated_at`) VALUES
(3, 'Rutul Sheladuya', '2023-07-05 00:58:04', '2023-07-05 00:58:04'),
(4, 'Dhenish', '2023-07-05 00:58:31', '2023-07-05 00:58:31'),
(5, 'Mayur Patel', '2023-07-05 00:58:53', '2023-07-05 00:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `singer_songs`
--

CREATE TABLE `singer_songs` (
  `id` bigint UNSIGNED NOT NULL,
  `song_id` bigint UNSIGNED NOT NULL,
  `singer_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `singer_songs`
--

INSERT INTO `singer_songs` (`id`, `song_id`, `singer_id`, `created_at`, `updated_at`) VALUES
(3, 1, 3, '2023-07-05 00:58:04', '2023-07-05 00:58:04'),
(4, 2, 3, '2023-07-05 00:58:04', '2023-07-05 00:58:04'),
(5, 2, 4, '2023-07-05 00:58:31', '2023-07-05 00:58:31'),
(6, 3, 4, '2023-07-05 00:58:31', '2023-07-05 00:58:31'),
(7, 4, 4, '2023-07-05 00:58:31', '2023-07-05 00:58:31'),
(8, 1, 5, '2023-07-05 00:58:53', '2023-07-05 00:58:53'),
(9, 4, 5, '2023-07-05 00:58:53', '2023-07-05 00:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` bigint UNSIGNED NOT NULL,
  `song_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `song_name`, `created_at`, `updated_at`) VALUES
(1, 'Song 1', '2023-07-05 00:37:33', '2023-07-05 00:37:33'),
(2, 'Song 2', '2023-07-05 00:37:52', '2023-07-05 00:37:52'),
(3, 'Song 3', '2023-07-05 00:38:00', '2023-07-05 00:38:00'),
(4, 'Song 4', '2023-07-05 00:38:16', '2023-07-05 00:38:16'),
(5, 'Song 5', '2023-07-05 00:38:25', '2023-07-05 00:38:25'),
(7, 'Song 5', '2023-07-05 00:50:35', '2023-07-05 00:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(9, 'Ravi', NULL, NULL),
(10, 'Dhulo', NULL, NULL),
(11, 'Rutul', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `story_tags`
--

CREATE TABLE `story_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `storie_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `story_tags`
--

INSERT INTO `story_tags` (`id`, `storie_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(10, 11, 2, '2023-07-04 13:08:55', '2023-07-04 13:08:55'),
(11, 11, 3, '2023-07-04 13:08:55', '2023-07-04 13:08:55'),
(12, 11, 1, '2023-07-04 13:08:55', '2023-07-04 13:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `s_id` bigint UNSIGNED NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`s_id`, `supplier_name`, `created_at`, `updated_at`) VALUES
(1001, 'Rutul Sheladiya', '2023-07-04 06:05:02', '2023-07-04 06:05:02'),
(1002, 'Ravi Mandani', '2023-07-04 06:05:17', '2023-07-04 06:05:17'),
(1003, 'Purvish Dhameliya', '2023-07-04 06:05:32', '2023-07-04 06:05:32'),
(1004, 'Sumit Rajput', '2023-07-04 06:05:40', '2023-07-04 06:05:40'),
(1005, 'Mayank Patel', '2023-07-04 06:05:47', '2023-07-04 06:05:47'),
(1006, 'Rahul Shah', '2023-07-04 06:05:57', '2023-07-04 06:05:57'),
(1007, 'Neel Patel', '2023-07-04 06:06:05', '2023-07-04 06:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'food', NULL, NULL),
(2, 'travel', NULL, NULL),
(3, 'new_post', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user1t1ps`
--

CREATE TABLE `user1t1ps` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user1t1ps`
--

INSERT INTO `user1t1ps` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Rutul', '2023-07-05 11:31:07', '2023-07-05 11:31:07'),
(2, 'Mihir', '2023-07-05 11:31:07', '2023-07-05 11:31:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_photo_id_foreign` (`photo_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image1t1ps`
--
ALTER TABLE `image1t1ps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image1t1ps_imageable_type_imageable_id_index` (`imageable_type`,`imageable_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobiles`
--
ALTER TABLE `mobiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobiles_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `post1t1ps`
--
ALTER TABLE `post1t1ps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `singers`
--
ALTER TABLE `singers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `singer_songs`
--
ALTER TABLE `singer_songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `singer_songs_song_id_foreign` (`song_id`),
  ADD KEY `singer_songs_singer_id_foreign` (`singer_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `story_tags`
--
ALTER TABLE `story_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_tags_storie_id_foreign` (`storie_id`),
  ADD KEY `story_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user1t1ps`
--
ALTER TABLE `user1t1ps`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `image1t1ps`
--
ALTER TABLE `image1t1ps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mobiles`
--
ALTER TABLE `mobiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post1t1ps`
--
ALTER TABLE `post1t1ps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `singers`
--
ALTER TABLE `singers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `singer_songs`
--
ALTER TABLE `singer_songs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `story_tags`
--
ALTER TABLE `story_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `s_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user1t1ps`
--
ALTER TABLE `user1t1ps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`);

--
-- Constraints for table `mobiles`
--
ALTER TABLE `mobiles`
  ADD CONSTRAINT `mobiles_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`p_id`);

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`s_id`);

--
-- Constraints for table `singer_songs`
--
ALTER TABLE `singer_songs`
  ADD CONSTRAINT `singer_songs_singer_id_foreign` FOREIGN KEY (`singer_id`) REFERENCES `singers` (`id`),
  ADD CONSTRAINT `singer_songs_song_id_foreign` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`);

--
-- Constraints for table `story_tags`
--
ALTER TABLE `story_tags`
  ADD CONSTRAINT `story_tags_storie_id_foreign` FOREIGN KEY (`storie_id`) REFERENCES `stories` (`id`),
  ADD CONSTRAINT `story_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
