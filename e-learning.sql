-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2022 at 02:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_25_124353_create_posts_table', 1),
(6, '2022_06_25_180033_create_kategoris_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `kategori_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aritmatika', 'aritmatika', 'Aritmetika (kadang salah dieja sebagai aritmatika,', 'Aritmetika (kadang salah dieja sebagai aritmatika, berasal dari bahasa Yunani αριθμός - arithmos = angka) atau dulu disebut ilmu hitung merupakan cabang (atau pendahulu) matematika yang mempelajari operasi dasar bilangan. Oleh orang awam, kata \"aritmetika\" sering dianggap sebagai sinonim dari teori bilangan. Silakan lihat angka untuk mengetahui lebih dalam tentang teori bilangan.', NULL, NULL, NULL),
(3, 2, 'Simbiosis', 'simbiosis', 'Simbiosis adalah semua jenis interaksi biologis jangka', 'Simbiosis adalah semua jenis interaksi biologis jangka panjang dan dekat antara dua organisme biologis yang berbeda, baik itu mutualisme, komensalisme, atau parasitisme. Organisme yang terlibat tersebut, masing-masing disebut simbion, bisa berasal dari spesies yang sama atau berbeda', NULL, NULL, NULL),
(5, 3, 'Teks Prosedur', 'teks-prosedur', 'Teks Prosedur adalah sebuah teks yang berisi langkah atau tahapan untuk melakukan suatu hal.', 'Teks Proosedur adalah sebuah teks yang berisi langkah atau tahapan untuk melakukan suatu hal. Teks prosedur menjelaskan cara membuat atau mengerjakan sesuatu dengan langkah-langkah atau cara-cara tertentu yang ditulis secara terstruktur dan sistematis.', NULL, NULL, NULL),
(7, 3, 'Teks Eksplanasi', 'teks-eksplanasi', 'Teks eksplanasi adalah teks yang berisi tentang proses', 'Teks eksplanasi adalah teks yang berisi tentang proses ‘mengapa’ dan ‘bagaimana’ kejadian-kejadian alam, sosial, ilmu pengetahuan, budaya, dan lainnya dapat terjadi.', NULL, NULL, NULL),
(8, 3, 'Teks Eksposisi', 'teks-eksposisi', 'Teks eksposisi sebenarnya adalah jenis teks nonfiksi yang berisi tentang penjelasan dari suatu informasi atau pengetahuan', 'Teks eksposisi sebenarnya adalah jenis teks nonfiksi yang berisi tentang penjelasan dari suatu informasi atau pengetahuan. Teks eksposisi sendiri ditulis berdasarkan data yang diperoleh berdasarkan fakta yang benar-benar terjadi. Selain itu, teks ini menyajikan informasi dengan padat, jelas, singkat, dan tentunya akurat. Informasi yang disajikan juga harus sesuai dengan 5W + 1H atau lebih dikenal ADIK SIMBA, mulai dari apa, siapa, kapan, di mana, mengapa, hingga bagaimana.', NULL, NULL, NULL),
(9, 3, 'Teks Argumentasi', 'teks-argumentasi', 'Teks argumentasi adalah teks berisi paragraf dan memiliki tujuan untuk meyakinkan atau', 'Teks argumentasi adalah teks berisi paragraf dan memiliki tujuan untuk meyakinkan atau membujuk para pembaca agar memiliki pemikiran yang sama dengan penulis. Ide pokok dari tulisan ini adalah pendapat, ide hingga gagasan dari penulis lalu diperluas dengan menggunakan pendapat yang dilengkapi fakta aktual.', NULL, NULL, NULL),
(10, 2, 'Metabolisme', 'metabolisme', 'Metabolisme adalah proses pengolahan zat gizi dari makanan yang telah diserap', 'Metabolisme adalah proses pengolahan zat gizi dari makanan yang telah diserap oleh tubuh untuk diubah menjadi energi.', NULL, NULL, NULL),
(11, 2, 'Bioteknologi', 'bioteknologi', 'Bioteknologi  itu berasal dari kata bio yang artinya makhluk hidup, dan teknologi, ya.', 'Bioteknologi  itu berasal dari kata bio yang artinya makhluk hidup, dan teknologi, ya. Jadi, pengertian bioteknologi adalah pemanfaatan makhluk hidup secara utuh maupun bagian-bagiannya untuk menghasilkan atau memodifikasi produk yang bermanfaat melalui cara prinsip atau teknologi tertentu.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Satrio Adi N', 'Satrio', 'satrio.adi1021@gmail.com', NULL, '$2y$10$sShDxiyzLnVM5cX5NxRem.NpkxlrXSYULLeORErXHHUgeJJxgA4ma', NULL, '2022-06-25 17:21:03', '2022-06-25 17:21:03'),
(3, 'Arkan Adicahya', 'Arkan', 'arkanadicahya@gmail.com', NULL, '$2y$10$p/lEy7U8tSuGa18IvwQkMep5/6yJQDBaW.SzOivcSH6qb/5QvPHwK', NULL, '2022-06-25 17:35:32', '2022-06-25 17:35:32');

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
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategoris_name_unique` (`name`),
  ADD UNIQUE KEY `kategoris_slug_unique` (`slug`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
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
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
