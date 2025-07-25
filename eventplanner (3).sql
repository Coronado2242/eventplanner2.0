-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2025 at 04:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventplanner`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `department` varchar(100) NOT NULL,
  `activity_name` varchar(255) NOT NULL,
  `objective` text DEFAULT NULL,
  `brief_description` text DEFAULT NULL,
  `person_involved` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `budgets` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `department`, `activity_name`, `objective`, `brief_description`, `person_involved`, `start_date`, `end_date`, `status`, `created_at`, `budgets`) VALUES
(1, 'CCS', 'TEST', 'TEST', 'Guidelines for Safe and Efficient Use · The following guidelines are for your own safety and to prevent device malfunction. If you aren’t sure if your device is working properly, have the device checked by an authorised Sony Mobile service partner before use', 'TEST TEST TEST', NULL, NULL, 'Pending', '2025-06-28 12:43:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE `admin_account` (
  `adminid` int(32) NOT NULL,
  `adminuser` varchar(255) NOT NULL,
  `adminpass` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `firstlogin` varchar(10) DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`adminid`, `adminuser`, `adminpass`, `role`, `firstlogin`) VALUES
(0, 'admin', 'admin123', 'superadmin', 'no'),
(1, 'osas', '123456', 'Osas', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `budget_plans`
--

CREATE TABLE `budget_plans` (
  `proposal_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `particulars` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `budget_plans`
--

