-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2021 at 08:37 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `template`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `short_description`, `long_description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'test', NULL, '<p>sdfsdf</p>', '1615702538.jpg', '2021-03-14 00:45:38', '2021-03-14 00:45:38'),
(2, 'test 2', '<p>sort</p>', '<p>fdfdf</p>', '1616397646.jpg', '2021-03-22 01:50:48', '2021-04-01 09:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `admin_types`
--

CREATE TABLE `admin_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_types`
--

INSERT INTO `admin_types` (`id`, `type`, `name`, `is_delete`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'Super Admin', 0, 1, '2021-03-14 02:37:00', '2021-03-14 02:37:00'),
(2, 'admin', 'Admin', 0, 1, '2021-03-14 02:37:19', '2021-03-14 02:37:19'),
(4, 'test', 'test update', 0, 1, '2021-03-23 01:17:29', '2021-03-23 01:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to Service.com', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi saepe, quam quas molestiae aperiam libero, cum iste numquam voluptas autem recusandae corporis ad eligendi beatae ut nulla porro a doloremque!</p><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi saepe, quam quas molestiae aperiam libero, cum iste numquam voluptas autem recusandae corporis ad eligendi beatae ut nulla porro a doloremque!</p>', '1617367379.jpg', 1, 0, '2021-04-02 07:13:00', '2021-04-02 07:15:37'),
(2, 'Lorem ipsum dolor', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi saepe, quam quas molestiae aperiam libero, cum iste numquam voluptas autem recusandae corporis ad eligendi beatae ut nulla porro a doloremque!</p><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi saepe, quam quas molestiae aperiam libero, cum iste numquam voluptas autem recusandae corporis ad eligendi beatae ut nulla porro a doloremque!</p>', '1617367594.jpg', 1, 0, '2021-04-02 07:16:34', '2021-04-02 07:16:34'),
(3, 'Lorem ipsum dolor', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi saepe, quam quas molestiae aperiam libero, cum iste numquam voluptas autem recusandae corporis ad eligendi beatae ut nulla porro a doloremque!</p><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi saepe, quam quas molestiae aperiam libero, cum iste numquam voluptas autem recusandae corporis ad eligendi beatae ut nulla porro a doloremque!</p>', '1617367624.jpg', 1, 0, '2021-04-02 07:17:04', '2021-04-02 07:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `image`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'test', '<p>test dfdf</p>', '1616500764.jpg', 1, 1, '2021-03-23 06:29:25', '2021-04-01 11:18:45'),
(2, 'sdfsdd', '<p>jkjkkj</p>', '1617294419.jpg', 1, 0, '2021-04-01 10:56:59', '2021-04-01 10:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descrition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insta_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `email`, `mobile_no`, `address`, `description`, `map`, `fb_link`, `insta_link`, `twitter_link`, `linkedin_link`, `created_at`, `updated_at`) VALUES
(1, 'bhajgotar8918514@gmail.com', '8866385319', '<p>rajkot</p>', NULL, NULL, 'facebook.com', NULL, NULL, NULL, '2021-03-23 06:25:07', '2021-03-23 06:25:07');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calling_code` int(11) NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezones` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currencie_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currencie_code_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_flag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alpha_2_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alpha_3_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `calling_code`, `lat`, `lng`, `timezones`, `currencie_code`, `currencie_code_name`, `country_flag`, `alpha_2_code`, `alpha_3_code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 93, '33', '65', 'UTC+04:30', 'AFN', 'Afghan afghani', 'https://restcountries.eu/data/afg.svg', 'AF', 'AFG', '2021-03-25 05:14:51', '2021-03-25 08:13:52'),
(2, 'Armenia', 374, '40', '45', 'UTC+04:00', 'AMD', 'Armenian dram', 'https://restcountries.eu/data/arm.svg', 'AM', 'ARM', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(3, 'Azerbaijan', 994, '40.5', '47.5', 'UTC+04:00', 'AZN', 'Azerbaijani manat', 'https://restcountries.eu/data/aze.svg', 'AZ', 'AZE', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(4, 'Bahrain', 973, '26', '50.55', 'UTC+03:00', 'BHD', 'Bahraini dinar', 'https://restcountries.eu/data/bhr.svg', 'BH', 'BHR', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(5, 'Bangladesh', 880, '24', '90', 'UTC+06:00', 'BDT', 'Bangladeshi taka', 'https://restcountries.eu/data/bgd.svg', 'BD', 'BGD', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(6, 'Bhutan', 975, '27.5', '90.5', 'UTC+06:00', 'BTN', 'Bhutanese ngultrum', 'https://restcountries.eu/data/btn.svg', 'BT', 'BTN', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(7, 'Brunei Darussalam', 673, '4.5', '114.66666666', 'UTC+08:00', 'BND', 'Brunei dollar', 'https://restcountries.eu/data/brn.svg', 'BN', 'BRN', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(8, 'Cambodia', 855, '13', '105', 'UTC+07:00', 'KHR', 'Cambodian riel', 'https://restcountries.eu/data/khm.svg', 'KH', 'KHM', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(9, 'China', 86, '35', '105', 'UTC+08:00', 'CNY', 'Chinese yuan', 'https://restcountries.eu/data/chn.svg', 'CN', 'CHN', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(10, 'Georgia', 995, '42', '43.5', 'UTC-05:00', 'GEL', 'Georgian Lari', 'https://restcountries.eu/data/geo.svg', 'GE', 'GEO', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(11, 'Hong Kong', 852, '22.25', '114.16666666', 'UTC+08:00', 'HKD', 'Hong Kong dollar', 'https://restcountries.eu/data/hkg.svg', 'HK', 'HKG', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(12, 'India', 91, '20', '77', 'UTC+05:30', 'INR', 'Indian rupee', 'https://restcountries.eu/data/ind.svg', 'IN', 'IND', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(13, 'Indonesia', 62, '-5', '120', 'UTC+07:00', 'IDR', 'Indonesian rupiah', 'https://restcountries.eu/data/idn.svg', 'ID', 'IDN', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(14, 'Iran (Islamic Republic of)', 98, '32', '53', 'UTC+03:30', 'IRR', 'Iranian rial', 'https://restcountries.eu/data/irn.svg', 'IR', 'IRN', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(15, 'Iraq', 964, '33', '44', 'UTC+03:00', 'IQD', 'Iraqi dinar', 'https://restcountries.eu/data/irq.svg', 'IQ', 'IRQ', '2021-03-25 05:14:52', '2021-03-25 05:14:52'),
(16, 'Israel', 972, '31.5', '34.75', 'UTC+02:00', 'ILS', 'Israeli new shekel', 'https://restcountries.eu/data/isr.svg', 'IL', 'ISR', '2021-03-25 05:14:53', '2021-03-25 05:14:53'),
(17, 'Japan', 81, '36', '138', 'UTC+09:00', 'JPY', 'Japanese yen', 'https://restcountries.eu/data/jpn.svg', 'JP', 'JPN', '2021-03-25 05:14:53', '2021-03-25 05:14:53'),
(18, 'Jordan', 962, '31', '36', 'UTC+03:00', 'JOD', 'Jordanian dinar', 'https://restcountries.eu/data/jor.svg', 'JO', 'JOR', '2021-03-25 05:14:53', '2021-03-25 05:14:53'),
(19, 'Kazakhstan', 76, '48', '68', 'UTC+05:00', 'KZT', 'Kazakhstani tenge', 'https://restcountries.eu/data/kaz.svg', 'KZ', 'KAZ', '2021-03-25 05:14:53', '2021-03-25 05:14:53'),
(20, 'Kuwait', 965, '29.5', '45.75', 'UTC+03:00', 'KWD', 'Kuwaiti dinar', 'https://restcountries.eu/data/kwt.svg', 'KW', 'KWT', '2021-03-25 05:14:53', '2021-03-25 05:14:53'),
(21, 'Kyrgyzstan', 996, '41', '75', 'UTC+06:00', 'KGS', 'Kyrgyzstani som', 'https://restcountries.eu/data/kgz.svg', 'KG', 'KGZ', '2021-03-25 05:14:53', '2021-03-25 05:14:53'),
(22, 'Lao People\'s Democratic Republic', 856, '18', '105', 'UTC+07:00', 'LAK', 'Lao kip', 'https://restcountries.eu/data/lao.svg', 'LA', 'LAO', '2021-03-25 05:14:53', '2021-03-25 05:14:53'),
(23, 'Lebanon', 961, '33.83333333', '35.83333333', 'UTC+02:00', 'LBP', 'Lebanese pound', 'https://restcountries.eu/data/lbn.svg', 'LB', 'LBN', '2021-03-25 05:14:53', '2021-03-25 05:14:53'),
(24, 'Macao', 853, '22.16666666', '113.55', 'UTC+08:00', 'MOP', 'Macanese pataca', 'https://restcountries.eu/data/mac.svg', 'MO', 'MAC', '2021-03-25 05:14:53', '2021-03-25 05:14:53'),
(25, 'Malaysia', 60, '2.5', '112.5', 'UTC+08:00', 'MYR', 'Malaysian ringgit', 'https://restcountries.eu/data/mys.svg', 'MY', 'MYS', '2021-03-25 05:14:53', '2021-03-25 05:14:53'),
(26, 'Maldives', 960, '3.25', '73', 'UTC+05:00', 'MVR', 'Maldivian rufiyaa', 'https://restcountries.eu/data/mdv.svg', 'MV', 'MDV', '2021-03-25 05:14:53', '2021-03-25 05:14:53'),
(27, 'Mongolia', 976, '46', '105', 'UTC+07:00', 'MNT', 'Mongolian tögrög', 'https://restcountries.eu/data/mng.svg', 'MN', 'MNG', '2021-03-25 05:14:53', '2021-03-25 05:14:53'),
(28, 'Myanmar', 95, '22', '98', 'UTC+06:30', 'MMK', 'Burmese kyat', 'https://restcountries.eu/data/mmr.svg', 'MM', 'MMR', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(29, 'Nepal', 977, '28', '84', 'UTC+05:45', 'NPR', 'Nepalese rupee', 'https://restcountries.eu/data/npl.svg', 'NP', 'NPL', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(30, 'Korea (Democratic People\'s Republic of)', 850, '40', '127', 'UTC+09:00', 'KPW', 'North Korean won', 'https://restcountries.eu/data/prk.svg', 'KP', 'PRK', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(31, 'Oman', 968, '21', '57', 'UTC+04:00', 'OMR', 'Omani rial', 'https://restcountries.eu/data/omn.svg', 'OM', 'OMN', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(32, 'Pakistan', 92, '30', '70', 'UTC+05:00', 'PKR', 'Pakistani rupee', 'https://restcountries.eu/data/pak.svg', 'PK', 'PAK', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(33, 'Palestine, State of', 970, '31.9', '35.2', 'UTC+02:00', 'ILS', 'Israeli new sheqel', 'https://restcountries.eu/data/pse.svg', 'PS', 'PSE', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(34, 'Philippines', 63, '13', '122', 'UTC+08:00', 'PHP', 'Philippine peso', 'https://restcountries.eu/data/phl.svg', 'PH', 'PHL', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(35, 'Qatar', 974, '25.5', '51.25', 'UTC+03:00', 'QAR', 'Qatari riyal', 'https://restcountries.eu/data/qat.svg', 'QA', 'QAT', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(36, 'Saudi Arabia', 966, '25', '45', 'UTC+03:00', 'SAR', 'Saudi riyal', 'https://restcountries.eu/data/sau.svg', 'SA', 'SAU', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(37, 'Singapore', 65, '1.36666666', '103.8', 'UTC+08:00', 'BND', 'Brunei dollar', 'https://restcountries.eu/data/sgp.svg', 'SG', 'SGP', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(38, 'Korea (Republic of)', 82, '37', '127.5', 'UTC+09:00', 'KRW', 'South Korean won', 'https://restcountries.eu/data/kor.svg', 'KR', 'KOR', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(39, 'Sri Lanka', 94, '7', '81', 'UTC+05:30', 'LKR', 'Sri Lankan rupee', 'https://restcountries.eu/data/lka.svg', 'LK', 'LKA', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(40, 'Syrian Arab Republic', 963, '35', '38', 'UTC+02:00', 'SYP', 'Syrian pound', 'https://restcountries.eu/data/syr.svg', 'SY', 'SYR', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(41, 'Taiwan', 886, '23.5', '121', 'UTC+08:00', 'TWD', 'New Taiwan dollar', 'https://restcountries.eu/data/twn.svg', 'TW', 'TWN', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(42, 'Tajikistan', 992, '39', '71', 'UTC+05:00', 'TJS', 'Tajikistani somoni', 'https://restcountries.eu/data/tjk.svg', 'TJ', 'TJK', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(43, 'Thailand', 66, '15', '100', 'UTC+07:00', 'THB', 'Thai baht', 'https://restcountries.eu/data/tha.svg', 'TH', 'THA', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(44, 'Timor-Leste', 670, '-8.83333333', '125.91666666', 'UTC+09:00', 'USD', 'United States dollar', 'https://restcountries.eu/data/tls.svg', 'TL', 'TLS', '2021-03-25 05:14:54', '2021-03-25 05:14:54'),
(45, 'Turkey', 90, '39', '35', 'UTC+03:00', 'TRY', 'Turkish lira', 'https://restcountries.eu/data/tur.svg', 'TR', 'TUR', '2021-03-25 05:14:55', '2021-03-25 05:14:55'),
(46, 'Turkmenistan', 993, '40', '60', 'UTC+05:00', 'TMT', 'Turkmenistan manat', 'https://restcountries.eu/data/tkm.svg', 'TM', 'TKM', '2021-03-25 05:14:55', '2021-03-25 05:14:55'),
(47, 'United Arab Emirates', 971, '24', '54', 'UTC+04', 'AED', 'United Arab Emirates dirham', 'https://restcountries.eu/data/are.svg', 'AE', 'ARE', '2021-03-25 05:14:55', '2021-03-25 05:14:55'),
(48, 'Uzbekistan', 998, '41', '64', 'UTC+05:00', 'UZS', 'Uzbekistani so\'m', 'https://restcountries.eu/data/uzb.svg', 'UZ', 'UZB', '2021-03-25 05:14:55', '2021-03-25 05:14:55'),
(49, 'Viet Nam', 84, '16.16666666', '107.83333333', 'UTC+07:00', 'VND', 'Vietnamese đồng', 'https://restcountries.eu/data/vnm.svg', 'VN', 'VNM', '2021-03-25 05:14:55', '2021-03-25 05:14:55'),
(50, 'Yemen', 967, '15', '48', 'UTC+03:00', 'YER', 'Yemeni rial', 'https://restcountries.eu/data/yem.svg', 'YE', 'YEM', '2021-03-25 05:14:55', '2021-03-25 05:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_status` int(11) NOT NULL DEFAULT 1,
  `sms_suject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_template` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galaries`
--

CREATE TABLE `galaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galaries`
--

INSERT INTO `galaries` (`id`, `title1`, `title2`, `description`, `image`, `link`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'title1', 'title2', '<p>dfdfdf</p>', '1615274164.jpg', 'link.com', 1, 0, '2021-03-09 01:46:05', '2021-03-09 05:03:02'),
(2, 'test update', NULL, NULL, '1615275188.jpg', NULL, 1, 0, '2021-03-09 02:03:08', '2021-04-01 11:30:56'),
(3, 'fdf', NULL, NULL, '1615275441.jpg', NULL, 1, 0, '2021-03-09 02:07:21', '2021-03-09 03:47:01'),
(4, 'title1', 'title 2', '<p>dfdfsfsdf</p>', '1617295854.jpg', NULL, 1, 0, '2021-04-01 11:20:55', '2021-04-01 11:20:55');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_12_14_154545_create_sessions_table', 1),
(7, '2020_12_20_062748_create_orders_table', 1),
(8, '2020_12_20_063329_create_order_items_table', 1),
(9, '2020_12_20_094507_create_about_us_table', 1),
(10, '2020_12_20_095329_create_contact_us_table', 1),
(12, '2020_12_20_095419_create_galaries_table', 1),
(13, '2020_12_20_095529_create_categories_table', 1),
(14, '2020_12_20_095636_create_testimonials_table', 1),
(15, '2020_12_20_095816_create_products_table', 1),
(16, '2020_12_20_095843_create_blogs_table', 1),
(17, '2020_12_20_100155_create_teams_table', 1),
(18, '2020_12_20_100221_create_faqs_table', 1),
(19, '2020_12_20_100305_create_email_templates_table', 1),
(20, '2020_12_20_100327_create_setings_table', 1),
(23, '2014_10_12_000000_create_users_table', 2),
(27, '2021_03_13_182502_create_admin_types_table', 3),
(28, '2021_03_13_182557_create_permisions_table', 4),
(30, '2021_03_25_094556_create_countries_table', 5),
(31, '2021_03_25_112110_create_states_table', 6),
(32, '2020_12_20_095350_create_banners_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `permisions`
--

CREATE TABLE `permisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_type` int(11) NOT NULL,
  `create` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `update` int(11) NOT NULL DEFAULT 0,
  `delete` int(11) NOT NULL DEFAULT 0,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permisions`
--

INSERT INTO `permisions` (`id`, `admin_type`, `create`, `view`, `update`, `delete`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 0, NULL, '2021-03-20 23:49:14'),
(2, 2, 1, 1, 1, 1, 0, '2021-03-19 07:31:56', '2021-03-23 06:40:45'),
(4, 4, 1, 1, 1, 0, 0, '2021-03-23 01:17:29', '2021-03-23 01:17:29');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `old_price` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `descount` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2ynV3eapbaGJL0thLa9zavKNQnYrHDuu14UJfvJk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTlpY1F1RFM1SUtWcWtSV2gxdFpkeEJOQkh0RXRhNFh0VmplZnkzYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1617431501),
('deRjzqdelYSS56tsK6QtPWhkYjIbIQ34td5fGX37', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiRGxSZTVhU29MY3duSEFLTVNPcWI2aU91MjZVSFAxRFpyYUdLT3R0aCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkc2lORFFsVFlOM3RtU3MuNGt3dWJFZXAvQUVvNU1sQ0lta1kyUXdLRUlZdzVSTkU4djZ5SjYiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHNpTkRRbFRZTjN0bVNzLjRrd3ViRWVwL0FFbzVNbENJbWtZMlF3S0VJWXc1Uk5FOHY2eUo2Ijt9', 1617367668),
('hacnUbSnBI7xP02705187hCEuM4gN9LumXb0tDDh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZjZucm9iTFFRY1RMcUdQdUF0Z0NYZFFOaHl1UHQ3RTV1eUg3VDNMaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fX0=', 1617376728);

-- --------------------------------------------------------

--
-- Table structure for table `setings`
--

CREATE TABLE `setings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_port` int(11) DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fevicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_of_use` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `state_name`, `country_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Badakhshan', 'Afghanistan', '2021-03-25 06:01:28', '2021-03-25 06:01:28'),
(2, 1, 'Badghis', 'Afghanistan', '2021-03-25 06:01:28', '2021-03-25 06:01:28'),
(3, 1, 'Baghlan', 'Afghanistan', '2021-03-25 06:01:28', '2021-03-25 06:01:28'),
(4, 1, 'Balkh', 'Afghanistan', '2021-03-25 06:01:28', '2021-03-25 06:01:28'),
(5, 1, 'Bamian', 'Afghanistan', '2021-03-25 06:01:28', '2021-03-25 06:01:28'),
(6, 1, 'Daykondi', 'Afghanistan', '2021-03-25 06:01:28', '2021-03-25 06:01:28'),
(7, 1, 'Farah', 'Afghanistan', '2021-03-25 06:01:28', '2021-03-25 06:01:28'),
(8, 1, 'Faryab', 'Afghanistan', '2021-03-25 06:01:28', '2021-03-25 06:01:28'),
(9, 1, 'Ghazni', 'Afghanistan', '2021-03-25 06:01:28', '2021-03-25 06:01:28'),
(10, 1, 'Ghowr', 'Afghanistan', '2021-03-25 06:01:28', '2021-03-25 06:01:28'),
(11, 1, 'Helmand', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(12, 1, 'Herat', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(13, 1, 'Jowzjan', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(14, 1, 'Kabul', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(15, 1, 'Kandahar', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(16, 1, 'Kapisa', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(17, 1, 'Khost', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(18, 1, 'Konar', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(19, 1, 'Kondoz', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(20, 1, 'Laghman', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(21, 1, 'Lowgar', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(22, 1, 'Nangarhar', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(23, 1, 'Nimruz', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(24, 1, 'Nurestan', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(25, 1, 'Oruzgan', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(26, 1, 'Paktia', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(27, 1, 'Paktika', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(28, 1, 'Panjshir', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(29, 1, 'Parvan', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(30, 1, 'Samangan', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(31, 1, 'Sar-e Pol', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(32, 1, 'Takhar', 'Afghanistan', '2021-03-25 06:01:29', '2021-03-25 06:01:29'),
(33, 1, 'Vardak', 'Afghanistan', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(34, 1, 'Zabol', 'Afghanistan', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(35, 2, 'Aragatsotn', 'Armenia', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(36, 2, 'Ararat', 'Armenia', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(37, 2, 'Armavir', 'Armenia', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(38, 2, 'Geghark\'unik\'', 'Armenia', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(39, 2, 'Kotayk\'', 'Armenia', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(40, 2, 'Lorri', 'Armenia', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(41, 2, 'Shirak', 'Armenia', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(42, 2, 'Syunik\'', 'Armenia', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(43, 2, 'Tavush', 'Armenia', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(44, 2, 'Vayots\' Dzor', 'Armenia', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(45, 2, 'Yerevan', 'Armenia', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(46, 3, 'Abseron Rayonu', 'Azerbaijan', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(47, 3, 'Agcabadi Rayonu', 'Azerbaijan', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(48, 3, 'Agdam Rayonu', 'Azerbaijan', '2021-03-25 06:01:30', '2021-03-25 06:01:30'),
(49, 3, 'Agdas Rayonu', 'Azerbaijan', '2021-03-25 06:01:31', '2021-03-25 06:01:31'),
(50, 3, 'Agstafa Rayonu', 'Azerbaijan', '2021-03-25 06:01:31', '2021-03-25 06:01:31'),
(51, 3, 'Agsu Rayonu', 'Azerbaijan', '2021-03-25 06:01:31', '2021-03-25 06:01:31'),
(52, 3, 'Astara Rayonu', 'Azerbaijan', '2021-03-25 06:01:31', '2021-03-25 06:01:31'),
(53, 3, 'Balakan Rayonu', 'Azerbaijan', '2021-03-25 06:01:31', '2021-03-25 06:01:31'),
(54, 3, 'Barda Rayonu', 'Azerbaijan', '2021-03-25 06:01:31', '2021-03-25 06:01:31'),
(55, 3, 'Beylaqan Rayonu', 'Azerbaijan', '2021-03-25 06:01:31', '2021-03-25 06:01:31'),
(56, 3, 'Bilasuvar Rayonu', 'Azerbaijan', '2021-03-25 06:01:31', '2021-03-25 06:01:31'),
(57, 3, 'Cabrayil Rayonu', 'Azerbaijan', '2021-03-25 06:01:31', '2021-03-25 06:01:31'),
(58, 3, 'Calilabad Rayonu', 'Azerbaijan', '2021-03-25 06:01:31', '2021-03-25 06:01:31'),
(59, 3, 'Daskasan Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(60, 3, 'Davaci Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(61, 3, 'Fuzuli Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(62, 3, 'Gadabay Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(63, 3, 'Goranboy Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(64, 3, 'Goycay Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(65, 3, 'Haciqabul Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(66, 3, 'Imisli Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(67, 3, 'Ismayilli Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(68, 3, 'Kalbacar Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(69, 3, 'Kurdamir Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(70, 3, 'Lacin Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(71, 3, 'Lankaran Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(72, 3, 'Lerik Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(73, 3, 'Masalli Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(74, 3, 'Neftcala Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(75, 3, 'Oguz Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(76, 3, 'Qabala Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(77, 3, 'Qax Rayonu', 'Azerbaijan', '2021-03-25 06:01:32', '2021-03-25 06:01:32'),
(78, 3, 'Qazax Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(79, 3, 'Qobustan Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(80, 3, 'Quba Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(81, 3, 'Qubadli Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(82, 3, 'Qusar Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(83, 3, 'Saatli Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(84, 3, 'Sabirabad Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(85, 3, 'Saki Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(86, 3, 'Salyan Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(87, 3, 'Samaxi Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(88, 3, 'Samkir Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(89, 3, 'Samux Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(90, 3, 'Siyazan Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(91, 3, 'Susa Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(92, 3, 'Tartar Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(93, 3, 'Tovuz Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(94, 3, 'Ucar Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(95, 3, 'Xacmaz Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(96, 3, 'Xanlar Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(97, 3, 'Xizi Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(98, 3, 'Xocali Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(99, 3, 'Xocavand Rayonu', 'Azerbaijan', '2021-03-25 06:01:33', '2021-03-25 06:01:33'),
(100, 3, 'Yardimli Rayonu', 'Azerbaijan', '2021-03-25 06:01:34', '2021-03-25 06:01:34'),
(101, 3, 'Yevlax Rayonu', 'Azerbaijan', '2021-03-25 06:01:34', '2021-03-25 06:01:34'),
(102, 3, 'Zangilan Rayonu', 'Azerbaijan', '2021-03-25 06:01:34', '2021-03-25 06:01:34'),
(103, 3, 'Zaqatala Rayonu', 'Azerbaijan', '2021-03-25 06:01:34', '2021-03-25 06:01:34'),
(104, 3, 'Zardab Rayonu', 'Azerbaijan', '2021-03-25 06:01:34', '2021-03-25 06:01:34'),
(105, 3, 'Ali Bayramli Sahari', 'Azerbaijan', '2021-03-25 06:01:34', '2021-03-25 06:01:34'),
(106, 3, 'Baki Sahari', 'Azerbaijan', '2021-03-25 06:01:34', '2021-03-25 06:01:34'),
(107, 3, 'Ganca Sahari', 'Azerbaijan', '2021-03-25 06:01:34', '2021-03-25 06:01:34'),
(108, 3, 'Lankaran Sahari', 'Azerbaijan', '2021-03-25 06:01:34', '2021-03-25 06:01:34'),
(109, 3, 'Mingacevir Sahari', 'Azerbaijan', '2021-03-25 06:01:34', '2021-03-25 06:01:34'),
(110, 3, 'Naftalan Sahari', 'Azerbaijan', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(111, 3, 'Saki Sahari', 'Azerbaijan', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(112, 3, 'Sumqayit Sahari', 'Azerbaijan', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(113, 3, 'Susa Sahari', 'Azerbaijan', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(114, 3, 'Xankandi Sahari', 'Azerbaijan', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(115, 3, 'Yevlax Sahari', 'Azerbaijan', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(116, 3, 'Naxcivan Muxtar', 'Azerbaijan', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(117, 4, 'Al Hadd', 'Bahrain', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(118, 4, 'Al Manamah', 'Bahrain', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(119, 4, 'Al Mintaqah al Gharbiyah', 'Bahrain', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(120, 4, 'Al Mintaqah al Wusta', 'Bahrain', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(121, 4, 'Al Mintaqah ash Shamaliyah', 'Bahrain', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(122, 4, 'Al Muharraq', 'Bahrain', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(123, 4, 'Ar Rifa\' wa al Mintaqah al Janubiyah', 'Bahrain', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(124, 4, 'Jidd Hafs', 'Bahrain', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(125, 4, 'Madinat Hamad', 'Bahrain', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(126, 4, 'Madinat \'Isa', 'Bahrain', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(127, 4, 'Juzur Hawar', 'Bahrain', '2021-03-25 06:01:35', '2021-03-25 06:01:35'),
(128, 4, 'Sitrah', 'Bahrain', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(129, 5, 'Barisal', 'Bangladesh', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(130, 5, 'Chittagong', 'Bangladesh', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(131, 5, 'Dhaka', 'Bangladesh', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(132, 5, 'Khulna', 'Bangladesh', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(133, 5, 'Rajshahi', 'Bangladesh', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(134, 5, 'Sylhet', 'Bangladesh', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(135, 6, 'Bumthang', 'Bhutan', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(136, 6, 'Chukha', 'Bhutan', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(137, 6, 'Dagana', 'Bhutan', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(138, 6, 'Gasa', 'Bhutan', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(139, 6, 'Haa', 'Bhutan', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(140, 6, 'Lhuntse', 'Bhutan', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(141, 6, 'Mongar', 'Bhutan', '2021-03-25 06:01:36', '2021-03-25 06:01:36'),
(142, 6, 'Paro', 'Bhutan', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(143, 6, 'Pemagatshel', 'Bhutan', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(144, 6, 'Punakha', 'Bhutan', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(145, 6, 'Samdrup Jongkhar', 'Bhutan', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(146, 6, 'Samtse', 'Bhutan', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(147, 6, 'Sarpang', 'Bhutan', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(148, 6, 'Thimphu', 'Bhutan', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(149, 6, 'Trashigang', 'Bhutan', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(150, 6, 'Trashiyangste', 'Bhutan', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(151, 6, 'Trongsa', 'Bhutan', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(152, 6, 'Tsirang', 'Bhutan', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(153, 6, 'Wangdue Phodrang', 'Bhutan', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(154, 6, 'Zhemgang', 'Bhutan', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(155, 8, 'Banteay Mean Chey', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(156, 8, 'Batdambang', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(157, 8, 'Kampong Cham', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(158, 8, 'Kampong Chhnang', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(159, 8, 'Kampong Spoe', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(160, 8, 'Kampong Thum', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(161, 8, 'Kampot', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(162, 8, 'Kandal', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(163, 8, 'Koh Kong', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(164, 8, 'Kracheh', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(165, 8, 'Mondol Kiri', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(166, 8, 'Otdar Mean Chey', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(167, 8, 'Pouthisat', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(168, 8, 'Preah Vihear', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(169, 8, 'Prey Veng', 'Cambodia', '2021-03-25 06:01:37', '2021-03-25 06:01:37'),
(170, 8, 'Rotanakir', 'Cambodia', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(171, 8, 'Siem Reab', 'Cambodia', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(172, 8, 'Stoeng Treng', 'Cambodia', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(173, 8, 'Svay Rieng', 'Cambodia', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(174, 8, 'Takao', 'Cambodia', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(175, 8, 'Keb', 'Cambodia', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(176, 8, 'Pailin', 'Cambodia', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(177, 8, 'Phnom Penh', 'Cambodia', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(178, 8, 'Preah Seihanu', 'Cambodia', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(179, 9, 'Anhui', 'China', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(180, 9, 'Fujian', 'China', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(181, 9, 'Gansu', 'China', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(182, 9, 'Guangdong', 'China', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(183, 9, 'Guizhou', 'China', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(184, 9, 'Hainan', 'China', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(185, 9, 'Hebei', 'China', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(186, 9, 'Heilongjiang', 'China', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(187, 9, 'Henan', 'China', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(188, 9, 'Hubei', 'China', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(189, 9, 'Hunan', 'China', '2021-03-25 06:01:38', '2021-03-25 06:01:38'),
(190, 9, 'Jiangsu', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(191, 9, 'Jiangxi', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(192, 9, 'Jilin', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(193, 9, 'Liaoning', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(194, 9, 'Qinghai', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(195, 9, 'Shaanxi', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(196, 9, 'Shandong', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(197, 9, 'Shanxi', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(198, 9, 'Sichuan', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(199, 9, 'Yunnan', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(200, 9, 'Zhejiang', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(201, 9, 'Guangxi', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(202, 9, 'Nei Mongol', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(203, 9, 'Ningxia', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(204, 9, 'Xinjiang', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(205, 9, 'Xizang (Tibet)', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(206, 9, 'Beijing', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(207, 9, 'Chongqing', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(208, 9, 'Shanghai', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(209, 9, 'Tianjin', 'China', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(210, 12, 'Andaman and Nicobar Islands', 'India', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(211, 12, 'Andhra Pradesh', 'India', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(212, 12, 'Arunachal Pradesh', 'India', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(213, 12, 'Assam', 'India', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(214, 12, 'Bihar', 'India', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(215, 12, 'Chandigarh', 'India', '2021-03-25 06:01:39', '2021-03-25 06:01:39'),
(216, 12, 'Chhattisgarh', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(217, 12, 'Dadra and Nagar Haveli', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(218, 12, 'Daman and Diu', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(219, 12, 'Delhi', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(220, 12, 'Goa', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(221, 12, 'Gujarat', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(222, 12, 'Haryana', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(223, 12, 'Himachal Pradesh', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(224, 12, 'Jammu and Kashmir', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(225, 12, 'Jharkhand', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(226, 12, 'Karnataka', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(227, 12, 'Kerala', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(228, 12, 'Lakshadweep', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(229, 12, 'Madhya Pradesh', 'India', '2021-03-25 06:01:40', '2021-03-25 06:01:40'),
(230, 12, 'Maharashtra', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(231, 12, 'Manipur', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(232, 12, 'Meghalaya', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(233, 12, 'Mizoram', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(234, 12, 'Nagaland', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(235, 12, 'Orissa', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(236, 12, 'Pondicherry', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(237, 12, 'Punjab', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(238, 12, 'Rajasthan', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(239, 12, 'Sikkim', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(240, 12, 'Tamil Nadu', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(241, 12, 'Tripura', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(242, 12, 'Uttaranchal', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(243, 12, 'Uttar Pradesh', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(244, 12, 'West Bengal', 'India', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(245, 13, 'Aceh', 'Indonesia', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(246, 13, 'Bali', 'Indonesia', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(247, 13, 'Banten', 'Indonesia', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(248, 13, 'Bengkulu', 'Indonesia', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(249, 13, 'Gorontalo', 'Indonesia', '2021-03-25 06:01:41', '2021-03-25 06:01:41'),
(250, 13, 'Irian Jaya Barat', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(251, 13, 'Jakarta Raya', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(252, 13, 'Jambi', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(253, 13, 'Jawa Barat', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(254, 13, 'Jawa Tengah', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(255, 13, 'Jawa Timur', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(256, 13, 'Kalimantan Barat', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(257, 13, 'Kalimantan Selatan', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(258, 13, 'Kalimantan Tengah', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(259, 13, 'Kalimantan Timur', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(260, 13, 'Kepulauan Bangka Belitung', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(261, 13, 'Kepulauan Riau', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(262, 13, 'Lampung', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(263, 13, 'Maluku', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(264, 13, 'Maluku Utara', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(265, 13, 'Nusa Tenggara Barat', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(266, 13, 'Nusa Tenggara Timur', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(267, 13, 'Papua', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(268, 13, 'Riau', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(269, 13, 'Sulawesi Barat', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(270, 13, 'Sulawesi Selatan', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(271, 13, 'Sulawesi Tengah', 'Indonesia', '2021-03-25 06:01:42', '2021-03-25 06:01:42'),
(272, 13, 'Sulawesi Tenggara', 'Indonesia', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(273, 13, 'Sulawesi Utara', 'Indonesia', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(274, 13, 'Sumatera Barat', 'Indonesia', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(275, 13, 'Sumatera Selatan', 'Indonesia', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(276, 13, 'Sumatera Utara', 'Indonesia', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(277, 13, 'Yogyakarta', 'Indonesia', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(278, 15, 'Al Anbar', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(279, 15, 'Al Basrah', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(280, 15, 'Al Muthanna', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(281, 15, 'Al Qadisiyah', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(282, 15, 'An Najaf', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(283, 15, 'Arbil', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(284, 15, 'As Sulaymaniyah', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(285, 15, 'At Ta\'mim', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(286, 15, 'Babil', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(287, 15, 'Baghdad', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(288, 15, 'Dahuk', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(289, 15, 'Dhi Qar', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(290, 15, 'Diyala', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(291, 15, 'Karbala\'', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(292, 15, 'Maysan', 'Iraq', '2021-03-25 06:01:43', '2021-03-25 06:01:43'),
(293, 15, 'Ninawa', 'Iraq', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(294, 15, 'Salah ad Din', 'Iraq', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(295, 15, 'Wasit', 'Iraq', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(296, 16, 'Central', 'Israel', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(297, 16, 'Haifa', 'Israel', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(298, 16, 'Jerusalem', 'Israel', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(299, 16, 'Northern', 'Israel', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(300, 16, 'Southern', 'Israel', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(301, 16, 'Tel Aviv', 'Israel', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(302, 17, 'Aichi', 'Japan', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(303, 17, 'Akita', 'Japan', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(304, 17, 'Aomori', 'Japan', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(305, 17, 'Chiba', 'Japan', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(306, 17, 'Ehime', 'Japan', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(307, 17, 'Fukui', 'Japan', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(308, 17, 'Fukuoka', 'Japan', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(309, 17, 'Fukushima', 'Japan', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(310, 17, 'Gifu', 'Japan', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(311, 17, 'Gumma', 'Japan', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(312, 17, 'Hiroshima', 'Japan', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(313, 17, 'Hokkaido', 'Japan', '2021-03-25 06:01:44', '2021-03-25 06:01:44'),
(314, 17, 'Hyogo', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(315, 17, 'Ibaraki', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(316, 17, 'Ishikawa', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(317, 17, 'Iwate', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(318, 17, 'Kagawa', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(319, 17, 'Kagoshima', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(320, 17, 'Kanagawa', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(321, 17, 'Kochi', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(322, 17, 'Kumamoto', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(323, 17, 'Kyoto', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(324, 17, 'Mie', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(325, 17, 'Miyagi', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(326, 17, 'Miyazaki', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(327, 17, 'Nagano', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(328, 17, 'Nagasaki', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(329, 17, 'Nara', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(330, 17, 'Niigata', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(331, 17, 'Oita', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(332, 17, 'Okayama', 'Japan', '2021-03-25 06:01:45', '2021-03-25 06:01:45'),
(333, 17, 'Okinawa', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(334, 17, 'Osaka', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(335, 17, 'Saga', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(336, 17, 'Saitama', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(337, 17, 'Shiga', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(338, 17, 'Shimane', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(339, 17, 'Shizuoka', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(340, 17, 'Tochigi', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(341, 17, 'Tokushima', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(342, 17, 'Tokyo', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(343, 17, 'Tottori', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(344, 17, 'Toyama', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(345, 17, 'Wakayama', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(346, 17, 'Yamagata', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(347, 17, 'Yamaguchi', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(348, 17, 'Yamanashi', 'Japan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(349, 18, 'Ajlun', 'Jordan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(350, 18, 'Al \'Aqabah', 'Jordan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(351, 18, 'Al Balqa\'', 'Jordan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(352, 18, 'Al Karak', 'Jordan', '2021-03-25 06:01:46', '2021-03-25 06:01:46'),
(353, 18, 'Al Mafraq', 'Jordan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(354, 18, '\'Amman', 'Jordan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(355, 18, 'At Tafilah', 'Jordan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(356, 18, 'Az Zarqa\'', 'Jordan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(357, 18, 'Irbid', 'Jordan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(358, 18, 'Jarash', 'Jordan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(359, 18, 'Ma\'an', 'Jordan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(360, 18, 'Madaba', 'Jordan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(361, 19, 'Almaty Oblysy', 'Kazakhstan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(362, 19, 'Almaty Qalasy', 'Kazakhstan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(363, 19, 'Aqmola Oblysy', 'Kazakhstan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(364, 19, 'Aqtobe Oblysy', 'Kazakhstan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(365, 19, 'Astana Qalasy', 'Kazakhstan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(366, 19, 'Atyrau Oblysy', 'Kazakhstan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(367, 19, 'Batys Qazaqstan Oblysy', 'Kazakhstan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(368, 19, 'Bayqongyr Qalasy', 'Kazakhstan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(369, 19, 'Mangghystau Oblysy', 'Kazakhstan', '2021-03-25 06:01:47', '2021-03-25 06:01:47'),
(370, 19, 'Ongtustik Qazaqstan Oblysy', 'Kazakhstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(371, 19, 'Pavlodar Oblysy', 'Kazakhstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(372, 19, 'Qaraghandy Oblysy', 'Kazakhstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(373, 19, 'Qostanay Oblysy', 'Kazakhstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(374, 19, 'Qyzylorda Oblysy', 'Kazakhstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(375, 19, 'Shyghys Qazaqstan Oblysy', 'Kazakhstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(376, 19, 'Soltustik Qazaqstan Oblysy', 'Kazakhstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(377, 19, 'Zhambyl Oblysy', 'Kazakhstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(378, 20, 'Al Ahmadi', 'Kuwait', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(379, 20, 'Al Farwaniyah', 'Kuwait', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(380, 20, 'Al Asimah', 'Kuwait', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(381, 20, 'Al Jahra', 'Kuwait', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(382, 20, 'Hawalli', 'Kuwait', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(383, 20, 'Mubarak Al-Kabeer', 'Kuwait', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(384, 21, 'Batken Oblasty', 'Kyrgyzstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(385, 21, 'Bishkek Shaary', 'Kyrgyzstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(386, 21, 'Chuy Oblasty', 'Kyrgyzstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(387, 21, 'Jalal-Abad Oblasty', 'Kyrgyzstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(388, 21, 'Naryn Oblasty', 'Kyrgyzstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(389, 21, 'Osh Oblasty', 'Kyrgyzstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(390, 21, 'Talas Oblasty', 'Kyrgyzstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(391, 21, 'Ysyk-Kol Oblasty', 'Kyrgyzstan', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(392, 23, 'Beyrouth', 'Lebanon', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(393, 23, 'Beqaa', 'Lebanon', '2021-03-25 06:01:48', '2021-03-25 06:01:48'),
(394, 23, 'Liban-Nord', 'Lebanon', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(395, 23, 'Liban-Sud', 'Lebanon', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(396, 23, 'Mont-Liban', 'Lebanon', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(397, 23, 'Nabatiye', 'Lebanon', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(398, 25, 'Johor', 'Malaysia', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(399, 25, 'Kedah', 'Malaysia', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(400, 25, 'Kelantan', 'Malaysia', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(401, 25, 'Kuala Lumpur', 'Malaysia', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(402, 25, 'Labuan', 'Malaysia', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(403, 25, 'Malacca', 'Malaysia', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(404, 25, 'Negeri Sembilan', 'Malaysia', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(405, 25, 'Pahang', 'Malaysia', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(406, 25, 'Perak', 'Malaysia', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(407, 25, 'Perlis', 'Malaysia', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(408, 25, 'Penang', 'Malaysia', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(409, 25, 'Sabah', 'Malaysia', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(410, 25, 'Sarawak', 'Malaysia', '2021-03-25 06:01:49', '2021-03-25 06:01:49'),
(411, 25, 'Selangor', 'Malaysia', '2021-03-25 06:01:50', '2021-03-25 06:01:50'),
(412, 25, 'Terengganu', 'Malaysia', '2021-03-25 06:01:50', '2021-03-25 06:01:50'),
(413, 26, 'Alifu', 'Maldives', '2021-03-25 06:01:50', '2021-03-25 06:01:50'),
(414, 26, 'Baa', 'Maldives', '2021-03-25 06:01:50', '2021-03-25 06:01:50'),
(415, 26, 'Dhaalu', 'Maldives', '2021-03-25 06:01:50', '2021-03-25 06:01:50'),
(416, 26, 'Faafu', 'Maldives', '2021-03-25 06:01:50', '2021-03-25 06:01:50'),
(417, 26, 'Gaafu Alifu', 'Maldives', '2021-03-25 06:01:50', '2021-03-25 06:01:50'),
(418, 26, 'Gaafu Dhaalu', 'Maldives', '2021-03-25 06:01:50', '2021-03-25 06:01:50'),
(419, 26, 'Gnaviyani', 'Maldives', '2021-03-25 06:01:50', '2021-03-25 06:01:50'),
(420, 26, 'Haa Alifu', 'Maldives', '2021-03-25 06:01:50', '2021-03-25 06:01:50'),
(421, 26, 'Haa Dhaalu', 'Maldives', '2021-03-25 06:01:50', '2021-03-25 06:01:50'),
(422, 26, 'Kaafu', 'Maldives', '2021-03-25 06:01:50', '2021-03-25 06:01:50'),
(423, 26, 'Laamu', 'Maldives', '2021-03-25 06:01:50', '2021-03-25 06:01:50'),
(424, 26, 'Lhaviyani', 'Maldives', '2021-03-25 06:01:51', '2021-03-25 06:01:51'),
(425, 26, 'Maale', 'Maldives', '2021-03-25 06:01:51', '2021-03-25 06:01:51'),
(426, 26, 'Meemu', 'Maldives', '2021-03-25 06:01:51', '2021-03-25 06:01:51'),
(427, 26, 'Noonu', 'Maldives', '2021-03-25 06:01:51', '2021-03-25 06:01:51'),
(428, 26, 'Raa', 'Maldives', '2021-03-25 06:01:51', '2021-03-25 06:01:51'),
(429, 26, 'Seenu', 'Maldives', '2021-03-25 06:01:51', '2021-03-25 06:01:51'),
(430, 26, 'Shaviyani', 'Maldives', '2021-03-25 06:01:51', '2021-03-25 06:01:51'),
(431, 26, 'Thaa', 'Maldives', '2021-03-25 06:01:51', '2021-03-25 06:01:51'),
(432, 26, 'Vaavu', 'Maldives', '2021-03-25 06:01:51', '2021-03-25 06:01:51'),
(433, 27, 'Arhangay', 'Mongolia', '2021-03-25 06:01:51', '2021-03-25 06:01:51'),
(434, 27, 'Bayanhongor', 'Mongolia', '2021-03-25 06:01:51', '2021-03-25 06:01:51'),
(435, 27, 'Bayan-Olgiy', 'Mongolia', '2021-03-25 06:01:51', '2021-03-25 06:01:51'),
(436, 27, 'Bulgan', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(437, 27, 'Darhan Uul', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(438, 27, 'Dornod', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(439, 27, 'Dornogovi', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(440, 27, 'Dundgovi', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(441, 27, 'Dzavhan', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(442, 27, 'Govi-Altay', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(443, 27, 'Govi-Sumber', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(444, 27, 'Hentiy', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(445, 27, 'Hovd', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(446, 27, 'Hovsgol', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(447, 27, 'Omnogovi', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(448, 27, 'Orhon', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(449, 27, 'Ovorhangay', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(450, 27, 'Selenge', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(451, 27, 'Suhbaatar', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(452, 27, 'Tov', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(453, 27, 'Ulaanbaatar', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(454, 27, 'Uvs', 'Mongolia', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(455, 29, 'Bagmati', 'Nepal', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(456, 29, 'Bheri', 'Nepal', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(457, 29, 'Dhawalagiri', 'Nepal', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(458, 29, 'Gandaki', 'Nepal', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(459, 29, 'Janakpur', 'Nepal', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(460, 29, 'Karnali', 'Nepal', '2021-03-25 06:01:52', '2021-03-25 06:01:52'),
(461, 29, 'Kosi', 'Nepal', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(462, 29, 'Lumbini', 'Nepal', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(463, 29, 'Mahakali', 'Nepal', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(464, 29, 'Mechi', 'Nepal', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(465, 29, 'Narayani', 'Nepal', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(466, 29, 'Rapti', 'Nepal', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(467, 29, 'Sagarmatha', 'Nepal', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(468, 29, 'Seti', 'Nepal', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(469, 31, 'Ad Dakhiliyah', 'Oman', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(470, 31, 'Al Batinah', 'Oman', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(471, 31, 'Al Wusta', 'Oman', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(472, 31, 'Ash Sharqiyah', 'Oman', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(473, 31, 'Az Zahirah', 'Oman', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(474, 31, 'Masqat', 'Oman', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(475, 31, 'Musandam', 'Oman', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(476, 31, 'Dhofar', 'Oman', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(477, 32, 'Balochistan', 'Pakistan', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(478, 32, 'North-West Frontier Province', 'Pakistan', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(479, 32, 'Punjab', 'Pakistan', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(480, 32, 'Sindh', 'Pakistan', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(481, 32, 'Islamabad Capital Territory', 'Pakistan', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(482, 32, 'Federally Administered Tribal Areas', 'Pakistan', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(483, 34, 'Abra', 'Philippines', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(484, 34, 'Agusan del Norte', 'Philippines', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(485, 34, 'Agusan del Sur', 'Philippines', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(486, 34, 'Aklan', 'Philippines', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(487, 34, 'Albay', 'Philippines', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(488, 34, 'Antique', 'Philippines', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(489, 34, 'Apayao', 'Philippines', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(490, 34, 'Aurora', 'Philippines', '2021-03-25 06:01:53', '2021-03-25 06:01:53'),
(491, 34, 'Basilan', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(492, 34, 'Bataan', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(493, 34, 'Batanes', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(494, 34, 'Batangas', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(495, 34, 'Biliran', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(496, 34, 'Benguet', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(497, 34, 'Bohol', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(498, 34, 'Bukidnon', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(499, 34, 'Bulacan', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(500, 34, 'Cagayan', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(501, 34, 'Camarines Norte', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(502, 34, 'Camarines Sur', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(503, 34, 'Camiguin', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(504, 34, 'Capiz', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(505, 34, 'Catanduanes', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(506, 34, 'Cavite', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(507, 34, 'Cebu', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(508, 34, 'Compostela', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(509, 34, 'Davao del Norte', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(510, 34, 'Davao del Sur', 'Philippines', '2021-03-25 06:01:54', '2021-03-25 06:01:54'),
(511, 34, 'Davao Oriental', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(512, 34, 'Eastern Samar', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(513, 34, 'Guimaras', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(514, 34, 'Ifugao', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(515, 34, 'Ilocos Norte', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(516, 34, 'Ilocos Sur', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(517, 34, 'Iloilo', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(518, 34, 'Isabela', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(519, 34, 'Kalinga', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(520, 34, 'Laguna', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(521, 34, 'Lanao del Norte', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(522, 34, 'Lanao del Sur', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(523, 34, 'La Union', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(524, 34, 'Leyte', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(525, 34, 'Maguindanao', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(526, 34, 'Marinduque', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(527, 34, 'Masbate', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(528, 34, 'Mindoro Occidental', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(529, 34, 'Mindoro Oriental', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(530, 34, 'Misamis Occidental', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(531, 34, 'Misamis Oriental', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(532, 34, 'Mountain Province', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(533, 34, 'Negros Occidental', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(534, 34, 'Negros Oriental', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(535, 34, 'North Cotabato', 'Philippines', '2021-03-25 06:01:55', '2021-03-25 06:01:55'),
(536, 34, 'Northern Samar', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(537, 34, 'Nueva Ecija', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(538, 34, 'Nueva Vizcaya', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(539, 34, 'Palawan', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(540, 34, 'Pampanga', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(541, 34, 'Pangasinan', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(542, 34, 'Quezon', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(543, 34, 'Quirino', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(544, 34, 'Rizal', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(545, 34, 'Romblon', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(546, 34, 'Samar', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(547, 34, 'Sarangani', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(548, 34, 'Siquijor', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(549, 34, 'Sorsogon', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(550, 34, 'South Cotabato', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(551, 34, 'Southern Leyte', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(552, 34, 'Sultan Kudarat', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(553, 34, 'Sulu', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(554, 34, 'Surigao del Norte', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(555, 34, 'Surigao del Sur', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(556, 34, 'Tarlac', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(557, 34, 'Tawi-Tawi', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(558, 34, 'Zambales', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(559, 34, 'Zamboanga del Norte', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(560, 34, 'Zamboanga del Sur', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(561, 34, 'Zamboanga Sibugay', 'Philippines', '2021-03-25 06:01:56', '2021-03-25 06:01:56'),
(562, 35, 'Ad Dawhah', 'Qatar', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(563, 35, 'Al Ghuwayriyah', 'Qatar', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(564, 35, 'Al Jumayliyah', 'Qatar', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(565, 35, 'Al Khawr', 'Qatar', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(566, 35, 'Al Wakrah', 'Qatar', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(567, 35, 'Ar Rayyan', 'Qatar', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(568, 35, 'Jarayan al Batinah', 'Qatar', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(569, 35, 'Madinat ash Shamal', 'Qatar', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(570, 35, 'Umm Sa\'id', 'Qatar', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(571, 35, 'Umm Salal', 'Qatar', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(572, 36, 'Al Bahah', 'Saudi Arabia', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(573, 36, 'Al Hudud ash Shamaliyah', 'Saudi Arabia', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(574, 36, 'Al Jawf', 'Saudi Arabia', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(575, 36, 'Al Madinah', 'Saudi Arabia', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(576, 36, 'Al Qasim', 'Saudi Arabia', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(577, 36, 'Ar Riyad', 'Saudi Arabia', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(578, 36, 'Ash Sharqiyah', 'Saudi Arabia', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(579, 36, '\'Asir', 'Saudi Arabia', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(580, 36, 'Ha\'il', 'Saudi Arabia', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(581, 36, 'Jizan', 'Saudi Arabia', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(582, 36, 'Makkah', 'Saudi Arabia', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(583, 36, 'Najran', 'Saudi Arabia', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(584, 36, 'Tabuk', 'Saudi Arabia', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(585, 39, 'Central', 'Sri Lanka', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(586, 39, 'North Central', 'Sri Lanka', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(587, 39, 'North Eastern', 'Sri Lanka', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(588, 39, 'North Western', 'Sri Lanka', '2021-03-25 06:01:57', '2021-03-25 06:01:57'),
(589, 39, 'Sabaragamuwa', 'Sri Lanka', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(590, 39, 'Southern', 'Sri Lanka', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(591, 39, 'Uva', 'Sri Lanka', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(592, 39, 'Western', 'Sri Lanka', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(593, 41, 'Chang-hua', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(594, 41, 'Chia-i', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(595, 41, 'Hsin-chu', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(596, 41, 'Hua-lien', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(597, 41, 'I-lan', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(598, 41, 'Kao-hsiung', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(599, 41, 'Kin-men', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(600, 41, 'Lien-chiang', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(601, 41, 'Miao-li', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(602, 41, 'Nan-t\'ou', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(603, 41, 'P\'eng-hu', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(604, 41, 'P\'ing-tung', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(605, 41, 'T\'ai-chung', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(606, 41, 'T\'ai-nan', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(607, 41, 'T\'ai-pei', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(608, 41, 'T\'ai-tung', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(609, 41, 'T\'ao-yuan', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(610, 41, 'Yun-lin', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(611, 41, 'Chia-i', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(612, 41, 'Chi-lung', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(613, 41, 'Hsin-chu', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(614, 41, 'T\'ai-chung', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(615, 41, 'T\'ai-nan', 'Taiwan', '2021-03-25 06:01:58', '2021-03-25 06:01:58'),
(616, 41, 'Kao-hsiung city', 'Taiwan', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(617, 41, 'T\'ai-pei city', 'Taiwan', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(618, 43, 'Amnat Charoen', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(619, 43, 'Ang Thong', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(620, 43, 'Buriram', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(621, 43, 'Chachoengsao', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(622, 43, 'Chai Nat', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59');
INSERT INTO `states` (`id`, `country_id`, `state_name`, `country_name`, `created_at`, `updated_at`) VALUES
(623, 43, 'Chaiyaphum', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(624, 43, 'Chanthaburi', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(625, 43, 'Chiang Mai', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(626, 43, 'Chiang Rai', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(627, 43, 'Chon Buri', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(628, 43, 'Chumphon', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(629, 43, 'Kalasin', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(630, 43, 'Kamphaeng Phet', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(631, 43, 'Kanchanaburi', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(632, 43, 'Khon Kaen', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(633, 43, 'Krabi', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(634, 43, 'Krung Thep Mahanakhon', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(635, 43, 'Lampang', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(636, 43, 'Lamphun', 'Thailand', '2021-03-25 06:01:59', '2021-03-25 06:01:59'),
(637, 43, 'Loei', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(638, 43, 'Lop Buri', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(639, 43, 'Mae Hong Son', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(640, 43, 'Maha Sarakham', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(641, 43, 'Mukdahan', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(642, 43, 'Nakhon Nayok', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(643, 43, 'Nakhon Pathom', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(644, 43, 'Nakhon Phanom', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(645, 43, 'Nakhon Ratchasima', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(646, 43, 'Nakhon Sawan', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(647, 43, 'Nakhon Si Thammarat', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(648, 43, 'Nan', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(649, 43, 'Narathiwat', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(650, 43, 'Nong Bua Lamphu', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(651, 43, 'Nong Khai', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(652, 43, 'Nonthaburi', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(653, 43, 'Pathum Thani', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(654, 43, 'Pattani', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(655, 43, 'Phangnga', 'Thailand', '2021-03-25 06:02:00', '2021-03-25 06:02:00'),
(656, 43, 'Phatthalung', 'Thailand', '2021-03-25 06:02:01', '2021-03-25 06:02:01'),
(657, 43, 'Phayao', 'Thailand', '2021-03-25 06:02:01', '2021-03-25 06:02:01'),
(658, 43, 'Phetchabun', 'Thailand', '2021-03-25 06:02:01', '2021-03-25 06:02:01'),
(659, 43, 'Phetchaburi', 'Thailand', '2021-03-25 06:02:01', '2021-03-25 06:02:01'),
(660, 43, 'Phichit', 'Thailand', '2021-03-25 06:02:01', '2021-03-25 06:02:01'),
(661, 43, 'Phitsanulok', 'Thailand', '2021-03-25 06:02:01', '2021-03-25 06:02:01'),
(662, 43, 'Phra Nakhon Si Ayutthaya', 'Thailand', '2021-03-25 06:02:01', '2021-03-25 06:02:01'),
(663, 43, 'Phrae', 'Thailand', '2021-03-25 06:02:01', '2021-03-25 06:02:01'),
(664, 43, 'Phuket', 'Thailand', '2021-03-25 06:02:01', '2021-03-25 06:02:01'),
(665, 43, 'Prachin Buri', 'Thailand', '2021-03-25 06:02:01', '2021-03-25 06:02:01'),
(666, 43, 'Prachuap Khiri Khan', 'Thailand', '2021-03-25 06:02:01', '2021-03-25 06:02:01'),
(667, 43, 'Ranong', 'Thailand', '2021-03-25 06:02:01', '2021-03-25 06:02:01'),
(668, 43, 'Ratchaburi', 'Thailand', '2021-03-25 06:02:01', '2021-03-25 06:02:01'),
(669, 43, 'Rayong', 'Thailand', '2021-03-25 06:02:02', '2021-03-25 06:02:02'),
(670, 43, 'Roi Et', 'Thailand', '2021-03-25 06:02:02', '2021-03-25 06:02:02'),
(671, 43, 'Sa Kaeo', 'Thailand', '2021-03-25 06:02:02', '2021-03-25 06:02:02'),
(672, 43, 'Sakon Nakhon', 'Thailand', '2021-03-25 06:02:02', '2021-03-25 06:02:02'),
(673, 43, 'Samut Prakan', 'Thailand', '2021-03-25 06:02:02', '2021-03-25 06:02:02'),
(674, 43, 'Samut Sakhon', 'Thailand', '2021-03-25 06:02:02', '2021-03-25 06:02:02'),
(675, 43, 'Samut Songkhram', 'Thailand', '2021-03-25 06:02:02', '2021-03-25 06:02:02'),
(676, 43, 'Sara Buri', 'Thailand', '2021-03-25 06:02:02', '2021-03-25 06:02:02'),
(677, 43, 'Satun', 'Thailand', '2021-03-25 06:02:02', '2021-03-25 06:02:02'),
(678, 43, 'Sing Buri', 'Thailand', '2021-03-25 06:02:02', '2021-03-25 06:02:02'),
(679, 43, 'Sisaket', 'Thailand', '2021-03-25 06:02:03', '2021-03-25 06:02:03'),
(680, 43, 'Songkhla', 'Thailand', '2021-03-25 06:02:03', '2021-03-25 06:02:03'),
(681, 43, 'Sukhothai', 'Thailand', '2021-03-25 06:02:03', '2021-03-25 06:02:03'),
(682, 43, 'Suphan Buri', 'Thailand', '2021-03-25 06:02:03', '2021-03-25 06:02:03'),
(683, 43, 'Surat Thani', 'Thailand', '2021-03-25 06:02:03', '2021-03-25 06:02:03'),
(684, 43, 'Surin', 'Thailand', '2021-03-25 06:02:03', '2021-03-25 06:02:03'),
(685, 43, 'Tak', 'Thailand', '2021-03-25 06:02:03', '2021-03-25 06:02:03'),
(686, 43, 'Trang', 'Thailand', '2021-03-25 06:02:04', '2021-03-25 06:02:04'),
(687, 43, 'Trat', 'Thailand', '2021-03-25 06:02:04', '2021-03-25 06:02:04'),
(688, 43, 'Ubon Ratchathani', 'Thailand', '2021-03-25 06:02:04', '2021-03-25 06:02:04'),
(689, 43, 'Udon Thani', 'Thailand', '2021-03-25 06:02:04', '2021-03-25 06:02:04'),
(690, 43, 'Uthai Thani', 'Thailand', '2021-03-25 06:02:04', '2021-03-25 06:02:04'),
(691, 43, 'Uttaradit', 'Thailand', '2021-03-25 06:02:04', '2021-03-25 06:02:04'),
(692, 43, 'Yala', 'Thailand', '2021-03-25 06:02:04', '2021-03-25 06:02:04'),
(693, 43, 'Yasothon', 'Thailand', '2021-03-25 06:02:04', '2021-03-25 06:02:04'),
(694, 45, 'Adana', 'Turkey', '2021-03-25 06:02:04', '2021-03-25 06:02:04'),
(695, 45, 'Adiyaman', 'Turkey', '2021-03-25 06:02:04', '2021-03-25 06:02:04'),
(696, 45, 'Afyonkarahisar', 'Turkey', '2021-03-25 06:02:04', '2021-03-25 06:02:04'),
(697, 45, 'Agri', 'Turkey', '2021-03-25 06:02:05', '2021-03-25 06:02:05'),
(698, 45, 'Aksaray', 'Turkey', '2021-03-25 06:02:05', '2021-03-25 06:02:05'),
(699, 45, 'Amasya', 'Turkey', '2021-03-25 06:02:05', '2021-03-25 06:02:05'),
(700, 45, 'Ankara', 'Turkey', '2021-03-25 06:02:05', '2021-03-25 06:02:05'),
(701, 45, 'Antalya', 'Turkey', '2021-03-25 06:02:05', '2021-03-25 06:02:05'),
(702, 45, 'Ardahan', 'Turkey', '2021-03-25 06:02:05', '2021-03-25 06:02:05'),
(703, 45, 'Artvin', 'Turkey', '2021-03-25 06:02:05', '2021-03-25 06:02:05'),
(704, 45, 'Aydin', 'Turkey', '2021-03-25 06:02:05', '2021-03-25 06:02:05'),
(705, 45, 'Balikesir', 'Turkey', '2021-03-25 06:02:05', '2021-03-25 06:02:05'),
(706, 45, 'Bartin', 'Turkey', '2021-03-25 06:02:06', '2021-03-25 06:02:06'),
(707, 45, 'Batman', 'Turkey', '2021-03-25 06:02:06', '2021-03-25 06:02:06'),
(708, 45, 'Bayburt', 'Turkey', '2021-03-25 06:02:06', '2021-03-25 06:02:06'),
(709, 45, 'Bilecik', 'Turkey', '2021-03-25 06:02:06', '2021-03-25 06:02:06'),
(710, 45, 'Bingol', 'Turkey', '2021-03-25 06:02:06', '2021-03-25 06:02:06'),
(711, 45, 'Bitlis', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(712, 45, 'Bolu', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(713, 45, 'Burdur', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(714, 45, 'Bursa', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(715, 45, 'Canakkale', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(716, 45, 'Cankiri', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(717, 45, 'Corum', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(718, 45, 'Denizli', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(719, 45, 'Diyarbakir', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(720, 45, 'Duzce', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(721, 45, 'Edirne', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(722, 45, 'Elazig', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(723, 45, 'Erzincan', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(724, 45, 'Erzurum', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(725, 45, 'Eskisehir', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(726, 45, 'Gaziantep', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(727, 45, 'Giresun', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(728, 45, 'Gumushane', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(729, 45, 'Hakkari', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(730, 45, 'Hatay', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(731, 45, 'Igdir', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(732, 45, 'Isparta', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(733, 45, 'Istanbul', 'Turkey', '2021-03-25 06:02:07', '2021-03-25 06:02:07'),
(734, 45, 'Izmir', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(735, 45, 'Kahramanmaras', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(736, 45, 'Karabuk', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(737, 45, 'Karaman', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(738, 45, 'Kars', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(739, 45, 'Kastamonu', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(740, 45, 'Kayseri', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(741, 45, 'Kilis', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(742, 45, 'Kirikkale', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(743, 45, 'Kirklareli', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(744, 45, 'Kirsehir', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(745, 45, 'Kocaeli', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(746, 45, 'Konya', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(747, 45, 'Kutahya', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(748, 45, 'Malatya', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(749, 45, 'Manisa', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(750, 45, 'Mardin', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(751, 45, 'Mersin', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(752, 45, 'Mugla', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(753, 45, 'Mus', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(754, 45, 'Nevsehir', 'Turkey', '2021-03-25 06:02:08', '2021-03-25 06:02:08'),
(755, 45, 'Nigde', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(756, 45, 'Ordu', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(757, 45, 'Osmaniye', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(758, 45, 'Rize', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(759, 45, 'Sakarya', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(760, 45, 'Samsun', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(761, 45, 'Sanliurfa', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(762, 45, 'Siirt', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(763, 45, 'Sinop', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(764, 45, 'Sirnak', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(765, 45, 'Sivas', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(766, 45, 'Tekirdag', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(767, 45, 'Tokat', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(768, 45, 'Trabzon', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(769, 45, 'Tunceli', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(770, 45, 'Usak', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(771, 45, 'Van', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(772, 45, 'Yalova', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(773, 45, 'Yozgat', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(774, 45, 'Zonguldak', 'Turkey', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(775, 46, 'Ahal Welayaty (Ashgabat)', 'Turkmenistan', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(776, 46, 'Balkan Welayaty (Balkanabat)', 'Turkmenistan', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(777, 46, 'Dashoguz Welayaty', 'Turkmenistan', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(778, 46, 'Lebap Welayaty (Turkmenabat)', 'Turkmenistan', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(779, 46, 'Mary Welayaty', 'Turkmenistan', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(780, 47, 'Abu Dhabi', 'United Arab Emirates', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(781, 47, '\'Ajman', 'United Arab Emirates', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(782, 47, 'Al Fujayrah', 'United Arab Emirates', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(783, 47, 'Sharjah', 'United Arab Emirates', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(784, 47, 'Dubai', 'United Arab Emirates', '2021-03-25 06:02:09', '2021-03-25 06:02:09'),
(785, 47, 'Ra\'s al Khaymah', 'United Arab Emirates', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(786, 47, 'Umm al Qaywayn', 'United Arab Emirates', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(787, 48, 'Andijon Viloyati', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(788, 48, 'Buxoro Viloyati', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(789, 48, 'Farg\'ona Viloyati', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(790, 48, 'Jizzax Viloyati', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(791, 48, 'Namangan Viloyati', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(792, 48, 'Navoiy Viloyati', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(793, 48, 'Qashqadaryo Viloyati', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(794, 48, 'Qaraqalpog\'iston Respublikasi', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(795, 48, 'Samarqand Viloyati', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(796, 48, 'Sirdaryo Viloyati', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(797, 48, 'Surxondaryo Viloyati', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(798, 48, 'Toshkent Shahri', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(799, 48, 'Toshkent Viloyati', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(800, 48, 'Xorazm Viloyati', 'Uzbekistan', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(801, 50, 'Abyan', 'Yemen', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(802, 50, '\'Adan', 'Yemen', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(803, 50, 'Ad Dali\'', 'Yemen', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(804, 50, 'Al Bayda\'', 'Yemen', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(805, 50, 'Al Hudaydah', 'Yemen', '2021-03-25 06:02:10', '2021-03-25 06:02:10'),
(806, 50, 'Al Jawf', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(807, 50, 'Al Mahrah', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(808, 50, 'Al Mahwit', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(809, 50, '\'Amran', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(810, 50, 'Dhamar', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(811, 50, 'Hadramawt', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(812, 50, 'Hajjah', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(813, 50, 'Ibb', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(814, 50, 'Lahij', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(815, 50, 'Ma\'rib', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(816, 50, 'Sa\'dah', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(817, 50, 'San\'a\'', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(818, 50, 'Shabwah', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(819, 50, 'Ta\'izz', 'Yemen', '2021-03-25 06:02:11', '2021-03-25 06:02:11'),
(831, 12, 'testing', 'India', '2021-04-01 07:27:30', '2021-04-01 09:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `description`, `desination`, `image`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'tst update', NULL, NULL, '1615288162.jpg', 1, 0, '2021-03-09 05:39:22', '2021-03-09 05:51:57'),
(2, 'test 2', NULL, NULL, '1615288962.jpg', 1, 0, '2021-03-09 05:52:42', '2021-04-01 11:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `description`, `designation`, `title`, `image`, `is_active`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'test update', '<p>dfdsfsd sdfs df</p>', NULL, NULL, '1615285701.jpg', 1, 0, '2021-03-09 04:36:04', '2021-04-01 11:43:26'),
(2, 'test 2', '<p>sdfsdff dfsdfd</p>', NULL, NULL, '1615284722.jpg', 1, 0, '2021-03-09 04:42:02', '2021-03-09 04:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` int(11) DEFAULT -1 COMMENT '1: super admin, 2: admin, -1: user, ',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'hiren', 'bhajgotar8918514@gmail.com', NULL, 1, '$2y$10$siNDQlTYN3tmSs.4kwubEep/AEo5MlCImkY2QwKEIYw5RNE8v6yJ6', NULL, NULL, NULL, '2021-03-13 09:02:57', '2021-03-13 09:02:57'),
(2, 'anil bhajgotar', 'bhajgotarab@gmail.com', NULL, 2, '$2y$10$RIdZsJqn.IyfFFT48RPj7O57ATMS0gNUHt.DF1GPeUKoX02GROghC', NULL, NULL, NULL, '2020-11-13 21:52:04', '2020-11-13 21:52:04'),
(4, 'test update', 'testing@gmail.com', NULL, 4, '$2y$10$Ed5yM6ZUpJOLhhIExcdu1.jvfop8F5e2zGHaES.sTUs2Rz8FwcmyO', NULL, NULL, NULL, '2021-03-23 01:17:29', '2021-03-23 01:35:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_types`
--
ALTER TABLE `admin_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_types_type_unique` (`type`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galaries`
--
ALTER TABLE `galaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permisions`
--
ALTER TABLE `permisions`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setings`
--
ALTER TABLE `setings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_types`
--
ALTER TABLE `admin_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galaries`
--
ALTER TABLE `galaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permisions`
--
ALTER TABLE `permisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setings`
--
ALTER TABLE `setings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=832;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
