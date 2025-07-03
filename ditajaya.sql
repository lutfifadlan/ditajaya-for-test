-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Bulan Mei 2025 pada 17.17
-- Versi server: 8.0.42-0ubuntu0.24.04.1
-- Versi PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ditajaya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activities`
--

CREATE TABLE `activities` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `schedule_from` datetime DEFAULT NULL,
  `schedule_to` datetime DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ;

--
-- Dumping data untuk tabel `activities`
--

INSERT INTO `activities` (`id`, `title`, `type`, `comment`, `additional`, `schedule_from`, `schedule_to`, `is_done`, `user_id`, `created_at`, `updated_at`, `location`) VALUES
(1, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 1, '2025-01-05 16:13:49', '2025-01-05 16:13:49', NULL),
(2, 'Updated Name', 'system', NULL, '{\"attribute\":\"Name\",\"new\":{\"value\":\"Muhammad Firman P\",\"label\":\"Muhammad Firman P\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-05 16:13:49', '2025-01-05 16:13:49', NULL),
(3, 'Updated Emails', 'system', NULL, '{\"attribute\":\"Emails\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"prayogafirman22@gmail.com\"}],\"label\":\"prayogafirman22@gmail.com (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-05 16:13:49', '2025-01-05 16:13:49', NULL),
(4, 'Updated Contact Numbers', 'system', NULL, '{\"attribute\":\"Contact Numbers\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"083811212847\"}],\"label\":\"083811212847 (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-05 16:13:49', '2025-01-05 16:13:49', NULL),
(5, 'Updated Job Title', 'system', NULL, '{\"attribute\":\"Job Title\",\"new\":{\"value\":\"Software Development\",\"label\":\"Software Development\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-05 16:13:49', '2025-01-05 16:13:49', NULL),
(6, 'Updated Sales Owner', 'system', NULL, '{\"attribute\":\"Sales Owner\",\"new\":{\"value\":1,\"label\":\"Example Admin\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-05 16:13:49', '2025-01-05 16:13:49', NULL),
(7, 'Updated Organization', 'system', NULL, '{\"attribute\":\"Organization\",\"new\":{\"value\":1,\"label\":\"Lumosindo\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-05 16:14:44', '2025-01-05 16:14:44', NULL),
(8, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 1, '2025-01-05 16:17:22', '2025-01-05 16:17:22', NULL),
(9, 'Updated Name', 'system', NULL, '{\"attribute\":\"Name\",\"new\":{\"value\":\"Product Pertama\",\"label\":\"Product Pertama\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-05 16:17:22', '2025-01-05 16:17:22', NULL),
(10, 'Updated Description', 'system', NULL, '{\"attribute\":\"Description\",\"new\":{\"value\":\"Deskripsi\",\"label\":\"Deskripsi\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-05 16:17:22', '2025-01-05 16:17:22', NULL),
(11, 'Updated SKU', 'system', NULL, '{\"attribute\":\"SKU\",\"new\":{\"value\":\"SKU\",\"label\":\"SKU\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-05 16:17:22', '2025-01-05 16:17:22', NULL),
(12, 'Updated Price', 'system', NULL, '{\"attribute\":\"Price\",\"new\":{\"value\":12000,\"label\":12000},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-05 16:17:22', '2025-01-05 16:17:22', NULL),
(13, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 1, '2025-01-06 01:46:05', '2025-01-06 01:46:05', NULL),
(14, 'Updated Name', 'system', NULL, '{\"attribute\":\"Name\",\"new\":{\"value\":\"Gudang Pertama\",\"label\":\"Gudang Pertama\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 01:46:05', '2025-01-06 01:46:05', NULL),
(15, 'Updated Description', 'system', NULL, '{\"attribute\":\"Description\",\"new\":{\"value\":\"DESKRIPSI\",\"label\":\"DESKRIPSI\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 01:46:05', '2025-01-06 01:46:05', NULL),
(16, 'Updated Contact Name', 'system', NULL, '{\"attribute\":\"Contact Name\",\"new\":{\"value\":\"Muhammad Firman P\",\"label\":\"Muhammad Firman P\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 01:46:05', '2025-01-06 01:46:05', NULL),
(17, 'Updated Contact Emails', 'system', NULL, '{\"attribute\":\"Contact Emails\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"prayogafirman22@gmail.com\"}],\"label\":\"prayogafirman22@gmail.com (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 01:46:05', '2025-01-06 01:46:05', NULL),
(18, 'Updated Contact Numbers', 'system', NULL, '{\"attribute\":\"Contact Numbers\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"083811212847\"}],\"label\":\"083811212847 (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 01:46:05', '2025-01-06 01:46:05', NULL),
(19, 'Updated Contact Address', 'system', NULL, '{\"attribute\":\"Contact Address\",\"new\":{\"value\":{\"address\":\"KP PASIRKALIKI 03\\/06\",\"city\":\"KABUPATEN BOGOR\",\"country\":\"ID\",\"postcode\":\"16770\",\"state\":\"-\"},\"label\":\"KP PASIRKALIKI 03\\/06<br>16770  KABUPATEN BOGOR<br>-<br>Indonesia<br>\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 01:46:05', '2025-01-06 01:46:05', NULL),
(20, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 1, '2025-01-06 01:50:22', '2025-01-06 01:50:22', NULL),
(21, 'Updated Name', 'system', NULL, '{\"attribute\":\"Name\",\"new\":{\"value\":\"PRDUK\",\"label\":\"PRDUK\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 01:50:22', '2025-01-06 01:50:22', NULL),
(22, 'Updated Description', 'system', NULL, '{\"attribute\":\"Description\",\"new\":{\"value\":\"DESKRIPSI\",\"label\":\"DESKRIPSI\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 01:50:22', '2025-01-06 01:50:22', NULL),
(23, 'Updated SKU', 'system', NULL, '{\"attribute\":\"SKU\",\"new\":{\"value\":\"WRTYGIU\",\"label\":\"WRTYGIU\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 01:50:22', '2025-01-06 01:50:22', NULL),
(24, 'Updated Price', 'system', NULL, '{\"attribute\":\"Price\",\"new\":{\"value\":1000,\"label\":1000},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 01:50:22', '2025-01-06 01:50:22', NULL),
(25, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 1, '2025-01-06 02:20:09', '2025-01-06 02:20:09', NULL),
(26, 'Updated Name', 'system', NULL, '{\"attribute\":\"Name\",\"new\":{\"value\":\"FIRMAN\",\"label\":\"FIRMAN\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:20:09', '2025-01-06 02:20:09', NULL),
(27, 'Updated Emails', 'system', NULL, '{\"attribute\":\"Emails\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"FIRMAN@ADACTIVE.ASIA\"}],\"label\":\"FIRMAN@ADACTIVE.ASIA (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:20:09', '2025-01-06 02:20:09', NULL),
(28, 'Updated Contact Numbers', 'system', NULL, '{\"attribute\":\"Contact Numbers\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"0838112837\"}],\"label\":\"0838112837 (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:20:09', '2025-01-06 02:20:09', NULL),
(29, 'Updated Job Title', 'system', NULL, '{\"attribute\":\"Job Title\",\"new\":{\"value\":\"Software Development\",\"label\":\"Software Development\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:20:09', '2025-01-06 02:20:09', NULL),
(30, 'Updated Sales Owner', 'system', NULL, '{\"attribute\":\"Sales Owner\",\"new\":{\"value\":1,\"label\":\"Ditajaya Admin\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:20:09', '2025-01-06 02:20:09', NULL),
(31, 'Updated Organization', 'system', NULL, '{\"attribute\":\"Organization\",\"new\":{\"value\":2,\"label\":\"DITAJAYA\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:20:09', '2025-01-06 02:20:09', NULL),
(32, NULL, 'note', 'DIA MAU BIKIN APP', NULL, NULL, NULL, 1, 1, '2025-01-06 02:21:16', '2025-01-06 02:21:16', NULL),
(33, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 1, '2025-01-06 02:26:39', '2025-01-06 02:26:39', NULL),
(34, 'Updated Title', 'system', NULL, '{\"attribute\":\"Title\",\"new\":{\"value\":\"lorem\",\"label\":\"lorem\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:26:39', '2025-01-06 02:26:39', NULL),
(35, 'Updated Description', 'system', NULL, '{\"attribute\":\"Description\",\"new\":{\"value\":\"deskripsi\",\"label\":\"deskripsi\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:26:39', '2025-01-06 02:26:39', NULL),
(36, 'Updated Lead Value', 'system', NULL, '{\"attribute\":\"Lead Value\",\"new\":{\"value\":10000,\"label\":\"IDR\\u00a010,000.00\"},\"old\":{\"value\":null,\"label\":\"IDR\\u00a00.00\"}}', NULL, NULL, 1, 1, '2025-01-06 02:26:39', '2025-01-06 02:26:39', NULL),
(37, 'Updated Source', 'system', NULL, '{\"attribute\":\"Source\",\"new\":{\"value\":5,\"label\":\"Direct\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:26:39', '2025-01-06 02:26:39', NULL),
(38, 'Updated Type', 'system', NULL, '{\"attribute\":\"Type\",\"new\":{\"value\":1,\"label\":\"New Business\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:26:39', '2025-01-06 02:26:39', NULL),
(39, 'Updated Sales Owner', 'system', NULL, '{\"attribute\":\"Sales Owner\",\"new\":{\"value\":1,\"label\":\"Ditajaya Admin\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:26:39', '2025-01-06 02:26:39', NULL),
(40, 'Updated Expected Close Date', 'system', NULL, '{\"attribute\":\"Expected Close Date\",\"new\":{\"value\":\"2025-01-10\",\"label\":\"Fri Jan 10, 2025\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:26:39', '2025-01-06 02:26:39', NULL),
(41, 'Updated Pipeline', 'system', NULL, '{\"attribute\":\"Pipeline\",\"new\":{\"value\":1,\"label\":\"Default Pipeline\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:26:39', '2025-01-06 02:26:39', NULL),
(42, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":1,\"label\":\"New\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:26:39', '2025-01-06 02:26:39', NULL),
(44, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":4,\"label\":\"Negotiation\"},\"old\":{\"value\":1,\"label\":\"New\"}}', NULL, NULL, 1, 1, '2025-01-06 02:30:18', '2025-01-06 02:30:18', NULL),
(45, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":1,\"label\":\"New\"},\"old\":{\"value\":4,\"label\":\"Negotiation\"}}', NULL, NULL, 1, 1, '2025-01-06 02:30:20', '2025-01-06 02:30:20', NULL),
(46, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":4,\"label\":\"Negotiation\"},\"old\":{\"value\":1,\"label\":\"New\"}}', NULL, NULL, 1, 1, '2025-01-06 02:30:26', '2025-01-06 02:30:26', NULL),
(47, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":2,\"label\":\"Follow Up\"},\"old\":{\"value\":4,\"label\":\"Negotiation\"}}', NULL, NULL, 1, 1, '2025-01-06 02:30:46', '2025-01-06 02:30:46', NULL),
(48, 'Lorem', 'call', 'Deskripsi', NULL, '2025-01-06 12:00:00', '2025-01-07 12:00:00', 1, 1, '2025-01-06 02:31:14', '2025-01-06 02:32:14', NULL),
(49, 'Updated closed_at', 'system', NULL, '{\"attribute\":\"closed_at\",\"new\":{\"value\":\"2025-01-06 09:37:29\",\"label\":\"2025-01-06 09:37:29\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 02:37:29', '2025-01-06 02:37:29', NULL),
(50, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":5,\"label\":\"Won\"},\"old\":{\"value\":2,\"label\":\"Follow Up\"}}', NULL, NULL, 1, 1, '2025-01-06 02:37:29', '2025-01-06 02:37:29', NULL),
(51, 'Updated closed_at', 'system', NULL, '{\"attribute\":\"closed_at\",\"new\":{\"value\":\"2025-01-06 09:38:45\",\"label\":\"2025-01-06 09:38:45\"},\"old\":{\"value\":\"2025-01-06T04:07:29.000000Z\",\"label\":\"2025-01-06T04:07:29.000000Z\"}}', NULL, NULL, 1, 1, '2025-01-06 02:38:45', '2025-01-06 02:38:45', NULL),
(52, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":6,\"label\":\"Lost\"},\"old\":{\"value\":5,\"label\":\"Won\"}}', NULL, NULL, 1, 1, '2025-01-06 02:38:45', '2025-01-06 02:38:45', NULL),
(53, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 1, '2025-01-06 03:14:51', '2025-01-06 03:14:51', NULL),
(54, 'Updated Name', 'system', NULL, '{\"attribute\":\"Name\",\"new\":{\"value\":\"Lorem\",\"label\":\"Lorem\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 03:14:51', '2025-01-06 03:14:51', NULL),
(55, 'Updated Emails', 'system', NULL, '{\"attribute\":\"Emails\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"lorem@gmail.com\"}],\"label\":\"lorem@gmail.com (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 03:14:52', '2025-01-06 03:14:52', NULL),
(56, 'Updated Contact Numbers', 'system', NULL, '{\"attribute\":\"Contact Numbers\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"083812831273\"}],\"label\":\"083812831273 (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-01-06 03:14:52', '2025-01-06 03:14:52', NULL),
(57, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 1, '2025-02-05 22:53:10', '2025-02-05 22:53:10', NULL),
(58, 'Updated Name', 'system', NULL, '{\"attribute\":\"Name\",\"new\":{\"value\":\"Muhammad Firman P\",\"label\":\"Muhammad Firman P\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-05 22:53:10', '2025-02-05 22:53:10', NULL),
(59, 'Updated Description', 'system', NULL, '{\"attribute\":\"Description\",\"new\":{\"value\":\"DESC\",\"label\":\"DESC\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-05 22:53:10', '2025-02-05 22:53:10', NULL),
(60, 'Updated SKU', 'system', NULL, '{\"attribute\":\"SKU\",\"new\":{\"value\":123123,\"label\":123123},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-05 22:53:10', '2025-02-05 22:53:10', NULL),
(61, 'Updated Price', 'system', NULL, '{\"attribute\":\"Price\",\"new\":{\"value\":1000,\"label\":1000},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-05 22:53:10', '2025-02-05 22:53:10', NULL),
(62, 'Updated Category Product', 'system', NULL, '{\"attribute\":\"Category Product\",\"new\":{\"value\":\"CATGORY\",\"label\":\"CATGORY\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-05 22:53:10', '2025-02-05 22:53:10', NULL),
(63, 'Updated Reference Part Number', 'system', NULL, '{\"attribute\":\"Reference Part Number\",\"new\":{\"value\":\"jfladkjfldksaf\",\"label\":\"jfladkjfldksaf\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-05 22:53:10', '2025-02-05 22:53:10', NULL),
(64, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 1, '2025-02-05 23:00:51', '2025-02-05 23:00:51', NULL),
(65, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 1, '2025-02-05 23:03:41', '2025-02-05 23:03:41', NULL),
(66, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 1, '2025-02-05 23:05:08', '2025-02-05 23:05:08', NULL),
(67, 'Updated Organization', 'system', NULL, '{\"attribute\":\"Organization\",\"new\":{\"value\":null,\"label\":null},\"old\":{\"value\":1,\"label\":\"Lumosindo\"}}', NULL, NULL, 1, 1, '2025-02-06 08:05:34', '2025-02-06 08:05:34', NULL),
(68, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 1, '2025-02-06 08:05:34', '2025-02-06 08:05:34', NULL),
(69, 'Updated Title', 'system', NULL, '{\"attribute\":\"Title\",\"new\":{\"value\":\"Lorem Ipsum\",\"label\":\"Lorem Ipsum\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-06 08:05:34', '2025-02-06 08:05:34', NULL),
(70, 'Updated Description', 'system', NULL, '{\"attribute\":\"Description\",\"new\":{\"value\":\"Deskripsip\",\"label\":\"Deskripsip\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-06 08:05:34', '2025-02-06 08:05:34', NULL),
(71, 'Updated Lead Value', 'system', NULL, '{\"attribute\":\"Lead Value\",\"new\":{\"value\":12000,\"label\":\"IDR\\u00a012,000.00\"},\"old\":{\"value\":null,\"label\":\"IDR\\u00a00.00\"}}', NULL, NULL, 1, 1, '2025-02-06 08:05:34', '2025-02-06 08:05:34', NULL),
(72, 'Updated Source', 'system', NULL, '{\"attribute\":\"Source\",\"new\":{\"value\":5,\"label\":\"Direct\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-06 08:05:34', '2025-02-06 08:05:34', NULL),
(73, 'Updated Type', 'system', NULL, '{\"attribute\":\"Type\",\"new\":{\"value\":1,\"label\":\"New Business\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-06 08:05:34', '2025-02-06 08:05:34', NULL),
(74, 'Updated Sales Owner', 'system', NULL, '{\"attribute\":\"Sales Owner\",\"new\":{\"value\":1,\"label\":\"Ditajaya Admin\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-06 08:05:34', '2025-02-06 08:05:34', NULL),
(75, 'Updated Expected Close Date', 'system', NULL, '{\"attribute\":\"Expected Close Date\",\"new\":{\"value\":\"2025-02-06\",\"label\":\"Thu Feb 06, 2025\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-06 08:05:34', '2025-02-06 08:05:34', NULL),
(76, 'Updated Pipeline', 'system', NULL, '{\"attribute\":\"Pipeline\",\"new\":{\"value\":1,\"label\":\"Default Pipeline\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-06 08:05:34', '2025-02-06 08:05:34', NULL),
(77, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":1,\"label\":\"New\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-06 08:05:34', '2025-02-06 08:05:34', NULL),
(78, 'Luch Bareng Klien', 'lunch', 'Deskripsinya dsini', NULL, '2025-02-06 12:00:00', '2025-02-06 13:00:00', 0, 1, '2025-02-06 08:07:28', '2025-02-06 08:07:28', 'Restoran terenak'),
(79, NULL, 'note', 'Notes terbaru', NULL, NULL, NULL, 1, 1, '2025-02-06 08:07:57', '2025-02-06 08:07:57', NULL),
(80, 'File Penawaran', 'file', 'Deskripsi', NULL, NULL, NULL, 0, 1, '2025-02-06 08:09:11', '2025-02-06 08:09:11', NULL),
(81, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":2,\"label\":\"Follow Up\"},\"old\":{\"value\":1,\"label\":\"New\"}}', NULL, NULL, 1, 1, '2025-02-06 08:09:47', '2025-02-06 08:09:47', NULL),
(82, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":1,\"label\":\"New\"},\"old\":{\"value\":2,\"label\":\"Follow Up\"}}', NULL, NULL, 1, 1, '2025-02-06 08:09:50', '2025-02-06 08:09:50', NULL),
(83, 'Updated closed_at', 'system', NULL, '{\"attribute\":\"closed_at\",\"new\":{\"value\":\"2025-02-06 15:11:02\",\"label\":\"2025-02-06 15:11:02\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 1, '2025-02-06 08:11:02', '2025-02-06 08:11:02', NULL),
(84, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":6,\"label\":\"Lost\"},\"old\":{\"value\":1,\"label\":\"New\"}}', NULL, NULL, 1, 1, '2025-02-06 08:11:02', '2025-02-06 08:11:02', NULL),
(85, 'Updated closed_at', 'system', NULL, '{\"attribute\":\"closed_at\",\"new\":{\"value\":\"2025-02-06 15:11:25\",\"label\":\"2025-02-06 15:11:25\"},\"old\":{\"value\":\"2025-01-06T04:08:45.000000Z\",\"label\":\"2025-01-06T04:08:45.000000Z\"}}', NULL, NULL, 1, 1, '2025-02-06 08:11:25', '2025-02-06 08:11:25', NULL),
(86, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":5,\"label\":\"Won\"},\"old\":{\"value\":6,\"label\":\"Lost\"}}', NULL, NULL, 1, 1, '2025-02-06 08:11:25', '2025-02-06 08:11:25', NULL),
(87, 'Updated closed_at', 'system', NULL, '{\"attribute\":\"closed_at\",\"new\":{\"value\":\"2025-02-06 15:11:44\",\"label\":\"2025-02-06 15:11:44\"},\"old\":{\"value\":\"2025-02-06T09:41:02.000000Z\",\"label\":\"2025-02-06T09:41:02.000000Z\"}}', NULL, NULL, 1, 1, '2025-02-06 08:11:44', '2025-02-06 08:11:44', NULL),
(88, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":5,\"label\":\"Won\"},\"old\":{\"value\":6,\"label\":\"Lost\"}}', NULL, NULL, 1, 1, '2025-02-06 08:11:44', '2025-02-06 08:11:44', NULL),
(89, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 4, '2025-03-11 15:25:35', '2025-03-11 15:25:35', NULL),
(90, 'Updated Name', 'system', NULL, '{\"attribute\":\"Name\",\"new\":{\"value\":\"Person\",\"label\":\"Person\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-11 15:25:35', '2025-03-11 15:25:35', NULL),
(91, 'Updated Emails', 'system', NULL, '{\"attribute\":\"Emails\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"haha@gmail.com\"}],\"label\":\"haha@gmail.com (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-11 15:25:35', '2025-03-11 15:25:35', NULL),
(92, 'Updated Contact Numbers', 'system', NULL, '{\"attribute\":\"Contact Numbers\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"123123\"}],\"label\":\"123123 (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-11 15:25:35', '2025-03-11 15:25:35', NULL),
(93, 'Updated Job Title', 'system', NULL, '{\"attribute\":\"Job Title\",\"new\":{\"value\":\"Job Title\",\"label\":\"Job Title\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-11 15:25:35', '2025-03-11 15:25:35', NULL),
(94, 'Updated Sales Owner', 'system', NULL, '{\"attribute\":\"Sales Owner\",\"new\":{\"value\":4,\"label\":\"Dimas\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-11 15:25:35', '2025-03-11 15:25:35', NULL),
(95, 'Updated Organization', 'system', NULL, '{\"attribute\":\"Organization\",\"new\":{\"value\":355,\"label\":\"PT Adatex\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-11 15:25:35', '2025-03-11 15:25:35', NULL),
(96, 'Updated Organization', 'system', NULL, '{\"attribute\":\"Organization\",\"new\":{\"value\":null,\"label\":null},\"old\":{\"value\":355,\"label\":\"PT Adatex\"}}', NULL, NULL, 1, 4, '2025-03-21 06:43:57', '2025-03-21 06:43:57', NULL),
(97, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 4, '2025-03-21 06:43:57', '2025-03-21 06:43:57', NULL),
(98, 'Updated Title', 'system', NULL, '{\"attribute\":\"Title\",\"new\":{\"value\":\"Title\",\"label\":\"Title\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-21 06:43:57', '2025-03-21 06:43:57', NULL),
(99, 'Updated Description', 'system', NULL, '{\"attribute\":\"Description\",\"new\":{\"value\":\"Deskripsi\",\"label\":\"Deskripsi\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-21 06:43:57', '2025-03-21 06:43:57', NULL),
(100, 'Updated Lead Value', 'system', NULL, '{\"attribute\":\"Lead Value\",\"new\":{\"value\":10000,\"label\":\"IDR\\u00a010,000.00\"},\"old\":{\"value\":null,\"label\":\"IDR\\u00a00.00\"}}', NULL, NULL, 1, 4, '2025-03-21 06:43:57', '2025-03-21 06:43:57', NULL),
(101, 'Updated Source', 'system', NULL, '{\"attribute\":\"Source\",\"new\":{\"value\":3,\"label\":\"Web Form\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-21 06:43:57', '2025-03-21 06:43:57', NULL),
(102, 'Updated Type', 'system', NULL, '{\"attribute\":\"Type\",\"new\":{\"value\":1,\"label\":\"New Business\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-21 06:43:57', '2025-03-21 06:43:57', NULL),
(103, 'Updated Sales Owner', 'system', NULL, '{\"attribute\":\"Sales Owner\",\"new\":{\"value\":4,\"label\":\"Dimas\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-21 06:43:57', '2025-03-21 06:43:57', NULL),
(104, 'Updated Expected Close Date', 'system', NULL, '{\"attribute\":\"Expected Close Date\",\"new\":{\"value\":\"2025-03-21\",\"label\":\"Fri Mar 21, 2025\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-21 06:43:57', '2025-03-21 06:43:57', NULL),
(105, 'Updated Pipeline', 'system', NULL, '{\"attribute\":\"Pipeline\",\"new\":{\"value\":1,\"label\":\"Default Pipeline\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-21 06:43:57', '2025-03-21 06:43:57', NULL),
(106, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":1,\"label\":\"New\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 4, '2025-03-21 06:43:57', '2025-03-21 06:43:57', NULL),
(107, 'Title', 'call', 'Deskripsi', NULL, '2025-03-21 12:00:00', '2025-03-21 12:00:00', 0, 4, '2025-03-21 07:30:47', '2025-03-21 07:30:47', 'Location'),
(108, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(109, 'Updated Name', 'system', NULL, '{\"attribute\":\"Name\",\"new\":{\"value\":\"Basuki\",\"label\":\"Basuki\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(110, 'Updated Emails', 'system', NULL, '{\"attribute\":\"Emails\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"basuki@cba.com\"}],\"label\":\"basuki@cba.com (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(111, 'Updated Contact Numbers', 'system', NULL, '{\"attribute\":\"Contact Numbers\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"\"}],\"label\":\" (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(112, 'Updated Organization', 'system', NULL, '{\"attribute\":\"Organization\",\"new\":{\"value\":840,\"label\":\"PT CENTA BRASINDO ABADI CHEMICAL\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(113, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(114, 'Updated Title', 'system', NULL, '{\"attribute\":\"Title\",\"new\":{\"value\":\"FU Penawaran Chiller Centra Brasindo\",\"label\":\"FU Penawaran Chiller Centra Brasindo\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(115, 'Updated Description', 'system', NULL, '{\"attribute\":\"Description\",\"new\":{\"value\":\"FU Penawaran Chiller Centra Brasindo Mchill 3,14. Saat ini ada perubahan spek dari 2 HP ke 3HP sehingga masih butuh extend waktu lagi menyesuakain spek baru.\",\"label\":\"FU Penawaran Chiller Centra Brasindo Mchill 3,14. Saat ini ada perubahan spek dari 2 HP ke 3HP sehingga masih butuh extend waktu lagi menyesuakain spek baru.\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(116, 'Updated Lead Value', 'system', NULL, '{\"attribute\":\"Lead Value\",\"new\":{\"value\":30100000,\"label\":\"IDR\\u00a030,100,000.00\"},\"old\":{\"value\":null,\"label\":\"IDR\\u00a00.00\"}}', NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(117, 'Updated Source', 'system', NULL, '{\"attribute\":\"Source\",\"new\":{\"value\":4,\"label\":\"Phone\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(118, 'Updated Type', 'system', NULL, '{\"attribute\":\"Type\",\"new\":{\"value\":2,\"label\":\"Existing Business\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(119, 'Updated Sales Owner', 'system', NULL, '{\"attribute\":\"Sales Owner\",\"new\":{\"value\":6,\"label\":\"Lea\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(120, 'Updated Expected Close Date', 'system', NULL, '{\"attribute\":\"Expected Close Date\",\"new\":{\"value\":\"2025-06-19\",\"label\":\"Thu Jun 19, 2025\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(121, 'Updated Pipeline', 'system', NULL, '{\"attribute\":\"Pipeline\",\"new\":{\"value\":1,\"label\":\"Default Pipeline\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(122, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":1,\"label\":\"New\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL),
(123, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 6, '2025-05-08 17:06:43', '2025-05-08 17:06:43', NULL),
(124, 'Updated Name', 'system', NULL, '{\"attribute\":\"Name\",\"new\":{\"value\":\"ruli\",\"label\":\"ruli\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 17:06:43', '2025-05-08 17:06:43', NULL),
(125, 'Updated Emails', 'system', NULL, '{\"attribute\":\"Emails\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"rullian@semengaruda.com\"}],\"label\":\"rullian@semengaruda.com (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 17:06:43', '2025-05-08 17:06:43', NULL),
(126, 'Updated Contact Numbers', 'system', NULL, '{\"attribute\":\"Contact Numbers\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"\"}],\"label\":\" (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 17:06:43', '2025-05-08 17:06:43', NULL),
(127, 'Updated Organization', 'system', NULL, '{\"attribute\":\"Organization\",\"new\":{\"value\":824,\"label\":\"PT JUI SHIN INDONESIA\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 17:06:43', '2025-05-08 17:06:43', NULL),
(128, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 6, '2025-05-08 17:06:43', '2025-05-08 17:06:43', NULL),
(129, 'Updated Title', 'system', NULL, '{\"attribute\":\"Title\",\"new\":{\"value\":\"Fu Penawaran Semen Garuda\",\"label\":\"Fu Penawaran Semen Garuda\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 17:06:43', '2025-05-08 17:06:43', NULL),
(130, 'Updated Description', 'system', NULL, '{\"attribute\":\"Description\",\"new\":{\"value\":\"Follow up harga Air filter masih belum diada jawaban dari purchasing. mau revisi penawaran\",\"label\":\"Follow up harga Air filter masih belum diada jawaban dari purchasing. mau revisi penawaran\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 17:06:43', '2025-05-08 17:06:43', NULL),
(131, 'Updated Lead Value', 'system', NULL, '{\"attribute\":\"Lead Value\",\"new\":{\"value\":143350000,\"label\":\"IDR\\u00a0143,350,000.00\"},\"old\":{\"value\":null,\"label\":\"IDR\\u00a00.00\"}}', NULL, NULL, 1, 6, '2025-05-08 17:06:44', '2025-05-08 17:06:44', NULL),
(132, 'Updated Source', 'system', NULL, '{\"attribute\":\"Source\",\"new\":{\"value\":4,\"label\":\"Phone\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 17:06:44', '2025-05-08 17:06:44', NULL),
(133, 'Updated Type', 'system', NULL, '{\"attribute\":\"Type\",\"new\":{\"value\":2,\"label\":\"Existing Business\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 17:06:44', '2025-05-08 17:06:44', NULL),
(134, 'Updated Sales Owner', 'system', NULL, '{\"attribute\":\"Sales Owner\",\"new\":{\"value\":6,\"label\":\"Lea\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 17:06:44', '2025-05-08 17:06:44', NULL),
(135, 'Updated Expected Close Date', 'system', NULL, '{\"attribute\":\"Expected Close Date\",\"new\":{\"value\":\"2025-05-16\",\"label\":\"Fri May 16, 2025\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 17:06:44', '2025-05-08 17:06:44', NULL),
(136, 'Updated Pipeline', 'system', NULL, '{\"attribute\":\"Pipeline\",\"new\":{\"value\":1,\"label\":\"Default Pipeline\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 17:06:44', '2025-05-08 17:06:44', NULL),
(137, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":1,\"label\":\"New\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 6, '2025-05-08 17:06:44', '2025-05-08 17:06:44', NULL),
(138, 'Updated Name', 'system', NULL, '{\"attribute\":\"Name\",\"new\":{\"value\":\"Samsul\",\"label\":\"Samsul\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 8, '2025-05-13 16:17:04', '2025-05-13 16:17:04', NULL),
(139, 'Updated Emails', 'system', NULL, '{\"attribute\":\"Emails\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"SAMSUL@GMAIL.COM\"}],\"label\":\"SAMSUL@GMAIL.COM (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 8, '2025-05-13 16:17:04', '2025-05-13 16:17:04', NULL),
(140, 'Updated Contact Numbers', 'system', NULL, '{\"attribute\":\"Contact Numbers\",\"new\":{\"value\":[{\"label\":\"work\",\"value\":\"0215855538\"}],\"label\":\"0215855538 (work)\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 8, '2025-05-13 16:17:04', '2025-05-13 16:17:04', NULL),
(141, 'Updated Organization', 'system', NULL, '{\"attribute\":\"Organization\",\"new\":{\"value\":1056,\"label\":\"PT Heinz ABC Indonesia\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 8, '2025-05-13 16:17:04', '2025-05-13 16:17:04', NULL),
(142, 'Created', 'system', NULL, NULL, NULL, NULL, 1, 8, '2025-05-13 16:17:04', '2025-05-13 16:17:04', NULL),
(143, 'Updated Title', 'system', NULL, '{\"attribute\":\"Title\",\"new\":{\"value\":\"DMP02\",\"label\":\"DMP02\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 8, '2025-05-13 16:17:04', '2025-05-13 16:17:04', NULL),
(144, 'Updated Description', 'system', NULL, '{\"attribute\":\"Description\",\"new\":{\"value\":\"PENAWARAN FILTER\",\"label\":\"PENAWARAN FILTER\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 8, '2025-05-13 16:17:05', '2025-05-13 16:17:05', NULL),
(145, 'Updated Lead Value', 'system', NULL, '{\"attribute\":\"Lead Value\",\"new\":{\"value\":9000000,\"label\":\"IDR\\u00a09,000,000.00\"},\"old\":{\"value\":null,\"label\":\"IDR\\u00a00.00\"}}', NULL, NULL, 1, 8, '2025-05-13 16:17:05', '2025-05-13 16:17:05', NULL),
(146, 'Updated Source', 'system', NULL, '{\"attribute\":\"Source\",\"new\":{\"value\":4,\"label\":\"Phone\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 8, '2025-05-13 16:17:05', '2025-05-13 16:17:05', NULL),
(147, 'Updated Type', 'system', NULL, '{\"attribute\":\"Type\",\"new\":{\"value\":2,\"label\":\"Existing Business\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 8, '2025-05-13 16:17:05', '2025-05-13 16:17:05', NULL),
(148, 'Updated Sales Owner', 'system', NULL, '{\"attribute\":\"Sales Owner\",\"new\":{\"value\":8,\"label\":\"Tarie\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 8, '2025-05-13 16:17:05', '2025-05-13 16:17:05', NULL),
(149, 'Updated Expected Close Date', 'system', NULL, '{\"attribute\":\"Expected Close Date\",\"new\":{\"value\":\"2025-05-15\",\"label\":\"Thu May 15, 2025\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 8, '2025-05-13 16:17:05', '2025-05-13 16:17:05', NULL),
(150, 'Updated Pipeline', 'system', NULL, '{\"attribute\":\"Pipeline\",\"new\":{\"value\":1,\"label\":\"Default Pipeline\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 8, '2025-05-13 16:17:05', '2025-05-13 16:17:05', NULL),
(151, 'Updated Stage', 'system', NULL, '{\"attribute\":\"Stage\",\"new\":{\"value\":1,\"label\":\"New\"},\"old\":{\"value\":null,\"label\":null}}', NULL, NULL, 1, 8, '2025-05-13 16:17:05', '2025-05-13 16:17:05', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_files`
--

CREATE TABLE `activity_files` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity_files`
--

INSERT INTO `activity_files` (`id`, `name`, `path`, `activity_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsumm', 'activities/80/mIE1URJ57bJBM6DH67eDT0JUTzdZ22Lk8Aaol1Sh.pdf', 80, '2025-02-06 08:09:11', '2025-02-06 08:09:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_participants`
--

CREATE TABLE `activity_participants` (
  `id` int UNSIGNED NOT NULL,
  `activity_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `person_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity_participants`
--

INSERT INTO `activity_participants` (`id`, `activity_id`, `user_id`, `person_id`) VALUES
(3, 48, 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `attributes`
--

CREATE TABLE `attributes` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lookup_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int DEFAULT NULL,
  `validation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_unique` tinyint(1) NOT NULL DEFAULT '0',
  `quick_add` tinyint(1) NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `attributes`
--

INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `lookup_type`, `entity_type`, `sort_order`, `validation`, `is_required`, `is_unique`, `quick_add`, `is_user_defined`, `created_at`, `updated_at`) VALUES
(19, 'title', 'Title', 'text', NULL, 'leads', 1, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(20, 'description', 'Description', 'textarea', NULL, 'leads', 2, NULL, 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(21, 'lead_value', 'Lead Value', 'price', NULL, 'leads', 3, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(22, 'lead_source_id', 'Source', 'select', 'lead_sources', 'leads', 4, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(23, 'lead_type_id', 'Type', 'select', 'lead_types', 'leads', 5, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(24, 'user_id', 'Sales Owner', 'select', 'users', 'leads', 7, NULL, 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(25, 'expected_close_date', 'Expected Close Date', 'date', NULL, 'leads', 8, NULL, 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(26, 'lead_pipeline_id', 'Pipeline', 'lookup', 'lead_pipelines', 'leads', 9, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(27, 'lead_pipeline_stage_id', 'Stage', 'lookup', 'lead_pipeline_stages', 'leads', 10, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(28, 'name', 'Name', 'text', NULL, 'persons', 1, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(29, 'emails', 'Emails', 'email', NULL, 'persons', 2, NULL, 1, 1, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(30, 'contact_numbers', 'Contact Numbers', 'phone', NULL, 'persons', 3, 'numeric', 0, 1, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(31, 'job_title', 'Job Title', 'text', NULL, 'persons', 4, NULL, 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(32, 'user_id', 'Sales Owner', 'lookup', 'users', 'persons', 5, NULL, 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(33, 'organization_id', 'Organization', 'lookup', 'organizations', 'persons', 6, NULL, 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(34, 'name', 'Name', 'text', NULL, 'organizations', 1, NULL, 1, 1, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(35, 'address', 'Address', 'address', NULL, 'organizations', 2, NULL, 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(36, 'user_id', 'Sales Owner', 'lookup', 'users', 'organizations', 3, NULL, 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(37, 'name', 'Name', 'text', NULL, 'products', 1, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(38, 'description', 'Description', 'textarea', NULL, 'products', 2, NULL, 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(39, 'sku', 'SKU', 'text', NULL, 'products', 3, NULL, 1, 1, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(40, 'quantity', 'Quantity', 'text', NULL, 'products', 4, 'numeric', 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(41, 'price', 'Price', 'text', NULL, 'products', 5, 'decimal', 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(42, 'user_id', 'Sales Owner', 'select', 'users', 'quotes', 1, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(43, 'subject', 'Subject', 'text', NULL, 'quotes', 2, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(44, 'description', 'Description', 'textarea', NULL, 'quotes', 3, NULL, 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(45, 'billing_address', 'Billing Address', 'address', NULL, 'quotes', 4, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(46, 'shipping_address', 'Shipping Address', 'address', NULL, 'quotes', 5, NULL, 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(47, 'discount_percent', 'Discount Percent', 'text', NULL, 'quotes', 6, 'decimal', 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(48, 'discount_amount', 'Discount Amount', 'price', NULL, 'quotes', 7, 'decimal', 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(49, 'tax_amount', 'Tax Amount', 'price', NULL, 'quotes', 8, 'decimal', 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(50, 'adjustment_amount', 'Adjustment Amount', 'price', NULL, 'quotes', 9, 'decimal', 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(51, 'sub_total', 'Sub Total', 'price', NULL, 'quotes', 10, 'decimal', 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(52, 'grand_total', 'Grand Total', 'price', NULL, 'quotes', 11, 'decimal', 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(53, 'expired_at', 'Expired At', 'date', NULL, 'quotes', 12, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(54, 'person_id', 'Person', 'lookup', 'persons', 'quotes', 13, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(55, 'name', 'Name', 'text', NULL, 'warehouses', 1, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(56, 'description', 'Description', 'textarea', NULL, 'warehouses', 2, NULL, 0, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(57, 'contact_name', 'Contact Name', 'text', NULL, 'warehouses', 3, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(58, 'contact_emails', 'Contact Emails', 'email', NULL, 'warehouses', 4, NULL, 1, 1, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(59, 'contact_numbers', 'Contact Numbers', 'phone', NULL, 'warehouses', 5, 'numeric', 0, 1, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(60, 'contact_address', 'Contact Address', 'address', NULL, 'warehouses', 6, NULL, 1, 0, 1, 0, '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(62, 'ref_part_number', 'Reference Part Number', 'text', NULL, 'products', NULL, NULL, 0, 0, 1, 1, '2025-02-05 18:10:15', '2025-02-05 18:10:15'),
(63, 'category', 'Category', 'text', NULL, 'products', NULL, NULL, 1, 0, 1, 1, '2025-02-05 23:04:50', '2025-02-05 23:04:50'),
(64, 'organization_id', 'Organization', 'lookup', 'organizations', 'organizations', NULL, NULL, 0, 0, 1, 1, '2025-03-21 06:38:37', '2025-03-21 06:38:37'),
(65, 'notes', 'Notes', 'textarea', NULL, 'quotes', NULL, NULL, 0, 0, 1, 1, '2025-03-21 06:39:27', '2025-03-21 06:39:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `attribute_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int UNSIGNED NOT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'leads',
  `text_value` text COLLATE utf8mb4_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `entity_id` int UNSIGNED NOT NULL,
  `attribute_id` int UNSIGNED NOT NULL
) ;

--
-- Dumping data untuk tabel `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `entity_type`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `entity_id`, `attribute_id`) VALUES
(1, 'persons', 'Muhammad Firman P', NULL, NULL, NULL, NULL, NULL, NULL, 1, 28),
(2, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"prayogafirman22@gmail.com\",\"label\":\"work\"}]', 1, 29),
(3, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"083811212847\",\"label\":\"work\"}]', 1, 30),
(4, 'persons', 'Software Development', NULL, NULL, NULL, NULL, NULL, NULL, 1, 31),
(5, 'persons', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 32),
(6, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 33),
(7, 'organizations', 'Lumosindo', NULL, NULL, NULL, NULL, NULL, NULL, 1, 34),
(8, 'organizations', NULL, NULL, NULL, NULL, NULL, NULL, '{\"address\":\"KP PASIRKALIKI 03\\/06\",\"country\":\"ID\",\"state\":\"-\",\"city\":\"KABUPATEN BOGOR\",\"postcode\":\"16770\"}', 1, 35),
(9, 'organizations', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 36),
(10, 'products', 'Product Pertama', NULL, NULL, NULL, NULL, NULL, NULL, 1, 37),
(11, 'products', 'Deskripsi', NULL, NULL, NULL, NULL, NULL, NULL, 1, 38),
(12, 'products', 'SKU', NULL, NULL, NULL, NULL, NULL, NULL, 1, 39),
(13, 'products', '12000', NULL, NULL, NULL, NULL, NULL, NULL, 1, 41),
(14, 'warehouses', 'Gudang Pertama', NULL, NULL, NULL, NULL, NULL, NULL, 1, 55),
(15, 'warehouses', 'DESKRIPSI', NULL, NULL, NULL, NULL, NULL, NULL, 1, 56),
(16, 'warehouses', 'Muhammad Firman P', NULL, NULL, NULL, NULL, NULL, NULL, 1, 57),
(17, 'warehouses', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"prayogafirman22@gmail.com\",\"label\":\"work\"}]', 1, 58),
(18, 'warehouses', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"083811212847\",\"label\":\"work\"}]', 1, 59),
(19, 'warehouses', NULL, NULL, NULL, NULL, NULL, NULL, '{\"address\":\"KP PASIRKALIKI 03\\/06\",\"country\":\"ID\",\"state\":\"-\",\"city\":\"KABUPATEN BOGOR\",\"postcode\":\"16770\"}', 1, 60),
(20, 'products', 'PRDUK', NULL, NULL, NULL, NULL, NULL, NULL, 2, 37),
(21, 'products', 'DESKRIPSI', NULL, NULL, NULL, NULL, NULL, NULL, 2, 38),
(22, 'products', 'WRTYGIU', NULL, NULL, NULL, NULL, NULL, NULL, 2, 39),
(23, 'products', '1000', NULL, NULL, NULL, NULL, NULL, NULL, 2, 41),
(24, 'organizations', 'DITAJAYA', NULL, NULL, NULL, NULL, NULL, NULL, 2, 34),
(25, 'organizations', NULL, NULL, NULL, NULL, NULL, NULL, '{\"address\":\"KP PASIRKALIKI 03\\/06\",\"country\":\"ID\",\"state\":\"-\",\"city\":\"KABUPATEN BOGOR\",\"postcode\":\"16770\"}', 2, 35),
(26, 'organizations', NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, 36),
(27, 'persons', 'FIRMAN', NULL, NULL, NULL, NULL, NULL, NULL, 2, 28),
(28, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"FIRMAN@ADACTIVE.ASIA\",\"label\":\"work\"}]', 2, 29),
(29, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"0838112837\",\"label\":\"work\"}]', 2, 30),
(30, 'persons', 'Software Development', NULL, NULL, NULL, NULL, NULL, NULL, 2, 31),
(31, 'persons', NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, 32),
(32, 'persons', NULL, NULL, 2, NULL, NULL, NULL, NULL, 2, 33),
(33, 'leads', 'lorem', NULL, NULL, NULL, NULL, NULL, NULL, 1, 19),
(34, 'leads', 'deskripsi', NULL, NULL, NULL, NULL, NULL, NULL, 1, 20),
(35, 'leads', NULL, NULL, NULL, 10000, NULL, NULL, NULL, 1, 21),
(36, 'leads', NULL, NULL, 5, NULL, NULL, NULL, NULL, 1, 22),
(37, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 23),
(38, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 24),
(39, 'leads', NULL, NULL, NULL, NULL, NULL, '2025-01-10', NULL, 1, 25),
(40, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 26),
(41, 'leads', NULL, NULL, 5, NULL, NULL, NULL, NULL, 1, 27),
(42, 'quotes', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 42),
(43, 'quotes', 'Lorem Ipsum', NULL, NULL, NULL, NULL, NULL, NULL, 1, 43),
(44, 'quotes', 'Deskripsion', NULL, NULL, NULL, NULL, NULL, NULL, 1, 44),
(45, 'quotes', NULL, NULL, NULL, NULL, NULL, NULL, '{\"address\":\"KP PASIRKALIKI 03\\/06\\r\\nDESA SUKAMAJU KEC MEGAMENDUNG\",\"country\":\"ID\",\"state\":\"-\",\"city\":\"KABUPATEN BOGOR\",\"postcode\":\"16770\"}', 1, 45),
(46, 'quotes', NULL, NULL, NULL, NULL, NULL, NULL, '{\"address\":\"\",\"country\":\"\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', 1, 46),
(47, 'quotes', NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 48),
(48, 'quotes', NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 49),
(49, 'quotes', NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 50),
(50, 'quotes', NULL, NULL, NULL, 12000, NULL, NULL, NULL, 1, 51),
(51, 'quotes', NULL, NULL, NULL, 12000, NULL, NULL, NULL, 1, 52),
(52, 'quotes', NULL, NULL, NULL, NULL, NULL, '2025-01-07', NULL, 1, 53),
(53, 'quotes', NULL, NULL, 2, NULL, NULL, NULL, NULL, 1, 54),
(54, 'persons', 'Lorem', NULL, NULL, NULL, NULL, NULL, NULL, 3, 28),
(55, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"lorem@gmail.com\",\"label\":\"work\"}]', 3, 29),
(56, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"083812831273\",\"label\":\"work\"}]', 3, 30),
(57, 'products', 'Muhammad Firman P', NULL, NULL, NULL, NULL, NULL, NULL, 3, 37),
(58, 'products', 'DESC', NULL, NULL, NULL, NULL, NULL, NULL, 3, 38),
(59, 'products', '123123', NULL, NULL, NULL, NULL, NULL, NULL, 3, 39),
(60, 'products', '1000', NULL, NULL, NULL, NULL, NULL, NULL, 3, 41),
(62, 'products', 'jfladkjfldksaf', NULL, NULL, NULL, NULL, NULL, NULL, 3, 62),
(63, 'leads', 'Lorem Ipsum', NULL, NULL, NULL, NULL, NULL, NULL, 2, 19),
(64, 'leads', 'Deskripsip', NULL, NULL, NULL, NULL, NULL, NULL, 2, 20),
(65, 'leads', NULL, NULL, NULL, 12000, NULL, NULL, NULL, 2, 21),
(66, 'leads', NULL, NULL, 5, NULL, NULL, NULL, NULL, 2, 22),
(67, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, 23),
(68, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, 24),
(69, 'leads', NULL, NULL, NULL, NULL, NULL, '2025-02-06', NULL, 2, 25),
(70, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, 26),
(71, 'leads', NULL, NULL, 5, NULL, NULL, NULL, NULL, 2, 27),
(72, 'organizations', 'Lumosindo Technology', NULL, NULL, NULL, NULL, NULL, NULL, 201, 34),
(73, 'organizations', NULL, NULL, NULL, NULL, NULL, NULL, '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', 201, 35),
(74, 'organizations', NULL, NULL, 1, NULL, NULL, NULL, NULL, 201, 36),
(75, 'quotes', NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, 42),
(76, 'quotes', 'Lorem Ipsum', NULL, NULL, NULL, NULL, NULL, NULL, 2, 43),
(77, 'quotes', 'Deskripsi', NULL, NULL, NULL, NULL, NULL, NULL, 2, 44),
(78, 'quotes', NULL, NULL, NULL, NULL, NULL, NULL, '{\"address\":\"KP PASIRKALIKI 03\\/06\\r\\nDESA SUKAMAJU KEC MEGAMENDUNG\",\"country\":\"ID\",\"state\":\"-\",\"city\":\"KABUPATEN BOGOR\",\"postcode\":\"16770\"}', 2, 45),
(79, 'quotes', NULL, NULL, NULL, NULL, NULL, NULL, '{\"address\":\"KP PASIRKALIKI 03\\/06\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', 2, 46),
(80, 'quotes', NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 48),
(81, 'quotes', NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 49),
(82, 'quotes', NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 50),
(83, 'quotes', NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 51),
(84, 'quotes', NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 52),
(85, 'quotes', NULL, NULL, NULL, NULL, NULL, '2025-03-11', NULL, 2, 53),
(86, 'quotes', NULL, NULL, 3, NULL, NULL, NULL, NULL, 2, 54),
(87, 'persons', 'Person', NULL, NULL, NULL, NULL, NULL, NULL, 4, 28),
(88, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"haha@gmail.com\",\"label\":\"work\"}]', 4, 29),
(89, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"123123\",\"label\":\"work\"}]', 4, 30),
(90, 'persons', 'Job Title', NULL, NULL, NULL, NULL, NULL, NULL, 4, 31),
(91, 'persons', NULL, NULL, 4, NULL, NULL, NULL, NULL, 4, 32),
(92, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 33),
(93, 'leads', 'Title', NULL, NULL, NULL, NULL, NULL, NULL, 3, 19),
(94, 'leads', 'Deskripsi', NULL, NULL, NULL, NULL, NULL, NULL, 3, 20),
(95, 'leads', NULL, NULL, NULL, 10000, NULL, NULL, NULL, 3, 21),
(96, 'leads', NULL, NULL, 3, NULL, NULL, NULL, NULL, 3, 22),
(97, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 3, 23),
(98, 'leads', NULL, NULL, 4, NULL, NULL, NULL, NULL, 3, 24),
(99, 'leads', NULL, NULL, NULL, NULL, NULL, '2025-03-21', NULL, 3, 25),
(100, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 3, 26),
(101, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 3, 27),
(102, 'persons', 'Basuki', NULL, NULL, NULL, NULL, NULL, NULL, 2156, 28),
(103, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"basuki@cba.com\",\"label\":\"work\"}]', 2156, 29),
(104, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"\",\"label\":\"work\"}]', 2156, 30),
(105, 'persons', NULL, NULL, 840, NULL, NULL, NULL, NULL, 2156, 33),
(106, 'leads', 'FU Penawaran Chiller Centra Brasindo', NULL, NULL, NULL, NULL, NULL, NULL, 4, 19),
(107, 'leads', 'FU Penawaran Chiller Centra Brasindo Mchill 3,14. Saat ini ada perubahan spek dari 2 HP ke 3HP sehingga masih butuh extend waktu lagi menyesuakain spek baru.', NULL, NULL, NULL, NULL, NULL, NULL, 4, 20),
(108, 'leads', NULL, NULL, NULL, 30100000, NULL, NULL, NULL, 4, 21),
(109, 'leads', NULL, NULL, 4, NULL, NULL, NULL, NULL, 4, 22),
(110, 'leads', NULL, NULL, 2, NULL, NULL, NULL, NULL, 4, 23),
(111, 'leads', NULL, NULL, 6, NULL, NULL, NULL, NULL, 4, 24),
(112, 'leads', NULL, NULL, NULL, NULL, NULL, '2025-06-19', NULL, 4, 25),
(113, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 4, 26),
(114, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 4, 27),
(115, 'persons', 'ruli', NULL, NULL, NULL, NULL, NULL, NULL, 2157, 28),
(116, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"rullian@semengaruda.com\",\"label\":\"work\"}]', 2157, 29),
(117, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"\",\"label\":\"work\"}]', 2157, 30),
(118, 'persons', NULL, NULL, 824, NULL, NULL, NULL, NULL, 2157, 33),
(119, 'leads', 'Fu Penawaran Semen Garuda', NULL, NULL, NULL, NULL, NULL, NULL, 5, 19),
(120, 'leads', 'Follow up harga Air filter masih belum diada jawaban dari purchasing. mau revisi penawaran', NULL, NULL, NULL, NULL, NULL, NULL, 5, 20),
(121, 'leads', NULL, NULL, NULL, 143350000, NULL, NULL, NULL, 5, 21),
(122, 'leads', NULL, NULL, 4, NULL, NULL, NULL, NULL, 5, 22),
(123, 'leads', NULL, NULL, 2, NULL, NULL, NULL, NULL, 5, 23),
(124, 'leads', NULL, NULL, 6, NULL, NULL, NULL, NULL, 5, 24),
(125, 'leads', NULL, NULL, NULL, NULL, NULL, '2025-05-16', NULL, 5, 25),
(126, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 5, 26),
(127, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 5, 27),
(128, 'persons', 'Samsul', NULL, NULL, NULL, NULL, NULL, NULL, 1687, 28),
(129, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"SAMSUL@GMAIL.COM\",\"label\":\"work\"}]', 1687, 29),
(130, 'persons', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"value\":\"0215855538\",\"label\":\"work\"}]', 1687, 30),
(131, 'persons', NULL, NULL, 1056, NULL, NULL, NULL, NULL, 1687, 33),
(132, 'leads', 'DMP02', NULL, NULL, NULL, NULL, NULL, NULL, 6, 19),
(133, 'leads', 'PENAWARAN FILTER', NULL, NULL, NULL, NULL, NULL, NULL, 6, 20),
(134, 'leads', NULL, NULL, NULL, 9000000, NULL, NULL, NULL, 6, 21),
(135, 'leads', NULL, NULL, 4, NULL, NULL, NULL, NULL, 6, 22),
(136, 'leads', NULL, NULL, 2, NULL, NULL, NULL, NULL, 6, 23),
(137, 'leads', NULL, NULL, 8, NULL, NULL, NULL, NULL, 6, 24),
(138, 'leads', NULL, NULL, NULL, NULL, NULL, '2025-05-15', NULL, 6, 25),
(139, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 6, 26),
(140, 'leads', NULL, NULL, 1, NULL, NULL, NULL, NULL, 6, 27);

-- --------------------------------------------------------

--
-- Struktur dari tabel `core_config`
--

CREATE TABLE `core_config` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `countries`
--

CREATE TABLE `countries` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AX', 'Åland Islands'),
(3, 'AL', 'Albania'),
(4, 'DZ', 'Algeria'),
(5, 'AS', 'American Samoa'),
(6, 'AD', 'Andorra'),
(7, 'AO', 'Angola'),
(8, 'AI', 'Anguilla'),
(9, 'AQ', 'Antarctica'),
(10, 'AG', 'Antigua & Barbuda'),
(11, 'AR', 'Argentina'),
(12, 'AM', 'Armenia'),
(13, 'AW', 'Aruba'),
(14, 'AC', 'Ascension Island'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia & Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BR', 'Brazil'),
(32, 'IO', 'British Indian Ocean Territory'),
(33, 'VG', 'British Virgin Islands'),
(34, 'BN', 'Brunei'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CA', 'Canada'),
(41, 'IC', 'Canary Islands'),
(42, 'CV', 'Cape Verde'),
(43, 'BQ', 'Caribbean Netherlands'),
(44, 'KY', 'Cayman Islands'),
(45, 'CF', 'Central African Republic'),
(46, 'EA', 'Ceuta & Melilla'),
(47, 'TD', 'Chad'),
(48, 'CL', 'Chile'),
(49, 'CN', 'China'),
(50, 'CX', 'Christmas Island'),
(51, 'CC', 'Cocos (Keeling) Islands'),
(52, 'CO', 'Colombia'),
(53, 'KM', 'Comoros'),
(54, 'CG', 'Congo - Brazzaville'),
(55, 'CD', 'Congo - Kinshasa'),
(56, 'CK', 'Cook Islands'),
(57, 'CR', 'Costa Rica'),
(58, 'CI', 'Côte d’Ivoire'),
(59, 'HR', 'Croatia'),
(60, 'CU', 'Cuba'),
(61, 'CW', 'Curaçao'),
(62, 'CY', 'Cyprus'),
(63, 'CZ', 'Czechia'),
(64, 'DK', 'Denmark'),
(65, 'DG', 'Diego Garcia'),
(66, 'DJ', 'Djibouti'),
(67, 'DM', 'Dominica'),
(68, 'DO', 'Dominican Republic'),
(69, 'EC', 'Ecuador'),
(70, 'EG', 'Egypt'),
(71, 'SV', 'El Salvador'),
(72, 'GQ', 'Equatorial Guinea'),
(73, 'ER', 'Eritrea'),
(74, 'EE', 'Estonia'),
(75, 'ET', 'Ethiopia'),
(76, 'EZ', 'Eurozone'),
(77, 'FK', 'Falkland Islands'),
(78, 'FO', 'Faroe Islands'),
(79, 'FJ', 'Fiji'),
(80, 'FI', 'Finland'),
(81, 'FR', 'France'),
(82, 'GF', 'French Guiana'),
(83, 'PF', 'French Polynesia'),
(84, 'TF', 'French Southern Territories'),
(85, 'GA', 'Gabon'),
(86, 'GM', 'Gambia'),
(87, 'GE', 'Georgia'),
(88, 'DE', 'Germany'),
(89, 'GH', 'Ghana'),
(90, 'GI', 'Gibraltar'),
(91, 'GR', 'Greece'),
(92, 'GL', 'Greenland'),
(93, 'GD', 'Grenada'),
(94, 'GP', 'Guadeloupe'),
(95, 'GU', 'Guam'),
(96, 'GT', 'Guatemala'),
(97, 'GG', 'Guernsey'),
(98, 'GN', 'Guinea'),
(99, 'GW', 'Guinea-Bissau'),
(100, 'GY', 'Guyana'),
(101, 'HT', 'Haiti'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong SAR China'),
(104, 'HU', 'Hungary'),
(105, 'IS', 'Iceland'),
(106, 'IN', 'India'),
(107, 'ID', 'Indonesia'),
(108, 'IR', 'Iran'),
(109, 'IQ', 'Iraq'),
(110, 'IE', 'Ireland'),
(111, 'IM', 'Isle of Man'),
(112, 'IL', 'Israel'),
(113, 'IT', 'Italy'),
(114, 'JM', 'Jamaica'),
(115, 'JP', 'Japan'),
(116, 'JE', 'Jersey'),
(117, 'JO', 'Jordan'),
(118, 'KZ', 'Kazakhstan'),
(119, 'KE', 'Kenya'),
(120, 'KI', 'Kiribati'),
(121, 'XK', 'Kosovo'),
(122, 'KW', 'Kuwait'),
(123, 'KG', 'Kyrgyzstan'),
(124, 'LA', 'Laos'),
(125, 'LV', 'Latvia'),
(126, 'LB', 'Lebanon'),
(127, 'LS', 'Lesotho'),
(128, 'LR', 'Liberia'),
(129, 'LY', 'Libya'),
(130, 'LI', 'Liechtenstein'),
(131, 'LT', 'Lithuania'),
(132, 'LU', 'Luxembourg'),
(133, 'MO', 'Macau SAR China'),
(134, 'MK', 'Macedonia'),
(135, 'MG', 'Madagascar'),
(136, 'MW', 'Malawi'),
(137, 'MY', 'Malaysia'),
(138, 'MV', 'Maldives'),
(139, 'ML', 'Mali'),
(140, 'MT', 'Malta'),
(141, 'MH', 'Marshall Islands'),
(142, 'MQ', 'Martinique'),
(143, 'MR', 'Mauritania'),
(144, 'MU', 'Mauritius'),
(145, 'YT', 'Mayotte'),
(146, 'MX', 'Mexico'),
(147, 'FM', 'Micronesia'),
(148, 'MD', 'Moldova'),
(149, 'MC', 'Monaco'),
(150, 'MN', 'Mongolia'),
(151, 'ME', 'Montenegro'),
(152, 'MS', 'Montserrat'),
(153, 'MA', 'Morocco'),
(154, 'MZ', 'Mozambique'),
(155, 'MM', 'Myanmar (Burma)'),
(156, 'NA', 'Namibia'),
(157, 'NR', 'Nauru'),
(158, 'NP', 'Nepal'),
(159, 'NL', 'Netherlands'),
(160, 'NC', 'New Caledonia'),
(161, 'NZ', 'New Zealand'),
(162, 'NI', 'Nicaragua'),
(163, 'NE', 'Niger'),
(164, 'NG', 'Nigeria'),
(165, 'NU', 'Niue'),
(166, 'NF', 'Norfolk Island'),
(167, 'KP', 'North Korea'),
(168, 'MP', 'Northern Mariana Islands'),
(169, 'NO', 'Norway'),
(170, 'OM', 'Oman'),
(171, 'PK', 'Pakistan'),
(172, 'PW', 'Palau'),
(173, 'PS', 'Palestinian Territories'),
(174, 'PA', 'Panama'),
(175, 'PG', 'Papua New Guinea'),
(176, 'PY', 'Paraguay'),
(177, 'PE', 'Peru'),
(178, 'PH', 'Philippines'),
(179, 'PN', 'Pitcairn Islands'),
(180, 'PL', 'Poland'),
(181, 'PT', 'Portugal'),
(182, 'PR', 'Puerto Rico'),
(183, 'QA', 'Qatar'),
(184, 'RE', 'Réunion'),
(185, 'RO', 'Romania'),
(186, 'RU', 'Russia'),
(187, 'RW', 'Rwanda'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'São Tomé & Príncipe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SX', 'Sint Maarten'),
(198, 'SK', 'Slovakia'),
(199, 'SI', 'Slovenia'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia & South Sandwich Islands'),
(204, 'KR', 'South Korea'),
(205, 'SS', 'South Sudan'),
(206, 'ES', 'Spain'),
(207, 'LK', 'Sri Lanka'),
(208, 'BL', 'St. Barthélemy'),
(209, 'SH', 'St. Helena'),
(210, 'KN', 'St. Kitts & Nevis'),
(211, 'LC', 'St. Lucia'),
(212, 'MF', 'St. Martin'),
(213, 'PM', 'St. Pierre & Miquelon'),
(214, 'VC', 'St. Vincent & Grenadines'),
(215, 'SD', 'Sudan'),
(216, 'SR', 'Suriname'),
(217, 'SJ', 'Svalbard & Jan Mayen'),
(218, 'SZ', 'Swaziland'),
(219, 'SE', 'Sweden'),
(220, 'CH', 'Switzerland'),
(221, 'SY', 'Syria'),
(222, 'TW', 'Taiwan'),
(223, 'TJ', 'Tajikistan'),
(224, 'TZ', 'Tanzania'),
(225, 'TH', 'Thailand'),
(226, 'TL', 'Timor-Leste'),
(227, 'TG', 'Togo'),
(228, 'TK', 'Tokelau'),
(229, 'TO', 'Tonga'),
(230, 'TT', 'Trinidad & Tobago'),
(231, 'TA', 'Tristan da Cunha'),
(232, 'TN', 'Tunisia'),
(233, 'TR', 'Turkey'),
(234, 'TM', 'Turkmenistan'),
(235, 'TC', 'Turks & Caicos Islands'),
(236, 'TV', 'Tuvalu'),
(237, 'UM', 'U.S. Outlying Islands'),
(238, 'VI', 'U.S. Virgin Islands'),
(239, 'UG', 'Uganda'),
(240, 'UA', 'Ukraine'),
(241, 'AE', 'United Arab Emirates'),
(242, 'GB', 'United Kingdom'),
(243, 'UN', 'United Nations'),
(244, 'US', 'United States'),
(245, 'UY', 'Uruguay'),
(246, 'UZ', 'Uzbekistan'),
(247, 'VU', 'Vanuatu'),
(248, 'VA', 'Vatican City'),
(249, 'VE', 'Venezuela'),
(250, 'VN', 'Vietnam'),
(251, 'WF', 'Wallis & Futuna'),
(252, 'EH', 'Western Sahara'),
(253, 'YE', 'Yemen'),
(254, 'ZM', 'Zambia'),
(255, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `country_states`
--

CREATE TABLE `country_states` (
  `id` int UNSIGNED NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `country_states`
--

INSERT INTO `country_states` (`id`, `country_code`, `code`, `name`, `country_id`) VALUES
(1, 'US', 'AL', 'Alabama', 244),
(2, 'US', 'AK', 'Alaska', 244),
(3, 'US', 'AS', 'American Samoa', 244),
(4, 'US', 'AZ', 'Arizona', 244),
(5, 'US', 'AR', 'Arkansas', 244),
(6, 'US', 'AE', 'Armed Forces Africa', 244),
(7, 'US', 'AA', 'Armed Forces Americas', 244),
(8, 'US', 'AE', 'Armed Forces Canada', 244),
(9, 'US', 'AE', 'Armed Forces Europe', 244),
(10, 'US', 'AE', 'Armed Forces Middle East', 244),
(11, 'US', 'AP', 'Armed Forces Pacific', 244),
(12, 'US', 'CA', 'California', 244),
(13, 'US', 'CO', 'Colorado', 244),
(14, 'US', 'CT', 'Connecticut', 244),
(15, 'US', 'DE', 'Delaware', 244),
(16, 'US', 'DC', 'District of Columbia', 244),
(17, 'US', 'FM', 'Federated States Of Micronesia', 244),
(18, 'US', 'FL', 'Florida', 244),
(19, 'US', 'GA', 'Georgia', 244),
(20, 'US', 'GU', 'Guam', 244),
(21, 'US', 'HI', 'Hawaii', 244),
(22, 'US', 'ID', 'Idaho', 244),
(23, 'US', 'IL', 'Illinois', 244),
(24, 'US', 'IN', 'Indiana', 244),
(25, 'US', 'IA', 'Iowa', 244),
(26, 'US', 'KS', 'Kansas', 244),
(27, 'US', 'KY', 'Kentucky', 244),
(28, 'US', 'LA', 'Louisiana', 244),
(29, 'US', 'ME', 'Maine', 244),
(30, 'US', 'MH', 'Marshall Islands', 244),
(31, 'US', 'MD', 'Maryland', 244),
(32, 'US', 'MA', 'Massachusetts', 244),
(33, 'US', 'MI', 'Michigan', 244),
(34, 'US', 'MN', 'Minnesota', 244),
(35, 'US', 'MS', 'Mississippi', 244),
(36, 'US', 'MO', 'Missouri', 244),
(37, 'US', 'MT', 'Montana', 244),
(38, 'US', 'NE', 'Nebraska', 244),
(39, 'US', 'NV', 'Nevada', 244),
(40, 'US', 'NH', 'New Hampshire', 244),
(41, 'US', 'NJ', 'New Jersey', 244),
(42, 'US', 'NM', 'New Mexico', 244),
(43, 'US', 'NY', 'New York', 244),
(44, 'US', 'NC', 'North Carolina', 244),
(45, 'US', 'ND', 'North Dakota', 244),
(46, 'US', 'MP', 'Northern Mariana Islands', 244),
(47, 'US', 'OH', 'Ohio', 244),
(48, 'US', 'OK', 'Oklahoma', 244),
(49, 'US', 'OR', 'Oregon', 244),
(50, 'US', 'PW', 'Palau', 244),
(51, 'US', 'PA', 'Pennsylvania', 244),
(52, 'US', 'PR', 'Puerto Rico', 244),
(53, 'US', 'RI', 'Rhode Island', 244),
(54, 'US', 'SC', 'South Carolina', 244),
(55, 'US', 'SD', 'South Dakota', 244),
(56, 'US', 'TN', 'Tennessee', 244),
(57, 'US', 'TX', 'Texas', 244),
(58, 'US', 'UT', 'Utah', 244),
(59, 'US', 'VT', 'Vermont', 244),
(60, 'US', 'VI', 'Virgin Islands', 244),
(61, 'US', 'VA', 'Virginia', 244),
(62, 'US', 'WA', 'Washington', 244),
(63, 'US', 'WV', 'West Virginia', 244),
(64, 'US', 'WI', 'Wisconsin', 244),
(65, 'US', 'WY', 'Wyoming', 244),
(66, 'CA', 'AB', 'Alberta', 40),
(67, 'CA', 'BC', 'British Columbia', 40),
(68, 'CA', 'MB', 'Manitoba', 40),
(69, 'CA', 'NL', 'Newfoundland and Labrador', 40),
(70, 'CA', 'NB', 'New Brunswick', 40),
(71, 'CA', 'NS', 'Nova Scotia', 40),
(72, 'CA', 'NT', 'Northwest Territories', 40),
(73, 'CA', 'NU', 'Nunavut', 40),
(74, 'CA', 'ON', 'Ontario', 40),
(75, 'CA', 'PE', 'Prince Edward Island', 40),
(76, 'CA', 'QC', 'Quebec', 40),
(77, 'CA', 'SK', 'Saskatchewan', 40),
(78, 'CA', 'YT', 'Yukon Territory', 40),
(79, 'DE', 'NDS', 'Niedersachsen', 88),
(80, 'DE', 'BAW', 'Baden-Württemberg', 88),
(81, 'DE', 'BAY', 'Bayern', 88),
(82, 'DE', 'BER', 'Berlin', 88),
(83, 'DE', 'BRG', 'Brandenburg', 88),
(84, 'DE', 'BRE', 'Bremen', 88),
(85, 'DE', 'HAM', 'Hamburg', 88),
(86, 'DE', 'HES', 'Hessen', 88),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern', 88),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen', 88),
(89, 'DE', 'RHE', 'Rheinland-Pfalz', 88),
(90, 'DE', 'SAR', 'Saarland', 88),
(91, 'DE', 'SAS', 'Sachsen', 88),
(92, 'DE', 'SAC', 'Sachsen-Anhalt', 88),
(93, 'DE', 'SCN', 'Schleswig-Holstein', 88),
(94, 'DE', 'THE', 'Thüringen', 88),
(95, 'AT', 'WI', 'Wien', 16),
(96, 'AT', 'NO', 'Niederösterreich', 16),
(97, 'AT', 'OO', 'Oberösterreich', 16),
(98, 'AT', 'SB', 'Salzburg', 16),
(99, 'AT', 'KN', 'Kärnten', 16),
(100, 'AT', 'ST', 'Steiermark', 16),
(101, 'AT', 'TI', 'Tirol', 16),
(102, 'AT', 'BL', 'Burgenland', 16),
(103, 'AT', 'VB', 'Vorarlberg', 16),
(104, 'CH', 'AG', 'Aargau', 220),
(105, 'CH', 'AI', 'Appenzell Innerrhoden', 220),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden', 220),
(107, 'CH', 'BE', 'Bern', 220),
(108, 'CH', 'BL', 'Basel-Landschaft', 220),
(109, 'CH', 'BS', 'Basel-Stadt', 220),
(110, 'CH', 'FR', 'Freiburg', 220),
(111, 'CH', 'GE', 'Genf', 220),
(112, 'CH', 'GL', 'Glarus', 220),
(113, 'CH', 'GR', 'Graubünden', 220),
(114, 'CH', 'JU', 'Jura', 220),
(115, 'CH', 'LU', 'Luzern', 220),
(116, 'CH', 'NE', 'Neuenburg', 220),
(117, 'CH', 'NW', 'Nidwalden', 220),
(118, 'CH', 'OW', 'Obwalden', 220),
(119, 'CH', 'SG', 'St. Gallen', 220),
(120, 'CH', 'SH', 'Schaffhausen', 220),
(121, 'CH', 'SO', 'Solothurn', 220),
(122, 'CH', 'SZ', 'Schwyz', 220),
(123, 'CH', 'TG', 'Thurgau', 220),
(124, 'CH', 'TI', 'Tessin', 220),
(125, 'CH', 'UR', 'Uri', 220),
(126, 'CH', 'VD', 'Waadt', 220),
(127, 'CH', 'VS', 'Wallis', 220),
(128, 'CH', 'ZG', 'Zug', 220),
(129, 'CH', 'ZH', 'Zürich', 220),
(130, 'ES', 'A Coruсa', 'A Coruña', 206),
(131, 'ES', 'Alava', 'Alava', 206),
(132, 'ES', 'Albacete', 'Albacete', 206),
(133, 'ES', 'Alicante', 'Alicante', 206),
(134, 'ES', 'Almeria', 'Almeria', 206),
(135, 'ES', 'Asturias', 'Asturias', 206),
(136, 'ES', 'Avila', 'Avila', 206),
(137, 'ES', 'Badajoz', 'Badajoz', 206),
(138, 'ES', 'Baleares', 'Baleares', 206),
(139, 'ES', 'Barcelona', 'Barcelona', 206),
(140, 'ES', 'Burgos', 'Burgos', 206),
(141, 'ES', 'Caceres', 'Caceres', 206),
(142, 'ES', 'Cadiz', 'Cadiz', 206),
(143, 'ES', 'Cantabria', 'Cantabria', 206),
(144, 'ES', 'Castellon', 'Castellon', 206),
(145, 'ES', 'Ceuta', 'Ceuta', 206),
(146, 'ES', 'Ciudad Real', 'Ciudad Real', 206),
(147, 'ES', 'Cordoba', 'Cordoba', 206),
(148, 'ES', 'Cuenca', 'Cuenca', 206),
(149, 'ES', 'Girona', 'Girona', 206),
(150, 'ES', 'Granada', 'Granada', 206),
(151, 'ES', 'Guadalajara', 'Guadalajara', 206),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa', 206),
(153, 'ES', 'Huelva', 'Huelva', 206),
(154, 'ES', 'Huesca', 'Huesca', 206),
(155, 'ES', 'Jaen', 'Jaen', 206),
(156, 'ES', 'La Rioja', 'La Rioja', 206),
(157, 'ES', 'Las Palmas', 'Las Palmas', 206),
(158, 'ES', 'Leon', 'Leon', 206),
(159, 'ES', 'Lleida', 'Lleida', 206),
(160, 'ES', 'Lugo', 'Lugo', 206),
(161, 'ES', 'Madrid', 'Madrid', 206),
(162, 'ES', 'Malaga', 'Malaga', 206),
(163, 'ES', 'Melilla', 'Melilla', 206),
(164, 'ES', 'Murcia', 'Murcia', 206),
(165, 'ES', 'Navarra', 'Navarra', 206),
(166, 'ES', 'Ourense', 'Ourense', 206),
(167, 'ES', 'Palencia', 'Palencia', 206),
(168, 'ES', 'Pontevedra', 'Pontevedra', 206),
(169, 'ES', 'Salamanca', 'Salamanca', 206),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife', 206),
(171, 'ES', 'Segovia', 'Segovia', 206),
(172, 'ES', 'Sevilla', 'Sevilla', 206),
(173, 'ES', 'Soria', 'Soria', 206),
(174, 'ES', 'Tarragona', 'Tarragona', 206),
(175, 'ES', 'Teruel', 'Teruel', 206),
(176, 'ES', 'Toledo', 'Toledo', 206),
(177, 'ES', 'Valencia', 'Valencia', 206),
(178, 'ES', 'Valladolid', 'Valladolid', 206),
(179, 'ES', 'Vizcaya', 'Vizcaya', 206),
(180, 'ES', 'Zamora', 'Zamora', 206),
(181, 'ES', 'Zaragoza', 'Zaragoza', 206),
(182, 'FR', '1', 'Ain', 81),
(183, 'FR', '2', 'Aisne', 81),
(184, 'FR', '3', 'Allier', 81),
(185, 'FR', '4', 'Alpes-de-Haute-Provence', 81),
(186, 'FR', '5', 'Hautes-Alpes', 81),
(187, 'FR', '6', 'Alpes-Maritimes', 81),
(188, 'FR', '7', 'Ardèche', 81),
(189, 'FR', '8', 'Ardennes', 81),
(190, 'FR', '9', 'Ariège', 81),
(191, 'FR', '10', 'Aube', 81),
(192, 'FR', '11', 'Aude', 81),
(193, 'FR', '12', 'Aveyron', 81),
(194, 'FR', '13', 'Bouches-du-Rhône', 81),
(195, 'FR', '14', 'Calvados', 81),
(196, 'FR', '15', 'Cantal', 81),
(197, 'FR', '16', 'Charente', 81),
(198, 'FR', '17', 'Charente-Maritime', 81),
(199, 'FR', '18', 'Cher', 81),
(200, 'FR', '19', 'Corrèze', 81),
(201, 'FR', '2A', 'Corse-du-Sud', 81),
(202, 'FR', '2B', 'Haute-Corse', 81),
(203, 'FR', '21', 'Côte-d\'Or', 81),
(204, 'FR', '22', 'Côtes-d\'Armor', 81),
(205, 'FR', '23', 'Creuse', 81),
(206, 'FR', '24', 'Dordogne', 81),
(207, 'FR', '25', 'Doubs', 81),
(208, 'FR', '26', 'Drôme', 81),
(209, 'FR', '27', 'Eure', 81),
(210, 'FR', '28', 'Eure-et-Loir', 81),
(211, 'FR', '29', 'Finistère', 81),
(212, 'FR', '30', 'Gard', 81),
(213, 'FR', '31', 'Haute-Garonne', 81),
(214, 'FR', '32', 'Gers', 81),
(215, 'FR', '33', 'Gironde', 81),
(216, 'FR', '34', 'Hérault', 81),
(217, 'FR', '35', 'Ille-et-Vilaine', 81),
(218, 'FR', '36', 'Indre', 81),
(219, 'FR', '37', 'Indre-et-Loire', 81),
(220, 'FR', '38', 'Isère', 81),
(221, 'FR', '39', 'Jura', 81),
(222, 'FR', '40', 'Landes', 81),
(223, 'FR', '41', 'Loir-et-Cher', 81),
(224, 'FR', '42', 'Loire', 81),
(225, 'FR', '43', 'Haute-Loire', 81),
(226, 'FR', '44', 'Loire-Atlantique', 81),
(227, 'FR', '45', 'Loiret', 81),
(228, 'FR', '46', 'Lot', 81),
(229, 'FR', '47', 'Lot-et-Garonne', 81),
(230, 'FR', '48', 'Lozère', 81),
(231, 'FR', '49', 'Maine-et-Loire', 81),
(232, 'FR', '50', 'Manche', 81),
(233, 'FR', '51', 'Marne', 81),
(234, 'FR', '52', 'Haute-Marne', 81),
(235, 'FR', '53', 'Mayenne', 81),
(236, 'FR', '54', 'Meurthe-et-Moselle', 81),
(237, 'FR', '55', 'Meuse', 81),
(238, 'FR', '56', 'Morbihan', 81),
(239, 'FR', '57', 'Moselle', 81),
(240, 'FR', '58', 'Nièvre', 81),
(241, 'FR', '59', 'Nord', 81),
(242, 'FR', '60', 'Oise', 81),
(243, 'FR', '61', 'Orne', 81),
(244, 'FR', '62', 'Pas-de-Calais', 81),
(245, 'FR', '63', 'Puy-de-Dôme', 81),
(246, 'FR', '64', 'Pyrénées-Atlantiques', 81),
(247, 'FR', '65', 'Hautes-Pyrénées', 81),
(248, 'FR', '66', 'Pyrénées-Orientales', 81),
(249, 'FR', '67', 'Bas-Rhin', 81),
(250, 'FR', '68', 'Haut-Rhin', 81),
(251, 'FR', '69', 'Rhône', 81),
(252, 'FR', '70', 'Haute-Saône', 81),
(253, 'FR', '71', 'Saône-et-Loire', 81),
(254, 'FR', '72', 'Sarthe', 81),
(255, 'FR', '73', 'Savoie', 81),
(256, 'FR', '74', 'Haute-Savoie', 81),
(257, 'FR', '75', 'Paris', 81),
(258, 'FR', '76', 'Seine-Maritime', 81),
(259, 'FR', '77', 'Seine-et-Marne', 81),
(260, 'FR', '78', 'Yvelines', 81),
(261, 'FR', '79', 'Deux-Sèvres', 81),
(262, 'FR', '80', 'Somme', 81),
(263, 'FR', '81', 'Tarn', 81),
(264, 'FR', '82', 'Tarn-et-Garonne', 81),
(265, 'FR', '83', 'Var', 81),
(266, 'FR', '84', 'Vaucluse', 81),
(267, 'FR', '85', 'Vendée', 81),
(268, 'FR', '86', 'Vienne', 81),
(269, 'FR', '87', 'Haute-Vienne', 81),
(270, 'FR', '88', 'Vosges', 81),
(271, 'FR', '89', 'Yonne', 81),
(272, 'FR', '90', 'Territoire-de-Belfort', 81),
(273, 'FR', '91', 'Essonne', 81),
(274, 'FR', '92', 'Hauts-de-Seine', 81),
(275, 'FR', '93', 'Seine-Saint-Denis', 81),
(276, 'FR', '94', 'Val-de-Marne', 81),
(277, 'FR', '95', 'Val-d\'Oise', 81),
(278, 'RO', 'AB', 'Alba', 185),
(279, 'RO', 'AR', 'Arad', 185),
(280, 'RO', 'AG', 'Argeş', 185),
(281, 'RO', 'BC', 'Bacău', 185),
(282, 'RO', 'BH', 'Bihor', 185),
(283, 'RO', 'BN', 'Bistriţa-Năsăud', 185),
(284, 'RO', 'BT', 'Botoşani', 185),
(285, 'RO', 'BV', 'Braşov', 185),
(286, 'RO', 'BR', 'Brăila', 185),
(287, 'RO', 'B', 'Bucureşti', 185),
(288, 'RO', 'BZ', 'Buzău', 185),
(289, 'RO', 'CS', 'Caraş-Severin', 185),
(290, 'RO', 'CL', 'Călăraşi', 185),
(291, 'RO', 'CJ', 'Cluj', 185),
(292, 'RO', 'CT', 'Constanţa', 185),
(293, 'RO', 'CV', 'Covasna', 185),
(294, 'RO', 'DB', 'Dâmboviţa', 185),
(295, 'RO', 'DJ', 'Dolj', 185),
(296, 'RO', 'GL', 'Galaţi', 185),
(297, 'RO', 'GR', 'Giurgiu', 185),
(298, 'RO', 'GJ', 'Gorj', 185),
(299, 'RO', 'HR', 'Harghita', 185),
(300, 'RO', 'HD', 'Hunedoara', 185),
(301, 'RO', 'IL', 'Ialomiţa', 185),
(302, 'RO', 'IS', 'Iaşi', 185),
(303, 'RO', 'IF', 'Ilfov', 185),
(304, 'RO', 'MM', 'Maramureş', 185),
(305, 'RO', 'MH', 'Mehedinţi', 185),
(306, 'RO', 'MS', 'Mureş', 185),
(307, 'RO', 'NT', 'Neamţ', 185),
(308, 'RO', 'OT', 'Olt', 185),
(309, 'RO', 'PH', 'Prahova', 185),
(310, 'RO', 'SM', 'Satu-Mare', 185),
(311, 'RO', 'SJ', 'Sălaj', 185),
(312, 'RO', 'SB', 'Sibiu', 185),
(313, 'RO', 'SV', 'Suceava', 185),
(314, 'RO', 'TR', 'Teleorman', 185),
(315, 'RO', 'TM', 'Timiş', 185),
(316, 'RO', 'TL', 'Tulcea', 185),
(317, 'RO', 'VS', 'Vaslui', 185),
(318, 'RO', 'VL', 'Vâlcea', 185),
(319, 'RO', 'VN', 'Vrancea', 185),
(320, 'FI', 'Lappi', 'Lappi', 80),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa', 80),
(322, 'FI', 'Kainuu', 'Kainuu', 80),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala', 80),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo', 80),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo', 80),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa', 80),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa', 80),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa', 80),
(329, 'FI', 'Satakunta', 'Satakunta', 80),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa', 80),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi', 80),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi', 80),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala', 80),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme', 80),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme', 80),
(336, 'FI', 'Uusimaa', 'Uusimaa', 80),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa', 80),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso', 80),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa', 80),
(340, 'EE', 'EE-37', 'Harjumaa', 74),
(341, 'EE', 'EE-39', 'Hiiumaa', 74),
(342, 'EE', 'EE-44', 'Ida-Virumaa', 74),
(343, 'EE', 'EE-49', 'Jõgevamaa', 74),
(344, 'EE', 'EE-51', 'Järvamaa', 74),
(345, 'EE', 'EE-57', 'Läänemaa', 74),
(346, 'EE', 'EE-59', 'Lääne-Virumaa', 74),
(347, 'EE', 'EE-65', 'Põlvamaa', 74),
(348, 'EE', 'EE-67', 'Pärnumaa', 74),
(349, 'EE', 'EE-70', 'Raplamaa', 74),
(350, 'EE', 'EE-74', 'Saaremaa', 74),
(351, 'EE', 'EE-78', 'Tartumaa', 74),
(352, 'EE', 'EE-82', 'Valgamaa', 74),
(353, 'EE', 'EE-84', 'Viljandimaa', 74),
(354, 'EE', 'EE-86', 'Võrumaa', 74),
(355, 'LV', 'LV-DGV', 'Daugavpils', 125),
(356, 'LV', 'LV-JEL', 'Jelgava', 125),
(357, 'LV', 'Jēkabpils', 'Jēkabpils', 125),
(358, 'LV', 'LV-JUR', 'Jūrmala', 125),
(359, 'LV', 'LV-LPX', 'Liepāja', 125),
(360, 'LV', 'LV-LE', 'Liepājas novads', 125),
(361, 'LV', 'LV-REZ', 'Rēzekne', 125),
(362, 'LV', 'LV-RIX', 'Rīga', 125),
(363, 'LV', 'LV-RI', 'Rīgas novads', 125),
(364, 'LV', 'Valmiera', 'Valmiera', 125),
(365, 'LV', 'LV-VEN', 'Ventspils', 125),
(366, 'LV', 'Aglonas novads', 'Aglonas novads', 125),
(367, 'LV', 'LV-AI', 'Aizkraukles novads', 125),
(368, 'LV', 'Aizputes novads', 'Aizputes novads', 125),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads', 125),
(370, 'LV', 'Alojas novads', 'Alojas novads', 125),
(371, 'LV', 'Alsungas novads', 'Alsungas novads', 125),
(372, 'LV', 'LV-AL', 'Alūksnes novads', 125),
(373, 'LV', 'Amatas novads', 'Amatas novads', 125),
(374, 'LV', 'Apes novads', 'Apes novads', 125),
(375, 'LV', 'Auces novads', 'Auces novads', 125),
(376, 'LV', 'Babītes novads', 'Babītes novads', 125),
(377, 'LV', 'Baldones novads', 'Baldones novads', 125),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads', 125),
(379, 'LV', 'LV-BL', 'Balvu novads', 125),
(380, 'LV', 'LV-BU', 'Bauskas novads', 125),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads', 125),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads', 125),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads', 125),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads', 125),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads', 125),
(386, 'LV', 'Ciblas novads', 'Ciblas novads', 125),
(387, 'LV', 'LV-CE', 'Cēsu novads', 125),
(388, 'LV', 'Dagdas novads', 'Dagdas novads', 125),
(389, 'LV', 'LV-DA', 'Daugavpils novads', 125),
(390, 'LV', 'LV-DO', 'Dobeles novads', 125),
(391, 'LV', 'Dundagas novads', 'Dundagas novads', 125),
(392, 'LV', 'Durbes novads', 'Durbes novads', 125),
(393, 'LV', 'Engures novads', 'Engures novads', 125),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads', 125),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads', 125),
(396, 'LV', 'LV-GU', 'Gulbenes novads', 125),
(397, 'LV', 'Iecavas novads', 'Iecavas novads', 125),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads', 125),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads', 125),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads', 125),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads', 125),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads', 125),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads', 125),
(404, 'LV', 'LV-JL', 'Jelgavas novads', 125),
(405, 'LV', 'LV-JK', 'Jēkabpils novads', 125),
(406, 'LV', 'Kandavas novads', 'Kandavas novads', 125),
(407, 'LV', 'Kokneses novads', 'Kokneses novads', 125),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads', 125),
(409, 'LV', 'Krustpils novads', 'Krustpils novads', 125),
(410, 'LV', 'LV-KR', 'Krāslavas novads', 125),
(411, 'LV', 'LV-KU', 'Kuldīgas novads', 125),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads', 125),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads', 125),
(414, 'LV', 'LV-LM', 'Limbažu novads', 125),
(415, 'LV', 'Lubānas novads', 'Lubānas novads', 125),
(416, 'LV', 'LV-LU', 'Ludzas novads', 125),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads', 125),
(418, 'LV', 'Līvānu novads', 'Līvānu novads', 125),
(419, 'LV', 'LV-MA', 'Madonas novads', 125),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads', 125),
(421, 'LV', 'Mālpils novads', 'Mālpils novads', 125),
(422, 'LV', 'Mārupes novads', 'Mārupes novads', 125),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads', 125),
(424, 'LV', 'Neretas novads', 'Neretas novads', 125),
(425, 'LV', 'Nīcas novads', 'Nīcas novads', 125),
(426, 'LV', 'LV-OG', 'Ogres novads', 125),
(427, 'LV', 'Olaines novads', 'Olaines novads', 125),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads', 125),
(429, 'LV', 'LV-PR', 'Preiļu novads', 125),
(430, 'LV', 'Priekules novads', 'Priekules novads', 125),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads', 125),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads', 125),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads', 125),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads', 125),
(435, 'LV', 'Raunas novads', 'Raunas novads', 125),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads', 125),
(437, 'LV', 'Rojas novads', 'Rojas novads', 125),
(438, 'LV', 'Ropažu novads', 'Ropažu novads', 125),
(439, 'LV', 'Rucavas novads', 'Rucavas novads', 125),
(440, 'LV', 'Rugāju novads', 'Rugāju novads', 125),
(441, 'LV', 'Rundāles novads', 'Rundāles novads', 125),
(442, 'LV', 'LV-RE', 'Rēzeknes novads', 125),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads', 125),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads', 125),
(445, 'LV', 'Salas novads', 'Salas novads', 125),
(446, 'LV', 'Salaspils novads', 'Salaspils novads', 125),
(447, 'LV', 'LV-SA', 'Saldus novads', 125),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads', 125),
(449, 'LV', 'Siguldas novads', 'Siguldas novads', 125),
(450, 'LV', 'Skrundas novads', 'Skrundas novads', 125),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads', 125),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads', 125),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads', 125),
(454, 'LV', 'Strenču novads', 'Strenču novads', 125),
(455, 'LV', 'Sējas novads', 'Sējas novads', 125),
(456, 'LV', 'LV-TA', 'Talsu novads', 125),
(457, 'LV', 'LV-TU', 'Tukuma novads', 125),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads', 125),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads', 125),
(460, 'LV', 'LV-VK', 'Valkas novads', 125),
(461, 'LV', 'LV-VM', 'Valmieras novads', 125),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads', 125),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads', 125),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads', 125),
(465, 'LV', 'LV-VE', 'Ventspils novads', 125),
(466, 'LV', 'Viesītes novads', 'Viesītes novads', 125),
(467, 'LV', 'Viļakas novads', 'Viļakas novads', 125),
(468, 'LV', 'Viļānu novads', 'Viļānu novads', 125),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads', 125),
(470, 'LV', 'Zilupes novads', 'Zilupes novads', 125),
(471, 'LV', 'Ādažu novads', 'Ādažu novads', 125),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads', 125),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads', 125),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads', 125),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis', 131),
(476, 'LT', 'LT-KU', 'Kauno Apskritis', 131),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis', 131),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis', 131),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis', 131),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis', 131),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis', 131),
(482, 'LT', 'LT-TE', 'Telšių Apskritis', 131),
(483, 'LT', 'LT-UT', 'Utenos Apskritis', 131),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis', 131),
(485, 'BR', 'AC', 'Acre', 31),
(486, 'BR', 'AL', 'Alagoas', 31),
(487, 'BR', 'AP', 'Amapá', 31),
(488, 'BR', 'AM', 'Amazonas', 31),
(489, 'BR', 'BA', 'Bahia', 31),
(490, 'BR', 'CE', 'Ceará', 31),
(491, 'BR', 'ES', 'Espírito Santo', 31),
(492, 'BR', 'GO', 'Goiás', 31),
(493, 'BR', 'MA', 'Maranhão', 31),
(494, 'BR', 'MT', 'Mato Grosso', 31),
(495, 'BR', 'MS', 'Mato Grosso do Sul', 31),
(496, 'BR', 'MG', 'Minas Gerais', 31),
(497, 'BR', 'PA', 'Pará', 31),
(498, 'BR', 'PB', 'Paraíba', 31),
(499, 'BR', 'PR', 'Paraná', 31),
(500, 'BR', 'PE', 'Pernambuco', 31),
(501, 'BR', 'PI', 'Piauí', 31),
(502, 'BR', 'RJ', 'Rio de Janeiro', 31),
(503, 'BR', 'RN', 'Rio Grande do Norte', 31),
(504, 'BR', 'RS', 'Rio Grande do Sul', 31),
(505, 'BR', 'RO', 'Rondônia', 31),
(506, 'BR', 'RR', 'Roraima', 31),
(507, 'BR', 'SC', 'Santa Catarina', 31),
(508, 'BR', 'SP', 'São Paulo', 31),
(509, 'BR', 'SE', 'Sergipe', 31),
(510, 'BR', 'TO', 'Tocantins', 31),
(511, 'BR', 'DF', 'Distrito Federal', 31),
(512, 'HR', 'HR-01', 'Zagrebačka županija', 59),
(513, 'HR', 'HR-02', 'Krapinsko-zagorska županija', 59),
(514, 'HR', 'HR-03', 'Sisačko-moslavačka županija', 59),
(515, 'HR', 'HR-04', 'Karlovačka županija', 59),
(516, 'HR', 'HR-05', 'Varaždinska županija', 59),
(517, 'HR', 'HR-06', 'Koprivničko-križevačka županija', 59),
(518, 'HR', 'HR-07', 'Bjelovarsko-bilogorska županija', 59),
(519, 'HR', 'HR-08', 'Primorsko-goranska županija', 59),
(520, 'HR', 'HR-09', 'Ličko-senjska županija', 59),
(521, 'HR', 'HR-10', 'Virovitičko-podravska županija', 59),
(522, 'HR', 'HR-11', 'Požeško-slavonska županija', 59),
(523, 'HR', 'HR-12', 'Brodsko-posavska županija', 59),
(524, 'HR', 'HR-13', 'Zadarska županija', 59),
(525, 'HR', 'HR-14', 'Osječko-baranjska županija', 59),
(526, 'HR', 'HR-15', 'Šibensko-kninska županija', 59),
(527, 'HR', 'HR-16', 'Vukovarsko-srijemska županija', 59),
(528, 'HR', 'HR-17', 'Splitsko-dalmatinska županija', 59),
(529, 'HR', 'HR-18', 'Istarska županija', 59),
(530, 'HR', 'HR-19', 'Dubrovačko-neretvanska županija', 59),
(531, 'HR', 'HR-20', 'Međimurska županija', 59),
(532, 'HR', 'HR-21', 'Grad Zagreb', 59),
(533, 'IN', 'AN', 'Andaman and Nicobar Islands', 106),
(534, 'IN', 'AP', 'Andhra Pradesh', 106),
(535, 'IN', 'AR', 'Arunachal Pradesh', 106),
(536, 'IN', 'AS', 'Assam', 106),
(537, 'IN', 'BR', 'Bihar', 106),
(538, 'IN', 'CH', 'Chandigarh', 106),
(539, 'IN', 'CT', 'Chhattisgarh', 106),
(540, 'IN', 'DN', 'Dadra and Nagar Haveli', 106),
(541, 'IN', 'DD', 'Daman and Diu', 106),
(542, 'IN', 'DL', 'Delhi', 106),
(543, 'IN', 'GA', 'Goa', 106),
(544, 'IN', 'GJ', 'Gujarat', 106),
(545, 'IN', 'HR', 'Haryana', 106),
(546, 'IN', 'HP', 'Himachal Pradesh', 106),
(547, 'IN', 'JK', 'Jammu and Kashmir', 106),
(548, 'IN', 'JH', 'Jharkhand', 106),
(549, 'IN', 'KA', 'Karnataka', 106),
(550, 'IN', 'KL', 'Kerala', 106),
(551, 'IN', 'LD', 'Lakshadweep', 106),
(552, 'IN', 'MP', 'Madhya Pradesh', 106),
(553, 'IN', 'MH', 'Maharashtra', 106),
(554, 'IN', 'MN', 'Manipur', 106),
(555, 'IN', 'ML', 'Meghalaya', 106),
(556, 'IN', 'MZ', 'Mizoram', 106),
(557, 'IN', 'NL', 'Nagaland', 106),
(558, 'IN', 'OR', 'Odisha', 106),
(559, 'IN', 'PY', 'Puducherry', 106),
(560, 'IN', 'PB', 'Punjab', 106),
(561, 'IN', 'RJ', 'Rajasthan', 106),
(562, 'IN', 'SK', 'Sikkim', 106),
(563, 'IN', 'TN', 'Tamil Nadu', 106),
(564, 'IN', 'TG', 'Telangana', 106),
(565, 'IN', 'TR', 'Tripura', 106),
(566, 'IN', 'UP', 'Uttar Pradesh', 106),
(567, 'IN', 'UT', 'Uttarakhand', 106),
(568, 'IN', 'WB', 'West Bengal', 106);

-- --------------------------------------------------------

--
-- Struktur dari tabel `datagrid_saved_filters`
--

CREATE TABLE `datagrid_saved_filters` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `emails`
--

CREATE TABLE `emails` (
  `id` int UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `folders` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `from` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `sender` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `reply_to` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `cc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `bcc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `person_id` int UNSIGNED DEFAULT NULL,
  `lead_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL
) ;

--
-- Dumping data untuk tabel `emails`
--

INSERT INTO `emails` (`id`, `subject`, `source`, `user_type`, `name`, `reply`, `is_read`, `folders`, `from`, `sender`, `reply_to`, `cc`, `bcc`, `unique_id`, `message_id`, `reference_ids`, `person_id`, `lead_id`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'Lumosmaxima', 'web', 'admin', 'Ditajaya Admin', 'lorem', 0, '[\"sent\"]', '\"hello@motortravel.id\"', NULL, '[\"firman@adactive.asia\"]', '[\"prayogafirman22@gmail.com\"]', NULL, '1736135582@webkul.com', '1736135582@webkul.com', '[\"1736135582@webkul.com\"]', NULL, NULL, '2025-01-06 02:23:02', '2025-01-06 02:23:06', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_attachments`
--

CREATE TABLE `email_attachments` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_tags`
--

CREATE TABLE `email_tags` (
  `tag_id` int UNSIGNED NOT NULL,
  `email_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Activity created', 'Activity created: {%activities.title%}', '<p style=\"font-size: 16px; color: #5e5e5e;\">You have a new activity, please find the details bellow:</p>\n                                <p><strong style=\"font-size: 16px;\">Details</strong></p>\n                                <table style=\"height: 97px; width: 952px;\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Title</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.title%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Type</td>\n                                                <td style=\"width: 770.047px; font-size: 16px;\">{%activities.type%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Date</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.schedule_from%} to&nbsp;{%activities.schedule_to%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px; vertical-align: text-top;\">Participants</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.participants%}</td>\n                                        </tr>\n                                    </tbody>\n                                </table>', '2025-01-05 16:12:39', '2025-01-05 16:12:39'),
(2, 'Activity modified', 'Activity modified: {%activities.title%}', '<p style=\"font-size: 16px; color: #5e5e5e;\">You have a new activity modified, please find the details bellow:</p>\n                                <p><strong style=\"font-size: 16px;\">Details</strong></p>\n                                <table style=\"height: 97px; width: 952px;\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Title</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.title%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Type</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.type%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Date</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.schedule_from%} to&nbsp;{%activities.schedule_to%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px; vertical-align: text-top;\">Participants</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.participants%}</td>\n                                        </tr>\n                                    </tbody>\n                                </table>', '2025-01-05 16:12:39', '2025-01-05 16:12:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Group Pertama', 'Deskripsi', '2025-01-05 16:15:01', '2025-01-05 16:15:01'),
(2, 'group magang', 'deskripsi', '2025-01-06 02:52:22', '2025-01-06 02:52:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `leads`
--

CREATE TABLE `leads` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `lead_value` decimal(12,4) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `lost_reason` text COLLATE utf8mb4_unicode_ci,
  `closed_at` datetime DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `person_id` int UNSIGNED NOT NULL,
  `lead_source_id` int UNSIGNED NOT NULL,
  `lead_type_id` int UNSIGNED NOT NULL,
  `lead_pipeline_id` int UNSIGNED DEFAULT NULL,
  `lead_pipeline_stage_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expected_close_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `leads`
--

INSERT INTO `leads` (`id`, `title`, `description`, `lead_value`, `status`, `lost_reason`, `closed_at`, `user_id`, `person_id`, `lead_source_id`, `lead_type_id`, `lead_pipeline_id`, `lead_pipeline_stage_id`, `created_at`, `updated_at`, `expected_close_date`) VALUES
(4, 'FU Penawaran Chiller Centra Brasindo', 'FU Penawaran Chiller Centra Brasindo Mchill 3,14. Saat ini ada perubahan spek dari 2 HP ke 3HP sehingga masih butuh extend waktu lagi menyesuakain spek baru.', 30100000.0000, 1, NULL, NULL, 6, 2156, 4, 2, 1, 1, '2025-05-08 10:56:06', '2025-05-08 10:56:06', '2025-06-19'),
(5, 'Fu Penawaran Semen Garuda', 'Follow up harga Air filter masih belum diada jawaban dari purchasing. mau revisi penawaran', 99999999.9999, 1, NULL, NULL, 6, 2157, 4, 2, 1, 1, '2025-05-08 17:06:43', '2025-05-08 17:06:43', '2025-05-16'),
(6, 'DMP02', 'PENAWARAN FILTER', 9000000.0000, 1, NULL, NULL, 8, 1687, 4, 2, 1, 1, '2025-05-13 16:17:04', '2025-05-13 16:17:04', '2025-05-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lead_activities`
--

CREATE TABLE `lead_activities` (
  `activity_id` int UNSIGNED NOT NULL,
  `lead_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lead_activities`
--

INSERT INTO `lead_activities` (`activity_id`, `lead_id`) VALUES
(113, 4),
(114, 4),
(115, 4),
(116, 4),
(117, 4),
(118, 4),
(119, 4),
(120, 4),
(121, 4),
(122, 4),
(128, 5),
(129, 5),
(130, 5),
(131, 5),
(132, 5),
(133, 5),
(134, 5),
(135, 5),
(136, 5),
(137, 5),
(142, 6),
(143, 6),
(144, 6),
(145, 6),
(146, 6),
(147, 6),
(148, 6),
(149, 6),
(150, 6),
(151, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lead_pipelines`
--

CREATE TABLE `lead_pipelines` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `rotten_days` int NOT NULL DEFAULT '30',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lead_pipelines`
--

INSERT INTO `lead_pipelines` (`id`, `name`, `is_default`, `rotten_days`, `created_at`, `updated_at`) VALUES
(1, 'Default Pipeline', 1, 30, '2025-01-05 16:12:40', '2025-01-05 16:12:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lead_pipeline_stages`
--

CREATE TABLE `lead_pipeline_stages` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `probability` int NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0',
  `lead_pipeline_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lead_pipeline_stages`
--

INSERT INTO `lead_pipeline_stages` (`id`, `code`, `name`, `probability`, `sort_order`, `lead_pipeline_id`) VALUES
(1, 'new', 'New', 100, 1, 1),
(2, 'follow-up', 'Follow Up', 100, 2, 1),
(3, 'prospect', 'Prospect', 100, 3, 1),
(4, 'negotiation', 'Negotiation', 100, 4, 1),
(5, 'won', 'Won', 100, 5, 1),
(6, 'lost', 'Lost', 0, 6, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lead_products`
--

CREATE TABLE `lead_products` (
  `id` int UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `amount` decimal(12,4) DEFAULT NULL,
  `lead_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lead_products`
--

INSERT INTO `lead_products` (`id`, `quantity`, `price`, `amount`, `lead_id`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 30, 300000.0000, 9000000.0000, 6, 130, '2025-05-13 16:17:05', '2025-05-13 16:17:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lead_quotes`
--

CREATE TABLE `lead_quotes` (
  `quote_id` int UNSIGNED NOT NULL,
  `lead_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lead_sources`
--

CREATE TABLE `lead_sources` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lead_sources`
--

INSERT INTO `lead_sources` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Email', '2025-01-05 16:12:40', '2025-01-05 16:12:40'),
(2, 'Web', '2025-01-05 16:12:40', '2025-01-05 16:12:40'),
(3, 'Web Form', '2025-01-05 16:12:40', '2025-01-05 16:12:40'),
(4, 'Phone', '2025-01-05 16:12:40', '2025-01-05 16:12:40'),
(5, 'Direct', '2025-01-05 16:12:40', '2025-01-05 16:12:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lead_stages`
--

CREATE TABLE `lead_stages` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lead_tags`
--

CREATE TABLE `lead_tags` (
  `tag_id` int UNSIGNED NOT NULL,
  `lead_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lead_types`
--

CREATE TABLE `lead_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lead_types`
--

INSERT INTO `lead_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'New Business', '2025-01-05 16:12:40', '2025-01-05 16:12:40'),
(2, 'Existing Business', '2025-01-05 16:12:40', '2025-01-05 16:12:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2021_03_12_060658_create_core_config_table', 1),
(4, '2021_03_12_074578_create_groups_table', 1),
(5, '2021_03_12_074597_create_roles_table', 1),
(6, '2021_03_12_074857_create_users_table', 1),
(7, '2021_03_12_074867_create_user_groups_table', 1),
(8, '2021_03_12_074957_create_user_password_resets_table', 1),
(9, '2021_04_02_080709_create_attributes_table', 1),
(10, '2021_04_02_080837_create_attribute_options_table', 1),
(11, '2021_04_06_122751_create_attribute_values_table', 1),
(12, '2021_04_09_051326_create_organizations_table', 1),
(13, '2021_04_09_065617_create_persons_table', 1),
(14, '2021_04_09_065617_create_products_table', 1),
(15, '2021_04_12_173232_create_countries_table', 1),
(16, '2021_04_12_173344_create_country_states_table', 1),
(17, '2021_04_21_172825_create_lead_sources_table', 1),
(18, '2021_04_21_172847_create_lead_types_table', 1),
(19, '2021_04_22_153258_create_lead_stages_table', 1),
(20, '2021_04_22_155706_create_lead_pipelines_table', 1),
(21, '2021_04_22_155838_create_lead_pipeline_stages_table', 1),
(22, '2021_04_22_164215_create_leads_table', 1),
(23, '2021_04_22_171805_create_lead_products_table', 1),
(24, '2021_05_12_150329_create_activities_table', 1),
(25, '2021_05_12_150329_create_lead_activities_table', 1),
(26, '2021_05_15_151855_create_activity_files_table', 1),
(27, '2021_05_20_141230_create_tags_table', 1),
(28, '2021_05_20_141240_create_lead_tags_table', 1),
(29, '2021_05_24_075618_create_emails_table', 1),
(30, '2021_05_25_072700_create_email_attachments_table', 1),
(31, '2021_06_07_162808_add_lead_view_permission_column_in_users_table', 1),
(32, '2021_07_01_230345_create_quotes_table', 1),
(33, '2021_07_01_231317_create_quote_items_table', 1),
(34, '2021_07_02_201822_create_lead_quotes_table', 1),
(35, '2021_07_28_142453_create_activity_participants_table', 1),
(36, '2021_08_26_133538_create_workflows_table', 1),
(37, '2021_09_03_172713_create_email_templates_table', 1),
(38, '2021_09_22_194103_add_unique_index_to_name_in_organizations_table', 1),
(39, '2021_09_22_194622_add_unique_index_to_name_in_groups_table', 1),
(40, '2021_09_23_221138_add_column_expected_close_date_in_leads_table', 1),
(41, '2021_09_30_135857_add_column_rotten_days_in_lead_pipelines_table', 1),
(42, '2021_09_30_154222_alter_lead_pipeline_stages_table', 1),
(43, '2021_09_30_161722_alter_leads_table', 1),
(44, '2021_09_30_183825_change_user_id_to_nullable_in_leads_table', 1),
(45, '2021_10_02_170105_insert_expected_closed_date_column_in_attributes_table', 1),
(46, '2021_11_11_180804_change_lead_pipeline_stage_id_constraint_in_leads_table', 1),
(47, '2021_11_12_171510_add_image_column_in_users_table', 1),
(48, '2021_11_17_190943_add_location_column_in_activities_table', 1),
(49, '2021_12_14_213049_create_web_forms_table', 1),
(50, '2021_12_14_214923_create_web_form_attributes_table', 1),
(51, '2024_05_10_152848_create_saved_filters_table', 1),
(52, '2024_06_21_160707_create_warehouses_table', 1),
(53, '2024_06_21_160735_create_warehouse_locations_table', 1),
(54, '2024_06_24_174241_insert_warehouse_attributes_in_attributes_table', 1),
(55, '2024_06_28_154009_create_product_inventories_table', 1),
(56, '2024_07_24_150821_create_webhooks_table', 1),
(57, '2024_07_31_092951_add_job_title_in_persons_table', 1),
(58, '2024_07_31_093603_add_organization_sales_owner_attribute_in_attributes_table', 1),
(59, '2024_07_31_093605_add_person_job_title_attribute_in_attributes_table', 1),
(60, '2024_07_31_093605_add_person_sales_owner_attribute_in_attributes_table', 1),
(61, '2024_08_06_145943_create_person_tags_table', 1),
(62, '2024_08_06_161212_create_person_activities_table', 1),
(63, '2024_08_10_100329_create_warehouse_activities_table', 1),
(64, '2024_08_10_100340_create_warehouse_tags_table', 1),
(65, '2024_08_10_150329_create_product_activities_table', 1),
(66, '2024_08_10_150340_create_product_tags_table', 1),
(67, '2024_08_14_102116_add_user_id_column_in_persons_table', 1),
(68, '2024_08_14_102136_add_user_id_column_in_organizations_table', 1),
(69, '2024_08_21_153011_add_leads_stage_and_pipeline_attributes', 1),
(70, '2024_08_27_091619_create_email_tags_table', 1),
(71, '2024_09_06_065808_alter_product_inventories_table', 1),
(75, '2025_02_05_213114_create_stocks_table', 2),
(76, '2025_02_17_090034_create_technician_activities_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `organizations`
--

CREATE TABLE `organizations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL
) ;

--
-- Dumping data untuk tabel `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `address`, `created_at`, `updated_at`, `user_id`) VALUES
(201, 'Lumosindo Technology', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', '2025-03-11 04:59:14', '2025-03-11 04:59:14', 1),
(202, 'PT. Adiprima Suraprinta', '{\"address\":\"Jl. Prof. Dr. Moch Yamin Sh, Sekarsore, Roomo, Kec. Manyar, Kabupaten Gresik, Jawa Timur 61151\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', '2025-03-11 16:30:14', NULL, 4),
(203, 'PT. Petrocentral', '{\"address\":\"Jl. Raya Roomo, Maduran, Roomo, Kec. Manyar, Kabupaten Gresik, Jawa Timur 61151\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(204, 'PT. Putra Rackindo', '{\"address\":\"Jl. Segoro Madu II No.3, Panggang, Gending, Kec. Kebomas, Kabupaten Gresik, Jawa Timur 61123\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(205, 'PT. Wiharta Karya Agung', '{\"address\":\"Jl. Noto Prayitno No.4, Trate, Kec. Kebomas, Kabupaten Gresik, Jawa Timur 61119\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(206, 'PT. Adybuana', '{\"address\":\"Jl. Raya Wringinanom desa No.km 32, Krajan, Lebanisuko, Kec. Wringinanom, Kabupaten Gresik, Jawa Timur 61176\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(207, 'PT. Surabaya Mekabox', '{\"address\":\"Jl. Raya Bambe No.KM. 18, Bangkingan, Kec. Driyorejo, Kabupaten Gresik, Jawa Timur 61177\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(208, 'PT. Garuda Food', '{\"address\":\"Jl. Krikilan KM 28, Krikilan, Driyorejo, Dusun Larangan, Krikilan, Kec. Driyorejo, Kabupaten Gresik, Jawa Timur 61177\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(209, 'PT. Eterindo Nusa Graha', '{\"address\":\"kawasan industri, Jl. Prof. Dr. Moh. Yamin, Sekarsore, Roomo, Kec. Gresik, Kabupaten Gresik, Jawa Timur 61151\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(210, 'PT. Petrowidada', '{\"address\":\"VJ2J+6X8, Jl. Prof. Dr. Moch Yamin Sh, Sekarsore, Roomo, Kec. Manyar, Kabupaten Gresik, Jawa Timur 61151\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(211, 'PT. Tjakrindo Mas', '{\"address\":\"Jl. Raya Kepatihan No.168A, Kepatihan, Kec. Menganti, Kabupaten Gresik, Jawa Timur 61174\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(212, 'PT. Keramik Diamond', '{\"address\":\"Jl. Semeru No.99B, Bambe, Kec. Driyorejo, Kabupaten Gresik, Jawa Timur 61177\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(213, 'PT. Unicem Gresik', '{\"address\":\"Unichem  Indonesia Pt., Manyarsidorukun, Manyar Sido Rukun, Kec. Manyar, Kabupaten Gresik, Jawa Timur 61151\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(214, 'PT. HP Metal', '{\"address\":\"kawasan industri persada Blok K - L No.2, 61385, Ngoro, Kec. Ngoro, Kabupaten Mojokerto, Jawa Timur 61385\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(215, 'PT. Motasa Indonesia', '{\"address\":\"Wonosari, Sumbertanggul, Mojosari, East Java 61382\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(216, 'PT. Sunrise Mill', '{\"address\":\"Jl. Bypass Mojokerto KM. 54, Jampirogo, Sooko, Padangan, Sumolawang, Kec. Puri, Kabupaten Mojokerto, Jawa Timur 61361\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(217, 'PT. Sinar Sosro Mojosari', '{\"address\":\"FH85+334, Meduran, Awang Awang, Kec. Mojosari, Kabupaten Mojokerto, Jawa Timur 61384\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(218, 'PT. Makmur Artha Cemerlang', '{\"address\":\"Jl. Raya Kebonagung No.118, Kebonagung, Kec. Puri, Kabupaten Mojokerto, Jawa Timur 61363\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(219, 'PT. Dinamika Megatama Citra', '{\"address\":\"Jl. Raya Mojosari Ngoro Km. 3, Pungging, Dusun Pungging, Pungging, Kec. Pungging, Kabupaten Mojokerto, Jawa Timur 61384\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(220, 'PT. HB Fuller', '{\"address\":\"Ngoro Industrial Park Blok C2 No. 03, Jurang Sari, Lolawang, Kec. Ngoro, Kabupaten Mojokerto, Jawa Timur 61385\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(221, 'PT. Hume Sakti', '{\"address\":\"Jl. Mojosari - Krian No.Km 2, Rw. I, Wonokusumo, Kec. Mojosari, Kabupaten Mojokerto, Jawa Timur 61382\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(222, 'PT. Tempo Utama Sejahtera', '{\"address\":\"Jarang Sari, Lolawang, Ngoro, Mojokerto Regency, East Java 61385\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(223, 'PT. Atlantik Biru Raya', '{\"address\":\"Jl. Raya Surabaya - Malang No.KM.52,2, Tambak, Ngadimulyo, Kec. Sukorejo, Pasuruan, Jawa Timur 67161\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(224, 'PT. Milenia Furniture', '{\"address\":\"Jl. Raya Wonorejo No.Km 14, Areng-areng Barat, Sambisirah, Kec. Wonorejo, Pasuruan, Jawa Timur 67173\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(225, 'PT. Nestle', '{\"address\":\"Tembero, Tanggulangin, Kejayan, Pasuruan Regency, East Java 67172\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(226, 'PT. Satoria Aneka', '{\"address\":\"Jl. Raya Kejayan - Purwosari KM. 16, Sambisirah Selatan, Sambisirah, Kec. Wonorejo, Pasuruan, Jawa Timur 67173\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(227, 'PT. Netania Kasih Karunia', '{\"address\":\"Jl. Rembang Industri VI / No. 1-7 Kawasan Industri PIER, Bunut Utara, Pejangkungan, Kec. Rembang, Pasuruan, Jawa Timur 67152\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(228, 'PT. Infion jaya Sakti', '{\"address\":\"Jasem, Tawang Rejo, Pandaan, Pasuruan Regency, East Java 67156\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(229, 'PT. Prasad Seed', '{\"address\":\"9R7H+7RJ, Sawah, Curahdukuh, Kec. Kraton, Pasuruan, Jawa Timur 67151\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(230, 'PT. Sakari', '{\"address\":\"Gondang Legi, Cangkringmalang, Kec. Beji, Pasuruan, Jawa Timur 67154\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(231, 'PT. Berlina', '{\"address\":\"Jl. Raya Pandaan - Bangil No.KM.43\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(232, 'PT. Indhoperin', '{\"address\":\"Jl. Brantas No.Km. 1, Pilang, Kec. Kademangan, Kota Probolinggo, Jawa Timur 67221\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(233, 'PT. Global Interinti Industry', '{\"address\":\"Jl. Tj. Tembaga No.8, Perak Bar., Kec. Krembangan, Kota SBY, Jawa Timur 60177\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(234, 'PT. Hepete', '{\"address\":\"Jl. Margomulyo Indah No.18A, Buntaran, Kec. Tandes, Kota SBY, Jawa Timur 60184\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(235, 'PT. Lns', '{\"address\":\"Blk. B, Margomulyo Jaya Jl. Sentong Asri No.22, Bibis, Kec. Tandes, Kota SBY, Jawa Timur 60186\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(236, 'PT. Aneka Coffe Industry', '{\"address\":\"Tanjung, Jl. Raya Trosobo Km. 23 Bebekan Taman, Tanjung, Sidokumpul, Kecamatan Sidoarjo, Kabupaten Sidoarjo, Jawa Timur 61212\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(237, 'PT. Prima Alloy', '{\"address\":\"Jl. Muncul No.1, Jl. Raya, Gedangan, Kec. Gedangan, Kabupaten Sidoarjo, Jawa Timur 61254\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(238, 'PT. Siantar Top', '{\"address\":\"Jl. Tambak Sawah No.21-23, Jabon, Tambaksawah, Kec. Waru, Kabupaten Sidoarjo, Jawa Timur 61256\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(239, 'PT. Trias Sentosa Krian', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(240, 'PT. Hanil Jaya Steel', '{\"address\":\"Jl. Brigjend. Katamso, Ds. Janti, Waru, Janti, Sidoarjo, Kabupaten Sidoarjo, Jawa Timur 61256\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(241, 'PT. Langgeng Makmur', '{\"address\":\"Jl. Letjend Sutoyo No.256, Medaeng Wetan, Medaeng, Kec. Waru, Kabupaten Sidoarjo, Jawa Timur 61256\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(242, 'PT. Integra Indocabinet', '{\"address\":\"Jl. Raya Betro, Wedi, Kec. Gedangan, Kabupaten Sidoarjo, Jawa Timur 61254\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(243, 'PT. Intera Indonesia', '{\"address\":\"JP5C+G59, Jl. Raya Sukodono, Calukan, Keboansikep, Kec. Gedangan, Kabupaten Sidoarjo, Jawa Timur 6125\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(244, 'PT. Aksara Grafika', '{\"address\":\"Jl. Brigjend Katamso No.45, Turipinggir, Berbek, Kec. Waru, Kabupaten Sidoarjo, Jawa Timur 61256\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(245, 'PT. Heisey', '{\"address\":\"HPQH+85C, JL. Buduran Raya, Banjarkemantren, Buduran, Kemantren, Banjarkemantren, Kec. Sidoarjo, Kabupaten Sidoarjo, Jawa Timur 61252\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(246, 'PT. Sarimas Permai', '{\"address\":\"Jl. Mastrip Warugunung No.23, Warugunung, Kec. Karangpilang, Kota SBY, Jawa Timur 60221\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(247, 'PT. Karunia Rejeki Abadi', '{\"address\":\"Jl. Mayjen Sungkono No.75, RW.78, Dukuh Pakis, Kec. Dukuhpakis, Kota SBY, Jawa Timur 60225\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(248, 'PT. Mitrapack Era Mandiri', '{\"address\":\"Jl. Rungkut Industri IV No.17F, Rungkut Tengah, Kec. Gn. Anyar, Kota SBY, Jawa Timur 60293\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(249, 'PT. Kedawung Surya', '{\"address\":\"60189, Jl. Raya Kalirungkut No.15-17, Kali Rungkut, Kec. Rungkut, Kota SBY, Jawa Timur 60117\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(250, 'PT. Kedawung Subur', '{\"address\":\"Jl. Raya Kalirungkut, Kali Rungkut, Kec. Rungkut, Kota SBY, Jawa Timur 60293\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(251, 'PT. Indonesia Multi Color', '{\"address\":\"Jl. Rungkut Industri I No.10, Kendangsari, Kec. Tenggilis Mejoyo, Kota SBY, Jawa Timur 60293\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(252, 'PT. Mikatasa Agung', '{\"address\":\"Jl. Raya Rungkut Industri II No.2-4, Tenggilis Mejoyo, Kec. Tenggilis Mejoyo, Kota SBY, Jawa Timur 60293\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(253, 'PT. Ultra Prima Abadi', '{\"address\":\"Jl. Panjang Jiwo No.48-50, Panjang Jiwo, Kec. Tenggilis Mejoyo, Kota SBY, Jawa Timur 60299\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(254, 'PT. Samator Inti Peroksida', '{\"address\":\"The Samator Office Tower, Jl. Raya Kedung Baruk No.26 - 28, Kedung Baruk, Rungkut, Surabaya City, East Java 60298\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(255, 'PT. Sinar Angkasa Rungkut', '{\"address\":\"Jl. Rungkut Industri I No.8, Kendangsari, Kec. Tenggilis Mejoyo, Kota SBY, Jawa Timur 60292\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(256, 'PT. Inti Duta Lestari', '{\"address\":\"Jl. Rungkut Industri III No.29, Rungkut Menanggal, Kec. Gn. Anyar, Kota SBY, Jawa Timur 60293\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(257, 'PT. Daesang Ingredients Indonesia', '{\"address\":\"Jl. Raya Driyorejo No.265, Dusun Karanglo, Driyorejo, Kec. Driyorejo, Kabupaten Gresik, Jawa Timur 61177\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(258, 'PT. Sun Paper Source', '{\"address\":\"Jl. Raya Kembangsri No.100, Ringgit, Sukoanyar, Kec. Ngoro, Kabupaten Mojokerto, Jawa Timur 61385\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(259, 'PT. Selatan Jadi Jaya', '{\"address\":\"Jl. Raya Panjunan Desa No.8, Babatan, Panjunan, Kec. Sukodono, Kabupaten Sidoarjo, Jawa Timur 61258\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(260, 'PT. Supa Surya Niaga', '{\"address\":\"Pergudangan Sinar Gedangan Blok C8-9, Dusun Gemurung Kidul, Gemurung, Kec. Gedangan, Kabupaten Sidoarjo, Jawa Timur 61254\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(261, 'PT. Kobin Keramik', '{\"address\":\"Kawasan Ngoro Industri Persada Kav O/3, Ngoro, Kec. Ngoro, Kabupaten Mojokerto, Jawa Timur 6138\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(262, 'PT. Dharma Perkasa Gemilang', '{\"address\":\" Jarang Sari, Lolawang, Ngoro, Mojokerto Regency, East Java 61385\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(263, 'PT. Malidas Sterilindo', '{\"address\":\"Jl. Kidemang Singomenggolo No.22, Sidomulyo, Kec. Buduran, Kabupaten Sidoarjo, Jawa Timur 61252\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(264, 'PT. IMLI', '{\"address\":\"CP8F+W8W, Candi, Gn. Gangsir, Kec. Beji, Pasuruan, Jawa Timur 67154\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(265, 'PT. Guntner Indonesia', '{\"address\":\"Jalan, Purwodadi, Wonokoyo, Kec. Beji, Pasuruan, Jawa Timur 67154\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(266, 'PT. Hasil Abadi Perdana', '{\"address\":\" Jl. Raya Rungkut Industri II No.8, Tenggilis Mejoyo, Kec. Rungkut, Surabaya, Jawa Timur 60293\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(267, 'PT. Tirta Sukses Perkasa', '{\"address\":\"Jl. Surabaya - Malang Km.53 Desa Lemahbang, Ngadimulyo, Tambak, Kec. Sukorejo, Pasuruan, Jawa Timur 67161\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(268, 'PT. Lawangmas', '{\"address\":\"Jl. Industri Gg. Cocacola, Krajan, Bedali, Kec. Lawang, Kabupaten Malang, Jawa Timur\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(269, 'PT. Filtrona', '{\"address\":\" Jl. Berbek Industri I, Berbek Industri, Berbek, Kec. Waru, Kabupaten Sidoarjo, Jawa Timur 61256\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(270, 'PT. Molindo Raya Industri', '{\"address\":\"Jl. Sumberwaras No. 255, Lawang, Karang Sono, Kalirejo, Malang, Kabupaten Malang, Jawa Timur 65216\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(271, 'PT. Hon Chuan', '{\"address\":\"Ngoro Industrial Park Blok F2 No. 1, Jurang Sari, Lolawang, Kec. Ngoro, Kabupaten Mojokerto, Jawa Timur 61385\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(272, 'PT. Mjb Pharma', '{\"address\":\"Jl. Raya babatan Km 04 desa bakalan Babatan, Babatan, Bakalan, Kec. Purwosari, Pasuruan, Jawa Timur 67162\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(273, 'PT. Kedawung Setia', '{\"address\":\"Jl. Mastrip No. 862, Warugunung, Karangpilang, Warugunung, Kec. Karangpilang, Kota SBY, Jawa Timur 60221\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(274, 'PT. Indo Sukses Sentra Usaha', '{\"address\":\"JL Raya Keputran No.88, Keputran, Bakalan, Kec. Purwosari, Pasuruan, Jawa Timur 6716\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(275, 'PT. Nippon Indosari', '{\"address\":\"Jl. Rembang Industri Raya No.28, Jati, Jati, PIER, Kec. Rembang, Pasuruan, Jawa Timur 67152\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(276, 'PT. Ajinomoto', '{\"address\":\"Jl. Raya Mlirip No.110, Gedong, Mlirip, Kec. Jetis, Kabupaten Mojokerto, Jawa Timur 61352\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(277, 'PT. PQ Silicas', '{\"address\":\"Jl. Rembang Industri Raya No.24, Jati, Pandean, Kec. Rembang, Pasuruan, Jawa Timur 67152\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(278, 'PT. Eternit Gresik', '{\"address\":\"Jl. St. Indro No.1, Jegong, Pulopancikan, Kec. Gresik, Kabupaten Gresik, Jawa Timur 61124\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(279, 'PT. Surya Multi Indopack', '{\"address\":\"Jl. Rungkut Industri XIV No.4, Kutisari, Kec. Tenggilis Mejoyo, Kota SBY, Jawa Timur 60293\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(280, 'PT. Classic Prima Carpet', '{\"address\":\"Jl. Raya Rungkut Industri II No.39, Kali Rungkut, Kec. Rungkut, Kota SBY, Jawa Timur 60292\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(281, 'PT. Gatra Mapan', '{\"address\":\"Jalan Tegal Mapan No.18, Pakiskembar, Pakis, Krajan, Pakisjajar, Kec. Pakis, Kabupaten Malang, Jawa Timur 65154\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(282, 'PT. Karunia Alam Segar-Pabrik', '{\"address\":\"Jl. Raya Sukomulyo No.Km 24, Pongangan Krajan, Pongangan, Kec. Manyar, Kabupaten Gresik, Jawa Timur 61151\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(283, 'PT. Mitra Mulia Makmur', '{\"address\":\"Jalan Hr. Moch. Mangoendiprojo No.266, Jambe, Banjarkemantren, Kec. Buduran, Kabupaten Sidoarjo, Jawa Timur 61252\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(284, 'PT. Liku Telaga', '{\"address\":\"Jl. Raya Sukomulyo Desa No.Km. 24, Tenger, Sukomulyo, Kec. Manyar, Kabupaten Gresik, Jawa Timur 61151\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(285, 'PT. Dempo Laser Metalindo', '{\"address\":\"Jl. Rungkut Industri I No.29, Kendangsari, Kec. Rungkut, Kota SBY, Jawa Timur 60293\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(286, 'PT. Garuda Top', '{\"address\":\"Jl. Rungkut Industri III No.17, Kutisari, Kec. Tenggilis Mejoyo, Kota SBY, Jawa Timur 60291\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(287, 'PT. Unilever Indonesia', '{\"address\":\"Jl. Rungkut Industri IV No.5-11, Kutisari, Kec. Tenggilis Mejoyo, Kota SBY, Jawa Timur 60291\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(288, 'PT. Aneka Gas Industry', '{\"address\":\"Jl. Raya Mojoagung, Gambiran Utara, Gambiran, Kec. Mojoagung, Kabupaten Jombang, Jawa Timur 61482\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(289, 'PT. Mitra Plasindo Mas', '{\"address\":\"Jl. Raya Sedati, Wedi, Kec. Gedangan, Kabupaten Sidoarjo, Jawa Timur 61254\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(290, 'PT. Nachindo Tape Industry', '{\"address\":\"Jl. Raya Betro No.22, Kepuh, Betro, Kec. Sedati, Kabupaten Sidoarjo, Jawa Timur 61253\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(291, 'PT. Embroitex', '{\"address\":\"Jl. Raya Driyorejo No.173-A, Dusun Driyorejo, Driyorejo, Kec. Driyorejo, Kabupaten Gresik, Jawa Timur 61177\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(292, 'PT. Indoasri Dirga Foam', '{\"address\":\"Jl. Singo Menggolo No.16, Dusun Malang Ganting, Ganting, Kec. Gedangan, Kabupaten Sidoarjo, Jawa Timur 61252\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(293, 'PT. International Chemical Industry', '{\"address\":\"Jl. Raya Rungkut Industri II No.12, Kali Rungkut, Kec. Rungkut, Kota SBY, Jawa Timur 60292\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(294, 'PT. Intimas Prima Perkasa', '{\"address\":\"HPFH+XFW, Jl. Demang Singomenggolo, Desa Sidomulyo, 02, Sidomulyo, Kec. Buduran, Kabupaten Sidoarjo, Jawa Timur 61252\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(295, 'PT. Romi Violeta', '{\"address\":\"HP99+PQG, Jl. Kesatrian, Sono, Sidokerto, Kec. Buduran, Kabupaten Sidoarjo, Jawa Timur 61252\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(296, 'PT. Karya Mitra Teknik', '{\"address\":\"Jl. R Moh. Mangundiprojo, Sawahan, Buduran, Kec. Buduran, Kabupaten Sidoarjo, Jawa Timur 61252\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(297, 'PT. Kompindo Wiratama', '{\"address\":\"Jalan Mayjend Sungkono Gang XVI, Tawangsari No.8A, Wetansari, Prambangan, Kec. Kebomas, Kabupaten Gresik, Jawa Timur 61124\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(298, 'PT. Masterindo Jaya Global', '{\"address\":\"JL. Kepatihan, Industri II, No. 19, Hendrosalam, Kepatihan, Gresik, Kabupaten Gresik, Jawa Timur 61174\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(299, 'PT. Coca Cola Amatil', '{\"address\":\"9M4X+PR7, Asabri, Nogosari, Kec. Pandaan, Pasuruan, Jawa Timur 67156\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(300, 'PT. Indraco Jaya Perkasa', '{\"address\":\"Jalan Semeru Industri 1 no.133-135 Desa Bambe, Bambe, Bangkingan, Driyorejo, Gresik Regency, East Java 61177\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 4),
(301, 'CV Atari Plastik', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(302, 'PT Aftech Rand Perkasa', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(303, 'PT Ajidharmamas Tritunggal Sakti', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(304, 'PT Alkindo Mitra Raya', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(305, 'PT Astra Honda Motor Plant Cibitung', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(306, 'PT Astra Honda Motor Plant Karawang', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(307, 'PT Astra Honda Motor Plant Pegangsaan', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(308, 'PT Astra Honda Motor Plant Sunter', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(309, 'PT Autotech', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(310, 'PT Behaestex', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(311, 'PT Broco Mobel Industry', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(312, 'PT Cemani Tokai', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(313, 'PT Century Batterai', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(314, 'PT Citra Resin', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(315, 'PT Dinar Makmur', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(316, 'PT Ecco Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(317, 'PT Ecco Tanery', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(318, 'PT Emblem Asia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(319, 'PT Gistex Chewon Syntectic - Pabrik', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(320, 'PT Gistex Chewon Syntectic - Pusat', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(321, 'PT Gistex Garment Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(322, 'PT Goldenpack Perkasa', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(323, 'PT Goodyear Indonesia Tbk', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(324, 'PT Hokkan Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(325, 'PT Imai Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(326, 'PT Inti Gunawantex', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(327, 'PT Inter World Steel Mills Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(328, 'PT Kabatama Raya', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(329, 'PT Krakatau Steel Persero', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(330, 'PT Krakatau Pipe Industries', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(331, 'PT Lautan Outsuka Chemical', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(332, 'PT MCE Seimitsu Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(333, 'PT Maspion Group', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(334, 'PT Meccaya', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(335, 'PT Medifarma Laboratories', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(336, 'PT Mega Lifesciences', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(337, 'PT Modern Gravure Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(338, 'PT Multi Garmentama', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(339, 'PT Nippon Indosari Corpindo Plant Purwakarta', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(340, 'PT Nufarm Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(341, 'PT Nutrifood Indonesia  Plant Sentul', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(342, 'PT Nutrifood Indonesia Plant Ciawi', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(343, 'PT Nutrifood Indonesia Plant Cibitung', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(344, 'PT Pilar Makmur Utama', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(345, 'PT Prasadha Pamunah Limbah Industri', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(346, 'PT Promed Raharjo Farmasi Industries - Pabrik', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(347, 'PT Promed Raharjo Farmasi Industries - Pusat', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(348, 'PT Santos Jaya Abadi', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(349, 'PT SBP Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(350, 'PT Serim Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(351, 'PT Sun Tak Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(352, 'PT TOA Coating Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(353, 'PT Unggul Semesta Bogor', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(354, 'PT Unifoods Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(355, 'PT Adatex', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(356, 'PT Banteng Pratama Rubber', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(357, 'PT Bumi Mulia Indah Lestari', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(358, 'PT Cargil Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(359, 'PT Fuji Technica Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(360, 'PT Glico Wings', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(361, 'PT G-Tekt Indonesia Manufacturing', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(362, 'PT Harsen Laboratories', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(363, 'PT Hiba Utama Sejahtera', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(364, 'PT Honoris Industri', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(365, 'PT Indopangan Sentosa', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(366, 'PT Japfa Confeed Indonesia Tbk', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(368, 'PT Kahaptex', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(369, 'PT Kahatex Plant Rancaekek', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(370, 'PT Karuniatama Polypack', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(371, 'PT Kencana Abadi Jaya', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(372, 'PT Lamipak Primula Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(373, 'PT Lintec Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(374, 'PT Loyal Indonesia Utama', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(375, 'PT Mah Sing Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(376, 'PT Mattel Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(377, 'PT Multistrada Arah Sarana', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(378, 'PT NHK Precesion Part Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(379, 'PT NS Blue Scope', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(380, 'PT Pabrik Logam Bima', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(381, 'PT Rahmat Perdana Adimetal', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(382, 'PT Samatex', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(383, 'PT Saranacentral Bajatama', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(384, 'PT Spinmill Industri', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(385, 'PT Steel Pipe Industry of Indones', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(386, 'PT Tirta Fresindo Jaya plant Cianjur', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(387, 'PT Tirta Fresindo Jaya plant Ciherang', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(388, 'PT TT Metal Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(389, 'PT TVS Motor Company Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(390, 'PT Ultra Jaya Milk Industry and Trading Company', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(391, 'PT Uniplastindo Interbuana Plant Ciawi', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(392, 'PT United Can Company Ltd', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(393, 'PT Universal Carpets and Rugs', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(394, 'PT Actavis Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(395, 'PT Aica Indonesia - Plant', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(396, 'PT Aica Indonesia - Pusat', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(397, 'PT Aichikiki Autoparts ind', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(398, 'PT Akashi Wahana Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(399, 'PT Amerta Indah Outsuka', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(400, 'PT APM Armada Suspension', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(401, 'PT Astra Component', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(402, 'PT Astra Visteon Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(403, 'PT Bekaert', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(404, 'PT Bonavista Polypack', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(405, 'PT Bridgestone Tire Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(406, 'PT Brite Polymer', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(407, 'PT Broco Mutiara Electrical Industry', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(408, 'PT Cemindo Gemilang', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(409, 'PT Chemtech Perkasa Raya', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(410, 'PT Chitose International', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(411, 'PT Chiyoda Kogyo', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(412, 'PT Cidas Supra Metalindo', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5);
INSERT INTO `organizations` (`id`, `name`, `address`, `created_at`, `updated_at`, `user_id`) VALUES
(413, 'PT Citra Abadi Sejati', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(414, 'PT. Dagsap Endura Eatore', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(415, 'PT Darya Varia Laboratories  Plant Mercedez', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(416, 'PT Darya Varia Laboratories Plant Citeurep', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(417, 'PT Dasa Windu Agung', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(418, 'PT Dhanar mas', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(419, 'PT Dinito Jaya Sakti', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(420, 'PT Erinaka Perdana', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(421, 'PT Exedy Manufacturing Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(422, 'PT FD Industri Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(423, 'PT Fiber Castell International Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(424, 'PT Firmenich Aromatics Indonesia Plant Bogor', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(425, 'PT Firmenich Aromatics Indonesia Plant Karawang', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(426, 'PT Forta Larese', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(427, 'PT Fuji oozx Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(428, 'PT Fuji Seat Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(429, 'PT Fuji Seat Indonesia Plant Karawang', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(430, 'PT Fuji Seat Indonesia Plant Surya Cipta', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(431, 'PT Fujilloy Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(432, 'PT Futami Food & Beverages', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(433, 'PT Gramedia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(434, 'PT Guna Senaputra Sejahtera', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(435, 'PT Hankook Tire Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(436, 'PT Higashifuji Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(437, 'PT HI-Lex Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(438, 'PT Hirose Electric Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(439, 'PT Indo Tirta Abadi', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(440, 'PT Indofood Sukses Makmur Plant Bogasari', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(441, 'PT Indolakto ice cream', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(442, 'PT Indomulti Mas Perkasa', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(444, 'PT Indonesia Koito', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(736, 'PT Indonesia Nippon Seiki', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(737, 'PT Indonesia Simon', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(738, 'PT Inoac Polytechno Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(739, 'PT Inti Abadi Kemasindo', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(740, 'PT Iris Int', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(741, 'PT Japfa Comfeed Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(742, 'PT Jotun Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(743, 'PT Jotun Indonesia Plant Cibitung 1', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(744, 'PT JST Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(745, 'PT Kalbe Farma Tbk', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(746, 'PT Kalbe Milko Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(747, 'PT Kaldu Sari Nabati Indonesia Plant Majalengka', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(748, 'PT Kaldu Sari Nabati Indonesia Plant Pusat', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(749, 'PT Kaldu Sari Nabati Indonesia Plant Rancaekek', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(750, 'PT Karyahidup Jayantara Textile industry', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(751, 'PT Karya Indah Multiguna', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(752, 'PT Katolec Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(753, 'PT Katsushiro Indonesia Plant Cibitung', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(754, 'PT Katsushiro Indonesia Plant Jababeka', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(755, 'PT Kino Indonesia Plant Cikande', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(756, 'PT Kino Indonesia Plant Cikembar', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(757, 'PT KMK Plastik Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(758, 'PT Kobe Boga Utama', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(759, 'PT Kotobukiya Indo Classic Industries', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(760, 'PT Krakatau Semen Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(761, 'PT Kreasi Mas Indah', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(762, 'PT LF Beauty Manufacturing Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(763, 'PT Linde Indonesia Cikarang', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(764, 'PT Lion Metal Works', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(765, 'PT Mahakam Beta Farma', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(766, 'PT Mahkota Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(767, 'PT Mandiri Raja Tirta', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(768, 'PT Mayer Indah Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(769, 'PT Mega Kharisma Plasindo', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(770, 'PT Mersifarma Tirmaku Mercusana', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(771, 'PT Metindo Erasakti', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(772, 'PT Metro Pearl Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(773, 'PT Milko Beverage Industry', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(774, 'PT Multi Saka Abadi', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(775, 'PT Nesinak Industries', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(776, 'PT Net Plastic Packaging', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(777, 'PT Nidec', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(778, 'PT Nippon Shokubai Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(779, 'PT Nissin Noodle', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(780, 'PT NS Bluescope Lysaght Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(781, 'PT Nutricell Pacific', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(782, 'PT Oasis Waters International', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(783, 'PT Osha Asia Factory', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(784, 'PT Osimo Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(785, 'PT Purbalingga Adijaya', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(786, 'PT Quantum Tosan Internasional', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(787, 'PT Rayovac Battery Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(788, 'PT Redeco Petrolin Utama', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(789, 'PT Reziki Putra Putri Eliman', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(790, 'PT Romindo Primavetcom', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(791, 'PT Rohto Laboratories Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(792, 'PT Saga Hikari Teknindo Sejati', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(793, 'PT Sankosha Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(794, 'PT SC Johnson and Son Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(795, 'PT Sentral Multirasa Utama', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(796, 'PT Sepatu Mas Idaman', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(797, 'PT SGMW Motor Indonesia  (WUALING)', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(798, 'PT SGMW Motor Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(799, 'PT Sharp Electronics Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(800, 'PT Shin-Etsu Polymer Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(801, 'PT Sinergi Adimitra Jaya', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(802, 'PT Smart Marunda', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(803, 'PT Staedler Ind', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(804, 'PT Subang Autocomp Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(805, 'PT Supra Sari Lestari', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(806, 'PT Suri Tani Pemuka Plant Sadang', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(807, 'PT Tenma Indonesia Plant Cibitung', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(808, 'PT Tenma Indonesia Plant Karawang', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(809, 'PT Tirta Mas Perkasa', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(810, 'PT Toyoda Gosei Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(811, 'PT Tri-Saudara Sentosa Industri Plant Bekasi', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(812, 'PT Ultra Sakti', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(813, 'PT Unitama Jaya Lestari', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(814, 'PT Univance Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(815, 'PT URC Indonesia', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(816, 'PT Voksel Electric Tbk', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(817, 'PT Willson Surya Unggul', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(818, 'PT Yakult Indonesia Persada', '{\"address\":\"Desa Keboharan KM. 26, Krian, Sidoarjo, 61262, Kanigoro, Keboharan, Krian, Sidoarjo Regency, East Java 61262\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 5),
(819, 'PT FRAMAS INDONESIA', '{\"address\":\"Kawasan Industri MM2100 Jl Sulawesi No 33\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(820, 'PT DJARUM', '{\"address\":\"Gendang Sewu , Bakalan Krapyak Kudus\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(821, 'PT LIWAYWAY', '{\"address\":\"JL Jababeka XVIIB Blok U CIkarang Utara\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(822, 'PT MOLTEN ALUMINUM PROCEDURES INDOENSIA', '{\"address\":\"Kawasan Industri Indotaise Sekto 1A CIkampek\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(823, 'PT EMBEE PLUMBON TEX', '{\"address\":\"Jl Raya Cirebon-Bandung Kec Plumbon, Cirebon\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(824, 'PT JUI SHIN INDONESIA', '{\"address\":\"Jl Loji Kp. Bunder Bojongmangu, Pangkalan Karawang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(825, 'PT PRYSMIAN CABLE INDONESIA', '{\"address\":\"Kalihurip, Kecamatan Cikampek\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(826, 'PT ASAHI DIAMOND INDONESIA', '{\"address\":\"Jl. Jababeka Raya Blok F No. 35 Bekasi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(827, 'PT SAMATOR TAIYO NIPPON SANSO INDONESIA', '{\"address\":\"Jl Pasirranji Kec CIkarang Pusat,Kabupaten Bekasi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(828, 'PT TRIMITRA CHITRAHASTA', '{\"address\":\"Delta Silicon 2, Cibatu\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(829, 'PT INDO LIBERTY TEXTILE', '{\"address\":\"Jl raya teluk Jambe karawang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(830, 'PT POLIPLEX FILM INDONESIA', '{\"address\":\"Jl Modern Indutsri XVIII Blok AN No 7 Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(831, 'PT CLARIANT KUJANG CATALYST', '{\"address\":\"Jl. Jend.A Yani No 39 Kalihurip, Cikampek, Karawang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(832, 'PT OJI SINARMAS PACKAGING', '{\"address\":\"Kawasan GIIC, Deltamas Blok BC 02 Sukamahi,Bekasi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(833, 'PT SANKIN INDONESIA', '{\"address\":\"Kawasan GIIC, Deltamas Blok AA 20 Sukamahi,Bekasi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(834, 'PT EKA JAYA INTERNASIONAL', '{\"address\":\"Kw.Pergudangan Dan Insutari Tunas Bitung Km13 No 1\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(835, 'PT INDOMETAL INDUSTRY', '{\"address\":\"Jl Raya Cikande Rakasbitung Majasari kec Jawilan\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(836, 'PT MEGAH INDAH GLASS', '{\"address\":\"Jl Aria Jaya Santika KM 2,5 No 5 Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(837, 'PT TRILOGAM INDOJAYA', '{\"address\":\"JL Jababeka 1 Blok R1I No 7G\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(838, 'PT UNIPRESS INDONESIA', '{\"address\":\"Bungasari, Bukit Indah Blok C-IV Puwakarta\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(839, 'PT NISSIN  MANUFACTURING INDONESIA', '{\"address\":\"Kawasan GIIC, Blok AA No 17 Bekasi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(840, 'PT CENTA BRASINDO ABADI CHEMICAL', '{\"address\":\"Jl Raya Cikande Rakasbitung Majasari kec Jawilan KM 9\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(841, 'PT HARTONO ISTANA', '{\"address\":\"Jl.Kyai H Raden Asnawi No 126 Kaliwungu Kudus \",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(842, 'PT NIPPO MECHATRONICS INDOENSIA', '{\"address\":\"Jl. Inti II Blok C4 No 6-7 Sukaresmi Cikarang Selatan\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(843, 'PT  MAGNAKABEL NUSANTARA', '{\"address\":\"Jl. Pancasila IV Cicadas kabupaten Bogor\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(844, 'PT TAEHANG INDONESIA', '{\"address\":\"Jl. Inti II Blok C1 No 9-11 Sukaresmi Cikarang Selatan\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(845, 'PT DUTA LASERINDO METAL', '{\"address\":\"Jl Citaduy 3 Plot 5L, No 3 Cikarang Selatan\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(846, 'PT GLOPAC INDONESIA', '{\"address\":\"Newton Technopark Lippo Cikarang Jl Jati 5 No 3, Bekasi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(847, 'PT SAPTA MANUNGGAL JAYA', '{\"address\":\"Jl Pik Penggilingan  No 227 Blok E Cakung, Jakarta timur\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(848, 'PT MERCOLADE INDONESIA', '{\"address\":\"Jl Kw Industri Tristate, Sukadamai Kec. Cikupa Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(849, 'PT MERO SEKAWAN JAYA', '{\"address\":\"Jl Raya Serang Km 13,8 Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(850, 'PT CALF INDONESIA', '{\"address\":\"Jl Raya Serang Km 13,8 Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(851, 'PT POLYCHEM LINDO', '{\"address\":\"Mangunreja kec Puloampel Serang, Banten\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(852, 'PT MULTI NITROTAMA KIMIA', '{\"address\":\"KPC, Jl Jend A Yani No 39 dawuan, Cikampek Karawang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(853, 'PT IHARA MFG INDONESIA', '{\"address\":\"Jl Maligi Raya Kawasan KIIC Lot G-1A Karawang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(854, 'PT SHARP SEMICONDUSTOR INDONESIA', '{\"address\":\"Jl Maligi Raya Telukjambe Lot G-1A Karawang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(855, 'PT PROPAN RAYA IDOENSIA COATING', '{\"address\":\"Jl Raya Serang Km 12 No 5 Cikupa, Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(856, 'PT OJI INDO MAKMUR PERKASA', '{\"address\":\"Kawasan GIIC Blok CA  No.5 Cikarang Pusat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(857, 'PT MATSUO PRECISION INDONESIA', '{\"address\":\"GIIC Blok AE No. 3 Deltamas, Nagasari, Kec. Serang Baru\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(858, 'PT DHARMA POLIMETAL', '{\"address\":\"Jl. Angsana Raya No.8 Blok A9, Kabupaten Bekasi,\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(859, 'PT SAURINDOTEX MANDIR', '{\"address\":\"Jl. Jati 1 Blok J5-6 No. 18, Newton Techno Park\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(860, 'PT TOKKI ENGINEERING FABRICATION', '{\"address\":\" Jl Australia I Kav.C1/2, Warnasari, Kec. Citangkil, Kota Cilegon\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(861, 'PT YUTO PACKAGING TECHNOLOGY INDONESIA', '{\"address\":\"Jl. Raya Inti No.9 Blok C, Cibatu, Cikarang Sel., Kabupaten Bekasi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(862, 'PT NIPPON HF DIAMOND INDONESIA', '{\"address\":\"Jl. Serui Blk. AE No.9, Jatiwangi, Cikarang Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(863, 'PT PROKEMAS ADIKARI KREASI', '{\"address\":\"Jalan Raya Fatahillah Km 49.5 RT.01, Kalijaya, Cikarang Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(864, 'PT INDOFOOD CBP SUKSES MAKMUR', '{\"address\":\" Jl. Raya Cikopo No.Km, RW.13, Cikopo, Kec. Bungursari Karawang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(865, 'PT SHIHLOH CIPTA MANDIRI', '{\"address\":\"Bandung\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(866, 'PT HULENE MANUFACTURING INDONESIA', '{\"address\":\"Jl Science Timur I blok B3J, tahap 5, Sertajaya, Kec. Cikarang Timur\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(867, 'PT ZHI XING INDONESIA', '{\"address\":\"JL Industri Raya 4, Blok AF No. 16, Pasar Kemis, Sukamantri, Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(868, 'PT KINGDUAN  INDONESIA', '{\"address\":\" Sawahdadap, Cimanggung, Sumedang Regency, Rancaekek Bandung\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(869, 'PT GOLDION ALUMUNIUM UTAMA', '{\"address\":\"Kawasan GIIC, Pt., Pasirranji, Kec. Cikarang Pusat,\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(870, 'PT TRAVIRA AIR', '{\"address\":\"Jalan Skatek 021, RT.3/RW.4, Halim Perdana Kusumah, Jakarta Timur\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(871, 'PT JAYA TRANS INDONESIA', '{\"address\":\"Krapkay, Kudus\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(872, 'PT HEXA PRIMA PERSADA', '{\"address\":\" Jl. Merdeka, Sukamantri, Kec. Ps. Kemis, Kabupaten Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(873, 'PT BAJA SARANA MULTI', '{\"address\":\"Jl. Cakung Cilincing Raya No.KM.1 5, Cakung Bar.,Jakarta Timur\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(874, 'PT POLIPACK INDONESIA', '{\"address\":\"JL. Bayur Kali Rt. 01/04, No. 118, Lb. Wangi, Kec. Sepatan Tim.,Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(875, 'PT POLINDO UTAMA', '{\"address\":\"JL. Bayur Kali Rt. 01/04, No. 119, Lb. Wangi, Kec. Sepatan Tim.,Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(876, 'PT SHE TAI INDUSTRIAL', '{\"address\":\"Kawasan MM 2100 Blok C2 No. 4, Jalan Selayar, Cikarang Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(877, 'PT SARIGUNA PRIMATIRTA', '{\"address\":\"Jl. Pangeran Antasari KM 3, Kabupaten Cirebon, Provinsi Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(878, 'PT ETERNAL BUANA CHEMICAL', '{\"address\":\"Jl. Raya Serang, Dukuh, Kec. Cikupa, Kabupaten Tangerang, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(879, 'PT GUNAERA MANUFAKTURA', '{\"address\":\"Newton Techno Park, Jl. Jati Raya No.J2/1, Serang, Cikarang Selatan\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(880, 'PT INDONESIA POLYURETHANE', '{\"address\":\"JL. Raya Legok Km 7 RT 005/02, Legok, Tangerang, Kabupaten Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(881, 'PT KEFI WANGI', '{\"address\":\"Jl. Raya Narogong No.35,  Kec. Klapanunggal, Kabupaten Bogor\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(882, 'PT S IK', '{\"address\":\"EJIP . Cikarang Selatan\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(883, 'PT YAMATOGOMU INDONESIA', '{\"address\":\"Kawasan Industri Indotaisei Blok K-6, Kalihurip, Kec. Cikampek\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(884, 'PT VARLEY INDONESIA', '{\"address\":\"Jl. Prabu Siliwangi No.42, Keroncong, Kec. Jatiuwung, Kota Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(885, 'PT KANEFUSA INDONESIA', '{\"address\":\"Sukaresmi, Cikarang Selatan, Bekasi Regency\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(886, 'PT SHINDENGEN INDONESIA', '{\"address\":\" Kawasan GIIC Blok AD No.2, Deltamas, Jl. H Iming, Nagasari,\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(887, 'PT CABININDO', '{\"address\":\" EJIP Selatan Plot IF-3A, Jatireja, Jl. Kawasan Industri Ejip No.3A, Sukaresmi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(888, 'PT MEGMILK SNOWBRAND INDONESIA', '{\"address\":\"Jl. Science Boulevard, Blk. B1 Kawasan Industri Jababeka V No.A1, Jayamukti\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(889, 'PT TAIYO KATECS INDONESIA', '{\"address\":\" Jl. Sungkai Blok F26/19 K-L,Kawasan Industri Delta Silikon 5,Ds, Cicau Bekasi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(890, 'PT DAIKYO NISHIKAWA INDONESIA', '{\"address\":\"Surya Cipta Factory Pt., Kutanegara, Kec. Ciampel, Karawang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(891, 'PT TRISTAR KARTONINDO INDONESIA', '{\"address\":\"Jalan Kenari Raya No.5 Blok G2, Sukamahi, Kec. Cikarang Pusat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(892, 'PT FUJISHUI INDONESIA', '{\"address\":\"Jl. Gn. Tangkuban Perahu, Cibatu, Cikarang Sel., Kabupaten Bekasi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(893, 'PT INDOGLASS', '{\"address\":\"Jl Raya narogong KM 16 PasirLimus, Kab. Bogor\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(894, 'PT PARKER METAL TREATMENT INDONESIA', '{\"address\":\" Kawasan Industri MM Jl. Irian V No.2100, Jatiwangi, Kec. Cikarang Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(895, 'PT HALDIN PASIFIC SEMESTA', '{\"address\":\" Jl. Irian V Blok MM-2, Jatiwangi, Kec. Cikarang Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(896, 'PT PEROKSIDA INDONESIA PRATAMA', '{\"address\":\"Jalan Jend. A. Yani No.39, Kalihurip, Kec. Cikampek\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(897, 'PT AGRICON', '{\"address\":\"Jl. Siliwangi No.68, RT.01/RW.04, Lawanggintung, Kec. Bogor\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(898, 'PT FAJAR PAPPER', '{\"address\":\"Jl. Abdul Muis No.34, RT.2/RW.8, South Petojo, Gambir, Central Jakarta City\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(899, 'PT JFE STEEL GALVANISH', '{\"address\":\"Jl. Aru Blok F Kawasan Industri MM2100, Sukasejati\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(900, 'PT INTAN SAFETY GLASS', '{\"address\":\"Jl. Arya Kemuning No.7, Periuk Jaya, Kec. Periuk\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(901, 'PT KENDALINDO', '{\"address\":\"Jl. Arya Kemuning No.88K, RT.003/RW.003, Periuk Jaya, Kec. Periuk\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(902, 'PT SUGITY CREATIVE', '{\"address\":\"Jl. Bali I Kawasan Industri MM No.2100 No. 17-20, Gandamekar\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(903, 'PT HYUN JIN INDONESIA', '{\"address\":\"Jl. Surya Utama, Mulyasari, Ciampel, Mulyasari, Kec. Ciampel,\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(904, 'PT PANASONIC GOBEL LIFE INDOENSIA', '{\"address\":\" Jl. Raya Narogong 8 No.Km 23, Dayeuh, Kec. Cileungsi, Bogor\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(905, 'PT HOWA INDONESIA', '{\"address\":\"Cikarang Selatan, Serang, Cikarang Sel., Kabupaten Bekasi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(906, 'PT BHUMIPUTERA MANUFACTURING INDOENSIA', '{\"address\":\"Kawasan Industri Jababeka, Jl. Jababeka VIIIA No.1 Blok B No. 11Q-R\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(907, 'PT HINO MOTOR MANUFACTURING INDONESIA', '{\"address\":\"Jl. Bukit Damar III, Kamojing, Kec. Cikampek, Karawang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 6),
(908, 'PT Agel Langgeng', '{\"address\":\"Jl. Raya Bekasi Km. 27, Medan Satria, Bekasi Barat Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(909, 'PT Alba Unggul Metal', '{\"address\":\"Jl. Industri Raya III Kawasan Industri Block Ac No. 2, Jatake, Kec. Cikupa, Kabupaten Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(910, 'PT Astra Daihatsu Assembly', '{\"address\":\"Jalan Gaya Motor Barat.3/5 Sunter, II, Sungai Bambu, Kec. Tj. Priok, Jkt Utara, Daerah Khusus Ibukota Jakarta 14330\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(911, 'PT Astra Daihatsu Assembly Karawang', '{\"address\":\"Jl. Surya Pratama, Kutanegara, Kec. Ciampel, Karawang, Jawa Barat 41363\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(912, 'PT Astra Daihatsu Casting', '{\"address\":\"Jl Raya Maligi Kawasan Karawang International Industry City Lot A 5\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(913, 'PT Astra Daihatsu Enggine', '{\"address\":\"Kawasan Industri KIIC Lot M No. 6, Jl. Maligi VI, Margakaya, Telukjambe Barat, Margakaya, Kec. Telukjambe Bar., Karawang, Jawa Barat 41361\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(914, 'PT Astra Daihatsu Pusat', '{\"address\":\"Jl. Gaya Motor III No.5, Sunter Jaya, Kec. Tj. Priok, Jkt Utara, Daerah Khusus Ibukota Jakarta 14350\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(915, 'PT Astra Daihatsu Stamping', '{\"address\":\"Jl. Gaya Motor Barat No.8, RW.4, Sungai Bambu, Kec. Tj. Priok, Jkt Utara, Daerah Khusus Ibukota Jakarta 14330\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(916, 'PT Bekasi Power', '{\"address\":\"Kawasan Industri Gerbang Teknologi Cikarang, Jalan Tekno No. 8, Cikarang Utara, Tanjungsari, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(917, 'PT Dunia Kimia Jaya (Cibitung)', '{\"address\":\"Jl. Sulawesi III, Blok M-29 Kawasan Industry MM2100, Cikarang, West Java, Indonesia\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(918, 'PT Duta Abadi Primantara', '{\"address\":\"Jl. Galeong No.7, RT.004/RW.007, Margasari, Kec. Karawaci, Kota Tangerang,\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(919, 'PT Indo Creative Mebel', '{\"address\":\"Jl. Meranti III No.L8, Sukaresmi, Cikarang Sel., Kabupaten Bekasi, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(920, 'PT KMK Global Sport', '{\"address\":\"Kawasan Industri Cikupa Mas, Jl. Cikupamas Raya No.17, Talagasari, Kec. Cikupa, Kabupaten Tangerang, Banten 15810\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(921, 'PT Lotte Packaging Indonesia', '{\"address\":\"Jl. Raya Curug Km 1.1, Ds. Kadu Jaya, Curug, Kadu Jaya, Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(922, 'PT Merdeka Buana Jaya', '{\"address\":\"Jl. Raya Merdeka No.185, RT.003/RW.003, Cimone Jaya, Kec. Karawaci, Kota Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(923, 'PT Mitshubitsi Tanabe Pharma', '{\"address\":\"Jl. Rumah Sakit No.104, Pakemitan, Kec. Cinambo, Kota Bandung, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(924, 'PT Monokem Surya', '{\"address\":\"Jl. Proklamasi No.KM.12, Amansari, Kec. R.Dengklok, Karawang, Jawa Barat 41352\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(925, 'PT Pratapa Nirmala', '{\"address\":\"Jl. Industri Raya II No.8 Blok K, RT.006/RW.004, Pasir Jaya, Kec. Jatiuwung, Kota Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(926, 'PT Primarajuli Sukses', '{\"address\":\"Kampung Bolang, Jl. Aria Jaya Santika, Pasir Bolang, Kec. Tigaraksa, Kabupaten Tangerang, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(927, 'PT Saga Multi', '{\"address\":\"Jl. RH. Didi Sukardi No.157, Gedongpanjang, Kec. Citamiang, Kota Sukabumi, Jawa Barat \",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(928, 'PT Supernova Flexible Packaging Ancol', '{\"address\":\"Jl. Ancol Barat 6 No. 1 - 2, Ancol, Pademangan, RT.1/RW.3, Ancol, Kec. Pademangan, Jkt Utara, Daerah Khusus Ibukota Jakarta 14430\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(929, 'PT Supernova Flexible Packaging Cibitung', '{\"address\":\"Kawasan Industri MM2100 XV Blok RR No. 11Cikarang, Jl. Irian, Cikedokan, Cikarang Barat, Bekasi Regency, West Java 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7);
INSERT INTO `organizations` (`id`, `name`, `address`, `created_at`, `updated_at`, `user_id`) VALUES
(930, 'PT Supernova Flexible Packaging JB2', '{\"address\":\"Kawasan Industri Jababeka II, Blok. LL No.1, Pasirsari, Sel., Jalan Industri Selatan, Pasirsari, Cikarang Selatan, Pasirsari, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(931, 'PT Supernova Flexible Packaging JB6', '{\"address\":\"Kawasan Industry Jababeka 6 Jl. East Park Boulevard, Blok B No. 2B., Jatireja, East Cikarang, Jatireja, Kec. Cikarang Tim., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(932, 'PT TAK Textile Indonesia', '{\"address\":\"Jl. Raya Serang KM 12. Kecamatan Cikupa, Kelurahan Sukadamai, 15710. Kabupaten Tangerang Banten Indonesia\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(933, 'PT Tirta Investama Mekarsari', '{\"address\":\"Purwasari, Cicurug, Sukabumi Regency, West Java 43359\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(934, 'PT Toyo Dies', '{\"address\":\"Surya Cipta City Of Industry, Jl. Surya Madya No.Kav. I-15 B, Kutamekar, Ciampel, Karawang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(935, 'PT Astra Nippon Gasket', '{\"address\":\"Jl. Maligi III.Lot N, RW.1, Margakaya, Telukjambe Barat, Karawang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(936, 'PT Bitung Jaya Inti Cemerlang', '{\"address\":\"Jl. Raya Serang No.88 Km 10, 5, Bitung Jaya, Cikupa, Tangerang Regency, Banten\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(937, 'PT Cipta Mortar', '{\"address\":\"Jl. Sumbawa No.1, Gandasari, Kec. Cikarang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(938, 'PT Delta Pack (Cikarang)', '{\"address\":\"BIIE Jl. Inti III Block C7 No. 7, Lemahabang, Cibatu, Cikarang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(939, 'PT Diamas Star', '{\"address\":\"Jl. Industri VIII No.3, Pasir Jaya, Kec. Jatiuwung, Kota Tangerang,\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(940, 'PT Gaya Motor', '{\"address\":\"Jl. Gaya Motor Raya No.3, RW.8, Sungai Bambu, Kec. Tj. Priok, Jkt Utara\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(941, 'PT Kayaba Indonesia', '{\"address\":\"Jl. Jawa Blok II No.4 Kawasan Industri MM 2100, Jatiwangi, Kec. Cikarang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(942, 'PT Komatsu Indonesia', '{\"address\":\"Kawasan Industri MM 2100, Jl. Jawa Raya Blok JJ IV-2, Cibitung, Jatiwangi, Kec. Cikarang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(943, 'PT Novell Pharmaceutical', '{\"address\":\"Jl. Raya Wanaherang No.35, Tlajung Udik, Kec. Gn. Putri, Kabupaten Bogor\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(944, 'PT Tirta Investama (Babakan)', '{\"address\":\"Jl.Cidahu kp.Pojok Rt.03/Rw.01, Bogor\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(945, 'PT Tirta Investama (Citeureup)', '{\"address\":\"JL. Raya Mercedes Benz, Cicadas, 16964, Gunung Putri, Cicadas, Bogor, Kabupaten Bogor, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(946, 'PT Tirta Investama (Subang)', '{\"address\":\"JL. Darmaga, Cisalak, Bojongloa, Subang, Kabupaten Subang, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(947, 'PT Adis Dimension Footwear', '{\"address\":\"Jl. Raya Serang No.Km, Balaraja, Kec. Balaraja, Kabupaten Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(948, 'PT Aneka Sari Vita', '{\"address\":\"Jl. Raya Serang KM 24.5 No.105, Sentul, Kec. Balaraja, Kabupaten Tangerang, Banten\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(949, 'PT Ankewa Chemical Indonesia', '{\"address\":\"Cimahi, Klari, Karawang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(950, 'PT APM Automotive Indonesia', '{\"address\":\"Kutanegara, Ciampel, Karawang, West Java 41363\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(951, 'PT Asahi Best Base', '{\"address\":\"Mm2100 Industrial Town Blok C-2, Cikarang Barat, Gandamekar, Gandasari, Kec. Cikarang , Kab Bekasi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(952, 'PT Batavia Alumindo', '{\"address\":\"Kw. Industri Tristate, Pasir Jaya, Kec. Cikupa, Tangerang, Banten\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(953, 'PT Biggy Cemerlang', '{\"address\":\"Muara 23A Indonesia, Jl. Kapuk Kamal Raya, RT.2/RW.2, Kamal Muara, Kec. Penjaringan, Jkt Utara\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(954, 'PT Bina Nusantara Prima', '{\"address\":\"JL. Industri 2, No. 18, Leuwigajah, Utama, Kec. Cimahi Sel., Kota Cimahi, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(955, 'PT Cahaya Annodize Industry', '{\"address\":\"Jl. Raya Pertamina Cikarang A No. 1, Karangsentosa, Kec. Karangbahagia, Kabupaten Bekasi, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(956, 'PT Cahaya Baru Plastik', '{\"address\":\"Jl. Sukaampat No.65-66, Kayuambon, Kec. Lembang, Kabupaten Bandung Barat, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(957, 'PT Canopus Konverta Industri', '{\"address\":\"Jl. Sarinembah No.80, Sukahati, Kec. Citeureup, Kabupaten Bogor, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(958, 'PT Cirebon Furniture', '{\"address\":\"Jl.Tegalsari Lemah Tamba Blok Situri No.00 RT.016 RW.004 Pangkalan Plered Cirebon \",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(959, 'PT CJ Foodville', '{\"address\":\"Jl. Selayar, Mekarwangi, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat \",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(960, 'PT Compotec International', '{\"address\":\" Jl. Neglasari II Kedung Halang, Ciparigi, Kec. Bogor Utara, Kota Bogor, Jawa Barat \",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(961, 'PT Cosmo Makmur  Indonesia', '{\"address\":\"Jl. Raya Cileungsi - Jonggol KM.7 No.89, Gandoang, Kec. Cileungsi, Cileungsi  Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(962, 'PT Dantosan Precon Perkasa', '{\"address\":\"Jl. Raya Curug - Kosambi No.107, Walahar, Kec. Klari, Karawang, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(963, 'PT Elastis Reka Aktif (PANERA)', '{\"address\":\"Jl. Kapuk Raya No.88E-F-G, Penjaringan, RT.5/RW.2, Kapuk Muara, Kec. Penjaringan, Kota Jakarta Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(964, 'PT Georg Fischer Indonesia', '{\"address\":\"Jl. Industri Anggadita No.1, Anggadita, Kec. Klari, Karawang, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(965, 'PT Gunfesas technology', '{\"address\":\"Jl. Olympic Raya No.Kav. A3, Sumur Batu, Sentul, Kec. Babakan Madang, Kabupaten Bogor\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(966, 'PT Hadid Al Barokah', '{\"address\":\"Jl. Ciandam No.004, RT.002/RW.04, Sudajaya Girang, Kec. Cibeureum, Kota Sukabumi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(967, 'PT Hadtex', '{\"address\":\"Jl. Cangkuang Kulon No.KM 2, Cangkuang Wetan, Kec. Dayeuhkolot, Kabupaten Bandung\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(968, 'PT Halim Samudra Interutama', '{\"address\":\"Jalan Industri Raya IV No.10 Blok AE, Bunder, Cikupa, Tangerang Regency, Banten\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(969, 'PT Hanken', '{\"address\":\"kawasan MM2100 Danau Indah, Cikarang Barat, Bekasi Regency\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(970, 'PT Indonesia Wacoal', '{\"address\":\"Jalan Desa Tarikolot No. 59 Citeureup, Tarikolot, Kec. Citeureup, Kabupaten Bogor\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(971, 'PT Indopack Nusantara', '{\"address\":\"Jl. Prof. Dr. Ir. Soetami Km 7. Lebak, Rangkasbitung Banten\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(972, 'PT Indoseiki Metalutama', '{\"address\":\"Kawasan Industri Jatake, Blok AD No, Jl. Industri Raya III 23-B, Bunder, Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(973, 'PT Intera Lestari Polimer', '{\"address\":\"Jl. Raya Serang Jaha No.Km 24.5, RT.002/RW.001, Sentul Jaya, Kec. Balaraja, Kabupaten Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(974, 'PT Jinwoo Enginering Indonesia', '{\"address\":\"JL Raya Tabri Cirarab, Legok\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(975, 'PT Kanemory', '{\"address\":\"Kawasan Industri Modern Cikande, Jl. Utama Modern Industri No.8, Sukatani, Kec. Cikande Serang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(976, 'PT Klip Plastik', '{\"address\":\"Jl. Yos Sudarso No.115A, RT.001/RW.002, Kb. Besar, Kec. Batuceper, Kota Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(977, 'PT Lakta Aroma Indonesia', '{\"address\":\"Jl. Irian 1-2 Blok No.1-2, Jl. Irian 1-2 Blok N N No.1-2, Jatiwangi, Cikarang Barat, Bekasi \",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(978, 'PT Lesalle Food', '{\"address\":\"Jl. Raya Narogong, Pasir Angin, Kec. Cileungsi, Kabupaten Bogor, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(979, 'PT Limas Lestari', '{\"address\":\"Jl. Soka Blok F17-05 Delta Silicon 3 Industrial Park Lippo Cikarang, Cicau, Kec. Cikarang Pusat,\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(980, 'PT Mandiri Investama Sejati', '{\"address\":\"Jl. Pahlawan No.239, Sanja, Kec. Citeureup, Kabupaten Bogor, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(981, 'PT Maruhachi Indonesia', '{\"address\":\" EJIP Industrial Park Plot 7F 1, Jl. Cilosari 2, Sukaresmi, Cikarang Sel., Kabupaten Bekasi,\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(982, 'PT Maruhide', '{\"address\":\"Kawasan GIIC Blok AC No.7, Deltamas, Sukamahi, Kecamatan Cikarang Pusat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(983, 'PT Matsuzawa Pelita Furniture', '{\"address\":\"Karawang Industrial Estate, Cimahi, Kec. Klari, Karawang, Jawa Barat 41371\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(984, 'PT Megah Mas Prima', '{\"address\":\"Jl. Raya Serang, Bojong, Kec. Cikupa, Kabupaten Serang, Banten\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(985, 'PT Mitsuba Indonesia', '{\"address\":\"Jl. Prabu Siliwangi No.88, RT.001/RW.004, Keroncong, Kec. Jatiuwung, Kota Tangerang, Banten \",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(986, 'PT Molex Ayus', '{\"address\":\"Bunder, Kec. Cikupa, Kabupaten Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(987, 'PT Morry Industries', '{\"address\":\"Kutamekar, Ciampel, Karawang, West Java 41363\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(988, 'PT Moya Tangerang', '{\"address\":\"alan PU Prosida Bendungan 10, Kelurahan Mekarsari, Kecamatan Neglasari, RT.001/RW.002 Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(989, 'PT Multi Usaha Wisesa', '{\"address\":\"JL. Raya Tlajung Udik No. 454, Gunung Putri, Bogor - West Java 16965\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(990, 'PT Murotech Indonesia', '{\"address\":\"Jl. Surya Lestari, Kutamekar, Kec. Ciampel, Karawang, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(991, 'PT Musashi Auto Parts Indonesia', '{\"address\":\"EJIP Industrial Park Plot, Jl. Citanduy Raya No.2 3J-2, Sukaresmi, Cikarang Sel., Kab Bekasi, Jawa Barat \",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(992, 'PT Nandya Persada Sejahtera', '{\"address\":\"Jl.Pancasila IV RT02 RW13, Cicadas, Gunung Putri, Cicadas, Kec. Gn. Putri, Kabupaten Bogor, Jawa Barat \",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(993, 'PT Nipro Indonesia Jaya', '{\"address\":\"Jl. Surya Utama Kav. I-22B, 23 & 24 Desa Kutamekar, Kutanegara, Kec. Ciampel, Karawang,\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(994, 'PT NLK Indonesia', '{\"address\":\"Kawasan Baja Mas RT/RW.001/002, Talagasari, Kec. Balaraja, Kabupaten Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(995, 'PT Oneject Indonesia', '{\"address\":\" Kawasan GIIC, Jl. Kawasan Industri Terpadu Indonesia China, Kav 41, Nagasari, Kec. Cikarang Pusat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(996, 'PT Ori Polytec', '{\"address\":\"Jl. Akasia II Blok A9 3 Delta Silicon Industrial Park Kawasan Industri Lippo Cikarang, Bekasi Regency,\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(997, 'PT Otani Paper', '{\"address\":\"Jl. Industri Raya I No.6A Jatake Jatiuwung RT.005, RT.005/RW.005, Jatake, Kec. Jatiuwung Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(998, 'PT Otto Pharma', '{\"address\":\"Jl. Dr. Setiabudi No.Km 12, RW.1, Gudangkahuripan, Bandung, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(999, 'PT Pachira Distrinusa', '{\"address\":\"Jl. KH. EZ Muttaqien No.95, RT.004/RW.006, Gembor, Kec. Periuk, Kota Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1000, 'PT Panarub Industry', '{\"address\":\"Jalan Raya Mauk KM. 1 Pasar Baru, RT.005/RW.004, Gerendeng, Kec. Karawaci, Kota Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1001, 'PT Pipamas Primasejati', '{\"address\":\"Jl. Soekarno-Hatta No.409 Lt. 2, Karasak, Kec. Astanaanyar, Kota Bandung, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1002, 'PT PK Manufacturing', '{\"address\":\"Kawasan Industri KIIC, Jln Harapan Raya Lot JJ-2B Sirnabaya, Teluk Jambe Timur Karawang Bar\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1003, 'PT Plasindo Bhama Prasasta', '{\"address\":\"Jl. Pasar Kemis, Km. 2.5, Pasir Jaya, Jatiuwung, RT.003/RW.005, Gelam Jaya Kota Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1004, 'PT Polypackaging Industries', '{\"address\":\"Kawasan industri jatake blok ac no.88 Jl.industri raya 3,pasirjaya, Bunder, Kec. Cikupa, Kabupaten Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1005, 'PT Ponda Nusa Aditama', '{\"address\":\"Jl. Jababeka 2 Blok C No.12C, Pasirgombong, Kec. Cikarang Utara, Kabupaten Bekasi\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1006, 'PT Porto Food', '{\"address\":\"Jl. Lkr. Sel., RT.01/RW.15, Dayeuhluhur, Kec. Warudoyong, Kota Sukabumi, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1007, 'PT Preformed Line Product Indonesia', '{\"address\":\"Jl. Irian VII, Jatiwangi, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat \",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1008, 'PT Primacorr Mandiri', '{\"address\":\"Jl. Raya Serang No.KM 13,8, Sukadamai, Kec. Cikupa, Kabupaten Tangerang, Banten\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1009, 'PT Primadaya  Plastindo', '{\"address\":\"Jl. Raya Ps. Kemis No.84, Suka Harja, Kec. Sindang Jaya, Kabupaten Tangerang, Banten\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1010, 'PT Royal Abadi Sejahtera', '{\"address\":\"Jl.Raya Barat, Cimareme, Kec. Ngamprah, Kabupaten Bandung Barat, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1011, 'PT Sarandi karya Nugraha', '{\"address\":\"Komplek Sentris Blok E No. 9, Cibatu, Kec. Cisaat, Kabupaten Sukabumi, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1012, 'PT Sato Label Indonesia', '{\"address\":\" Kawasan MM2100, Jl. Aru Blok L-2, Desa Suka Sejati, Kec. Cikarang Selatan, Sukasejati, Cikarang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1013, 'PT Semen Jawa', '{\"address\":\"Kertaraharja, Cikembar, Sukabumi Regency\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1014, 'PT Simex Pharma', '{\"address\":\"Jalan Pelabuhan II Km. 9, Kecamatan Gunungguruh, Kebonmanggu, Sukabumi, Kabupaten Sukabumi, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1015, 'PT Sinar Rasa Kencana', '{\"address\":\"Jl. Raya Pajajaran No.10, RT.001/RW.003, Jatiuwung, Kec. Cibodas, Kota Tangerang, Banten\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1016, 'PT Sintas Kurama', '{\"address\":\"JL. Jenderal Ahmad Yani, No. 39, Cikampek, Kawasan Industri Kujang Cikampek KIKC), Karawang, Central Dawuan, Cikampek, Karawang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1017, 'PT Summit Adyawinsa', '{\"address\":\"Jl. Pangkal Perjuangan, Tanjungmekar, Kec. Karawang Bar., Karawang, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1018, 'PT Suntory Garuda', '{\"address\":\"Desa Cicadas, RT. 03 /04, Jl. Mercedes Benz No.KM. 2,6, Cicadas, Kec. Gn. Putri, Kabupaten Bogor,\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1019, 'PT Syntoba Grafika', '{\"address\":\"Komplek Pergudangan III Jati No. 88 KM 16, Jl. Cendana V, Salembaran Jati, Kosambi, Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1020, 'PT Tirta Investama (Caringin )', '{\"address\":\"Jl. Raya Bogor - Sukabumi No.168, Muara Jaya, Kec. Caringin, Kabupaten Bogor, Jawa Barat \",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1021, 'PT Tirta Investama (Cianjur)', '{\"address\":\"Jl. Sukabumi - Cianjur Km. 15, Desa Gekbrong, Kecamatan Gekbrong, Kec. Cianjur, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1022, 'PT Tirta Investama (Ciherang)', '{\"address\":\"Jl. Mayjen HE. Sukma Km. 15, Ciherang Pondok, Caringin, Ciherang Pd., Kec. Caringin, Kabupaten Bogor, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1023, 'PT Tirta Investama (Sentul)', '{\"address\":\"Jl. Olympic Raya No.kav. A7, Sentul, Kec. Babakan Madang, Kabupaten Bogor, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1024, 'PT Tirta Sukses Bogor', '{\"address\":\"Jl. Cijeruk-Caringin Raya No.3, Wr. Menteng, Kec. Cijeruk, Kabupaten Bogor, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1025, 'PT Tirta Sukses Cianjur', '{\"address\":\"Jl. Raya Cianjur Bandung No.KM 13, RT.056/RW.5, Ciranjang, Kec. Ciranjang, Kab Cianjur, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1026, 'PT Unggul Indah Cahaya', '{\"address\":\"Jl. Raya Gerem / Merak, Gerem, Kec. Gerogol, Kota Cilegon, Banten\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1027, 'PT Unipack Plasindo', '{\"address\":\"Jl.  Cicau, Central Cikarang, Bekasi Regency, West Java 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1028, 'PT Vivo Indonesia', '{\"address\":\"JL. Bhumimas VIII no 10 A-D, Talaga, Kec. Cikupa, Kabupaten Tangerang\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1029, 'PT Vuteq Indonesia', '{\"address\":\"Jl. Cemp. No.KM. 37, Jatimulya, Kec. Tambun Sel., Kabupaten Bekasi, Jawa Barat \",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1030, 'PT Yolita Jaya', '{\"address\":\"Jl. Industri Cimareme I No.1, Cipeundeuy, Kec. Padalarang, Kabupaten Bandung Barat, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 7),
(1031, 'PT Agriwangi', '{\"address\":\"Kawasan Industri Branta Mulya, Jl. Elang No.88, RT.05/RW.04, Sanja, Kec. Citeureup, Kabupaten Bogor,\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1032, 'PT Ajinomoto', '{\"address\":\"Jl. Harapan Raya Blok JJ No. 1, Sirnabaya, Telukjambe Timur, Karawang, Jawa Barat 41361\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1033, 'PT American Standard', '{\"address\":\"Jl. Raya Narogong, Limus Nunggal, Kec. Cileungsi, Kabupaten Bogor, Jawa Barat 16820\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1034, 'PT Argha Karya Prima Industry', '{\"address\":\"Jl. Pahlawan No.53, Karang Asem Bar., Kec. Citeureup, Kabupaten Bogor, Jawa Barat 16810\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1035, 'PT Arnotts Indonesia', '{\"address\":\"Jl. Wahab Affan No.8, RT.002/RW.002, Medan Satria, Kecamatan Medan Satria, Kota Bks, Jawa Barat 17132\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1036, 'PT Asahimas Flat Glass', '{\"address\":\"Section IA, Jl. Kw. Industri Jl. Indotaisei Raya Blok M, Kalihurip, Cikampek, Karawang, West Java 41373\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1037, 'PT Asia Pacific Fiber', '{\"address\":\"Desa Kiara Payung, Klari, Kiarapayung, Kec. Klari, Karawang, Jawa Barat 41300\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1038, 'PT Asietex Sinarindo Pratama', '{\"address\":\"Jl. Interchange Cikampek Bar., Dawuan Tengah, Kec. Cikampek, Karawang, Jawa Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1039, 'PT Aspex Kumbong', '{\"address\":\"Jl. Raya Narogong No.KM, RW.26, Dayeuh, Kec. Cileungsi, Kabupaten Bogor, Jawa Barat 16820\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1040, 'PT Bina Niaga Multi Usaha', '{\"address\":\"Kawasan Industri Jababeka, Jl. Industri Sel. Ⅳ Blok PP No.4 Tahap II, Pasirsari, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1041, 'PT Bina Usaha Mandiri Misuzawa', '{\"address\":\"Jl. KH. EZ Muttaqien No.Kel, RT.003/RW.006, Alam Jaya, Kec. Jatiuwung, Kota Tangerang, Banten 15133\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1043, 'PT Budi Texindo', '{\"address\":\"JL. Raya Rangkas Bitung, Km. 3, Kopo, Kareo, Serang, Kabupaten Serang, Banten 42177\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1044, 'PT Chandra Asri Petrochemical Tbk', '{\"address\":\"Jl. Raya Anyer-Sirih No.KM. 123, Gunungsugih, Kec. Ciwandan, Kota Cilegon, Banten 42447\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1045, 'PT Cometa Can', '{\"address\":\"Jl. Telesonic KM8 No. 5, RT.006/RW.004, Pasir Jaya, Jatiuwung, Tangerang City, Banten 15135\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1046, 'PT Delta Jakarta', '{\"address\":\"Jl. Inspeksi Tarum Barat, Setiadarma, Kec. Tambun Sel., Kabupaten Bekasi, Jawa Barat 17510\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1047, 'PT Delta Prima Lestari', '{\"address\":\"Jl. Kp. Sanja/Jl. Balai Desa Sanja/Jalan Bina Marga No.8, RT.3/RW.5, Sanja, Citeureup, Bogor Regency, West Java 16810\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1048, 'PT Dexa Medica', '{\"address\":\"Blok PP, Jl. Industri Sel. VII Kawasan Industri Jababeka II No.7, Pasirsari, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1049, 'PT Dystar Colours', '{\"address\":\"Jl. Raya Citeres Rangkasbitung No.Km. 3, RW.8, Gabus, Kec. Kopo, Kabupaten Serang, Banten 42178\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1050, 'PT Federal Izumi Manufacturing', '{\"address\":\"Jl. Raya Narogong No.KM.23, RT.04/RW.8, Dayeuh, Kec. Cileungsi, Kabupaten Bogor, Jawa Barat 16820\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1051, 'PT Clariant Indonesia', '{\"address\":\"Gatot Subroto KM. 4, Jalan Kalisabi No. 1, Uwung Jaya, Cibodas, RT.003/RW.016, Uwung Jaya, Kec. Cibodas, Kota Tangerang, Banten 15138\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1052, 'PT Dua Kelinci', '{\"address\":\"Jl. Raya Pati - Kudus No.Km 6, RW.3, Lumpur, Bumirejo, Kec. Margorejo, Kabupaten Pati, Jawa Tengah 59163\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1053, 'PT Fusoh Tube Parts', '{\"address\":\"Kawasan Industri Jababeka VI, Jalan Jababeka VI Blok B No. 3, Cikarang Timur, Jatireja, Kec. Cikarang Tim., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1054, 'PT Graha Bumi Hijau', '{\"address\":\"Jl. Raya Teuku Umar No.14, Gandasari, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1055, 'PT Hasil Raya', '{\"address\":\"Dsn Mangga Besar 2, Desa Walahar, Kec Klari Kawasan ABC, Karawang Timur, Walahar, Kec. Klari, Karawang, Jawa Barat 41371\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1056, 'PT Heinz ABC Indonesia', '{\"address\":\"Jl. Bend. Walahar, RT.007/RW.002, Walahar, Kec. Klari, Karawang, Jawa Barat 41371\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1057, 'PT Gancar Gemilang', '{\"address\":\"Kawasan Industri Jatake Blok AI No. 3, Jl. Industri Raya III, Pasir Jaya, Cikupa, Tangerang Regency, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1058, 'PT Indo Bharat Rayon', '{\"address\":\"Cilangkap, Babakancikao, Purwakarta Regency, West Java 41151\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1059, 'PT Gosyen', '{\"address\":\"Jl. Jend. Gatot Subroto Km. 4 Kawasan Industri, Jl. Kalisabi No.7, RT.003/RW.012, Uwung Jaya, Kec. Cibodas, Kota Tangerang, Banten 15138\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1060, 'PT Hokita Presisi', '{\"address\":\"Jl. Palem Manis Raya No.11, RT.005/RW.006, Gandasari, Kec. Jatiuwung, Kota Tangerang, Banten 15134\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1061, 'PT Indolakto', '{\"address\":\"Cicurug, Pasawahan, Sukabumi, Kabupaten Sukabumi, Jawa Barat 43359\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1062, 'PT Jayatama Selaras', '{\"address\":\"Jl. Raya Narogong Dusun 2 No.Rt. 17 / 05, Kembang Kuning, Kec. Klapanunggal, Kabupaten Bogor, Jawa Barat 16820\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1063, 'PT Kansai Prakasa Coating', '{\"address\":\"Jl. Gatot Subroto KM 7, Pasir Jaya, Jatiuwung, RT.007/RW.002, Pasir Jaya, Kec. Jatiuwung, Kota Tangerang, Banten 15135\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1064, 'PT Kwarsa Indahmurni', '{\"address\":\"Jl. Raya Serang KM.26, (Jl. Olex Cable), Balaraja, Sentul, Kec. Balaraja, Kabupaten Tangerang, Banten 15610\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1065, 'PT Indopoly Swakarsa', '{\"address\":\"Sector AI, Jl. Bukit Akasia III Jl. Kota Bukit Indah Raya No.Block 6 7, RW.8, Dangdeur, Kabupaten Purwakarta, Jawa Barat 41183\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1066, 'PT International Paint Indonesia', '{\"address\":\"Jl. Jababeka Raya No.E. 9 11, Wangunharja, Cikarang Utara, Bekasi Regency, West Java 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1067, 'PT Java Taiko', '{\"address\":\"KM.18,8, Kawasan Industri Bonen, Jl. Raya Serang Kav.19&20 No, Sukanagara, Kec. Cikupa, Kabupaten Tangerang, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1068, 'PT Kayu Permata', '{\"address\":\"Jl. Sumbawa Blok B.5 Kawasan Industri Bekasi Fajar MM2100, Mekarwangi - Cikarang Barat, Mekarwangi, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 17520\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1069, 'PT Kurnia Artha', '{\"address\":\"Ciburuy, Padalarang, West Bandung Regency, West Java 40553\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1070, 'PT M Class Industry', '{\"address\":\"Jl. Raya Curug - Kosambi No.Desa, Walahar, Kec. Klari, Karawang, Jawa Barat 41371\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1071, 'PT Mahle Indonesia', '{\"address\":\"Pasirranji, Central Cikarang, Bekasi Regency, West Java 17350\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1072, 'PT Maspion Kencana', '{\"address\":\"MM2100, Jl. Kw. Industri, Gandamekar, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1073, 'PT Matahari Leisure', '{\"address\":\"Millenium Industrial Estate Blok C 1, Tigaraksa, Peusar, Kec. Panongan, Kabupaten Tangerang, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1074, 'PT Mayora Indah', '{\"address\":\"Higashifu Indonesia Pt., Jl. Jawa Blok H No.10, Gandamekar, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1075, 'PT Medikon', '{\"address\":\"Jl. Raya Serang Km.12, Sukadamai, Kec. Cikupa, Kabupaten Tangerang, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1076, 'PT Nagasakti Parama Shoes', '{\"address\":\"Jl. Agarindo Km 6 Desa Sukamantri Pasar Kemis Tangerang 15560, Sukamantri, Pasar Kemis, Tangerang Regency, Banten 15560\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1077, 'PT Namasindo', '{\"address\":\"Kp. Cangkorah No. 7, RT. 02 / 01 Batujajar Padalarang, Giriasih, Kec. Batujajar, Kabupaten Bandung, Jawa Barat 40561\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1078, 'PT Nippon Indosari', '{\"address\":\"Kawasan Industri Modern Cikande, Jl. Modern Industri I No.30 A, Barengkok, Kec. Kibin, Kabupaten Serang, Banten 42186\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1079, 'PT Menara cipta', '{\"address\":\"Jl. Bhumimas V, Talaga, Kec. Cikupa, Kabupaten Tangerang, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1080, 'PT Mercuprima Sentosa', '{\"address\":\"Jl. Industri Raya III No.7 Blok AH, Pasir Jaya, Kec. Cikupa, Kabupaten Tangerang, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1081, 'PT Modera Furintraco Industri', '{\"address\":\"Kawasan Industri Pantai Indah, Jl. Perancis Blok DE No.2, Dadap, Kec. Kosambi, Kabupaten Tangerang, Banten 15211\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1082, 'PT Nugraha Indah Citrarasa Indonesia', '{\"address\":\"KAWASAN INDUSTRI SURYA CIPTA JL SURYA KENCANA KAV 1 BLOK M1 - BCD, Kutamekar, Kec. Ciampel, Karawang, Jawa Barat 41363\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1083, 'PT Muhtomas', '{\"address\":\"Jl. Jababeka 2 No.18 5, RT.5/RW.4, Pasirgombong, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1084, 'PT Pasific Asia Packaging', '{\"address\":\"Jl. Letnan Endy Jl. Kp. Momonot No.188, Tlajung Udik, Kec. Gn. Putri, Kabupaten Bogor, Jawa Barat 16962\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1085, 'PT Mulia Glass', '{\"address\":\"Jl. Raya Tegal Gede No.1, Gandasari, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1086, 'PT Muliakeramik', '{\"address\":\"JL. Raya Tegal Gede, Lemahabang, Cikarang, Bekasi, West Java, 17550, Wangunharja, Cikarang Utara, Bekasi Regency, West Java 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1087, 'PT Nipsea', '{\"address\":\"JL. Raya Tegal Gede, Lemahabang, Cikarang, Bekasi, West Java, 17550, Wangunharja, Cikarang Utara, Bekasi Regency, West Java 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1088, 'PT Nobel', '{\"address\":\"Jl. Rumah Sakit No.7, Mekar Mulya, Kec. Panyileukan, Kota Bandung, Jawa Barat 45474\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1089, 'PT Putra Bangun Citra Mandiri', '{\"address\":\"Kawasan Industri dan Pergudangan Cikupa Mas Jl. Telaga mas 1 No.3 Km.17, Talaga, Kec. Cikupa, Kabupaten Tangerang, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1090, 'PT Sanggar Sarana Baja', '{\"address\":\"Millennium Industrial Estate, Jl. Millennium Raya Blok F1 (Tigaraksa, Peusar, Kec. Panongan, Kabupaten Tangerang, Banten 15720\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1091, 'PT NSK Bearing', '{\"address\":\"Kawasan Berikat MM2100 Blok M4, Gandamekar, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 17520\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1092, 'PT Panca Gema Gemilang', '{\"address\":\"Jl. Tlajung Udik No.km 2,1, RT.2/RW.10, Tlajung Udik, Kec. Gn. Putri, Kabupaten Bogor, Jawa Barat 16962\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1093, 'PT Pigeon Indonesia', '{\"address\":\"Jl. Raya Modern Industri, Nambo Ilir, Kec. Kibin, Kabupaten Serang, Banten 42185\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1094, 'PT Siemens Indonesia', '{\"address\":\"Jl. Jenderal Ahmad Yani No.Kav. 67 - 68, Kayu Putih, Kec. Pulo Gadung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13210\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1095, 'PT Toppan Plasindo', '{\"address\":\"Jl. Sadang, Purwasari, Kec. Purwasari, Karawang, Jawa Barat 41373\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1096, 'PT Sulzer Turbo', '{\"address\":\"Kawasan Industri Kota Bukit Indah Blok A II. Kav. 1C-1D, Wanakerta, Bungursari, Purwakarta Regency, West Java 41181\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1097, 'PT Supreme Cable', '{\"address\":\"Jl. Raya Serang No.KM 25, RT.004/RW.002, Talagasari, Kec. Balaraja, Kabupaten Tangerang, Banten 15610\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1098, 'PT Syngenta', '{\"address\":\"JL. Raya Tlajung Udik Km 62, 8, 16962, Tlajung Udik, Kec. Gn. Putri, Kabupaten Bogor, Jawa Barat 16960\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1099, 'PT Teknologi Rekayasa Katup', '{\"address\":\"Jl. Raya Serang - Jakarta Km. 39,5, Parigi, Cikande, Parigi, Kec. Cikande, Kabupaten Serang, Banten 42186\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1100, 'PT Tifico', '{\"address\":\"Jl. MH. Thamrin, RT.004/RW.002, Panunggangan, Kec. Pinang, Kota Tangerang, Banten 15001\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1101, 'PT Timur Jaya Prestasi', '{\"address\":\"Jl. Raya Narogong Desa No.KM. 24, RW.8, Dayeuh, Kec. Cileungsi, Kabupaten Bogor, Jawa Barat 16820\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1102, 'PT Platinum Ceramics', '{\"address\":\"JL. Karangpilang Barat No.201, Karang Pilang, Karangpilang, Surabaya, East Java 60221\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1103, 'PT Pralon', '{\"address\":\"Dusun Gintung Kebon RT. 12 & 13, Karawang, Gintungkerta, Kec. Klari, Karawang, Jawa Barat 41371\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1104, 'PT Primarindo', '{\"address\":\"JL. Raya Rancabolang kelurahan No.98, Cisaranten Kidul, Kec. Gedebage, Kota Bandung, Jawa Barat 40295\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1105, 'PT Sari Enesis', '{\"address\":\"Delta Silicon Industrial Estate, Jl. Kruing 1 Blok L5 No. 5, Sukaresmi, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17550\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1106, 'PT Satyaraya Keramindo', '{\"address\":\"Jl. Raya Serang No.Km. 25, Sentul, Kec. Balaraja, Kabupaten Tangerang, Banten 15610\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1107, 'PT Schneider Indonesia', '{\"address\":\"Kawasan East Jakarta Industrial Park (EJIP), Plot 4B No.1-2, Lemah Abang, Sukaresmi, Cikarang Selatan, Sukaresmi, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1108, 'PT Standard Toyo Polymer', '{\"address\":\"Jl. Mayjend. Soetoyo No.KM.118, Gerem, Cilegon, Kota Cilegon, Banten 42438\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1109, 'PT Surya Multi Cemerlang', '{\"address\":\"Jl. Raya Semambung No.296, Semambung Lor, Semambung, Kec. Wonoayu, Kabupaten Sidoarjo, Jawa Timur 61261\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1110, 'PT Toyota Motor Manufacturing Indonesia', '{\"address\":\"Kawasan Industri KIIC Lot DD 1, Jl. Permata Raya, Karawang Barat, Sirnabaya, Telukjambe Timur, Karawang, Jawa Barat 41361\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1111, 'PT Trimitra Baterai Perkasa', '{\"address\":\"Jl. Semper Timur No.3, RT.11/RW.3, Semper Tim., Kec. Cilincing, Jkt Utara, Daerah Khusus Ibukota Jakarta 14130\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1112, 'PT Tumbakmas Inti Mulia', '{\"address\":\"Jl. KaliabangKm. 27, Desa Pejuang, Medan Satria, RT.001/RW.024, Pejuang, Kecamatan Medan Satria, Kota Bks, Jawa Barat 17131\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1113, 'PT Utac Manufacturing', '{\"address\":\"Sukaluyu, Telukjambe Timur, Karawang, West Java 41361\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1114, 'PT Penjalindo', '{\"address\":\"Jl. Raya Cikopo No.Km.2, Cikopo, Kec. Bungursari, Kabupaten Purwakarta, Jawa Barat 41181\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1115, 'PT Dharma Electrindo Manufacturing', '{\"address\":\"Jl. Jababeka XII Blok W No.5A, Harja Mekar, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1116, 'PT Ferron Par Pharmaceutical', '{\"address\":\"Jl. Jababeka VI Blok J-3, Harja Mekar, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17520\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1117, 'PT Yohzu Indonesia', '{\"address\":\"West Java, Bekasi Regency, XIIB Blok W24 Kawasan Industri Jababeka Cikarang Utara\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1118, 'PT Chiyoda Kogyo Indonesia', '{\"address\":\"Jl. Industri Sel. V, Pasirsari, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1119, 'PT T-RAD Indonesia', '{\"address\":\"Jl. Jababeka 2 No.C- 8, Pasirgombong, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1120, 'PT Sakura Tech', '{\"address\":\"Jababeka Industrial Estate, Jl. Science Boulevard No.19-22, Jayamukti, Kec. Cikarang Tim., Kabupaten Bekasi, Jawa Barat 17550\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1121, 'PT Global Dimensi Metalindo', '{\"address\":\"Jl. Jababeka XVIIB No.19c, Karangbaru, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1122, 'PT Gunfesas Technologhy', '{\"address\":\"Kawasan Industri Sentul, Jl. Olympic Raya No.Kav. A3, Sumur Batu, Sentul, Kec. Babakan Madang, Kabupaten Bogor, Jawa Barat 16810\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1123, 'PT Elang Perdana Tyres', '{\"address\":\"Jl. Elang, Sukahati, Kec. Citeureup, Kabupaten Bogor, Jawa Barat 16810\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1124, 'PT Elang Prima Niaga', '{\"address\":\"Jl. Elang, Sukahati, Kec. Citeureup, Kabupaten Bogor, Jawa Barat 16810\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1125, 'PT Eisai Indonesia', '{\"address\":\"Jalan Lanbou Kelurahan Karang Asem barat, Citeureup, Jl. Lanbau No.44, West Karang Asem, Citeureup, Bogor Regency, West Java 1681\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1126, 'PT Standardpen Industries', '{\"address\":\"3 No., Kawasan Industri Manis, Jalan Manis Raya No.15, RT.001/RW.001, Kadu, Tangerang, Kabupaten Tangerang, Banten 1581\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1127, 'PT Autocar Industrial Components', '{\"address\":\"JL Tol Jakarta- Cikampek, Kawasan Industri Mandala, Kamojing, Kec. Cikampek, Karawang, Jawa Barat 41373\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1128, 'PT Mitsuyoshi Manufacturing Indonesia', '{\"address\":\"Cikarang Industrial Estate Blok V No. 86 A-B, Jalan Jababeka 17 C, Cikarang Kota, Wangunharja, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1129, 'PT Elite Recycling Indonesia', '{\"address\":\"Jl. Gemalapik Raya, Pasirsari, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1130, 'PT Elastis Reka Aktif', '{\"address\":\"Jl. Kapuk Raya No.88, Kapuk Muara, Kec. Penjaringan, Jkt Utara, Daerah Khusus Ibukota Jakarta 14460\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1131, 'PT Fairpack Indonesia', '{\"address\":\"Jl. Trembesi Blok F18 no.9 DELTA SILICON 3 LIPPO CIKARANG, Cicau, Kec. Cikarang Pusat, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1133, 'PT Grafitecindo Ciptaprima', '{\"address\":\"Kawasan Industri Jababeka 1, Jl. Jababeka XVII No.92-93, Karangbaru, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1134, 'PT Pertiwi Agung Pharmaceutical Industry', '{\"address\":\"Jl. DDN No. 16 Sukadanau, Cikarang Barat\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1135, 'PT Supra Ferbindo Farma', '{\"address\":\"Plot 8J, Jl. Citanduy Raya No.1, RW.4, Sukaresmi, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1136, 'PT Rudy Soetadi', '{\"address\":\"Jl. Raya Bekasi No.KM. 28, RT.005/RW.005, Medan Satria, Kecamatan Medan Satria, Kota Bks, Jawa Barat 17132\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1137, 'PT Evonik Sumi Asi', '{\"address\":\"Jl. Jababeka Ⅴ Kawasan Industri Cikarang No.5 Blok H2, Pasirgombong, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1138, 'PT Hattori Indonesia', '{\"address\":\"Jl. Raya Majalaya - Rancaekek No.389, Solokanjeruk, Kec. Solokanjeruk, Kabupaten Bandung, Jawa Barat 45364\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1139, 'PT Sumi Rubber', '{\"address\":\"Kawasan Industri Indotaisei Blok H Sektor 1A, Kalihurip, Kec. Cikampek, Karawang, Jawa Barat 41373\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1140, 'PT Gumindo Bogamanis', '{\"address\":\"Jl. Raya Cikande Rangkasbitung, Majasari, Kec. Jawilan, Kabupaten Serang, Banten 42177\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1141, 'PT Ultra Prima Plast', '{\"address\":\"Jalan Raya Serang.KM 25 80, Balaraja, Cisait, Kragilan, Serang Regency, Banten 15610\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1142, 'PT Riken Indonesia', '{\"address\":\"Kawasan Industri MM2100, Jl. Jawa No.9 Blok H, Gandamekar, Cikarang Barat, Bekasi Regency, West Java 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1143, 'PT Sumco Indonesia', '{\"address\":\"Jalan Irian Blok GG 6, Jatiwangi, Cikarang Barat, Jatiwangi, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1144, 'PT Dover Chemical', '{\"address\":\"Jl. Raya Gerem / Merak No.KM.117, Gerem, Kec. Pulomerak, Kota Cilegon, Banten 42438\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1145, 'PT Sekiso Industries Indonesia', '{\"address\":\"Kawasan Industri Mm 2100 Bl Nn/13, Jatiwangi, Cikarang Barat, Jatiwangi, Kec. Cikarang Bar., Cibitung Bekasi, Jawa Barat 17520\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1146, 'PT Tsuchiya Manufacturing Indonesia', '{\"address\":\"MM2100, Jl. Bali Jl. Kw. Industri Blok E-8, Gandamekar, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1147, 'PT Saint Gobaint Winter Diamas', '{\"address\":\"Jl. Pejuang No.KM. 27, RT.001/RW.020, Kaliabang Tengah, Kec. Bekasi Utara, Kota Bks, Jawa Barat 1712\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1148, 'PT Monde Mahkota Biskuit', '{\"address\":\"Jl. Tekno Raya Blok A7, Pasirgombong, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1149, 'PT Mikuni Indonesia', '{\"address\":\"Industrial Town MM 2100 Jl. Irian Blok QQ-1, Jatiwangi, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 17520\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1150, 'PT Yamamura Utama Indoplas', '{\"address\":\"Kawasan Industri Jababeka Bl V/42-43, Jl Jababeka V, Jl. Jababeka Ⅴ No.10, Harja Mekar, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1151, 'PT Namicoh Indonesia Component', '{\"address\":\"EJIP Industrial Park Plot. 5F-1A, Jl. Cilosari Raya, Sukaresmi, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17550\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8);
INSERT INTO `organizations` (`id`, `name`, `address`, `created_at`, `updated_at`, `user_id`) VALUES
(1152, 'PT Katsushiro Indonesia', '{\"address\":\"Jl. Selayar Blok B No.11, Kawasan Industri MM2100, Mekarwangi, Kec. Cibitung, Kabupaten Bekasi, Jawa Barat 17520\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1153, 'PT Indonesia Epson Industry', '{\"address\":\"Industrial Park Lot 4E, Jl. Cisokan Raya, Sukaresmi, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17550\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1154, 'PT Sanken Indonesia', '{\"address\":\"Jl. Jawa, Jatiwangi, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1155, 'PT Shanghiang Perkasa', '{\"address\":\"Kawasan Industri Indotaisei, Sektor 1A/Q2, Kalihurip, Kec. Cikampek, Karawang, Jawa Barat 41373\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1157, 'PT Supratama Aneka Industri', '{\"address\":\"Jl. Industri Raya III Blok AH No.8, Sukadamai, Kec. Cikupa, Kabupaten Tangerang, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1158, 'PT Handal Indonesia Motor', '{\"address\":\"Jl. Wahab Affan No.KM. 28, RT.002/RW.001, Pondok Ungu, Kecamatan Medan Satria, Kota Bks, Jawa Barat 17132\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 8),
(1287, 'PT CIMONE JAYA CHEMICAL', '{\"address\":\"Jl. Gatot Subroto No.2, RT.002/RW.002, Cimone, Kec. Karawaci, Kota Tangerang, Banten 15114\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 9),
(1288, 'PT YUJU INDONESIA', '{\"address\":\"Newton Techno Park, Lippo Cikarang, Jl. Jati 1 No.5 Blok J5, Serang, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 9),
(1289, 'PT HILON INDONESIA', '{\"address\":\"Kawasan Industri Pasar Kemis, Jl. Putra Utama Raya No.9, Ps. Kemis, Kec. Ps. Kemis, Kabupaten Tangerang, Banten 15560\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 9),
(1290, 'PT JONES AND VINING', '{\"address\":\" Kawasan Industri dan Pergudangan Cikupa Mas, Jl. Telaga Mas Raya No.27, RT.005/RW.02, Talaga, Kec. Cikupa, Kabupaten Tangerang, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 9),
(1291, 'PT INTERNATIONAL PACKAGING', '{\"address\":\" Kawasan Industri dan Pergudangan Cikupa Mas, Jl. Telaga Mas Raya No.27, RT.005/RW.02, Talaga, Kec. Cikupa, Kabupaten Tangerang, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 9),
(1292, 'PT XINYICHANG INDONESIA', '{\"address\":\"Jl. Irigasi Hauan No.RT. 003, RT.003/RW.005, Tobat, Kec. Balaraja, Kabupaten Tangerang, Banten 15610\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 9),
(1293, 'PT TONGLIANG INDONESIA', '{\"address\":\"Industri Cikupa Mas, Jl. Talaga Mas V No. 5, Kawasan I, Talaga, Cikupa, Tangerang Regency, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 9),
(1294, 'PT SUPER BLOKMIL INDONESIA', '{\"address\":\" Jl. Nasional 1, Kalipasung, Kec. Gebang, Kabupaten Cirebon, Jawa Barat 45191\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 9),
(1295, 'PT DAHSHENG', '{\"address\":\"GRAHA BALARAJA INDUSTRIAL ESTATE, JL RAYA SERANG No.KM 27 BLOK KAV D8, Tobat, Balaraja, Tangerang Regency, Banten 15610\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 9),
(1296, 'PT NIPPON STEEL CHEMICAL & MATERIAL', '{\"address\":\"Jl. Tekno Raya No.3 Blok E3 A&B, Pasirgombong, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 9),
(1297, 'PT OCI MATERIAL', '{\"address\":\"l. Raya Inti Jl. Kavling II No.3 Blok C-4, Sukaresmi, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17550\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 9),
(1298, 'PT Gajah Tunggal Tbk', '{\"address\":\"Jl. Gatot Subroto No.Km 7, Pasir Jaya, Kec. Jatiuwung, Kota Tangerang, Banten 15135\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1299, 'PT Gajah Tunggal office', '{\"address\":\"Gedung Graha Ganesha, Jl. Hayam Wuruk No.28\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1300, 'PT Indorama Synthetic, Polymer', '{\"address\":\"Jl. Industri Ubrug, Kembangkuning, Kec. Babakancikao, Kabupaten Purwakarta, Jawa Barat 41152\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1301, 'PT Kadota Textile', '{\"address\":\"Jl. Dusun Walahar No.1, Walahar, Klari, Karawang, West Java 41371\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1302, 'PT Sarana Makin Mulia', '{\"address\":\"Jl. Raya Cimareme No.273, Cimareme, Kec. Ngamprah, Kabupaten Bandung Barat, Jawa Barat 40552\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1303, 'PT Sayap Mas', '{\"address\":\"Jl. Tipar Cakung Kav. F 5-7. East Jakarta 13910.\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1304, 'PT Suzuki Indomobil Tambun', '{\"address\":\" Jl. Diponegoro Km. 38,2 Kel. Jatimulya Kec. Tambun Selatan Kab. Bekasi, Jawa Barat, 17510\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1305, 'PT inti pantja press industri', '{\"address\":\"Jl. Kaliabang No. 1, Pondok Ungu, RT.003/RW.007, Medan Satria, Kecamatan Medan Satria, Kota Bks, Jawa Barat 17132\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1306, 'PT PINDODELI PM1-PM4', '{\"address\":\"l. Prof Dr. Ir H. Soetami No.88 Adiarsa\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1307, 'PT PINDODELI PM5-PM6', '{\"address\":\"l. Prof Dr. Ir H. Soetami No.88 Adiarsa\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1309, 'PT PINDODELI PM7', '{\"address\":\"l. Prof Dr. Ir H. Soetami No.88 Adiarsa\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1310, 'PT PINDODELI PM 8-PM 9', '{\"address\":\"Kutamekar, Ciampel, Karawang, West Java 41363\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1311, 'PT PINDODELI PM 11-PM 13', '{\"address\":\"Kutamekar, Ciampel, Karawang, West Java 41363\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1312, 'PT PINDODELI PM 14-PM 15', '{\"address\":\"Kutamekar, Ciampel, Karawang, West Java 41363\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1313, 'PT SEMEN INDONESIA', '{\"address\":\"Jalan Semen Indonesia, Area Ladang, Sumberarum, Kec. Kerek, Kabupaten Tuban, Jawa Timur 62356\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1314, 'PT Solusi Bangun Tuban', '{\"address\":\"Merkawang, Kec. Tambakboyo, Kabupaten Tuban, Jawa Timur 62352\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1315, 'PT Solusi Bangun Cilacap', '{\"address\":\"Jl. Insinyur Haji Juanda, Padaramai, Karangtalun, Kec. Cilacap Utara, Kabupaten Cilacap, Jawa Tengah 53234\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1316, 'PT Solusi Bangun Narogong', '{\"address\":\"Jalan Nangka Jalan Raya Klapanunggal No.7, Kembang Kuning, Kec. Klapanunggal, Kabupaten Bogor, Jawa Barat 16710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1317, 'PT Indahkiat', '{\"address\":\"Jl. Raya Serpong No.Km. 8, Pakulonan, Kec. Serpong Utara, Kota Tangerang Selatan, Banten 15325\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1318, 'PT Pabrik kertas tjiwi kimia tbk', '{\"address\":\"Jalan Tol Surabaya - Mojokerto No.Km. 44, Kramat, Kramat Temenggung, Kec. Tarik, Kabupaten Sidoarjo, Jawa Timur 61265\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1319, 'PT Nagasakti kurnia textile mills', '{\"address\":\"Jl. Cisirung No.38, Pasawahan, Kec. Dayeuhkolot, Kabupaten Bandung, Jawa Barat 40256\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1320, 'PT Multi Indo Mandiri', '{\"address\":\"Jl. Raya Kosambi Curug, RT.12/RW.04 Dusun Serang Kampung Situwaringin, Desa, Sumurkondang, Kec. Klari, Karawang, Jawa Barat 41371\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1321, 'PT Gajah Tunggal TC', '{\"address\":\"Gedung Graha Ganesha, Jl. Hayam Wuruk No.28 4th Floor, Kb. Klp., Kecamatan Gambir, Jakarta, Daerah Khusus Ibukota Jakarta 10120\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1322, 'PT Chuhatsu Karawang', '{\"address\":\"Surya Madya KAV.I 28B & 28D, Kutanegara, Ciampel, Karawang, West Java 41363\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1323, 'PT Jesi Jason surja wibowo', '{\"address\":\"Jl. Raya Wantilan-Cipeundeuy, Wantilan, Kec. Cipeundeuy, Kabupaten Subang, Jawa Barat 41272\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1324, 'PT Surya Rengo containers', '{\"address\":\"Jl. Maligi Raya Lot Q5 KIIC, Puseurjaya, Telukjambe Timur, Karawang, Jawa Barat 41361\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1325, 'PT Indoalumunium  Intikarsa Industri', '{\"address\":\"Jl. Inspeksi Kalimalang, Desa Ganda Megar KM.24, Cibitung, Gandamekar, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1326, 'PT Kudos Istana Furniture', '{\"address\":\"Jl. Lingkar R Agil Kusumadya – Mijen Km. 7, Kaliwungu, Kedungdowo, Kec. Kaliwungu, Kabupaten Kudus, Jawa Tengah 59361\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1327, 'PT Frisian Flag', '{\"address\":\"Jl. Komp. Polri No.20 12, RT.11/RW.4, Ciracas, Kec. Ciracas, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13740\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1328, 'PT Kimia Farma', '{\"address\":\"Jl. Rw. Gelam V No.1 Kawasan Industri Pulogadung, Jakarta, Indonesia 13930\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1329, 'PT Tansri Gani', '{\"address\":\"Jl. Inspeksi Kalimalang, RT.02/RW.01, Sukadanau, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1330, 'PT FSCM Manufacturing Indonesia', '{\"address\":\"Jl. Nyi Gede Cangkring No.88\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1331, 'PT Benang Citra Indonesia', '{\"address\":\"Jl. Perjuangan, RT.003/RW.006, Sukadanau, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1332, 'PT Kati kartika Murni-Cikarang', '{\"address\":\"Jl. Sadewa No.357, Wangunharja, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1333, 'PT Kati kartika Murni-Tgr', '{\"address\":\"Jl. Imam Bonjol No.76, RT.002/RW.006, Panunggangan Bar., Kec. Cibodas, Kota Tangerang, Banten 15138\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1334, 'PT Paramitra Guna Karya', '{\"address\":\" Sentul, Babakan Madang, Bogor Regency, West Java 16810\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1335, 'PT Asia Paperindo', '{\"address\":\"Belian, Batam Kota, Batam City, Riau Islands 29444\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1336, 'PT Kreasi Kotak Megah', '{\"address\":\"Jl. Harapan No. 89 Desa Buntu Bedimbar, Bangun Sari, Kec. Tj. Morawa, Kabupaten Deli Serdang, Sumatera Utara 20362\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1337, 'PT Lontar Papyrus', '{\"address\":\"Jl. Ir. H. Juanda No.15, Simpang III Sipin, Kec. Kota Baru, Kota Jambi, Jambi 36129\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1338, 'PT Givaudan Indonesia', '{\"address\":\" Jl. Raya Jakarta-Bogor No.Km 35, Sukamaju, Kec. Cimanggis, Kota Depok, Jawa Barat 16951\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1339, 'PT Bukit Muria Jaya', '{\"address\":\"Jl. Karawang Spoor, Purwadana, Telukjambe Timur, Karawang, West Java 41361\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1340, 'PT Temprina media grafika bekasi', '{\"address\":\"Jl. Setia Darma 2 No.82, Setiadarma, Kec. Tambun Sel., Kabupaten Bekasi, Jawa Barat 17510\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1341, 'PT Timur Raya Lestari', '{\"address\":\"Jalan Rawa Kepiting No. 4 KIP, RT.12/RW.3, Rw. Terate, Kec. Cakung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13920\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1342, 'PT Leading Garment', '{\"address\":\"Jl. Mengger No.97, Pasawahan, Kec. Dayeuhkolot, Kabupaten Bandung, Jawa Barat 40256\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1343, 'PT Cemara Guna Sarana', '{\"address\":\"Jl. Inhoftank No.108, Kb. Lega, Kec. Bojongloa Kidul, Kota Bandung, Jawa Barat 40435\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1344, 'PT Triman', '{\"address\":\"Peundeuy No.RT 020/07, Bojongsalam, Kec. Rancaekek, Kabupaten Bandung, Jawa Barat 40394\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1345, 'PT Solas Langgeng Sejahtera', '{\"address\":\"Jl. Industri Cimareme I No.18, Cipeundeuy, Kec. Padalarang, Kabupaten Bandung Barat, Jawa Barat 40553\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1346, 'PT Hermed', '{\"address\":\"Jalan 2 No.15, Cukang Galih, Curug, Gg. Cukang Galih Ⅱ No.15, Cukang Galih, Kec. Curug, Kabupaten Tangerang, Banten 15810\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1347, 'PT Bumi Kaya Steel Industries', '{\"address\":\"Jalan Pulo Gadung I kav 2 KIPG, RW.3, Rw. Terate, Kec. Cakung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13920\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1348, 'PT Casper Pharma', '{\"address\":\"Jln. Simpang Parakan muncang No.Km 5, Mekarbakti, Pamulihan, Sumedang Regency, West Java 45365\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1349, 'PT Trifa Raya Laboratories', '{\"address\":\"Jl. Soekarno-Hatta No.219, Kopo, Kec. Bojongloa Kaler, Kota Bandung, Jawa Barat 40233\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1350, 'PT Weldpart Indonesia', '{\"address\":\"Jl. Agatis Blok F9A No.25, Cicau, Kec. Cikarang Pusat, Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1351, 'PT Inti Garmindo', '{\"address\":\"Jl. Pualam Raya No.31 17, RT.17/RW.2, Sumur Batu, Kec. Kemayoran, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 1064\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1352, 'PT Dynaplast', '{\"address\":\"Jl. Industri Raya II No.9 Blok F, RT.002/RW.004, Pasir Jaya, Kec. Jatiuwung, Kota Tangerang, Banten 15135\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1353, 'PT Rusli Vinilon Sakti', '{\"address\":\"Jl. Raden Saleh Raya No.17 Lantai 9 No.13, RT.1/RW.2, Kenari, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10430\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1354, 'PT. Vinilon Jaya Sakti', '{\"address\":\"Japanan Kidul, Japanan, Kec. Kemlagi, Kabupaten Mojokerto, Jawa Timur 6135\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1355, 'PT. Sanbe Farma Cimareme', '{\"address\":\"Jl. Industri Cimareme I No.8, Cimareme, Kec. Padalarang, Kabupaten Bandung Barat, Jawa Barat 40553\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1356, 'PT Sanbe Farma Cimahi', '{\"address\":\"Jl. Mahar Martanegara No.174, Leuwigajah, Kec. Cimahi Sel., Kota Cimahi, Jawa Barat 40532\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1357, 'PT Sanbe Farma Pusat', '{\"address\":\"Jl. Tamansari No.10, Tamansari, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40116\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1358, 'PT Kangar Consolidated Industries', '{\"address\":\"Jl. Raya Bekasi No.KM 24.5, Ujung Menteng, Kec. Cakung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13960\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1359, 'PT Multi Kimia Intipelangi', '{\"address\":\"Jl. Kp. Mariuk, RT.002/RW.002, Gandamekar, Kec. Cikarang Bar., Kabupaten Bekasi, Jawa Barat 1753\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1360, 'PT Mecoindo', '{\"address\":\"East Jakarta Industrial Park, Plot 6B-2, Bekasi, 17550, Sukaresmi, Cikarang Selatan, Bekasi Regency, West Java 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1361, 'PT Adiperkasa ekabakti', '{\"address\":\"Jl. Komp. PT. Wira, RW.6, Cakung Tim., Kec. Cakung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13910\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1362, 'PT Sinar Ancol', '{\"address\":\"Jl. Lodan Raya No.29 8, RT.8/RW.11, Ancol, Kec. Pademangan, Jkt Utara, Daerah Khusus Ibukota Jakarta 14430\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1363, 'PT Berkah Manis', '{\"address\":\"Jl. Raya Jkt Jl. Raya Serang No.Km 62.5, Cikande, Kec. Cikande, Kabupaten Serang, Banten 42186\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1364, 'PT Soelindo Pratama', '{\"address\":\" Jl. Rawa Bebek No.Km No.27, RT.7/RW.5, Medan Satria, Kecamatan Medan Satria, Kota Bks, Jawa Barat 17132\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1365, 'PT Savoria Kreasi Rasa', '{\"address\":\"Bitung Jaya, Cikupa, Tangerang Regency, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1366, 'PT Indorama Venture', '{\"address\":\"Jl. Gading Golf Boulevard, Cihuni, Kec. Pagedangan, Kabupaten Tangerang, Banten 15\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1367, 'PT Sipatex', '{\"address\":\"Padamulya, Majalaya, Bandung Regency, West Java 40392\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1368, 'PT Ultra Prima Abadi', '{\"address\":\"Daan Mogot Rd No.16, RT.3/RW.14, Duri Kosambi, Cengkareng, West Jakarta City, Jakarta 1185\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1369, 'PT Almasindo', '{\"address\":\"Jl. Raya Batujajar No.169, Laksanamekar, Kec. Padalarang, Kabupaten Bandung Barat, Jawa Barat 405\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1370, 'PT Bayer Indonesia', '{\"address\":\"Jl. Raya Bogor No.32, Cisalak, Kec. Sukmajaya, Kota Depok, Jawa Barat 16416\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1371, 'PT Djabesment', '{\"address\":\" Jl. Jend. Urip Sumoharjo No.KM.59, Karangsari, Kec. Cikarang Tim., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1372, 'PT Avesta Continental Pack', '{\"address\":\"Jl. Raya Bekasi No.Km 28.5, RT.002/RW.022, Kota Baru, Kec. Bekasi Bar., Kota Bks, Jawa Barat 17133\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1373, 'PT Pinguin Indonesia', '{\"address\":\"Jl. Surya Madya, Kutanegara, Kec. Ciampel, Karawang, Jawa Barat 41363\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1374, 'PT Belfoods Indonesia', '{\"address\":\"Komplek Citra Indah Bukit Bunga No. 3 Kav PA/1-2, Jl. Raya Jonggol No.Km. 23, Sukamaju\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1375, 'PT Joenoes Ikamulya', '{\"address\":\"Jl. Rw. Girang No.42-45 Blok S, RT.15/RW.2, Jatinegara, Kec. Cakung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13930\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1376, 'PT Inti Polymetal', '{\"address\":\" Kawasan Industri KIIC, Puseurjaya Telukjambe Timur Jl. Maligi Raya Blok Q 2B, Puseurjaya\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1377, 'PT DAI ICHI KIMIA', '{\"address\":\"Kawasan Industri KIIC Lot G No.2, Jalan Maligi 2, Sukaluyu, Karawang Barat, Sukaluyu\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1378, 'PT Beta Pharmacon', '{\"address\":\"Jalan Surya Madya Kav.I-18C, Kutamekar, Kec. Ciampel, Karawang, Jawa Barat 41363\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1379, 'PT Sinar Meadow', '{\"address\":\"Kawasan Industri Pulogadung 6 Blok III.S.16-18, Jl. Pulo Ayang I No.6, RW.9, Jatinegara, Cakung, East Jakarta City, Jakarta 13920\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1380, 'PT Sumber Tanushu', '{\"address\":\"Jl. Daeng Moh. Ardiwinata No.28, Cibabat, Kec. Cimahi Utara, Kota Cimahi, Jawa Barat 40513\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1381, 'PT Hetzer Medical Indonesia', '{\"address\":\"Komplek Blue Sky Industrial (BSI, Jl. Nanjung No.2 Kav No.09, Leuwigajah, Kec. Cimahi Sel., Kota Cimahi, Jawa Barat 40532\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1382, 'PT Hexphram Jaya Lab', '{\"address\":\"Jalan Angsana Raya Blok A3, Sukaresmi, Cikarang Selatan, Sukaresmi, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17530\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1383, 'PT Lucas Djaya', '{\"address\":\"Jl. Margacinta No.100, Margasari, Kec. Buahbatu, Kota Bandung, Jawa Barat 4028\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1384, 'PT Gracia Pharmindo', '{\"address\":\"Jl. Baranang Siang No.26 - 27 Blok G, Kebon Pisang, Sumurbandung, Bandung City, West Java 40112\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1385, 'PT Errita Pharma', '{\"address\":\"JL Peundeuy, RT 004/07, Cicalengka, Peundeuy, Bojongsalam, Rancaekek, Bandung Regency, West Java 40394\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1386, 'PT Holi Pharma', '{\"address\":\"Jl. Mahar Martanegara No.100, Cigugur Tengah, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40522\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1387, 'PT Meprofarm', '{\"address\":\" Jl. Soekarno-Hatta No.789, Babakan Penghulu, Kec. Cinambo, Kota Bandung, Jawa Barat 40293\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1388, 'PT Afiat Pharmaceutical Industries', '{\"address\":\"Jl. Leuwigajah No. 110 Cimindi, CIMAHI 40522\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1389, 'PT Bio Farma', '{\"address\":\" Jl. Pasteur 28 BANDUNG 40016\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1390, 'PT IPHA LABORATORIES', '{\"address\":\"Jl. Raya Batujajar Desa Laksanamekar, Padalarang, BANDUNG\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1391, 'PT Tropica Mas Pharmaceuticals', '{\"address\":\"Kademangan, Mande, Cianjur Regency, West Java 43292\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1392, 'PT COMBIPHAR', '{\"address\":\"Jl. Raya Simpang 383 PADALARANG 40553\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1393, 'PT Usaha  Sekawan Farmasi Indonesia', '{\"address\":\"Jl. Kedung Cowek No.345 000, RW.00, Tanah Kali Kedinding, Kec. Kenjeran, Surabaya, Jawa Timur 60129\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1394, 'PT Novapharin Pharmaceutical', '{\"address\":\"Jl. Raya Kepatihan No.112, Kepatihan, Kec. Menganti, Kabupaten Gresik, Jawa Timur 61174\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1395, 'PT Oryza Farma', '{\"address\":\"Jl. Industri Raya III, Sukadamai, Kec. Cikupa, Kabupaten Tangerang, Banten 15710\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 10),
(1494, 'PT. SWASTAMA', '{\"address\":\"Central Java, Jl.Slamet Riyadi 280 Gumpang - Kartasura, Sukoharjo, 57169, Dusun III, Pabelan, Kartasura, Sukoharjo Regency, Central Java 57163\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1495, 'PT. INDOVEENER', '{\"address\":\"FQ3G+HQX, Jl. Adi Sucipto Jl. Puspan, Puspan, Blulukan, Kec. Colomadu, Kabupaten Karanganyar, Jawa Tengah 57174\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1496, 'PT. INNAN', '{\"address\":\"Jl. Hanoman Raya, Krapyak, Kec. Semarang Barat, Kota Semarang, Jawa Tengah 50146\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1497, 'PT. BATHI', '{\"address\":\"GXR3+FXC, Jl. Raya Solo - Sragen, Kebayanan 2, Purwosuman, Kec. Sidoharjo, Kabupaten Sragen, Jawa Tengah 57281\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1498, 'PT. SOLO GRAFIKA', '{\"address\":\"Jl. Adi Sucipto No.190, Karangasem, Kec. Banjarsari, Kota Surakarta, Jawa Tengah 57145\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1499, 'PT. DJITOE', '{\"address\":\"Jl. Adi Sucipto No.51, Kerten, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57139\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1500, 'Solo murni', '{\"address\":\"Jl. A. Yani No.378, Kerten, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57143\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1501, 'Menara Kartika Buana', '{\"address\":\"Jl. Solo - Purwodadi No.KM. 11, RW.6, Tuban Kulon, Tuban, Kec. Gondangrejo, Kabupaten Karanganyar, Jawa Tengah 57773\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1502, 'Bhakti Usaha Nusantara', '{\"address\":\"Jl. Lkr. Bar. Kudus No.77, Pasuruhan Kidul II, Pasuruhan Kidul, Kec. Jati, Kabupaten Kudus, Jawa Tengah 59349\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1503, 'Ara Shoes', '{\"address\":\"RCCG+5C3, Jl. PTP XVIII Ngobo, Bergas, Ungaran, Gembongan, Karangjati, Kec. Bergas, Kabupaten Semarang, Jawa Tengah 50552\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1504, 'Anugrah Indofood CBP', '{\"address\":\"Kali-tengah, Gedanganak, Kec. Ungaran Tim., Kabupaten Semarang, Jawa Tengah 50519\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1505, 'Graha Farma', '{\"address\":\"Jl. Dr. Rajiman No.296, Sriwedari, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57141\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1506, 'Argo Manunggal', '{\"address\":\"JGX7+JW5, Ledok, Kec. Argomulyo, Kota Salatiga, Jawa Tengah 50732\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1507, 'Dion Pharma Abadi', '{\"address\":\"Jalan Yogya Solo KM.18, Kemudo, Prambanan, Sanggrahan, Kecamatan Prambanan, Sawah, Sanggrahan, Kec. Prambanan, Kabupaten Klaten, Jawa Tengah 57454\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1508, 'Indo Sakura Indah', '{\"address\":\"Jl. Lkr. Salatiga, RT.005/RW.001, Cebongan, Kec. Argomulyo, Kota Salatiga, Jawa Tengah 50736\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1509, 'Selalu Cinta Indonesia', '{\"address\":\"Jl. Lkr. Salatiga No.KM. 2, Randuacir, Kec. Argomulyo, Kota Salatiga, Jawa Tengah 50735\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1510, 'Indo Acidatama', '{\"address\":\"Jalan Raya Solo-Sragen KM. 11.4 Kemiri Kebakkramat, Beji Kulon, Kemiri, Kabupaten Karanganyar, Jawa Tengah 57762\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1511, 'Danliris', '{\"address\":\"FQ4G+R29, Puspan, Blulukan, Kec. Colomadu, Kabupaten Karanganyar, Jawa Tengah 57174\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1512, 'Altra Multi Sandang', '{\"address\":\"Jl. Raya Dagen - Tasikmadu KM. 4,5, Buran, Kec. Tasikmadu, Kabupaten Karanganyar, Jawa Tengah 57722\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1513, 'Tupai Adyamas', '{\"address\":\"Jl. Magelang - Boyolali No.Km 1, Dusun 2, Winong, Kec. Boyolali, Kabupaten Boyolali, Jawa Tengah 57315\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1514, 'Hidup Baru Plastindo', '{\"address\":\"No., Jl. Telukan - Parangjoro No.60, Dusun II, Telukan, Kec. Grogol, Kabupaten Sukoharjo, Jawa Tengah 57552\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1515, 'Kemilau Warna Ceria', '{\"address\":\"SRAGEN, Jl. Raya Solo - Sragen No.KM 21, RW.7, Purwosuman, Kec. Sidoharjo, Kabupaten Sragen, Jawa Tengah 57281\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1516, 'Japfa Comfeed', '{\"address\":\"Kebayanan 1, Duyungan, Kec. Sidoharjo, Kabupaten Sragen, Jawa Tengah\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1517, 'Wedia Raya Prima', '{\"address\":\"Jl. Jumprit No.44, Dandu, Manggong, Kec. Ngadirejo, Kabupaten Temanggung, Jawa Tengah 56255\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1518, 'Indo Cali Plast', '{\"address\":\"Duwet, Brujul, Kec. Jaten, Kabupaten Karanganyar, Jawa Tengah 57731\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1519, 'Manggala Furniture', '{\"address\":\"Jl Diponegoro bypass Klaten Srago, Srogo, Mojayan, Kec. Klaten Tengah, Kabupaten Klaten, Jawa Tengah 57416\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1520, 'Sriwahana Adityakarya', '{\"address\":\"Jl. Raya Solo - Yogyakarta No.KM 15, Sidurren, Bendosari, Kec. Sawit, Kabupaten Boyolali, Jawa Tengah 57374\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1521, 'Primayudha Mandiri Wijaya', '{\"address\":\"Dusun 3, Ngadirojo, Kec. Ampel, Kabupaten Boyolali, Jawa Tengah 57352\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1522, 'Hanil', '{\"address\":\"CJQJ+2X3, JL. Raya Teras, Nepen, Nepen, Kec. Boyolali, Kabupaten Boyolali, Jawa Tengah 57372\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1523, 'Bengawan Solo Garment', '{\"address\":\"JL. Raya Dukuh Butuh, RT. 4 RW. 2, Teras, Dawung, Teras, Kec. Boyolali, Kabupaten Boyolali, Jawa Tengah 57372\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1524, 'Cartini Lingerie Indonesia', '{\"address\":\"FJ4V+9QX, Dukuh Tegalsari, RT. 1 / RW. 4, Desa Randusari, Teras, Dusun III, Randusari, Boyolali, Kabupaten Boyolali, Jawa Tengah 57372\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1525, 'Pan Brothers', '{\"address\":\"CJVH+FF6, RT.01/RW.02, Dukuh, Butuh, Kec. Mojosongo, Kabupaten Boyolali, Jawa Tengah 57482\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11),
(1526, 'Teras Adhi Kharisma', '{\"address\":\"FJ7W+C93, JL. Raya Solo - Boyolali, No. 142 Km. 6, Randusari Teras, Dusun II, Randusari, Kec. Boyolali, Kabupaten Boyolali, Jawa Tengah 57372\",\"country\":\"ID\",\"state\":\"\",\"city\":\"\",\"postcode\":\"\"}', NULL, NULL, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `persons`
--

CREATE TABLE `persons` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emails` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `contact_numbers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `organization_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL
) ;

--
-- Dumping data untuk tabel `persons`
--

INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`) VALUES
(976, 'Bp Wahyu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0895-3951-75781\",\"label\":\"work\"}]', 202, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(977, 'Bp Buana', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0851-0345-4877\",\"label\":\"work\"}]', 203, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(978, 'Bp Gunawan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-2553-2611\",\"label\":\"work\"}]', 204, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(979, 'Bp Udin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1785-7979\",\"label\":\"work\"}]', 205, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(980, 'Bp Andy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-5103-927\",\"label\":\"work\"}]', 206, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(981, 'Bp Sukatno', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0881-3235-990\",\"label\":\"work\"}]', 207, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'kepala engineering', 4),
(982, 'Bp Yulianto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-3133-6612\",\"label\":\"work\"}]', 208, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'kepala maintenance', 4),
(983, 'Bp Zamtony', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0888-5139-721\",\"label\":\"work\"}]', 210, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(984, 'BP Winarso', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-3093-1770\",\"label\":\"work\"}]', 211, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(985, 'Bp Adi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-3991-0506\",\"label\":\"work\"}]', 212, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(986, 'Bp Irvan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-3993-0066\",\"label\":\"work\"}]', 213, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(987, 'Ibu Lina', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-3196-5619\",\"label\":\"work\"}]', 214, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(988, 'Bp Zainudin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"089-0106-9000\",\"label\":\"work\"}]', 215, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'MAintenance', 4),
(989, 'Bp Wahyu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-3441-0749\",\"label\":\"work\"}]', 216, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(990, 'Bp Kusnadi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-8521-0810\",\"label\":\"work\"}]', 217, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(991, 'Bp Wahyu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-3484-9555\",\"label\":\"work\"}]', 218, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(992, 'Bp Krisnanda', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-4568-5636\",\"label\":\"work\"}]', 219, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(993, 'Bp Agus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-8505-6675\",\"label\":\"work\"}]', 220, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(994, 'Bp Jhony', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-3696-3108\",\"label\":\"work\"}]', 221, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(995, 'Bp Filo', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-3285-9936\",\"label\":\"work\"}]', 222, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(996, 'Bp Yusuf', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852-3026-0533\",\"label\":\"work\"}]', 223, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(997, 'Bp Nurrohim', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-2966-1101\",\"label\":\"work\"}]', 224, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(998, 'Bp Kelik', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0865-3563-263\",\"label\":\"work\"}]', 225, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(999, 'Bp Yongky', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-4313-8978\",\"label\":\"work\"}]', 226, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1000, 'Ibu Cicil', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1631-950\",\"label\":\"work\"}]', NULL, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1001, 'Bp Catur', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-4814-0002\",\"label\":\"work\"}]', 227, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1002, 'Bp Surya', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-8783-2323\",\"label\":\"work\"}]', 228, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1003, 'Bp Angga', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0858-1541-4112\",\"label\":\"work\"}]', 229, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1004, 'Bp Stefanus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-5096-823\",\"label\":\"work\"}]', 230, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1005, 'Bp Jimi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-1963-7272\",\"label\":\"work\"}]', 233, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1006, 'Bp Kusmadi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 234, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1007, 'Bp Macrus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0853-6010-8268\",\"label\":\"work\"}]', 235, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1008, 'Bp Ferry', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-46327094\",\"label\":\"work\"}]', 236, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1009, 'Bp Syaiful', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-3002-9003\",\"label\":\"work\"}]', 237, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1010, 'Bp Dheny', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-329-187\",\"label\":\"work\"}]', 238, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1011, 'Bp Vatony', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-1548-5351\",\"label\":\"work\"}]', 239, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1012, 'Bp Fahrizal', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-2266-8678\",\"label\":\"work\"}]', 239, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1013, 'Bp Candra', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-0650-4105\",\"label\":\"work\"}]', 239, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1014, 'Bp Sujak', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877-0333-1986\",\"label\":\"work\"}]', 240, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1015, 'Bu lina', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-3142-2213\",\"label\":\"work\"}]', 241, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1016, 'Pak Donald', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877-0341-9626\",\"label\":\"work\"}]', 242, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1017, 'Pak Donald', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877-0341-9626\",\"label\":\"work\"}]', 243, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1018, 'Pak Hackmam', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1701-0032\",\"label\":\"work\"}]', 244, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1019, 'Bu Helmi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0859-5444-1920\",\"label\":\"work\"}]', 245, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1020, 'Bu Watik', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-3966-1601\",\"label\":\"work\"}]', 246, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1021, 'BU NANDA', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-3070-9372\",\"label\":\"work\"}]', 247, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1022, 'Pak Adrian', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-3527-823\",\"label\":\"work\"}]', 248, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1023, 'pak Dayat', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0858-5662-3166\",\"label\":\"work\"}]', 249, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1024, 'pak Dayat', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0858-5662-3166\",\"label\":\"work\"}]', 250, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1025, 'Pak Masrikan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-5576-9748\",\"label\":\"work\"}]', 251, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1026, 'Pak Ryan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-3238-6596\",\"label\":\"work\"}]', 252, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1027, 'Bu Calista', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-3191-1941\",\"label\":\"work\"}]', 253, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1028, 'Bu Yuna', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-4299-8818\",\"label\":\"work\"}]', 254, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1029, 'Bu Yuni', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-4093-5088\",\"label\":\"work\"}]', 255, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1030, 'Pak Budi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-0674-3829\",\"label\":\"work\"}]', 256, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1031, 'Bp Faisol', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877-7174-3861\",\"label\":\"work\"}]', 257, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1032, 'Bp Stefanus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-3391-2500\",\"label\":\"work\"}]', 258, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1033, 'Bu Anik', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"08383185-9590\",\"label\":\"work\"}]', 259, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1034, 'Bp Rahmat', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-3115-9888\",\"label\":\"work\"}]', 260, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1035, 'Bp Gatot', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-3031-321\",\"label\":\"work\"}]', 261, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1036, 'Bp Raditya', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-4949-5372\",\"label\":\"work\"}]', 262, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1037, 'Bp Fahmi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0896-8837-0035\",\"label\":\"work\"}]', 263, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1038, 'Bp Sumarno', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-3431-0167\",\"label\":\"work\"}]', 264, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1039, 'Bp Jaelani', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-3018-9635\",\"label\":\"work\"}]', 265, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1040, 'Bp Ridwan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0895-8000-15350\",\"label\":\"work\"}]', 266, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1041, 'Bp Candra', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-3314-3393\",\"label\":\"work\"}]', 267, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1042, 'Bp Masqud', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"08123167-0374\",\"label\":\"work\"}]', 269, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1043, 'Bp Listyo', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-4840-0437\",\"label\":\"work\"}]', 270, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1044, 'Bp Hadi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0858-5075-6100\",\"label\":\"work\"}]', 271, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1045, 'Bp Solikhan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-367-786\",\"label\":\"work\"}]', 272, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1046, 'Bp Ari', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-5307-9223\",\"label\":\"work\"}]', 273, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1047, 'Bu Santy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-5531-1107\",\"label\":\"work\"}]', 274, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1048, 'Bp Rowi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-5918-1689\",\"label\":\"work\"}]', 275, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1049, 'Pak Suwito', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-3587-210\",\"label\":\"work\"}]', 276, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'manager maintenance', 4),
(1050, 'Bp Faruq', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-6999-8634\",\"label\":\"work\"}]', 277, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'engineering', 4),
(1051, 'Pak Sefri', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-3220-1499\",\"label\":\"work\"}]', 278, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1052, 'Pak Fery', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-0109-0231\",\"label\":\"work\"}]', 279, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1053, 'Pak Dedy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-3302-264\",\"label\":\"work\"}]', 280, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1054, 'Pak Yulianto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-5332-6637\",\"label\":\"work\"}]', 281, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1055, 'Pak Kristian', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-3332-2288\",\"label\":\"work\"}]', 282, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1056, 'Bu vera', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0817-0326-7659\",\"label\":\"work\"}]', 283, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1057, 'Pak Rachmat', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-9520-9942\",\"label\":\"work\"}]', 284, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1058, 'Pak Yanuar', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-3239-8531\",\"label\":\"work\"}]', 285, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1059, 'Rizky', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-334-158\",\"label\":\"work\"}]', 286, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1060, 'Pak Bambang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-53005124\",\"label\":\"work\"}]', 287, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1061, 'Pak Sendi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-3140-6322\",\"label\":\"work\"}]', 288, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1062, 'Pak Andreas', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838-56829256\",\"label\":\"work\"}]', 289, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1063, 'Pak Tony', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-49779743\",\"label\":\"work\"}]', 290, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1064, 'Bp Taylor', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-3165-5033\",\"label\":\"work\"}]', 291, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1065, 'Pak ACHIEN', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-8910-2853\",\"label\":\"work\"}]', 292, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1066, 'Pak Chalas', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-45575833\",\"label\":\"work\"}]', 293, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'user', 4),
(1067, 'Bu Velita', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"031-8964576\",\"label\":\"work\"}]', 294, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1068, 'Pak Bambang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"(031) 8438276\",\"label\":\"work\"}]', 295, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1069, 'Pak Senny', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-3296-4796\",\"label\":\"work\"}]', 296, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'maintenance', 4),
(1070, 'Pak SLAMET', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"031-8941052\",\"label\":\"work\"}]', 297, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1071, 'Pak AGUS', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"031-8945499\",\"label\":\"work\"}]', 298, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1072, 'Bp Adam', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-2223-7270\",\"label\":\"work\"}]', 299, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1073, 'Bu Hellen', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-3156-0508\",\"label\":\"work\"}]', 300, '2025-04-18 04:35:38', '2025-04-18 04:35:38', 'purchasing', 4),
(1074, 'Hadi', '[{\"email\":\"fahiranurzukhruf26@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0817-168838\",\"label\":\"work\"}]', 301, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Direktur', 5),
(1075, 'Purwoko', '[{\"email\":\"purwoko@aftechrandperkasa.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-11359599\",\"label\":\"work\"}]', 302, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1076, 'Iwan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-11359599\",\"label\":\"work\"}]', 302, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1077, 'Sonny', '[{\"email\":\"purch_uad@yahoo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0896-09015922\",\"label\":\"work\"}]', 303, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1078, 'Alex', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0859-45040122\",\"label\":\"work\"}]', 303, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1079, 'Septi', '[{\"email\":\"shepty.purnamasari@alkindo.net\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-8602459\",\"label\":\"work\"}]', 304, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1080, 'Ismail', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838-98626922\",\"label\":\"work\"}]', 304, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1081, 'Hari', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8508177\",\"label\":\"work\"}]', 305, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1082, 'Sriyanto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0858-76042984\",\"label\":\"work\"}]', 305, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1083, 'Ilus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-20067335\",\"label\":\"work\"}]', 305, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Adm Main', 5),
(1084, 'Mirza', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-91606664\",\"label\":\"work\"}]', 305, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Adm Main', 5),
(1085, 'Rudy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81331185627\",\"label\":\"work\"}]', 306, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Adm Main', 5),
(1086, 'Benny', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-34534221\",\"label\":\"work\"}]', 306, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1087, 'Iwan', '[{\"email\":\"iwan.setiawan@astra-honda.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-10475051\",\"label\":\"work\"}]', 306, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1088, 'Sariyanto', '[{\"email\":\"sariyanto@astra-honda.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-75181583\",\"label\":\"work\"}]', 307, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1089, 'Ali', '[{\"email\":\"ali.wardana@astra-honda.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852-189195265\",\"label\":\"work\"}]', 307, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1090, 'Rohman', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-84127961\",\"label\":\"work\"}]', 307, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1091, 'Arfan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-1430041711\",\"label\":\"work\"}]', 307, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Adm Main', 5),
(1092, 'Deni', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-18532033\",\"label\":\"work\"}]', 308, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Adm Main', 5),
(1093, 'Agung', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852-16144880\",\"label\":\"work\"}]', 309, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1094, 'Asti', '[{\"email\":\"purchasing1@autotech.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 309, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1095, 'Agus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81216744286\",\"label\":\"work\"}]', 310, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1096, 'Indra', '[{\"email\":\"purchasing@behaestex.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-161744286\",\"label\":\"work\"}]', 310, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1097, 'Dadang', '[{\"email\":\"purchasing.brocomobel@yahoo.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-9957846\",\"label\":\"work\"}]', 311, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1098, 'Kadino', '[{\"email\":\"kadino.id@toka-global.com,\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-84391715\",\"label\":\"work\"}]', 312, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1099, 'Iswandi', '[{\"email\":\"iswandi.id@toka-global.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-17427370\",\"label\":\"work\"}]', 312, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1100, 'Krisna', '[{\"email\":\"kresna.aji@incoe.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-96453252\",\"label\":\"work\"}]', 313, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1101, 'Maryatun', '[{\"email\":\"maryatun@incoe.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0858-85780149\",\"label\":\"work\"}]', 313, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1102, 'Sofie', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0818-06798290\",\"label\":\"work\"}]', 314, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Main', 5),
(1103, 'Steven', '[{\"email\":\"steven@ustraco.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-19457468\",\"label\":\"work\"}]', 314, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1104, 'DIka', '[{\"email\":\"andikadirgantara2@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-17427108\",\"label\":\"work\"}]', 315, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1105, 'Rika', '[{\"email\":\"receive.dm@dinarmakmur.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-81116430\",\"label\":\"work\"}]', 315, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1106, 'Yuda', '[{\"email\":\"pde@ecco.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0896-77594477\",\"label\":\"work\"}]', 316, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1107, 'Dayat', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-30446500\",\"label\":\"work\"}]', 316, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Main', 5),
(1108, 'Pandu', '[{\"email\":\"pset@ecco.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-46260448\",\"label\":\"work\"}]', 317, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Main', 5),
(1109, 'Linda', '[{\"email\":\"lif@ecco.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-37585368\",\"label\":\"work\"}]', 317, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1110, 'Cukup', '[{\"email\":\"cukup@emblem-asia.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-88253993\",\"label\":\"work\"}]', 318, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1111, 'Dika', '[{\"email\":\"andhika@emblem-asia.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-00188070\",\"label\":\"work\"}]', 318, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1112, 'Suraji', '[{\"email\":\"sudarji.chewon@gistexgroup.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-59245273\",\"label\":\"work\"}]', 319, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1113, 'Tomy', '[{\"email\":\"tommy.awaluddin@gistexgroup.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8996904567\",\"label\":\"work\"}]', 320, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1114, 'Eka', '[{\"email\":\"ekartiwa@gistexgroup.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0899-6858391\",\"label\":\"work\"}]', 321, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1115, 'Sagaf', '[{\"email\":\"sagaf@gistexgroup.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-3453660\",\"label\":\"work\"}]', 321, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1116, 'Arfan', '[{\"email\":\"admin_sparepart@goldenpack.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-14304611\",\"label\":\"work\"}]', 322, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1117, 'Anisa', '[{\"email\":\"anisa_sukmawati@goodyear.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-1913141\",\"label\":\"work\"}]', 323, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1118, 'Mathius', '[{\"email\":\"mathius_munda@goodyear.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-98555099\",\"label\":\"work\"}]', 323, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1119, 'Agus', '[{\"email\":\"agus_qc@ptimai.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-8600862\",\"label\":\"work\"}]', 325, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1120, 'Turini', '[{\"email\":\"fa@ptimai.co\",\"label\":\"work\"}]', '[{\"contact_number\":\"0896-4475857\",\"label\":\"work\"}]', 325, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1121, 'Solihin', '[{\"email\":\"solihin@hokkan.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"8562238326\",\"label\":\"work\"}]', 324, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1122, 'Ayu', '[{\"email\":\"purchasing.igntx@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-24671076\",\"label\":\"work\"}]', 326, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1123, 'Joko', '[{\"email\":\"joko.purnomo@iwsteel.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-99056942\",\"label\":\"work\"}]', 327, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1124, 'Karso', '[{\"email\":\"karso@kabatamaraya.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-85923444\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1125, 'Jesica', '[{\"email\":\"jessica@kabatamaraya.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', '', 5),
(1126, 'Nova', '[{\"email\":\"nova.erianto@krakatausteel.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-73804709\",\"label\":\"work\"}]', 329, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1127, 'Tedi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-18897407\",\"label\":\"work\"}]', 330, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1128, 'Wahyudi', '[{\"email\":\"moh.wahyudi104@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0817-6846071\",\"label\":\"work\"}]', 330, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1129, 'Joko', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877-74563558\",\"label\":\"work\"}]', 331, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1130, 'Ardian', '[{\"email\":\"ardian@lautanotsuka.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-98032182\",\"label\":\"work\"}]', 331, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1131, 'Mahmud', '[{\"email\":\"Muhandrajuan79@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-11077737\",\"label\":\"work\"}]', 332, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1132, 'Melia', '[{\"email\":\"msp4@maspion.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', '', 5),
(1133, 'Azizah', '[{\"email\":\"purchasinglokal.ns@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', '', 5),
(1134, 'Megaria', '[{\"email\":\"msp7@maspion.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', '', 5),
(1135, 'Deby', '[{\"email\":\"msp6@maspion.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', '', 5),
(1136, 'Ailin', '[{\"email\":\"msp3@maspion.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', '', 5),
(1137, 'Maman', '[{\"email\":\"maman_supriatna@meccaya.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-15515913\",\"label\":\"work\"}]', 334, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1138, 'Lisbet', '[{\"email\":\"lisbeth@meccaya.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0858-90383312\",\"label\":\"work\"}]', 334, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1139, 'Ahmad', '[{\"email\":\"achmad.kurniawan@medifarma.biz\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-84116096\",\"label\":\"work\"}]', 335, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1140, 'Ega', '[{\"email\":\"Ega.Putranta@darya-varia.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-22341234\",\"label\":\"work\"}]', 335, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1141, 'Wisnu', '[{\"email\":\"wisnu.hp@megawecare.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-73693139\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1142, 'Mega', '[{\"email\":\"melani@megawecare.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0817-9887979\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1143, 'Hendra', '[{\"email\":\"hendra@mg-indonesia.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-82204988\",\"label\":\"work\"}]', 337, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1144, 'Samuel', '[{\"email\":\"samuel@mg-indonesia.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0895-19282245\",\"label\":\"work\"}]', 337, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1145, 'Sarah', '[{\"email\":\"mgindonesia.system@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87788787033\",\"label\":\"work\"}]', 337, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1146, 'Goldif', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-20788086\",\"label\":\"work\"}]', 338, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1147, 'Sri', '[{\"email\":\"hutang1@multigarmenjaya.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-2170764\",\"label\":\"work\"}]', 338, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1148, 'Dika', '[{\"email\":\"Teknik.Pwk@sariroti.com>\",\"label\":\"work\"}]', '[{\"contact_number\":\"0851-76761018\",\"label\":\"work\"}]', 339, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1149, 'Syaiful', '[{\"email\":\"HeadPurchasing.Pwk@sariroti.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838-07936050\",\"label\":\"work\"}]', 339, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1150, 'Endin', '[{\"email\":\"endin.imannudin@nufarm,com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-11551003\",\"label\":\"work\"}]', 340, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1151, 'Hasan', '[{\"email\":\"hasanudin@nutrifood.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0858-92010969\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1152, 'Agustinus', '[{\"email\":\"agustinus.mursid@nutrifood.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-9930512\",\"label\":\"work\"}]', 342, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1153, 'Alwan', '[{\"email\":\"Alwan.Azhari@nutrifood.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-77400524\",\"label\":\"work\"}]', 343, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1154, 'Nurzaman', '[{\"email\":\"nurzaman@nutrifood.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0817-123431\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1155, 'Bardi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-94223271\",\"label\":\"work\"}]', 344, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1156, 'Metta', '[{\"email\":\"metta.purchasing@yahoo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87887871170\",\"label\":\"work\"}]', 344, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1157, 'Heri', '[{\"email\":\"heri.kurniawan@ppli.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-11265400\",\"label\":\"work\"}]', 345, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1158, 'Rukiman', '[{\"email\":\"rukiman@promed.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-20987600\",\"label\":\"work\"}]', 346, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1159, 'Yanto', '[{\"email\":\"yanto@promed.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"yanto@promed.co.id\",\"label\":\"work\"}]', 347, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1160, 'Oji', '[{\"email\":\"procurement.sja.krw@kapalapi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-91346913\",\"label\":\"work\"}]', 348, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1161, 'Widodo', '[{\"email\":\"widodo@sumibe.co.jp\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-95910717\",\"label\":\"work\"}]', 349, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1162, 'Yui', '[{\"email\":\"ruli@sumibe.co.jp\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877-33930669\",\"label\":\"work\"}]', 349, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1163, 'Yosep', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-97621563\",\"label\":\"work\"}]', 350, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1164, 'Tia', '[{\"email\":\"sentianatarihoran@yahoo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0896-3786008\",\"label\":\"work\"}]', 350, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1165, 'Soleh', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-19653397\",\"label\":\"work\"}]', 351, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1166, 'Widia', '[{\"email\":\"widya.purchasing@suntak.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-95412342\",\"label\":\"work\"}]', 351, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1167, 'Sudarono', '[{\"email\":\"Sudarono@toagroup.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-88008997\",\"label\":\"work\"}]', 352, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1168, 'Eny', '[{\"email\":\"Admin.purchasingtoaci@toagroup.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-18732004\",\"label\":\"work\"}]', 352, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1169, '', '[{\"email\":\"warumulyono@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-95474886\",\"label\":\"work\"}]', 353, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1170, 'Mimi', '[{\"email\":\"mimi@ligogroup.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-22559897\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1171, 'Sutarto', '[{\"email\":\"sutarto@unifoods.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-10569865\",\"label\":\"work\"}]', 354, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1172, 'Ilham', '[{\"email\":\"ilham@unifoods.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877-89200971\",\"label\":\"work\"}]', 354, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1173, 'Ramot', '[{\"email\":\"af_purch2@adetex.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-21966908\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Purchasing', 5),
(1174, 'Sartoko', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852-17093235\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1175, 'Rince', '[{\"email\":\"bantengpratamarubber@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0896-58777386\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1176, 'Solihin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0859-73876570\",\"label\":\"work\"}]', 357, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1177, 'Tias', '[{\"email\":\"purch3@bumimulia.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0896-73483017\",\"label\":\"work\"}]', 357, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1178, 'Tegar', '[{\"email\":\"gede_tegar_buddhi_adnyana@cargill.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0819-36421516\",\"label\":\"work\"}]', 358, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1179, 'Edi', '[{\"email\":\"purchasing@fujitechnica.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-88152657\",\"label\":\"work\"}]', 359, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1180, 'Dwi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-63306330\",\"label\":\"work\"}]', 360, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1181, 'Dita', '[{\"email\":\"sari.ad@glicowings.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-39855513\",\"label\":\"work\"}]', 360, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1182, 'Salman', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-11902802\",\"label\":\"work\"}]', 361, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1183, 'Rohmah', '[{\"email\":\"purchase_03@g-tim.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 361, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1184, 'Akbar', '[{\"email\":\"akbarmaulana51@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877-75745259\",\"label\":\"work\"}]', 362, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1185, 'Rudy', '[{\"email\":\"Rudy.hendra@hibautama.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0853-13764317\",\"label\":\"work\"}]', 363, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1186, 'Buyung', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838-19111592\",\"label\":\"work\"}]', 364, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1187, 'Erlin', '[{\"email\":\"purch_cwi1@honorisindustry.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-47632780\",\"label\":\"work\"}]', 364, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1188, 'Dimas', '[{\"email\":\"Purchasing3@indopangan.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-77793937\",\"label\":\"work\"}]', 365, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1189, 'Bun', '[{\"email\":\"bun@pdg.japfacomfeed.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-6615678\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1190, 'Alfon', '[{\"email\":\"alfonsus.dirgantara@japfa.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-8496633\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1191, 'Ali', '[{\"email\":\"general@kahaptex.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 368, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1192, 'Leni', '[{\"email\":\"lenny@mj.kaha.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-13698862\",\"label\":\"work\"}]', 369, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1193, 'Eem', '[{\"email\":\"tazmal.65@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-19885470\",\"label\":\"work\"}]', 370, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1194, 'Vakih', '[{\"email\":\"vakieh.cadaz@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-88846511\",\"label\":\"work\"}]', 371, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1195, 'Edi', '[{\"email\":\"edi.sudrajat@lamipak.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-17998142\",\"label\":\"work\"}]', 372, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1196, 'Sismaryadi', '[{\"email\":\"sism@lintec.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-10249896\",\"label\":\"work\"}]', 373, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1197, 'Cahyado', '[{\"email\":\"earlgrey6789@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838-75155506\",\"label\":\"work\"}]', 374, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1198, 'Tiar', '[{\"email\":\"tiar@mahsing.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-80622860\",\"label\":\"work\"}]', 375, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1199, 'Sri', '[{\"email\":\"Suhaemi.Suhaemi@mattel.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-910811\",\"label\":\"work\"}]', 376, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1200, 'Sabdo', '[{\"email\":\"sabdo.cahyono@michelin.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-26901120\",\"label\":\"work\"}]', 377, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1201, 'Raden', '[{\"email\":\"raden.putra@michellin.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-46806674\",\"label\":\"work\"}]', 377, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1202, 'Mulyadi', '[{\"email\":\"mulyadi@nppi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-13331823\",\"label\":\"work\"}]', 378, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1203, 'Alizar', '[{\"email\":\"Alizar.A@bluescope.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-85395187\",\"label\":\"work\"}]', 379, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1204, 'Ika', '[{\"email\":\"Dian.KartikaDewi@bluescope.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1204780\",\"label\":\"work\"}]', 379, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1205, 'Syerwin', '[{\"email\":\"ignatiussherwin98@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-87676288\",\"label\":\"work\"}]', 380, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1206, 'Adit', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838-12104320\",\"label\":\"work\"}]', 381, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1207, 'Ibrahim', '[{\"email\":\"ibrahim_rpa@yahoo.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838-19445494\",\"label\":\"work\"}]', 381, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1208, 'Fery', '[{\"email\":\"pt_samatex@yahoo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-2006622\",\"label\":\"work\"}]', 382, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Direktur', 5),
(1209, 'Tarya', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-93460479\",\"label\":\"work\"}]', 383, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1210, 'Vera', '[{\"email\":\"livesimindo@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-82034315\",\"label\":\"work\"}]', 383, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1211, 'Jaja', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-95821146\",\"label\":\"work\"}]', 384, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1212, 'Sayat', '[{\"email\":\"purchasing@spinmill.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-78093028\",\"label\":\"work\"}]', 384, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1213, 'Didi', '[{\"email\":\"engineering.skf@spindo.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0819-16562586\",\"label\":\"work\"}]', 385, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1214, 'Pipit', '[{\"email\":\"purchasing.skf@spindo.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0817-272014\",\"label\":\"work\"}]', 385, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1215, 'Yasmine', '[{\"email\":\"purchasing.teknikcjr@mayora.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0898-4767638\",\"label\":\"work\"}]', 386, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1216, 'Condro', '[{\"email\":\"condro.wibowo@mayora.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-43429546\",\"label\":\"work\"}]', 387, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1217, 'Tulus', '[{\"email\":\"hanar.purwaka@ttmi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-15156702\",\"label\":\"work\"}]', 388, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1218, 'Hanar', '[{\"email\":\"hanar.purwaka@ttmi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-86010529\",\"label\":\"work\"}]', 388, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Purchasing', 5),
(1219, 'Imam', '[{\"email\":\"Imam.Musbechin@tvsmotor.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0818-889458\",\"label\":\"work\"}]', 389, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1220, 'Rico', '[{\"email\":\"richo.nugroho@ultrajaya.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-23426324\",\"label\":\"work\"}]', 390, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1221, 'Prayogi', '[{\"email\":\"procurement@uniplast.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0853-65196166\",\"label\":\"work\"}]', 391, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1222, 'Roni', '[{\"email\":\"djemmy@unitedcan.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0818-955335\",\"label\":\"work\"}]', 392, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1223, 'Iman', '[{\"email\":\"ucrugs@universalcarpets.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-61007990\",\"label\":\"work\"}]', 393, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1224, '', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', '', 5);
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`) VALUES
(1225, 'Aceng', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 416, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1226, 'Adam', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 402, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1227, 'Adi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 751, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1228, 'Agam', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 744, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1229, 'Agung', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1230, 'Agus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813 8609 2164\",\"label\":\"work\"}]', 736, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1231, 'Ahmad', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 806, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1232, 'Amrul', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-14690960\",\"label\":\"work\"}]', 412, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1233, 'Andi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 405, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1234, 'Andi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1235, 'Ari', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 428, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1236, 'Arton', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Direktur', 5),
(1237, 'Asep', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 761, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purch', 5),
(1238, 'Aso', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 420, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1239, 'Aswan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 783, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1240, 'Atik', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 426, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1241, 'Bagus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 817, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1242, 'Bambang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1243, 'Bambang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 818, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1244, 'Bara', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 748, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1245, 'Beni', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 787, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1246, 'Beny', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1247, 'Berianto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 432, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1248, 'Bostami', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 780, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1249, 'Boyo Saban', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 442, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1250, 'Budi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 793, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1251, 'Budi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 796, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1252, 'Budi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 804, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1253, 'Budi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 768, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1254, 'Catur', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 754, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1255, 'Cecep', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 423, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1256, 'Cucu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 800, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1257, 'Damiri', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 430, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1258, 'Darwanto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 759, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1259, 'Dedy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 773, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1260, 'Dewi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 408, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1261, 'Dimas', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-73504040\",\"label\":\"work\"}]', 417, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1262, 'Dimas', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 418, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1263, 'Eday', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0895-28339329\",\"label\":\"work\"}]', 769, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1264, 'Edi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 816, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1265, 'Edo', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 774, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Direktur', 5),
(1266, 'Ega', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 745, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1267, 'Eka', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-9396856\",\"label\":\"work\"}]', 411, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1268, 'Eko', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 811, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1269, 'Elisa', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 794, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1270, 'Ence', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 772, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1271, 'Endang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-84748545\",\"label\":\"work\"}]', 767, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Adm Main', 5),
(1272, 'Enjang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 422, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1273, 'Eric', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 750, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1274, 'Faisal', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1275, 'Fedy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 776, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Direktur', 5),
(1276, 'Felix', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 808, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1277, 'Fenus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 419, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1278, 'Fiber', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0888-09792299\",\"label\":\"work\"}]', 765, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1279, 'Firdaus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 421, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1280, 'Firdaus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 760, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1281, 'Fredy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 777, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintence', 5),
(1282, 'Greese', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 789, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1283, 'Guruh', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Project', 5),
(1284, 'Gusti', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 739, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1285, 'Hafid', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 778, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1286, 'Handoko', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 429, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1287, 'Hari', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 741, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1288, 'Herdi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 752, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1289, 'Heri', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 803, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1290, 'Hermawan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 762, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1291, 'Hermawan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 770, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1292, 'Iding', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 442, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1293, 'Iim', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 404, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1294, 'Imam', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-88142670\",\"label\":\"work\"}]', 413, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1295, 'Imam', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 746, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1296, 'Iman', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-86280752\",\"label\":\"work\"}]', 406, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Spv Maintenance', 5),
(1297, 'Irvan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 792, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1298, 'Irvan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 764, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1299, 'Iyan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 436, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1300, 'Iyep', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 813, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Maintenance', 5),
(1301, 'Jayus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-13495795\",\"label\":\"work\"}]', 407, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Mgr Maintenance', 5),
(1302, 'Kiki', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 440, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Purchasing', 5),
(1303, 'Lili', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 444, '2025-04-18 04:37:44', '2025-04-18 04:37:44', 'Plant Manager', 5),
(1304, 'Lusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 434, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1305, 'Maman', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 757, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Maintenance', 5),
(1306, 'Maman', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 409, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1307, 'Marjoko', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1308, 'Marwan', '[{\"email\":\"mpanisa@aio.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852-17607187\",\"label\":\"work\"}]', 399, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1309, 'Media', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 810, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1310, 'Mugi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 742, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1311, 'Muhadi', '[{\"email\":\"maintenance@aai.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-14387387\",\"label\":\"work\"}]', 397, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Main', 5),
(1312, 'Mukhalip', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1313, 'Mulyadi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85295790549\",\"label\":\"work\"}]', 747, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1314, 'Nanang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 801, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1315, 'Nirwana', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 807, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1316, 'Nopi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 758, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1317, 'Nopi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85719342472\",\"label\":\"work\"}]', 785, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1318, 'Nugroho', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 812, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1319, 'Nyoman', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 802, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Purchasing', 5),
(1320, 'Oto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 737, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Maintenance', 5),
(1321, 'Paiono', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 433, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1322, 'Pampi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 755, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1323, 'Pangestu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 740, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1324, 'Panji', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 738, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1325, 'Pius', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-9290052\",\"label\":\"work\"}]', 403, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1326, 'Pulungan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 779, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Maintenance', 5),
(1327, 'Rafi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Maintenance', 5),
(1328, 'Rahmat', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 753, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Plant Manager', 5),
(1329, 'Rena', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 441, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1330, 'Rian', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 814, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1331, 'Rizal', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 788, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1332, 'Robby', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 766, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1333, 'Roy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 784, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Maintenance', 5),
(1334, 'Ruby', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-23061772\",\"label\":\"work\"}]', 410, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Maintenance', 5),
(1335, 'Rusda', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 438, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1336, 'Ruskendi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-81639812\",\"label\":\"work\"}]', 775, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1337, 'Saifudin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 400, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1338, 'Samiya', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 815, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1339, 'Sandi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 781, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1340, 'Santosa', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 795, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1341, 'Sari', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 394, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1342, 'Savik', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 756, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1343, 'Siti', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 809, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1344, 'Soleh', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 786, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1345, 'Stephanus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1346, 'Suraji', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 439, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1347, 'Suryono', '[{\"email\":\"purchasing@aica.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1348, 'Syamsul', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 782, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1349, 'Syarif', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 425, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1350, 'Tatang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 749, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1351, 'Taufik', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 771, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1352, 'Tian', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 805, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1353, 'Tjarmat', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1354, 'Topan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1355, 'Tritan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"812956653000\",\"label\":\"work\"}]', 401, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1356, 'Tutun', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 763, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1357, 'Wahyu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0823-18878250\",\"label\":\"work\"}]', 437, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1358, 'Yayan', '[{\"email\":\"purchasing@awi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 398, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Purchasing', 5),
(1359, 'Yoga', '[{\"email\":\"angra.yoga@awi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0818-02071709\",\"label\":\"work\"}]', 398, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1360, 'Yulianto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 799, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Mgr Maintenance', 5),
(1361, 'Yulius', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 424, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1362, 'Yusuf', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 790, '2025-04-18 04:37:45', '2025-04-18 04:37:45', 'Spv Maintenance', 5),
(1363, 'HENDRO', '[{\"email\":\"hendro.pramono@framas.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"818856689\",\"label\":\"work\"}]', 819, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1364, 'AGUS TRI', '[{\"email\":\"agu.tri.hutomo@djarum.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85740580345\",\"label\":\"work\"}]', 820, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1365, 'TRI', '[{\"email\":\"purchasing2@oishi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81284435350\",\"label\":\"work\"}]', 821, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'PURCHASING', 6),
(1366, 'SOFYAN', '[{\"email\":\"lenggine@mapi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"82110002971\",\"label\":\"work\"}]', 822, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1367, 'RAKESH', '[{\"email\":\"rakesh@embee.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"8112090036\",\"label\":\"work\"}]', 823, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1368, 'RULLIAN', '[{\"email\":\"ruli@garuda-cement.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8112334333\",\"label\":\"work\"}]', 824, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'PURCHASING', 6),
(1369, 'SLAMET BUDIMAN', '[{\"email\":\"slamet.budiman@prysmian.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81514372661\",\"label\":\"work\"}]', 825, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1370, 'SONI', '[{\"email\":\"soni_d@asahi-indonesia.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81519335452\",\"label\":\"work\"}]', 826, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1371, 'EDWIN', '[{\"email\":\"edwin@samator-tnsi.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85641182217\",\"label\":\"work\"}]', 827, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1372, 'SENTOT N', '[{\"email\":\"sentot@pttrimitra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81514135661\",\"label\":\"work\"}]', 828, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1373, 'NARENDRA', '[{\"email\":\"store.ilt@adityabirla.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81585397713\",\"label\":\"work\"}]', 829, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1374, 'HERIDA', '[{\"email\":\"herida@polyplex.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81320136118\",\"label\":\"work\"}]', 830, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1375, 'IRI SAHIRI', '[{\"email\":\"iri.sahiri@clariant-kujang.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87880442447\",\"label\":\"work\"}]', 831, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1376, 'WAHYU', '[{\"email\":\"Wahyu_C_Nugroho@ojisinarmas.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"895347204304\",\"label\":\"work\"}]', 832, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'PURCHASING', 6),
(1377, 'ALWANI DEPARI', '[{\"email\":\"wanidepari1995@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87888808898\",\"label\":\"work\"}]', 833, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1378, 'TEGUH WIDODO', '[{\"email\":\"mtc2@eji.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81213944223\",\"label\":\"work\"}]', 834, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1379, 'RUSDI', '[{\"email\":\"indometal83@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81906235402\",\"label\":\"work\"}]', 835, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1380, 'GIANTO', '[{\"email\":\"megaindahglassindustry@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87777288229\",\"label\":\"work\"}]', 836, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1381, 'SUROSO', '[{\"email\":\"mitta.trilogam@yahoo.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81319345422\",\"label\":\"work\"}]', 837, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1382, 'AMIRULLAH', '[{\"email\":\"amirullah@unipres.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81380948638\",\"label\":\"work\"}]', 838, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1383, 'SUWONDO', '[{\"email\":\"suwondo@nissin-mfg.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"8567408599\",\"label\":\"work\"}]', NULL, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1384, 'BASUKI', '[{\"email\":\"basuki.mtc@cbachemical.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87875224781\",\"label\":\"work\"}]', 840, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1385, 'SISWANTO', '[{\"email\":\"siswanto.utility@polytron.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"811273778\",\"label\":\"work\"}]', 841, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1386, 'HENRO SUSILO', '[{\"email\":\"jfmm1@nippo.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81311210139\",\"label\":\"work\"}]', 842, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1387, 'DARYANTO', '[{\"email\":\"proc@magnakabel.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87787974701\",\"label\":\"work\"}]', NULL, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1388, 'LILIK MURNIANTO', '[{\"email\":\"lilikmurnianto@yahoo.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81219412106\",\"label\":\"work\"}]', 844, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1389, 'MISRANTO', '[{\"email\":\"anto.misranto@senzofm.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"85792184936\",\"label\":\"work\"}]', 845, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1390, 'ADIM', '[{\"email\":\"purchasing@glopac.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81510566689\",\"label\":\"work\"}]', 846, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1391, 'KARJITO', '[{\"email\":\"manunggaljaya1@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85211869375\",\"label\":\"work\"}]', 847, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1392, 'HENDRIC', '[{\"email\":\"procurement.mmc1a@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"83812566399\",\"label\":\"work\"}]', 848, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1393, 'RENOT', '[{\"email\":\"renot.librano@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81310041750\",\"label\":\"work\"}]', 849, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1394, 'CHARLES', '[{\"email\":\"akosim823@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8128472106\",\"label\":\"work\"}]', 850, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1395, 'IWAN', '[{\"email\":\"charlesmmc1@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87771684772\",\"label\":\"work\"}]', 851, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1396, 'SLAMET SANTOSO', '[{\"email\":\"slametsantoso@mnk.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"811199709\",\"label\":\"work\"}]', 852, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1397, 'WAWAN', '[{\"email\":\"wawan@ihara.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81222197749\",\"label\":\"work\"}]', 853, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1398, 'ZAENAL ARIVIN', '[{\"email\":\"zaenal_a@ssi.sharp-world.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87727996543\",\"label\":\"work\"}]', 854, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1399, 'IWAN SAEPULOH', '[{\"email\":\"iwan.saepuloh@propanraya.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8111766655\",\"label\":\"work\"}]', NULL, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1400, 'TIARA', '[{\"email\":\"Tiara.Syifa@oimp.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"8999198570\",\"label\":\"work\"}]', 856, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'PURCHASING', 6),
(1401, 'DWI WAHYONO', '[{\"email\":\"pe@ptmatsuo.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81999917169\",\"label\":\"work\"}]', 857, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1402, 'LINDON S', '[{\"email\":\"lindon.simanjuntak@dac.dharmap.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81290404148\",\"label\":\"work\"}]', 858, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1403, 'RISKA', '[{\"email\":\"pcs_saurindotex@yahoo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"89619280300\",\"label\":\"work\"}]', 859, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1404, 'ALI MUKHAIDORI', '[{\"email\":\"ali@tef.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"8128876547\",\"label\":\"work\"}]', 860, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1405, 'MONANG', '[{\"email\":\"monang@szyuto.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"82125848949\",\"label\":\"work\"}]', 861, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'PURCHASING', 6),
(1406, 'BAYU', '[{\"email\":\"bayu.nhfdi@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"885840173368\",\"label\":\"work\"}]', 862, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'PURCHASING', 6),
(1407, 'TITUS', '[{\"email\":\"pur.order@mypak.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"89662425333\",\"label\":\"work\"}]', NULL, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'PURCHASING', 6),
(1408, 'MARIMAN', '[{\"email\":\"Mariman@icbp.indofood.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81283284022\",\"label\":\"work\"}]', 864, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'PURCHASING', 6),
(1409, 'SIN SIN', '[{\"email\":\"sinsin0207@yahoo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8112235885\",\"label\":\"work\"}]', 865, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'PURCHASING', 6),
(1410, 'ARIE BEKTI', '[{\"email\":\"procurement.id@hulane.com.tw\",\"label\":\"work\"}]', '[{\"contact_number\":\"81296105568\",\"label\":\"work\"}]', 866, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1411, 'THOMAS CHEN', '[{\"email\":\"thomas@ortholite.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81286059072\",\"label\":\"work\"}]', 867, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1412, 'MEILAN', '[{\"email\":\"ps003@kingduan.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"2287835111\",\"label\":\"work\"}]', NULL, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'PURCHASING', 6),
(1413, 'NENI', '[{\"email\":\"purchasing@goldion.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"83894256839\",\"label\":\"work\"}]', 869, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1414, 'DERIL', '[{\"email\":\"deryl.bhayu@travira-air.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8992842324\",\"label\":\"work\"}]', 870, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1415, 'NOR SUKOCO', '[{\"email\":\"nor.sukoco@jayatransindo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85740580345\",\"label\":\"work\"}]', 871, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1416, 'SAMSUL BAHRI', '[{\"email\":\"samsulbahrilnh@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81315301362\",\"label\":\"work\"}]', 872, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1417, 'SUDIMAN', '[{\"email\":\"sudiman2311@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81281665371\",\"label\":\"work\"}]', 873, '2025-04-18 04:39:14', '2025-04-18 04:39:14', 'MAINTENANCE', 6),
(1418, 'ABU', '[{\"email\":\"purchasing.polipack@polindoutama.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"87855427228\",\"label\":\"work\"}]', 874, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1419, 'AMIN', '[{\"email\":\"purchasing@polindoutama.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"87794480701\",\"label\":\"work\"}]', 875, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1420, 'BENNY', '[{\"email\":\"maintenance@sheitai.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81317303099\",\"label\":\"work\"}]', 876, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1421, 'DIDIT', '[{\"email\":\"didit.abri@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81249117964\",\"label\":\"work\"}]', 877, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'PRODUKSI', 6),
(1422, 'BAIM', '[{\"email\":\"ibrahim.mansyur@ebergroup.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85342244745\",\"label\":\"work\"}]', 878, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1423, 'GREGORIUS', '[{\"email\":\"gregorius.oswandi@gae.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"887883481897\",\"label\":\"work\"}]', 879, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1424, 'RUJIHANTO', '[{\"email\":\"production@pt-ipi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"8176739870\",\"label\":\"work\"}]', 880, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1425, 'SADDALA', '[{\"email\":\"venkates@kefiwangi.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81389646736\",\"label\":\"work\"}]', 881, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1426, 'LISMER', '[{\"email\":\"lismer@s-iki.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81317724551\",\"label\":\"work\"}]', 882, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1427, 'MUHAMMAD EGA', '[{\"email\":\"habibie@yamatogomu.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81574890498\",\"label\":\"work\"}]', 883, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'GENERAL MANAGER', 6),
(1428, 'RESTU AZIZAH', '[{\"email\":\"engineering@varley-indonesia.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81297214354\",\"label\":\"work\"}]', 884, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1429, 'ERIC', '[{\"email\":\"maintenance@kanefusa.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"8567538315\",\"label\":\"work\"}]', 885, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1430, 'FADIL', '[{\"email\":\"ga6@shindengen.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"82298956785\",\"label\":\"work\"}]', 886, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1431, 'FIRMAAN', '[{\"email\":\"maintenance_ejip@cabinindo.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"83115376407\",\"label\":\"work\"}]', 887, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1432, 'HERIANTO', '[{\"email\":\"herianto@id-meg-snow.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8128191900\",\"label\":\"work\"}]', 888, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1433, 'DIDI', '[{\"email\":\"didi.taiyo@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85813533987\",\"label\":\"work\"}]', 889, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1434, 'DIKI', '[{\"email\":\"diki@dnti.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"8111148314\",\"label\":\"work\"}]', 890, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1435, 'ANTON', '[{\"email\":\"purchasing@tristarmk.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81298726532\",\"label\":\"work\"}]', 891, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1436, 'HERMAWAN', '[{\"email\":\"hermawan@fujishuiindonesia.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81288975168\",\"label\":\"work\"}]', 892, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1437, 'YUSUP', '[{\"email\":\"yusup@indoglas.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81295535314\",\"label\":\"work\"}]', 893, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1438, 'SELAMAT', '[{\"email\":\"selamat@pmti.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"817109060\",\"label\":\"work\"}]', 894, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1439, 'ACE FATTURAHMAN', '[{\"email\":\"ace.faturohman@haldin-natural.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81319499373\",\"label\":\"work\"}]', 895, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1440, 'ABANG', '[{\"email\":\"abangpip@ptpip.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"82121770862\",\"label\":\"work\"}]', 896, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1441, 'KI AGUS ABDULLAH', '[{\"email\":\"kiagus.abdullah@agricon.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8119403875\",\"label\":\"work\"}]', 897, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1442, 'SUGITO', '[{\"email\":\"sugito@fajarpaper.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8128868949\",\"label\":\"work\"}]', 898, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1443, 'GERRY', '[{\"email\":\"david-gerry@jsgi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"85781229007\",\"label\":\"work\"}]', 899, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'PURCHASING', 6),
(1444, 'TIKA', '[{\"email\":\"purchasing@intanglass.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81281066348\",\"label\":\"work\"}]', 900, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1445, 'TIKA', '[{\"email\":\"purchasing.kendalindo@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81281066348\",\"label\":\"work\"}]', 901, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1446, 'UNTUNG', '[{\"email\":\"utility@sugity.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81380841374\",\"label\":\"work\"}]', 902, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1447, 'TASORI', '[{\"email\":\"tasori@papercups.co.kr\",\"label\":\"work\"}]', '[{\"contact_number\":\"81319019099\",\"label\":\"work\"}]', 903, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1448, 'MURJITO', '[{\"email\":\"murjito@panasonic.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81213081017\",\"label\":\"work\"}]', NULL, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1449, 'AJIS', '[{\"email\":\"a-teguh@pthw.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"87888611077\",\"label\":\"work\"}]', 905, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1450, 'EKO TJOA', '[{\"email\":\"staff_purchasing@bumiputra-manufaktur-teknologi.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81572221999\",\"label\":\"work\"}]', 906, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'MAINTENANCE', 6),
(1451, 'ALEX PRIYADI', '[{\"email\":\"purchasing22@hino-motors.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81213271140\",\"label\":\"work\"}]', 907, '2025-04-18 04:39:15', '2025-04-18 04:39:15', 'PURCHASING', 6),
(1452, 'Burhan', '[{\"email\":\"Burhan@agel.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81808144518\",\"label\":\"work\"}]', 908, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1453, 'Bagus', '[{\"email\":\"b.wijaya@agel.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"85210255813\",\"label\":\"work\"}]', 908, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1454, 'Ade', '[{\"email\":\"purchasing@alba-unggul-metal.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"89504030071\",\"label\":\"work\"}]', 909, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1455, 'Roni', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81212817977\",\"label\":\"work\"}]', 909, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1456, 'Dedi', '[{\"email\":\"Dedi.Safari@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-2217-0894\",\"label\":\"work\"}]', 910, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Create PO', 7),
(1457, 'Ma\'ruf', '[{\"email\":\"Muhamad.Maruf@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0888-3828-652\",\"label\":\"work\"}]', 910, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Foreman Maintenance', 7),
(1458, 'Wana', '[{\"email\":\"Wana.Wana@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-2217-0894\",\"label\":\"work\"}]', 910, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1459, 'Sugeng', '[{\"email\":\"Sugeng.Suparno@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0814-1116-6696\",\"label\":\"work\"}]', 911, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Warehouse', 7),
(1460, 'Hadi Yanto', '[{\"email\":\"Hadi.Yanto@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-2408-0946\",\"label\":\"work\"}]', 911, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1461, 'Partono', '[{\"email\":\"partono@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0896-3532-6646\",\"label\":\"work\"}]', 911, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Foreman Maintenance', 7),
(1462, 'Amin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0895-0761-7363\",\"label\":\"work\"}]', 911, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1463, 'Faiz', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0896-3218-7272\",\"label\":\"work\"}]', 911, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1464, 'Arif', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0834-9865-3567\",\"label\":\"work\"}]', 911, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1465, 'Bendo', '[{\"email\":\"Bendo.Abdalah@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-8484-868\",\"label\":\"work\"}]', 912, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Warehouse', 7),
(1466, 'Kusnan', '[{\"email\":\"Kusnan.Mahmud@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-1969-4001\",\"label\":\"work\"}]', 912, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1467, 'Rida', '[{\"email\":\"rida.maulana@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-8241-5930\",\"label\":\"work\"}]', 912, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1468, 'Istu', '[{\"email\":\"Istu.Sutopo@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-1025-7390\",\"label\":\"work\"}]', 912, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Foreman Maintenance', 7),
(1469, 'Budi Darmono', '[{\"email\":\"budi.darmono@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-1121-1537\",\"label\":\"work\"}]', 913, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1470, 'Anang', '[{\"email\":\"Anang.Sumedi@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1350-7438\",\"label\":\"work\"}]', 913, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1471, 'Renald', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-8727-8078\",\"label\":\"work\"}]', 913, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1472, 'Wahyu', '[{\"email\":\"Wahyu.Budi@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-1188-827\",\"label\":\"work\"}]', 913, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1473, 'Slamet', '[{\"email\":\"lamet.wiyono@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-9351-9100\",\"label\":\"work\"}]', 913, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Warehouse', 7),
(1474, 'Dicky', '[{\"email\":\"Dicky.Febrian@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0858-9404-5355\",\"label\":\"work\"}]', 914, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1475, 'Rizky', '[{\"email\":\"Muhammad.Alfiansyah@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0898-6172-417\",\"label\":\"work\"}]', 914, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1476, 'Grace', '[{\"email\":\"Grace.Saragih@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 914, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1477, 'Faqih', '[{\"email\":\"Noor.Faqih@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-1821-1728\",\"label\":\"work\"}]', 915, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Warehouse', 7),
(1478, 'Roy', '[{\"email\":\"roy.saniagus@daihatsu.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-9745-255\",\"label\":\"work\"}]', 915, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Foreman Maintenance', 7),
(1479, 'Inung', '[{\"email\":\"m.zainussururi@bekasipower.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81317095023\",\"label\":\"work\"}]', 916, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'General Manager', 7);
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`) VALUES
(1480, 'Dani', '[{\"email\":\"dani.agaskarna@bekasipower.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"818204442\",\"label\":\"work\"}]', 916, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1481, 'Gatot', '[{\"email\":\"gatot@bekasipower.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81288099969\",\"label\":\"work\"}]', 916, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1482, 'Debby', '[{\"email\":\"marni.deby@bekasipower.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"85713347883\",\"label\":\"work\"}]', 916, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1483, 'Binahun', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81385223343\",\"label\":\"work\"}]', 916, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1484, 'Rizky', '[{\"email\":\"Rizqiyana.Putri@duniakimiajaya.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87799648786\",\"label\":\"work\"}]', 917, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1485, 'Iwan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81289994080\",\"label\":\"work\"}]', 917, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1486, 'Hendry', '[{\"email\":\"fx_hndri@dap.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"82113637282\",\"label\":\"work\"}]', 918, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1487, 'Yanti', '[{\"email\":\"yanti_purc@dap.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0818-426-674\",\"label\":\"work\"}]', 918, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1488, 'Deni', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838-7706-3123\",\"label\":\"work\"}]', 918, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1489, 'Endah', '[{\"email\":\"endah@indocreativemebel.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0819-3133-8988\",\"label\":\"work\"}]', 919, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1490, 'Susi', '[{\"email\":\"susilawati@kmk.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"85222110691\",\"label\":\"work\"}]', 920, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1491, 'Kuat', '[{\"email\":\"kuat@kmk.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-9407-3204\",\"label\":\"work\"}]', 920, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1492, 'Nahari', '[{\"email\":\"kangnahari@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81210897005\",\"label\":\"work\"}]', 920, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1493, 'Yayan', '[{\"email\":\"yayan@lottepkg.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8877-0816\",\"label\":\"work\"}]', 921, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1494, 'Eko', '[{\"email\":\"eko_purwanto@lottepkg.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877-7474-5404\",\"label\":\"work\"}]', 921, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1495, 'Saeful', '[{\"email\":\"Saeful.rohman@lottepkg.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0819-0600-0300\",\"label\":\"work\"}]', 921, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1496, 'Rijal', '[{\"email\":\"syahrijal.khadafi@lottepkg.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-1987-9707\",\"label\":\"work\"}]', 921, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1497, 'Panji', '[{\"email\":\"panji@lottepkg.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0851-5786-6953\",\"label\":\"work\"}]', 921, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1498, 'Yuli', '[{\"email\":\"procurement@merdekaprecision.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0859-3975-4022\",\"label\":\"work\"}]', 922, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Purchasing', 7),
(1499, 'Redi', '[{\"email\":\"redi.rubiyanto@mt-pharma-id.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0823-1122-3348\",\"label\":\"work\"}]', 923, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1500, 'Rangga', '[{\"email\":\"rangga.bainur@mt-pharma-id.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-1976-7042\",\"label\":\"work\"}]', 923, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1501, 'Saeful', '[{\"email\":\"saepul.bahri@mt-pharma-id.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0817-2331-669\",\"label\":\"work\"}]', 923, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1502, 'Muhari', '[{\"email\":\"muhari.prianto@mt-pharma-id.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-9410-1014\",\"label\":\"work\"}]', 923, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1503, 'Ivan', '[{\"email\":\"ivan.setiawan@monokem.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-1324-4121\",\"label\":\"work\"}]', 924, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1504, 'Dedi', '[{\"email\":\"dedi.sutendi@monokem.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-1230-0998\",\"label\":\"work\"}]', 924, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance Plant 1', 7),
(1505, 'Taryana', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-1406-1341\",\"label\":\"work\"}]', 924, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance Plant 2', 7),
(1506, 'Yakub', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8403-727\",\"label\":\"work\"}]', 925, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1507, 'Aris', '[{\"email\":\"admin-utility@fahrenheit.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838-1250-0444\",\"label\":\"work\"}]', 925, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1508, 'Erlan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-1055-6531\",\"label\":\"work\"}]', 925, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1509, 'Iis', '[{\"email\":\"factory-purchasing@fahrenheit.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-1206-036\",\"label\":\"work\"}]', 925, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1510, 'Devi', '[{\"email\":\"devi_sumanti@yahoo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0817-6301-030\",\"label\":\"work\"}]', 925, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1511, 'Lenny', '[{\"email\":\"purchasing-est3@evershinetex.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0896-4714-4930\",\"label\":\"work\"}]', 926, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1512, 'Mimin', '[{\"email\":\"min_prs@yahoo.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-1810-7858\",\"label\":\"work\"}]', 926, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1513, 'Irpan', '[{\"email\":\"irpan@evershinetex.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0823-1097-7858\",\"label\":\"work\"}]', 926, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1514, 'Rizal', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-1017-7528\",\"label\":\"work\"}]', 926, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance Plant 1', 7),
(1515, 'Sis', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-8989-3142\",\"label\":\"work\"}]', 926, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance Plant 2', 7),
(1516, 'Harun', '[{\"email\":\"harunmulyana75@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838-1890-8110\",\"label\":\"work\"}]', 927, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1517, 'Okta', '[{\"email\":\"purchase.saga.smi@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0898-8025-535\",\"label\":\"work\"}]', 927, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1518, 'Eddy', '[{\"email\":\"eddy.sukristiono@spernova-id.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-9782-109\",\"label\":\"work\"}]', 928, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1519, 'Dwiyanto', '[{\"email\":\"D.Dwiyanto@supernova-id.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-2171-0088\",\"label\":\"work\"}]', 928, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1520, 'Soni', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877-8498-8008\",\"label\":\"work\"}]', 928, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1521, 'Hengky', '[{\"email\":\"hengki.suseno@supernova-id.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1258-3303\",\"label\":\"work\"}]', 929, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance JB2 & JB6', 7),
(1522, 'Nyoman', '[{\"email\":\"Nyoman.Wisnawa@supernova-id.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 929, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance Ancol & Cibitung', 7),
(1523, 'Rifai', '[{\"email\":\"Moch.Rifai@supernova-id.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81586608218\",\"label\":\"work\"}]', 929, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Advisor All Plant', 7),
(1524, 'Ireneus', '[{\"email\":\"Ireneus@supernova-id.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-2940-8166\",\"label\":\"work\"}]', 929, '2025-04-18 04:41:02', '2025-04-18 04:41:02', '', 7),
(1525, 'Wawan', '[{\"email\":\"Wawan.Gunawan@supernova-id.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1363-5152\",\"label\":\"work\"}]', 929, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Purchasing', 7),
(1526, 'Jepry', '[{\"email\":\"Jepry.Heryanto@supernova-id.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8112238987\",\"label\":\"work\"}]', 929, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Purchasing', 7),
(1527, 'Nanang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8637-933\",\"label\":\"work\"}]', 929, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1528, 'Berry', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-1413-799\",\"label\":\"work\"}]', 929, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1529, 'Budi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-7572-4566\",\"label\":\"work\"}]', 930, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1530, 'Budianto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-1775-4765\",\"label\":\"work\"}]', 931, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1531, 'Daniel', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0819-3262-8739\",\"label\":\"work\"}]', 931, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1532, 'Eddy', '[{\"email\":\"ediwjt@yahoo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-8383-6995\",\"label\":\"work\"}]', 932, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1533, 'Dedi', '[{\"email\":\"Dedi.SUPARDI@danone.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-8436-0979\",\"label\":\"work\"}]', 933, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1534, 'Gozali', '[{\"email\":\"Muhammad.SHIDIK@danone.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-2548-5598\",\"label\":\"work\"}]', 933, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1535, 'Purwadi', '[{\"email\":\"purwadi.Hotman@danone.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-8632-1321\",\"label\":\"work\"}]', 933, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1536, 'Erwan', '[{\"email\":\"Erwan.SETIAWAN@danone.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-1119-310\",\"label\":\"work\"}]', 933, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Warehouse', 7),
(1537, 'Dadan', '[{\"email\":\"dadanrustiawan22@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-8135-7364\",\"label\":\"work\"}]', 934, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1538, 'Waway', '[{\"email\":\"purchasing@toyodies.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0899-6002-933\",\"label\":\"work\"}]', 934, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1539, '', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:41:02', '2025-04-18 04:41:02', '', 7),
(1540, 'Reza', '[{\"email\":\"reza.nurfauzi@angi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8126-7289\",\"label\":\"work\"}]', 935, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1541, 'Yumul', '[{\"email\":\"yumul@angi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 935, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1542, 'Suprapto', '[{\"email\":\"suprapto@angi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-9958-778\",\"label\":\"work\"}]', 935, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1543, 'Eddy', '[{\"email\":\"eddykho@bic88.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-8217-0123\",\"label\":\"work\"}]', 936, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Purchasing', 7),
(1544, 'Khun-khun', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-8368-919\",\"label\":\"work\"}]', 937, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1545, 'Dedi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-8140-159\",\"label\":\"work\"}]', 937, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Warehouse', 7),
(1546, 'Agus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-1916-498\",\"label\":\"work\"}]', 937, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1547, 'Kismanta', '[{\"email\":\"kismanta@deltapack.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-1551-3389\",\"label\":\"work\"}]', 938, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1548, 'Yunita', '[{\"email\":\"yunitayarlina@deltapack.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"056-9196-0989\",\"label\":\"work\"}]', 938, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1549, 'Nita', '[{\"email\":\"purchasing.diamasstar@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-9653-6227\",\"label\":\"work\"}]', 939, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1550, 'Bernadius', '[{\"email\":\"dlxglass@yahoo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 939, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1551, 'Deni', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81310094345\",\"label\":\"work\"}]', 939, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1552, 'Nur', '[{\"email\":\"muhamad.nur@gayamotor.astra.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1837-7952\",\"label\":\"work\"}]', 940, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1553, 'Handi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-1053-0527\",\"label\":\"work\"}]', 940, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1554, 'Agus Muchlasin', '[{\"email\":\"agus_m@kyb.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-9767-6566\",\"label\":\"work\"}]', 941, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1555, 'Daryanto', '[{\"email\":\"daryanto@kyb.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0882-1330-8368\",\"label\":\"work\"}]', 941, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1556, 'Wicak', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87855641344\",\"label\":\"work\"}]', 942, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1557, 'Basuki', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-1021-3630\",\"label\":\"work\"}]', 942, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1558, 'Alvin', '[{\"email\":\"alvin.sutarman-gp@novellpharm.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-1678-3379\",\"label\":\"work\"}]', 943, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1559, 'Subadi', '[{\"email\":\"subadi@novellpharm.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-8806-051\",\"label\":\"work\"}]', 943, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1560, 'Endang', '[{\"email\":\"endang.ruslianto@danone.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-8888-4335\",\"label\":\"work\"}]', 944, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1561, 'Heru', '[{\"email\":\"heru.budiono@danone.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0898-6295-121\",\"label\":\"work\"}]', 945, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1562, '', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 946, '2025-04-18 04:41:02', '2025-04-18 04:41:02', '', 7),
(1563, '', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:41:02', '2025-04-18 04:41:02', '', 7),
(1564, 'Indri', '[{\"email\":\"indriyatno@adis.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0859-4534-3796\",\"label\":\"work\"}]', 947, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1565, 'Muhaimin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0817-6010-684\",\"label\":\"work\"}]', 947, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1566, 'Aef', '[{\"email\":\"mochamad.saefullah@sarivita.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0859-4559-9161\",\"label\":\"work\"}]', 948, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1567, 'Aris', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0896-3614-9842\",\"label\":\"work\"}]', 948, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1568, 'Yudhi', '[{\"email\":\"purchasing@kresna.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-9921-2617\",\"label\":\"work\"}]', 949, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1569, 'Yeri', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-9500-2015\",\"label\":\"work\"}]', 949, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1570, 'Saefudin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-8683-1736\",\"label\":\"work\"}]', 950, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1571, 'Advan', '[{\"email\":\"batavia_alumindo@yahoo.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-9697-822\",\"label\":\"work\"}]', 952, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1572, 'Bani', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8736-0744\",\"label\":\"work\"}]', 952, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1573, 'Sugi', '[{\"email\":\"maintenance@biggy.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-1518-0200\",\"label\":\"work\"}]', 953, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1574, 'Adam', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0817-612-680\",\"label\":\"work\"}]', 954, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1575, 'Maya', '[{\"email\":\"purchasing.catura@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-6533-3143\",\"label\":\"work\"}]', 955, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1576, 'Andrew', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0859-7490-0538\",\"label\":\"work\"}]', 956, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1577, 'Hendang', '[{\"email\":\"hendang@canopus.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-1043-5286\",\"label\":\"work\"}]', 957, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1578, 'Ropi', '[{\"email\":\"ropi.rospitasari@canopus.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0816-1700-3009\",\"label\":\"work\"}]', 957, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1579, 'Syarif', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-2081-0379\",\"label\":\"work\"}]', 958, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1580, 'Arianto', '[{\"email\":\"tlj_teknisick@cj.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-6844-4422\",\"label\":\"work\"}]', 959, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1581, 'Firdaus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-1117-0442\",\"label\":\"work\"}]', 960, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1582, 'Wanto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"08568299337\",\"label\":\"work\"}]', NULL, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1583, 'Tri', '[{\"email\":\"purchasing@cosmomakmur.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"085777771705\",\"label\":\"work\"}]', NULL, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1584, 'Agustinus', '[{\"email\":\"tinus@precon.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 962, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1585, 'Hakim', '[{\"email\":\"nhakim@paneragroup.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81517093336\",\"label\":\"work\"}]', 963, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1586, 'Fauzi', '[{\"email\":\"ahmad.fauji@georgfischer.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-2503-5996\",\"label\":\"work\"}]', 964, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1587, 'Suharno', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-1062-063\",\"label\":\"work\"}]', 964, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1588, 'Nandar', '[{\"email\":\"nandar.setiadi@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1404-586\",\"label\":\"work\"}]', 965, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1589, 'Dea', '[{\"email\":\"hadidalbarokah@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-2311-1950\",\"label\":\"work\"}]', 966, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1590, 'Didi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852-2264-0588\",\"label\":\"work\"}]', 967, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1591, 'Surya', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852-1019-1565\",\"label\":\"work\"}]', 968, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1592, 'Archie', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-1360-1693\",\"label\":\"work\"}]', 968, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1593, 'Ten-ten', '[{\"email\":\"kezia.ten@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 968, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1594, 'Eko', '[{\"email\":\"eko@hanken.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1002-9289\",\"label\":\"work\"}]', 969, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1595, 'Dika', '[{\"email\":\"dudit@wacoal.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0895-3212-16101\",\"label\":\"work\"}]', 970, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1596, 'Fina', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0858-8838-8326\",\"label\":\"work\"}]', 971, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1597, 'Hatta', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1320-8802\",\"label\":\"work\"}]', 972, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1598, 'Atmaja', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852-1149-1343\",\"label\":\"work\"}]', 973, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1599, 'Dedi', '[{\"email\":\"dedisumantri55@yahoo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1382-0922\",\"label\":\"work\"}]', 974, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1600, 'Apri', '[{\"email\":\"purchasing.kfs@kanemory.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838-5173-5954\",\"label\":\"work\"}]', 975, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1601, 'Gabriel', '[{\"email\":\"purchasing@klipplastik.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 976, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1602, 'Sena', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-1401-4739\",\"label\":\"work\"}]', 977, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1603, 'Amri', '[{\"email\":\"amri@lasallefood.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0817-0011-166\",\"label\":\"work\"}]', 978, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1604, 'Deni', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8736-3383\",\"label\":\"work\"}]', 979, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1605, 'Suranto', '[{\"email\":\"suranto@mandiriinvestama.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-8131-3727\",\"label\":\"work\"}]', 980, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1606, 'Taryat', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1383-5552\",\"label\":\"work\"}]', 980, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1607, 'Sukri', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8227-075\",\"label\":\"work\"}]', 981, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1608, 'Rudi', '[{\"email\":\"rudi.s@maruhide.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-1144-2005\",\"label\":\"work\"}]', 982, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1609, 'Ayi', '[{\"email\":\"ayi.husen@matsuzawa.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-1283-6311\",\"label\":\"work\"}]', 983, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1610, 'Dwi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8624-3944\",\"label\":\"work\"}]', 984, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1611, 'Aris', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-9944-5254\",\"label\":\"work\"}]', 985, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1612, 'Dimas', '[{\"email\":\"dimas@molexayus.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81218129345\",\"label\":\"work\"}]', 986, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1613, 'Wisnu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8898-2605\",\"label\":\"work\"}]', 986, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1614, 'Sofyan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85956690102\",\"label\":\"work\"}]', 987, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1615, 'Setiawan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852-9805-8281\",\"label\":\"work\"}]', 988, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1616, 'Eddy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"083811225022\",\"label\":\"work\"}]', 989, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1617, 'Sigit', '[{\"email\":\"maintenance@mtin.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-8750-3625\",\"label\":\"work\"}]', 990, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1618, 'Nasir', '[{\"email\":\"s.muhamad.nasir@musashi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838-6547-9606\",\"label\":\"work\"}]', 991, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1619, 'Suwadi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852-1158-0544\",\"label\":\"work\"}]', 992, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1620, 'Ahmad', '[{\"email\":\"achmad.zakiuddin@niproindonesiajaya.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-9717-5785\",\"label\":\"work\"}]', 993, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager Maintenance', 7),
(1621, 'Mulyono', '[{\"email\":\"mulyono@niproindonesiajaya.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852-1538-4288\",\"label\":\"work\"}]', 993, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1622, 'Juanda', '[{\"email\":\"juanda@nlkindonesia.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8116-2144\",\"label\":\"work\"}]', 994, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1623, 'Mutia', '[{\"email\":\"purchasing@oneject.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0895-2331-0707\",\"label\":\"work\"}]', 995, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1624, 'Bernadus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8859-6930\",\"label\":\"work\"}]', 996, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1625, 'Tri', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-8827-3374\",\"label\":\"work\"}]', 997, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1626, 'Katma', '[{\"email\":\"katma@ottopharm.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0816-4211-969\",\"label\":\"work\"}]', 998, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager maintenance', 7),
(1627, 'Nurdin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0858-1003-5329\",\"label\":\"work\"}]', 999, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1628, 'Ramly', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8103-5906\",\"label\":\"work\"}]', 1000, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager maintenance', 7),
(1629, 'Agus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-9506-0609\",\"label\":\"work\"}]', 1001, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1630, 'Lulu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-2292-755\",\"label\":\"work\"}]', 1001, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1631, 'Satria', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-1911-1305\",\"label\":\"work\"}]', 1002, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'SPV Maintenance', 7),
(1632, 'Sururi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8122-7147\",\"label\":\"work\"}]', 1003, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1633, 'Edward', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877-7451-8794\",\"label\":\"work\"}]', 1004, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1634, 'Rizal', '[{\"email\":\"purchasing.portofood@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-9950-3249\",\"label\":\"work\"}]', 1006, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1635, 'Teguh', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-8358-8317\",\"label\":\"work\"}]', 1007, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1636, 'Tito', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0899-9276-737\",\"label\":\"work\"}]', 1008, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1637, 'Agung', '[{\"email\":\"budiagung@pt-pdp.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-1347-7928\",\"label\":\"work\"}]', NULL, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1638, 'Abdul Majid', '[{\"email\":\"abdulmajid@pt-pdp.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-3422-7201\",\"label\":\"work\"}]', NULL, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1639, 'Agus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0895-3387-78892\",\"label\":\"work\"}]', NULL, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1640, 'Alfa', '[{\"email\":\"laurensius.alfa@ras.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-2465-595\",\"label\":\"work\"}]', 1010, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1641, 'Agustian', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0815-6319-9660\",\"label\":\"work\"}]', 1011, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1642, 'Didi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-2956-9406\",\"label\":\"work\"}]', 1012, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1643, 'Sandy', '[{\"email\":\"sendiari@scg.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-9475-8631\",\"label\":\"work\"}]', 1013, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1644, '', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1014, '2025-04-18 04:41:02', '2025-04-18 04:41:02', '', 7),
(1645, '', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1015, '2025-04-18 04:41:02', '2025-04-18 04:41:02', '', 7),
(1646, 'Amir', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-7930-6877\",\"label\":\"work\"}]', 1016, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1647, '', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1017, '2025-04-18 04:41:02', '2025-04-18 04:41:02', '', 7),
(1648, 'Anggit', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877-7056-6627\",\"label\":\"work\"}]', 1018, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1649, 'Yosep', '[{\"email\":\"purchasing@syntoba.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838-7136-2095\",\"label\":\"work\"}]', 1019, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1650, 'Iqbal', '[{\"email\":\"iqbal.zulfikar@danone.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-7777-9405\",\"label\":\"work\"}]', 1020, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1651, 'Rianto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-9520-7519\",\"label\":\"work\"}]', 1021, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1652, 'Enrico', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-7698-2899\",\"label\":\"work\"}]', 1021, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager maintenance', 7),
(1653, 'Risty', '[{\"email\":\"risty.puspitasari@danone.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0817-9235-880\",\"label\":\"work\"}]', 1022, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1654, 'Ujang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-8187-709\",\"label\":\"work\"}]', 1022, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1655, 'Purba', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-8246-957\",\"label\":\"work\"}]', 1023, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1656, 'Erna', '[{\"email\":\"e.ernawati@club.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-1494-6000\",\"label\":\"work\"}]', 1024, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1657, 'Agung', '[{\"email\":\"agung.ginanjar@club.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-2827-2222\",\"label\":\"work\"}]', 1024, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1658, 'Bambang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857-1481-8564\",\"label\":\"work\"}]', 1024, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1659, 'Adit', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0856-4674-3108\",\"label\":\"work\"}]', 1025, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1660, 'Adi Tariono', '[{\"email\":\"adi.tariono@uic.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852-1393-7797\",\"label\":\"work\"}]', 1026, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1661, 'Hendrik', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0816-1302-455\",\"label\":\"work\"}]', 1026, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1662, 'Mouses', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85742148627\",\"label\":\"work\"}]', 1027, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1663, 'Sukim', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-8372-1150\",\"label\":\"work\"}]', 1028, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Maintenance', 7),
(1664, 'Sugiono', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-2409-7565\",\"label\":\"work\"}]', 1029, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Manager maintenance', 7),
(1665, 'Fitria', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852-1990-0424\",\"label\":\"work\"}]', 1030, '2025-04-18 04:41:02', '2025-04-18 04:41:02', 'Purchasing', 7),
(1666, 'Juned', '[{\"email\":\"junaedi.alhusainni@agriwangi.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"89601978811\",\"label\":\"work\"}]', 1031, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1667, 'Tresa Falentina', '[{\"email\":\"tresya.falentina@agriwangi.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"89604634375\",\"label\":\"work\"}]', 1031, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1668, 'Henri', '[{\"email\":\"Hendri <hendri.ru5@asv.ajinomoto.com>,\",\"label\":\"work\"}]', '[{\"contact_number\":\"85728719631\",\"label\":\"work\"}]', 1032, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1669, 'Rizky Dilaga', '[{\"email\":\"Rizky Dilaga <rizky.dilaga.7sx@asv.ajinomoto.com>,\",\"label\":\"work\"}]', '[{\"contact_number\":\"81282569115\",\"label\":\"work\"}]', 1032, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Purchasing', 8),
(1670, 'Billy', '[{\"email\":\"Billy Firmansyah <billy.firmansyah.hx2@asv.ajinomoto.com>,\",\"label\":\"work\"}]', '[{\"contact_number\":\"81292392023\",\"label\":\"work\"}]', 1032, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1671, 'Fajar', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1036, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Plant Manager', 8),
(1672, 'Kholi', '[{\"email\":\"kholi.ahdi@agc.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"89525088184\",\"label\":\"work\"}]', 1036, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Maintenance', 8),
(1673, 'Aulia', '[{\"email\":\"aulia.rahma@agc.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"88221292348\",\"label\":\"work\"}]', 1036, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing Project', 8),
(1674, 'Fadly', '[{\"email\":\"fadli.alrisyad@agc.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81288856882\",\"label\":\"work\"}]', 1036, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1675, 'Hermanto', '[{\"email\":\"purchasing.f.part@asietex.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81295254458\",\"label\":\"work\"}]', 1038, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1676, 'Nurul', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8156917027\",\"label\":\"work\"}]', NULL, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1677, 'Elsa Simbolon', '[{\"email\":\"elsakristinsimbolon@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85272615558\",\"label\":\"work\"}]', 1043, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1678, 'Suparno', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82193354166\",\"label\":\"work\"}]', 1043, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1679, 'Saeful', '[{\"email\":\"saiful.juhri@capcx.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"818494762\",\"label\":\"work\"}]', 1044, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1680, 'Hindri', '[{\"email\":\"Hindri.Septiani@clariant.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"89660184675\",\"label\":\"work\"}]', 1051, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1681, 'Hendy', '[{\"email\":\"hendy.purwono@clariant.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81211707114\",\"label\":\"work\"}]', 1051, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1682, 'Rida', '[{\"email\":\"rida.purchasing@duakelinci.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81938078822\",\"label\":\"work\"}]', 1052, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1683, 'Joko', '[{\"email\":\"joko@fusoh-kokan.co.jp\",\"label\":\"work\"}]', '[{\"contact_number\":\"81546505688\",\"label\":\"work\"}]', 1053, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Maintenance', 8),
(1684, 'Selamet', '[{\"email\":\"slamet_m2g@saf-indo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81310226438\",\"label\":\"work\"}]', 1057, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1685, 'Leni', '[{\"email\":\"purchasing@gosyen.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85769027073\",\"label\":\"work\"}]', 1059, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1686, 'Kusnadi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81292862716\",\"label\":\"work\"}]', 1059, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1687, 'Samsul', '[{\"value\":\"SAMSUL@GMAIL.COM\",\"label\":\"work\"}]', '[{\"value\":\"0215855538\",\"label\":\"work\"}]', 1056, '2025-04-18 04:41:57', '2025-05-13 16:17:04', 'Mgr Maintenance', 8),
(1688, 'Hanna', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87800088703\",\"label\":\"work\"}]', NULL, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1689, 'Alwan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81289060466\",\"label\":\"work\"}]', NULL, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1690, 'Yusuf', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81912531399\",\"label\":\"work\"}]', NULL, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1691, 'Edi', '[{\"email\":\"hokita@cbn.net.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"85882003382\",\"label\":\"work\"}]', 1060, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Plant Manager', 8),
(1692, 'Misi', '[{\"email\":\"misi@hokitapresisi.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"85920188037\",\"label\":\"work\"}]', 1060, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1693, 'Sandi Iman', '[{\"email\":\"sandi.iman@indomilk.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85721949980\",\"label\":\"work\"}]', 1061, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1694, 'Leo Triyana', '[{\"email\":\"leo.triyana@indopoly.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81914973445\",\"label\":\"work\"}]', 1065, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mrg Purchasing', 8),
(1695, 'Hari Hariyanto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82122511421\",\"label\":\"work\"}]', 1065, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1696, 'Haris', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8112500669\",\"label\":\"work\"}]', NULL, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1697, 'Olivia', '[{\"email\":\"jtdi.purch@taikogroup.net\",\"label\":\"work\"}]', '[{\"contact_number\":\"89608500533\",\"label\":\"work\"}]', 1067, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1698, 'Sigit', '[{\"email\":\"sigit@taikogroup.net\",\"label\":\"work\"}]', '[{\"contact_number\":\"81383470755\",\"label\":\"work\"}]', 1067, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1699, 'Asep', '[{\"email\":\"asep.risdiyan@taikogroup.net\",\"label\":\"work\"}]', '[{\"contact_number\":\"85216654592\",\"label\":\"work\"}]', 1067, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1700, 'Ilham', '[{\"email\":\"Purchasing@permatadoor.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81380190436\",\"label\":\"work\"}]', 1068, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purch Maint Mgr', 8),
(1701, 'Freddy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"816604566\",\"label\":\"work\"}]', 1069, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Direktur Purchasing', 8),
(1702, 'Tari', '[{\"email\":\"kurniaarthapratiwi@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"82120630925\",\"label\":\"work\"}]', 1069, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1703, 'Wiko', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87771622515\",\"label\":\"work\"}]', 1064, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1704, 'Sugiarto', '[{\"email\":\"sugiarto@mclassroof.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85624659569\",\"label\":\"work\"}]', 1070, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1705, 'Eko', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85890071011\",\"label\":\"work\"}]', 1070, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1706, 'Jajang', '[{\"email\":\"jajang.hamid@id.mahle.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87880179016\",\"label\":\"work\"}]', 1071, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Direktur', 8),
(1707, 'Ari Wibowo', '[{\"email\":\"ari.wibowo@mahle.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8567556725\",\"label\":\"work\"}]', 1071, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1708, 'Wulung', '[{\"email\":\"wulung.saktiaji@mahle.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8562630387\",\"label\":\"work\"}]', 1071, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1709, 'Lucy', '[{\"email\":\"luckyan.anjani@id.mahle.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85258725206\",\"label\":\"work\"}]', 1071, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1710, 'Cahaya', '[{\"email\":\"maspionkencanajkt@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"82113906322\",\"label\":\"work\"}]', 1072, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1711, 'Aries', '[{\"email\":\"aries@mataharileisure.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"89609525444\",\"label\":\"work\"}]', 1073, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1712, 'Mega Sylvana', '[{\"email\":\"purc.cbt@mayora.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81314812958\",\"label\":\"work\"}]', 1074, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1713, 'Ajat Sudrajat', '[{\"email\":\"ajat.sudrajat@mayora.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"85717278862\",\"label\":\"work\"}]', 1074, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mrg Maintenance', 8),
(1714, 'Siwi', '[{\"email\":\"maruto.siwi@mayora.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1074, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1715, 'Maman', '[{\"email\":\"suryamanm4@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8159889386\",\"label\":\"work\"}]', 1075, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1716, 'Demitra', '[{\"email\":\"medikonmail@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1075, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1717, 'Fony', '[{\"email\":\"fony.soedarmadji@medikon.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"87880825822\",\"label\":\"work\"}]', 1075, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1718, 'Clara', '[{\"email\":\"purchasing@menaraciptalabel.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81280005612\",\"label\":\"work\"}]', 1079, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1719, 'Robert', '[{\"email\":\"maintenance@menaraciptalabel.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81297592957\",\"label\":\"work\"}]', 1079, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1720, 'Sherly', '[{\"email\":\"mercuprimastf@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8211122151\",\"label\":\"work\"}]', 1080, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1721, 'Mala', '[{\"email\":\"mala@moderafurniture.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"89650456645\",\"label\":\"work\"}]', 1081, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1722, 'Margareth', '[{\"email\":\"purchasing@moderafurniture.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"811964564\",\"label\":\"work\"}]', 1081, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8);
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`) VALUES
(1723, 'Widodo', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82312706966\",\"label\":\"work\"}]', 1081, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1724, 'Ali', '[{\"email\":\"muhtomas.pt@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81210005805\",\"label\":\"work\"}]', 1083, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1725, 'Giatmi', '[{\"email\":\"giyatmi@muliagroup.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"8129101028\",\"label\":\"work\"}]', 1085, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1726, 'Kevin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8979105230\",\"label\":\"work\"}]', 1085, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1727, 'Rahmad', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81317964143\",\"label\":\"work\"}]', 1085, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Maintenance', 8),
(1728, 'Rudi Hutomo', '[{\"email\":\"rudi.utomo@muliagroup.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"87741593974\",\"label\":\"work\"}]', 1085, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Plant Manager', 8),
(1729, 'Iksan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8111505981\",\"label\":\"work\"}]', 1085, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Maintenance', 8),
(1730, 'Novi', '[{\"email\":\"novi.chrisnawanto@muliagroup.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85880888880\",\"label\":\"work\"}]', 1085, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Maintenance', 8),
(1731, 'Michael', '[{\"email\":\"michael@muliagroup.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"811135894\",\"label\":\"work\"}]', 1085, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1732, 'Krisdianto', '[{\"email\":\"krisdianto@muliagroup.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1085, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1733, 'Rahadian', '[{\"email\":\"rahadian.wisnu@muliagroup.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"87780917555\",\"label\":\"work\"}]', 1086, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1734, 'Hilda', '[{\"email\":\"nppurchasing-aurea@nipseapaint.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81318746289\",\"label\":\"work\"}]', 1087, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1735, 'Marsudi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"821240566606\",\"label\":\"work\"}]', 1087, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1736, 'Iis', '[{\"email\":\"iis-sisno@nobelcarpets.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81220723116\",\"label\":\"work\"}]', 1088, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1737, 'Hendra', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8122393485\",\"label\":\"work\"}]', 1088, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Plant Manager', 8),
(1738, 'Ribut', '[{\"email\":\"hanafit-d-2503@nsk.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85283058032\",\"label\":\"work\"}]', 1091, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1739, 'Hanafit', '[{\"email\":\"ribut-u@nsk.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85951411158\",\"label\":\"work\"}]', 1091, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1740, 'Gusli', '[{\"email\":\"gus-l@nsk.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81311477720\",\"label\":\"work\"}]', 1091, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1741, 'Suhaimin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81382521700\",\"label\":\"work\"}]', 1092, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purch Maintenance', 8),
(1742, 'Widodo', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8158856107\",\"label\":\"work\"}]', 1092, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1743, 'Lilik', '[{\"email\":\"lilik.yuliardi@pigeon.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85977819403\",\"label\":\"work\"}]', 1093, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1744, 'Rahadian', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87780917555\",\"label\":\"work\"}]', 1093, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Maintenance', 8),
(1745, 'Nova', '[{\"email\":\"nova.rosdiana@pi.pigeon.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81807008282\",\"label\":\"work\"}]', 1093, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1746, 'Topas', '[{\"email\":\"purchasing1@plasindolestari.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"8129219615\",\"label\":\"work\"}]', 1095, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1747, 'Irene', '[{\"email\":\"irene.octaviani@platinumceramics.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87786338178\",\"label\":\"work\"}]', 1102, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1748, 'Gerry', '[{\"email\":\"gerry.susanto@platinumceramics.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"82257327123\",\"label\":\"work\"}]', 1102, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1749, 'Leandro', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81916094692\",\"label\":\"work\"}]', 1102, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1750, 'Puput', '[{\"email\":\"put_ello@yahoo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85697506999\",\"label\":\"work\"}]', 1103, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Maintenance', 8),
(1751, 'Cahya', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85217382701\",\"label\":\"work\"}]', 1103, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1752, 'Lia', '[{\"email\":\"purchasingpralonkrw@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87782082618\",\"label\":\"work\"}]', 1103, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1753, 'FAjar', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85695406917\",\"label\":\"work\"}]', 1103, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ka Maintenance', 8),
(1754, 'Diki', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81321273190\",\"label\":\"work\"}]', 1104, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ka Maintenance', 8),
(1755, 'Nur', '[{\"email\":\"purchasing_bdg@primarindo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1104, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1756, 'Shandi', '[{\"email\":\"shandi.permana@enesis.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"82123262086\",\"label\":\"work\"}]', 1105, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1757, 'Ajis', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8170886008\",\"label\":\"work\"}]', 1105, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'MAintenance', 8),
(1758, 'Amir', '[{\"email\":\"srki-pur2@lyman.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"82298020288\",\"label\":\"work\"}]', 1106, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1759, 'Yoki', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81380267288\",\"label\":\"work\"}]', 1106, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ka Maintenance', 8),
(1760, 'Wijaya', '[{\"email\":\"joko.dwi-admawijaya@schneider-electric.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85228544666\",\"label\":\"work\"}]', 1107, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ka Maintenance', 8),
(1761, 'Iqbal', '[{\"email\":\"iqbalzam2@gmail.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81277238898\",\"label\":\"work\"}]', 1108, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1762, 'Tiar', '[{\"email\":\"tiar@statomer.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8568042719\",\"label\":\"work\"}]', 1108, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1763, 'Chandra Asri', '[{\"email\":\"chandra_sari@statomer.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1108, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'GM', 8),
(1764, 'Suhari', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1108, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1765, 'Adrian', '[{\"email\":\"adrian.darmasaputra@titaniumgranite.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81938108832\",\"label\":\"work\"}]', 1109, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1766, 'Puji', '[{\"email\":\"puji.prihono@toyota.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"82311568789\",\"label\":\"work\"}]', 1110, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Maintenance', 8),
(1767, 'Nova', '[{\"email\":\"nova.priyadi@toyota.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81290601393\",\"label\":\"work\"}]', 1110, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Maintenance', 8),
(1768, 'Suardi', '[{\"email\":\"suardi@toyota.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81218990747\",\"label\":\"work\"}]', 1110, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1769, 'Warih', '[{\"email\":\"warih.riyanto@toyota.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"8129960494\",\"label\":\"work\"}]', 1110, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ka Maintenance', 8),
(1770, 'Saut', '[{\"email\":\"saut@toyota.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"82110734560\",\"label\":\"work\"}]', 1110, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Utility', 8),
(1771, 'Yadi', '[{\"email\":\"yadi.setiadi@toyota.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81319537774\",\"label\":\"work\"}]', 1110, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Maintenance', 8),
(1772, 'Suroso', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8129456892\",\"label\":\"work\"}]', 1110, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Maintenance', 8),
(1773, 'Azhari', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85778766763\",\"label\":\"work\"}]', 1110, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1774, 'Suyono', '[{\"email\":\"yonos@toyota.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"82110836584\",\"label\":\"work\"}]', 1110, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1775, 'Enjang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81210289262\",\"label\":\"work\"}]', 1110, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1776, 'Anton', '[{\"email\":\"anton@trimitra-baterai.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81806090026\",\"label\":\"work\"}]', 1111, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1777, 'Suwandi', '[{\"email\":\"suwandi@trimitra-baterai.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81806090026\",\"label\":\"work\"}]', 1111, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1778, 'Lehan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85894419472\",\"label\":\"work\"}]', 1112, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1779, 'Robby', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87878751737\",\"label\":\"work\"}]', 1112, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1780, 'Adi', '[{\"email\":\"adi.prasetya@metaform.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81381045518\",\"label\":\"work\"}]', 1114, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1781, 'Anam', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81315234759\",\"label\":\"work\"}]', 1033, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1782, 'Reno', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8122260127\",\"label\":\"work\"}]', 1033, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1783, 'YUlius', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8129077205\",\"label\":\"work\"}]', 1034, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1784, 'Agus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81385403170\",\"label\":\"work\"}]', 1035, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ka Maintenance', 8),
(1785, 'Dwito', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"818764614\",\"label\":\"work\"}]', 1037, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Plant Manager', 8),
(1786, 'Arwindan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81283869012\",\"label\":\"work\"}]', 1037, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1787, 'Purbadi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81384797967\",\"label\":\"work\"}]', 1039, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1788, 'Yessi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87887947581\",\"label\":\"work\"}]', 1040, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1789, 'Doni', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1041, '2025-04-18 04:41:57', '2025-04-18 04:41:57', '', 8),
(1790, 'Iman', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81287510136\",\"label\":\"work\"}]', 1041, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1791, 'Faris', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87722096548\",\"label\":\"work\"}]', 1041, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1792, 'Agnes', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"895370019407\",\"label\":\"work\"}]', 1045, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1793, 'Endri', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82117928518\",\"label\":\"work\"}]', 1045, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1794, 'Rizal', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85297144419\",\"label\":\"work\"}]', 1046, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ka Maintenance', 8),
(1795, 'James', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8112020912\",\"label\":\"work\"}]', 1047, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Direktur', 8),
(1796, 'Ari', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"89627179882\",\"label\":\"work\"}]', 1048, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Maintenance', 8),
(1797, 'Rico', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8161304795\",\"label\":\"work\"}]', 1049, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1798, 'Wayan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81310844435\",\"label\":\"work\"}]', 1050, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ka Maintenance', 8),
(1799, 'Agung', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81382664987\",\"label\":\"work\"}]', 1054, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1800, 'Hasan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8129311438\",\"label\":\"work\"}]', 1055, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ka Maintenance', 8),
(1801, 'Adi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85223308862\",\"label\":\"work\"}]', 1058, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ka Maintenance', 8),
(1802, 'Willy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85961175222\",\"label\":\"work\"}]', 1062, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1803, 'Cece', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85810697898\",\"label\":\"work\"}]', 1063, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1804, 'Febri', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85717116940\",\"label\":\"work\"}]', 1063, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1805, 'Agus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81381092905\",\"label\":\"work\"}]', 1076, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ka Maintenance', 8),
(1806, 'Aliong', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8999897885\",\"label\":\"work\"}]', 1076, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1807, 'Kania', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81223555653\",\"label\":\"work\"}]', 1077, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1808, 'Candra', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8562139286\",\"label\":\"work\"}]', 1077, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1809, 'Nisa', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81318349805\",\"label\":\"work\"}]', 1078, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1810, 'Wahyudi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81779918896\",\"label\":\"work\"}]', 1082, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1811, 'Mario', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8998569994\",\"label\":\"work\"}]', 1084, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1812, 'Herdian', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85777810153\",\"label\":\"work\"}]', 1084, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1813, 'Hariyanto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82311018265\",\"label\":\"work\"}]', 1089, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ka Pabrik', 8),
(1814, 'Masika', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85697949070\",\"label\":\"work\"}]', 1089, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1815, 'Samsudin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8996755777\",\"label\":\"work\"}]', 1090, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Plant Manager', 8),
(1816, 'Venda', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82134146161\",\"label\":\"work\"}]', 1094, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1817, 'Mul', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8164218483\",\"label\":\"work\"}]', 1096, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Maintenance', 8),
(1818, 'Sony', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81218460604\",\"label\":\"work\"}]', 1097, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1819, 'Endi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85646282788\",\"label\":\"work\"}]', 1098, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ka Maintenance', 8),
(1820, 'Rizky', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85213419966\",\"label\":\"work\"}]', 1099, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1821, 'Nawang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81298799687\",\"label\":\"work\"}]', 1100, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1822, 'Candra', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8973505080\",\"label\":\"work\"}]', 1101, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Purchasing', 8),
(1823, 'Eeng', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85795082982\",\"label\":\"work\"}]', 1113, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1824, 'Deni Subandi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-89840418\",\"label\":\"work\"}]', 1115, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1825, 'Benyamin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-89831960\",\"label\":\"work\"}]', 1116, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Mgr Pabrik', 8),
(1826, 'Nanang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8935510\",\"label\":\"work\"}]', 1117, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Ass GM', 8),
(1827, 'Eka', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8937713\",\"label\":\"work\"}]', 1118, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1828, 'Jajang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8934010\",\"label\":\"work\"}]', 1119, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1829, 'Iman', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-89323170\",\"label\":\"work\"}]', 1120, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1830, 'Budi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-89832345\",\"label\":\"work\"}]', 1121, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1831, 'Nandar', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-87914222\",\"label\":\"work\"}]', 1122, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1832, 'Ilham', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8765105\",\"label\":\"work\"}]', 1123, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'SPV Utility', 8),
(1833, 'Tata', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-87944141\",\"label\":\"work\"}]', 1124, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1834, 'Ahmad', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8753202\",\"label\":\"work\"}]', 1125, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1835, 'M. Qosam', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-5918802\",\"label\":\"work\"}]', 1126, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1836, 'Heri', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0264-300103\",\"label\":\"work\"}]', 1127, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1837, 'Daryo', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8936250\",\"label\":\"work\"}]', 1128, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1838, 'Yuswanto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-29388588\",\"label\":\"work\"}]', 1129, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1839, 'Rudy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-29322588\",\"label\":\"work\"}]', 1130, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1840, 'Tri Yadi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-29288588\",\"label\":\"work\"}]', 1131, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1841, 'Ika', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-82601890 - 92\",\"label\":\"work\"}]', 774, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1842, 'Saparyanto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8903280 \\/ 8901345\",\"label\":\"work\"}]', 1133, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Utility', 8),
(1843, 'Pujiono', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-88333138\",\"label\":\"work\"}]', 1134, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Spv Maintenance', 8),
(1844, 'Fauzan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8970278 \\/ 77\",\"label\":\"work\"}]', 1135, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1845, 'Tio', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8970802 \\/ 01\",\"label\":\"work\"}]', 1136, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1846, 'Robby', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8844253\",\"label\":\"work\"}]', 1137, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1847, 'Deni', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8828322\",\"label\":\"work\"}]', 1138, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1848, 'Sri Karyoto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0264-351346\",\"label\":\"work\"}]', 1139, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Utility', 8),
(1849, 'Hari', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0254-480355\",\"label\":\"work\"}]', 1140, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1850, 'Yasrul', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0254-284915\",\"label\":\"work\"}]', 1141, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1851, 'Teguh', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8980461\",\"label\":\"work\"}]', 1142, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1852, 'Edi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8980003\",\"label\":\"work\"}]', 1143, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1853, 'Sigit Eko Susilo', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0254-571064\",\"label\":\"work\"}]', 1144, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1854, 'Sugi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8981414\",\"label\":\"work\"}]', 1145, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1855, 'Sururrudin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8980050\",\"label\":\"work\"}]', 1146, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1856, 'Bagus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-88986262\",\"label\":\"work\"}]', 1147, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1857, 'Mujajin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-29569741\",\"label\":\"work\"}]', 1148, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1858, 'Faiz', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-89983382\",\"label\":\"work\"}]', 1149, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1859, 'Irfan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8936578\",\"label\":\"work\"}]', 1150, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1860, 'Abdul', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8975267\",\"label\":\"work\"}]', 1151, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1861, 'Suwardi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8934953\",\"label\":\"work\"}]', 1152, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1862, 'Edi Mulyadi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8970101\",\"label\":\"work\"}]', 1153, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Facilities', 8),
(1863, 'Akbar', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0264-8302123\",\"label\":\"work\"}]', 1154, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1864, 'Handam', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-59301506\\/ 021-71550068\",\"label\":\"work\"}]', 1155, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1865, 'Mutia Rasyid', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-89982657\",\"label\":\"work\"}]', 919, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Purchasing', 8),
(1866, 'Kus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-5902018\",\"label\":\"work\"}]', 1157, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1867, 'Abdul Hamid', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"021-8854220\",\"label\":\"work\"}]', 1158, '2025-04-18 04:41:57', '2025-04-18 04:41:57', 'Maintenance', 8),
(1868, 'Bp. Johan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852 7648 7007\",\"label\":\"work\"}]', 1288, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'Asissten Direktur', 9),
(1869, 'Bp Yusuf', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857 7915 4972\",\"label\":\"work\"}]', 1288, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'Teknisi', 9),
(1870, 'Bp Agus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813 8019 4076\",\"label\":\"work\"}]', 1288, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'Kepala teknisi', 9),
(1871, 'Bp Amir', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852 1514 4457\",\"label\":\"work\"}]', 1287, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'Manager Purchasing', 9),
(1872, 'Bp Broto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813 8716 6851\",\"label\":\"work\"}]', 1287, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'Kepala teknisi', 9),
(1873, 'Ibu Rossy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0852 1910 2323\",\"label\":\"work\"}]', 1289, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'Manager Purchasing', 9),
(1874, 'Bp Bagus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821 7765 8908\",\"label\":\"work\"}]', 1289, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'Manager Teknisi', 9),
(1875, 'Bp Hanon', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877 8887 7467\",\"label\":\"work\"}]', 1290, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'Manager Purchasing', 9),
(1876, 'Bp Agus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0838 1114 3949\",\"label\":\"work\"}]', 1290, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'Teknisi', 9),
(1877, 'Ibu Yani', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0857 2694 7511\",\"label\":\"work\"}]', NULL, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'Manager Purchasing', 9),
(1878, 'Mr Yuen', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0819 3666 0261\",\"label\":\"work\"}]', NULL, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'General Manager', 9),
(1879, 'Mr Zu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813 8382 0359\",\"label\":\"work\"}]', 1294, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'Direktur', 9),
(1880, 'Ibu Elvira', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821 3011 8845\",\"label\":\"work\"}]', 1295, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'Purchasing', 9),
(1881, 'Bp Ibnu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812 9643 6133\",\"label\":\"work\"}]', NULL, '2025-04-18 04:43:28', '2025-04-18 04:43:28', 'Kepala teknisi', 9),
(1882, 'Hans GT', '[{\"email\":\"hans.hartono@gt-tires.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81546210608\",\"label\":\"work\"}]', 1298, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1883, 'Yusak GT', '[{\"email\":\"yusak.halim@gt-tires.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"89513057117\",\"label\":\"work\"}]', 1298, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(1884, 'Endi GT', '[{\"email\":\"endi.suhardi@gt-tires.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81298000266\",\"label\":\"work\"}]', 1298, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1885, 'Misar GT', '[{\"email\":\"misar@gt-tires.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"87720849971\",\"label\":\"work\"}]', 1298, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Gudang', 10),
(1886, 'Edi GT', '[{\"email\":\"Edi.suripto@gt-tires.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85285323010\",\"label\":\"work\"}]', 1298, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(1887, 'Ahok GT', '[{\"email\":\"ong.tjie.hok@gt-tires.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85882212257\",\"label\":\"work\"}]', 1298, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1888, 'Herdik GT', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81317677788\",\"label\":\"work\"}]', 1298, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1889, 'Yusron GT', '[{\"email\":\"yusrontfk@gt-tires.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81287555830\",\"label\":\"work\"}]', 1298, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Kepala Gudang', 10),
(1890, 'Sugeng GT', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"895334779276\",\"label\":\"work\"}]', 1298, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User Plant B', 10),
(1891, 'Sagimin GT', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81298109099\",\"label\":\"work\"}]', 1298, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User Plant A', 10),
(1892, 'Ivan GT', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85714669665\",\"label\":\"work\"}]', 1298, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User Plant D', 10),
(1893, 'Afif GT', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81281057868\",\"label\":\"work\"}]', 1298, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User PLant G', 10),
(1894, 'Ade Indorama Polymer', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81383010049\",\"label\":\"work\"}]', 1300, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1895, 'Dwi Indorama Polymer', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82112446788\",\"label\":\"work\"}]', 1300, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1896, 'Aristian Indorama Polymer', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87838688763\",\"label\":\"work\"}]', 1300, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing lokal', 10),
(1897, 'Surya Kadota', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85719004330\",\"label\":\"work\"}]', 1301, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Direktur', 10),
(1898, 'Siti Kadota', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81313904536\",\"label\":\"work\"}]', 1301, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1899, 'Cece Kadota', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85213661328\",\"label\":\"work\"}]', 1301, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1900, 'Nono Kadota', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81383732489\",\"label\":\"work\"}]', 1301, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1901, 'Yacobus Sarana', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81322010728\",\"label\":\"work\"}]', 1302, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(1902, 'Jansen Sarana', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81395206785\",\"label\":\"work\"}]', 1302, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1903, 'Agus Susanto SMU', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8118384002\",\"label\":\"work\"}]', 1303, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1904, 'Daman SMU', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"813998186429\",\"label\":\"work\"}]', 1303, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(1905, 'Iddo SMU', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82221680221\",\"label\":\"work\"}]', 1303, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1906, 'Apandi Suzuki', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1304, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1907, 'Agus Suzuki', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8128329159\",\"label\":\"work\"}]', 1304, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Gudang', 10),
(1908, 'Angel Suzuki', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8569905318\",\"label\":\"work\"}]', 1304, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1909, 'Yosia IPPI', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8179800366\",\"label\":\"work\"}]', 1305, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1910, 'Sidik IPPI', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"83867875765\",\"label\":\"work\"}]', 1305, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1911, 'Fauzan IPPI', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81314234242\",\"label\":\"work\"}]', 1305, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(1912, 'Jono IPPI', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81311869468\",\"label\":\"work\"}]', 1305, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1913, 'Dedi IPPI', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81381315669\",\"label\":\"work\"}]', 1305, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1914, 'Cipto Pindo 1', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"88211334947\",\"label\":\"work\"}]', 1306, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1915, 'Sanudin Pindo 1', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81260064852\",\"label\":\"work\"}]', 1306, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1916, 'Wahyu Pindo 1', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8818199424\",\"label\":\"work\"}]', 1306, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1917, 'Micheal Pindo 1', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81807471481\",\"label\":\"work\"}]', 1307, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1918, 'David Pindo 1', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8888600605\",\"label\":\"work\"}]', 1307, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(1919, 'Sukari Pindo 1', '[{\"email\":\"sukari_sukari@app.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"81299522083\",\"label\":\"work\"}]', 1307, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(1920, 'Sapri Pindo 1', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81314832831\",\"label\":\"work\"}]', 1309, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1921, 'Ruli Pindo 1', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85643386004\",\"label\":\"work\"}]', 1309, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1922, 'Juliston Pindo 2', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81218970825\",\"label\":\"work\"}]', 1310, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(1923, 'Dede Pindo 2', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"83857225363\",\"label\":\"work\"}]', 1310, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1924, 'Bariq Pindo 2', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82149480713\",\"label\":\"work\"}]', 1310, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1925, 'Mamat Pindo 2', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85218319335\",\"label\":\"work\"}]', 1311, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1926, 'Rahmat Pindo 2', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8561666419\",\"label\":\"work\"}]', 1311, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1927, 'Indah Pindo 2', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81297982720\",\"label\":\"work\"}]', 1311, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1928, 'Jefry Pindo 2', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81314878264\",\"label\":\"work\"}]', 1311, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1929, 'Aditya Pindo 2', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87776999326\",\"label\":\"work\"}]', 1311, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1930, 'Sanggam Pindo 2', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8811683049\",\"label\":\"work\"}]', 1312, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1931, 'Huyung Pindo 2', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8128573492\",\"label\":\"work\"}]', 1312, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(1932, 'Hendri Pindo 2', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8111208577\",\"label\":\"work\"}]', 1311, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(1933, 'Sugiarto Semen', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81217246127\",\"label\":\"work\"}]', 1313, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(1934, 'Dhani Semen', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85649811881\",\"label\":\"work\"}]', 1313, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(1935, 'Setyawan Semen', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8123419840\",\"label\":\"work\"}]', 1313, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(1936, 'Dedi Semen', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82332867005\",\"label\":\"work\"}]', 1313, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Gudang', 10),
(1937, 'Yudi Semen', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8123435395\",\"label\":\"work\"}]', 1313, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1938, 'Arnaz Semen', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8123405696\",\"label\":\"work\"}]', 1313, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1939, 'Fitri Semen', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82232700022\",\"label\":\"work\"}]', 1313, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1940, 'Suwito Semen', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81319821977\",\"label\":\"work\"}]', 1313, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1941, 'Fera Semen', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8563576348\",\"label\":\"work\"}]', 1313, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1942, 'Hariadi PADI', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81222270934\",\"label\":\"work\"}]', 1313, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Pengadaan Padi', 10),
(1943, 'Angga PADI', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81213537205\",\"label\":\"work\"}]', 1313, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Pengadaan Padi', 10),
(1944, 'Maya Semen', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81132296900\",\"label\":\"work\"}]', 1313, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Verifikasi', 10),
(1945, 'Surachmad Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81230167444\",\"label\":\"work\"}]', 1314, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Kepala Security', 10),
(1946, 'Hanif Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82140363330\",\"label\":\"work\"}]', 1314, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1947, 'Dimas Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81311055593\",\"label\":\"work\"}]', 1314, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Pengadaan Project', 10),
(1948, 'Yoga Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82131608555\",\"label\":\"work\"}]', 1314, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1949, 'Bapak Adi Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87822504013\",\"label\":\"work\"}]', 1314, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(1950, 'Warsani Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81456132670\",\"label\":\"work\"}]', 1314, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Gudang', 10),
(1951, 'Siamudin Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85647825006\",\"label\":\"work\"}]', 1315, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1952, 'Niko Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81568465882\",\"label\":\"work\"}]', 1315, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Gudang', 10),
(1953, 'Bapak Darud Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81319217050\",\"label\":\"work\"}]', 1316, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Project', 10),
(1954, 'Tatang Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8128362375\",\"label\":\"work\"}]', 1316, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1955, 'Jay Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81311415771\",\"label\":\"work\"}]', 1316, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1956, 'Tri Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81229772883\",\"label\":\"work\"}]', 1316, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1957, 'Siwi Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82134002024\",\"label\":\"work\"}]', 1316, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1958, 'Nia Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81332085233\",\"label\":\"work\"}]', 1316, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1959, 'Beny Solusi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81310105876\",\"label\":\"work\"}]', 1316, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Gudang', 10),
(1960, 'Nurrochman', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82113027893\",\"label\":\"work\"}]', 1316, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1961, 'Arif IKPP', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82213096516\",\"label\":\"work\"}]', 1317, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1962, 'Tommi IKPP', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81284009651\",\"label\":\"work\"}]', 1317, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1963, 'Bambang IKPP', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8815624389\",\"label\":\"work\"}]', 1317, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'SPV Maintenance', 10),
(1964, 'Gilang IKPP', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87871265076\",\"label\":\"work\"}]', 1317, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Instrument', 10),
(1965, 'Anik IKPP', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8815622964\",\"label\":\"work\"}]', 1317, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1966, 'Angelina IKPP', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81281735823\",\"label\":\"work\"}]', 1317, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1967, 'Agus IKPP', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8164618913\",\"label\":\"work\"}]', 1317, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1968, 'Sugeng Tjiwi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8814391128\",\"label\":\"work\"}]', 1318, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(1969, 'Ajeng Tjiwi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81217642244\",\"label\":\"work\"}]', 1318, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1970, 'Mayang Tjiwi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"89612767823\",\"label\":\"work\"}]', 1318, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1971, 'Lukman Tjiwi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81347134259\",\"label\":\"work\"}]', 1318, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(1972, 'Candra Tjiwi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81332794690\",\"label\":\"work\"}]', 1318, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1973, 'Hadi Tjiwi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8814300536\",\"label\":\"work\"}]', 1318, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Admin', 10),
(1974, 'Mahfudi Tjiwi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82133907000\",\"label\":\"work\"}]', 1318, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1975, 'Indratin Tjwi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8814304712\",\"label\":\"work\"}]', 1318, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Gudang', 10),
(1976, 'Titin Nagasakti', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"89682776991\",\"label\":\"work\"}]', 1319, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10);
INSERT INTO `persons` (`id`, `name`, `emails`, `contact_numbers`, `organization_id`, `created_at`, `updated_at`, `job_title`, `user_id`) VALUES
(1977, 'Dede Nagasakti', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8122016488\",\"label\":\"work\"}]', 1319, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Kabag Utility', 10),
(1978, 'Edwin MIM', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8567652740\",\"label\":\"work\"}]', 1320, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(1979, 'Kris MIM', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81289675595\",\"label\":\"work\"}]', 1320, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1980, 'Dika MIM', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82258419099\",\"label\":\"work\"}]', 1320, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1981, 'Eka MIM', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82113825757\",\"label\":\"work\"}]', 1320, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1982, 'Aris MIM', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81288102438\",\"label\":\"work\"}]', 1320, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(1983, 'Ratno MIM', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8561747574\",\"label\":\"work\"}]', 1320, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(1984, 'Sohar GT', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87883985671\",\"label\":\"work\"}]', 1321, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(1985, 'Rofii GT', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81385435532\",\"label\":\"work\"}]', 1321, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1986, 'Aric GT', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82110045876\",\"label\":\"work\"}]', 1321, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1987, 'Yoso Chuhatsu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82213234799\",\"label\":\"work\"}]', 1322, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(1988, 'Bowo Chuhatsu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81282104420\",\"label\":\"work\"}]', 1322, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Utility', 10),
(1989, 'Juwita Chuhatsu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"89605390560\",\"label\":\"work\"}]', 1322, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1990, 'Tahyar JJSM', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81394422232\",\"label\":\"work\"}]', 1323, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1991, 'Icha JJSM', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85155175022\",\"label\":\"work\"}]', 1323, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1992, 'Danang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8994297085\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(1993, 'Syarif', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85721166414\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1994, 'Asep', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81295236997\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1995, 'Lukman I3', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81285120954\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(1996, 'Sugiarso I3', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87777255526\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(1997, 'Ria I3', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81213074177\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(1998, 'Akhlis Kudos', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81805947088\",\"label\":\"work\"}]', 1326, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(1999, 'Matias Kudos', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85726974777\",\"label\":\"work\"}]', 1326, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Direktur', 10),
(2000, 'Ridho Kudos', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82332974169\",\"label\":\"work\"}]', 1326, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2001, 'Ilham', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85782161050\",\"label\":\"work\"}]', 1327, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2002, 'Fajar Firmanysah', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81289624240\",\"label\":\"work\"}]', 1328, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Kepala project', 10),
(2003, 'Tin KF', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85780687303\",\"label\":\"work\"}]', 1328, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2004, 'Ridwan KF', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85720330825\",\"label\":\"work\"}]', 1328, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(2005, 'Dino KF', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8161341748\",\"label\":\"work\"}]', 1328, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2006, 'Rani KF', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"83822779817\",\"label\":\"work\"}]', 1328, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2007, 'Fitya KF', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8157146925\",\"label\":\"work\"}]', 1328, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Keuangan', 10),
(2008, 'Salomo TSG', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85778750500\",\"label\":\"work\"}]', 1329, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2009, 'Rahmi TSG', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82114071140\",\"label\":\"work\"}]', 1329, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2010, 'Ahmad TSG', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81703041265\",\"label\":\"work\"}]', 1329, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(2011, 'Ida TSG', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"89509475637\",\"label\":\"work\"}]', 1329, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2012, 'Rahmat', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81349264965\",\"label\":\"work\"}]', 1330, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2013, 'Daryanto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81311411117\",\"label\":\"work\"}]', 1330, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2014, 'Marully', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8119308114\",\"label\":\"work\"}]', 1331, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2015, 'Basuki', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"89525406625\",\"label\":\"work\"}]', 1331, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Admin', 10),
(2016, 'Pingi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8982940859\",\"label\":\"work\"}]', 1331, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(2017, 'Surohman', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"89636863535\",\"label\":\"work\"}]', 1332, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2018, 'Mario', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8811683316\",\"label\":\"work\"}]', 1332, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2019, 'Rizky', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81387499543\",\"label\":\"work\"}]', 1333, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2020, 'Sri Widodo', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8121905131\",\"label\":\"work\"}]', 1333, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2021, 'Esty', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1333, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Keuangan', 10),
(2022, 'Agus Paramitra', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8992338594\",\"label\":\"work\"}]', 1334, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(2023, 'Rangga Paramitra', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82123553283\",\"label\":\"work\"}]', 1334, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2024, 'Rita Paramitra', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"895374406725\",\"label\":\"work\"}]', 1334, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2025, 'Susandy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"89510117392\",\"label\":\"work\"}]', 1335, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2026, 'Fendi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82365807877\",\"label\":\"work\"}]', 1336, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2027, 'Billy', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"811745647\",\"label\":\"work\"}]', 1337, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2028, 'Sugianto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0742-51051\",\"label\":\"work\"}]', 1337, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2029, 'Sabat', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81223302604\",\"label\":\"work\"}]', 1338, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(2030, 'Yoga Givaudan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82220940470\",\"label\":\"work\"}]', 1338, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(2031, 'Aang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81319102805\",\"label\":\"work\"}]', 1338, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Utility', 10),
(2032, 'Nurhadi BMJ', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85692937616\",\"label\":\"work\"}]', 1339, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Utility', 10),
(2033, 'Thomas BMJ', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8129399481\",\"label\":\"work\"}]', 1339, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2034, 'Narto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87885077236\",\"label\":\"work\"}]', 1340, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2035, 'Tirsone', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85288341806\",\"label\":\"work\"}]', 1340, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2036, 'Jerry', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82111447108\",\"label\":\"work\"}]', 1341, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2037, 'Taufan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81218525259\",\"label\":\"work\"}]', 1341, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2038, 'Dzaki', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81299610278\",\"label\":\"work\"}]', 1341, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2039, 'Agrianna', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82218305431\",\"label\":\"work\"}]', 1342, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2040, 'Elan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81320012855\",\"label\":\"work\"}]', 1342, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2041, 'Lucky Gunawan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"811228181\",\"label\":\"work\"}]', 1343, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Owner', 10),
(2042, 'Dian', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8121398999\",\"label\":\"work\"}]', 1344, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2043, 'Ikhsan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"817433104\",\"label\":\"work\"}]', 1344, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Plant', 10),
(2044, 'Joice', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87808781668\",\"label\":\"work\"}]', 1344, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2045, 'Ratna Triman', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87821670868\",\"label\":\"work\"}]', 1344, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2046, 'Ujang Triman', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81321839859\",\"label\":\"work\"}]', 1344, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Produksi', 10),
(2047, 'Sandi Solas', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81220788833\",\"label\":\"work\"}]', 1345, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Direktur', 10),
(2048, 'Jamal Solas', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"895328767585\",\"label\":\"work\"}]', 1345, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2049, 'Ghani Solas', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8113551626\",\"label\":\"work\"}]', 1345, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Produksi', 10),
(2050, 'Dewi Solas', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81322006897\",\"label\":\"work\"}]', 1345, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2051, 'Iing', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"811868591\",\"label\":\"work\"}]', 1346, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Direktur', 10),
(2052, 'Fauzi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8129021649\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2053, 'Dewi Hermed', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81319413255\",\"label\":\"work\"}]', 1346, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2054, 'Swarsono', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81318877188\",\"label\":\"work\"}]', 1347, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2055, 'Suwidyno', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81220858354\",\"label\":\"work\"}]', 1347, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2056, 'Rilo', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"895367533111\",\"label\":\"work\"}]', 1348, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(2057, 'Vivi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81222564748\",\"label\":\"work\"}]', 1348, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2058, 'Adi Trifa', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81221136893\",\"label\":\"work\"}]', 1349, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Utility', 10),
(2059, 'Sonia', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81563877573\",\"label\":\"work\"}]', 1349, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2060, 'Manto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81385923741\",\"label\":\"work\"}]', 1350, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2061, 'Tyas', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81386670550\",\"label\":\"work\"}]', 1350, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2062, 'Purnomo', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8161920937\",\"label\":\"work\"}]', 1351, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2063, 'Tuti', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1352, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'SC Department', 10),
(2064, 'Harsono', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81210006878\",\"label\":\"work\"}]', 1353, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(2065, 'Supri', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81382006212\",\"label\":\"work\"}]', 1353, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(2066, 'Margo', '[{\"email\":\"purchase11@vinilon.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85780184254\",\"label\":\"work\"}]', 1353, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2067, 'Selvi', '[{\"email\":\"selvi.s@vinilon.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81219862262\",\"label\":\"work\"}]', 1353, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2068, 'Vincent', '[{\"email\":\"vincent.sutanto@vinilon.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85697272120\",\"label\":\"work\"}]', 1353, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2069, 'Tedi', '[{\"email\":\"tedy_gunawan@sanbe-farma.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"81570721809\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(2070, 'Yudi Sanbe', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"89655151561\",\"label\":\"work\"}]', 1356, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(2071, 'Kansha', '[{\"email\":\"eps5@sanbe-farma.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"85659367779\",\"label\":\"work\"}]', 1357, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2072, 'Martine', '[{\"email\":\"marthien_p@sanbe-farma.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8172350677\",\"label\":\"work\"}]', 1357, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2073, 'Wisnu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81372405197\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'SPV Utility', 10),
(2074, 'Ridwan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81297163329\",\"label\":\"work\"}]', 1358, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Utility', 10),
(2075, 'Eka', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1359, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2076, 'Azizil', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85203483347\",\"label\":\"work\"}]', 1360, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2077, 'Raswan', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81315746953\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2078, 'Suharto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1362, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2079, 'Jamal Berkah', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"87822760357\",\"label\":\"work\"}]', 1363, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2080, 'Gunandi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8128463329\",\"label\":\"work\"}]', 1364, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2081, 'Wardoyo', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82111098423\",\"label\":\"work\"}]', 1365, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2082, 'Edi Indorama', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81997545984\",\"label\":\"work\"}]', 1366, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2083, 'Lesti', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85692456007\",\"label\":\"work\"}]', 1366, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2084, 'Aris Sipatex', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85795031797\",\"label\":\"work\"}]', 1367, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2085, 'Ucok', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81280618640\",\"label\":\"work\"}]', 1368, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2086, 'Marco', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81367113312\",\"label\":\"work\"}]', 1368, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2087, 'Merry', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8122119110\",\"label\":\"work\"}]', 1369, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2088, 'Eko Almasindo', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82125557908\",\"label\":\"work\"}]', 1369, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2089, 'Yogi Bayer', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85274680550\",\"label\":\"work\"}]', 1370, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2090, 'Heri Bayer', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82123169122\",\"label\":\"work\"}]', 1370, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2091, 'Triyono', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81296308764\",\"label\":\"work\"}]', 1371, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'SPV Maintenance', 10),
(2092, 'Enggal', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82247080182\",\"label\":\"work\"}]', 1371, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2093, 'Samiran', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81315830346\",\"label\":\"work\"}]', 1372, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2094, 'Dede Pinguin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85219381922\",\"label\":\"work\"}]', 1373, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2095, 'Erna', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82249877775\",\"label\":\"work\"}]', 1373, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2096, 'Mansyur', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81385677504\",\"label\":\"work\"}]', 1374, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2097, 'Agus Joenoes', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81311392819\",\"label\":\"work\"}]', 1375, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2098, 'Ivo', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"816108327\",\"label\":\"work\"}]', 1376, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Direktur', 10),
(2099, 'Novi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"89668933510\",\"label\":\"work\"}]', 1376, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Purchasing', 10),
(2100, 'Triadi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8128373067\",\"label\":\"work\"}]', 1376, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2101, 'Meliana', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8111452735\",\"label\":\"work\"}]', 1376, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2102, 'Nasir', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85286787012\",\"label\":\"work\"}]', 1377, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2103, 'Hendi Beta', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85718806410\",\"label\":\"work\"}]', 1378, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Maintenance', 10),
(2104, 'Hartono', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8561744532\",\"label\":\"work\"}]', 1379, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2105, 'Bernard', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"8568937089\",\"label\":\"work\"}]', 1380, '2025-04-18 04:44:20', '2025-04-18 04:44:20', '', 10),
(2106, 'Asep', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', 1381, '2025-04-18 04:44:20', '2025-04-18 04:44:20', '', 10),
(2107, 'Deni', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81289843562\",\"label\":\"work\"}]', 1382, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Manager Utility', 10),
(2108, 'Agus Lucas', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-2230-895\",\"label\":\"work\"}]', 1383, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2109, 'Erwin Gracia', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0813-2232-1792\",\"label\":\"work\"}]', 1384, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Plant Manager', 10),
(2110, 'Yosep', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0812-2100-4720\",\"label\":\"work\"}]', 1384, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Utility', 10),
(2111, 'Satya', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0877-6073-6732\",\"label\":\"work\"}]', 1385, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Utility', 10),
(2112, 'Ayi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0888-0940-3511\",\"label\":\"work\"}]', 1386, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Maintenance', 10),
(2113, 'Stevanus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0895-4161-80095\",\"label\":\"work\"}]', 1386, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2114, 'Bagas', '[{\"email\":\"bagas.prakosa@vinilonjayasakti.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0822-3311-0725\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Purchasing', 10),
(2115, 'Alwi', '[{\"email\":\"engineering@meprofram.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"0878-2554-2424\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Plant Manager', 10),
(2116, 'Agus Meprofram', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0821-2083-5622\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'User', 10),
(2117, 'Hendi Meprofram', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"0811-2032-144\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Direktur', 10),
(2118, 'Agung', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"\",\"label\":\"work\"}]', NULL, '2025-04-18 04:44:20', '2025-04-18 04:44:20', 'Plant Manager', 10),
(2119, 'pak totok', '[{\"email\":\"hayu_wijayanto@suwastama.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"813903000\",\"label\":\"work\"}]', 1494, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2120, 'pak ratno', '[{\"email\":\"puchasing@indoveneer.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8112576620\",\"label\":\"work\"}]', 1495, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'tehnisi', 11),
(2121, 'Bu Pertiwi', '[{\"email\":\"innanacct@yahoo.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"O82135802166\",\"label\":\"work\"}]', 1496, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2122, 'pak victor', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"82136997228\",\"label\":\"work\"}]', 1497, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2123, 'pak dwi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"81578032797\",\"label\":\"work\"}]', 1498, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'tehnisi', 11),
(2124, 'Pak wewe', '[{\"email\":\"djitoe@indo.net.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"8122580071\",\"label\":\"work\"}]', 1499, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2125, 'pak ramies', '[{\"email\":\"purchas@kiky.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8179456160\",\"label\":\"work\"}]', 1500, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2126, 'pak agung', '[{\"email\":\"agung.hermawanto@mkb.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"82136524350\",\"label\":\"work\"}]', 1501, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2127, 'pak taufik', '[{\"email\":\"bhakti.adm@bhaktinusa.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"8978011820\",\"label\":\"work\"}]', 1502, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2128, 'bu agnes', '[{\"email\":\"agnes.faningsih@ara-shoes.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"85640390146\",\"label\":\"work\"}]', 1503, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2129, 'Pak Chrisan', '[{\"email\":\"chrissyan.febriand@aibm.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"856416301173\",\"label\":\"work\"}]', 1504, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2130, 'pak bobi', '[{\"email\":\"purchasing@grahafarma.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"O82227772344\",\"label\":\"work\"}]', 1505, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2131, 'Bu Luki', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O8784645356\",\"label\":\"work\"}]', 1506, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2132, 'Pak Resi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O8157913981\",\"label\":\"work\"}]', 1507, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2133, 'Pak Deni', '[{\"email\":\"purchasing@indosakuraindah.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"O81228108332\",\"label\":\"work\"}]', 1508, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2134, 'Pak Bayu', '[{\"email\":\"bayu_w@konimex.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"O81397164968\",\"label\":\"work\"}]', NULL, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2135, 'Pak Wahyu', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O8784645356\",\"label\":\"work\"}]', 1509, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2136, 'Bu Santi', '[{\"email\":\"purchase@acidatama.co.id\",\"label\":\"work\"}]', '[{\"contact_number\":\"O8164276877\",\"label\":\"work\"}]', 1510, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2137, 'Bu Cyntia', '[{\"email\":\"cyntia.nathania@danliris.com\",\"label\":\"work\"}]', '[{\"contact_number\":\"O87836587651\",\"label\":\"work\"}]', 1511, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2138, 'Pak Giono', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O85226448222\",\"label\":\"work\"}]', 1512, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'tehnisi', 11),
(2139, 'Pak Ari', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O81329687174\",\"label\":\"work\"}]', 1513, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'tehnisi', 11),
(2140, 'Pak Agus', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O85867086706\",\"label\":\"work\"}]', 1514, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2141, 'Bu Nurvita', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O8785929440\",\"label\":\"work\"}]', 1515, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2142, 'Pak Rudi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O82225224190\",\"label\":\"work\"}]', 1516, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2143, 'Bu Lisa', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O82136580038\",\"label\":\"work\"}]', 1517, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2144, 'Pak Herwin', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"85725588114\",\"label\":\"work\"}]', 1518, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2145, 'Pak Antok', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O85801035755\",\"label\":\"work\"}]', 1519, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2146, 'Pak Yosua', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O81902405602\",\"label\":\"work\"}]', 1520, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2147, 'Bu Neny', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O82224676589\",\"label\":\"work\"}]', 1521, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2148, 'Pak Bambang', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O81326461839\",\"label\":\"work\"}]', 1522, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2149, 'Pak Paryanto', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O82214305808\",\"label\":\"work\"}]', 1523, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2150, 'Bu Tina', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O81329545375\",\"label\":\"work\"}]', 1524, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2151, 'Pak Dwi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O89766378458\",\"label\":\"work\"}]', 1525, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2152, 'Pak Yusak', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O8122634180\",\"label\":\"work\"}]', 1526, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2153, 'Pak Fendi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O81329241268\",\"label\":\"work\"}]', NULL, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2154, 'Bu Anggi', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O8995848477\",\"label\":\"work\"}]', NULL, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'purchashing', 11),
(2155, 'Pak Suharso', '[{\"email\":\"\",\"label\":\"work\"}]', '[{\"contact_number\":\"O81328813011\",\"label\":\"work\"}]', NULL, '2025-04-18 04:45:13', '2025-04-18 04:45:13', 'manager engineer', 11),
(2156, 'Basuki', '[{\"value\":\"basuki@cba.com\",\"label\":\"work\"}]', '[{\"value\":\"\",\"label\":\"work\"}]', 840, '2025-05-08 10:56:06', '2025-05-08 10:56:06', NULL, NULL),
(2157, 'ruli', '[{\"value\":\"rullian@semengaruda.com\",\"label\":\"work\"}]', '[{\"value\":\"\",\"label\":\"work\"}]', 824, '2025-05-08 17:06:43', '2025-05-08 17:06:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `person_activities`
--

CREATE TABLE `person_activities` (
  `activity_id` int UNSIGNED NOT NULL,
  `person_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `person_activities`
--

INSERT INTO `person_activities` (`activity_id`, `person_id`) VALUES
(108, 2156),
(109, 2156),
(110, 2156),
(111, 2156),
(112, 2156),
(123, 2157),
(124, 2157),
(125, 2157),
(126, 2157),
(127, 2157),
(138, 1687),
(139, 1687),
(140, 1687),
(141, 1687);

-- --------------------------------------------------------

--
-- Struktur dari tabel `person_tags`
--

CREATE TABLE `person_tags` (
  `tag_id` int UNSIGNED NOT NULL,
  `person_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_part_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `ref_part_number`, `category`, `description`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(130, 'SKU', '100013', '02250046-013', 'Air Filter Secondary', '-', 0, NULL, NULL, NULL),
(131, 'SKU', '100023', '2213-0223', 'Air Filter', '-', 0, NULL, NULL, NULL),
(132, 'SKU', '100044', 'IHI CQ51F1L044D2', 'Air Filter', '-', 0, NULL, NULL, NULL),
(133, 'SKU', '100053', '02250168-053', 'Air Filter', '-', 0, NULL, NULL, NULL),
(134, 'SKU', '100111', '88290003-111', 'Air Filter', '-', 0, NULL, NULL, NULL),
(135, 'SKU', '100149', '02250135-149 =  250007-838', 'Air Filter', '-', 0, NULL, NULL, NULL),
(136, 'SKU', '100371', '02250125-371', 'Air Filter', '-', 0, NULL, NULL, NULL),
(137, 'SKU', '100372', '02250125-372', 'Air Filter', '-', 0, NULL, NULL, NULL),
(138, 'SKU', '100462', '48462', 'Air Filter', '-', 0, NULL, NULL, NULL),
(139, 'SKU', '100463', '48463', 'Air Filter', '-', 0, NULL, NULL, NULL),
(140, 'SKU', '100731', '02250145-731', 'Air Filter Primary', '-', 0, NULL, NULL, NULL),
(141, 'SKU', '104034', '250024-034', 'Air Filter', '-', 0, NULL, NULL, NULL),
(142, 'SKU', '104338', '88290002-338', 'Air Filter', '-', 0, NULL, NULL, NULL),
(143, 'SKU', '104375', '02250125-375', 'Air Filter', '-', 0, NULL, NULL, NULL),
(144, 'SKU', '104420', '02250087-420', 'Air Filter', '-', 0, NULL, NULL, NULL),
(145, 'SKU', '104498', '02250131-498', 'Air Filter', '-', 0, NULL, NULL, NULL),
(146, 'SKU', '104684', '02250127-684', 'Air Filter', '-', 0, NULL, NULL, NULL),
(147, 'SKU', '104899', '040899 / 40899', 'Air Filter', '-', 0, NULL, NULL, NULL),
(148, 'SKU', '105204', '88292001-204', 'Air Filter', '-', 0, NULL, NULL, NULL),
(149, 'SKU', '105486', '88290014-486', 'Air Filter', '-', 0, NULL, NULL, NULL),
(150, 'SKU', '106503', '5232-2330 = 5903-1170 = SCE 05-503', 'Air Filter', '-', 0, NULL, NULL, NULL),
(151, 'SKU', '1001049', 'C 1049', 'Air Filter', '-', 0, NULL, NULL, NULL),
(152, 'SKU', '1001112', '569726200 = C 1112', 'Air Filter', '-', 0, NULL, NULL, NULL),
(153, 'SKU', '1001132', '2255300187 = 589000901 = 98262-81 = C 1132', 'Air Filter', '-', 0, NULL, NULL, NULL),
(154, 'SKU', '1001140', '1613-9001-00 = 569000301 = 22173538 = 68524775 = C 1140 = A35-3211410079A', 'Air Filter', '-', 0, NULL, NULL, NULL),
(155, 'SKU', '1001213', 'C 1213', 'Air Filter', '-', 0, NULL, NULL, NULL),
(156, 'SKU', '1001250', '1613-8720-00 = 569006101 = 88226220 = 76288 = C 1250', 'Air Filter', '-', 0, NULL, NULL, NULL),
(157, 'SKU', '1001360', 'C 1360', 'Air Filter', '-', 0, NULL, NULL, NULL),
(158, 'SKU', '1001389', '1621-1389-00', 'Air Filter', '-', 0, NULL, NULL, NULL),
(159, 'SKU', '1001450', '1619-1269-00 = 2903-1012-00 = 93603413 = C 1450', 'Air Filter', '-', 0, NULL, NULL, NULL),
(160, 'SKU', '1001469', '88290001-469', 'Air Filter', '-', 0, NULL, NULL, NULL),
(161, 'SKU', '1001574', '10683506 = C 1574', 'Air Filter', '-', 0, NULL, NULL, NULL),
(162, 'SKU', '1005107', '1621-5107-00 = 23487465 = C 281440', 'Air Filter', '-', 0, NULL, NULL, NULL),
(163, 'SKU', '1006016', 'CR 21G30336', 'Air Filter', '-', 0, NULL, NULL, NULL),
(164, 'SKU', '1006684', '2914-9302-00 = 1622-0171-00 = 569003401 = 22295794 = C 14200', 'Air Filter', '-', 0, NULL, NULL, NULL),
(165, 'SKU', '1006861', '1621-0546-00 = 1621-0546-99 = 1621-0094-00 = 1621-5743-00 = C 402070', 'Air Filter', '-', 0, NULL, NULL, NULL),
(166, 'SKU', '1006910', '1310-0387-50 = 2116701', 'Air Filter', '-', 0, NULL, NULL, NULL),
(167, 'SKU', '1006929', '250007-839', 'Air Filter', '-', 0, NULL, NULL, NULL),
(168, 'SKU', '1007108', '1622-1855-00-01 = 1631-0435-00', 'Air Filter', '-', 0, NULL, NULL, NULL),
(169, 'SKU', '1007127', '1621-7376-00 = 1630-0408-00', 'Air Filter', '-', 0, NULL, NULL, NULL),
(170, 'SKU', '1011134', '6.2003.0 = C 1134', 'Air Filter', '-', 0, NULL, NULL, NULL),
(171, 'SKU', '1011369', '6.2055.0 = C 1369', 'Air Filter', '-', 0, NULL, NULL, NULL),
(172, 'SKU', '1014139', '6.4139.0', 'Air Filter', '-', 0, NULL, NULL, NULL),
(173, 'SKU', '1014143', '6.4143.0', 'Air Filter', '', 0, NULL, NULL, NULL),
(174, 'SKU', '1014148', '6.4148.0', 'Air Filter', '-', 0, NULL, NULL, NULL),
(175, 'SKU', '1014149', '6.4149.0', 'Air Filter', '-', 0, NULL, NULL, NULL),
(176, 'SKU', '1014161', '6.4161.0', 'Air Filter', '-', 0, NULL, NULL, NULL),
(177, 'SKU', '1014163', '6.4163.0', 'Air Filter', '-', 0, NULL, NULL, NULL),
(178, 'SKU', '1014198', '6.4198.0', 'Air Filter', '-', 0, NULL, NULL, NULL),
(179, 'SKU', '1014212', '6.4212.0', 'Air Filter', '-', 0, NULL, NULL, NULL),
(180, 'SKU', '1014248', '6.4248.0', 'Air Filter', '-', 0, NULL, NULL, NULL),
(181, 'SKU', '1014432', '6.4432.0', 'Air Filter', '-', 0, NULL, NULL, NULL),
(182, 'SKU', '1030732', '39750732', 'Air Filter', '-', 0, NULL, NULL, NULL),
(183, 'SKU', '1032215', '24172215', 'Air Filter', '-', 0, NULL, NULL, NULL),
(184, 'SKU', '1033095', '22203095', 'Air Filter', '-', 0, NULL, NULL, NULL),
(185, 'SKU', '1033265', '39903265 = C 381238', 'Air Filter', '-', 0, NULL, NULL, NULL),
(186, 'SKU', '1033281', '39903281', 'Air Filter', '-', 0, NULL, NULL, NULL),
(187, 'SKU', '1036064', '39708466 = C 27230', 'Air Filter', '-', 0, NULL, NULL, NULL),
(188, 'SKU', '1051140', '5903-1140 = C 24553', 'Air Filter', '-', 0, NULL, NULL, NULL),
(189, 'SKU', '1051150', '59031150', 'Air Filter', '-', 0, NULL, NULL, NULL),
(190, 'SKU', '1051759', '49201759 = 5905-6590', 'Air Filter', '-', 0, NULL, NULL, NULL),
(191, 'SKU', '1055255', '52555230 = 52552330', 'Air Filter', '-', 0, NULL, NULL, NULL),
(192, 'SKU', '1091737', '1625-1737-17', 'Air Filter', '-', 0, NULL, NULL, NULL),
(193, 'SKU', '2080688', '1092-2002-88', 'Air Filter', '-', 0, NULL, NULL, NULL),
(194, 'SKU', '10015300', '2914-9304-00 = 6.3540.0 = 89232475 = C 35100', 'Air Filter', '-', 0, NULL, NULL, NULL),
(195, 'SKU', '10016400', '1613-7407-00 = 6.2084.0 = C 16400', 'Air Filter', '-', 0, NULL, NULL, NULL),
(196, 'SKU', '10017201', '143000303 = C 17201', 'Air Filter', '-', 0, NULL, NULL, NULL),
(197, 'SKU', '10019010', '05V.19.010', 'Air Filter', '-', 0, NULL, NULL, NULL),
(198, 'SKU', '10019020', '05V.19.020 ', 'Air Filter', '-', 0, NULL, NULL, NULL),
(199, 'SKU', '10019030', 'C 23185 = 05V.19.030', 'Air Filter', '-', 0, NULL, NULL, NULL),
(200, 'SKU', '10019030', 'C 23185 = OZEN 05V.19.030', 'Air Filter', '-', 0, NULL, NULL, NULL),
(201, 'SKU', '10019082', '05V.19.082', 'Air Filter', '-', 0, NULL, NULL, NULL),
(202, 'SKU', '10020500', '1613-7408-00 = 6.2085.0 = C 20500', 'Air Filter', '-', 0, NULL, NULL, NULL),
(203, 'SKU', '10023610', '1613-8004-00 = 6.3564.0 = C 23610', 'Air Filter', '-', 0, NULL, NULL, NULL),
(204, 'SKU', '10025740', '1613-9501-00 = 1613-9510-00 = 54672530 = C 25740', 'Air Filter', '-', 0, NULL, NULL, NULL),
(205, 'SKU', '10031220', '1030-1070-00 = 93523199 = C 31220', 'Air Filter', '-', 0, NULL, NULL, NULL),
(206, 'SKU', '10088372', '88290004-372', 'Air Filter', '-', 0, NULL, NULL, NULL),
(207, 'SKU', '10125710', '6.2182.0 = C 25710', 'Air Filter', '-', 0, NULL, NULL, NULL),
(208, 'SKU', '10130810', '2914-5017-00 = 6.2185.0 = A11516974 = C 30810', 'Air Filter', '-', 0, NULL, NULL, NULL),
(209, 'SKU', '100301353', 'C 301353', 'Air Filter', '-', 0, NULL, NULL, NULL),
(210, 'SKU', '10015124/1', '250023-939 = C 15124/1', 'Air Filter', '-', 0, NULL, NULL, NULL),
(211, 'SKU', '10015165/3', '6.3545.0 = C 15165/3', 'Air Filter', '-', 0, NULL, NULL, NULL),
(212, 'SKU', '10017225/3', '1619-2797-00 = 6.1996.0 = 569000725 = C 17 225/3', 'Air Filter', '-', 0, NULL, NULL, NULL),
(213, 'SKU', '10020325/2', '1619-2847-00 = 6.1997.0 = C 20325/2', 'Air Filter', '-', 0, NULL, NULL, NULL),
(214, 'SKU', '10021138/1', 'C 21138/1', 'Air Filter', '-', 0, NULL, NULL, NULL),
(215, 'SKU', '10023440/2', 'C 23440/2', 'Air Filter', '-', 0, NULL, NULL, NULL),
(216, 'SKU', '10023440/3', '1619-2798-00 = C 23440/3', 'Air Filter', '-', 0, NULL, NULL, NULL),
(217, 'SKU', '10024650/1', '1619-2799-00 = 6.1989.0 = C 24650/1', 'Air Filter', '-', 0, NULL, NULL, NULL),
(218, 'SKU', '10025860/3', '1613-9503-00 = C 25860/3', 'Air Filter', '-', 0, NULL, NULL, NULL),
(219, 'SKU', '10027585/3', '2900-0580-00 = 2900-0582-00 = C 27585/3', 'Air Filter', '-', 0, NULL, NULL, NULL),
(220, 'SKU', '10028352/1', '93525350 = C 29352/1', 'Air Filter', '-', 0, NULL, NULL, NULL),
(221, 'SKU', '10030850/2', '6.1995.0 = C 30850/2', 'Air Filter', '-', 0, NULL, NULL, NULL),
(222, 'SKU', '10033920/3', 'C 33920/3', 'Air Filter', '-', 0, NULL, NULL, NULL),
(223, 'SKU', '100354-FG6', '1030-0979-00 = 1621-0547-00 = C 36840/1', 'Air Filter', '-', 0, NULL, NULL, NULL),
(224, 'SKU', '10038-4TC', 'P3515A600-1 = AAP0540009-00089', 'Air Filter', '-', 0, NULL, NULL, NULL),
(225, 'SKU', '1004/5-9C', 'P3515A600-2 = AAP0540009-0029', 'Air Filter', '-', 0, NULL, NULL, NULL),
(226, 'SKU', '10040GN2G', 'P3515F800-1', 'Air Filter', '-', 0, NULL, NULL, NULL),
(227, 'SKU', '10048G', 'P3515F200-1', 'Air Filter', '-', 0, NULL, NULL, NULL),
(228, 'SKU', '100770-4TC', 'P1400009-0770', 'Air Filter Primary', '-', 0, NULL, NULL, NULL),
(229, 'SKU', '100771-9C', 'P14100009-0771', 'Air Filter Secondary', '-', 0, NULL, NULL, NULL),
(230, 'SKU', '1009GS', 'AA905400009-00090', 'Air Filter', '-', 0, NULL, NULL, NULL),
(231, 'SKU', '100DCY75A', 'A-A35-3211410079A', 'Air Filter', '-', 0, NULL, NULL, NULL),
(232, 'SKU', '100SAOF50A', '100SAOF50A', 'Air Filter Small', '-', 0, NULL, NULL, NULL),
(233, 'SKU', '71.10114.3825.00', '71.10114.3825.00', 'Air Filter', '-', 0, NULL, NULL, NULL),
(234, 'SKU', '71.10337.3801.02', '71.10337.3801.00 = 71.10337.3801.02', 'Air Filter', '-', 0, NULL, NULL, NULL),
(235, 'SKU', '71.10341.3801.00', '71.10341.3801.00 = 71.10341.3801.00', 'Air Filter', '-', 0, NULL, NULL, NULL),
(236, 'SKU', '71.1036.3801.00', '71.1036.3801.00', 'Air Filter', '-', 0, NULL, NULL, NULL),
(237, 'SKU', '71.12708.3801.10', '71.12708.380100 = 71.12708.3801.10', 'Air Filter', '-', 0, NULL, NULL, NULL),
(238, 'SKU', 'C 42/2', 'C 42', 'Air Filter', '-', 0, NULL, NULL, NULL),
(239, 'SKU', 'C 46', 'C 46', 'Air Filter', '-', 0, NULL, NULL, NULL),
(240, 'SKU', 'C 75', 'C 75', 'Air Filter', '-', 0, NULL, NULL, NULL),
(241, 'SKU', 'C 79/1', 'C 79/1', 'Air Filter', '-', 0, NULL, NULL, NULL),
(242, 'SKU', 'CF 1600', '92053179 CF 1600', 'Air Filter', '-', 0, NULL, NULL, NULL),
(243, 'SKU', 'CF 30810', '2914501800 = 89288989 = CF 810', 'Air Filter', '-', 0, NULL, NULL, NULL),
(244, 'SKU', 'PS-CE03-516', 'PS-CE03-516', 'Air Filter', '-', 0, NULL, NULL, NULL),
(245, 'SKU', '108DN50', 'DN 50 (Djarum)', 'Air Filter = Filter Insert Gas', '-', 0, NULL, NULL, NULL),
(246, 'SKU', '108DN80', 'DN 80 (Djarum)', 'Air Filter = Filter Insert Gas', '-', 0, NULL, NULL, NULL),
(247, 'SKU', '108DN100', 'DN 100 (Djarum)', 'Air Filter = Filter Insert Gas', '-', 0, NULL, NULL, NULL),
(248, 'sku', 'name', 'ref_part_number', 'category', 'description', 0, NULL, NULL, NULL),
(249, 'SKU', '300085', '2250034-085', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(250, 'SKU', '300116', '250034-116', 'Oil Separator Primary', '-', 0, NULL, NULL, NULL),
(251, 'SKU', '300122', '250034-122', 'Oil Separator Primary', '-', 0, NULL, NULL, NULL),
(252, 'SKU', '300124', '250034-124 = 250034-123', 'Oil Separator 300124', '-', 0, NULL, NULL, NULL),
(253, 'SKU', '300130', '250034-130', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(254, 'SKU', '300134', '250034-134', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(255, 'SKU', '300160', 'MLS-1830152121 (tinggi 160mm)', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(256, 'SKU', '300755', '02250100-755 =  DC 3290', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(257, 'SKU', '300756', '02250100-756 = DC 3291', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(258, 'SKU', '300808', '2250047-808', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(259, 'SKU', '300862', '250042-862', 'Oil Separator Secondary', '-', 0, NULL, NULL, NULL),
(260, 'SKU', '303118', '250034-118', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(261, 'SKU', '303130', '250034-130 = 250034-129 = DB 3139', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(262, 'SKU', '303319', '2250109-319', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(263, 'SKU', '303321', '2250109-321', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(264, 'SKU', '304112', '250034-112', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(265, 'SKU', '306595', 'P-CE03-595', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(266, 'SKU', '306596', 'P-CE03-596', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(267, 'SKU', '3001084', '1614-5329-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(268, 'SKU', '3001238', '731400', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(269, 'SKU', '3001239', '731401', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(270, 'SKU', '3001482', '3001482 = tinggi 14cm. diamater body 8cm. diameter dratt 2cm (for OSC 3 T Surabaya)', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(271, 'SKU', '3001534', '3001534 = 202 ECH 6013', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(272, 'SKU', '3001828', '1625182867', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(273, 'SKU', '3002013', '98262.77', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(274, 'SKU', '3002018', '83603496 = 2255300511', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(275, 'SKU', '3002023', '575000204', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(276, 'SKU', '3002026', '98262-26', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(277, 'SKU', '3002036', '93522902 = 93568301 = F 403351022 (eccoair)', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(278, 'SKU', '3002059', '93523215', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(279, 'SKU', '3002062', '2205722478 = 98262-162', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(280, 'SKU', '3002076', '39705728', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(281, 'SKU', '3002090', '2205406514 = 575000209 = 93520807', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(282, 'SKU', '3002098', '92754696 = DB 2098 = NS 009820', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(283, 'SKU', '3002115', '88200753 = DB 2115', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(284, 'SKU', '3002124', 'DB 2124 = 220413251', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(285, 'SKU', '3002127', 'DB 2127 = 98262-173 = MSB 1456-S', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(286, 'SKU', '3002132', '92202224 = DB 2132 = 91111-005', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(287, 'SKU', '3002134', 'DB 2134 = 91111-003', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(288, 'SKU', '3002185', '6.2134.0 = DB 2185', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(289, 'SKU', '3002211', '22114040', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(290, 'SKU', '3002214', 'DB 2214', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(291, 'SKU', '3002216', '3983-1888 = DB 2216  = DB 2505', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(292, 'SKU', '3002252', '39863840 = DB 2252 = DB 2098', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(293, 'SKU', '3002373', '88226238 = DB 2373', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(294, 'SKU', '3002454', 'DB 2454', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(295, 'SKU', '3002544', 'P-CE 03-517-03 = DB 2544', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(296, 'SKU', '3002606', '2224-2606', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(297, 'SKU', '3002629', '731468-0000 = DB 2629', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(298, 'SKU', '3002725', 'DB 2725 = MSB 1533-S', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(299, 'SKU', '3002750', '9272-2750 ', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(300, 'SKU', '3002787', '4254-2787', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(301, 'SKU', '3003001', '1612-3869-00 = DC 3001 = 2901-0003-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(302, 'SKU', '3003006', '3003006 = DC 3006', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(303, 'SKU', '3003008', '1612-2433-00 = DC 3008 = 2901-0078-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(304, 'SKU', '3003009', '1616-2836-00 = DC 3009', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(305, 'SKU', '3003022', '2252-6313-00 = DC 3022 = 2906-0020-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(306, 'SKU', '3003032', '1202-6414-00 = DC 3032 = 2901-0061-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(307, 'SKU', '3003051', '1614-6423-00 = DC 3051 = 2906-0098-00 ', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(308, 'SKU', '3003065', '1613-6880-00 = DC 3065)', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(309, 'SKU', '3003066', '2901-0004-01 = DC 3066 = 1613-6921-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(310, 'SKU', '3003075', 'N 27850000 = DC 3075', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(311, 'SKU', '3003077', '1613-7502-00 = DC 3077 = 2901-0343-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(312, 'SKU', '3003085', '1202-7419-00 = DC 3085 = 2901-0070-00 = 1613-7306-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(313, 'SKU', '3003099', '1614-7048-00 = DC 3099', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(314, 'SKU', '3003108', '6.3569.0  = DC 3108', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(315, 'SKU', '3003110', '2901-0432-00 = DC 3110 = 1613-8007-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(316, 'SKU', '3003132', '2901-0213-00 = DC 3132', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(317, 'SKU', '3003137', '1613-8397-00 = DC 3137', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(318, 'SKU', '3003185', '1614-9054-00 = DC 3185 Lbg Baut 15', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(319, 'SKU', '3003186', '1614-9056-00 = DC 3186', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(320, 'SKU', '3003218', '1614-9521-00 = DC 3218', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(321, 'SKU', '3003219', '2901-0858-00 = DC 3219 = 1613-9840-01 = 1613-9559-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(322, 'SKU', '3003241', 'DC 3241 = 622-1374-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(323, 'SKU', '3003256', 'DC 3256 (Lbg baut 12)', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(324, 'SKU', '3003264', 'DC 3264', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(325, 'SKU', '3003265', '1614-9054-00 = DC 3265) Lbg baut 12', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(326, 'SKU', '3003266', 'DC 3266 = 1622-3656-00 = 2901-0566-22', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(327, 'SKU', '3003270', '2906-0753-00 = 1621-9386-00 = DC 3270 =  1614-7899-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(328, 'SKU', '3003280', 'DC 3280 = 1623-0514-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(329, 'SKU', '3003285', 'DC 3285 = 1623-0515-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(330, 'SKU', '3003286', 'DC 3286 = 1623-0516-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(331, 'SKU', '3003292', 'DC 3292 = 1625-7036-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(332, 'SKU', '3003296', '2252-6313-00 = DC 3296 Long Life', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(333, 'SKU', '3003621', '36214040 = 3621-4040', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(334, 'SKU', '3004025', 'DE 4025', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(335, 'SKU', '3004033', ' 2901-0779-00 = DE 4033 = 1622-0079-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(336, 'SKU', '3004039', '2901-0079-01 = DE 4039', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(337, 'SKU', '3004040', '29614040 = 2961-4040', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(338, 'SKU', '3004045', '2901-1626-00 = 1622-3140-00 = DE 4045', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(339, 'SKU', '3004046', 'DE 4046 = 3001643 = 2901-1643-00 = 1622-6460-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(340, 'SKU', '3004051', 'DE 4051 = 2901-1626-00 = 2901-2055-00 = 1622-3140-01', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(341, 'SKU', '3004052', 'DE 4052', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(342, 'SKU', '3004811', '1625481100 = 1625-4811-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(343, 'SKU', '3005004', 'DF 5004 = 575000101 = LB 13 145/3', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(344, 'SKU', '3005005', 'DF 5005 ', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(345, 'SKU', '3005026', 'DF 5026', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(346, 'SKU', '3005045', 'DF 5045', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(347, 'SKU', '3005065', 'DF 5065 = 5474-9247', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(348, 'SKU', '3005066', 'DF 5066', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(349, 'SKU', '3005442', '54595442', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(350, 'SKU', '3005610', '3989-5610', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(351, 'SKU', '3005781', '05V.21.B5781 = DB 2699', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(352, 'SKU', '3007754', '1092-2034-07 = 1625-7754-00 = LB 13 145/7', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(353, 'SKU', '3008163', 'SH 8163', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(354, 'SKU', '3009200', '2901-9200-40', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(355, 'SKU', '3009294', '2202-9294-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(356, 'SKU', '3012008', '6.2008.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(357, 'SKU', '3012011', '6.1963.0 = SOC 131027 = KV 110-003 = 6.2011.0/1', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(358, 'SKU', '3012012', '6.2012.0 = 6.1960.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(359, 'SKU', '3012017', 'DB 2194', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(360, 'SKU', '3012020', '6.2014.0/1 = 6.3511.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(361, 'SKU', '3012024', '6.1965.0 = DB 2024 = 6.2013.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(362, 'SKU', '3012025', '6.2015.0 = DB 2025', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(363, 'SKU', '3012126', '6.3559.0/1 = DB 2126', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(364, 'SKU', '3013569', '6.3569.0 = DC 3108', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(365, 'SKU', '3013571', '6.3571.0 = 6.3567.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(366, 'SKU', '3013623', '6.3623.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(367, 'SKU', '3013669', '3160305 = HPC 135.30.160.0305 = 6.3669.0 = NS 366940', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(368, 'SKU', '3013672', '6.3672.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(369, 'SKU', '3013765', '6.3765.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(370, 'SKU', '3013789', '6.3789.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(371, 'SKU', '3013792', '6.3792.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(372, 'SKU', '3013795', '6.3795.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(373, 'SKU', '3014272', '6.4272.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(374, 'SKU', '3014273', '6.4273.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(375, 'SKU', '3032072', '92754688', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(376, 'SKU', '3032108', 'DB 2108', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(377, 'SKU', '3032189', 'DB 2189 = 8921-3011', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(378, 'SKU', '3032473', '39894597 = 54601513 = 88248950 = 36876472 = DB 2473', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(379, 'SKU', '3032475', '39863857 = 39831904 = DB 2475', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(380, 'SKU', '3038045', '2238-8045', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(381, 'SKU', '3039174', '22219174', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(382, 'SKU', '3039500', 'DB 2525 = 5450-9500', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(383, 'SKU', '3042006', '250034-114 = 02250137-895', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(384, 'SKU', '3051059', 'BK 3842400 = DA 1059', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(385, 'SKU', '3051070', '5903-1070 = 5232-3020', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(386, 'SKU', '3051077', 'DA 1077', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(387, 'SKU', '3051080', '5903-1080', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(388, 'SKU', '3051090', '5903-1090', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(389, 'SKU', '3051610', '59061610', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(390, 'SKU', '3052104', '100005424 = DB 2104', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(391, 'SKU', '3052490', '5906-2490', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(392, 'SKU', '3053188', '3053188', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(393, 'SKU', '3080289', '1092-2002-89', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(394, 'SKU', '3081912', '39831912', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(395, 'SKU', '3082107', 'A11427274', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(396, 'SKU', '3085501', '3422005501', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(397, 'SKU', '30021010', '05V.21.010', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(398, 'SKU', '30714428', '100014428', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(399, 'SKU', '30746910', '71131211-46910', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(400, 'SKU', '301151888', '6.2132.0 = SOC 151888 = 6.3535.0', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(401, 'SKU', '308561340', '561340 (Champion)', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(402, 'SKU', '3005525155', '3005525155 = 1055151PV 55/25/150 MM', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(403, 'SKU', '2400515 KC', ' 2400515 KC = 115.30.400.0515', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(404, 'SKU', '300110-003', '6.1963.0  = 6.2011.0/1', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(405, 'SKU', '3001230SA', '3001230SA (Tjakrindo)', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(406, 'SKU', '3001272SA', '3001272SA', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(407, 'SKU', '3002620SA', 'for SAPM 37 A (tahun 2023)', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(408, 'SKU', '30030SA', '30030SA = 30D-01-230', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(409, 'SKU', '3003204SA', '3003204SA =  for SAPM 15 A = MSE 15 A = MSE 22 A = SAPM 22 A', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(410, 'SKU', '3005060SA', '50A-02-230 = HD 564(sanfam)', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(411, 'SKU', '300575-1/2/3', '1614-5673-00 = DF 5003', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(412, 'SKU', '30060580SA', 'Sanfam SB 580', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(413, 'SKU', '300DCY75A', 'A-A11-DNMC-100705', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(414, 'SKU', '300ELM150', 'ELM 150 = 2001001500', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(415, 'SKU', '300S37U', '300S37U (Uk. 37 x 11,5 x 7,5cm)(Darisa Intimitra)', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(416, 'SKU', '300S55U', '300S55U (Uk. 25 x 11,5 x 7,5cm)(Darisa Intimitra)', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(417, 'SKU', '30830A', '30830A = RB-9140265 = RCB 30-A', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(418, 'SKU', '30850A', '30850A = RB-9140365 =  RCB 50-A', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(419, 'SKU', '409805-001', '250034-122', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(420, 'SKU', '49 000 51 101', '49 000 51 101', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(421, 'SKU', '5517-3021', '5517-3021', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(422, 'SKU', '6221-3728-00', '6221-3728-00', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(423, 'SKU', '72.12302.0801.23', '72.12302.0801.23 = 72.12302.0804.24 = 72.12302.0801.00 = 71.10406.8083.22', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(424, 'SKU', 'LB 1374/2', '575.000.105 = LB 1374/2', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(425, 'SKU', 'LB 962/2', 'LB 962/2', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(426, 'SKU', 'MSB6966-S', 'MSB6966-S = 05V 21 080 = OSC 220 OZEN', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(427, 'SKU', 'MYF-70/110-P-K', 'MYF-70/110-P-K (untuk Kadota)', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(428, 'SKU', 'MYF-70/175-P-K = 1595530100', 'MYF-70/175-P-K (untuk APF) = 1595530100', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(429, 'SKU', '1005475', 'MYF-70/60-P-K separator for MKP 2200 (for Asahimas)', 'Oil Separator', '', 0, NULL, NULL, NULL),
(430, 'SKU', 'P-CE03-517', 'P-CE03-517', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(431, 'SKU', 'P-CE03-577', 'P-CE03-577', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(432, 'SKU', 'P-CE13-506', 'P-CE13-506', 'Oil Separator', '-', 0, NULL, NULL, NULL),
(433, 'SKU', '17CEELM0015', 'ELM 150 = 405150-ELM Mist Eliminator', 'Mist Eliminator', '-', 0, NULL, NULL, NULL),
(434, 'SKU', 'ELM17CEELM0033', 'ELM 1600 Mist = 4051600-ELM Mist Eliminator', 'Mist Eliminator', '-', 0, NULL, NULL, NULL),
(435, 'sku', 'name', 'ref_part_number', 'category', 'description', 0, NULL, NULL, NULL),
(436, 'SKU', '200525', '250025-525 ', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(437, 'SKU', '200526', '250025-526 ', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(438, 'SKU', '200709', '02250155-709', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(439, 'SKU', '200712', '6.1901.0 = NO 011880 = W 712', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(440, 'SKU', '200712', 'W 712', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(441, 'SKU', '200920', 'W 920', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(442, 'SKU', '200940', '6.1985.0', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(443, 'SKU', '200956', '250008-956 = SH 8192', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(444, 'SKU', '200996', '02250139-996', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(445, 'SKU', '206506', 'PS-CE11-506', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(446, 'SKU', '206507', 'PS-CE11-507', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(447, 'SKU', '208505', 'A00984 = 25200007-505', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(448, 'SKU', '2001104', 'C 1104', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(449, 'SKU', '2001884', '1837-0018-84', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(450, 'SKU', '2006100', '1625-4261-00', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(451, 'SKU', '2006563', '3991-1615 = 39911615', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(452, 'SKU', '2007378', 'SH 8281 = 1621-7378-00', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(453, 'SKU', '2008113', '1513-0337-01 = 2903-0337-01 = SH 8113', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(454, 'SKU', '2008119', 'SH 8119', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(455, 'SKU', '2008177', 'SH 8177', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(456, 'SKU', '2008181', '200EDM369 = SH 8181', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(457, 'SKU', '2008189', 'CR 21G30319 = SH 8189', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(458, 'SKU', '2008253', 'SH 8253', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(459, 'SKU', '2008263', 'SH 8263', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(460, 'SKU', '2008267', '1622-3652-00 = SH P023', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(461, 'SKU', '2008273', 'SH P024 = 1622-3142-80', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(462, 'SKU', '2008330', 'SH 8330 ', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(463, 'SKU', '2008331', '1622-3652-00 = SH 8331', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(464, 'SKU', '2008332', '1622-3652-00 = SH 8332', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(465, 'SKU', '2008333', 'SH P024 = SH 8333', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(466, 'SKU', '2008715', '1625-7525-00 = 2903-7525-00', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(467, 'SKU', '2008722', ' 2903-7526-00', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(468, 'SKU', '2013462', '6.3462.0', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(469, 'SKU', '2013463', '6.3463.0 = SH 8237 = 2013463', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(470, 'SKU', '2013464', '6.3464.0/1 = SH 8235', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(471, 'SKU', '2013465', '6.3465.0', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(472, 'SKU', '2014493', 'SH 8328 = 6.4493.0', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(473, 'SKU', '2014693', '6.4693.0', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(474, 'SKU', '2014778', ' 6.4778.0', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(475, 'SKU', '2031631', '3991-1631 = P165569', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(476, 'SKU', '2039602', '3932-9602', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(477, 'SKU', '2051220', '59031220', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(478, 'SKU', '2051230', '59031230 = 49C07439XA', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(479, 'SKU', '2055850', '5343-5850 = 5903-5850', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(480, 'SKU', '2055910', '5517-5910', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(481, 'SKU', '2058153', 'SH 8153 = WD 920 For OSC 3 T', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(482, 'SKU', '2085919', 'SH 8708 = 8975919 = 8975-5919', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(483, 'SKU', '2116110', '2116110', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(484, 'SKU', '3005009', 'LB 11 102/2 = DF 5009', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(485, 'SKU', '10026240', 'C 26 240', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(486, 'SKU', '20011102', '1614-7273-00 = W 11102', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(487, 'SKU', '20020010', '05V.20.010', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(488, 'SKU', '20113145', '6.1979.0 =SH 8109', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(489, 'SKU', '20255910', '5281-5910', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(490, 'SKU', '2204296212', '02204296212 For SAF 50, SAF 60, SAF 30', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(491, 'SKU', '1 X 10642', '1 X 10642 = P 2007739 = P 550251', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(492, 'SKU', '200940/5', 'W 940/5', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(493, 'SKU', '200962/12', '1202-8040-00 = WD 962/12 = 200962/12', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(494, 'SKU', '200962-1/2/3', '1613-6105-00 = SH 8107 =  55175910 = 6.1981.0', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(495, 'SKU', '20D940/5', 'WD 940/5', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(496, 'SKU', '50060050A', 'Mist Eliminator = SAOF 50 A = SAOF 40 A', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(497, 'SKU', '500600A', 'P3515B158-3 (Elliot) = P1404987-0014', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(498, 'SKU', '500600SAOF30A', 'P3515B158-3 (Elliot) = P1404987-0014 (Cover Plastik = For SAOF 30 A, SAOF 20 A', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(499, 'SKU', '500DCW15A ', 'Water Filter for DCW 15 A', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(500, 'SKU', '71.10337.8074.00', '71.10337.8074.00', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(501, 'SKU', '71.12600.3381.00', '71.12600.338120 = 71.12600.338100 = 71.12600.338110 = 71.12600.3381.00', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(502, 'SKU', 'H 1060 N', 'H 1060 N', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(503, 'SKU', 'J8611670', 'J8611670 = 100 HP', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(504, 'SKU', 'P 555680', 'P 555680', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(505, 'SKU', 'P558615', 'P558615', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(506, 'SKU', 'P-CE13-510', 'P-CE13-510 (Kobelco)', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(507, 'SKU', 'P-CE13-526', 'P-CE13-526 (Kobelco)', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(508, 'SKU', 'TB 1374 X', 'TB 1374 X', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(509, 'SKU', 'W 1140', 'W 1140', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(510, 'SKU', 'W 13 145/3', 'W 13145/3', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(511, 'SKU', 'W 1374/2', 'W 1374/2', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(512, 'SKU', 'W 719/5', 'W 719/5 = 1513-0337-00', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(513, 'SKU', 'W 77', 'W 77', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(514, 'SKU', 'W 917', '1030-0882-00 = W 917', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(515, 'SKU', 'W 929/3', 'W 929/3', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(516, 'SKU', 'W 940/15 n', 'W 940/15 n = W 940/15n', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(517, 'SKU', 'W 950 = 200950', 'W 950 = K21000000002 = (for MSE 15 A = SAPM 15 A = SAPM 11 A)', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(518, 'SKU', 'W 962', '9211-8678/6.1981.0 = W 962', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(519, 'SKU', 'WD 13 145', 'WD 13 145', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(520, 'SKU', 'WD 1374', 'WD 1374', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(521, 'SKU', 'WD 724/3', 'WD 724/3', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(522, 'SKU', 'WD 724/6', 'WD 724/6', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(523, 'SKU', 'WD 962', 'WD 962', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(524, 'SKU', 'WD 962/21', '6.1981.0 Long Life', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(525, 'SKU', 'WD 962/32', 'WD 962/12 = WD 962/32', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(526, 'SKU', 'WDK 13 145', '6.3465.0', 'Oil Filter', '-', 0, NULL, NULL, NULL),
(527, 'sku', 'name', 'ref_part_number', 'category', 'description', 0, NULL, NULL, NULL),
(528, 'SKU', '400972', '02250194-972', 'Filter Element', '-', 0, NULL, NULL, NULL),
(529, 'SKU', '400973', '02250194-973', 'Filter Element', '-', 0, NULL, NULL, NULL),
(530, 'SKU', '4002620', '4002620 for Mis Eliminator ELM 1600', 'Filter Element', '-', 0, NULL, NULL, NULL),
(531, 'SKU', '4009034', 'SM 9034, 1 mikron Prefilter = EZ 2020 Z', 'Filter Element', '-', 0, NULL, NULL, NULL),
(532, 'SKU', '4009035', 'SM 9035, 0,01 mikron Afterfilter = EZ 2020 X', 'Filter Element', '-', 0, NULL, NULL, NULL),
(533, 'SKU', '4009036', 'EZ 2020 C = SM 9036', 'Filter Element', '-', 0, NULL, NULL, NULL),
(534, 'SKU', '4009038', 'SM 9038, 1 mikron Prefilter =  EZ 2030 Z', 'Filter Element', '-', 0, NULL, NULL, NULL),
(535, 'SKU', '4009039', 'SM 9039, 0,01 mikron Afterfilter =  EZ 2030 X = EZ 2030 H', 'Filter Element', '-', 0, NULL, NULL, NULL),
(536, 'SKU', '4009042', 'EZ 2050 U = SM 9042', 'Filter Element', '-', 0, NULL, NULL, NULL),
(537, 'SKU', '4009043', 'SM 9043, 0,01 mikron Afterfilter =  EZ 2050 X', 'Filter Element', '-', 0, NULL, NULL, NULL),
(538, 'SKU', '4009045', 'EZ 3050 P = SM 9045', 'Filter Element', '-', 0, NULL, NULL, NULL),
(539, 'SKU', '4009056', 'SM 9056', 'Filter Element', '-', 0, NULL, NULL, NULL),
(540, 'SKU', '4009069', 'ED 085 U = 2901-0193-00 = K 145 AO = 1202-6259-04', 'Filter Element', '-', 0, NULL, NULL, NULL),
(541, 'SKU', '4009070', 'ED 085 H = 2901-0198-00 = K 145 AA = 1202-6259-03', 'Filter Element', '-', 0, NULL, NULL, NULL),
(542, 'SKU', '4009072', 'ED 085 C = SM 9072', 'Filter Element', '-', 0, NULL, NULL, NULL),
(543, 'SKU', '4009073', 'ED 195 U = 1202-6262-02 = K 220 AO = K 220 AR = 2901-0194-00 = 250024-428 = SM 9073', 'Filter Element', '-', 0, NULL, NULL, NULL),
(544, 'SKU', '4009074', 'ED 195 H = 1202-6262-01 = K 220 AA = 2901-0199-00 = 250024-436 = SM 9074', 'Filter Element', '-', 0, NULL, NULL, NULL),
(545, 'SKU', '4009075', 'ED 195 C = SM 9075', 'Filter Element', '-', 0, NULL, NULL, NULL),
(546, 'SKU', '4009076', 'SM 9076 = 1202-6264-04', 'Filter Element', '-', 0, NULL, NULL, NULL),
(547, 'SKU', '4009076', 'ED 295 U-P SM 9076', 'Filter Element', '-', 0, NULL, NULL, NULL),
(548, 'SKU', '4009077', 'SM 9077 = 1202-6264-03', 'Filter Element', '-', 0, NULL, NULL, NULL),
(549, 'SKU', '4009078', 'ED 295 C = K 330 AC', 'Filter Element', '-', 0, NULL, NULL, NULL),
(550, 'SKU', '4009079', 'ED 400 U = K 430 AO = 2906-0212-00 = K 430 AO = K 430 AR = K 400 AO = K 400 AR', 'Filter Element', '-', 0, NULL, NULL, NULL),
(551, 'SKU', '4009080', 'ED 400 H = K 430 AA', 'Filter Element', '-', 0, NULL, NULL, NULL),
(552, 'SKU', '4009081', 'ED 400 C = K 430 AC = SM 9081', 'Filter Element', '-', 0, NULL, NULL, NULL),
(553, 'SKU', '4009082', 'ED 500 U = DD 500 SM 9082  = 4009082', 'Filter Element', '-', 0, NULL, NULL, NULL),
(554, 'SKU', '4009083', 'ED 500 H = PD 500 = SM 9083 ', 'Filter Element', '-', 0, NULL, NULL, NULL),
(555, 'SKU', '4009084', 'ED 500 C = SM 9084', 'Filter Element', '-', 0, NULL, NULL, NULL),
(556, 'SKU', '4009154', 'EU 05/25 U = SM 9154', 'Filter Element', '-', 0, NULL, NULL, NULL),
(557, 'SKU', '4009155', 'EU 05/25 H = SM 9155', 'Filter Element', '-', 0, NULL, NULL, NULL),
(558, 'SKU', '4009162', 'EU 07/30 U = SM 9162', 'Filter Element', '-', 0, NULL, NULL, NULL),
(559, 'SKU', '4009164', '07/30 H ', 'Filter Element', '-', 0, NULL, NULL, NULL),
(560, 'SKU', '4009165', 'SM 9165 = AK 07/30 = EU 07/30 = MF 07/30 Carbon', 'Filter Element', '-', 0, NULL, NULL, NULL),
(561, 'SKU', '4009167', 'SM 9167', 'Filter Element', '-', 0, NULL, NULL, NULL),
(562, 'SKU', '4009168', 'SM 9168', 'Filter Element', '-', 0, NULL, NULL, NULL),
(563, 'SKU', '4009175', 'SM 9175 = ODO 2030 XM/F', 'Filter Element', '-', 0, NULL, NULL, NULL),
(564, 'SKU', '4009177', 'SM 9177 = ODO 2030 AK/A', 'Filter Element', '-', 0, NULL, NULL, NULL),
(565, 'SKU', '4009327', 'SM 9327 = DD 60', 'Filter Element', '-', 0, NULL, NULL, NULL),
(566, 'SKU', '4009328', 'SM 9328 = PD 60', 'Filter Element', '-', 0, NULL, NULL, NULL),
(567, 'SKU', '4009329', '2901-2005-04', 'Filter Element', '-', 0, NULL, NULL, NULL),
(568, 'SKU', '4009330', '1613-7041-03 = EAC 120 U = SM 9330', 'Filter Element', '-', 0, NULL, NULL, NULL),
(569, 'SKU', '4009331', '1613-7041-01 = EAC 120 H = SM 9331', 'Filter Element', '-', 0, NULL, NULL, NULL),
(570, 'SKU', '4009332', 'QD 120 = 2901-0537-00', 'Filter Element', '-', 0, NULL, NULL, NULL),
(571, 'SKU', '4009333', 'SM 9333 = EAC 150 U', 'Filter Element', '-', 0, NULL, NULL, NULL),
(572, 'SKU', '4009334', 'SM 9334 = EAC 150 H', 'Filter Element', '-', 0, NULL, NULL, NULL),
(573, 'SKU', '4009336', 'DD 175 = EAC 175 U = SM 9336 ', 'Filter Element', '-', 0, NULL, NULL, NULL),
(574, 'SKU', '4009337', 'PD 175 = EAC 175 H = SM 9337 ', 'Filter Element', '-', 0, NULL, NULL, NULL),
(575, 'SKU', '4009338', 'SM 9338 = EAC 260 P (3 micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(576, 'SKU', '4009339', 'SM 9339 = 2901-0544-00', 'Filter Element', '-', 0, NULL, NULL, NULL),
(577, 'SKU', '4009340', 'SM 9340', 'Filter Element', '-', 0, NULL, NULL, NULL),
(578, 'SKU', '4009341', 'SM 9341', 'Filter Element', '-', 0, NULL, NULL, NULL),
(579, 'SKU', '4009342', 'EAC 390 U = 2906-7000-00 = DD 390 = SM 9342 ', 'Filter Element', '-', 0, NULL, NULL, NULL),
(580, 'SKU', '4009343', 'EAC 390 H = 2906-7001-00 = PD 390 = SM 9343 ', 'Filter Element', '-', 0, NULL, NULL, NULL),
(581, 'SKU', '4009344', 'EAC 390C = SM 9344', 'Filter Element', '-', 0, NULL, NULL, NULL),
(582, 'SKU', '4009345', 'EAC 520 U = 1617-7043-07 = DD 520 = SM 9345 ', 'Filter Element', '-', 0, NULL, NULL, NULL),
(583, 'SKU', '4009346', 'EAC 520 H = 1617-7043-05 = PD 520 = SM 9346 ', 'Filter Element', '-', 0, NULL, NULL, NULL),
(584, 'SKU', '4009347', 'EAC 520 C = SM 9347) = QD 520', 'Filter Element', '-', 0, NULL, NULL, NULL),
(585, 'SKU', '4009354', 'SM 9354 = ODO 2030 PE/P', 'Filter Element', '-', 0, NULL, NULL, NULL),
(586, 'SKU', '4009358', 'DD 780 = DDP 780 =1617-7073-03 = SM 9358', 'Filter Element', '-', 0, NULL, NULL, NULL),
(587, 'SKU', '4009359', 'SM 9359', 'Filter Element', '-', 0, NULL, NULL, NULL),
(588, 'SKU', '4009557', '2901-3004-08 = UD 220+', 'Filter Element', '-', 0, NULL, NULL, NULL),
(589, 'SKU', '4009925', 'EKS 0138 P = EG 138 = 400138C', 'Filter Element', '-', 0, NULL, NULL, NULL),
(590, 'SKU', '4009929', 'EG 283 = 9.4895.0 ', 'Filter Element', '-', 0, NULL, NULL, NULL),
(591, 'SKU', '4009943', 'EF 283 = 9.4883.0 = SM 9943', 'Filter Element', '-', 0, NULL, NULL, NULL),
(592, 'SKU', '4009951', 'EKS 0138 H = EE 138', 'Filter Element', '-', 0, NULL, NULL, NULL),
(593, 'SKU', '4009954', 'EE 185 = SM 9954', 'Filter Element', '-', 0, NULL, NULL, NULL),
(594, 'SKU', '4009975', 'SM 975', 'Filter Element', '-', 0, NULL, NULL, NULL),
(595, 'SKU', '4009990', 'EB 185', 'Filter Element', '-', 0, NULL, NULL, NULL),
(596, 'SKU', '40051140', '40051140', 'Filter Element', '-', 0, NULL, NULL, NULL),
(597, 'SKU', '40000210H', ' Donaldson S0210 (0,01 micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(598, 'SKU', '400010H', 'EA 10 H', 'Filter Element', '-', 0, NULL, NULL, NULL),
(599, 'SKU', '400010U', 'EA 10 U', 'Filter Element', '-', 0, NULL, NULL, NULL),
(600, 'SKU', '400015H', '400015H / AE 15 AF', 'Filter Element', '-', 0, NULL, NULL, NULL),
(601, 'SKU', '400028H', 'EE 28', 'Filter Element', '-', 0, NULL, NULL, NULL),
(602, 'SKU', '400028U', 'ED 28', 'Filter Element', '-', 0, NULL, NULL, NULL),
(603, 'SKU', '400048C', 'EG 48 = 9.4888.0', 'Filter Element', '-', 0, NULL, NULL, NULL),
(604, 'SKU', '400048H', 'EE 48)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(605, 'SKU', '400048S', 'EF 48 = 9.4876.0', 'Filter Element', '-', 0, NULL, NULL, NULL),
(606, 'SKU', '400048U', 'ED 48', 'Filter Element', '-', 0, NULL, NULL, NULL),
(607, 'SKU', '400050H', '400050H = Y (for OSC 5 TD)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(608, 'SKU', '400050U', '400050U = X (for OSC 5 TD)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(609, 'SKU', '400055H (Y)', '400055H (Y) (MKE 53 New)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(610, 'SKU', '400055H-FR', '400055H-FR = FTX 055 = 0,01 micron', 'Filter Element', '-', 0, NULL, NULL, NULL),
(611, 'SKU', '400055U (X)', '400055U (X) (MKE 53 New)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(612, 'SKU', '400055U-FR', '400055U-FR = FTS 055 = 1 micron', 'Filter Element', '-', 0, NULL, NULL, NULL),
(613, 'SKU', '400060H', 'K 060 AA', 'Filter Element', '-', 0, NULL, NULL, NULL),
(614, 'SKU', '400060N', 'K 060 AR', 'Filter Element', '-', 0, NULL, NULL, NULL),
(615, 'SKU', '400060U', 'K 060 AO', 'Filter Element', '-', 0, NULL, NULL, NULL),
(616, 'SKU', '40007/25C', 'AK 07/25', 'Filter Element', '-', 0, NULL, NULL, NULL),
(617, 'SKU', '40007/25H', 'SMF 07/25 H', 'Filter Element', '-', 0, NULL, NULL, NULL),
(618, 'SKU', '400100H', 'AE 100 AF', 'Filter Element', '-', 0, NULL, NULL, NULL),
(619, 'SKU', '400100U', 'AE 100 PF', 'Filter Element', '-', 0, NULL, NULL, NULL),
(620, 'SKU', '4001030U', '4001030U = EQ 10/30 GDU', 'Filter Element', '-', 0, NULL, NULL, NULL),
(621, 'SKU', '400107H', 'EKS 107 H = EE 107', 'Filter Element', '-', 0, NULL, NULL, NULL),
(622, 'SKU', '400107S', 'EF 107', 'Filter Element', '-', 0, NULL, NULL, NULL),
(623, 'SKU', '4001120H', '971431120 (for Gosyen mesin Vacum)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(624, 'SKU', '4001200H', '4001200H = Y', 'Filter Element', '-', 0, NULL, NULL, NULL),
(625, 'SKU', '4001200U', '4001200U = X', 'Filter Element', '-', 0, NULL, NULL, NULL),
(626, 'SKU', '4001205H (Y)', '4001205H (Y) (MKE 1200 New)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(627, 'SKU', '4001205U (X)', '4001205U (X) (MKE 1200 New)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(628, 'SKU', '4001210 P', '4001210 P', 'Filter Element', '-', 0, NULL, NULL, NULL),
(629, 'SKU', '4001210 X', '4001210 X', 'Filter Element', '-', 0, NULL, NULL, NULL),
(630, 'SKU', '4001210H', '4001210H (Y) (for MKE 623, MKE 930, MKE 1200)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(631, 'SKU', '4001210U', '4001210U (X )(for MKE 623,MKE 930, MKE 1200)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(632, 'SKU', '400125H', 'AE 125 H', 'Filter Element', '-', 0, NULL, NULL, NULL),
(633, 'SKU', '400125U', 'AE 125 U', 'Filter Element', '-', 0, NULL, NULL, NULL),
(634, 'SKU', '400132B', '400132B = CE 0132 B', 'Filter Element', '-', 0, NULL, NULL, NULL),
(635, 'SKU', '400138S', 'EF 138', 'Filter Element', '-', 0, NULL, NULL, NULL),
(636, 'SKU', '400138U', 'ED 138 = EKS 0138 U', 'Filter Element', '-', 0, NULL, NULL, NULL),
(637, 'SKU', '400150P', 'NFF 1510 QWD) = EH 150 P', 'Filter Element', '-', 0, NULL, NULL, NULL),
(638, 'SKU', '4001510 P', '4001510 P', 'Filter Element', '-', 0, NULL, NULL, NULL),
(639, 'SKU', '4001510X', '4001510X', 'Filter Element', '-', 0, NULL, NULL, NULL),
(640, 'SKU', '4001510Y', '4001510Y', 'Filter Element', '-', 0, NULL, NULL, NULL),
(641, 'SKU', '4001550H', '4001550H = Y', 'Filter Element', '-', 0, NULL, NULL, NULL),
(642, 'SKU', '4001550U', '4001550U = X', 'Filter Element', '-', 0, NULL, NULL, NULL),
(643, 'SKU', '400155H (Y)', '400155H (Y) (MKE 190 New)(HRND 155)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(644, 'SKU', '400155U (X)', '400155U (X) (MKE 190 New) (HRND 155)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(645, 'SKU', '400160F C', '400160F C = EQ FTZ 160 (0,03 micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(646, 'SKU', '400160F H', '400160F H = EQ FTX 160 (0,01 micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(647, 'SKU', '400160F U ', '400160F U = EQ FTS 160 (1 micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(648, 'SKU', '400168U ', '400168U = AL 168)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(649, 'SKU', '400177C', 'EKS 0177 C', 'Filter Element', '-', 0, NULL, NULL, NULL),
(650, 'SKU', '400177P', 'EB 177 = 9.4820.0', 'Filter Element', '-', 0, NULL, NULL, NULL),
(651, 'SKU', '400177S', 'EKS 0177 S', 'Filter Element', '-', 0, NULL, NULL, NULL),
(652, 'SKU', '4001805H (Y)', '4001805H (Y) (HRND 1388 New) (1 set isi 2pcs grade U dan 2pcs grade H)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(653, 'SKU', '4001805U (X)', '4001805U (X) (HRND 1388 New) (1 set isi 2pcs grade U dan 2pcs grade H)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(654, 'SKU', '4001820H (Y)', '4001820H (Y) (MKE 1388, MKE 1800)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(655, 'SKU', '4001820U (X)', '4001820U (X) (MKE 1388, MKE 1800)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(656, 'SKU', '400185C', 'EG 185', 'Filter Element', '-', 0, NULL, NULL, NULL),
(657, 'SKU', '400185P', 'EB 185', 'Filter Element', '-', 0, NULL, NULL, NULL),
(658, 'SKU', '400185S', 'EF 185 = ES 142D8XE-F-185', 'Filter Element', '-', 0, NULL, NULL, NULL),
(659, 'SKU', '400185U', 'ED 185', 'Filter Element', '-', 0, NULL, NULL, NULL),
(660, 'SKU', '400190H', '400190H = AE 190 (0,01 micron) (Flange 1040)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(661, 'SKU', '400190U', '400190U = AE 190 (1 micron) (Flange 1040)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(662, 'SKU', '4001B168 AL', '4001B168 AL (for Fliurr Air)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(663, 'SKU', '4002030H', 'ZD 2030 = 4002030H', 'Filter Element', '-', 0, NULL, NULL, NULL),
(664, 'SKU', '400221C', 'EG 221 = 9.4893.0)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(665, 'SKU', '400221S', 'EKS 0221 S = 400221S', 'Filter Element', '-', 0, NULL, NULL, NULL),
(666, 'SKU', '400250H', '400250H = 400250H-M', 'Filter Element', '-', 0, NULL, NULL, NULL),
(667, 'SKU', '400250U', '400250U = 400250U-M', 'Filter Element', '-', 0, NULL, NULL, NULL),
(668, 'SKU', '4002700H (Y)', '4002700H (Y) (MKE 2500, MKE 2775)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(669, 'SKU', '4002700U (X)', '4002700U (X) (MKE 2500, MKE 2775)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(670, 'SKU', '4002775H (Y)', '4002775H (Y) (HRND 2775 New)(JRND 2500)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(671, 'SKU', '4002775U (X)', '4002775U (X) (HRND 2775 New)(HRND 2500)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(672, 'SKU', '400290C', 'EA 290 C (0,03 mikron / carbon)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(673, 'SKU', '400290H', 'EA 290H', 'Filter Element', '-', 0, NULL, NULL, NULL),
(674, 'SKU', '400290U', 'EA 290 U (1 mikron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(675, 'SKU', '400405H(Y)', '4000405H (Y) (HRND 305 New)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(676, 'SKU', '400405U(X)', '4000405U (X) (HRND 305 New)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(677, 'SKU', '400500H (Y)', '400500H = Y (for MKE 210, MKE 305, MKE 375)', 'Filter Element', '-', 0, NULL, NULL, NULL);
INSERT INTO `products` (`id`, `sku`, `name`, `ref_part_number`, `category`, `description`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(678, 'SKU', '400500U (X)', '400500U = X (for MKE 210, MKE 305, MKE 375)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(679, 'SKU', '4005060C', '4005060C = EZ 5060 C', 'Filter Element', '-', 0, NULL, NULL, NULL),
(680, 'SKU', '4005060H', '4005060H = EZ 5060 H', 'Filter Element', '-', 0, NULL, NULL, NULL),
(681, 'SKU', '4005060U', '4005060U = EZ 5060 U)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(682, 'SKU', '4005075H', '4005075H = 5075 XP = EA 5075 H', 'Filter Element', '-', 0, NULL, NULL, NULL),
(683, 'SKU', '4005075U', '4005075U = 5075 ZP =EZ 5075 U', 'Filter Element', '-', 0, NULL, NULL, NULL),
(684, 'SKU', '40050H', '050 AA', 'Filter Element', '-', 0, NULL, NULL, NULL),
(685, 'SKU', '40050N', '050 AR', 'Filter Element', '-', 0, NULL, NULL, NULL),
(686, 'SKU', '40050U', '050 AO', 'Filter Element', '-', 0, NULL, NULL, NULL),
(687, 'SKU', '40055U', 'EA 55 U', 'Filter Element', '-', 0, NULL, NULL, NULL),
(688, 'SKU', '4005850H (Y)', '4005850H (Y) (HRND 3330 New) (1set isi 2pcs grade U, 2 pcs grade H)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(689, 'SKU', '4005850U (X)', '4005850U (X) (HRND 3330 New) (1set isi 2pcs grade U, 2 pcs grade H)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(690, 'SKU', '400625H', '400625H (0,01 micron) = EA 625', 'Filter Element', '-', 0, NULL, NULL, NULL),
(691, 'SKU', '4007137H', 'EHK 7137 H', 'Filter Element', '-', 0, NULL, NULL, NULL),
(692, 'SKU', '4007137U', 'EHK 7137 U', 'Filter Element', '-', 0, NULL, NULL, NULL),
(693, 'SKU', '400775H', 'EA 775 H', 'Filter Element', '-', 0, NULL, NULL, NULL),
(694, 'SKU', '400775U', 'EA 775 U', 'Filter Element', '-', 0, NULL, NULL, NULL),
(695, 'SKU', '400805H (Y)', '400805H (Y) (HRND 623 New)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(696, 'SKU', '400805U (X)', '400805U (X) (HRND 623 New)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(697, 'SKU', '40083KE', 'E 83 KE', 'Filter Element', '-', 0, NULL, NULL, NULL),
(698, 'SKU', '400851H (Y)', '400851H = Y (HRND 495)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(699, 'SKU', '400851U (X)', '400851U = X (HRND 495)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(700, 'SKU', '4009360C', '4009360 C = 1617-7073-02 = QD 1050', 'Filter Element', '-', 0, NULL, NULL, NULL),
(701, 'SKU', '400AC425H', 'PD 425 = 1624-1833-01 = 2901-2004-09', 'Filter Element', '-', 0, NULL, NULL, NULL),
(702, 'SKU', '400AC425U', 'DD 425 = 1624-1833-03 = 2901-2003-09', 'Filter Element', '-', 0, NULL, NULL, NULL),
(703, 'SKU', '400AC850C', 'QD 850', 'Filter Element', '-', 0, NULL, NULL, NULL),
(704, 'SKU', '400AC850H', 'PD 850', 'Filter Element', '-', 0, NULL, NULL, NULL),
(705, 'SKU', '400AC850S', 'PD 850', 'Filter Element', '-', 0, NULL, NULL, NULL),
(706, 'SKU', '400AC850U', 'DD 850', 'Filter Element', '-', 0, NULL, NULL, NULL),
(707, 'SKU', '400BL500C', 'BL 500 AC (Elite for Prima Rajuli)(carbon)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(708, 'SKU', '400BL500H', 'BL 500 AQ (Elite for Prima Rajuli) (0,01 micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(709, 'SKU', '400BL500U', 'BL 500 AP (Elite for Prima Rajuli)(1 micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(710, 'SKU', '400D0320C', '400D0320C (Donaldson)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(711, 'SKU', '400D0320H', '400D0320H (Donaldson)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(712, 'SKU', '400D1100C', '400D1100C (0,003 mg/m) = Donaldson S 1100', 'Filter Element', '-', 0, NULL, NULL, NULL),
(713, 'SKU', 'B0GE 250 FP', 'Filter Element B0GE 250 FP (1 micron) 400250FP (After Filter) Supplier 6', 'Filter Element', '-', 0, NULL, NULL, NULL),
(714, 'SKU', 'B0GE 250 V', 'Filter Element B0GE 250 FP (3 micron) 400250V (Fre Filter) Supplier 6', 'Filter Element', '-', 0, NULL, NULL, NULL),
(715, 'SKU', 'BOGE 1/120 H', 'Filter Element BOGE 1/120 H (0,01 mikron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(716, 'SKU', 'BOGE 1/120 U', 'Filter Element BOGE 1/120 U (1 mikron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(717, 'SKU', '400D1100H', '400D1100H (0,01 micron) = Donaldson S 1100', 'Filter Element', '-', 0, NULL, NULL, NULL),
(718, 'SKU', '400D1100U', '400D1100U (1 micron) = Donaldson S 1100', 'Filter Element', '-', 0, NULL, NULL, NULL),
(719, 'SKU', '400D200H', '400D200H = AQ 200 AA = ODHE 200 AA', 'Filter Element', '-', 0, NULL, NULL, NULL),
(720, 'SKU', '400D200U', '400D200U = AQ 200 AO = ODHE 200 AO', 'Filter Element', '-', 0, NULL, NULL, NULL),
(721, 'SKU', '400D450H', 'M-0450', 'Filter Element', '-', 0, NULL, NULL, NULL),
(722, 'SKU', '400D450S', 'S-0450', 'Filter Element', '-', 0, NULL, NULL, NULL),
(723, 'SKU', '400D450U', 'V-0450', 'Filter Element', '-', 0, NULL, NULL, NULL),
(724, 'SKU', '400EL14050H', '400EL14050H = Fluir Air', 'Filter Element', '-', 0, NULL, NULL, NULL),
(725, 'SKU', '400EL14050U', '400EL14050U = Fluir Air', 'Filter Element', '-', 0, NULL, NULL, NULL),
(726, 'SKU', '400F400H', 'FTX 400', 'Filter Element', '-', 0, NULL, NULL, NULL),
(727, 'SKU', '400F400U', 'FFTS 400', 'Filter Element', '-', 0, NULL, NULL, NULL),
(728, 'SKU', '400FT080H', 'FT 080 AF', 'Filter Element', '-', 0, NULL, NULL, NULL),
(729, 'SKU', '400FT080U', ' FT 080 PF', 'Filter Element', '-', 0, NULL, NULL, NULL),
(730, 'SKU', '400G150U', '400G150U = G 150 = EA 150U', 'Filter Element', '-', 0, NULL, NULL, NULL),
(731, 'SKU', '400H150H', 'EH 150 H (for MKE 155)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(732, 'SKU', '400H150U', 'EH 150 U (for MKE 155)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(733, 'SKU', '400IR66816', '400IR66816', 'Filter Element', '-', 0, NULL, NULL, NULL),
(734, 'SKU', '400K107C', 'EG 107', 'Filter Element', '-', 0, NULL, NULL, NULL),
(735, 'SKU', '400K107H', 'EE 107)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(736, 'SKU', '400K107P', 'EB 107', 'Filter Element', '-', 0, NULL, NULL, NULL),
(737, 'SKU', '400K107U', 'ED 107', 'Filter Element', '-', 0, NULL, NULL, NULL),
(738, 'SKU', '400NX1850H', 'NX 1850H = Nexus', 'Filter Element', '-', 0, NULL, NULL, NULL),
(739, 'SKU', '400NX1850U', 'NX 1850U = Nexus', 'Filter Element', '-', 0, NULL, NULL, NULL),
(740, 'SKU', '400O1000H/S', 'ORION LSF 1000 = (0,01 Micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(741, 'SKU', '400O1000P', 'ORION DSF 1000 = (3 Micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(742, 'SKU', '400O1000U', 'ORION MSF 1000 = (1 Micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(743, 'SKU', '400O1300H', 'ORION 1300 ELS = (0,01 Micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(744, 'SKU', '400O1300H-PL', 'ORION 1300 ELS = (0,01 Micron)(Encap Plastik)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(745, 'SKU', '400O1300U', 'ORION 1300 EMS = (1 Micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(746, 'SKU', '400O1300U-PL', 'ORION 1300 EMS  = (1 Micron)(Encap Plastik)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(747, 'SKU', '400O2000C', 'NEW ORION 2000', 'Filter Element', '-', 0, NULL, NULL, NULL),
(748, 'SKU', '400O2000H', 'MSF 2000', 'Filter Element', '-', 0, NULL, NULL, NULL),
(749, 'SKU', '400O2000U', 'LSF 2000', 'Filter Element', '-', 0, NULL, NULL, NULL),
(750, 'SKU', '400O400H', 'Orion 400 = MSF', 'Filter Element', '-', 0, NULL, NULL, NULL),
(751, 'SKU', '400O400U', 'Orion 400 = KSF', 'Filter Element', '-', 0, NULL, NULL, NULL),
(752, 'SKU', '400O700C', 'KSF 700 AL', 'Filter Element', '-', 0, NULL, NULL, NULL),
(753, 'SKU', '400O700H', 'ORION ELS 700', 'Filter Element', '-', 0, NULL, NULL, NULL),
(754, 'SKU', '400O700S', 'MSF 700 AL', 'Filter Element', '-', 0, NULL, NULL, NULL),
(755, 'SKU', '400O700U', 'ORION EMS 700', 'Filter Element', '-', 0, NULL, NULL, NULL),
(756, 'SKU', '400O700U', 'LSF 700 AL', 'Filter Element', '-', 0, NULL, NULL, NULL),
(757, 'SKU', '400SA007H', '400SA007H (0.01 micron) = A-7-A = for HSD-8WXF (Nutrifood)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(758, 'SKU', '400SA007P', '400SA007P (5 micron) = A-7-C for HSD-8WXF (Nutrifood)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(759, 'SKU', '400SA007U', '400SA007U (1 micron) = A-7-T = for HSD-8WXF (Nutrifood)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(760, 'SKU', '400SA010H', '400SA010H (0.01 micron) = A-10-A', 'Filter Element', '-', 0, NULL, NULL, NULL),
(761, 'SKU', '400SA010P', '400SA010P (5 micron) = A-10-C', 'Filter Element', '-', 0, NULL, NULL, NULL),
(762, 'SKU', '400SA010U', '400SA010U (1 micron) = A-10-T', 'Filter Element', '-', 0, NULL, NULL, NULL),
(763, 'SKU', '400SA020H', '400SA020U = A-020-A = (0,01 micron) = for SARD 20 NF', 'Filter Element', '-', 0, NULL, NULL, NULL),
(764, 'SKU', '400SA020U', '400SA020U = A-020-T = (1 micron) = for SARD 20 NF', 'Filter Element', '-', 0, NULL, NULL, NULL),
(765, 'SKU', '400SA450H', '400SA450H (0,01 micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(766, 'SKU', '400SA450U', '400SA450U (1 micron)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(767, 'SKU', '400SW06050H', 'EL-01706-0650H', 'Filter Element', '-', 0, NULL, NULL, NULL),
(768, 'SKU', '400SW06050U', 'EL-01706-0650U', 'Filter Element', '-', 0, NULL, NULL, NULL),
(769, 'SKU', '400W1160H', '400W1160H', 'Filter Element', '-', 0, NULL, NULL, NULL),
(770, 'SKU', '400W1160U', '400W1160U', 'Filter Element', '-', 0, NULL, NULL, NULL),
(771, 'SKU', 'E 200-55-C', 'Van Air E 200-55-C', 'Filter Element', '-', 0, NULL, NULL, NULL),
(772, 'SKU', 'E 200-55-C', 'E 200-55-C', 'Filter Element', '-', 0, NULL, NULL, NULL),
(773, 'SKU', 'E 200-55-RD', 'Van Air E 200-55-RD)', 'Filter Element', '-', 0, NULL, NULL, NULL),
(774, 'SKU', 'ED 500 C-P', 'ED 500 C = SM 9084', 'Filter Element', '-', 0, NULL, NULL, NULL),
(775, 'SKU', 'ED 500P', 'ED 500P', 'Filter Element', '-', 0, NULL, NULL, NULL),
(776, 'SKU', '40045/25230', '40045/25230 = 45/25 diameter 230mm)(IPPI)', 'Filter Element = Filter hydraulic', '-', 0, NULL, NULL, NULL),
(777, 'SKU', '40045/2590', '40045/2590 = 45/25 diameter 90mm)(IPPI)', 'Filter Element = Filter hydraulic', '-', 0, NULL, NULL, NULL),
(778, 'SKU', '40055/30120', '40055/30120 = 55/30 diameter 120mm)(IPPI)', 'Filter Element = Filter hydraulic', '-', 0, NULL, NULL, NULL),
(779, 'SKU', '400100/50210', '400100/50210 = 100/50 diameter 210mm)(IPPI)+', 'Filter Element = Filter hydraulic', '-', 0, NULL, NULL, NULL),
(780, 'sku', 'name', 'ref_part_number', 'category', 'description', 0, NULL, NULL, NULL),
(781, 'SKU', '401290H', '401125 = A 125 AF with DPG (0,01 micron) = 401290H', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(782, 'SKU', '401290P', '401125 = A 125  with DPG (3 micron) = 401290P', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(783, 'SKU', '401290U', '401125 = A 125 PF with DPG (1 micron)', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(784, 'SKU', '401370U', '401370U + DPG Gauge & Auto Drain', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(785, 'SKU', '4014300H', '4014300H = F 4300', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(786, 'SKU', '4014300U', '4014300U = F 4300', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(787, 'SKU', '401780H', '401780H = F-780 H (0,01 mikron)', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(788, 'SKU', '401780U', '401780U = F-780 U (1 mikron)', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(789, 'SKU', '4018500U', '4018500U = F-8500 U (1 mikron)', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(790, 'SKU', '401DD07H', '401DD-07H = SOY-007- A = 401HF5-007H (0,01 micron) for HSD-8WXF (Nutrifood)(Leading Garmen, BMJ)', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(791, 'SKU', '401DD07U', '401DD-07U = SOY-007-T = 401HF7-007U (1 micron) for HSD-8WXF (Nutrifood)(Leading Garmen, BMJ', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(792, 'SKU', '401DD10H', '401DD-10H = 401DD-13H (0.01micron) = SOY-010-A', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(793, 'SKU', '401DD10U', '401DD-10U = 401DD-13U (1micron) = SOY-010-T', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(794, 'SKU', '401DD-20H', '401DD-20H = SOY-020- A = (0,01 micron) for SARD 20 NF (Bumi Kaya Steel)', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(795, 'SKU', '401DD-20U', '401DD-20U = SOY-020- T = (1 micron) for SARD 20 NF (Bumi Kaya Steel)', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(796, 'SKU', '401F3200-P', '401F3200-P = F 3200 with DP Gauge & Auto Drain', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(797, 'SKU', '401SA010C', '401SA010C (Carbon = Airflux A 100', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(798, 'SKU', '401SA010H', '401SA010H (0,01 micron = Airflux A 100', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(799, 'SKU', '401SA010P', '401SA010P (3micron)', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(800, 'SKU', '401SA010U', '401SA010U (1 micron = Airflux A 100', 'Housing Filter', '-', 0, NULL, NULL, NULL),
(801, 'SKU', '401SA014U', '401SA014U (1 micron)', 'Housing Filter', '', 0, NULL, NULL, NULL),
(802, 'SKU', '401SA014H', '401SA014H (0,01 micron)', 'Housing Filter', '', 0, NULL, NULL, NULL),
(803, 'SKU', '402A75', '402A75 = A 75', 'Water Separator', '-', 0, NULL, NULL, NULL),
(804, 'SKU', '402F0181W', '402F0181W', 'Water Separator', '-', 0, NULL, NULL, NULL),
(805, 'SKU', '402F1060W', '402F1060W = F 1060 W', 'Water Separator', '-', 0, NULL, NULL, NULL),
(806, 'SKU', '402F28', '402F28 = CSC 28', 'Water Separator', '-', 0, NULL, NULL, NULL),
(807, 'SKU', '402F36', '402F36 = CSC 36', 'Water Separator', '-', 0, NULL, NULL, NULL),
(808, 'SKU', '402015', '402015 = WS 15', 'Water Separator', '-', 0, NULL, NULL, NULL),
(809, 'SKU', '402025', '402025 = RCS 025', 'Water Separator', '-', 0, NULL, NULL, NULL),
(810, 'SKU', '402343', '402343 = RCS 343 = A 100', 'Water Separator', '-', 0, NULL, NULL, NULL),
(811, 'sku', 'name', 'ref_part_number', 'category', 'description', 0, NULL, NULL, NULL),
(812, 'SKU', 'Alco 305', 'Alco 305', 'Filter Dryer = Filter Refrigerant', '-', 0, NULL, NULL, NULL),
(813, 'SKU', 'EK 304', 'EK 304', 'Filter Dryer = Filter Refrigerant', '-', 0, NULL, NULL, NULL),
(814, 'SKU', 'DML 163 S', 'DML 163 S', 'Filter Dryer = Filter Refrigerant', '-', 0, NULL, NULL, NULL),
(815, 'SKU', 'DCL 165S', 'DCL 165S', 'Filter Dryer = Filter Refrigerant', '-', 0, NULL, NULL, NULL),
(816, 'SKU', 'DML 053 S', 'DML 053 S Danfoss', 'Filter Dryer = Filter Refrigerant', '-', 0, NULL, NULL, NULL),
(817, 'SKU', 'DML 083', 'DML 083', 'Filter Dryer = Filter Refrigerant', '-', 0, NULL, NULL, NULL),
(818, 'SKU', 'EK 052', 'Alco EK 052', 'Filter Dryer = Filter Refrigerant', '-', 0, NULL, NULL, NULL),
(819, 'SKU', 'EK 083', 'EK 083', 'Filter Dryer = Filter Refrigerant', '-', 0, NULL, NULL, NULL),
(820, 'SKU', 'EK 16 3', 'EK 163', 'Filter Dryer = Filter Refrigerant', '-', 0, NULL, NULL, NULL),
(821, 'SKU', 'EK 164', 'EK 164', 'Filter Dryer = Filter Refrigerant', '-', 0, NULL, NULL, NULL),
(822, 'SKU', 'EK 417 S', 'EK 417 S', 'Filter Dryer = Filter Refrigerant', '-', 0, NULL, NULL, NULL),
(823, 'SKU', 'HMBD 13 PA', 'HMBD 13 PA', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(824, 'SKU', 'CDE 1610 BSP', 'CDE 1610 BSP', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(825, 'SKU', 'CDE 2050 BSP', 'CDE 2050 BSP', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(826, 'SKU', 'HMBD 20', 'HMBD 20 B', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(827, 'SKU', 'CE 1606 BSP', 'CE 1606 BSP', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(828, 'SKU', 'CE 1618 BSP', 'CE 1618 BSP', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(829, 'SKU', 'CE 1624', 'CE 1624', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(830, 'SKU', 'HTD 16', 'HTD 16', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(831, 'SKU', 'HTD 50', 'HTD 50', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(832, 'SKU', 'SCM 40', 'SCM 40 + Nipplo', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(833, 'SKU', 'HEZL 12 VDC (24 V)', 'HEZL 12 VDC (24 V)', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(834, 'SKU', 'HEZL 75', 'HEZL 75', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(835, 'SKU', 'IAD 516', 'IAD 516 = IAD 116 (Pelampung Putih)', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(836, 'SKU', 'HEZL 12', 'HEZL 12', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(837, 'SKU', 'HEZL 25', 'HEZL 25', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(838, 'SKU', 'HEZL 150', 'HEZL 150', 'Auto Drain', '-', 0, NULL, NULL, NULL),
(839, 'SKU', 'DP Gauge 12', 'DP Gauge 12', 'DP Gauge 12', '-', 0, NULL, NULL, NULL),
(840, 'sku', 'name', 'ref_part_number', 'category', 'description', 0, NULL, NULL, NULL),
(841, 'SKU', '50302', 'Carbon Remover=Chemical Off line', 'Carbon Remover = Chemical Off line', '-', 0, NULL, NULL, NULL),
(842, 'SKU', 'Chemical Descaler', 'Chemical Dynamic Descaler (per liter)', 'Chemical Dynamic Descaler (per liter)', '-', 0, NULL, NULL, NULL),
(843, 'SKU', '50301', 'Chemical Online = Renonet C Plus', 'Chemical Online = Renonet C Plus', '-', 0, NULL, NULL, NULL),
(844, 'SKU', '50146 SLS', '50146 SLS = Corena S3 R 46 (Khusus mesin Compressor Star Air sebelum Cuci Cooler)', 'Oil Screw Compressor', '-', 0, NULL, NULL, NULL),
(845, 'SKU', '50046 XL', '50046 XL = Renolin RSC 46', 'Oil Screw Compressor', '-', 0, NULL, NULL, NULL),
(846, 'SKU', '50132 XLS', '50132 XLS = SC MC 32', 'Oil Screw Compressor', '-', 0, NULL, NULL, NULL),
(847, 'SKU', '50146 XLS', '50146 XLS = Renolin SC MC 46', 'Oil Screw Compressor', '-', 0, NULL, NULL, NULL),
(848, 'SKU', '50246 XXLS', '50246 XXLS = Renolin UNISYN OL 46', 'Oil Screw Compressor', '-', 0, NULL, NULL, NULL),
(849, 'SKU', '50168 XLS', '50168 XLS = iso 68 = Renolin SC MC 68', 'Oil Screw Compressor', '-', 0, NULL, NULL, NULL),
(850, 'SKU', '50232 XXLS', '50232 XXLS iso 32 = Renolin Uniysin 32', 'Oil Screw Compressor', '-', 0, NULL, NULL, NULL),
(851, 'SKU', '50368', '50368 = Cassida CR 68', 'Oil Screw Compressor Food Grade', '-', 0, NULL, NULL, NULL),
(852, 'SKU', '50346', '50346 = Cassida CR 46', 'Oil Screw Compressor Food Grade', '-', 0, NULL, NULL, NULL),
(853, 'SKU', '500,04', 'Dessicant AA = Activated Alumina = MS 500.040 = 150kg = K1', 'Dessicant AA = Activated Alumina', '-', 0, NULL, NULL, NULL),
(854, 'SKU', '500,07', 'Dessicant MS = Molecular Sieve = MS 500.070 = 140kg', 'Dessicant MS = Molecular Sieve', '-', 0, NULL, NULL, NULL),
(855, 'sku', 'name', 'ref_part_number', 'category', 'description', 0, NULL, NULL, NULL),
(856, 'SKU', 'OSC 30', 'OSC 30 Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(857, 'SKU', 'OSC 50', 'OSC 50 = OSC 37 Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(858, 'SKU', 'SAPM 15 A', 'MSE 15 A = SAPM 15 A', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(859, 'SKU', 'OSC 3 T', 'OSC 3 T Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(860, 'SKU', 'OSC 150', 'OSC 150 Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(861, 'SKU', 'SAPM 75 A', 'SAPM 75 A = MSE 75 A Screw Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(862, 'SKU', 'SAPM 37 A', 'SAPM 37 A = MSE 37 A Screw Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(863, 'SKU', 'OSC 30 TD', 'OSC 30 TD for Genset', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(864, 'SKU', 'OSC 5 TD', 'OSC 5 TD Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(865, 'SKU', 'OSC 50 U', 'OSC 50 U Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(866, 'SKU', 'OSC 50B', 'OSC 50B = OSC 50 B Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(867, 'SKU', 'OSC 75 U', 'OSC 75 U Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(868, 'SKU', 'DCW-60 VSA', 'DCW-60VSA Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(869, 'SKU', 'DCW-15A', 'DCW-15A Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(870, 'SKU', 'SAOF 30 A', 'SAOF 30 A Oil Free Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(871, 'SKU', 'SAF 60 A', 'SAF 60 A Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(872, 'SKU', 'SAF 50 A', 'SAF 50 A Screw Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(873, 'SKU', 'SAOF 50 A', 'SAOF 50 A Oil Free Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(874, 'SKU', 'SAF 30 A', 'SAF 30 A Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(875, 'SKU', 'SAPM 22 A', 'SAPM 22 A = MSE 22 A Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(876, 'SKU', 'SAF 75 A', 'SAF 75 A Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(877, 'SKU', 'SAF 125 A', 'SAF 125 A Screw Air Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(878, 'SKU', 'SAOF 40 A', 'SAOF 40 A Oil Free Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(879, 'SKU', 'SAOF 20 A', 'SAOF 20 A Oil Free Compressor', 'Screw Air Compressor', '-', 0, NULL, NULL, NULL),
(880, 'sku', 'name', 'ref_part_number', 'category', 'description', 0, NULL, NULL, NULL),
(881, 'SKU', 'HHPD 300', 'MK-HP 300 = HHPD 300 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(882, 'SKU', 'HRND 1200', 'MKE 1200 = HRND 1200 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(883, 'SKU', 'HRND 155', 'MKE 155 = HRND 155 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(884, 'SKU', 'HRND 1800', 'MKE 1800 = HRND 1800 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(885, 'SKU', 'HRND 2500', 'MKE 2500 = HRND 2500 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(886, 'SKU', 'HRND 2775', 'MKE 2775 = HRND 2775 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(887, 'SKU', 'HRND 305', 'MKE 305 = HRND 305 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(888, 'SKU', 'HRND 3330', 'MKE 3330 = HRND 3330 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(889, 'SKU', 'HRND 375', 'MKE 375 = HRND 375 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(890, 'SKU', 'HRND 3915', 'MKE 3915 = HRND 3915 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(891, 'SKU', 'HRND 495', 'MKE 495 = HRND 495 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(892, 'SKU', 'HRND 5085', 'MKE 5085 = HRND 5085 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(893, 'SKU', 'HRND 53', 'MKE 53 = HRND 53 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(894, 'SKU', 'HRND 623', 'MKE 623 = HRND 623 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(895, 'SKU', 'HRND 9000', 'HRND 9000 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(896, 'SKU', 'HRND 930', 'MKE 930 = HRND 930 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(897, 'SKU', 'HSD-6MXF', 'HSD-6MXF Dessicant Air Dryer', 'Air Dryer Dessicant', '-', 0, NULL, NULL, NULL),
(898, 'SKU', 'HSD-8WXF', 'HSD-8WXF Dessicant Air Dryer', 'Air Dryer Dessicant', '-', 0, NULL, NULL, NULL),
(899, 'SKU', 'MDA 2700', 'MDA 2700 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(900, 'SKU', 'MKE 100', 'MKE 100 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(901, 'SKU', 'MKE 1388', 'MKE 1388 = HRND1388 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(902, 'SKU', 'MKE 190', 'MKE 190 = HRND 190 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(903, 'SKU', 'MKP 2220', 'MKP 2220 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(904, 'SKU', 'MKP 4680-W', 'MKP 4680-W Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(905, 'SKU', 'MKP 8400', 'MKP 8400 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(906, 'SKU', 'MMD 100', 'MMD 100 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(907, 'SKU', 'MMD 15', 'MMD 15 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(908, 'SKU', 'MMD 40', 'MMD 40 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(909, 'SKU', 'MMD 75', 'MMD 75 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(910, 'SKU', 'P-400', 'P-400 Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(911, 'SKU', 'P-75 A', 'P-75 A Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(912, 'SKU', 'SARD 02', 'SARD 02 = TR 02 = TR-02(Star Air) Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(913, 'SKU', 'SARD 06', 'SARD 06 = TR 06 = TR-06(Star Air) Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(914, 'SKU', 'SARD 08', 'SARD 08 = TR-08 (Star Air) Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(915, 'SKU', 'SARD 10', 'SARD 10 = TR 10 (Star Air) Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(916, 'SKU', 'SARD 110', 'SARD 110 (Star Air) Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(917, 'SKU', 'SARD 12', 'SARD 12 = TR-12 (Star Air) Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(918, 'SKU', 'SARD 140', 'SARD 140', 'Air Dryer', '', 0, NULL, NULL, NULL),
(919, 'SKU', 'SARD 20 NF', 'SARD 20 NF = TR-20 (Star Air) Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(920, 'SKU', 'SARD 40 NF', 'SARD 40 NF =TR 40 NF  = TR-40 NF (Star Air) Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL),
(921, 'SKU', 'SARD 75 NH', 'SARD 75 NH (Star Air) Air Dryer', 'Air Dryer', '-', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_activities`
--

CREATE TABLE `product_activities` (
  `activity_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_inventories`
--

CREATE TABLE `product_inventories` (
  `id` int UNSIGNED NOT NULL,
  `in_stock` int NOT NULL DEFAULT '0',
  `allocated` int NOT NULL DEFAULT '0',
  `product_id` int UNSIGNED NOT NULL,
  `warehouse_id` int UNSIGNED DEFAULT NULL,
  `warehouse_location_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_inventories`
--

INSERT INTO `product_inventories` (`id`, `in_stock`, `allocated`, `product_id`, `warehouse_id`, `warehouse_location_id`, `created_at`, `updated_at`) VALUES
(6, 30, 0, 130, 1, 1, '2025-02-06 07:50:26', '2025-02-06 08:30:47'),
(7, 10, 0, 921, 1, 1, '2025-02-26 19:26:43', '2025-02-26 19:26:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_tags`
--

CREATE TABLE `product_tags` (
  `tag_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `quotes`
--

CREATE TABLE `quotes` (
  `id` int UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `shipping_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT NULL,
  `tax_amount` decimal(12,4) DEFAULT NULL,
  `adjustment_amount` decimal(12,4) DEFAULT NULL,
  `sub_total` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `person_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `quote_items`
--

CREATE TABLE `quote_items` (
  `id` int UNSIGNED NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT '0',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_percent` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `product_id` int UNSIGNED NOT NULL,
  `quote_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `permission_type`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Administrator Role', 'all', NULL, NULL, NULL),
(2, 'Checker', 'Deskripsi', 'custom', '[\"contacts\",\"contacts.organizations\"]', '2025-01-06 02:56:11', '2025-01-06 02:56:11'),
(3, 'Teknisi', 'Teknisi', 'custom', '[\"technician\"]', '2025-03-10 06:27:45', '2025-05-02 13:44:11'),
(4, 'Gudang', 'Gudang', 'custom', '[\"products\",\"products.create\",\"products.edit\",\"products.delete\",\"products.view\",\"stock\",\"stock.stockin\",\"stock.stockout\"]', '2025-04-23 13:19:09', '2025-05-02 13:42:14'),
(5, 'Sales', 'Deskripsi Role Sales', 'custom', '[\"dashboard\",\"leads\",\"leads.create\",\"leads.view\",\"leads.edit\",\"leads.delete\",\"quotes\",\"quotes.create\",\"quotes.edit\",\"quotes.print\",\"quotes.delete\",\"mail\",\"mail.inbox\",\"mail.draft\",\"mail.outbox\",\"mail.sent\",\"mail.trash\",\"mail.compose\",\"mail.view\",\"mail.edit\",\"mail.delete\",\"activities\",\"activities.create\",\"activities.edit\",\"activities.delete\",\"contacts\",\"contacts.persons\",\"contacts.persons.create\",\"contacts.persons.edit\",\"contacts.persons.delete\",\"contacts.persons.export\",\"contacts.persons.view\",\"contacts.organizations\",\"contacts.organizations.create\",\"contacts.organizations.edit\",\"contacts.organizations.delete\",\"products\",\"products.create\",\"products.edit\",\"products.delete\",\"products.view\"]', '2025-05-02 13:44:47', '2025-05-05 10:20:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int DEFAULT NULL,
  `warehouse_location_id` int DEFAULT NULL,
  `no_inv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `type` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stocks`
--

INSERT INTO `stocks` (`id`, `product_id`, `warehouse_location_id`, `no_inv`, `date`, `type`, `qty`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '123123', '2025-02-06', 'in', 10, '2025-02-05 17:30:12', '2025-02-05 17:30:12'),
(2, 2, 1, '123123', '2025-02-06', 'in', 10, '2025-02-05 17:30:49', '2025-02-05 17:30:49'),
(3, 1, 1, '123123', '2025-02-06', 'in', 10, '2025-02-05 17:52:36', '2025-02-05 17:52:36'),
(4, 1, 1, '123123', '2025-02-06', 'in', 10, '2025-02-05 17:53:04', '2025-02-05 17:53:04'),
(5, 8, 1, '123123', '2025-02-06', 'in', 10, '2025-02-05 23:06:25', '2025-02-05 23:06:25'),
(6, 2, 1, 'Pengiriman Barang NO INV', '2025-02-06', 'out', 5, '2025-02-06 07:09:39', '2025-02-06 07:09:39'),
(7, 8, 1, 'Pengiriman Barang NO INV', '2025-02-06', 'out', 2, '2025-02-06 07:14:11', '2025-02-06 07:14:11'),
(8, 130, 1, '123123', '2025-02-06', 'in', 15, '2025-02-06 07:50:26', '2025-02-06 07:50:26'),
(9, 130, 1, 'NO INVOICE', '2025-02-07', 'in', 15, '2025-02-06 08:30:47', '2025-02-06 08:30:47'),
(10, 130, 2, 'Pindah Gudang', '2025-02-06', 'out', 2, '2025-02-06 08:33:54', '2025-02-06 08:33:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `name`, `color`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'data baru', '#FEE2E2', 1, '2025-01-06 02:36:24', '2025-01-06 02:36:24'),
(2, 'Lorem', '#FEF3C7', 1, '2025-02-06 08:10:35', '2025-02-06 08:10:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `technician_activities`
--

CREATE TABLE `technician_activities` (
  `id` bigint UNSIGNED NOT NULL,
  `organization_id` int UNSIGNED DEFAULT NULL,
  `person_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mechine_sn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_hours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `load_hours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ambient_temp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amp_powerline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voltage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motor_power` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_press` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cut_out` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cut_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motor_overload_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inlet_screw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inlet_air_cooler` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inlet_oil_cooler` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_compressor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inlet_dryer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refrigerant_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_oil_check` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leakage_check` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_screw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_air_cooler` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_oil_cooler` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_dryer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dew_point` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `suggestion` text COLLATE utf8mb4_unicode_ci,
  `photos` text COLLATE utf8mb4_unicode_ci,
  `cust_sign` longtext COLLATE utf8mb4_unicode_ci,
  `user_sign` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `view_permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'global',
  `role_id` int UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `view_permission`, `role_id`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Ditajaya Admin', 'admin@ditajaya.com', '$2y$10$8dS85mOOQLgabnp95vhM9eRVpaZ5nYREG9JizfC0pvibBOhAjnzU.', 1, 'global', 1, NULL, '2025-01-05 16:12:40', '2025-01-05 16:22:23', NULL),
(4, 'Dimas', 'sales1.dmp@gmail.com', '$2y$10$8dS85mOOQLgabnp95vhM9eRVpaZ5nYREG9JizfC0pvibBOhAjnzU.', 1, 'individual', 5, NULL, '2025-03-11 05:11:18', '2025-05-02 13:46:11', NULL),
(5, 'Ita', 'sales2.dmp@gmail.com', '$2y$10$8dS85mOOQLgabnp95vhM9eRVpaZ5nYREG9JizfC0pvibBOhAjnzU.', 1, 'individual', 5, NULL, '2025-03-11 05:50:24', '2025-05-02 13:46:01', NULL),
(6, 'Lea', 'sales3.dmp@gmail.com', '$2y$10$8dS85mOOQLgabnp95vhM9eRVpaZ5nYREG9JizfC0pvibBOhAjnzU.', 1, 'individual', 5, NULL, '2025-03-11 06:01:32', '2025-05-02 13:45:53', NULL),
(7, 'Cust Rully', 'sales4.dmp@gmail.com', '$2y$10$8dS85mOOQLgabnp95vhM9eRVpaZ5nYREG9JizfC0pvibBOhAjnzU.', 1, 'individual', 5, NULL, '2025-03-11 06:08:03', '2025-05-02 13:45:43', NULL),
(8, 'Tarie', 'sales5.dmp@gmail.com', '$2y$10$8dS85mOOQLgabnp95vhM9eRVpaZ5nYREG9JizfC0pvibBOhAjnzU.', 1, 'individual', 5, NULL, '2025-03-11 06:15:19', '2025-05-02 13:45:33', NULL),
(9, 'Mia', 'sales6.dmp@gmail.com', '$2y$10$8dS85mOOQLgabnp95vhM9eRVpaZ5nYREG9JizfC0pvibBOhAjnzU.', 1, 'individual', 5, NULL, '2025-03-11 06:47:52', '2025-05-02 13:45:26', NULL),
(10, 'Rara', 'sales7.dmp@gmail.com', '$2y$10$8dS85mOOQLgabnp95vhM9eRVpaZ5nYREG9JizfC0pvibBOhAjnzU.', 1, 'individual', 5, NULL, '2025-03-11 06:52:55', '2025-05-02 13:45:10', NULL),
(11, 'Vita', 'sales8.dmp@gmail.com', '$2y$10$8dS85mOOQLgabnp95vhM9eRVpaZ5nYREG9JizfC0pvibBOhAjnzU.', 1, 'individual', 5, NULL, '2025-03-11 07:06:53', '2025-05-02 13:45:17', NULL),
(12, 'Teknisi', 'teknisi@ditajaya.com', '$2y$10$YsQU0L19MBlD/SBs2mi8seCoOFMovsAld9oJXzpfQbsXrjX5dnaxe', 1, 'global', 3, NULL, '2025-04-23 13:21:19', '2025-04-23 13:21:19', NULL),
(13, 'Gudang', 'gudang@ditajaya.com', '$2y$10$Drj4ZbNnYDY0nI9GySd6h.P59Cl9xyyRwgoyO4M2JMaoPzzaQyvuy', 1, 'global', 4, NULL, '2025-04-23 13:21:43', '2025-05-10 08:40:21', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_groups`
--

CREATE TABLE `user_groups` (
  `group_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_groups`
--

INSERT INTO `user_groups` (`group_id`, `user_id`) VALUES
(1, 4),
(2, 4),
(1, 5),
(2, 5),
(1, 6),
(2, 6),
(1, 7),
(2, 7),
(1, 8),
(2, 8),
(1, 9),
(2, 9),
(1, 10),
(2, 10),
(1, 11),
(2, 11),
(1, 12),
(2, 12),
(1, 13),
(2, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_password_resets`
--

CREATE TABLE `user_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_emails` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `contact_numbers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `contact_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data untuk tabel `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `description`, `contact_name`, `contact_emails`, `contact_numbers`, `contact_address`, `created_at`, `updated_at`) VALUES
(1, 'Gudang Pertama', 'DESKRIPSI', 'Muhammad Firman P', '[{\"value\":\"prayogafirman22@gmail.com\",\"label\":\"work\"}]', '[{\"value\":\"083811212847\",\"label\":\"work\"}]', '{\"address\":\"KP PASIRKALIKI 03\\/06\",\"country\":\"ID\",\"state\":\"-\",\"city\":\"KABUPATEN BOGOR\",\"postcode\":\"16770\"}', '2025-01-06 01:46:05', '2025-01-06 01:46:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `warehouse_activities`
--

CREATE TABLE `warehouse_activities` (
  `activity_id` int UNSIGNED NOT NULL,
  `warehouse_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `warehouse_activities`
--

INSERT INTO `warehouse_activities` (`activity_id`, `warehouse_id`) VALUES
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `warehouse_locations`
--

CREATE TABLE `warehouse_locations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `warehouse_locations`
--

INSERT INTO `warehouse_locations` (`id`, `name`, `warehouse_id`, `created_at`, `updated_at`) VALUES
(1, 'BOGOR', 1, '2025-01-06 01:47:22', '2025-01-06 01:47:22'),
(2, 'JAKARTA', 1, '2025-01-06 01:47:31', '2025-01-06 01:47:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `warehouse_tags`
--

CREATE TABLE `warehouse_tags` (
  `tag_id` int UNSIGNED NOT NULL,
  `warehouse_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `webhooks`
--

CREATE TABLE `webhooks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `payload_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raw_payload_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_forms`
--

CREATE TABLE `web_forms` (
  `id` int UNSIGNED NOT NULL,
  `form_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `submit_button_label` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `submit_success_action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submit_success_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_lead` tinyint(1) NOT NULL DEFAULT '0',
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_title_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_submit_button_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_label_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `web_forms`
--

INSERT INTO `web_forms` (`id`, `form_id`, `title`, `description`, `submit_button_label`, `submit_success_action`, `submit_success_content`, `create_lead`, `background_color`, `form_background_color`, `form_title_color`, `form_submit_button_color`, `attribute_label_color`, `created_at`, `updated_at`) VALUES
(1, '0xHD4xo37OgNZvz5l40w2dVdV5VyEg9qUwuLTXvueYLBYG7jYZ', 'Form Person', 'untuk get data person', 'Kirim data', 'message', 'Lorem', 0, '#F7F8F9', '#FFFFFF', '#263238', '#0E90D9', '#546E7A', '2025-01-06 03:14:32', '2025-01-06 03:14:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_form_attributes`
--

CREATE TABLE `web_form_attributes` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int DEFAULT NULL,
  `attribute_id` int UNSIGNED NOT NULL,
  `web_form_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `web_form_attributes`
--

INSERT INTO `web_form_attributes` (`id`, `name`, `placeholder`, `is_required`, `is_hidden`, `sort_order`, `attribute_id`, `web_form_id`) VALUES
(1, 'Name', '', 0, 0, NULL, 28, 1),
(2, 'Emails', '', 0, 0, NULL, 29, 1),
(3, 'Contact Numbers', '', 0, 0, NULL, 30, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `workflows`
--

CREATE TABLE `workflows` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'and',
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `actions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data untuk tabel `workflows`
--

INSERT INTO `workflows` (`id`, `name`, `description`, `entity_type`, `event`, `condition_type`, `conditions`, `actions`, `created_at`, `updated_at`) VALUES
(1, 'Emails to participants after activity creation', 'Emails to participants after activity creation', 'activities', 'activity.create.after', 'and', '[{\"value\": [\"call\", \"meeting\", \"lunch\"], \"operator\": \"{}\", \"attribute\": \"type\", \"attribute_type\": \"multiselect\"}]', '[{\"id\": \"send_email_to_participants\", \"value\": \"1\"}]', '2025-01-05 16:12:40', '2025-01-05 16:12:40'),
(2, 'Emails to participants after activity updation', 'Emails to participants after activity updation', 'activities', 'activity.update.after', 'and', '[{\"value\": [\"call\", \"meeting\", \"lunch\"], \"operator\": \"{}\", \"attribute\": \"type\", \"attribute_type\": \"multiselect\"}]', '[{\"id\": \"send_email_to_participants\", \"value\": \"2\"}]', '2025-01-05 16:12:40', '2025-01-05 16:12:40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `activity_files`
--
ALTER TABLE `activity_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_files_activity_id_foreign` (`activity_id`);

--
-- Indeks untuk tabel `activity_participants`
--
ALTER TABLE `activity_participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_participants_activity_id_foreign` (`activity_id`),
  ADD KEY `activity_participants_user_id_foreign` (`user_id`),
  ADD KEY `activity_participants_person_id_foreign` (`person_id`);

--
-- Indeks untuk tabel `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_code_entity_type_unique` (`code`,`entity_type`);

--
-- Indeks untuk tabel `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_options_attribute_id_foreign` (`attribute_id`);

--
-- Indeks untuk tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `entity_type_attribute_value_index_unique` (`entity_type`,`entity_id`,`attribute_id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indeks untuk tabel `core_config`
--
ALTER TABLE `core_config`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `country_states`
--
ALTER TABLE `country_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_states_country_id_foreign` (`country_id`);

--
-- Indeks untuk tabel `datagrid_saved_filters`
--
ALTER TABLE `datagrid_saved_filters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `datagrid_saved_filters_user_id_name_src_unique` (`user_id`,`name`,`src`);

--
-- Indeks untuk tabel `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emails_message_id_unique` (`message_id`),
  ADD UNIQUE KEY `emails_unique_id_unique` (`unique_id`),
  ADD KEY `emails_person_id_foreign` (`person_id`),
  ADD KEY `emails_lead_id_foreign` (`lead_id`),
  ADD KEY `emails_parent_id_foreign` (`parent_id`);

--
-- Indeks untuk tabel `email_attachments`
--
ALTER TABLE `email_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_attachments_email_id_foreign` (`email_id`);

--
-- Indeks untuk tabel `email_tags`
--
ALTER TABLE `email_tags`
  ADD KEY `email_tags_tag_id_foreign` (`tag_id`),
  ADD KEY `email_tags_email_id_foreign` (`email_id`);

--
-- Indeks untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_name_unique` (`name`);

--
-- Indeks untuk tabel `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_user_id_foreign` (`user_id`),
  ADD KEY `leads_person_id_foreign` (`person_id`),
  ADD KEY `leads_lead_source_id_foreign` (`lead_source_id`),
  ADD KEY `leads_lead_type_id_foreign` (`lead_type_id`),
  ADD KEY `leads_lead_pipeline_id_foreign` (`lead_pipeline_id`),
  ADD KEY `leads_lead_pipeline_stage_id_foreign` (`lead_pipeline_stage_id`);

--
-- Indeks untuk tabel `lead_activities`
--
ALTER TABLE `lead_activities`
  ADD KEY `lead_activities_activity_id_foreign` (`activity_id`),
  ADD KEY `lead_activities_lead_id_foreign` (`lead_id`);

--
-- Indeks untuk tabel `lead_pipelines`
--
ALTER TABLE `lead_pipelines`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lead_pipeline_stages`
--
ALTER TABLE `lead_pipeline_stages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lead_pipeline_stages_code_lead_pipeline_id_unique` (`code`,`lead_pipeline_id`),
  ADD UNIQUE KEY `lead_pipeline_stages_name_lead_pipeline_id_unique` (`name`,`lead_pipeline_id`),
  ADD KEY `lead_pipeline_stages_lead_pipeline_id_foreign` (`lead_pipeline_id`);

--
-- Indeks untuk tabel `lead_products`
--
ALTER TABLE `lead_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_products_lead_id_foreign` (`lead_id`),
  ADD KEY `lead_products_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `lead_quotes`
--
ALTER TABLE `lead_quotes`
  ADD KEY `lead_quotes_quote_id_foreign` (`quote_id`),
  ADD KEY `lead_quotes_lead_id_foreign` (`lead_id`);

--
-- Indeks untuk tabel `lead_sources`
--
ALTER TABLE `lead_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lead_stages`
--
ALTER TABLE `lead_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lead_tags`
--
ALTER TABLE `lead_tags`
  ADD KEY `lead_tags_tag_id_foreign` (`tag_id`),
  ADD KEY `lead_tags_lead_id_foreign` (`lead_id`);

--
-- Indeks untuk tabel `lead_types`
--
ALTER TABLE `lead_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_name_unique` (`name`),
  ADD KEY `organizations_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persons_organization_id_foreign` (`organization_id`),
  ADD KEY `persons_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `person_activities`
--
ALTER TABLE `person_activities`
  ADD KEY `person_activities_activity_id_foreign` (`activity_id`),
  ADD KEY `person_activities_person_id_foreign` (`person_id`);

--
-- Indeks untuk tabel `person_tags`
--
ALTER TABLE `person_tags`
  ADD KEY `person_tags_tag_id_foreign` (`tag_id`),
  ADD KEY `person_tags_person_id_foreign` (`person_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_activities`
--
ALTER TABLE `product_activities`
  ADD KEY `product_activities_activity_id_foreign` (`activity_id`),
  ADD KEY `product_activities_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_inventories_product_id_foreign` (`product_id`),
  ADD KEY `product_inventories_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `product_inventories_warehouse_location_id_foreign` (`warehouse_location_id`);

--
-- Indeks untuk tabel `product_tags`
--
ALTER TABLE `product_tags`
  ADD KEY `product_tags_tag_id_foreign` (`tag_id`),
  ADD KEY `product_tags_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotes_person_id_foreign` (`person_id`),
  ADD KEY `quotes_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `quote_items`
--
ALTER TABLE `quote_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quote_items_quote_id_foreign` (`quote_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `technician_activities`
--
ALTER TABLE `technician_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `technician_activities_organization_id_foreign` (`organization_id`),
  ADD KEY `technician_activities_person_id_foreign` (`person_id`),
  ADD KEY `technician_activities_product_id_foreign` (`product_id`),
  ADD KEY `technician_activities_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `user_groups`
--
ALTER TABLE `user_groups`
  ADD KEY `user_groups_group_id_foreign` (`group_id`),
  ADD KEY `user_groups_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `user_password_resets`
--
ALTER TABLE `user_password_resets`
  ADD KEY `user_password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `warehouse_activities`
--
ALTER TABLE `warehouse_activities`
  ADD KEY `warehouse_activities_activity_id_foreign` (`activity_id`),
  ADD KEY `warehouse_activities_warehouse_id_foreign` (`warehouse_id`);

--
-- Indeks untuk tabel `warehouse_locations`
--
ALTER TABLE `warehouse_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `warehouse_locations_warehouse_id_name_unique` (`warehouse_id`,`name`);

--
-- Indeks untuk tabel `warehouse_tags`
--
ALTER TABLE `warehouse_tags`
  ADD KEY `warehouse_tags_tag_id_foreign` (`tag_id`),
  ADD KEY `warehouse_tags_warehouse_id_foreign` (`warehouse_id`);

--
-- Indeks untuk tabel `webhooks`
--
ALTER TABLE `webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_forms`
--
ALTER TABLE `web_forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_forms_form_id_unique` (`form_id`);

--
-- Indeks untuk tabel `web_form_attributes`
--
ALTER TABLE `web_form_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `web_form_attributes_attribute_id_foreign` (`attribute_id`),
  ADD KEY `web_form_attributes_web_form_id_foreign` (`web_form_id`);

--
-- Indeks untuk tabel `workflows`
--
ALTER TABLE `workflows`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `activity_files`
--
ALTER TABLE `activity_files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `activity_participants`
--
ALTER TABLE `activity_participants`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `core_config`
--
ALTER TABLE `core_config`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT untuk tabel `country_states`
--
ALTER TABLE `country_states`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=569;

--
-- AUTO_INCREMENT untuk tabel `datagrid_saved_filters`
--
ALTER TABLE `datagrid_saved_filters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `email_attachments`
--
ALTER TABLE `email_attachments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `lead_pipelines`
--
ALTER TABLE `lead_pipelines`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `lead_pipeline_stages`
--
ALTER TABLE `lead_pipeline_stages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `lead_products`
--
ALTER TABLE `lead_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `lead_sources`
--
ALTER TABLE `lead_sources`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `lead_stages`
--
ALTER TABLE `lead_stages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lead_types`
--
ALTER TABLE `lead_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=922;

--
-- AUTO_INCREMENT untuk tabel `product_inventories`
--
ALTER TABLE `product_inventories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `quote_items`
--
ALTER TABLE `quote_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `technician_activities`
--
ALTER TABLE `technician_activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `warehouse_locations`
--
ALTER TABLE `warehouse_locations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `webhooks`
--
ALTER TABLE `webhooks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `web_forms`
--
ALTER TABLE `web_forms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `web_form_attributes`
--
ALTER TABLE `web_form_attributes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `workflows`
--
ALTER TABLE `workflows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `activity_files`
--
ALTER TABLE `activity_files`
  ADD CONSTRAINT `activity_files_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `activity_participants`
--
ALTER TABLE `activity_participants`
  ADD CONSTRAINT `activity_participants_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activity_participants_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activity_participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `country_states`
--
ALTER TABLE `country_states`
  ADD CONSTRAINT `country_states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `emails`
--
ALTER TABLE `emails`
  ADD CONSTRAINT `emails_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `emails_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `emails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `emails_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `email_attachments`
--
ALTER TABLE `email_attachments`
  ADD CONSTRAINT `email_attachments_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `email_tags`
--
ALTER TABLE `email_tags`
  ADD CONSTRAINT `email_tags_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `email_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `leads`
--
ALTER TABLE `leads`
  ADD CONSTRAINT `leads_lead_pipeline_id_foreign` FOREIGN KEY (`lead_pipeline_id`) REFERENCES `lead_pipelines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leads_lead_pipeline_stage_id_foreign` FOREIGN KEY (`lead_pipeline_stage_id`) REFERENCES `lead_pipeline_stages` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `leads_lead_source_id_foreign` FOREIGN KEY (`lead_source_id`) REFERENCES `lead_sources` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leads_lead_type_id_foreign` FOREIGN KEY (`lead_type_id`) REFERENCES `lead_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leads_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lead_activities`
--
ALTER TABLE `lead_activities`
  ADD CONSTRAINT `lead_activities_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lead_activities_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lead_pipeline_stages`
--
ALTER TABLE `lead_pipeline_stages`
  ADD CONSTRAINT `lead_pipeline_stages_lead_pipeline_id_foreign` FOREIGN KEY (`lead_pipeline_id`) REFERENCES `lead_pipelines` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lead_products`
--
ALTER TABLE `lead_products`
  ADD CONSTRAINT `lead_products_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lead_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lead_quotes`
--
ALTER TABLE `lead_quotes`
  ADD CONSTRAINT `lead_quotes_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lead_quotes_quote_id_foreign` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lead_tags`
--
ALTER TABLE `lead_tags`
  ADD CONSTRAINT `lead_tags_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lead_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `persons`
--
ALTER TABLE `persons`
  ADD CONSTRAINT `persons_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `persons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `person_activities`
--
ALTER TABLE `person_activities`
  ADD CONSTRAINT `person_activities_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `person_activities_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `person_tags`
--
ALTER TABLE `person_tags`
  ADD CONSTRAINT `person_tags_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `person_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_activities`
--
ALTER TABLE `product_activities`
  ADD CONSTRAINT `product_activities_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_activities_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD CONSTRAINT `product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventories_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventories_warehouse_location_id_foreign` FOREIGN KEY (`warehouse_location_id`) REFERENCES `warehouse_locations` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `quotes_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quotes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `quote_items`
--
ALTER TABLE `quote_items`
  ADD CONSTRAINT `quote_items_quote_id_foreign` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `technician_activities`
--
ALTER TABLE `technician_activities`
  ADD CONSTRAINT `technician_activities_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `technician_activities_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `technician_activities_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `technician_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_groups`
--
ALTER TABLE `user_groups`
  ADD CONSTRAINT `user_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_groups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `warehouse_activities`
--
ALTER TABLE `warehouse_activities`
  ADD CONSTRAINT `warehouse_activities_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `warehouse_activities_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `warehouse_locations`
--
ALTER TABLE `warehouse_locations`
  ADD CONSTRAINT `warehouse_locations_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `warehouse_tags`
--
ALTER TABLE `warehouse_tags`
  ADD CONSTRAINT `warehouse_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `warehouse_tags_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `web_form_attributes`
--
ALTER TABLE `web_form_attributes`
  ADD CONSTRAINT `web_form_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `web_form_attributes_web_form_id_foreign` FOREIGN KEY (`web_form_id`) REFERENCES `web_forms` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
