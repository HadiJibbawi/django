-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 12:58 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baydoun`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `company` int(11) NOT NULL DEFAULT '0',
  `agent_group` int(11) NOT NULL DEFAULT '0',
  `address` varchar(3000) NOT NULL,
  `job` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `title`, `first_name`, `middle_name`, `last_name`, `company`, `agent_group`, `address`, `job`, `date_created`) VALUES
(1, 1, 'mahdi', 'hussein', 'baydoun', 1, 0, 'sour, next to baydoun design', 2, '2021-04-24 04:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `agent_companies`
--

CREATE TABLE `agent_companies` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `business_type` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agent_companies`
--

INSERT INTO `agent_companies` (`id`, `name`, `address`, `business_type`, `date_created`) VALUES
(1, 'baydoun design', 'sour, jal el baher', 1, '2021-04-24 04:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `agent_email_addresses`
--

CREATE TABLE `agent_email_addresses` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `address` varchar(350) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agent_email_addresses`
--

INSERT INTO `agent_email_addresses` (`id`, `agent_id`, `type`, `address`, `date_created`) VALUES
(1, 1, 1, 'mahdi.baydoun@hotmail.com', '2021-04-24 05:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `agent_email_address_types`
--

CREATE TABLE `agent_email_address_types` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agent_email_address_types`
--

INSERT INTO `agent_email_address_types` (`id`, `type`, `date_created`) VALUES
(1, 'personal', '2021-04-24 05:12:48'),
(2, 'work', '2021-04-24 05:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `agent_groups`
--

CREATE TABLE `agent_groups` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agent_jobs`
--

CREATE TABLE `agent_jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agent_jobs`
--

INSERT INTO `agent_jobs` (`id`, `title`, `description`, `date_created`) VALUES
(1, 'painter', 'wood painter', '2021-04-24 04:46:41'),
(2, 'upholster', 'furniture cloth finishing', '2021-04-24 04:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `agent_phone_numbers`
--

CREATE TABLE `agent_phone_numbers` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `country_code` int(3) NOT NULL,
  `area_code` int(12) NOT NULL,
  `subscriber_number` int(12) NOT NULL,
  `extension` varchar(20) NOT NULL,
  `notes` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent_phone_numbers`
--

INSERT INTO `agent_phone_numbers` (`id`, `agent_id`, `type`, `country_code`, `area_code`, `subscriber_number`, `extension`, `notes`, `date_created`) VALUES
(1, 1, 2, 122, 70, 766724, '', 'mahdi''s personal mobile', '2021-04-24 05:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `agent_phone_number_types`
--

CREATE TABLE `agent_phone_number_types` (
  `id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent_phone_number_types`
--

INSERT INTO `agent_phone_number_types` (`id`, `type`, `date_created`) VALUES
(1, 'work', '2021-04-24 05:05:17'),
(2, 'mobile', '2021-04-24 05:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `agent_titles`
--

CREATE TABLE `agent_titles` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agent_titles`
--

INSERT INTO `agent_titles` (`id`, `title`, `description`, `date_created`) VALUES
(1, 'Mr', '', '2021-04-24 04:48:41'),
(2, 'Mrs', '', '2021-04-24 04:48:41'),
(3, 'Ms', '', '2021-04-24 04:48:41'),
(4, 'Dr', '', '2021-04-24 04:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE `business_types` (
  `id` int(11) NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_types`
--

INSERT INTO `business_types` (`id`, `type`, `date_created`) VALUES
(1, 'N/A', '2021-04-16 21:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `component_type`
--

CREATE TABLE `component_type` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `component_type`
--

INSERT INTO `component_type` (`id`, `type`, `description`, `date_created`) VALUES
(1, 'Sub Product', 'component is a sub product that is manufactured in house', '2021-04-13 19:06:41'),
(2, 'Raw Material', 'component is raw material that is bought from a supplier', '2021-04-13 19:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `code`, `date_created`) VALUES
(1, 'Lebanese Pound', 'LBP', '2021-05-09 09:56:20'),
(2, 'United States Dollar', 'USD', '2021-05-09 09:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `currency_exchange_rates`
--

CREATE TABLE `currency_exchange_rates` (
  `id` int(11) NOT NULL,
  `currency_from` int(11) NOT NULL,
  `currency_to` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_exchange_rates`
--

INSERT INTO `currency_exchange_rates` (`id`, `currency_from`, `currency_to`, `rate`, `date_created`) VALUES
(1, 1, 2, 12500, '2021-05-09 09:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `company` int(11) NOT NULL,
  `customer_group` int(11) NOT NULL,
  `delivery_address` varchar(3000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `title`, `first_name`, `middle_name`, `last_name`, `company`, `customer_group`, `delivery_address`, `date_created`) VALUES
(2, 1, 'Jaafar', 'Mohammad', 'Nasrallah', 0, 0, 'beirut', '2021-04-24 22:53:48'),
(4, 1, 'sade', 'baydoun', 'asdf', 0, 0, 'asdf', '2021-05-09 23:18:37'),
(5, 1, 'mohsin', 'hussein', 'baydoun', 0, 0, 'sour beit khale', '2021-05-24 20:27:55'),
(6, 1, 'test', 'testing', 'customer', 0, 0, 'testing address', '2021-06-19 12:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `customer_companies`
--

CREATE TABLE `customer_companies` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `business_type` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_companies`
--

INSERT INTO `customer_companies` (`id`, `name`, `address`, `business_type`, `date_created`) VALUES
(1, 'none', 'N/A', 0, '2021-04-16 21:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `customer_email_addresses`
--

CREATE TABLE `customer_email_addresses` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `address` varchar(350) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_email_address_types`
--

CREATE TABLE `customer_email_address_types` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_email_address_types`
--

INSERT INTO `customer_email_address_types` (`id`, `type`, `date_created`) VALUES
(1, 'work', '2021-04-16 21:23:53'),
(2, 'personal', '2021-04-16 21:23:53'),
(3, 'Array', '2021-04-24 05:44:32'),
(4, 'test', '2021-04-24 05:45:29'),
(5, 'test2', '2021-04-24 05:47:32'),
(6, 'test3', '2021-04-24 05:47:46'),
(7, 'test4', '2021-04-24 05:48:15'),
(8, 'hsgshdbds', '2021-04-24 22:49:53'),
(9, '', '2021-04-24 22:49:56'),
(10, '', '2021-05-08 17:37:30'),
(11, '', '2021-05-09 23:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `title`, `description`, `date_created`) VALUES
(1, 'N/A', 'N/A', '2021-04-16 21:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `customer_phone_numbers`
--

CREATE TABLE `customer_phone_numbers` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `country_code` int(11) NOT NULL,
  `area_code` varchar(12) NOT NULL,
  `subscriber_number` int(12) NOT NULL,
  `extension` varchar(20) NOT NULL,
  `notes` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_phone_numbers`
--

INSERT INTO `customer_phone_numbers` (`id`, `customer_id`, `type`, `country_code`, `area_code`, `subscriber_number`, `extension`, `notes`, `date_created`) VALUES
(1, 2, 2, 122, '70', 700788, '', '', '2021-05-09 06:06:36'),
(2, 2, 3, 122, '05', 923238, '', '', '2021-05-09 06:06:36'),
(3, 2, 1, 122, '01', 750000, '5557', '', '2021-05-09 23:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `customer_phone_number_types`
--

CREATE TABLE `customer_phone_number_types` (
  `id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_phone_number_types`
--

INSERT INTO `customer_phone_number_types` (`id`, `type`, `date_created`) VALUES
(1, 'work', '2021-04-16 21:24:09'),
(2, 'mobile', '2021-04-16 21:24:09'),
(3, 'home', '2021-04-16 21:24:09'),
(4, 'test', '2021-04-24 05:51:09'),
(5, 'falefil', '2021-04-24 06:07:51'),
(6, 'asdf', '2021-04-24 06:08:02'),
(7, '', '2021-05-01 12:13:07'),
(8, '', '2021-07-26 15:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `customer_titles`
--

CREATE TABLE `customer_titles` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_titles`
--

INSERT INTO `customer_titles` (`id`, `title`, `description`, `date_created`) VALUES
(1, 'Mr', '', '2021-04-16 20:50:01'),
(2, 'Mrs', '', '2021-04-16 20:50:01'),
(3, 'Ms', '', '2021-04-16 20:50:01'),
(4, 'Dr', '', '2021-04-16 20:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `custom_products`
--

CREATE TABLE `custom_products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_product_fields`
--

CREATE TABLE `custom_product_fields` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `data_type` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_product_field_values`
--

CREATE TABLE `custom_product_field_values` (
  `id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` varchar(5000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `field_type_id` int(11) NOT NULL,
  `data_type_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `title`, `description`, `field_type_id`, `data_type_id`, `date_created`) VALUES
(1, 'test', 'test desc', 2, 1, '2021-05-09 04:30:02'),
(3, 'test num', 'number test desc', 2, 2, '2021-05-09 06:03:34'),
(4, 'color', 'kjhtgyjh', 2, 1, '2021-05-09 23:16:13'),
(5, 'names', '', 1, 1, '2021-05-09 23:16:57'),
(6, 'test file 1', 'file 1 testing', 1, 4, '2021-05-21 16:43:10'),
(7, 'name', 'free text as name', 1, 1, '2021-05-21 16:43:31'),
(8, 'bound number', 'number that is bound', 2, 2, '2021-05-21 16:44:00'),
(9, 'outer color', 'color of the outer', 2, 1, '2021-07-26 15:19:23'),
(10, 'engraving text', 'bride and groom', 1, 1, '2021-07-26 15:19:53'),
(11, 'picture', 'picture to make box like it', 1, 4, '2021-07-26 15:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `field_data_types`
--

CREATE TABLE `field_data_types` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_data_types`
--

INSERT INTO `field_data_types` (`id`, `type`, `date_created`) VALUES
(1, 'text', '2021-01-31 12:34:37'),
(2, 'number', '2021-01-31 12:34:37'),
(3, 'date', '2021-01-31 12:34:37'),
(4, 'file', '2021-02-14 15:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `field_types`
--

CREATE TABLE `field_types` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_types`
--

INSERT INTO `field_types` (`id`, `type`, `date_created`) VALUES
(1, 'free', '2021-01-31 00:00:00'),
(2, 'bound', '2021-01-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `field_values`
--

CREATE TABLE `field_values` (
  `id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_type` int(11) NOT NULL,
  `value` varchar(2000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_values`
--

INSERT INTO `field_values` (`id`, `field_id`, `field_type`, `value`, `date_created`) VALUES
(1, 2, 2, '2', '2021-05-09 04:32:01'),
(2, 2, 2, '3', '2021-05-09 04:32:01'),
(3, 2, 2, '4', '2021-05-09 04:32:01'),
(4, 3, 2, '1', '2021-05-09 06:03:42'),
(5, 3, 2, '12', '2021-05-09 06:03:42'),
(6, 3, 2, '123', '2021-05-09 06:03:42'),
(7, 3, 2, '1234', '2021-05-09 06:03:42'),
(8, 4, 2, 'red', '2021-05-09 23:16:27'),
(9, 4, 2, 'green', '2021-05-09 23:16:27'),
(10, 4, 2, 'fuschia', '2021-05-09 23:16:27'),
(11, 8, 2, '1', '2021-05-21 16:44:15'),
(12, 8, 2, '2', '2021-05-21 16:44:15'),
(13, 8, 2, '5', '2021-05-21 16:44:15'),
(14, 8, 2, '4', '2021-05-21 16:44:15'),
(15, 7, 1, 'test add free values', '2021-05-22 19:51:20'),
(16, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items//16.pdf', '2021-05-22 19:51:20'),
(17, 7, 1, 'test add free values 3', '2021-05-22 19:55:40'),
(18, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/12/18.pdf', '2021-05-22 19:55:40'),
(19, 7, 1, 'test add free values 3', '2021-05-22 19:57:05'),
(20, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/13/20.pdf', '2021-05-22 19:57:05'),
(21, 7, 1, 'test add free values 3', '2021-05-22 19:57:33'),
(22, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/14/22.pdf', '2021-05-22 19:57:33'),
(23, 5, 1, 'asdfasdg', '2021-05-22 22:12:46'),
(24, 5, 1, 'asdfasdg', '2021-05-22 22:13:25'),
(25, 7, 1, 'asdf', '2021-05-22 22:13:34'),
(26, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/19/26.pdf', '2021-05-22 22:13:34'),
(27, 5, 1, 'asdfasdg', '2021-05-22 22:13:34'),
(28, 7, 1, 'asdf', '2021-05-22 22:14:24'),
(29, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/21/29.pdf', '2021-05-22 22:14:24'),
(30, 7, 1, 'asdf', '2021-05-22 22:14:33'),
(31, 7, 1, 'asdf', '2021-05-22 22:15:03'),
(32, 7, 1, 'test add free values 4', '2021-05-22 22:17:05'),
(33, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/24/33.pdf', '2021-05-22 22:17:05'),
(34, 7, 1, 'test add free values 4', '2021-05-22 22:17:39'),
(35, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/25/35.pdf', '2021-05-22 22:17:39'),
(36, 5, 1, 'asdfasdg', '2021-05-22 22:19:31'),
(37, 5, 1, 'asdfasdg', '2021-05-22 22:20:52'),
(38, 5, 1, 'asdfasdg', '2021-05-22 22:20:56'),
(39, 5, 1, 'asdfasdg', '2021-05-22 23:45:30'),
(40, 7, 1, 'asdfasdg', '2021-05-22 23:52:59'),
(41, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/30/41.pdf', '2021-05-22 23:52:59'),
(42, 7, 1, 'test add free values 2', '2021-05-23 20:10:09'),
(43, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/36/43.pdf', '2021-05-23 20:10:09'),
(44, 7, 1, 'my test name', '2021-05-24 20:30:10'),
(45, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/41/45.pdf', '2021-05-24 20:30:10'),
(46, 7, 1, 'test add free values 4', '2021-06-07 14:00:51'),
(47, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/42/47.pdf', '2021-06-07 14:00:51'),
(48, 7, 1, 'test add free values 4', '2021-06-07 14:00:52'),
(49, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/44/49.pdf', '2021-06-07 14:00:52'),
(50, 7, 1, 'test add free values 2', '2021-06-07 15:28:38'),
(51, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/45/51.pdf', '2021-06-07 15:28:38'),
(52, 7, 1, 'test2 ', '2021-06-07 15:28:38'),
(53, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/46/53.pdf', '2021-06-07 15:28:38'),
(54, 5, 1, 'asdfasdg', '2021-06-10 19:35:52'),
(55, 5, 1, 'asdfasdg', '2021-06-10 19:36:44'),
(56, 5, 1, 'jaafar', '2021-06-10 19:37:38'),
(57, 5, 1, 'asdfasdg', '2021-06-10 19:38:58'),
(58, 5, 1, 'asdfasdg', '2021-06-10 23:14:43'),
(59, 5, 1, 'testing values in orders', '2021-06-13 21:08:46'),
(60, 7, 1, 'ضثصق', '2021-06-17 23:26:30'),
(61, 7, 1, 'شسيب', '2021-06-17 23:26:30'),
(62, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/51/62.pdf', '2021-06-17 23:26:30'),
(63, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/52/63.pdf', '2021-06-17 23:26:30'),
(64, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/53/64.pdf', '2021-06-17 23:33:47'),
(65, 7, 1, 'test add free values 6', '2021-06-17 23:33:50'),
(66, 7, 1, 'asdf', '2021-06-17 23:47:47'),
(67, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/55/67.jpg', '2021-06-17 23:47:47'),
(68, 7, 1, 'file testing1', '2021-06-19 12:32:37'),
(69, 5, 1, 'jaafar', '2021-06-19 12:32:38'),
(70, 6, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/56/70.pdf', '2021-06-19 12:32:38'),
(71, 5, 1, 'jaafar', '2021-07-06 23:11:40'),
(72, 5, 1, 'test', '2021-07-09 13:35:44'),
(73, 5, 1, 'dfdsf', '2021-07-09 13:36:39'),
(74, 5, 1, 'dfdsf', '2021-07-09 13:38:53'),
(75, 5, 1, 'jaafar', '2021-07-12 20:33:45'),
(76, 5, 1, 'asdfasdg', '2021-07-12 20:37:20'),
(77, 7, 1, 'shi', '2021-07-19 15:16:46'),
(78, 6, 1, 'Jaafar Nasrallah eliserawnsley@email.com www.eliserawnsley.com.pdf', '2021-07-19 15:16:47'),
(79, 7, 1, 'organicsouaps', '2021-07-19 15:17:24'),
(80, 5, 1, 'fadsf', '2021-07-19 15:27:33'),
(81, 5, 1, '23', '2021-07-19 16:11:03'),
(82, 5, 1, 'testing name', '2021-07-24 13:35:12'),
(83, 9, 2, 'white', '2021-07-26 15:19:37'),
(84, 9, 2, 'silver', '2021-07-26 15:19:37'),
(85, 9, 2, 'gold', '2021-07-26 15:19:37'),
(86, 10, 1, 'jaafar', '2021-07-26 15:23:11'),
(87, 11, 1, 'http://jaafar:8888/baydoun/public/files/sales_order_items/69/87.pdf', '2021-07-26 15:23:11'),
(88, 5, 1, 'jaafar', '2021-07-26 15:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `phone_number_country_codes`
--

CREATE TABLE `phone_number_country_codes` (
  `id` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `code` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_number_country_codes`
--

INSERT INTO `phone_number_country_codes` (`id`, `country`, `code`, `date_created`) VALUES
(1, 'Afghanistan', 93, '2021-04-22 06:05:32'),
(2, 'Albania', 355, '2021-04-22 06:05:32'),
(3, 'Algeria', 213, '2021-04-22 06:05:32'),
(4, 'AmericanSamoa', 1684, '2021-04-22 06:05:32'),
(5, 'Andorra', 376, '2021-04-22 06:05:32'),
(6, 'Angola', 244, '2021-04-22 06:05:32'),
(7, 'Anguilla', 1264, '2021-04-22 06:05:32'),
(8, 'Antarctica', 672, '2021-04-22 06:05:32'),
(9, 'Antigua&Barbuda', 1268, '2021-04-22 06:05:32'),
(10, 'Argentina', 54, '2021-04-22 06:05:32'),
(11, 'Armenia', 374, '2021-04-22 06:05:32'),
(12, 'Aruba', 297, '2021-04-22 06:05:32'),
(13, 'Australia', 61, '2021-04-22 06:05:32'),
(14, 'Austria', 43, '2021-04-22 06:05:32'),
(15, 'Azerbaijan', 994, '2021-04-22 06:05:32'),
(16, 'Bahamas', 1242, '2021-04-22 06:05:32'),
(17, 'Bahrain', 973, '2021-04-22 06:05:32'),
(18, 'Bangladesh', 880, '2021-04-22 06:05:32'),
(19, 'Barbados', 1246, '2021-04-22 06:05:32'),
(20, 'Belarus', 375, '2021-04-22 06:05:32'),
(21, 'Belgium', 32, '2021-04-22 06:05:32'),
(22, 'Belize', 501, '2021-04-22 06:05:32'),
(23, 'Benin', 229, '2021-04-22 06:05:32'),
(24, 'Bermuda', 1441, '2021-04-22 06:05:32'),
(25, 'Bhutan', 975, '2021-04-22 06:05:32'),
(26, 'Bolivia', 591, '2021-04-22 06:05:32'),
(27, 'Bosnia', 387, '2021-04-22 06:05:32'),
(28, 'Botswana', 267, '2021-04-22 06:05:32'),
(29, 'BouvetIsland', 47, '2021-04-22 06:05:32'),
(30, 'Brazil', 55, '2021-04-22 06:05:32'),
(31, 'BritishIndianOceanTerritory', 246, '2021-04-22 06:05:32'),
(32, 'BritishVirginIslands', 1284, '2021-04-22 06:05:32'),
(33, 'Brunei', 673, '2021-04-22 06:05:32'),
(34, 'Bulgaria', 359, '2021-04-22 06:05:32'),
(35, 'BurkinaFaso', 226, '2021-04-22 06:05:32'),
(36, 'Burundi', 257, '2021-04-22 06:05:32'),
(37, 'Cambodia', 855, '2021-04-22 06:05:32'),
(38, 'Cameroon', 237, '2021-04-22 06:05:32'),
(39, 'Canada', 1, '2021-04-22 06:05:32'),
(40, 'CapeVerde', 238, '2021-04-22 06:05:32'),
(41, 'CaribbeanNetherlands', 599, '2021-04-22 06:05:32'),
(42, 'CaymanIslands', 1345, '2021-04-22 06:05:32'),
(43, 'CentralAfricanRepublic', 236, '2021-04-22 06:05:32'),
(44, 'Chad', 235, '2021-04-22 06:05:32'),
(45, 'Chile', 56, '2021-04-22 06:05:32'),
(46, 'China', 86, '2021-04-22 06:05:32'),
(47, 'ChristmasIsland', 61, '2021-04-22 06:05:32'),
(48, 'Cocos(Keeling)Islands', 61, '2021-04-22 06:05:32'),
(49, 'Colombia', 57, '2021-04-22 06:05:32'),
(50, 'Comoros', 269, '2021-04-22 06:05:32'),
(51, 'Congo-Brazzaville', 242, '2021-04-22 06:05:32'),
(52, 'Congo-Kinshasa', 243, '2021-04-22 06:05:32'),
(53, 'CookIslands', 682, '2021-04-22 06:05:32'),
(54, 'CostaRica', 506, '2021-04-22 06:05:32'),
(55, 'Croatia', 385, '2021-04-22 06:05:32'),
(56, 'Cuba', 53, '2021-04-22 06:05:32'),
(57, 'Curacao', 599, '2021-04-22 06:05:32'),
(58, 'Cyprus', 357, '2021-04-22 06:05:32'),
(59, 'CzechRepublic', 420, '2021-04-22 06:05:32'),
(60, 'Ivory Cost', 225, '2021-04-22 06:05:32'),
(61, 'Denmark', 45, '2021-04-22 06:05:32'),
(62, 'Djibouti', 253, '2021-04-22 06:05:32'),
(63, 'Dominica', 1767, '2021-04-22 06:05:32'),
(64, 'DominicanRepublic', 1809, '2021-04-22 06:05:32'),
(65, 'DominicanRepublic', 1829, '2021-04-22 06:05:32'),
(66, 'DominicanRepublic', 1849, '2021-04-22 06:05:32'),
(67, 'Ecuador', 593, '2021-04-22 06:05:32'),
(68, 'Egypt', 20, '2021-04-22 06:05:32'),
(69, 'ElSalvador', 503, '2021-04-22 06:05:32'),
(70, 'EquatorialGuinea', 240, '2021-04-22 06:05:32'),
(71, 'Eritrea', 291, '2021-04-22 06:05:32'),
(72, 'Estonia', 372, '2021-04-22 06:05:32'),
(73, 'Ethiopia', 251, '2021-04-22 06:05:32'),
(74, 'FalklandIslands', 500, '2021-04-22 06:05:32'),
(75, 'FaroeIslands', 298, '2021-04-22 06:05:32'),
(76, 'Fiji', 679, '2021-04-22 06:05:32'),
(77, 'Finland', 358, '2021-04-22 06:05:32'),
(78, 'France', 33, '2021-04-22 06:05:32'),
(79, 'FrenchGuiana', 594, '2021-04-22 06:05:32'),
(80, 'FrenchPolynesia', 689, '2021-04-22 06:05:32'),
(81, 'FrenchSouthernTerritories', 262, '2021-04-22 06:05:32'),
(82, 'Gabon', 241, '2021-04-22 06:05:32'),
(83, 'Gambia', 220, '2021-04-22 06:05:32'),
(84, 'Georgia', 995, '2021-04-22 06:05:32'),
(85, 'Germany', 49, '2021-04-22 06:05:32'),
(86, 'Ghana', 233, '2021-04-22 06:05:32'),
(87, 'Gibraltar', 350, '2021-04-22 06:05:32'),
(88, 'Greece', 30, '2021-04-22 06:05:32'),
(89, 'Greenland', 299, '2021-04-22 06:05:32'),
(90, 'Grenada', 1473, '2021-04-22 06:05:32'),
(91, 'Guadeloupe', 590, '2021-04-22 06:05:32'),
(92, 'Guam', 1671, '2021-04-22 06:05:32'),
(93, 'Guatemala', 502, '2021-04-22 06:05:32'),
(94, 'Guernsey', 44, '2021-04-22 06:05:32'),
(95, 'Guinea', 224, '2021-04-22 06:05:32'),
(96, 'Guinea-Bissau', 245, '2021-04-22 06:05:32'),
(97, 'Guyana', 592, '2021-04-22 06:05:32'),
(98, 'Haiti', 509, '2021-04-22 06:05:32'),
(99, 'Heard&McDonaldIslands', 672, '2021-04-22 06:05:32'),
(100, 'Honduras', 504, '2021-04-22 06:05:32'),
(101, 'HongKong', 852, '2021-04-22 06:05:32'),
(102, 'Hungary', 36, '2021-04-22 06:05:32'),
(103, 'Iceland', 354, '2021-04-22 06:05:32'),
(104, 'India', 91, '2021-04-22 06:05:32'),
(105, 'Indonesia', 62, '2021-04-22 06:05:32'),
(106, 'Iran', 98, '2021-04-22 06:05:32'),
(107, 'Iraq', 964, '2021-04-22 06:05:32'),
(108, 'Ireland', 353, '2021-04-22 06:05:32'),
(109, 'IsleofMan', 44, '2021-04-22 06:05:32'),
(110, 'Italy', 39, '2021-04-22 06:05:32'),
(111, 'Jamaica', 1876, '2021-04-22 06:05:32'),
(112, 'Japan', 81, '2021-04-22 06:05:32'),
(113, 'Jersey', 44, '2021-04-22 06:05:32'),
(114, 'Jordan', 962, '2021-04-22 06:05:32'),
(115, 'Kazakhstan', 7, '2021-04-22 06:05:32'),
(116, 'Kenya', 254, '2021-04-22 06:05:32'),
(117, 'Kiribati', 686, '2021-04-22 06:05:32'),
(118, 'Kuwait', 965, '2021-04-22 06:05:32'),
(119, 'Kyrgyzstan', 996, '2021-04-22 06:05:32'),
(120, 'Laos', 856, '2021-04-22 06:05:32'),
(121, 'Latvia', 371, '2021-04-22 06:05:32'),
(122, 'Lebanon', 961, '2021-04-22 06:05:32'),
(123, 'Lesotho', 266, '2021-04-22 06:05:32'),
(124, 'Liberia', 231, '2021-04-22 06:05:32'),
(125, 'Libya', 218, '2021-04-22 06:05:32'),
(126, 'Liechtenstein', 423, '2021-04-22 06:05:32'),
(127, 'Lithuania', 370, '2021-04-22 06:05:32'),
(128, 'Luxembourg', 352, '2021-04-22 06:05:32'),
(129, 'Macau', 853, '2021-04-22 06:05:32'),
(130, 'Macedonia', 389, '2021-04-22 06:05:32'),
(131, 'Madagascar', 261, '2021-04-22 06:05:32'),
(132, 'Malawi', 265, '2021-04-22 06:05:32'),
(133, 'Malaysia', 60, '2021-04-22 06:05:32'),
(134, 'Maldives', 960, '2021-04-22 06:05:32'),
(135, 'Mali', 223, '2021-04-22 06:05:32'),
(136, 'Malta', 356, '2021-04-22 06:05:32'),
(137, 'MarshallIslands', 692, '2021-04-22 06:05:32'),
(138, 'Martinique', 596, '2021-04-22 06:05:32'),
(139, 'Mauritania', 222, '2021-04-22 06:05:32'),
(140, 'Mauritius', 230, '2021-04-22 06:05:32'),
(141, 'Mayotte', 262, '2021-04-22 06:05:32'),
(142, 'Mexico', 52, '2021-04-22 06:05:32'),
(143, 'Micronesia', 691, '2021-04-22 06:05:32'),
(144, 'Moldova', 373, '2021-04-22 06:05:32'),
(145, 'Monaco', 377, '2021-04-22 06:05:32'),
(146, 'Mongolia', 976, '2021-04-22 06:05:32'),
(147, 'Montenegro', 382, '2021-04-22 06:05:32'),
(148, 'Montserrat', 1664, '2021-04-22 06:05:32'),
(149, 'Morocco', 212, '2021-04-22 06:05:32'),
(150, 'Mozambique', 258, '2021-04-22 06:05:32'),
(151, 'Myanmar', 95, '2021-04-22 06:05:32'),
(152, 'Namibia', 264, '2021-04-22 06:05:32'),
(153, 'Nauru', 674, '2021-04-22 06:05:32'),
(154, 'Nepal', 977, '2021-04-22 06:05:32'),
(155, 'Netherlands', 31, '2021-04-22 06:05:32'),
(156, 'NewCaledonia', 687, '2021-04-22 06:05:32'),
(157, 'NewZealand', 64, '2021-04-22 06:05:32'),
(158, 'Nicaragua', 505, '2021-04-22 06:05:32'),
(159, 'Niger', 227, '2021-04-22 06:05:32'),
(160, 'Nigeria', 234, '2021-04-22 06:05:32'),
(161, 'Niue', 683, '2021-04-22 06:05:32'),
(162, 'NorfolkIsland', 672, '2021-04-22 06:05:32'),
(163, 'NorthKorea', 850, '2021-04-22 06:05:32'),
(164, 'NorthernMarianaIslands', 1670, '2021-04-22 06:05:32'),
(165, 'Norway', 47, '2021-04-22 06:05:32'),
(166, 'Oman', 968, '2021-04-22 06:05:32'),
(167, 'Pakistan', 92, '2021-04-22 06:05:32'),
(168, 'Palau', 680, '2021-04-22 06:05:32'),
(169, 'Palestine', 970, '2021-04-22 06:05:32'),
(170, 'Panama', 507, '2021-04-22 06:05:32'),
(171, 'PapuaNewGuinea', 675, '2021-04-22 06:05:32'),
(172, 'Paraguay', 595, '2021-04-22 06:05:32'),
(173, 'Peru', 51, '2021-04-22 06:05:32'),
(174, 'Philippines', 63, '2021-04-22 06:05:32'),
(175, 'PitcairnIslands', 870, '2021-04-22 06:05:32'),
(176, 'Poland', 48, '2021-04-22 06:05:32'),
(177, 'Portugal', 351, '2021-04-22 06:05:32'),
(178, 'PuertoRico', 1, '2021-04-22 06:05:32'),
(179, 'Qatar', 974, '2021-04-22 06:05:32'),
(180, 'Romania', 40, '2021-04-22 06:05:32'),
(181, 'Russia', 7, '2021-04-22 06:05:32'),
(182, 'Rwanda', 250, '2021-04-22 06:05:32'),
(183, 'Reunion', 262, '2021-04-22 06:05:32'),
(184, 'Samoa', 685, '2021-04-22 06:05:32'),
(185, 'SanMarino', 378, '2021-04-22 06:05:32'),
(186, 'SaudiArabia', 966, '2021-04-22 06:05:32'),
(187, 'Senegal', 221, '2021-04-22 06:05:32'),
(188, 'Serbia', 381, '2021-04-22 06:05:32'),
(189, 'Seychelles', 248, '2021-04-22 06:05:32'),
(190, 'SierraLeone', 232, '2021-04-22 06:05:32'),
(191, 'Singapore', 65, '2021-04-22 06:05:32'),
(192, 'SintMaarten', 1721, '2021-04-22 06:05:32'),
(193, 'Slovakia', 421, '2021-04-22 06:05:32'),
(194, 'Slovenia', 386, '2021-04-22 06:05:32'),
(195, 'SolomonIslands', 677, '2021-04-22 06:05:32'),
(196, 'Somalia', 252, '2021-04-22 06:05:32'),
(197, 'SouthAfrica', 27, '2021-04-22 06:05:32'),
(198, 'SouthGeorgia&SouthSandwichIslands', 500, '2021-04-22 06:05:32'),
(199, 'SouthKorea', 82, '2021-04-22 06:05:32'),
(200, 'SouthSudan', 211, '2021-04-22 06:05:32'),
(201, 'Spain', 34, '2021-04-22 06:05:32'),
(202, 'SriLanka', 94, '2021-04-22 06:05:32'),
(203, 'SaintBarthelemy', 590, '2021-04-22 06:05:32'),
(204, 'St.Helena', 290, '2021-04-22 06:05:32'),
(205, 'St.Kitts&Nevis', 1869, '2021-04-22 06:05:32'),
(206, 'St.Lucia', 1758, '2021-04-22 06:05:32'),
(207, 'St.Martin', 590, '2021-04-22 06:05:32'),
(208, 'St.Pierre&Miquelon', 508, '2021-04-22 06:05:32'),
(209, 'St.Vincent&Grenadines', 1784, '2021-04-22 06:05:32'),
(210, 'Sudan', 249, '2021-04-22 06:05:32'),
(211, 'Suriname', 597, '2021-04-22 06:05:32'),
(212, 'Svalbard&JanMayen', 47, '2021-04-22 06:05:32'),
(213, 'Swaziland', 268, '2021-04-22 06:05:32'),
(214, 'Sweden', 46, '2021-04-22 06:05:32'),
(215, 'Switzerland', 41, '2021-04-22 06:05:32'),
(216, 'Syria', 963, '2021-04-22 06:05:32'),
(217, 'SaoTomeandPrincipe', 239, '2021-04-22 06:05:32'),
(218, 'Taiwan', 886, '2021-04-22 06:05:32'),
(219, 'Tajikistan', 992, '2021-04-22 06:05:32'),
(220, 'Tanzania', 255, '2021-04-22 06:05:32'),
(221, 'Thailand', 66, '2021-04-22 06:05:32'),
(222, 'Timor-Leste', 670, '2021-04-22 06:05:32'),
(223, 'Togo', 228, '2021-04-22 06:05:32'),
(224, 'Tokelau', 690, '2021-04-22 06:05:32'),
(225, 'Tonga', 676, '2021-04-22 06:05:32'),
(226, 'Trinidad&Tobago', 1868, '2021-04-22 06:05:32'),
(227, 'Tunisia', 216, '2021-04-22 06:05:32'),
(228, 'Turkey', 90, '2021-04-22 06:05:32'),
(229, 'Turkmenistan', 993, '2021-04-22 06:05:32'),
(230, 'Turks&CaicosIslands', 1649, '2021-04-22 06:05:32'),
(231, 'Tuvalu', 688, '2021-04-22 06:05:32'),
(232, 'U.S.VirginIslands', 1340, '2021-04-22 06:05:32'),
(233, 'UK', 44, '2021-04-22 06:05:32'),
(234, 'US', 1, '2021-04-22 06:05:32'),
(235, 'Uganda', 256, '2021-04-22 06:05:32'),
(236, 'Ukraine', 380, '2021-04-22 06:05:32'),
(237, 'UnitedArabEmirates', 971, '2021-04-22 06:05:32'),
(238, 'Uruguay', 598, '2021-04-22 06:05:32'),
(239, 'Uzbekistan', 998, '2021-04-22 06:05:32'),
(240, 'Vanuatu', 678, '2021-04-22 06:05:32'),
(241, 'VaticanCity', 3906, '2021-04-22 06:05:32'),
(242, 'Venezuela', 58, '2021-04-22 06:05:32'),
(243, 'Vietnam', 84, '2021-04-22 06:05:32'),
(244, 'Wallis&Futuna', 681, '2021-04-22 06:05:32'),
(245, 'WesternSahara', 212, '2021-04-22 06:05:32'),
(246, 'Yemen', 967, '2021-04-22 06:05:32'),
(247, 'Zambia', 260, '2021-04-22 06:05:32'),
(248, 'Zimbabwe', 263, '2021-04-22 06:05:32'),
(249, 'AflandIslands', 358, '2021-04-22 06:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` int(11) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `cost` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `processes`
--

INSERT INTO `processes` (`id`, `product_type_id`, `product_id`, `title`, `description`, `cost`, `sequence`, `date_created`) VALUES
(1, 1, 4, 'process 1', 'test process', 20000, 1, '2021-07-06 21:41:40'),
(3, 0, 4, 'test', 'test', 0, 2, '2021-07-06 21:48:14'),
(4, 0, 4, 'test p3', 'p3', 0, 3, '2021-07-06 23:09:32'),
(5, 0, 5, 't1', 't1', 0, 1, '2021-07-06 23:22:09'),
(6, 0, 1, 'glue pieces of wood', 'gluing', 0, 1, '2021-07-26 15:20:26'),
(7, 0, 1, 'engraving', 'write names', 0, 2, '2021-07-26 15:20:36'),
(8, 0, 1, 'painting', 'paint color', 0, 3, '2021-07-26 15:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `process_components`
--

CREATE TABLE `process_components` (
  `id` int(11) NOT NULL,
  `process_id` int(11) NOT NULL,
  `component_type` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `process_statuses`
--

CREATE TABLE `process_statuses` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `process_statuses`
--

INSERT INTO `process_statuses` (`id`, `status`, `description`, `date_created`) VALUES
(1, 'Not Started', 'process has not started', '2021-04-13 19:10:45'),
(2, 'In Progress', 'process in progress', '2021-04-13 19:10:45'),
(3, 'Waiting', 'process was started but waiting for something to continue', '2021-04-13 19:10:45'),
(4, 'Deferred', 'process stopped and cannot be completed', '2021-04-13 19:10:45'),
(5, 'Completed', 'process finished', '2021-04-13 19:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `process_types`
--

CREATE TABLE `process_types` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `process_types`
--

INSERT INTO `process_types` (`id`, `type`, `description`, `date_created`) VALUES
(1, 'In house', 'process is done in house', '2021-04-13 19:05:24'),
(2, 'Out Sourced', 'process is out sourced', '2021-04-13 19:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `code` varchar(100) NOT NULL,
  `category` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `code`, `category`, `description`, `date_created`) VALUES
(1, 'quraan box', 'qb04', 2, 'quraan box for newly weds', '2021-04-24 14:12:27'),
(4, 'test', 'tst254', 0, 'testing desc', '2021-05-09 10:32:25'),
(5, 'product with file', 'fi234le', 0, 'test product with file type in the field', '2021-05-21 16:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `parent` int(11) NOT NULL,
  `tier` int(2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `title`, `description`, `parent`, `tier`, `date_created`) VALUES
(2, 'accessories', 'accessories main category', 1, 2, '2021-04-24 14:13:42'),
(3, 'furniture', 'furniture main category', 1, 2, '2021-04-24 14:13:42'),
(4, 'tables', 'tables', 3, 3, '2021-05-08 06:10:21'),
(5, 'test', 'test desc', 3, 3, '2021-05-09 03:14:40'),
(6, 'test 2', 'tes 3', 3, 3, '2021-05-09 03:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `product_category_fields`
--

CREATE TABLE `product_category_fields` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_fields`
--

CREATE TABLE `product_fields` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_fields`
--

INSERT INTO `product_fields` (`id`, `product_id`, `field_id`, `date_created`) VALUES
(2, 1, 3, '2021-05-09 06:03:34'),
(3, 4, 4, '2021-05-09 23:16:13'),
(4, 4, 5, '2021-05-09 23:16:57'),
(5, 5, 6, '2021-05-21 16:43:10'),
(6, 5, 7, '2021-05-21 16:43:31'),
(7, 5, 8, '2021-05-21 16:44:00'),
(8, 1, 9, '2021-07-26 15:19:23'),
(9, 1, 10, '2021-07-26 15:19:53'),
(10, 1, 11, '2021-07-26 15:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory`
--

CREATE TABLE `product_inventory` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `serial_number` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory_fields`
--

CREATE TABLE `product_inventory_fields` (
  `id` int(11) NOT NULL,
  `product_inventory_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_value_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `price` int(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_prices`
--

INSERT INTO `product_prices` (`id`, `product_id`, `currency_id`, `price`, `date_created`) VALUES
(1, 1, 1, 400000, '2021-05-09 10:14:36'),
(2, 4, 1, 15000, '2021-05-09 10:32:25'),
(3, 5, 1, 25000, '2021-05-21 16:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `type`, `date_created`) VALUES
(1, 'standard', '2021-04-11 23:09:36'),
(2, 'custom', '2021-04-11 23:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `raw_materials`
--

CREATE TABLE `raw_materials` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `family` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `raw_material_families`
--

CREATE TABLE `raw_material_families` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `raw_material_items`
--

CREATE TABLE `raw_material_items` (
  `id` int(11) NOT NULL,
  `raw_material_id` int(11) NOT NULL,
  `supplier` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `percentage` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `referral_types`
--

CREATE TABLE `referral_types` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `referral_types`
--

INSERT INTO `referral_types` (`id`, `type`, `description`, `date_created`) VALUES
(1, 'Sale Item', 'work order from requesting a new product manufacturing for a sale order item', '2021-04-13 18:55:39'),
(2, 'Inventory Stockup', 'work order from requesting a new product to stockup in the inventory', '2021-04-13 18:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `sales_items`
--

CREATE TABLE `sales_items` (
  `id` int(11) NOT NULL,
  `sales_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_type` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(20) NOT NULL,
  `price_currency` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_items`
--

INSERT INTO `sales_items` (`id`, `sales_order_id`, `product_id`, `product_type`, `quantity`, `price`, `price_currency`, `status`, `date_created`) VALUES
(1, 1, 1, 1, 0, 0, 0, 0, '2021-05-22 18:47:36'),
(2, 1, 5, 1, 0, 0, 0, 0, '2021-05-22 18:47:36'),
(3, 2, 4, 1, 0, 0, 0, 0, '2021-05-22 18:48:58'),
(4, 2, 1, 1, 0, 0, 0, 0, '2021-05-22 18:48:58'),
(5, 3, 4, 1, 0, 0, 0, 0, '2021-05-22 19:04:11'),
(6, 3, 1, 1, 0, 0, 0, 0, '2021-05-22 19:04:11'),
(7, 4, 5, 1, 0, 0, 0, 0, '2021-05-22 19:49:42'),
(8, 4, 1, 1, 0, 0, 0, 0, '2021-05-22 19:49:42'),
(9, 5, 1, 1, 0, 0, 0, 0, '2021-05-22 19:51:20'),
(10, 5, 5, 1, 0, 0, 0, 0, '2021-05-22 19:51:20'),
(11, 6, 5, 1, 0, 0, 0, 0, '2021-05-22 19:54:48'),
(12, 7, 5, 1, 0, 0, 0, 0, '2021-05-22 19:55:40'),
(13, 8, 5, 1, 0, 0, 0, 0, '2021-05-22 19:57:05'),
(14, 9, 5, 1, 0, 0, 0, 0, '2021-05-22 19:57:33'),
(15, 10, 5, 1, 0, 0, 0, 0, '2021-05-22 22:12:45'),
(16, 10, 4, 1, 0, 0, 0, 0, '2021-05-22 22:12:45'),
(17, 11, 5, 1, 0, 0, 0, 0, '2021-05-22 22:13:25'),
(18, 11, 4, 1, 0, 0, 0, 0, '2021-05-22 22:13:25'),
(19, 12, 5, 1, 0, 0, 0, 0, '2021-05-22 22:13:34'),
(20, 12, 4, 1, 0, 0, 0, 0, '2021-05-22 22:13:34'),
(21, 13, 5, 1, 0, 0, 0, 0, '2021-05-22 22:14:24'),
(22, 14, 5, 1, 0, 0, 0, 0, '2021-05-22 22:14:33'),
(23, 15, 5, 1, 0, 0, 0, 0, '2021-05-22 22:14:48'),
(24, 16, 5, 1, 0, 0, 0, 0, '2021-05-22 22:17:02'),
(25, 21, 5, 1, 0, 0, 0, 0, '2021-05-22 22:17:39'),
(26, 24, 4, 1, 0, 0, 0, 0, '2021-05-22 22:19:30'),
(27, 25, 4, 1, 0, 0, 0, 0, '2021-05-22 22:20:52'),
(28, 26, 4, 1, 0, 0, 0, 0, '2021-05-22 22:20:56'),
(29, 27, 4, 1, 0, 0, 0, 0, '2021-05-22 23:45:30'),
(30, 28, 5, 1, 0, 0, 0, 0, '2021-05-22 23:52:59'),
(31, 29, 1, 1, 0, 0, 0, 0, '2021-05-22 23:53:13'),
(32, 30, 1, 1, 0, 0, 0, 0, '2021-05-23 00:15:34'),
(33, 31, 1, 1, 14, 0, 0, 0, '2021-05-23 00:16:49'),
(34, 31, 1, 1, 4, 0, 0, 0, '2021-05-23 00:16:49'),
(35, 32, 1, 1, 2, 0, 0, 0, '2021-05-23 20:10:09'),
(36, 32, 5, 1, 1, 0, 0, 0, '2021-05-23 20:10:09'),
(37, 33, 1, 1, 3, 0, 0, 0, '2021-05-23 22:23:16'),
(38, 34, 1, 1, 2, 0, 0, 0, '2021-05-23 22:23:47'),
(39, 35, 1, 1, 2, 0, 0, 0, '2021-05-23 22:25:26'),
(40, 36, 1, 1, 1, 0, 0, 0, '2021-05-24 20:30:10'),
(41, 36, 5, 1, 4, 0, 0, 0, '2021-05-24 20:30:10'),
(42, 37, 5, 1, 1, 0, 0, 0, '2021-06-07 14:00:33'),
(43, 37, 1, 1, 1, 0, 0, 0, '2021-06-07 14:00:33'),
(44, 37, 5, 1, 1, 0, 0, 0, '2021-06-07 14:00:33'),
(45, 38, 5, 1, 2, 0, 0, 0, '2021-06-07 15:28:25'),
(46, 38, 5, 1, 1, 0, 0, 0, '2021-06-07 15:28:25'),
(47, 42, 4, 1, 60, 15000, 1, 0, '2021-06-10 19:38:58'),
(48, 43, 4, 1, 2, 15000, 1, 0, '2021-06-10 23:14:43'),
(49, 43, 1, 1, 1, 400000, 1, 0, '2021-06-10 23:14:43'),
(50, 44, 4, 1, 3, 15000, 1, 0, '2021-06-13 21:08:46'),
(51, 45, 5, 1, 1, 25000, 1, 0, '2021-06-17 23:26:30'),
(52, 45, 5, 1, 1, 25000, 1, 0, '2021-06-17 23:26:30'),
(53, 46, 5, 1, 1, 25000, 1, 0, '2021-06-17 23:33:47'),
(54, 47, 5, 1, 1, 25000, 1, 0, '2021-06-17 23:47:01'),
(55, 48, 5, 1, 1, 25000, 1, 0, '2021-06-17 23:47:47'),
(56, 49, 5, 1, 1, 25000, 1, 0, '2021-06-19 12:32:37'),
(57, 49, 4, 1, 1, 15000, 1, 0, '2021-06-19 12:32:37'),
(58, 49, 1, 1, 1, 400000, 1, 0, '2021-06-19 12:32:37'),
(59, 50, 4, 1, 2, 15000, 1, 0, '2021-07-06 23:11:40'),
(60, 51, 4, 1, 2, 15000, 1, 0, '2021-07-09 13:35:44'),
(61, 52, 4, 1, 1, 15000, 1, 0, '2021-07-09 13:36:39'),
(62, 53, 4, 1, 1, 15000, 1, 0, '2021-07-09 13:38:53'),
(63, 54, 4, 1, 1, 15000, 1, 0, '2021-07-12 20:33:45'),
(64, 55, 4, 1, 4, 15000, 1, 0, '2021-07-12 20:37:20'),
(65, 55, 4, 1, 3, 15000, 1, 0, '2021-07-19 15:27:33'),
(66, 55, 4, 1, 2, 15000, 1, 0, '2021-07-19 16:11:03'),
(67, 56, 1, 1, 2, 400000, 1, 0, '2021-07-24 13:35:12'),
(68, 56, 4, 1, 1, 15000, 1, 0, '2021-07-24 13:35:12'),
(69, 57, 1, 1, 2, 400000, 1, 0, '2021-07-26 15:23:10'),
(70, 57, 4, 1, 1, 15000, 1, 0, '2021-07-26 15:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `sales_item_processes`
--

CREATE TABLE `sales_item_processes` (
  `id` int(11) NOT NULL,
  `sale_item_id` int(11) NOT NULL,
  `process_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_item_processes`
--

INSERT INTO `sales_item_processes` (`id`, `sale_item_id`, `process_id`, `status`) VALUES
(1, 57, 1, 1),
(2, 57, 3, 1),
(3, 62, 1, 1),
(4, 62, 3, 1),
(5, 62, 4, 1),
(6, 63, 1, 1),
(7, 63, 3, 1),
(8, 63, 4, 1),
(9, 64, 1, 2),
(10, 64, 3, 1),
(11, 64, 4, 1),
(12, 65, 1, 1),
(13, 65, 3, 1),
(14, 65, 4, 1),
(15, 66, 1, 1),
(16, 66, 3, 2),
(17, 66, 4, 1),
(18, 68, 1, 2),
(19, 68, 3, 2),
(20, 68, 4, 1),
(21, 69, 6, 2),
(22, 69, 7, 2),
(23, 69, 8, 1),
(24, 70, 1, 1),
(25, 70, 3, 1),
(26, 70, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_item_statuses`
--

CREATE TABLE `sales_item_statuses` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_item_statuses`
--

INSERT INTO `sales_item_statuses` (`id`, `status`, `description`, `date_created`) VALUES
(1, 'In Progress', 'item still in progress', '2021-04-13 18:58:00'),
(2, 'Completed', 'item has been completed', '2021-04-13 18:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_item_values`
--

CREATE TABLE `sales_item_values` (
  `id` int(11) NOT NULL,
  `sale_item_id` int(11) NOT NULL,
  `field_value` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_item_values`
--

INSERT INTO `sales_item_values` (`id`, `sale_item_id`, `field_value`, `date_created`) VALUES
(1, 14, 21, '0000-00-00 00:00:00'),
(2, 14, 14, '0000-00-00 00:00:00'),
(3, 14, 22, '0000-00-00 00:00:00'),
(4, 16, 9, '0000-00-00 00:00:00'),
(5, 16, 23, '0000-00-00 00:00:00'),
(6, 18, 9, '0000-00-00 00:00:00'),
(7, 18, 24, '0000-00-00 00:00:00'),
(8, 19, 25, '0000-00-00 00:00:00'),
(9, 19, 12, '0000-00-00 00:00:00'),
(10, 20, 9, '0000-00-00 00:00:00'),
(11, 20, 27, '0000-00-00 00:00:00'),
(12, 19, 26, '0000-00-00 00:00:00'),
(13, 21, 28, '0000-00-00 00:00:00'),
(14, 21, 14, '0000-00-00 00:00:00'),
(15, 21, 29, '0000-00-00 00:00:00'),
(16, 22, 30, '0000-00-00 00:00:00'),
(17, 22, 14, '0000-00-00 00:00:00'),
(18, 23, 31, '0000-00-00 00:00:00'),
(19, 23, 14, '0000-00-00 00:00:00'),
(20, 24, 32, '0000-00-00 00:00:00'),
(21, 24, 14, '0000-00-00 00:00:00'),
(22, 24, 33, '0000-00-00 00:00:00'),
(23, 25, 34, '0000-00-00 00:00:00'),
(24, 25, 14, '0000-00-00 00:00:00'),
(25, 25, 35, '0000-00-00 00:00:00'),
(26, 26, 9, '0000-00-00 00:00:00'),
(27, 26, 36, '0000-00-00 00:00:00'),
(28, 27, 9, '0000-00-00 00:00:00'),
(29, 27, 37, '0000-00-00 00:00:00'),
(30, 28, 9, '0000-00-00 00:00:00'),
(31, 28, 38, '0000-00-00 00:00:00'),
(32, 29, 9, '0000-00-00 00:00:00'),
(33, 29, 39, '0000-00-00 00:00:00'),
(34, 30, 40, '0000-00-00 00:00:00'),
(35, 30, 14, '0000-00-00 00:00:00'),
(36, 30, 41, '0000-00-00 00:00:00'),
(37, 31, 4, '0000-00-00 00:00:00'),
(38, 32, 6, '0000-00-00 00:00:00'),
(39, 33, 6, '0000-00-00 00:00:00'),
(40, 34, 4, '0000-00-00 00:00:00'),
(41, 35, 6, '0000-00-00 00:00:00'),
(42, 36, 42, '0000-00-00 00:00:00'),
(43, 36, 13, '0000-00-00 00:00:00'),
(44, 36, 43, '0000-00-00 00:00:00'),
(45, 37, 6, '0000-00-00 00:00:00'),
(46, 38, 5, '0000-00-00 00:00:00'),
(47, 39, 5, '0000-00-00 00:00:00'),
(48, 40, 4, '0000-00-00 00:00:00'),
(49, 41, 44, '0000-00-00 00:00:00'),
(50, 41, 14, '0000-00-00 00:00:00'),
(51, 41, 45, '0000-00-00 00:00:00'),
(52, 43, 6, '0000-00-00 00:00:00'),
(53, 42, 46, '0000-00-00 00:00:00'),
(54, 42, 12, '0000-00-00 00:00:00'),
(55, 44, 48, '0000-00-00 00:00:00'),
(56, 44, 14, '0000-00-00 00:00:00'),
(57, 42, 47, '0000-00-00 00:00:00'),
(58, 44, 49, '0000-00-00 00:00:00'),
(59, 45, 50, '0000-00-00 00:00:00'),
(60, 45, 13, '0000-00-00 00:00:00'),
(61, 46, 52, '0000-00-00 00:00:00'),
(62, 46, 13, '0000-00-00 00:00:00'),
(63, 45, 51, '0000-00-00 00:00:00'),
(64, 46, 53, '0000-00-00 00:00:00'),
(65, 0, 9, '0000-00-00 00:00:00'),
(66, 0, 54, '0000-00-00 00:00:00'),
(67, 0, 9, '0000-00-00 00:00:00'),
(68, 0, 55, '0000-00-00 00:00:00'),
(69, 0, 8, '0000-00-00 00:00:00'),
(70, 0, 56, '0000-00-00 00:00:00'),
(71, 47, 9, '0000-00-00 00:00:00'),
(72, 47, 57, '0000-00-00 00:00:00'),
(73, 48, 10, '0000-00-00 00:00:00'),
(74, 48, 58, '0000-00-00 00:00:00'),
(75, 49, 6, '0000-00-00 00:00:00'),
(76, 50, 9, '0000-00-00 00:00:00'),
(77, 50, 59, '0000-00-00 00:00:00'),
(78, 51, 60, '0000-00-00 00:00:00'),
(79, 51, 13, '0000-00-00 00:00:00'),
(80, 52, 61, '0000-00-00 00:00:00'),
(81, 52, 12, '0000-00-00 00:00:00'),
(82, 51, 62, '0000-00-00 00:00:00'),
(83, 52, 63, '0000-00-00 00:00:00'),
(84, 53, 65, '0000-00-00 00:00:00'),
(85, 53, 12, '0000-00-00 00:00:00'),
(86, 53, 64, '0000-00-00 00:00:00'),
(87, 55, 66, '0000-00-00 00:00:00'),
(88, 55, 12, '0000-00-00 00:00:00'),
(89, 55, 67, '0000-00-00 00:00:00'),
(90, 56, 68, '0000-00-00 00:00:00'),
(91, 56, 13, '0000-00-00 00:00:00'),
(92, 57, 10, '0000-00-00 00:00:00'),
(93, 57, 69, '0000-00-00 00:00:00'),
(94, 58, 5, '0000-00-00 00:00:00'),
(95, 56, 70, '0000-00-00 00:00:00'),
(96, 59, 8, '2021-07-06 23:11:40'),
(97, 59, 71, '2021-07-06 23:11:41'),
(98, 0, 9, '2021-07-09 13:35:44'),
(99, 0, 72, '2021-07-09 13:35:44'),
(100, 0, 10, '2021-07-09 13:36:39'),
(101, 0, 73, '2021-07-09 13:36:39'),
(102, 11162, 10, '2021-07-09 13:38:53'),
(103, 11162, 74, '2021-07-09 13:38:53'),
(104, 11163, 8, '2021-07-12 20:33:45'),
(105, 11163, 75, '2021-07-12 20:33:45'),
(106, 64, 9, '2021-07-12 20:37:20'),
(107, 64, 76, '2021-07-12 20:37:20'),
(108, 0, 77, '2021-07-19 15:16:46'),
(109, 0, 13, '2021-07-19 15:16:46'),
(110, 0, 0, '2021-07-19 15:16:47'),
(111, 0, 79, '2021-07-19 15:17:24'),
(112, 0, 14, '2021-07-19 15:17:24'),
(113, 0, 0, '2021-07-19 15:17:25'),
(114, 65, 9, '2021-07-19 15:27:33'),
(115, 65, 80, '2021-07-19 15:27:33'),
(116, 66, 9, '2021-07-19 16:11:03'),
(117, 66, 81, '2021-07-19 16:11:03'),
(118, 67, 4, '2021-07-24 13:35:12'),
(119, 68, 9, '2021-07-24 13:35:12'),
(120, 68, 82, '2021-07-24 13:35:12'),
(121, 69, 5, '2021-07-26 15:23:11'),
(122, 69, 84, '2021-07-26 15:23:11'),
(123, 69, 86, '2021-07-26 15:23:11'),
(124, 70, 8, '2021-07-26 15:23:11'),
(125, 70, 88, '2021-07-26 15:23:11'),
(126, 69, 87, '2021-07-26 15:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `sales_orders`
--

CREATE TABLE `sales_orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `placement_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `due_date` datetime NOT NULL,
  `discount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_orders`
--

INSERT INTO `sales_orders` (`id`, `customer_id`, `placement_date`, `due_date`, `discount`, `status`, `date_created`) VALUES
(1, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 18:47:36'),
(2, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 18:48:58'),
(3, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 19:04:11'),
(4, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 19:49:42'),
(5, 2, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 19:51:20'),
(6, 2, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 19:54:48'),
(7, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 19:55:40'),
(8, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 19:57:05'),
(9, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 19:57:33'),
(10, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:12:45'),
(11, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:13:25'),
(12, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:13:34'),
(13, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:14:24'),
(14, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:14:33'),
(15, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:14:48'),
(16, 2, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:17:02'),
(17, 2, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:17:24'),
(18, 2, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:17:27'),
(19, 2, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:17:28'),
(20, 2, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:17:28'),
(21, 2, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:17:39'),
(22, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:19:02'),
(23, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:19:06'),
(24, 2, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:19:30'),
(25, 2, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:20:52'),
(26, 2, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 22:20:56'),
(27, 2, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 23:45:30'),
(28, 2, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 23:52:59'),
(29, 4, '2021-05-22 00:00:00', '2021-05-29 00:00:00', 0, 0, '2021-05-22 23:53:13'),
(30, 2, '2021-05-23 00:00:00', '2021-05-30 00:00:00', 0, 0, '2021-05-23 00:15:34'),
(31, 2, '2021-05-23 00:00:00', '2021-05-30 00:00:00', 0, 0, '2021-05-23 00:16:49'),
(32, 2, '2021-05-23 00:00:00', '2021-05-30 00:00:00', 0, 0, '2021-05-23 20:10:09'),
(33, 2, '2021-05-23 00:00:00', '2021-05-30 00:00:00', 2021, 0, '2021-05-23 22:23:16'),
(34, 2, '2021-05-23 00:00:00', '2021-05-30 00:00:00', 2021, 0, '2021-05-23 22:23:47'),
(35, 2, '2021-05-23 00:00:00', '2021-05-30 00:00:00', 20000, 0, '2021-05-23 22:25:26'),
(36, 5, '2021-05-21 00:00:00', '2021-05-27 00:00:00', 50000, 0, '2021-05-24 20:30:10'),
(37, 4, '2021-06-06 00:00:00', '2021-06-13 00:00:00', 0, 0, '2021-06-07 14:00:33'),
(38, 4, '2021-06-07 00:00:00', '2021-06-14 00:00:00', 0, 0, '2021-06-07 15:28:25'),
(39, 5, '2021-06-10 00:00:00', '2021-06-17 00:00:00', 50000, 0, '2021-06-10 19:35:52'),
(40, 4, '2021-06-10 00:00:00', '2021-06-17 00:00:00', 40000, 0, '2021-06-10 19:36:44'),
(41, 4, '2021-06-10 00:00:00', '2021-06-17 00:00:00', 30000, 0, '2021-06-10 19:37:38'),
(42, 5, '2021-06-10 00:00:00', '2021-06-17 00:00:00', 120000, 0, '2021-06-10 19:38:58'),
(43, 4, '2021-06-10 00:00:00', '2021-06-17 00:00:00', 14000, 0, '2021-06-10 23:14:43'),
(44, 2, '2021-06-13 00:00:00', '2021-06-20 00:00:00', 16500, 0, '2021-06-13 21:08:46'),
(45, 5, '2021-06-17 00:00:00', '2021-06-24 00:00:00', 0, 0, '2021-06-17 23:26:30'),
(46, 4, '2021-06-17 00:00:00', '2021-06-24 00:00:00', 0, 0, '2021-06-17 23:33:47'),
(47, 4, '2021-06-17 00:00:00', '2021-06-24 00:00:00', 0, 0, '2021-06-17 23:47:01'),
(48, 5, '2021-06-17 00:00:00', '2021-06-24 00:00:00', 0, 0, '2021-06-17 23:47:47'),
(49, 4, '2021-06-19 00:00:00', '2021-06-26 00:00:00', 20000, 0, '2021-06-19 12:32:37'),
(50, 2, '2021-07-06 00:00:00', '2021-07-13 00:00:00', 5000, 0, '2021-07-06 23:11:40'),
(51, 2, '2021-07-09 00:00:00', '2021-07-16 00:00:00', 0, 0, '2021-07-09 13:35:44'),
(52, 2, '2021-07-09 00:00:00', '2021-07-16 00:00:00', 0, 0, '2021-07-09 13:36:39'),
(53, 2, '2021-07-09 00:00:00', '2021-07-16 00:00:00', 0, 0, '2021-07-09 13:38:53'),
(54, 5, '2021-07-12 00:00:00', '2021-07-19 00:00:00', 0, 0, '2021-07-12 20:33:45'),
(55, 2, '2021-07-12 00:00:00', '2021-07-19 00:00:00', 15000, 0, '2021-07-12 20:37:20'),
(56, 2, '2021-07-24 00:00:00', '2021-08-04 00:00:00', 20000, 0, '2021-07-24 13:35:12'),
(57, 2, '2021-07-26 00:00:00', '2021-08-02 00:00:00', 300000, 0, '2021-07-26 15:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_statuses`
--

CREATE TABLE `sales_order_statuses` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_order_statuses`
--

INSERT INTO `sales_order_statuses` (`id`, `status`, `description`, `date_created`) VALUES
(1, 'In Progress', 'order still has items that are not completed', '2021-04-13 19:04:23'),
(2, 'Completed', 'all order items have been completed', '2021-04-13 19:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `sub_product`
--

CREATE TABLE `sub_product` (
  `id` int(11) NOT NULL,
  `title` int(100) NOT NULL,
  `family` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `precursor` int(11) NOT NULL,
  `precursor_percentage` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_product_families`
--

CREATE TABLE `sub_product_families` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_product_fields`
--

CREATE TABLE `sub_product_fields` (
  `id` int(11) NOT NULL,
  `sub_product_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_value_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_product_items`
--

CREATE TABLE `sub_product_items` (
  `id` int(11) NOT NULL,
  `sub_product_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `company` int(11) NOT NULL DEFAULT '0',
  `supplier_group` int(11) NOT NULL DEFAULT '0',
  `address` varchar(3000) NOT NULL,
  `job` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `title`, `first_name`, `middle_name`, `last_name`, `company`, `supplier_group`, `address`, `job`, `date_created`) VALUES
(1, 1, 'Jaafar', 'Mohammad', 'Nasrallah', 0, 0, 'beirut', 0, '2021-04-24 05:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_companies`
--

CREATE TABLE `supplier_companies` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `business_type` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_email_addresses`
--

CREATE TABLE `supplier_email_addresses` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `address` varchar(350) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_email_address_types`
--

CREATE TABLE `supplier_email_address_types` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_email_address_types`
--

INSERT INTO `supplier_email_address_types` (`id`, `type`, `date_created`) VALUES
(1, 'work', '2021-04-24 06:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_groups`
--

CREATE TABLE `supplier_groups` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_jobs`
--

CREATE TABLE `supplier_jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_phone_numbers`
--

CREATE TABLE `supplier_phone_numbers` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `country_code` int(3) NOT NULL,
  `area_code` int(12) NOT NULL,
  `subscriber_number` int(12) NOT NULL,
  `extension` varchar(20) NOT NULL,
  `notes` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_phone_numbers`
--

INSERT INTO `supplier_phone_numbers` (`id`, `supplier_id`, `type`, `country_code`, `area_code`, `subscriber_number`, `extension`, `notes`, `date_created`) VALUES
(1, 1, 1, 122, 70, 700788, '', '', '2021-04-24 05:34:29'),
(2, 1, 2, 122, 1, 750000, '5557', '', '2021-04-24 05:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_phone_number_types`
--

CREATE TABLE `supplier_phone_number_types` (
  `id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_phone_number_types`
--

INSERT INTO `supplier_phone_number_types` (`id`, `type`, `date_created`) VALUES
(1, 'personal', '2021-04-24 05:34:10'),
(2, 'work', '2021-04-24 05:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_titles`
--

CREATE TABLE `supplier_titles` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_titles`
--

INSERT INTO `supplier_titles` (`id`, `title`, `description`, `date_created`) VALUES
(1, 'Mr', '', '2021-04-24 05:29:11'),
(2, 'Ms', '', '2021-04-24 05:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `work_orders`
--

CREATE TABLE `work_orders` (
  `id` int(11) NOT NULL,
  `referral_type` int(11) NOT NULL,
  `referral_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_companies`
--
ALTER TABLE `agent_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_email_addresses`
--
ALTER TABLE `agent_email_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_email_address_types`
--
ALTER TABLE `agent_email_address_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_groups`
--
ALTER TABLE `agent_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_jobs`
--
ALTER TABLE `agent_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_phone_numbers`
--
ALTER TABLE `agent_phone_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_phone_number_types`
--
ALTER TABLE `agent_phone_number_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_titles`
--
ALTER TABLE `agent_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_types`
--
ALTER TABLE `business_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_type`
--
ALTER TABLE `component_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_companies`
--
ALTER TABLE `customer_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_email_addresses`
--
ALTER TABLE `customer_email_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_email_address_types`
--
ALTER TABLE `customer_email_address_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_phone_numbers`
--
ALTER TABLE `customer_phone_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_phone_number_types`
--
ALTER TABLE `customer_phone_number_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_titles`
--
ALTER TABLE `customer_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_products`
--
ALTER TABLE `custom_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_product_fields`
--
ALTER TABLE `custom_product_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_product_field_values`
--
ALTER TABLE `custom_product_field_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_data_types`
--
ALTER TABLE `field_data_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_types`
--
ALTER TABLE `field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_values`
--
ALTER TABLE `field_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_number_country_codes`
--
ALTER TABLE `phone_number_country_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `process_components`
--
ALTER TABLE `process_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `process_statuses`
--
ALTER TABLE `process_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `process_types`
--
ALTER TABLE `process_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category_fields`
--
ALTER TABLE `product_category_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_fields`
--
ALTER TABLE `product_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_inventory`
--
ALTER TABLE `product_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_inventory_fields`
--
ALTER TABLE `product_inventory_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_materials`
--
ALTER TABLE `raw_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_material_families`
--
ALTER TABLE `raw_material_families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_material_items`
--
ALTER TABLE `raw_material_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_types`
--
ALTER TABLE `referral_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_items`
--
ALTER TABLE `sales_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_item_processes`
--
ALTER TABLE `sales_item_processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_item_statuses`
--
ALTER TABLE `sales_item_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_item_values`
--
ALTER TABLE `sales_item_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_order_statuses`
--
ALTER TABLE `sales_order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_product`
--
ALTER TABLE `sub_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_product_families`
--
ALTER TABLE `sub_product_families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_product_fields`
--
ALTER TABLE `sub_product_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_product_items`
--
ALTER TABLE `sub_product_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_companies`
--
ALTER TABLE `supplier_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_email_addresses`
--
ALTER TABLE `supplier_email_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_email_address_types`
--
ALTER TABLE `supplier_email_address_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_groups`
--
ALTER TABLE `supplier_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_jobs`
--
ALTER TABLE `supplier_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_phone_numbers`
--
ALTER TABLE `supplier_phone_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_phone_number_types`
--
ALTER TABLE `supplier_phone_number_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_titles`
--
ALTER TABLE `supplier_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_orders`
--
ALTER TABLE `work_orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `agent_companies`
--
ALTER TABLE `agent_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `agent_email_addresses`
--
ALTER TABLE `agent_email_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `agent_email_address_types`
--
ALTER TABLE `agent_email_address_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `agent_groups`
--
ALTER TABLE `agent_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `agent_jobs`
--
ALTER TABLE `agent_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `agent_phone_numbers`
--
ALTER TABLE `agent_phone_numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `agent_phone_number_types`
--
ALTER TABLE `agent_phone_number_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `agent_titles`
--
ALTER TABLE `agent_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `business_types`
--
ALTER TABLE `business_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `component_type`
--
ALTER TABLE `component_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `customer_companies`
--
ALTER TABLE `customer_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer_email_addresses`
--
ALTER TABLE `customer_email_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_email_address_types`
--
ALTER TABLE `customer_email_address_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer_phone_numbers`
--
ALTER TABLE `customer_phone_numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer_phone_number_types`
--
ALTER TABLE `customer_phone_number_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `customer_titles`
--
ALTER TABLE `customer_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `custom_products`
--
ALTER TABLE `custom_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_product_fields`
--
ALTER TABLE `custom_product_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_product_field_values`
--
ALTER TABLE `custom_product_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `field_data_types`
--
ALTER TABLE `field_data_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `field_types`
--
ALTER TABLE `field_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `field_values`
--
ALTER TABLE `field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `phone_number_country_codes`
--
ALTER TABLE `phone_number_country_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `process_components`
--
ALTER TABLE `process_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `process_statuses`
--
ALTER TABLE `process_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `process_types`
--
ALTER TABLE `process_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product_category_fields`
--
ALTER TABLE `product_category_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_fields`
--
ALTER TABLE `product_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `product_inventory`
--
ALTER TABLE `product_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_inventory_fields`
--
ALTER TABLE `product_inventory_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `raw_materials`
--
ALTER TABLE `raw_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `raw_material_families`
--
ALTER TABLE `raw_material_families`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `raw_material_items`
--
ALTER TABLE `raw_material_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `referral_types`
--
ALTER TABLE `referral_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sales_items`
--
ALTER TABLE `sales_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `sales_item_processes`
--
ALTER TABLE `sales_item_processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `sales_item_statuses`
--
ALTER TABLE `sales_item_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sales_item_values`
--
ALTER TABLE `sales_item_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `sales_orders`
--
ALTER TABLE `sales_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `sales_order_statuses`
--
ALTER TABLE `sales_order_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sub_product`
--
ALTER TABLE `sub_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_product_families`
--
ALTER TABLE `sub_product_families`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_product_fields`
--
ALTER TABLE `sub_product_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_product_items`
--
ALTER TABLE `sub_product_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supplier_companies`
--
ALTER TABLE `supplier_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier_email_addresses`
--
ALTER TABLE `supplier_email_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier_email_address_types`
--
ALTER TABLE `supplier_email_address_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supplier_groups`
--
ALTER TABLE `supplier_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier_jobs`
--
ALTER TABLE `supplier_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier_phone_numbers`
--
ALTER TABLE `supplier_phone_numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `supplier_phone_number_types`
--
ALTER TABLE `supplier_phone_number_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `supplier_titles`
--
ALTER TABLE `supplier_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `work_orders`
--
ALTER TABLE `work_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
