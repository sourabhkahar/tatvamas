-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2023 at 10:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hn_hams_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_admin_session`
--

CREATE TABLE `ci_admin_session` (
  `session_token` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(18) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_admin_session`
--

INSERT INTO `ci_admin_session` (`session_token`, `user_id`, `ip_address`, `c_date`) VALUES
('8mlhc8j3o442upq47msls1mmdh7n04tr', 1, '::1', '2023-07-05 10:30:35'),
('cgo9lu3u3hhrbv23hvridofv09qsn5d2', 35, '::1', '2023-07-06 11:07:30'),
('foheg6617jhpvra3blt8sg4dgs5athca', 2, '::1', '2023-07-14 08:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('8mlhc8j3o442upq47msls1mmdh7n04tr', '::1', 1691006349, 0x6d6573736167657c733a303a22223b5f5f63695f766172737c613a323a7b733a373a226d657373616765223b733a333a226f6c64223b733a363a22737461747573223b733a333a226f6c64223b7d61646d696e5f64657461696c737c4f3a383a22737464436c617373223a31373a7b733a383a2261646d696e5f6964223b733a313a2231223b733a343a226e616d65223b733a31303a22537570657261646d696e223b733a383a22656d61696c5f6964223b733a31353a2261646d696e4061646d696e2e636f6d223b733a31303a226c6f67696e5f6e616d65223b733a353a2261646d696e223b733a31343a226c6f67696e5f70617373776f7264223b733a32343a226878577538512b4b345776733576634a444c52554d513d3d223b733a31323a227478745f70617373776f7264223b733a353a2261646d696e223b733a31353a2270726f66696c655f70696374757265223b4e3b733a393a22666f72676f745f6964223b733a313a222d223b733a31303a22756e697175655f6b6579223b733a33323a223037346363653337616133343532353639393865643934383661373639316636223b733a31333a226d6f6469666965645f64617465223b733a31393a22323032322d30322d31362030343a33383a3136223b733a383a2269735f61646d696e223b733a313a2231223b733a393a226d6f62696c655f6e6f223b733a31333a222b393139363632373434383439223b733a393a22757365725f73616c74223b733a33323a223466633534346639303566333338366238386630633434386665366330646464223b733a373a22757365725f6976223b733a33323a226633613130353232613366333838306633346630326365393639333161383361223b733a363a22737461747573223b733a313a2231223b733a373a22726f6c655f6964223b733a313a2231223b733a363a22635f64617465223b733a31393a22323032322d30322d31362030343a33383a3136223b7d70616765737c733a313338303a225b7b22706167655f6964223a2231222c22706167655f6e616d65223a2244617368626f617264222c22706167655f75726c223a2264617368626f617264222c226d645f69636f6e223a22686f6d65222c22616374696f6e5f6e616d65223a2264617368626f617264222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2232222c22706167655f6e616d65223a225573657273222c22706167655f75726c223a227573657273222c226d645f69636f6e223a226c697374222c22616374696f6e5f6e616d65223a227573657273222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2233222c22706167655f6e616d65223a224c6f636174696f6e204d6173746572222c22706167655f75726c223a226c6f636174696f6e73222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a226c6f636174696f6e73222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2234222c22706167655f6e616d65223a2254726561746d656e7420547970655c74222c22706167655f75726c223a2274726561746d656e745f74797065222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a2274726561746d656e745f74797065222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2235222c22706167655f6e616d65223a2250617469656e74222c22706167655f75726c223a2270617469656e74222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a2270617469656e74222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2236222c22706167655f6e616d65223a2250726f66696c65222c22706167655f75726c223a2270726f66696c65222c226d645f69636f6e223a2275736572222c22616374696f6e5f6e616d65223a2270726f66696c65222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d5d223b73657373696f6e5f6b65797c733a33323a22386d6c6863386a336f34343275707134376d736c73316d6d6468376e30347472223b7374617475737c4e3b),
('j5630fbrf3hp5p2fe2egceniib1dv6ej', '::1', 1691000113, 0x61646d696e5f64657461696c737c4f3a383a22737464436c617373223a31373a7b733a383a2261646d696e5f6964223b733a313a2231223b733a343a226e616d65223b733a31303a22537570657261646d696e223b733a383a22656d61696c5f6964223b733a31353a2261646d696e4061646d696e2e636f6d223b733a31303a226c6f67696e5f6e616d65223b733a353a2261646d696e223b733a31343a226c6f67696e5f70617373776f7264223b733a32343a226878577538512b4b345776733576634a444c52554d513d3d223b733a31323a227478745f70617373776f7264223b733a353a2261646d696e223b733a31353a2270726f66696c655f70696374757265223b4e3b733a393a22666f72676f745f6964223b733a313a222d223b733a31303a22756e697175655f6b6579223b733a33323a223037346363653337616133343532353639393865643934383661373639316636223b733a31333a226d6f6469666965645f64617465223b733a31393a22323032322d30322d31362030343a33383a3136223b733a383a2269735f61646d696e223b733a313a2231223b733a393a226d6f62696c655f6e6f223b733a31333a222b393139363632373434383439223b733a393a22757365725f73616c74223b733a33323a223466633534346639303566333338366238386630633434386665366330646464223b733a373a22757365725f6976223b733a33323a226633613130353232613366333838306633346630326365393639333161383361223b733a363a22737461747573223b733a313a2231223b733a373a22726f6c655f6964223b733a313a2231223b733a363a22635f64617465223b733a31393a22323032322d30322d31362030343a33383a3136223b7d70616765737c733a313338303a225b7b22706167655f6964223a2231222c22706167655f6e616d65223a2244617368626f617264222c22706167655f75726c223a2264617368626f617264222c226d645f69636f6e223a22686f6d65222c22616374696f6e5f6e616d65223a2264617368626f617264222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2232222c22706167655f6e616d65223a225573657273222c22706167655f75726c223a227573657273222c226d645f69636f6e223a226c697374222c22616374696f6e5f6e616d65223a227573657273222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2233222c22706167655f6e616d65223a224c6f636174696f6e204d6173746572222c22706167655f75726c223a226c6f636174696f6e73222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a226c6f636174696f6e73222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2234222c22706167655f6e616d65223a2254726561746d656e7420547970655c74222c22706167655f75726c223a2274726561746d656e745f74797065222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a2274726561746d656e745f74797065222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2235222c22706167655f6e616d65223a2250617469656e74222c22706167655f75726c223a2270617469656e74222c226d645f69636f6e223a2266696c652d696e766f696365222c22616374696f6e5f6e616d65223a2270617469656e74222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d2c7b22706167655f6964223a2236222c22706167655f6e616d65223a2250726f66696c65222c22706167655f75726c223a2270726f66696c65222c226d645f69636f6e223a2275736572222c22616374696f6e5f6e616d65223a2270726f66696c65222c227375625f706167655f6964223a2230222c226861735f7375625f70616765223a2230222c22755f76696577223a2231222c22755f757064617465223a2231222c22755f616464223a2231222c22755f64656c657465223a2231222c22726f6c655f6964223a2231222c227375625f70616765223a5b5d7d5d223b73657373696f6e5f6b65797c733a33323a226a3536333066627266336870357032666532656763656e69696231647636656a223b);

-- --------------------------------------------------------

--
-- Table structure for table `ci_user_session`
--

CREATE TABLE `ci_user_session` (
  `session_token` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(18) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mstr_admin`
--

CREATE TABLE `mstr_admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `login_name` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `txt_password` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `forgot_id` varchar(500) NOT NULL,
  `unique_key` varchar(50) NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_admin` int(1) NOT NULL DEFAULT 0,
  `mobile_no` varchar(13) NOT NULL,
  `user_salt` varchar(100) NOT NULL,
  `user_iv` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '0-inactive,1-active',
  `role_id` int(11) NOT NULL COMMENT 'Role of User',
  `c_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mstr_admin`
--

INSERT INTO `mstr_admin` (`admin_id`, `name`, `email_id`, `login_name`, `login_password`, `txt_password`, `profile_picture`, `forgot_id`, `unique_key`, `modified_date`, `is_admin`, `mobile_no`, `user_salt`, `user_iv`, `status`, `role_id`, `c_date`) VALUES
(1, 'Superadmin', 'admin@admin.com', 'admin', 'hxWu8Q+K4Wvs5vcJDLRUMQ==', 'admin', NULL, '-', '074cce37aa345256998ed9486a7691f6', '2022-02-15 23:08:16', 1, '+919662744849', '4fc544f905f3386b88f0c448fe6c0ddd', 'f3a10522a3f3880f34f02ce96931a83a', 1, 1, '2022-02-15 23:08:16'),
(2, 'User', '', 'user', 'p52DKiBgf9rnbORN8U3blw==', 'user', NULL, '', '75736572', '2023-08-02 14:08:12', 0, '', 'e6faab580a636e9575c5bf200fc463b5', 'e7286d5e0e20431c843c86e4d8261f5c', 1, 2, '2023-08-02 14:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_location`
--

CREATE TABLE `mstr_location` (
  `location_id` int(12) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) DEFAULT NULL,
  `u_date` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mstr_location`
--

INSERT INTO `mstr_location` (`location_id`, `name`, `code`, `description`, `is_active`, `c_date`, `created_by`, `u_date`, `updated_by`) VALUES
(1, 'Ahmedabad', 'AMD', 'Ahmedabad', 1, '2023-08-02 16:30:40', 1, '1970-01-01 00:00:00', 1),
(2, 'Rajkot', 'RJK', 'Rajkot Location', 1, '2023-08-02 16:31:16', 1, '1970-01-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mstr_pages`
--

CREATE TABLE `mstr_pages` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `md_icon` varchar(100) NOT NULL,
  `action_name` varchar(100) NOT NULL,
  `is_visible` int(1) NOT NULL,
  `order_index` int(11) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mstr_pages`
--

INSERT INTO `mstr_pages` (`page_id`, `page_name`, `page_url`, `md_icon`, `action_name`, `is_visible`, `order_index`, `c_date`) VALUES
(1, 'Dashboard', 'dashboard', 'home', 'dashboard', 1, 1, '2021-07-26 01:32:22'),
(2, 'Users', 'users', 'list', 'users', 1, 2, '2021-07-26 02:56:07'),
(3, 'Location Master', 'locations', 'file-invoice', 'locations', 1, 3, '2021-07-26 22:53:27'),
(4, 'Treatment Type	', 'treatment_type', 'file-invoice', 'treatment_type', 1, 4, '2021-07-26 22:53:27'),
(5, 'Patient', 'patient', 'file-invoice', 'patient', 1, 4, '2021-07-26 22:53:27'),
(6, 'Profile', 'profile', 'user', 'profile', 1, 6, '2021-07-26 22:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_patient`
--

CREATE TABLE `mstr_patient` (
  `patient_id` int(11) NOT NULL,
  `patient_number` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `age` int(4) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL,
  `relative_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `taluka` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `pincode` int(6) NOT NULL,
  `appointment_date` date DEFAULT NULL,
  `start_time` time NOT NULL DEFAULT '00:00:00',
  `status` enum('appointed','admitted','cancelled') NOT NULL DEFAULT 'appointed' COMMENT 'Cash/UPI/Net Banking/Bank Transfer',
  `is_emergency` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `u_date` datetime DEFAULT NULL,
  `d_date` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `deleted_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mstr_patient`
--

INSERT INTO `mstr_patient` (`patient_id`, `patient_number`, `name`, `email_id`, `mobile_no`, `age`, `gender`, `relative_name`, `address`, `city`, `taluka`, `district`, `pincode`, `appointment_date`, `start_time`, `status`, `is_emergency`, `is_active`, `is_deleted`, `c_date`, `u_date`, `d_date`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 0, 'nitin chauhan', 'nitin.chauhan7002@gmail.com', '(971) 482-5125', 0, '', '', 'Mavdi Plot', 'Rajkot', NULL, NULL, 360004, '2023-08-03', '01:23:00', 'appointed', 0, 1, 0, '2023-08-02 19:56:45', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mstr_site_settings`
--

CREATE TABLE `mstr_site_settings` (
  `settings_id` bigint(11) NOT NULL,
  `v_key` varchar(255) NOT NULL,
  `v_value` varchar(255) DEFAULT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mstr_site_settings`
--

INSERT INTO `mstr_site_settings` (`settings_id`, `v_key`, `v_value`, `c_date`) VALUES
(1, 'X_AUTH_KEY', NULL, '2022-05-06 06:04:42'),
(2, 'X_AUTH_O_KEY', NULL, '2022-05-06 06:04:42'),
(3, 'SECRET', NULL, '2022-05-06 06:05:10'),
(4, 'SITE_URL', NULL, '2020-03-09 20:04:22'),
(5, 'MAIL_HOST', NULL, '2021-04-28 01:08:17'),
(6, 'MAIL_USERNAME', NULL, '2021-04-28 01:08:17'),
(7, 'MAIL_PASSWORD', NULL, '2021-04-28 01:08:17'),
(8, 'MAIL_PORT', NULL, '2021-04-28 01:08:17'),
(9, 'MAIL_FROM', NULL, '2021-04-28 01:08:17'),
(10, 'MAIL_FROM_NAME', NULL, '2021-04-28 01:08:17'),
(11, 'ADMIN_MAIL_ID', NULL, '2021-04-28 22:33:30'),
(12, 'ADMIN_MAIL_1', NULL, '2021-08-18 06:18:55'),
(13, 'ADMIN_MAIL_2', NULL, '2021-08-18 06:18:55'),
(14, 'ADMIN_MAIL_3', NULL, '2021-08-18 06:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_sub_pages`
--

CREATE TABLE `mstr_sub_pages` (
  `sub_page_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `sub_page_name` varchar(255) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `md_icon` varchar(100) NOT NULL,
  `action_name` varchar(100) NOT NULL,
  `is_visible` int(1) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mstr_treatment_type`
--

CREATE TABLE `mstr_treatment_type` (
  `treatment_type_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` float(19,2) NOT NULL DEFAULT 0.00,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `u_date` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mstr_treatment_type`
--

INSERT INTO `mstr_treatment_type` (`treatment_type_id`, `name`, `amount`, `is_active`, `c_date`, `created_by`, `u_date`, `updated_by`) VALUES
(1, 'Type 1', 105.00, 1, '2023-08-02 14:30:47', 1, '1970-01-01 00:00:00', 1),
(2, 'Type 2', 50.00, 0, '2023-08-02 15:56:39', 1, '1970-01-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mstr_user_roles`
--

CREATE TABLE `mstr_user_roles` (
  `role_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `badge_type` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mstr_user_roles`
--

INSERT INTO `mstr_user_roles` (`role_id`, `name`, `badge_type`, `created_by`, `c_date`) VALUES
(1, 'Superadmin', '', 1, '2021-08-05 08:17:47'),
(2, 'Employee', 'primary', 1, '2021-08-05 08:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_error_log`
--

CREATE TABLE `tbl_error_log` (
  `log_id` bigint(20) NOT NULL,
  `session_id` text NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `tag_title` varchar(255) NOT NULL,
  `log_message` text NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_patient_details`
--

CREATE TABLE `tbl_patient_details` (
  `patient_details_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `treatment_type_id` int(11) DEFAULT NULL,
  `amount` float(10,2) NOT NULL DEFAULT 0.00,
  `payment_mode` enum('cash','upi','net_banking','bank_transfer') NOT NULL DEFAULT 'cash' COMMENT 'Cash/UPI/Net Banking/Bank Transfer',
  `remarks` text DEFAULT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `u_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_rights`
--

CREATE TABLE `tbl_user_rights` (
  `rights_id` bigint(20) NOT NULL,
  `has_sub_page` int(1) NOT NULL,
  `sub_page_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `u_view` int(1) NOT NULL,
  `u_update` int(1) NOT NULL,
  `u_add` int(1) NOT NULL,
  `u_delete` int(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user_rights`
--

INSERT INTO `tbl_user_rights` (`rights_id`, `has_sub_page`, `sub_page_id`, `page_id`, `role_id`, `u_view`, `u_update`, `u_add`, `u_delete`, `created_by`, `c_date`) VALUES
(1, 0, 0, 1, 1, 1, 1, 1, 1, 1, '2021-07-25 20:03:01'),
(2, 0, 0, 2, 1, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(3, 0, 0, 3, 2, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(4, 0, 0, 4, 2, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(5, 0, 0, 3, 1, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(6, 0, 0, 4, 1, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(7, 0, 0, 5, 2, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(8, 0, 0, 5, 1, 1, 1, 1, 1, 1, '2021-07-25 22:50:47'),
(9, 0, 0, 6, 1, 1, 1, 1, 1, 1, '2021-07-25 22:50:47');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_page_list`
-- (See below for the actual view)
--
CREATE TABLE `view_page_list` (
`page_id` int(11)
,`page_name` varchar(255)
,`page_url` varchar(255)
,`md_icon` varchar(100)
,`action_name` varchar(100)
,`is_visible` int(1)
,`order_index` int(11)
,`c_date` timestamp
,`has_sub_page` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_user_rights`
-- (See below for the actual view)
--
CREATE TABLE `view_user_rights` (
`page_id` int(11)
,`page_name` varchar(255)
,`page_url` varchar(255)
,`md_icon` varchar(100)
,`action_name` varchar(100)
,`sub_page_id` int(11)
,`has_sub_page` int(1)
,`u_view` int(1)
,`u_update` int(1)
,`u_add` int(1)
,`u_delete` int(1)
,`role_id` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `view_page_list`
--
DROP TABLE IF EXISTS `view_page_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_page_list`  AS SELECT `pages`.`page_id` AS `page_id`, `pages`.`page_name` AS `page_name`, `pages`.`page_url` AS `page_url`, `pages`.`md_icon` AS `md_icon`, `pages`.`action_name` AS `action_name`, `pages`.`is_visible` AS `is_visible`, `pages`.`order_index` AS `order_index`, `pages`.`c_date` AS `c_date`, if((select count(0) from `mstr_sub_pages` where `mstr_sub_pages`.`page_id` = `pages`.`page_id`) > 0,1,0) AS `has_sub_page` FROM `mstr_pages` AS `pages` ;

-- --------------------------------------------------------

--
-- Structure for view `view_user_rights`
--
DROP TABLE IF EXISTS `view_user_rights`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user_rights`  AS SELECT `pages`.`page_id` AS `page_id`, `pages`.`page_name` AS `page_name`, `pages`.`page_url` AS `page_url`, `pages`.`md_icon` AS `md_icon`, `pages`.`action_name` AS `action_name`, `user_rights`.`sub_page_id` AS `sub_page_id`, `user_rights`.`has_sub_page` AS `has_sub_page`, `user_rights`.`u_view` AS `u_view`, `user_rights`.`u_update` AS `u_update`, `user_rights`.`u_add` AS `u_add`, `user_rights`.`u_delete` AS `u_delete`, `user_rights`.`role_id` AS `role_id` FROM (`mstr_pages` `pages` join `tbl_user_rights` `user_rights` on(`pages`.`page_id` = `user_rights`.`page_id`)) WHERE `pages`.`is_visible` = 1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_admin_session`
--
ALTER TABLE `ci_admin_session`
  ADD PRIMARY KEY (`session_token`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `ci_user_session`
--
ALTER TABLE `ci_user_session`
  ADD PRIMARY KEY (`session_token`);

--
-- Indexes for table `mstr_admin`
--
ALTER TABLE `mstr_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `login_name` (`login_name`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `mstr_location`
--
ALTER TABLE `mstr_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `mstr_pages`
--
ALTER TABLE `mstr_pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `action_name_indx` (`action_name`);

--
-- Indexes for table `mstr_patient`
--
ALTER TABLE `mstr_patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `mstr_site_settings`
--
ALTER TABLE `mstr_site_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `mstr_sub_pages`
--
ALTER TABLE `mstr_sub_pages`
  ADD PRIMARY KEY (`sub_page_id`);

--
-- Indexes for table `mstr_treatment_type`
--
ALTER TABLE `mstr_treatment_type`
  ADD PRIMARY KEY (`treatment_type_id`);

--
-- Indexes for table `mstr_user_roles`
--
ALTER TABLE `mstr_user_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_error_log`
--
ALTER TABLE `tbl_error_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_patient_details`
--
ALTER TABLE `tbl_patient_details`
  ADD PRIMARY KEY (`patient_details_id`);

--
-- Indexes for table `tbl_user_rights`
--
ALTER TABLE `tbl_user_rights`
  ADD PRIMARY KEY (`rights_id`),
  ADD KEY `user_fk` (`role_id`),
  ADD KEY `page_fk` (`page_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mstr_admin`
--
ALTER TABLE `mstr_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mstr_location`
--
ALTER TABLE `mstr_location`
  MODIFY `location_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mstr_pages`
--
ALTER TABLE `mstr_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mstr_patient`
--
ALTER TABLE `mstr_patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mstr_site_settings`
--
ALTER TABLE `mstr_site_settings`
  MODIFY `settings_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mstr_sub_pages`
--
ALTER TABLE `mstr_sub_pages`
  MODIFY `sub_page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mstr_treatment_type`
--
ALTER TABLE `mstr_treatment_type`
  MODIFY `treatment_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mstr_user_roles`
--
ALTER TABLE `mstr_user_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_error_log`
--
ALTER TABLE `tbl_error_log`
  MODIFY `log_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_patient_details`
--
ALTER TABLE `tbl_patient_details`
  MODIFY `patient_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_rights`
--
ALTER TABLE `tbl_user_rights`
  MODIFY `rights_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
