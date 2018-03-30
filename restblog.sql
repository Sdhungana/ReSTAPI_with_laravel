-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2018 at 04:40 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Maxime consequuntur aut vero qui est.', 'Magni dolor impedit dolores atque dolor. Qui maxime aliquam sit rerum explicabo dolor. Quisquam quaerat qui iusto inventore.', '2018-03-20 04:44:50', '2018-03-20 04:44:50'),
(2, 'In voluptatem distinctio unde magnam sequi.', 'Aliquid soluta quasi accusamus quas esse rem in. Possimus ut excepturi consequatur. Impedit doloremque quo sed quos saepe hic repellendus. Dolorem eum saepe ad libero voluptas.', '2018-03-20 04:44:50', '2018-03-20 04:44:50'),
(3, 'Updated Title', 'Updated Body', '2018-03-20 04:44:50', '2018-03-20 08:22:02'),
(5, 'Vel modi at illo eos sequi.', 'Incidunt commodi corporis repudiandae. Non neque saepe unde et. Amet libero error nam modi molestiae id. Porro voluptatem quisquam minima.', '2018-03-20 04:44:50', '2018-03-20 04:44:50'),
(6, 'Quo tempore nisi deleniti vel provident.', 'Sunt expedita mollitia assumenda eaque aut accusamus. Veritatis rem veritatis iusto sequi id.', '2018-03-20 04:44:50', '2018-03-20 04:44:50'),
(7, 'Modi molestiae doloremque esse.', 'Qui aspernatur quia saepe ipsum vel non qui. Repellat sit rerum voluptatem rerum aut pariatur. Delectus soluta officia sit non rerum quia maxime.', '2018-03-20 04:44:50', '2018-03-20 04:44:50'),
(8, 'Odio velit aut dolores ut sit nesciunt non.', 'Ratione quas accusantium itaque nobis. Rerum nostrum beatae aut voluptas. Cum numquam facere est natus voluptate porro architecto id.', '2018-03-20 04:44:50', '2018-03-20 04:44:50'),
(9, 'Quam rerum nulla consequatur.', 'Molestiae et qui assumenda aperiam. Et aliquam mollitia reiciendis minus et nostrum. Iure qui qui adipisci qui quis reiciendis exercitationem eos. Quo autem reprehenderit aut sunt dignissimos eum.', '2018-03-20 04:44:50', '2018-03-20 04:44:50');

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
(3, '2018_03_20_101042_create_articles_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sulab Dhungana', 'sulab@gmail.com', '$2y$10$l9EZWIzG0leqJy1qwjCLR.NnUod/m6cfZIZ0I54lBFptuONWMzrd6', 'uBgkrCiX3nXSVtHnNbkjPRm4au7QAAJJ1savsOdGrxlw3upupBbIccopUf6C', '2018-03-25 23:11:00', '2018-03-25 23:11:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
