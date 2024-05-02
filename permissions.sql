-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 01:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vtwqxdhrrr`
--

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'service.manage', 'web', '2022-12-08 19:07:40', '2022-12-08 19:07:40'),
(3, 'dashboard.dashboard', 'web', NULL, NULL),
(11, 'operator.manage', 'web', NULL, NULL),
(12, 'category.manage', 'web', '2022-12-24 03:35:27', '2022-12-24 03:35:27'),
(13, 'attribute.manage', 'web', '2022-12-24 03:35:27', '2022-12-24 03:35:27'),
(15, 'blogcategory.manage', 'web', '2022-12-24 15:33:56', '2022-12-24 15:33:56'),
(16, 'blog.manage', 'web', '2022-12-24 15:33:56', '2022-12-24 15:33:56'),
(17, 'addon.manage', 'web', NULL, NULL),
(18, 'service.create', 'web', '2023-01-11 16:52:00', '2023-01-11 16:52:00'),
(19, 'customer.manage', 'web', '2023-02-14 23:49:05', '2023-02-14 23:49:05'),
(23, 'service.edit', 'web', NULL, NULL),
(24, 'service.delete', 'web', NULL, NULL),
(25, 'operator.create', 'web', NULL, NULL),
(26, 'operator.edit', 'web', NULL, NULL),
(27, 'operator.delete', 'web', NULL, NULL),
(28, 'category.create', 'web', NULL, NULL),
(29, 'category.edit', 'web', NULL, NULL),
(30, 'category.delete', 'web', NULL, NULL),
(31, 'subcategory.manage', 'web', NULL, NULL),
(32, 'subcategory.create', 'web', NULL, NULL),
(33, 'subcategory.edit', 'web', NULL, NULL),
(34, 'subcategory.delete', 'web', NULL, NULL),
(35, 'childcategory.manage', 'web', NULL, NULL),
(36, 'childcategory.create', 'web', NULL, NULL),
(37, 'childcategory.edit', 'web', NULL, NULL),
(38, 'childcategory.delete', 'web', NULL, NULL),
(39, 'attribute.create', 'web', NULL, NULL),
(40, 'attribute.edit', 'web', NULL, NULL),
(41, 'attribute.delete', 'web', NULL, NULL),
(45, 'addon.create', 'web', NULL, NULL),
(46, 'addon.edit', 'web', NULL, NULL),
(47, 'addon.delete', 'web', NULL, NULL),
(48, 'blogcategory.create', 'web', NULL, NULL),
(49, 'blogcategory.edit', 'web', NULL, NULL),
(50, 'blogcategory.delete', 'web', NULL, NULL),
(51, 'blog.create', 'web', NULL, NULL),
(52, 'blog.edit', 'web', NULL, NULL),
(53, 'blog.delete', 'web', NULL, NULL),
(54, 'master.slot', 'web', NULL, NULL),
(57, 'customer.verfiy', 'web', NULL, NULL),
(58, 'customer.edit', 'web', NULL, NULL),
(60, 'vendor.manage', 'web', NULL, NULL),
(61, 'booking.manage', 'web', NULL, NULL),
(62, 'coupon.manage', 'web', NULL, NULL),
(63, 'notification.manage', 'web', NULL, NULL),
(64, 'report.manage', 'web', NULL, NULL),
(65, 'partner.report', 'web', NULL, NULL),
(66, 'customer.report', 'web', NULL, NULL),
(67, 'revenue.report', 'web', NULL, NULL),
(68, 'settlement.report', 'web', NULL, NULL),
(69, 'setting.manage', 'web', NULL, NULL),
(70, 'customer.setting', 'web', NULL, NULL),
(71, 'vendor.setting', 'web', NULL, NULL),
(72, 'home.setting', 'web', NULL, NULL),
(73, 'admin.setting', 'web', NULL, NULL),
(74, 'web.setting', 'web', NULL, NULL),
(75, 'operator.verify', 'web', NULL, NULL),
(76, 'vendor.verfiy', 'web', NULL, NULL),
(77, 'vendor.details', 'web', NULL, NULL),
(78, 'vendor.view', 'web', NULL, NULL),
(79, 'vendor.edit', 'web', NULL, NULL),
(80, 'vendor.delete', 'web', NULL, NULL),
(81, 'service.attributes', 'web', NULL, NULL),
(82, 'slot.create', 'web', NULL, NULL),
(83, 'slot.edit', 'web', NULL, NULL),
(84, 'slot.delete', 'web', NULL, NULL),
(85, 'attribute.value', 'web', NULL, NULL),
(86, 'booking.draf', 'web', NULL, NULL),
(87, 'booking.vendor.change', 'web', NULL, NULL),
(88, 'booking.view', 'web', NULL, NULL),
(89, 'booking.delete', 'web', NULL, NULL),
(90, 'booking.cancel', 'web', NULL, NULL),
(91, 'coupon.create', 'web', NULL, NULL),
(92, 'coupon.change.status', 'web', NULL, NULL),
(93, 'coupon.delete', 'web', NULL, NULL),
(94, 'notification.send.vendor', 'web', NULL, NULL),
(95, 'notification.send.customer', 'web', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
