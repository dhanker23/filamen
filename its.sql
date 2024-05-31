-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 15, 2024 at 01:18 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `its`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Obat-Obatan', '2024-02-23 02:20:59', '2024-02-23 02:21:25'),
(2, 'Alat Kabersihan', '2024-02-29 02:44:23', '2024-02-29 02:44:23'),
(3, 'Kebutuhan Pantry', '2024-02-29 02:44:57', '2024-02-29 02:44:57'),
(4, 'Peralatan Pantry', '2024-02-29 02:45:08', '2024-02-29 02:45:08'),
(5, 'Alat Tulis Kantor', '2024-02-29 02:45:46', '2024-03-04 20:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `lokasis`
--

CREATE TABLE `lokasis` (
  `id` bigint UNSIGNED NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasis`
--

INSERT INTO `lokasis` (`id`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, 'Bawah Tangga', '2024-02-23 02:25:10', '2024-02-23 02:25:10'),
(2, 'LK.73', '2024-02-23 02:25:45', '2024-02-23 02:25:45'),
(3, 'LK.74', '2024-02-23 02:25:56', '2024-02-23 02:25:56'),
(4, 'LK.75', '2024-02-29 02:46:16', '2024-02-29 02:46:16'),
(5, 'LK.76', '2024-02-29 02:46:28', '2024-02-29 02:46:28'),
(6, 'LK.77', '2024-02-29 02:46:37', '2024-02-29 02:46:37'),
(7, 'LK.78', '2024-02-29 02:46:45', '2024-02-29 02:46:45'),
(8, 'LK.79', '2024-02-29 02:46:51', '2024-02-29 02:46:51'),
(9, 'LM.C20', '2024-02-29 18:52:14', '2024-02-29 18:52:14');

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
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2024_02_23_070140_create_kategoris_table', 1),
(16, '2024_02_23_070157_create_lokasis_table', 1),
(17, '2024_02_23_070230_create_satuans_table', 1),
(18, '2024_02_23_070301_create_products_table', 1),
(19, '2024_02_23_081130_create_stok_ins_table', 1),
(20, '2024_02_23_081141_create_stok_outs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `satuan_id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `lokasi_id` bigint UNSIGNED NOT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `qty`, `satuan_id`, `kategori_id`, `lokasi_id`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Sensi Nurse Caps (Kepala)', 6, 2, 1, 1, NULL, '2024-02-29 02:20:04', '2024-03-12 01:24:35'),
(2, 'Sensi Disposable (Kaki)', 12, 2, 1, 1, NULL, '2024-02-29 02:28:20', '2024-03-04 21:06:32'),
(3, 'Gula Pasir', 2, 1, 3, 9, NULL, '2024-02-29 18:53:10', '2024-03-01 02:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `satuans`
--

CREATE TABLE `satuans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satuans`
--

INSERT INTO `satuans` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kg', '2024-02-28 17:48:15', '2024-02-28 17:48:15'),
(2, 'Pcs', '2024-02-28 17:48:32', '2024-02-28 17:48:32'),
(3, 'Roll', '2024-02-28 17:48:41', '2024-02-28 17:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `stok_ins`
--

CREATE TABLE `stok_ins` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stok_ins`
--

INSERT INTO `stok_ins` (`id`, `date`, `product_id`, `qty`, `description`, `created_at`, `updated_at`) VALUES
(8, '2024-03-12', 2, 1, NULL, '2024-03-12 01:25:45', '2024-03-13 17:42:52'),
(9, '2024-03-12', 3, 2, NULL, '2024-03-12 01:37:59', '2024-03-12 01:37:59'),
(10, '2024-03-14', 2, 2, NULL, '2024-03-13 17:51:22', '2024-03-13 17:51:22'),
(11, '2024-03-12', 1, 5, NULL, '2024-03-13 18:01:09', '2024-03-13 18:01:09');

--
-- Triggers `stok_ins`
--
DELIMITER $$
CREATE TRIGGER `update_product_stock_after_delete_in` AFTER DELETE ON `stok_ins` FOR EACH ROW BEGIN
    DECLARE product_qty INT;
    
    SELECT qty INTO product_qty FROM products WHERE id = OLD.product_id;

    UPDATE products
    SET qty = qty - OLD.qty
    WHERE id = OLD.product_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_product_stock_after_insert_in` AFTER INSERT ON `stok_ins` FOR EACH ROW BEGIN
    DECLARE product_qty INT;
    
    SELECT qty INTO product_qty FROM products WHERE id = NEW.product_id;

    UPDATE products
    SET qty = qty + NEW.qty
    WHERE id = NEW.product_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `stok_outs`
--

CREATE TABLE `stok_outs` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stok_outs`
--

INSERT INTO `stok_outs` (`id`, `date`, `product_id`, `qty`, `description`, `created_at`, `updated_at`) VALUES
(4, '2024-03-12', 3, 5, NULL, '2024-03-11 20:14:38', '2024-03-11 20:14:38');

--
-- Triggers `stok_outs`
--
DELIMITER $$
CREATE TRIGGER `update_product_stock_after_delete` AFTER DELETE ON `stok_outs` FOR EACH ROW BEGIN
    DECLARE product_qty INT;
    
    SELECT qty INTO product_qty FROM products WHERE id = OLD.product_id;

    UPDATE products
    SET qty = qty + OLD.qty
    WHERE id = OLD.product_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_product_stock_after_insert` AFTER INSERT ON `stok_outs` FOR EACH ROW BEGIN
    DECLARE product_qty INT;
    
    SELECT qty INTO product_qty FROM products WHERE id = NEW.product_id;

    UPDATE products
    SET qty = qty - NEW.qty
    WHERE id = NEW.product_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$0h0FKUxCLRzPkA/q4/ddpeszOTc97damKj7ZjoIwbtWgCfdm9uuR6', NULL, '2024-02-23 01:58:27', '2024-02-23 01:58:27'),
(2, 'user', 'user@gmail.com', NULL, '$2y$12$eq9C1mjL.HJlG7xREF0iCOfCepwy1yMUIvd0cUrPnas1XQ25vijju', NULL, '2024-02-23 02:15:28', '2024-02-23 02:15:28');

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_satuan_id_foreign` (`satuan_id`),
  ADD KEY `products_kategori_id_foreign` (`kategori_id`),
  ADD KEY `products_lokasi_id_foreign` (`lokasi_id`);

--
-- Indexes for table `satuans`
--
ALTER TABLE `satuans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stok_ins`
--
ALTER TABLE `stok_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stok_ins_product_id_foreign` (`product_id`);

--
-- Indexes for table `stok_outs`
--
ALTER TABLE `stok_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stok_outs_product_id_foreign` (`product_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lokasis`
--
ALTER TABLE `lokasis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `satuans`
--
ALTER TABLE `satuans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stok_ins`
--
ALTER TABLE `stok_ins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stok_outs`
--
ALTER TABLE `stok_outs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_lokasi_id_foreign` FOREIGN KEY (`lokasi_id`) REFERENCES `lokasis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_satuan_id_foreign` FOREIGN KEY (`satuan_id`) REFERENCES `satuans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stok_ins`
--
ALTER TABLE `stok_ins`
  ADD CONSTRAINT `stok_ins_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stok_outs`
--
ALTER TABLE `stok_outs`
  ADD CONSTRAINT `stok_outs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
