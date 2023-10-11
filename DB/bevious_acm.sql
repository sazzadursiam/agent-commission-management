-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 11, 2023 at 11:14 PM
-- Server version: 5.7.43
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bevious_acm`
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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_bases`
--

CREATE TABLE `knowledge_bases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moq` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0:Inactive, 1:Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `title`, `name`, `moq`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Level 1', 'Silver', 11, 1, '2023-10-09 05:52:25', '2023-10-11 07:00:21'),
(2, 'Level 2', 'B', 5, 1, '2023-10-09 06:02:23', '2023-10-11 06:59:52');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_01_133105_create_knowledge_bases_table', 1),
(7, '2023_10_09_111733_create_levels_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'agent', 'web', '2023-10-11 06:59:47', '2023-10-11 06:59:47'),
(2, 'product', 'web', '2023-10-11 06:59:47', '2023-10-11 06:59:47'),
(3, 'knowledgebase', 'web', '2023-10-11 06:59:47', '2023-10-11 06:59:47'),
(4, 'warehouse-order', 'web', '2023-10-11 06:59:47', '2023-10-11 06:59:47'),
(5, 'order', 'web', '2023-10-11 06:59:47', '2023-10-11 06:59:47'),
(6, 'withdraw-request', 'web', '2023-10-11 06:59:47', '2023-10-11 06:59:47'),
(7, 'level', 'web', '2023-10-11 06:59:47', '2023-10-11 06:59:47'),
(8, 'role', 'web', '2023-10-11 06:59:47', '2023-10-11 06:59:47'),
(9, 'staff', 'web', '2023-10-11 06:59:47', '2023-10-11 06:59:47');

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'acmfc03hfgufwevcxy3523jjhvcx', 'd71abf38228b997a0386eb7f78d263193f517044d9d44b82c711f894d7c69b0f', '[\"*\"]', NULL, '2023-10-07 02:38:02', '2023-10-07 02:38:02'),
(2, 'App\\Models\\User', 4, 'acmfc03etuyndvsgtr7635sdfhfds', '8970fc3cbebc4d95dd11b68bc9516c32b6e7da8ed865632cee259cc6d31df391', '[\"*\"]', NULL, '2023-10-07 07:08:47', '2023-10-07 07:08:47'),
(3, 'App\\Models\\User', 4, 'acmfc03etuyndvsgtr7635sdfhfds', '724fccab8927cca100b22a6adc05b900dd57c9d2921fb26e3183e390d02a2763', '[\"*\"]', NULL, '2023-10-10 19:56:59', '2023-10-10 19:56:59'),
(4, 'App\\Models\\User', 4, 'acmfc03etuyndvsgtr7635sdfhfds', '3708d401045674370c734ac6af52ca0a6c5f333e119e47d64957ffeaadea78b3', '[\"*\"]', NULL, '2023-10-10 23:02:56', '2023-10-10 23:02:56'),
(5, 'App\\Models\\User', 4, 'acmfc03etuyndvsgtr7635sdfhfds', '14dbcb89975eb6ae0195b1c628cb946586c0515091ac2afea25bba3fc81ae3f6', '[\"*\"]', NULL, '2023-10-10 23:59:03', '2023-10-10 23:59:03'),
(6, 'App\\Models\\User', 4, 'acmfc03etuyndvsgtr7635sdfhfds', '38d3ac6d992dde7fefda7584fd37168806734785e10f1223ff6684f27452e856', '[\"*\"]', NULL, '2023-10-11 00:02:43', '2023-10-11 00:02:43'),
(7, 'App\\Models\\User', 4, 'acmfc03etuyndvsgtr7635sdfhfds', '243d918386f867c01cf820bf68563dc10a1062b96064a13f18ed905074883a99', '[\"*\"]', NULL, '2023-10-11 00:16:27', '2023-10-11 00:16:27'),
(8, 'App\\Models\\User', 4, 'acmfc03etuyndvsgtr7635sdfhfds', 'b7f33fccf9bf8d65d1b36cb8ebab6abd890adbbb0b78d7fac9aeeda139f4b475', '[\"*\"]', NULL, '2023-10-11 00:17:01', '2023-10-11 00:17:01'),
(9, 'App\\Models\\User', 4, 'acmfc03etuyndvsgtr7635sdfhfds', 'c9fad42af71bfa4acec771703ec5b95c19253daf98954a3fc9d8084e4e391228', '[\"*\"]', NULL, '2023-10-11 00:18:26', '2023-10-11 00:18:26'),
(10, 'App\\Models\\User', 4, 'acmfc03etuyndvsgtr7635sdfhfds', 'c01b3a1611da4b5b9666019d83085bb00f4724257feb76b66ae47e2ed10aa63f', '[\"*\"]', NULL, '2023-10-11 00:19:59', '2023-10-11 00:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `data`, `created_at`, `updated_at`) VALUES
(1, '[{\"sku\": \"23\", \"name\": \"Test Product 3\", \"unit\": \"\", \"width\": \"0.0\", \"gridId\": \"0\", \"height\": \"0.0\", \"length\": \"0.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"0\", \"stockSku\": \"23\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-23 18:37:26\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-05-09 18:37:26\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-05-09 18:37:25\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/\", \"stopSaleDate\": \"2050-09-23 18:37:26\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"Test Productupdated\", \"name\": \"Testing Order\", \"unit\": \"\", \"width\": \"1.0\", \"gridId\": \"0\", \"height\": \"1.0\", \"length\": \"1.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"18\", \"stockSku\": \"Test Productupdated\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-08-27 14:43:46\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 18}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-12 14:43:46\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 15:29:27\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/5//image.jpg\", \"stopSaleDate\": \"2050-08-27 14:43:46\", \"waitQuantity\": \"20\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"-2\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"-2\"}, {\"sku\": \"CDRCSCM03\", \"name\": \"保湿霜 CENTELLA STEM CELL MOISTURISER\", \"unit\": \"\", \"width\": \"6.2\", \"gridId\": \"1057207\", \"height\": \"5.0\", \"length\": \"6.2\", \"weight\": \"167.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"558\", \"stockSku\": \"CDRCSCM03\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-12 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 558}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:45:28\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/4//image.png\", \"stopSaleDate\": \"2050-09-12 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"558\", \"virtualSkuList\": [\"390-244\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"558\"}, {\"sku\": \"CDREHBS02\", \"name\": \"精华液 ECTOINE HYDRO BOOST SERUM\", \"unit\": \"\", \"width\": \"5.7\", \"gridId\": \"1057207\", \"height\": \"5.7\", \"length\": \"10.2\", \"weight\": \"113.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"11\", \"stockSku\": \"CDREHBS02\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 11}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/2//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"11\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"11\"}, {\"sku\": \"CDRYOHE01\", \"name\": \"面霜YEOTASKIN ORGANIC HERBAL EXTRACTS\", \"unit\": \"\", \"width\": \"4.4\", \"gridId\": \"1057207\", \"height\": \"4.4\", \"length\": \"4.4\", \"weight\": \"55.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"0\", \"stockSku\": \"CDRYOHE01\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/3//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": [\"400-243\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"CDRSAS001\", \"name\": \"Special Anniversary Set\", \"unit\": \"\", \"width\": \"18.0\", \"gridId\": \"946811\", \"height\": \"13.0\", \"length\": \"25.0\", \"weight\": \"950.0\", \"gridCode\": \"DEF-01-03\", \"quantity\": \"336\", \"stockSku\": \"CDRSAS001\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-12-26 16:43:06\", \"stockDetail\": [{\"gridCode\": \"DEF-01-03\", \"quantity\": 0}, {\"gridCode\": \"EF-01-02\", \"quantity\": 77}, {\"gridCode\": \"EF-01-03\", \"quantity\": 129}, {\"gridCode\": \"EF-01-04\", \"quantity\": 130}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 15:30:59\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-05 11:35:48\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/7//image.jpg\", \"stopSaleDate\": \"2050-12-26 16:43:06\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"336\", \"virtualSkuList\": [\"401-256\"], \"inferiorQuantity\": \"44\", \"availableStockQuantity\": \"336\"}]', '2023-10-10 00:28:10', '2023-10-10 00:28:10'),
(2, '[{\"sku\": \"23\", \"name\": \"Test Product 3\", \"unit\": \"\", \"width\": \"0.0\", \"gridId\": \"0\", \"height\": \"0.0\", \"length\": \"0.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"0\", \"stockSku\": \"23\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-23 18:37:26\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-05-09 18:37:26\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-05-09 18:37:25\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/\", \"stopSaleDate\": \"2050-09-23 18:37:26\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"Test Productupdated\", \"name\": \"Testing Order\", \"unit\": \"\", \"width\": \"1.0\", \"gridId\": \"0\", \"height\": \"1.0\", \"length\": \"1.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"18\", \"stockSku\": \"Test Productupdated\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-08-27 14:43:46\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 18}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-12 14:43:46\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 15:29:27\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/5//image.jpg\", \"stopSaleDate\": \"2050-08-27 14:43:46\", \"waitQuantity\": \"20\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"-2\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"-2\"}, {\"sku\": \"CDRCSCM03\", \"name\": \"保湿霜 CENTELLA STEM CELL MOISTURISER\", \"unit\": \"\", \"width\": \"6.2\", \"gridId\": \"1057207\", \"height\": \"5.0\", \"length\": \"6.2\", \"weight\": \"167.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"558\", \"stockSku\": \"CDRCSCM03\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-12 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 558}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:45:28\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/4//image.png\", \"stopSaleDate\": \"2050-09-12 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"558\", \"virtualSkuList\": [\"390-244\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"558\"}, {\"sku\": \"CDREHBS02\", \"name\": \"精华液 ECTOINE HYDRO BOOST SERUM\", \"unit\": \"\", \"width\": \"5.7\", \"gridId\": \"1057207\", \"height\": \"5.7\", \"length\": \"10.2\", \"weight\": \"113.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"11\", \"stockSku\": \"CDREHBS02\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 11}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/2//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"11\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"11\"}, {\"sku\": \"CDRYOHE01\", \"name\": \"面霜YEOTASKIN ORGANIC HERBAL EXTRACTS\", \"unit\": \"\", \"width\": \"4.4\", \"gridId\": \"1057207\", \"height\": \"4.4\", \"length\": \"4.4\", \"weight\": \"55.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"0\", \"stockSku\": \"CDRYOHE01\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/3//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": [\"400-243\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"CDRSAS001\", \"name\": \"Special Anniversary Set\", \"unit\": \"\", \"width\": \"18.0\", \"gridId\": \"946811\", \"height\": \"13.0\", \"length\": \"25.0\", \"weight\": \"950.0\", \"gridCode\": \"DEF-01-03\", \"quantity\": \"336\", \"stockSku\": \"CDRSAS001\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-12-26 16:43:06\", \"stockDetail\": [{\"gridCode\": \"DEF-01-03\", \"quantity\": 0}, {\"gridCode\": \"EF-01-02\", \"quantity\": 77}, {\"gridCode\": \"EF-01-03\", \"quantity\": 129}, {\"gridCode\": \"EF-01-04\", \"quantity\": 130}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 15:30:59\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-05 11:35:48\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/7//image.jpg\", \"stopSaleDate\": \"2050-12-26 16:43:06\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"336\", \"virtualSkuList\": [\"401-256\"], \"inferiorQuantity\": \"44\", \"availableStockQuantity\": \"336\"}]', '2023-10-10 02:24:55', '2023-10-10 02:24:55'),
(3, '[{\"sku\": \"23\", \"name\": \"Test Product 3\", \"unit\": \"\", \"width\": \"0.0\", \"gridId\": \"0\", \"height\": \"0.0\", \"length\": \"0.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"0\", \"stockSku\": \"23\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-23 18:37:26\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-05-09 18:37:26\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-05-09 18:37:25\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/\", \"stopSaleDate\": \"2050-09-23 18:37:26\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"Test Productupdated\", \"name\": \"Testing Order\", \"unit\": \"\", \"width\": \"1.0\", \"gridId\": \"0\", \"height\": \"1.0\", \"length\": \"1.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"18\", \"stockSku\": \"Test Productupdated\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-08-27 14:43:46\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 18}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-12 14:43:46\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 19:42:52\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/5//image.jpg\", \"stopSaleDate\": \"2050-08-27 14:43:46\", \"waitQuantity\": \"20\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"-2\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"-2\"}, {\"sku\": \"CDRCSCM03\", \"name\": \"保湿霜 CENTELLA STEM CELL MOISTURISER\", \"unit\": \"\", \"width\": \"6.2\", \"gridId\": \"1057207\", \"height\": \"5.0\", \"length\": \"6.2\", \"weight\": \"167.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"558\", \"stockSku\": \"CDRCSCM03\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-12 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 558}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:45:28\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/4//image.png\", \"stopSaleDate\": \"2050-09-12 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"558\", \"virtualSkuList\": [\"390-244\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"558\"}, {\"sku\": \"CDREHBS02\", \"name\": \"精华液 ECTOINE HYDRO BOOST SERUM\", \"unit\": \"\", \"width\": \"5.7\", \"gridId\": \"1057207\", \"height\": \"5.7\", \"length\": \"10.2\", \"weight\": \"113.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"11\", \"stockSku\": \"CDREHBS02\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 11}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/2//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"11\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"11\"}, {\"sku\": \"CDRYOHE01\", \"name\": \"面霜YEOTASKIN ORGANIC HERBAL EXTRACTS\", \"unit\": \"\", \"width\": \"4.4\", \"gridId\": \"1057207\", \"height\": \"4.4\", \"length\": \"4.4\", \"weight\": \"55.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"0\", \"stockSku\": \"CDRYOHE01\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/3//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": [\"400-243\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"CDRSAS001\", \"name\": \"Special Anniversary Set\", \"unit\": \"\", \"width\": \"18.0\", \"gridId\": \"946811\", \"height\": \"13.0\", \"length\": \"25.0\", \"weight\": \"950.0\", \"gridCode\": \"DEF-01-03\", \"quantity\": \"336\", \"stockSku\": \"CDRSAS001\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-12-26 16:43:06\", \"stockDetail\": [{\"gridCode\": \"DEF-01-03\", \"quantity\": 0}, {\"gridCode\": \"EF-01-02\", \"quantity\": 77}, {\"gridCode\": \"EF-01-03\", \"quantity\": 129}, {\"gridCode\": \"EF-01-04\", \"quantity\": 130}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 15:30:59\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-05 11:35:48\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/7//image.jpg\", \"stopSaleDate\": \"2050-12-26 16:43:06\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"336\", \"virtualSkuList\": [\"401-256\"], \"inferiorQuantity\": \"44\", \"availableStockQuantity\": \"336\"}]', '2023-10-10 04:10:17', '2023-10-10 04:10:17'),
(4, '[{\"sku\": \"23\", \"name\": \"Test Product 3\", \"unit\": \"\", \"width\": \"0.0\", \"gridId\": \"0\", \"height\": \"0.0\", \"length\": \"0.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"0\", \"stockSku\": \"23\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-23 18:37:26\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-05-09 18:37:26\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-05-09 18:37:25\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/\", \"stopSaleDate\": \"2050-09-23 18:37:26\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"Test Productupdated\", \"name\": \"Testing Order\", \"unit\": \"\", \"width\": \"1.0\", \"gridId\": \"0\", \"height\": \"1.0\", \"length\": \"1.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"18\", \"stockSku\": \"Test Productupdated\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-08-27 14:43:46\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 18}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-12 14:43:46\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 19:42:52\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/5//image.jpg\", \"stopSaleDate\": \"2050-08-27 14:43:46\", \"waitQuantity\": \"20\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"-2\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"-2\"}, {\"sku\": \"CDRCSCM03\", \"name\": \"保湿霜 CENTELLA STEM CELL MOISTURISER\", \"unit\": \"\", \"width\": \"6.2\", \"gridId\": \"1057207\", \"height\": \"5.0\", \"length\": \"6.2\", \"weight\": \"167.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"558\", \"stockSku\": \"CDRCSCM03\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-12 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 558}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:45:28\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/4//image.png\", \"stopSaleDate\": \"2050-09-12 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"558\", \"virtualSkuList\": [\"390-244\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"558\"}, {\"sku\": \"CDREHBS02\", \"name\": \"精华液 ECTOINE HYDRO BOOST SERUM\", \"unit\": \"\", \"width\": \"5.7\", \"gridId\": \"1057207\", \"height\": \"5.7\", \"length\": \"10.2\", \"weight\": \"113.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"11\", \"stockSku\": \"CDREHBS02\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 11}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/2//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"11\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"11\"}, {\"sku\": \"CDRYOHE01\", \"name\": \"面霜YEOTASKIN ORGANIC HERBAL EXTRACTS\", \"unit\": \"\", \"width\": \"4.4\", \"gridId\": \"1057207\", \"height\": \"4.4\", \"length\": \"4.4\", \"weight\": \"55.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"0\", \"stockSku\": \"CDRYOHE01\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/3//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": [\"400-243\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"CDRSAS001\", \"name\": \"Special Anniversary Set\", \"unit\": \"\", \"width\": \"18.0\", \"gridId\": \"946811\", \"height\": \"13.0\", \"length\": \"25.0\", \"weight\": \"950.0\", \"gridCode\": \"DEF-01-03\", \"quantity\": \"336\", \"stockSku\": \"CDRSAS001\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-12-26 16:43:06\", \"stockDetail\": [{\"gridCode\": \"DEF-01-03\", \"quantity\": 0}, {\"gridCode\": \"EF-01-02\", \"quantity\": 77}, {\"gridCode\": \"EF-01-03\", \"quantity\": 129}, {\"gridCode\": \"EF-01-04\", \"quantity\": 130}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 15:30:59\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-05 11:35:48\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/7//image.jpg\", \"stopSaleDate\": \"2050-12-26 16:43:06\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"336\", \"virtualSkuList\": [\"401-256\"], \"inferiorQuantity\": \"44\", \"availableStockQuantity\": \"336\"}]', '2023-10-10 04:40:07', '2023-10-10 04:40:07'),
(5, '[{\"sku\": \"23\", \"name\": \"Test Product 3\", \"unit\": \"\", \"width\": \"0.0\", \"gridId\": \"0\", \"height\": \"0.0\", \"length\": \"0.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"0\", \"stockSku\": \"23\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-23 18:37:26\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-05-09 18:37:26\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-05-09 18:37:25\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/\", \"stopSaleDate\": \"2050-09-23 18:37:26\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"Test Productupdated\", \"name\": \"Testing Order\", \"unit\": \"\", \"width\": \"1.0\", \"gridId\": \"0\", \"height\": \"1.0\", \"length\": \"1.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"18\", \"stockSku\": \"Test Productupdated\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-08-27 14:43:46\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 18}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-12 14:43:46\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-11 15:44:36\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/5//image.jpg\", \"stopSaleDate\": \"2050-08-27 14:43:46\", \"waitQuantity\": \"20\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"-2\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"-2\"}, {\"sku\": \"CDRCSCM03\", \"name\": \"保湿霜 CENTELLA STEM CELL MOISTURISER\", \"unit\": \"\", \"width\": \"6.2\", \"gridId\": \"1057207\", \"height\": \"5.0\", \"length\": \"6.2\", \"weight\": \"167.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"558\", \"stockSku\": \"CDRCSCM03\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-12 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 558}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:45:28\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/4//image.png\", \"stopSaleDate\": \"2050-09-12 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"558\", \"virtualSkuList\": [\"390-244\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"558\"}, {\"sku\": \"CDREHBS02\", \"name\": \"精华液 ECTOINE HYDRO BOOST SERUM\", \"unit\": \"\", \"width\": \"5.7\", \"gridId\": \"1057207\", \"height\": \"5.7\", \"length\": \"10.2\", \"weight\": \"113.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"11\", \"stockSku\": \"CDREHBS02\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 11}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/2//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"11\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"11\"}, {\"sku\": \"CDRYOHE01\", \"name\": \"面霜YEOTASKIN ORGANIC HERBAL EXTRACTS\", \"unit\": \"\", \"width\": \"4.4\", \"gridId\": \"1057207\", \"height\": \"4.4\", \"length\": \"4.4\", \"weight\": \"55.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"0\", \"stockSku\": \"CDRYOHE01\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/3//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": [\"400-243\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"CDRSAS001\", \"name\": \"Special Anniversary Set\", \"unit\": \"\", \"width\": \"18.0\", \"gridId\": \"946811\", \"height\": \"13.0\", \"length\": \"25.0\", \"weight\": \"950.0\", \"gridCode\": \"DEF-01-03\", \"quantity\": \"336\", \"stockSku\": \"CDRSAS001\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-12-26 16:43:06\", \"stockDetail\": [{\"gridCode\": \"DEF-01-03\", \"quantity\": 0}, {\"gridCode\": \"EF-01-02\", \"quantity\": 77}, {\"gridCode\": \"EF-01-03\", \"quantity\": 129}, {\"gridCode\": \"EF-01-04\", \"quantity\": 130}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 15:30:59\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-05 11:35:48\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/7//image.jpg\", \"stopSaleDate\": \"2050-12-26 16:43:06\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"336\", \"virtualSkuList\": [\"401-256\"], \"inferiorQuantity\": \"44\", \"availableStockQuantity\": \"336\"}]', '2023-10-10 23:54:37', '2023-10-10 23:54:37'),
(6, '[{\"sku\": \"23\", \"name\": \"Test Product 3\", \"unit\": \"\", \"width\": \"0.0\", \"gridId\": \"0\", \"height\": \"0.0\", \"length\": \"0.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"0\", \"stockSku\": \"23\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-23 18:37:26\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-05-09 18:37:26\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-05-09 18:37:25\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/\", \"stopSaleDate\": \"2050-09-23 18:37:26\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"Test Productupdated\", \"name\": \"Testing Order\", \"unit\": \"\", \"width\": \"1.0\", \"gridId\": \"0\", \"height\": \"1.0\", \"length\": \"1.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"18\", \"stockSku\": \"Test Productupdated\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-08-27 14:43:46\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 18}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-12 14:43:46\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-11 15:44:36\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/5//image.jpg\", \"stopSaleDate\": \"2050-08-27 14:43:46\", \"waitQuantity\": \"20\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"-2\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"-2\"}, {\"sku\": \"CDRCSCM03\", \"name\": \"保湿霜 CENTELLA STEM CELL MOISTURISER\", \"unit\": \"\", \"width\": \"6.2\", \"gridId\": \"1057207\", \"height\": \"5.0\", \"length\": \"6.2\", \"weight\": \"167.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"558\", \"stockSku\": \"CDRCSCM03\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-12 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 558}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:45:28\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/4//image.png\", \"stopSaleDate\": \"2050-09-12 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"558\", \"virtualSkuList\": [\"390-244\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"558\"}, {\"sku\": \"CDREHBS02\", \"name\": \"精华液 ECTOINE HYDRO BOOST SERUM\", \"unit\": \"\", \"width\": \"5.7\", \"gridId\": \"1057207\", \"height\": \"5.7\", \"length\": \"10.2\", \"weight\": \"113.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"11\", \"stockSku\": \"CDREHBS02\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 11}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/2//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"11\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"11\"}, {\"sku\": \"CDRYOHE01\", \"name\": \"面霜YEOTASKIN ORGANIC HERBAL EXTRACTS\", \"unit\": \"\", \"width\": \"4.4\", \"gridId\": \"1057207\", \"height\": \"4.4\", \"length\": \"4.4\", \"weight\": \"55.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"0\", \"stockSku\": \"CDRYOHE01\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/3//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": [\"400-243\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"CDRSAS001\", \"name\": \"Special Anniversary Set\", \"unit\": \"\", \"width\": \"18.0\", \"gridId\": \"946811\", \"height\": \"13.0\", \"length\": \"25.0\", \"weight\": \"950.0\", \"gridCode\": \"DEF-01-03\", \"quantity\": \"336\", \"stockSku\": \"CDRSAS001\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-12-26 16:43:06\", \"stockDetail\": [{\"gridCode\": \"DEF-01-03\", \"quantity\": 0}, {\"gridCode\": \"EF-01-02\", \"quantity\": 77}, {\"gridCode\": \"EF-01-03\", \"quantity\": 129}, {\"gridCode\": \"EF-01-04\", \"quantity\": 130}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 15:30:59\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-05 11:35:48\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/7//image.jpg\", \"stopSaleDate\": \"2050-12-26 16:43:06\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"336\", \"virtualSkuList\": [\"401-256\"], \"inferiorQuantity\": \"44\", \"availableStockQuantity\": \"336\"}]', '2023-10-11 00:49:47', '2023-10-11 00:49:47'),
(7, '[{\"sku\": \"23\", \"name\": \"Test Product 3\", \"unit\": \"\", \"width\": \"0.0\", \"gridId\": \"0\", \"height\": \"0.0\", \"length\": \"0.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"0\", \"stockSku\": \"23\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-23 18:37:26\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-05-09 18:37:26\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-05-09 18:37:25\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/\", \"stopSaleDate\": \"2050-09-23 18:37:26\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"Test Productupdated\", \"name\": \"Testing Order\", \"unit\": \"\", \"width\": \"1.0\", \"gridId\": \"0\", \"height\": \"1.0\", \"length\": \"1.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"18\", \"stockSku\": \"Test Productupdated\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-08-27 14:43:46\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 18}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-12 14:43:46\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-11 15:44:36\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/5//image.jpg\", \"stopSaleDate\": \"2050-08-27 14:43:46\", \"waitQuantity\": \"20\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"-2\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"-2\"}, {\"sku\": \"CDRCSCM03\", \"name\": \"保湿霜 CENTELLA STEM CELL MOISTURISER\", \"unit\": \"\", \"width\": \"6.2\", \"gridId\": \"1057207\", \"height\": \"5.0\", \"length\": \"6.2\", \"weight\": \"167.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"558\", \"stockSku\": \"CDRCSCM03\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-12 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 558}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:45:28\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/4//image.png\", \"stopSaleDate\": \"2050-09-12 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"558\", \"virtualSkuList\": [\"390-244\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"558\"}, {\"sku\": \"CDREHBS02\", \"name\": \"精华液 ECTOINE HYDRO BOOST SERUM\", \"unit\": \"\", \"width\": \"5.7\", \"gridId\": \"1057207\", \"height\": \"5.7\", \"length\": \"10.2\", \"weight\": \"113.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"11\", \"stockSku\": \"CDREHBS02\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 11}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/2//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"11\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"11\"}, {\"sku\": \"CDRYOHE01\", \"name\": \"面霜YEOTASKIN ORGANIC HERBAL EXTRACTS\", \"unit\": \"\", \"width\": \"4.4\", \"gridId\": \"1057207\", \"height\": \"4.4\", \"length\": \"4.4\", \"weight\": \"55.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"0\", \"stockSku\": \"CDRYOHE01\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/3//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": [\"400-243\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"CDRSAS001\", \"name\": \"Special Anniversary Set\", \"unit\": \"\", \"width\": \"18.0\", \"gridId\": \"946811\", \"height\": \"13.0\", \"length\": \"25.0\", \"weight\": \"950.0\", \"gridCode\": \"DEF-01-03\", \"quantity\": \"336\", \"stockSku\": \"CDRSAS001\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-12-26 16:43:06\", \"stockDetail\": [{\"gridCode\": \"DEF-01-03\", \"quantity\": 0}, {\"gridCode\": \"EF-01-02\", \"quantity\": 77}, {\"gridCode\": \"EF-01-03\", \"quantity\": 129}, {\"gridCode\": \"EF-01-04\", \"quantity\": 130}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 15:30:59\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-05 11:35:48\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/7//image.jpg\", \"stopSaleDate\": \"2050-12-26 16:43:06\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"336\", \"virtualSkuList\": [\"401-256\"], \"inferiorQuantity\": \"44\", \"availableStockQuantity\": \"336\"}]', '2023-10-11 00:59:55', '2023-10-11 00:59:55');
INSERT INTO `products` (`id`, `data`, `created_at`, `updated_at`) VALUES
(8, '[{\"sku\": \"23\", \"name\": \"Test Product 3\", \"unit\": \"\", \"width\": \"0.0\", \"gridId\": \"0\", \"height\": \"0.0\", \"length\": \"0.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"0\", \"stockSku\": \"23\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-23 18:37:26\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-05-09 18:37:26\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-05-09 18:37:25\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/\", \"stopSaleDate\": \"2050-09-23 18:37:26\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"Test Productupdated\", \"name\": \"Testing Order\", \"unit\": \"\", \"width\": \"1.0\", \"gridId\": \"0\", \"height\": \"1.0\", \"length\": \"1.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"18\", \"stockSku\": \"Test Productupdated\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-08-27 14:43:46\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 18}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-12 14:43:46\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-11 15:44:36\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/5//image.jpg\", \"stopSaleDate\": \"2050-08-27 14:43:46\", \"waitQuantity\": \"20\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"-2\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"-2\"}, {\"sku\": \"CDRCSCM03\", \"name\": \"保湿霜 CENTELLA STEM CELL MOISTURISER\", \"unit\": \"\", \"width\": \"6.2\", \"gridId\": \"1057207\", \"height\": \"5.0\", \"length\": \"6.2\", \"weight\": \"167.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"558\", \"stockSku\": \"CDRCSCM03\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-12 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 558}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:45:28\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/4//image.png\", \"stopSaleDate\": \"2050-09-12 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"558\", \"virtualSkuList\": [\"390-244\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"558\"}, {\"sku\": \"CDREHBS02\", \"name\": \"精华液 ECTOINE HYDRO BOOST SERUM\", \"unit\": \"\", \"width\": \"5.7\", \"gridId\": \"1057207\", \"height\": \"5.7\", \"length\": \"10.2\", \"weight\": \"113.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"11\", \"stockSku\": \"CDREHBS02\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 11}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/2//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"11\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"11\"}, {\"sku\": \"CDRYOHE01\", \"name\": \"面霜YEOTASKIN ORGANIC HERBAL EXTRACTS\", \"unit\": \"\", \"width\": \"4.4\", \"gridId\": \"1057207\", \"height\": \"4.4\", \"length\": \"4.4\", \"weight\": \"55.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"0\", \"stockSku\": \"CDRYOHE01\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/3//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": [\"400-243\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"CDRSAS001\", \"name\": \"Special Anniversary Set\", \"unit\": \"\", \"width\": \"18.0\", \"gridId\": \"946811\", \"height\": \"13.0\", \"length\": \"25.0\", \"weight\": \"950.0\", \"gridCode\": \"DEF-01-03\", \"quantity\": \"336\", \"stockSku\": \"CDRSAS001\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-12-26 16:43:06\", \"stockDetail\": [{\"gridCode\": \"DEF-01-03\", \"quantity\": 0}, {\"gridCode\": \"EF-01-02\", \"quantity\": 77}, {\"gridCode\": \"EF-01-03\", \"quantity\": 129}, {\"gridCode\": \"EF-01-04\", \"quantity\": 130}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 15:30:59\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-05 11:35:48\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/7//image.jpg\", \"stopSaleDate\": \"2050-12-26 16:43:06\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"336\", \"virtualSkuList\": [\"401-256\"], \"inferiorQuantity\": \"44\", \"availableStockQuantity\": \"336\"}]', '2023-10-11 01:24:27', '2023-10-11 01:24:27'),
(9, '[{\"sku\": \"23\", \"name\": \"Test Product 3\", \"unit\": \"\", \"width\": \"0.0\", \"gridId\": \"0\", \"height\": \"0.0\", \"length\": \"0.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"0\", \"stockSku\": \"23\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-23 18:37:26\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-05-09 18:37:26\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-05-09 18:37:25\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/\", \"stopSaleDate\": \"2050-09-23 18:37:26\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"Test Productupdated\", \"name\": \"Testing Order\", \"unit\": \"\", \"width\": \"1.0\", \"gridId\": \"0\", \"height\": \"1.0\", \"length\": \"1.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"18\", \"stockSku\": \"Test Productupdated\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-08-27 14:43:46\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 18}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-12 14:43:46\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-11 15:44:36\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/5//image.jpg\", \"stopSaleDate\": \"2050-08-27 14:43:46\", \"waitQuantity\": \"20\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"-2\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"-2\"}, {\"sku\": \"CDRCSCM03\", \"name\": \"保湿霜 CENTELLA STEM CELL MOISTURISER\", \"unit\": \"\", \"width\": \"6.2\", \"gridId\": \"1057207\", \"height\": \"5.0\", \"length\": \"6.2\", \"weight\": \"167.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"558\", \"stockSku\": \"CDRCSCM03\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-12 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 558}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:45:28\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/4//image.png\", \"stopSaleDate\": \"2050-09-12 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"558\", \"virtualSkuList\": [\"390-244\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"558\"}, {\"sku\": \"CDREHBS02\", \"name\": \"精华液 ECTOINE HYDRO BOOST SERUM\", \"unit\": \"\", \"width\": \"5.7\", \"gridId\": \"1057207\", \"height\": \"5.7\", \"length\": \"10.2\", \"weight\": \"113.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"11\", \"stockSku\": \"CDREHBS02\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 11}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/2//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"11\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"11\"}, {\"sku\": \"CDRYOHE01\", \"name\": \"面霜YEOTASKIN ORGANIC HERBAL EXTRACTS\", \"unit\": \"\", \"width\": \"4.4\", \"gridId\": \"1057207\", \"height\": \"4.4\", \"length\": \"4.4\", \"weight\": \"55.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"0\", \"stockSku\": \"CDRYOHE01\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/3//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": [\"400-243\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"CDRSAS001\", \"name\": \"Special Anniversary Set\", \"unit\": \"\", \"width\": \"18.0\", \"gridId\": \"946811\", \"height\": \"13.0\", \"length\": \"25.0\", \"weight\": \"950.0\", \"gridCode\": \"DEF-01-03\", \"quantity\": \"336\", \"stockSku\": \"CDRSAS001\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-12-26 16:43:06\", \"stockDetail\": [{\"gridCode\": \"DEF-01-03\", \"quantity\": 0}, {\"gridCode\": \"EF-01-02\", \"quantity\": 77}, {\"gridCode\": \"EF-01-03\", \"quantity\": 129}, {\"gridCode\": \"EF-01-04\", \"quantity\": 130}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 15:30:59\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-05 11:35:48\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/7//image.jpg\", \"stopSaleDate\": \"2050-12-26 16:43:06\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"336\", \"virtualSkuList\": [\"401-256\"], \"inferiorQuantity\": \"44\", \"availableStockQuantity\": \"336\"}]', '2023-10-11 01:45:16', '2023-10-11 01:45:16'),
(10, '[{\"sku\": \"23\", \"name\": \"Test Product 3\", \"unit\": \"\", \"width\": \"0.0\", \"gridId\": \"0\", \"height\": \"0.0\", \"length\": \"0.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"0\", \"stockSku\": \"23\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-23 18:37:26\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-05-09 18:37:26\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-05-09 18:37:25\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/\", \"stopSaleDate\": \"2050-09-23 18:37:26\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"Test Productupdated\", \"name\": \"Testing Order\", \"unit\": \"\", \"width\": \"1.0\", \"gridId\": \"0\", \"height\": \"1.0\", \"length\": \"1.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"18\", \"stockSku\": \"Test Productupdated\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-08-27 14:43:46\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 18}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-12 14:43:46\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-11 15:44:36\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/5//image.jpg\", \"stopSaleDate\": \"2050-08-27 14:43:46\", \"waitQuantity\": \"20\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"-2\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"-2\"}, {\"sku\": \"CDRCSCM03\", \"name\": \"保湿霜 CENTELLA STEM CELL MOISTURISER\", \"unit\": \"\", \"width\": \"6.2\", \"gridId\": \"1057207\", \"height\": \"5.0\", \"length\": \"6.2\", \"weight\": \"167.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"558\", \"stockSku\": \"CDRCSCM03\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-12 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 558}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:45:28\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/4//image.png\", \"stopSaleDate\": \"2050-09-12 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"558\", \"virtualSkuList\": [\"390-244\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"558\"}, {\"sku\": \"CDREHBS02\", \"name\": \"精华液 ECTOINE HYDRO BOOST SERUM\", \"unit\": \"\", \"width\": \"5.7\", \"gridId\": \"1057207\", \"height\": \"5.7\", \"length\": \"10.2\", \"weight\": \"113.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"11\", \"stockSku\": \"CDREHBS02\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 11}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/2//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"11\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"11\"}, {\"sku\": \"CDRYOHE01\", \"name\": \"面霜YEOTASKIN ORGANIC HERBAL EXTRACTS\", \"unit\": \"\", \"width\": \"4.4\", \"gridId\": \"1057207\", \"height\": \"4.4\", \"length\": \"4.4\", \"weight\": \"55.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"0\", \"stockSku\": \"CDRYOHE01\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/3//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": [\"400-243\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"CDRSAS001\", \"name\": \"Special Anniversary Set\", \"unit\": \"\", \"width\": \"18.0\", \"gridId\": \"946811\", \"height\": \"13.0\", \"length\": \"25.0\", \"weight\": \"950.0\", \"gridCode\": \"DEF-01-03\", \"quantity\": \"336\", \"stockSku\": \"CDRSAS001\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-12-26 16:43:06\", \"stockDetail\": [{\"gridCode\": \"DEF-01-03\", \"quantity\": 0}, {\"gridCode\": \"EF-01-02\", \"quantity\": 77}, {\"gridCode\": \"EF-01-03\", \"quantity\": 129}, {\"gridCode\": \"EF-01-04\", \"quantity\": 130}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 15:30:59\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-05 11:35:48\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/7//image.jpg\", \"stopSaleDate\": \"2050-12-26 16:43:06\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"336\", \"virtualSkuList\": [\"401-256\"], \"inferiorQuantity\": \"44\", \"availableStockQuantity\": \"336\"}]', '2023-10-11 02:54:42', '2023-10-11 02:54:42'),
(11, '[{\"sku\": \"23\", \"name\": \"Test Product 3\", \"unit\": \"\", \"width\": \"0.0\", \"gridId\": \"0\", \"height\": \"0.0\", \"length\": \"0.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"0\", \"stockSku\": \"23\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-23 18:37:26\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-05-09 18:37:26\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-05-09 18:37:25\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/\", \"stopSaleDate\": \"2050-09-23 18:37:26\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"Test Productupdated\", \"name\": \"Testing Order\", \"unit\": \"\", \"width\": \"1.0\", \"gridId\": \"0\", \"height\": \"1.0\", \"length\": \"1.0\", \"weight\": \"1.0\", \"gridCode\": \"无仓位\", \"quantity\": \"18\", \"stockSku\": \"Test Productupdated\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-08-27 14:43:46\", \"stockDetail\": [{\"gridCode\": \"无仓位\", \"quantity\": 18}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-12 14:43:46\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-11 19:57:28\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/5//image.jpg\", \"stopSaleDate\": \"2050-08-27 14:43:46\", \"waitQuantity\": \"20\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"-2\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"-2\"}, {\"sku\": \"CDRCSCM03\", \"name\": \"保湿霜 CENTELLA STEM CELL MOISTURISER\", \"unit\": \"\", \"width\": \"6.2\", \"gridId\": \"1057207\", \"height\": \"5.0\", \"length\": \"6.2\", \"weight\": \"167.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"558\", \"stockSku\": \"CDRCSCM03\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-12 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 558}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:45:28\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/4//image.png\", \"stopSaleDate\": \"2050-09-12 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"558\", \"virtualSkuList\": [\"390-244\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"558\"}, {\"sku\": \"CDREHBS02\", \"name\": \"精华液 ECTOINE HYDRO BOOST SERUM\", \"unit\": \"\", \"width\": \"5.7\", \"gridId\": \"1057207\", \"height\": \"5.7\", \"length\": \"10.2\", \"weight\": \"113.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"11\", \"stockSku\": \"CDREHBS02\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 11}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/2//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"11\", \"virtualSkuList\": null, \"inferiorQuantity\": null, \"availableStockQuantity\": \"11\"}, {\"sku\": \"CDRYOHE01\", \"name\": \"面霜YEOTASKIN ORGANIC HERBAL EXTRACTS\", \"unit\": \"\", \"width\": \"4.4\", \"gridId\": \"1057207\", \"height\": \"4.4\", \"length\": \"4.4\", \"weight\": \"55.0\", \"gridCode\": \"EF-01-01\", \"quantity\": \"0\", \"stockSku\": \"CDRYOHE01\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-09-09 23:59:59\", \"stockDetail\": [{\"gridCode\": \"EF-01-01\", \"quantity\": 0}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 14:58:24\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-10 11:53:23\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/3//image.png\", \"stopSaleDate\": \"2050-09-09 23:59:59\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"0\", \"virtualSkuList\": [\"400-243\"], \"inferiorQuantity\": null, \"availableStockQuantity\": \"0\"}, {\"sku\": \"CDRSAS001\", \"name\": \"Special Anniversary Set\", \"unit\": \"\", \"width\": \"18.0\", \"gridId\": \"946811\", \"height\": \"13.0\", \"length\": \"25.0\", \"weight\": \"950.0\", \"gridCode\": \"DEF-01-03\", \"quantity\": \"336\", \"stockSku\": \"CDRSAS001\", \"originSku\": \"\", \"shelflife\": \"9999\", \"warehouse\": \"HDS\", \"customLabel\": null, \"declareCode\": \"\", \"declareName\": \"\", \"expiredDate\": \"2050-12-26 16:43:06\", \"stockDetail\": [{\"gridCode\": \"DEF-01-03\", \"quantity\": 0}, {\"gridCode\": \"EF-01-02\", \"quantity\": 77}, {\"gridCode\": \"EF-01-03\", \"quantity\": 129}, {\"gridCode\": \"EF-01-04\", \"quantity\": 130}], \"stopSaleDay\": \"0\", \"timeCreated\": \"2023-04-06 15:30:59\", \"declareEname\": \"\", \"declareValue\": \"0.0\", \"lastOpertime\": \"2023-10-05 11:35:48\", \"shipQuantity\": \"0\", \"stockPicture\": \"https://partner.yeotaskin.com.my/storage/products/images/7//image.jpg\", \"stopSaleDate\": \"2050-12-26 16:43:06\", \"waitQuantity\": \"0\", \"confirmStatus\": \"confirmed\", \"warehouseCode\": \"10582\", \"usableQuantity\": \"336\", \"virtualSkuList\": [\"401-256\"], \"inferiorQuantity\": \"44\", \"availableStockQuantity\": \"336\"}]', '2023-10-11 05:29:40', '2023-10-11 05:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-10-11 06:59:44', '2023-10-11 06:59:44'),
(2, 'Staff', 'web', '2023-10-11 07:01:38', '2023-10-11 07:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
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
(9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ic_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `up_line_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:admin',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:Pending, 1: Approved, 2: blocked, 3: Rejected',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `profile_photo`, `gender`, `dob`, `ic_number`, `level`, `downline`, `user_name`, `role`, `up_line_name`, `memo`, `attachment`, `user_type`, `status`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ACM Admin', 'info@acm.com', NULL, NULL, '$2y$10$FYIMBM6CzUeE68xqj1R0H.GF41jHBMebGvS/PMKj8WyziOtQVh3oe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2023-10-03 05:48:04', '2023-10-03 05:48:04'),
(2, 'Agent 1', NULL, NULL, NULL, NULL, '/common/agent/profile_photo/1268573800.jpg', 'm', '2023-04-04', '123457', '2', '3', NULL, NULL, NULL, 'Blocked', NULL, 0, 2, NULL, NULL, '2023-10-02 23:49:52', '2023-10-07 06:51:21'),
(3, 'Sazzadur Rahman', NULL, NULL, NULL, '$2y$10$nA.8OkpAQ8Z6DOT4KhxHP.PksGAaa96ANZ0MyFqwwIaX5QQGWDZp.', NULL, NULL, '2023-10-07', NULL, NULL, NULL, 'sazzad', NULL, NULL, 'Rejected for some reason', NULL, 0, 3, NULL, NULL, '2023-10-07 02:38:02', '2023-10-07 06:50:20'),
(4, 'Sazzadur Rahman', NULL, NULL, NULL, '$2y$10$QF7AbrwO9wOnlrdKDj.nyeojQRy1J1eCDbbyA.O5eEbu0DwgKZMtK', NULL, NULL, '2023-10-07', NULL, NULL, NULL, 'sazzadur', NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, '2023-10-07 02:53:01', '2023-10-07 06:45:49'),
(6, 'ACM Admin', 'test@example.com', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2023-10-02 21:48:04', '2023-10-02 21:48:04'),
(7, 'Sazzadur Rahman Siam', NULL, NULL, NULL, '$2y$10$NeQ.50t1p/Pn20RZa/NiC.DwwOhdBS5.QKA2X1Op59HqSE.180jwG', NULL, NULL, '2023-10-10', NULL, NULL, NULL, 'alex', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2023-10-10 09:13:36', '2023-10-10 09:13:36'),
(8, 'hi', NULL, NULL, NULL, '$2y$10$/SwN0JCkqAoGpvDUvaohdOypM6uOw9G7T/bH8tEcQ8gA.qcHi0jeq', NULL, NULL, '2023-10-11', NULL, NULL, NULL, 'Hello', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2023-10-10 19:17:25', '2023-10-10 19:17:25'),
(9, 'Hell', NULL, NULL, NULL, '$2y$10$291U2xPFx0DMKSPPoyjJpOHVWUgJCaeDf1FjRfR3uOk12DuUWY2d2', NULL, NULL, '2023-10-11', NULL, NULL, NULL, 'h', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2023-10-10 19:34:38', '2023-10-10 19:34:38'),
(10, 'h', NULL, NULL, NULL, '$2y$10$o59Xi0CdtqzGaLg1R0Vvf.ytOGVZZjLLltQDf7BzF8tiFUt3xDeZ.', NULL, NULL, '2023-10-11', NULL, NULL, NULL, 'Hell', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2023-10-10 19:35:52', '2023-10-10 19:35:52'),
(11, 'amy ray', NULL, NULL, NULL, '$2y$10$kEfjyStl7nS2itMvfgkp3eaQP2S5LKPR0yWAvo/g/lI2YJa6XBD8q', NULL, NULL, '2023-10-11', NULL, NULL, NULL, 'amy', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2023-10-10 20:48:48', '2023-10-10 20:48:48'),
(12, 'bhjk', NULL, NULL, NULL, '$2y$10$yZ5qqTd9hJz.TFNqz59JtuL7DaTzPd82V/yGzcn9EZp.jzrV25Ir6', NULL, NULL, '2023-10-11', NULL, NULL, NULL, 'avd', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2023-10-10 21:40:25', '2023-10-10 21:40:25'),
(13, 'riya', NULL, NULL, NULL, '$2y$10$ZtIoXq.vLXU2bTcf2mKOAOAYYAL9Ez5YW0CUu7Lv.y5c/Mo3C848e', NULL, NULL, '2023-10-11', NULL, NULL, NULL, 'riya', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2023-10-10 21:42:26', '2023-10-10 21:42:26'),
(14, 'puja', NULL, NULL, NULL, '$2y$10$Cxi/HpvANePjUCEAJ2ZQYuGmjoPmNac3TNbI2TSK9DYO7Np8anSVO', NULL, NULL, '2023-10-11', NULL, NULL, NULL, 'puja', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2023-10-10 21:52:27', '2023-10-10 21:52:27'),
(15, 'trie', NULL, NULL, NULL, '$2y$10$RLiEsU8/oJJzwI4F1JqNDeaw32XW/NuFcDTfRKrTBSghtodUPV3nu', NULL, NULL, '2023-10-11', NULL, NULL, NULL, 'rahul', NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, '2023-10-10 22:31:32', '2023-10-11 00:54:14'),
(16, 'Rittik Mondal', NULL, NULL, NULL, '$2y$10$B9FSPlZp/OHZgHkLqr9uu.DW2KQSkNtbSHmtHHMZq5/vnVHeOA6Cu', NULL, NULL, '2023-10-11', NULL, NULL, NULL, 'rittik', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2023-10-10 23:33:02', '2023-10-10 23:33:02'),
(17, 'raju', NULL, NULL, NULL, '$2y$10$X.2cNTRUPyfbl2801AdNTexq8oGj6kI2sLQv3C0V9H1hJdYaHMi2O', NULL, NULL, '2023-10-11', NULL, NULL, NULL, 'raju', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2023-10-10 23:41:19', '2023-10-10 23:41:19');

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
-- Indexes for table `knowledge_bases`
--
ALTER TABLE `knowledge_bases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge_bases`
--
ALTER TABLE `knowledge_bases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