INSERT INTO `budget_plans` (`proposal_id`, `event_name`, `particulars`, `qty`, `amount`, `total`, `grand_total`, `attachment`) VALUES
(0, 'Test', 'Example', 12, 240, 2880, 2880, ''),
(0, 'Test', 'Example', 12, 240, 2880, 2880, ''),
(0, 'Test', 'Example', 12, 240, 2880, 2880, ''),
(0, 'Test', 'Example', 12, 240, 2880, 2880, ''),
(0, 'Test', 'Example', 12, 240, 2880, 2880, ''),
(0, 'Test', 'Example', 12, 240, 2880, 2880, ''),
(0, 'Test', 'Example', 12, 240, 2880, 2880, ''),
(0, 'Test', 'Example', 12, 240, 2880, 2880, ''),
(0, 'Test', 'Example', 12, 240, 2880, 2880, ''),
(0, '123', 'sadada', 23, 21, 483, 483, ''),
(0, '123', 'sadada', 23, 21, 483, 483, ''),
(0, '123', 'sadada', 23, 21, 483, 483, ''),
(0, '123', 'sadada', 23, 21, 483, 483, ''),
(0, '123', 'sadada', 23, 21, 483, 483, ''),
(0, '123', 'sadada', 23, 21, 483, 483, ''),
(0, '123', 'sadada', 23, 21, 483, 483, ''),
(0, '123', 'sadada', 23, 21, 483, 483, ''),
(0, '123', 'sadada', 23, 21, 483, 483, ''),
(0, '123', 'sadada', 23, 21, 483, 483, ''),
(0, 'example', 'example', 3, 245, 735, 735, ''),
(0, 'example', 'example', 3, 245, 735, 735, ''),
(0, 'example', 'example', 3, 245, 735, 735, ''),
(24, 'Example', 'test', 4, 232, 928, 928, ''),
(24, 'Example', 'test', 4, 232, 928, 928, ''),
(25, 'test1', 'test2', 34, 20, 680, 680, ''),
(25, 'test1', 'test2', 34, 20, 680, 680, ''),
(25, 'test1', 'test2', 34, 20, 680, 680, ''),
(26, 'test4', 'test', 321, 21, 6741, 6741, ''),
(26, 'test4', 'test', 321, 21, 6741, 6741, ''),
(26, 'test4', 'test', 321, 21, 6741, 6741, ''),
(27, 'wda', 'dsadas', 23, 231, 5313, 5313, ''),
(27, 'wda', 'dsadas', 23, 231, 5313, 5313, ''),
(27, 'wda', 'dsadas', 23, 231, 5313, 5313, ''),
(28, '213', '23asd', 2, 1234, 2468, 2468, ''),
(28, '213', '23asd', 2, 1234, 2468, 2468, ''),
(29, 'sda', 'sadkao', 12, 12, 144, 144, ''),
(29, 'sda', 'sadkao', 12, 12, 144, 144, ''),
(29, 'sda', 'sadkao', 12, 12, 144, 144, ''),
(30, 'das', 'sadas', 12, 31, 372, 372, ''),
(30, 'das', 'sadas', 12, 31, 372, 372, ''),
(31, 'sdoiuauiod', 'ioasdhuasu', 23, 122, 2806, 2806, ''),
(31, 'sdoiuauiod', 'ioasdhuasu', 23, 122, 2806, 2806, ''),
(32, 'saddss', 'dsfsdf', 324, 34, 11016, 11016, ''),
(32, 'saddss', 'dsfsdf', 324, 34, 11016, 11016, ''),
(33, 'Example', 'Test1', 12, 500, 6000, 18000, ''),
(33, '', 'Test2', 12, 1000, 12000, 18000, ''),
(33, 'Example', 'Test1', 12, 500, 6000, 18000, ''),
(33, '', 'Test2', 12, 1000, 12000, 18000, ''),
(33, 'Example', 'Test1', 12, 500, 6000, 18000, ''),
(33, '', 'Test2', 12, 1000, 12000, 18000, ''),
(34, 'example', 'example', 12, 132, 1584, 1584, ''),
(34, 'example', 'example', 12, 132, 1584, 1584, ''),
(34, 'example', 'example', 12, 132, 1584, 1584, ''),
(35, 'example', 'example', 12, 12, 144, 144, ''),
(35, 'example', 'example', 12, 12, 144, 144, ''),
(36, 'example', 'example', 12, 31, 372, 372, ''),
(36, 'example', 'example', 12, 31, 372, 372, ''),
(37, 'example', 'example', 13, 200, 2600, 2600, ''),
(37, 'example', 'example', 13, 200, 2600, 2600, ''),
(37, 'example', 'example', 13, 200, 2600, 2600, ''),
(37, 'example', 'example', 13, 200, 2600, 2600, ''),
(37, 'example', 'example', 13, 200, 2600, 2600, ''),
(38, 'test1', 'test1', 123, 50, 6150, 6150, ''),
(38, 'test1', 'test1', 123, 50, 6150, 6150, ''),
(38, 'test1', 'test1', 123, 50, 6150, 6150, ''),
(38, 'test1', 'test1', 123, 50, 6150, 6150, ''),
(38, 'test1', 'test1', 123, 50, 6150, 6150, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(39, 'test', 'test1', 12, 421, 5052, 6408, ''),
(39, '', 'example', 12, 113, 1356, 6408, ''),
(40, 'test', 'example', 12, 131, 1572, 6026, ''),
(40, '', 'test1', 34, 131, 4454, 6026, ''),
(40, 'test', 'example', 12, 131, 1572, 6026, ''),
(40, '', 'test1', 34, 131, 4454, 6026, ''),
(40, 'test', 'example', 12, 131, 1572, 6026, ''),
(40, '', 'test1', 34, 131, 4454, 6026, ''),
(0, 'asdas', 'asdasd', 2323, 231, 536613, 536613, ''),
(0, 'example', 'sadas', 12, 213, 2556, 2556, ''),
(0, 'example', 'sadas', 12, 213, 2556, 2556, ''),
(0, 'Jamews', 'asdca', 12, 141, 1692, 1692, ''),
(0, 'Jamews', 'asdca', 12, 141, 1692, 1692, ''),
(0, 'asdase', 'jamessdsa', 1231, 13, 16003, 16003, ''),
(0, 'asdase', 'jamessdsa', 1231, 13, 16003, 16003, 'budget_plan_1750664769.pdf'),
(1, 'example', 'example', 131, 31, 4061, 4061, 'budget_plan_1750664779.pdf'),
(1, 'example', 'example', 131, 31, 4061, 4061, 'budget_plan_1750665172.pdf'),
(1, 'example', 'example', 131, 31, 4061, 4061, 'budget_plan_1750665183.pdf'),
(1, 'example', 'example', 131, 31, 4061, 4061, 'budget_plan_1750665212.pdf'),
(1, '12314', '123412', 241, 231, 55671, 55671, 'budget_plan_1750665236.pdf'),
(1, '12314', '123412', 241, 231, 55671, 55671, 'budget_plan_1750665556.pdf'),
(1, 'asdas', 'asda', 23, 121, 2783, 2783, 'budget_plan_1750665629.pdf'),
(1, 'tesata', 'sadasdsa', 231, 213, 49203, 49203, 'budget_plan_1750665655.pdf'),
(1, 'tesata', 'sadasdsa', 231, 213, 49203, 49203, 'budget_plan_1750666158.pdf'),
(1, 'example', 'asdasdas', 42, 32, 1344, 6657, 'budget_plan_1750666212.pdf'),
(1, '', 'adsasdas', 23, 231, 5313, 6657, 'budget_plan_1750666212.pdf'),
(1, 'example', 'asdasdas', 42, 32, 1344, 6657, 'budget_plan_1750667276.pdf'),
(1, '', 'adsasdas', 23, 231, 5313, 6657, 'budget_plan_1750667276.pdf'),
(1, 'example', 'asdasdas', 42, 32, 1344, 6657, 'budget_plan_1750667734.pdf'),
(1, '', 'adsasdas', 23, 231, 5313, 6657, 'budget_plan_1750667734.pdf'),
(1, 'example', 'sadjames', 1, 20, 20, 20, 'budget_plan_1750668085.pdf'),
(1, 'example', 'sadjames', 1, 20, 20, 20, 'budget_plan_1750668204.pdf'),
(3, 'example', 'asd', 12, 12, 144, 144, 'budget_plan_1750668866.pdf'),
(3, 'example', 'asd', 12, 12, 144, 144, 'budget_plan_1750668869.pdf'),
(3, 'example', 'asd', 12, 12, 144, 144, 'budget_plan_1750668883.pdf'),
(5, 'asdas', 'dasd', 3131, 1, 3131, 3131, 'budget_plan_1750669174.pdf'),
(5, 'asdas', 'dasd', 3131, 1, 3131, 3131, 'budget_plan_1750669318.pdf'),
(5, 'asdas', 'dasd', 3131, 1, 3131, 3131, 'budget_plan_1750669323.pdf'),
(6, 'example', 'asdas', 131, 31, 4061, 4061, 'budget_plan_1750669419.pdf'),
(6, 'example', 'asdas', 131, 31, 4061, 4061, 'budget_plan_1750669545.pdf'),
(8, 'example', 'jamessdsa', 13, 13, 169, 169, 'budget_plan_1750669833.pdf'),
(10, 'Jamews', 'asdasd', 13414, 141, 1891374, 1891374, 'budget_plan_1750670004.pdf'),
(12, 'sadasf', 'afasf', 1414, 141, 199374, 199374, 'budget_plan_1750670145.pdf'),
(14, 'Jamews', 'jamessdsa', 24, 321, 7704, 7704, 'budget_plan_1750670316.pdf'),
(16, 'Jamews', 'jamessdsa', 114, 1, 114, 114, 'budget_plan_1750670555.pdf'),
(18, 'sadasd', 'sadas da', 13, 131, 1703, 1703, 'budget_plan_1750670848.pdf'),
(19, 'Jamews', 'sa dasd ', 131, 1341, 175671, 175671, 'budget_plan_1750671077.pdf'),
(23, '321312', 'sadas', 13131, 3131, 41113161, 41113161, 'budget_plan_1750692573.pdf'),
(23, '321312', 'sadas', 13131, 3131, 41113161, 41113161, 'budget_plan_1750692620.pdf'),
(23, '321312', 'sadas', 13131, 3131, 41113161, 41113161, 'budget_plan_1750692643.pdf'),
(23, '321312', 'sadas', 13131, 3131, 41113161, 41113161, 'budget_plan_1750692773.pdf'),
(23, '321312', 'sadas', 13131, 3131, 41113161, 41113161, 'budget_plan_1750692880.pdf'),
(23, '321312', 'sadas', 13131, 3131, 41113161, 41113161, 'budget_plan_1750692888.pdf'),
(23, '321312', 'sadas', 13131, 3131, 41113161, 41113161, 'budget_plan_1750692895.pdf'),
(23, '321312', 'sadas', 13131, 3131, 41113161, 41113161, 'budget_plan_1750692896.pdf'),
(23, '321312', 'sadas', 13131, 3131, 41113161, 41113161, 'budget_plan_1750692903.pdf'),
(23, '321312', 'sadas', 13131, 3131, 41113161, 41113161, 'budget_plan_1750692992.pdf'),
(24, 'adsa', '311', 1341, 131, 175671, 175671, 'budget_plan_1750693278.pdf'),
(24, 'adsa', '311', 1341, 131, 175671, 175671, 'budget_plan_1750693282.pdf'),
(25, '31341', 'sadasda', 3123, 2312, 7220376, 7220376, 'budget_plan_1750693435.pdf'),
(25, '31341', 'sadasda', 3123, 2312, 7220376, 7220376, 'budget_plan_1750693436.pdf'),
(25, '31341', 'sadasda', 3123, 2312, 7220376, 7220376, 'budget_plan_1750693440.pdf'),
(25, '31341', 'sadasda', 3123, 2312, 7220376, 7220376, 'budget_plan_1750693442.pdf'),
(25, '31341', 'sadasda', 3123, 2312, 7220376, 7220376, 'budget_plan_1750693444.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750693511.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750693543.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750693593.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750693665.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750693668.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750693671.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750693798.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750693801.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750693820.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, ''),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, ''),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, ''),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750694202.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750694286.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750694320.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750694361.pdf'),
(26, '2adasd', '41saddas', 12, 3411, 40932, 40932, 'budget_plan_1750694484.pdf'),
(27, 'Test', 'Test', 13, 41, 533, 2366, 'budget_plan_1750694539.pdf'),
(27, '', 'Test', 13, 141, 1833, 2366, 'budget_plan_1750694539.pdf'),
(27, 'Test', 'Test', 13, 41, 533, 2366, 'budget_plan_1750694548.pdf'),
(27, '', 'Test', 13, 141, 1833, 2366, 'budget_plan_1750694548.pdf'),
(27, 'Test', 'Test', 13, 41, 533, 2366, 'budget_plan_1750694551.pdf'),
(27, '', 'Test', 13, 141, 1833, 2366, 'budget_plan_1750694551.pdf'),
(27, 'Test', 'Test', 13, 41, 533, 2366, 'budget_plan_1750694654.pdf'),
(27, '', 'Test', 13, 141, 1833, 2366, 'budget_plan_1750694654.pdf'),
(27, 'Test', 'Test', 13, 41, 533, 2366, 'budget_plan_1750694667.pdf'),
(27, '', 'Test', 13, 141, 1833, 2366, 'budget_plan_1750694667.pdf'),
(27, 'Test', 'Test', 13, 41, 533, 2366, 'budget_plan_1750694821.pdf'),
(27, '', 'Test', 13, 141, 1833, 2366, 'budget_plan_1750694821.pdf'),
(27, 'Test', 'Test', 13, 41, 533, 2366, 'budget_plan_1750694948.pdf'),
(27, '', 'Test', 13, 141, 1833, 2366, 'budget_plan_1750694948.pdf'),
(27, 'Test', 'Test', 13, 41, 533, 2366, 'budget_plan_1750694961.pdf'),
(27, '', 'Test', 13, 141, 1833, 2366, 'budget_plan_1750694961.pdf'),
(27, 'Test', 'Test', 13, 41, 533, 2366, 'budget_plan_1750694977.pdf'),
(27, '', 'Test', 13, 141, 1833, 2366, 'budget_plan_1750694977.pdf'),
(29, 'Test', 'sadas', 314, 4, 1256, 5729, 'budget_plan_1750695073.pdf'),
(29, '', 'sadas', 213, 21, 4473, 5729, 'budget_plan_1750695073.pdf'),
(29, 'Test', 'sadas', 314, 4, 1256, 5729, 'budget_plan_1750695080.pdf'),
(29, '', 'sadas', 213, 21, 4473, 5729, 'budget_plan_1750695080.pdf'),
(30, 'Test', 'Test', 12, 100, 1200, 1200, 'budget_plan_1750695242.pdf'),
(30, 'Test', 'Test', 12, 100, 1200, 1200, 'budget_plan_1750695245.pdf'),
(30, 'Test', 'Test', 12, 100, 1200, 1200, 'budget_plan_1750695416.pdf'),
(31, 'asdasd', 'asdasda', 131, 31, 4061, 4061, 'budget_plan_1750695891.pdf'),
(32, 'adsa', 'sadas', 12, 12, 144, 144, 'budget_plan_1750695985.pdf'),
(32, 'adsa', 'sadas', 12, 12, 144, 144, 'budget_plan_1750695988.pdf'),
(33, '321312', 'sadas', 21, 23, 483, 483, 'budget_plan_1750696069.pdf'),
(34, 'adsa', 'sadas', 12, 12, 144, 144, 'budget_plan_1750696167.pdf'),
(35, 'Test', 'Test1', 213, 311, 66243, 66646, 'budget_plan_1751114913.pdf'),
(35, '', 'Test1', 31, 13, 403, 66646, 'budget_plan_1751114913.pdf'),
(35, 'Test', 'Test1', 213, 311, 66243, 66646, 'budget_plan_1751114917.pdf'),
(35, '', 'Test1', 31, 13, 403, 66646, 'budget_plan_1751114917.pdf'),
(35, 'Test', 'Test1', 213, 311, 66243, 66646, 'budget_plan_1751115182.pdf'),
(35, '', 'Test1', 31, 13, 403, 66646, 'budget_plan_1751115182.pdf'),
(35, 'Test', 'Test1', 213, 311, 66243, 66646, 'budget_plan_1751115192.pdf'),
(35, '', 'Test1', 31, 13, 403, 66646, 'budget_plan_1751115192.pdf'),
(40, '321312', 'adsadas', 12, 3131, 37572, 37572, 'budget_plan_1751116063.pdf'),
(40, '321312', 'adsadas', 12, 3131, 37572, 37572, 'budget_plan_1751116163.pdf'),
(40, '321312', 'adsadas', 12, 3131, 37572, 37572, 'budget_plan_1751116280.pdf'),
(41, '321312', 'Test', 1331, 1, 1331, 1331, 'budget_plan_1751989155.pdf'),
(41, '321312', 'Test', 1331, 1, 1331, 1331, 'budget_plan_1751989161.pdf'),
(45, 'adsa', 'sadas', 13, 13131, 170703, 170703, 'budget_plan_1752671622.pdf'),
(45, 'adsa', 'sadas', 13, 13131, 170703, 170703, 'budget_plan_1752671624.pdf'),
(46, 'adsa', 'sada', 131, 13, 1703, 1703, 'budget_plan_1752672507.pdf'),
(46, 'adsa', 'sada', 131, 13, 1703, 1703, 'budget_plan_1752672509.pdf'),
(47, '2adasd', 'sadas', 13, 13, 169, 169, 'budget_plan_1752672857.pdf'),
(47, '2adasd', 'sadas', 13, 13, 169, 169, 'budget_plan_1752672860.pdf'),
(47, '2adasd', 'sadas', 13, 13, 169, 169, 'budget_plan_1752673139.pdf'),
(48, 'ads', 'asda', 131, 31, 4061, 4061, 'budget_plan_1752673158.pdf'),
(48, 'ads', 'asda', 131, 31, 4061, 4061, 'budget_plan_1752673160.pdf'),
(48, 'ads', 'asda', 131, 31, 4061, 4061, 'budget_plan_1752673255.pdf'),
(48, 'ads', 'asda', 131, 31, 4061, 4061, 'budget_plan_1752673390.pdf'),
(49, 'asd', 'asd', 13, 131, 1703, 1703, 'budget_plan_1752673404.pdf'),
(49, 'asd', 'asd', 13, 131, 1703, 1703, 'budget_plan_1752673406.pdf'),
(50, '321312', 'sadas', 1, 4114, 4114, 4114, 'budget_plan_1752673548.pdf'),
(50, '321312', 'sadas', 1, 4114, 4114, 4114, 'budget_plan_1752673549.pdf'),
(50, '321312', 'sadas', 1, 4114, 4114, 4114, 'budget_plan_1752673633.pdf'),
(50, '321312', 'sadas', 1, 4114, 4114, 4114, 'budget_plan_1752673750.pdf'),
(52, 'dsa', 'asdas', 12, 121, 1452, 1452, 'budget_plan_1752673765.pdf'),
(52, 'dsa', 'asdas', 12, 121, 1452, 1452, 'budget_plan_1752673766.pdf'),
(52, 'dsa', 'asdas', 12, 121, 1452, 1452, 'budget_plan_1752673832.pdf'),
(54, '321312', 'sad', 311, 3141, 976851, 976851, 'budget_plan_1752673887.pdf'),
(54, '321312', 'sad', 311, 3141, 976851, 976851, 'budget_plan_1752673889.pdf'),
(54, '321312', 'sad', 311, 3141, 976851, 976851, 'budget_plan_1752674149.pdf'),
(55, 'sadasda', 'asda', 13, 131, 1703, 1703, 'budget_plan_1752674163.pdf'),
(55, 'sadasda', 'asda', 13, 131, 1703, 1703, 'budget_plan_1752674164.pdf'),
(55, 'sadasda', 'asda', 13, 131, 1703, 1703, 'budget_plan_1752676070.pdf'),
(56, 'adsa', 'adsadas', 31, 1313, 40703, 40703, 'budget_plan_1752676087.pdf'),
(56, 'adsa', 'adsadas', 31, 1313, 40703, 40703, 'budget_plan_1752676090.pdf'),
(56, 'adsa', 'adsadas', 31, 1313, 40703, 40703, 'budget_plan_1752676142.pdf'),
(57, 'sadasd', 'asdas', 12, 134431, 1613172, 1613172, 'budget_plan_1752676155.pdf'),
(57, 'sadasd', 'asdas', 12, 134431, 1613172, 1613172, 'budget_plan_1752676156.pdf'),
(57, 'sadasd', 'asdas', 12, 134431, 1613172, 1613172, 'budget_plan_1752676335.pdf'),
(58, 'asdas', 'dasdas', 1231, 131, 161261, 161261, 'budget_plan_1752676347.pdf'),
(58, 'asdas', 'dasdas', 1231, 131, 161261, 161261, 'budget_plan_1752676351.pdf'),
(58, 'asdas', 'dasdas', 1231, 131, 161261, 161261, 'budget_plan_1752676434.pdf'),
(59, 'dsad', 'asd', 13, 13, 169, 169, 'budget_plan_1752676446.pdf'),
(59, 'dsad', 'asd', 13, 13, 169, 169, 'budget_plan_1752676449.pdf'),
(59, 'dsad', 'asd', 13, 13, 169, 169, 'budget_plan_1752676483.pdf'),
(60, 'asd', 'asdasd', 13, 1331, 17303, 17303, 'budget_plan_1752676498.pdf'),
(60, 'asd', 'asdasd', 13, 1331, 17303, 17303, 'budget_plan_1752676501.pdf'),
(61, 'asdasd', 'asdasdas', 1231, 13131, 16164261, 16164261, 'budget_plan_1752676537.pdf'),
(61, 'asdasd', 'asdasdas', 1231, 13131, 16164261, 16164261, 'budget_plan_1752676539.pdf'),
(62, '2adasd', 'sadas', 13, 2311, 30043, 30043, 'budget_plan_1753017060.pdf'),
(62, '2adasd', 'sadas', 13, 2311, 30043, 30043, 'budget_plan_1753017062.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `client_account`
--

CREATE TABLE `client_account` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `organization` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE `proposals` (
  `id` int(11) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `event_type` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `budget` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `adviser_form` varchar(255) DEFAULT NULL,
  `certification` varchar(255) DEFAULT NULL,
  `financial` varchar(255) DEFAULT NULL,
  `reports` varchar(255) DEFAULT NULL,
  `letter_attachment` varchar(255) DEFAULT NULL,
  `constitution` varchar(255) DEFAULT NULL,
  `budget_approved` varchar(50) DEFAULT NULL,
  `budget_amount` decimal(10,2) DEFAULT NULL,
  `budget_status` enum('pending','approved','disapproved') DEFAULT 'pending',
  `status_level1` enum('Pending','Approved','Disapproved') NOT NULL DEFAULT 'Pending',
  `status_level2` enum('Pending','Approved','Disapproved') NOT NULL DEFAULT 'Pending',
  `status_level3` enum('Pending','Approved','Disapproved') NOT NULL DEFAULT 'Pending',
  `level` varchar(50) DEFAULT 'VP',
  `budget_file` varchar(255) NOT NULL,
  `submit` varchar(255) NOT NULL,
  `notified` tinyint(1) DEFAULT 0,
  `remarks` text DEFAULT NULL,
  `disapproved_by` varchar(255) DEFAULT NULL,
  `activity_plan` varchar(255) NOT NULL,
  `viewed` tinyint(1) DEFAULT 0,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_logo`
--

CREATE TABLE `site_logo` (
  `id` int(11) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `uploaded_by` varchar(100) DEFAULT NULL,
  `date_uploaded` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site_logo`
--

INSERT INTO `site_logo` (`id`, `filepath`, `filename`, `uploaded_by`, `date_uploaded`) VALUES
(2, 'uploads/1sd.jpg', '1sd.jpg', NULL, '2025-07-04 17:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `solo_accounts`
--

CREATE TABLE `solo_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `fullname` varchar(255) DEFAULT '',
  `firstlogin` varchar(255) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solo_accounts`
--

INSERT INTO `solo_accounts` (`id`, `username`, `password`, `role`, `venue`, `email`, `fullname`, `firstlogin`, `created_at`) VALUES
(1, 'gym_incharge', 'user12345asdasd', 'GymInCharge', 'Gym', '', 'Gym In Charge', 'no', '2025-06-24 16:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `sooproposal`
--

CREATE TABLE `sooproposal` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `activity_name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `venue` varchar(255) NOT NULL,
  `budget_file` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `POA_file` varchar(255) NOT NULL,
  `objective` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `budget` varchar(255) NOT NULL,
  `person_involved` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `viewed` tinyint(1) NOT NULL,
  `remarks` text NOT NULL,
  `disapproved_by` varchar(255) NOT NULL,
  `submit` varchar(255) NOT NULL,
  `receipt_file` varchar(255) NOT NULL,
  `financialstatus` varchar(255) NOT NULL,
  `letter_attachment` varchar(255) NOT NULL,
  `adviser_form` varchar(255) NOT NULL,
  `constitution` varchar(255) NOT NULL,
  `certification` varchar(255) NOT NULL,
  `reports` varchar(255) NOT NULL,
  `financial` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `venue_db`
--

CREATE TABLE `venue_db` (
  `id` int(11) NOT NULL,
  `organizer` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `capacity` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `venue_db`
--

INSERT INTO `venue_db` (`id`, `organizer`, `email`, `venue`, `capacity`) VALUES
(10, 'James Leorix', '', 'Voag', 2500),
(11, 'Gym In Charge', '', 'Gym', 2455);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `client_account`
--
ALTER TABLE `client_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_logo`
--
ALTER TABLE `site_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solo_accounts`
--
ALTER TABLE `solo_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `sooproposal`
--
ALTER TABLE `sooproposal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue_db`
--
ALTER TABLE `venue_db`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `client_account`
--
ALTER TABLE `client_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposals`
--
ALTER TABLE `proposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `site_logo`
--
ALTER TABLE `site_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `solo_accounts`
--
ALTER TABLE `solo_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sooproposal`
--
ALTER TABLE `sooproposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `venue_db`
--
ALTER TABLE `venue_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
