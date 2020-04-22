-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2020 at 02:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abcd_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `ID` int(6) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `State` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Keywords` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Recipe_links` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Video_links` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Notes` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`ID`, `Name`, `Type`, `State`, `Country`, `Description`, `Keywords`, `Recipe_links`, `Video_links`, `Status`, `Notes`, `Image`) VALUES
(1, 'Name_1', 'Type_1', 'State_1', 'Country_1', 'Description_1', 'keyword1, keyword 2', 'Recipe_links_1', 'Video_links_1', 'Proposed', 'Notes_1', 'food1.jpg'),
(2, 'Name_2', 'Type_2', 'State_1', 'Country_2', 'Description_2', 'keyword_1', 'Recipe_links_2', 'Video_links_2', 'Proposed', 'Notes_2', 'food2.jpg'),
(3, 'Name_3', 'Type_3', 'State_1', 'Country_3', 'Description_3', 'keyword_3', 'Recipe_links_3', 'Video_links_3', 'Proposed', 'Notes_3', 'food3.jpg'),
(4, 'Name_4', 'Type_4', 'State_1', 'Country_4', 'Description_4', 'keyword_3', 'Recipe_links_4', 'Video_links_4', 'Proposed', 'Notes_4', 'food4.jpg'),
(5, 'Name_5', 'Type_5', 'State_1', 'Country_5', 'Description_5', 'keyword_3', 'Recipe_links_5', 'Video_links_5', 'Proposed', 'Notes_5', 'food5.jpg'),
(6, 'Name_6', 'Type_6', 'State_1', 'Country_6', 'Description_6', 'keyword_3', 'Recipe_links_6', 'Video_links_6', 'Proposed', 'Notes_6', 'food6.jpg'),
(7, 'Name_7', 'Type_7', 'State_1', 'Country_7', 'Description_7', 'keyword_3', 'Recipe_links_7', 'Video_links_7', 'Proposed', 'Notes_7', 'food1.jpg'),
(8, 'Name_8', 'Type_8', 'State_1', 'Country_8', 'Description_8', 'keyword_3', 'Recipe_links_8', 'Video_links_8', 'Proposed', 'Notes_8', 'food2.jpg'),
(9, 'Name_9', 'Type_9', 'State_1', 'Country_9', 'Description_9', 'keyword_3', 'Recipe_links_9', 'Video_links_9', 'Proposed', 'Notes_9', 'food3.jpg'),
(10, 'Name_10', 'Type_10', 'State_1', 'Country_10', 'Description_10', 'keyword_3', 'Recipe_links_10', 'Video_links_10', 'Proposed', 'Notes_10', 'food4.jpg'),
(11, 'Name_11', 'Type_11', 'State_1', 'Country_11', 'Description_11', 'keyword_3', 'Recipe_links_11', 'Video_links_11', 'Proposed', 'Notes_11', 'food5.jpg'),
(12, 'Name_12', 'Type_12', 'State_1', 'Country_12', 'Description_12', 'keyword_3', 'Recipe_links_12', 'Video_links_12', 'Proposed', 'Notes_12', 'food6.jpg'),
(13, 'Name_13', 'Type_13', 'State_1', 'Country_13', 'Description_13', 'keyword_3', 'Recipe_links_13', 'Video_links_13', 'Proposed', 'Notes_13', 'food1.jpg'),
(14, 'Name_14', 'Type_14', 'State_1', 'Country_14', 'Description_14', 'keyword_3', 'Recipe_links_14', 'Video_links_14', 'Proposed', 'Notes_14', 'food2.jpg'),
(15, 'Name_15', 'Type_15', 'State_1', 'Country_15', 'Description_15', 'keyword_3', 'Recipe_links_15', 'Video_links_15', 'Proposed', 'Notes_15', 'food3.jpg'),
(16, 'Name_16', 'Type_16', 'State_1', 'Country_16', 'Description_16', 'keyword_1', 'Recipe_links_16', 'Video_links_16', 'Proposed', 'Notes_16', 'food4.jpg'),
(17, 'Name_17', 'Type_17', 'State_1', 'Country_17', 'Description_17', 'keyword_1', 'Recipe_links_17', 'Video_links_17', 'Proposed', 'Notes_17', 'food5.jpg'),
(18, 'Name_18', 'Type_18', 'State_1', 'Country_18', 'Description_18', 'keyword_1', 'Recipe_links_18', 'Video_links_18', 'Proposed', 'Notes_18', 'food6.jpg'),
(19, 'Name_19', 'Type_19', 'State_1', 'Country_19', 'Description_19', 'keyword_1', 'Recipe_links_19', 'Video_links_19', 'Proposed', 'Notes_19', 'food1.jpg'),
(20, 'Name_20', 'Type_20', 'State_1', 'Country_20', 'Description_20', 'keyword_1', 'Recipe_links_20', 'Video_links_20', 'Proposed', 'Notes_20', 'food2.jpg'),
(21, 'Name_21', 'Type_21', 'State_1', 'Country_21', 'Description_21', 'keyword_1', 'Recipe_links_21', 'Video_links_21', 'Proposed', 'Notes_21', 'food3.jpg'),
(22, 'Name_22', 'Type_22', 'State_1', 'Country_22', 'Description_22', 'keyword_1', 'Recipe_links_22', 'Video_links_22', 'Proposed', 'Notes_22', 'food4.jpg'),
(23, 'Name_23', 'Type_23', 'State_1', 'Country_23', 'Description_23', 'keyword_1', 'Recipe_links_23', 'Video_links_23', 'Proposed', 'Notes_23', 'food5.jpg'),
(24, 'Name_24', 'Type_24', 'State_2', 'Country_24', 'Description_24', 'keyword_1', 'Recipe_links_24', 'Video_links_24', 'Proposed', 'Notes_24', 'food6.jpg'),
(25, 'Name_25', 'Type_25', 'State_2', 'Country_25', 'Description_25', 'keyword_1', 'Recipe_links_25', 'Video_links_25', 'Proposed', 'Notes_25', 'food1.jpg'),
(26, 'Name_26', 'Type_26', 'State_2', 'Country_26', 'Description_26', 'keyword_1', 'Recipe_links_26', 'Video_links_26', 'Proposed', 'Notes_26', 'food2.jpg'),
(27, 'Name_27', 'Type_27', 'State_2', 'Country_27', 'Description_27', 'keyword_1', 'Recipe_links_27', 'Video_links_27', 'Proposed', 'Notes_27', 'food3.jpg'),
(28, 'Name_28', 'Type_28', 'State_2', 'Country_28', 'Description_28', 'keyword_1', 'Recipe_links_28', 'Video_links_28', 'Proposed', 'Notes_28', 'food4.jpg'),
(29, 'Name_29', 'Type_29', 'State_2', 'Country_29', 'Description_29', 'keyword_1', 'Recipe_links_29', 'Video_links_29', 'Proposed', 'Notes_29', 'food5.jpg'),
(30, 'Name_30', 'Type_30', 'State_2', 'Country_30', 'Description_30', 'keyword_1', 'Recipe_links_30', 'Video_links_30', 'Proposed', 'Notes_30', 'food6.jpg'),
(31, 'Name_31', 'Type_1', 'State_2', 'Country_31', 'Description_31', 'keyword_1', 'Recipe_links_31', 'Video_links_31', 'Proposed', 'Notes_31', 'food1.jpg'),
(32, 'Name_32', 'Type_2', 'State_2', 'Country_32', 'Description_32', 'keyword_1', 'Recipe_links_32', 'Video_links_32', 'Proposed', 'Notes_32', 'food2.jpg'),
(33, 'Name_33', 'Type_3', 'State_2', 'Country_33', 'Description_33', 'keyword_1', 'Recipe_links_33', 'Video_links_33', 'Proposed', 'Notes_33', 'food3.jpg'),
(34, 'Name_34', 'Type_4', 'State_2', 'Country_34', 'Description_34', 'keyword_1', 'Recipe_links_34', 'Video_links_34', 'Proposed', 'Notes_34', 'food4.jpg'),
(35, 'Name_35', 'Type_5', 'State_2', 'Country_35', 'Description_35', 'keyword_1', 'Recipe_links_35', 'Video_links_35', 'Proposed', 'Notes_35', 'food5.jpg'),
(36, 'Name_36', 'Type_6', 'State_2', 'Country_36', 'Description_36', 'keyword_1', 'Recipe_links_36', 'Video_links_36', 'Proposed', 'Notes_36', 'food6.jpg'),
(37, 'Name_37', 'Type_7', 'State_3', 'Country_37', 'Description_37', 'keyword_1', 'Recipe_links_37', 'Video_links_37', 'Proposed', 'Notes_37', 'food1.jpg'),
(38, 'Name_38', 'Type_8', 'State_3', 'Country_38', 'Description_38', 'keyword_1', 'Recipe_links_38', 'Video_links_38', 'Proposed', 'Notes_38', 'food2.jpg'),
(39, 'Name_39', 'Type_9', 'State_3', 'Country_39', 'Description_39', 'keyword_1', 'Recipe_links_39', 'Video_links_39', 'Proposed', 'Notes_39', 'food3.jpg'),
(40, 'Name_40', 'Type_10', 'State_3', 'Country_40', 'Description_40', 'keyword_1', 'Recipe_links_40', 'Video_links_40', 'Proposed', 'Notes_40', 'food4.jpg'),
(41, 'Name_41', 'Type_11', 'State_3', 'Country_41', 'Description_41', 'keyword_1', 'Recipe_links_41', 'Video_links_41', 'Proposed', 'Notes_41', 'food5.jpg'),
(42, 'Name_42', 'Type_12', 'State_3', 'Country_42', 'Description_42', 'keyword_1', 'Recipe_links_42', 'Video_links_42', 'Proposed', 'Notes_42', 'food6.jpg'),
(43, 'Name_43', 'Type_13', 'State_3', 'Country_43', 'Description_43', 'keyword_1', 'Recipe_links_43', 'Video_links_43', 'Proposed', 'Notes_43', 'food1.jpg'),
(44, 'Name_44', 'Type_14', 'State_3', 'Country_44', 'Description_44', 'keyword_1', 'Recipe_links_44', 'Video_links_44', 'Proposed', 'Notes_44', 'food2.jpg'),
(45, 'Name_45', 'Type_15', 'State_3', 'Country_45', 'Description_45', 'keyword_1', 'Recipe_links_45', 'Video_links_45', 'Proposed', 'Notes_45', 'food3.jpg'),
(46, 'Name_46', 'Type_16', 'State_3', 'Country_46', 'Description_46', 'keyword_1', 'Recipe_links_46', 'Video_links_46', 'In Review', 'Notes_46', 'food4.jpg'),
(47, 'Name_47', 'Type_17', 'State_3', 'Country_47', 'Description_47', 'keyword_1', 'Recipe_links_47', 'Video_links_47', 'In Review', 'Notes_47', 'food5.jpg'),
(48, 'Name_48', 'Type_18', 'State_3', 'Country_48', 'Description_48', 'keyword_1', 'Recipe_links_48', 'Video_links_48', 'In Review', 'Notes_48', 'food6.jpg'),
(49, 'Name_49', 'Type_19', 'State_3', 'Country_49', 'Description_49', 'keyword_1', 'Recipe_links_49', 'Video_links_49', 'In Review', 'Notes_49', 'food1.jpg'),
(50, 'Name_50', 'Type_20', 'State_3', 'Country_50', 'Description_50', 'keyword_1', 'Recipe_links_50', 'Video_links_50', 'In Review', 'Notes_50', 'food2.jpg'),
(51, 'Name_51', 'Type_21', 'State_3', 'Country_51', 'Description_51', 'keyword_1', 'Recipe_links_51', 'Video_links_51', 'In Review', 'Notes_51', 'food3.jpg'),
(52, 'Name_52', 'Type_22', 'State_3', 'Country_52', 'Description_52', 'keyword_2', 'Recipe_links_52', 'Video_links_52', 'In Review', 'Notes_52', 'food4.jpg'),
(53, 'Name_53', 'Type_23', 'State_3', 'Country_53', 'Description_53', 'keyword_2', 'Recipe_links_53', 'Video_links_53', 'In Review', 'Notes_53', 'food5.jpg'),
(54, 'Name_54', 'Type_24', 'State_3', 'Country_54', 'Description_54', 'keyword_2', 'Recipe_links_54', 'Video_links_54', 'In Review', 'Notes_54', 'food6.jpg'),
(55, 'Name_55', 'Type_25', 'State_3', 'Country_55', 'Description_55', 'keyword_2', 'Recipe_links_55', 'Video_links_55', 'In Review', 'Notes_55', 'food1.jpg'),
(56, 'Name_56', 'Type_26', 'State_3', 'Country_56', 'Description_56', 'keyword_2', 'Recipe_links_56', 'Video_links_56', 'In Review', 'Notes_56', 'food2.jpg'),
(57, 'Name_57', 'Type_27', 'State_3', 'Country_57', 'Description_57', 'keyword_2', 'Recipe_links_57', 'Video_links_57', 'In Review', 'Notes_57', 'food3.jpg'),
(58, 'Name_58', 'Type_28', 'State_3', 'Country_58', 'Description_58', 'keyword_2', 'Recipe_links_58', 'Video_links_58', 'In Review', 'Notes_58', 'food4.jpg'),
(59, 'Name_59', 'Type_29', 'State_3', 'Country_59', 'Description_59', 'keyword_2', 'Recipe_links_59', 'Video_links_59', 'In Review', 'Notes_59', 'food5.jpg'),
(60, 'Name_60', 'Type_30', 'State_4', 'Country_60', 'Description_60', 'keyword_2', 'Recipe_links_60', 'Video_links_60', 'In Review', 'Notes_60', 'food6.jpg'),
(61, 'Name_61', 'Type_31', 'State_4', 'Country_61', 'Description_61', 'keyword_4', 'Recipe_links_61', 'Video_links_61', 'In Review', 'Notes_61', 'food1.jpg'),
(62, 'Name_62', 'Type_32', 'State_4', 'Country_62', 'Description_62', 'keyword_4', 'Recipe_links_62', 'Video_links_62', 'In Review', 'Notes_62', 'food2.jpg'),
(63, 'Name_63', 'Type_33', 'State_4', 'Country_63', 'Description_63', 'keyword_4', 'Recipe_links_63', 'Video_links_63', 'In Review', 'Notes_63', 'food3.jpg'),
(64, 'Name_64', 'Type_34', 'State_4', 'Country_64', 'Description_64', 'keyword_4', 'Recipe_links_64', 'Video_links_64', 'In Review', 'Notes_64', 'food4.jpg'),
(65, 'Name_65', 'Type_35', 'State_4', 'Country_65', 'Description_65', 'keyword_4', 'Recipe_links_65', 'Video_links_65', 'In Review', 'Notes_65', 'food5.jpg'),
(66, 'Name_66', 'Type_36', 'State_4', 'Country_66', 'Description_66', 'keyword_4', 'Recipe_links_66', 'Video_links_66', 'In Review', 'Notes_66', 'food6.jpg'),
(67, 'Name_67', 'Type_37', 'State_4', 'Country_67', 'Description_67', 'keyword_4', 'Recipe_links_67', 'Video_links_67', 'In Review', 'Notes_67', 'food1.jpg'),
(68, 'Name_68', 'Type_38', 'State_4', 'Country_68', 'Description_68', 'keyword_4', 'Recipe_links_68', 'Video_links_68', 'In Review', 'Notes_68', 'food2.jpg'),
(69, 'Name_69', 'Type_39', 'State_4', 'Country_69', 'Description_69', 'keyword_4', 'Recipe_links_69', 'Video_links_69', 'Approved', 'Notes_69', 'food3.jpg'),
(70, 'Name_70', 'Type_40', 'State_4', 'Country_70', 'Description_70', 'keyword_4', 'Recipe_links_70', 'Video_links_70', 'Approved', 'Notes_70', 'food4.jpg'),
(71, 'Name_71', 'Type_1', 'State_4', 'Country_71', 'Description_71', 'keyword_4', 'Recipe_links_71', 'Video_links_71', 'Approved', 'Notes_71', 'food5.jpg'),
(72, 'Name_72', 'Type_2', 'State_4', 'Country_72', 'Description_72', 'keyword_4', 'Recipe_links_72', 'Video_links_72', 'Approved', 'Notes_72', 'food6.jpg'),
(73, 'Name_73', 'Type_3', 'State_4', 'Country_73', 'Description_73', 'keyword_4', 'Recipe_links_73', 'Video_links_73', 'Approved', 'Notes_73', 'food1.jpg'),
(74, 'Name_74', 'Type_4', 'State_4', 'Country_74', 'Description_74', 'keyword_4', 'Recipe_links_74', 'Video_links_74', 'Approved', 'Notes_74', 'food2.jpg'),
(75, 'Name_75', 'Type_5', 'State_4', 'Country_75', 'Description_75', 'keyword_4', 'Recipe_links_75', 'Video_links_75', 'Approved', 'Notes_75', 'food3.jpg'),
(76, 'Name_76', 'Type_6', 'State_4', 'Country_76', 'Description_76', 'keyword_4', 'Recipe_links_76', 'Video_links_76', 'Approved', 'Notes_76', 'food4.jpg'),
(77, 'Name_77', 'Type_7', 'State_4', 'Country_77', 'Description_77', 'keyword_4', 'Recipe_links_77', 'Video_links_77', 'Approved', 'Notes_77', 'food5.jpg'),
(78, 'Name_78', 'Type_8', 'State_4', 'Country_78', 'Description_78', 'keyword_4', 'Recipe_links_78', 'Video_links_78', 'Approved', 'Notes_78', 'food6.jpg'),
(79, 'Name_79', 'Type_9', 'State_4', 'Country_79', 'Description_79', 'keyword_5', 'Recipe_links_79', 'Video_links_79', 'Approved', 'Notes_79', 'food1.jpg'),
(80, 'Name_80', 'Type_10', 'State_4', 'Country_80', 'Description_80', 'keyword_5', 'Recipe_links_80', 'Video_links_80', 'Approved', 'Notes_80', 'food2.jpg'),
(81, 'Name_81', 'Type_11', 'State_4', 'Country_81', 'Description_81', 'keyword_5', 'Recipe_links_81', 'Video_links_81', 'Approved', 'Notes_81', 'food3.jpg'),
(82, 'Name_82', 'Type_12', 'State_4', 'Country_82', 'Description_82', 'keyword_5', 'Recipe_links_82', 'Video_links_82', 'Approved', 'Notes_82', 'food4.jpg'),
(83, 'Name_83', 'Type_13', 'State_4', 'Country_83', 'Description_83', 'keyword_5', 'Recipe_links_83', 'Video_links_83', 'Approved', 'Notes_83', 'food5.jpg'),
(84, 'Name_84', 'Type_14', 'State_4', 'Country_84', 'Description_84', 'keyword_5', 'Recipe_links_84', 'Video_links_84', 'Approved', 'Notes_84', 'food6.jpg'),
(85, 'Name_85', 'Type_15', 'State_4', 'Country_85', 'Description_85', 'keyword_5', 'Recipe_links_85', 'Video_links_85', 'Approved', 'Notes_85', 'food1.jpg'),
(86, 'Name_86', 'Type_16', 'State_4', 'Country_86', 'Description_86', 'keyword_5', 'Recipe_links_86', 'Video_links_86', 'Approved', 'Notes_86', 'food2.jpg'),
(87, 'Name_87', 'Type_1', 'State_4', 'Country_87', 'Description_87', 'keyword_5', 'Recipe_links_87', 'Video_links_87', 'Approved', 'Notes_87', 'food3.jpg'),
(88, 'Name_88', 'Type_2', 'State_4', 'Country_88', 'Description_88', 'keyword_5', 'Recipe_links_88', 'Video_links_88', 'Approved', 'Notes_88', 'food4.jpg'),
(89, 'Name_89', 'Type_3', 'State_4', 'Country_89', 'Description_89', 'keyword_5', 'Recipe_links_89', 'Video_links_89', 'Approved', 'Notes_89', 'food5.jpg'),
(90, 'Name_90', 'Type_4', 'State_4', 'Country_90', 'Description_90', 'keyword_5', 'Recipe_links_90', 'Video_links_90', 'Approved', 'Notes_90', 'food6.jpg'),
(91, 'Name_91', 'Type_5', 'State_4', 'Country_91', 'Description_91', 'keyword_5', 'Recipe_links_91', 'Video_links_91', 'Approved', 'Notes_91', 'food1.jpg'),
(92, 'Name_92', 'Type_6', 'State_4', 'Country_92', 'Description_92', 'keyword_5', 'Recipe_links_92', 'Video_links_92', 'Approved', 'Notes_92', 'food2.jpg'),
(93, 'Name_93', 'Type_7', 'State_4', 'Country_93', 'Description_93', 'keyword_5', 'Recipe_links_93', 'Video_links_93', 'Approved', 'Notes_93', 'food3.jpg'),
(94, 'Name_94', 'Type_8', 'State_5', 'Country_94', 'Description_94', 'keyword_5', 'Recipe_links_94', 'Video_links_94', 'Approved', 'Notes_94', 'food4.jpg'),
(95, 'Name_95', 'Type_9', 'State_5', 'Country_95', 'Description_95', 'keyword_5', 'Recipe_links_95', 'Video_links_95', 'Approved', 'Notes_95', 'food5.jpg'),
(96, 'Name_96', 'Type_10', 'State_5', 'Country_96', 'Description_96', 'keyword_5', 'Recipe_links_96', 'Video_links_96', 'Approved', 'Notes_96', 'food6.jpg'),
(97, 'Name_97', 'Type_11', 'State_5', 'Country_97', 'Description_97', 'keyword_5', 'Recipe_links_97', 'Video_links_97', 'Approved', 'Notes_97', 'food1.jpg'),
(98, 'Name_98', 'Type_12', 'State_5', 'Country_98', 'Description_98', 'keyword_5', 'Recipe_links_98', 'Video_links_98', 'Approved', 'Notes_98', 'food2.jpg'),
(99, 'Name_99', 'Type_13', 'State_5', 'Country_99', 'Description_99', 'keyword_5', 'Recipe_links_99', 'Video_links_99', 'Approved', 'Notes_99', 'food3.jpg'),
(100, 'Name_100', 'Type_14', 'State_5', 'Country_100', 'Description_100', 'keyword_5', 'Recipe_links_100', 'Video_links_100', 'Approved', 'Notes_100', 'food4.jpg'),
(101, 'Name_101', 'Type_15', 'State_5', 'Country_101', 'Description_101', 'keyword_2', 'Recipe_links_101', 'Video_links_101', 'Approved', 'Notes_101', 'food5.jpg'),
(102, 'Name_102', 'Type_16', 'State_5', 'Country_102', 'Description_102', 'keyword_2, keyword_5', 'Recipe_links_102', 'Video_links_102', 'Approved', 'Notes_102', 'food6.jpg'),
(103, 'Name_103', 'Type_17', 'State_5', 'Country_103', 'Description_103', 'keyword_2, keyword_5', 'Recipe_links_103', 'Video_links_103', 'Approved', 'Notes_103', 'food1.jpg'),
(104, 'Name_104', 'Type_1', 'State_5', 'Country_104', 'Description_104', 'keyword_2, keyword_5', 'Recipe_links_104', 'Video_links_104', 'Approved', 'Notes_104', 'food2.jpg'),
(105, 'Name_105', 'Type_2', 'State_5', 'Country_105', 'Description_105', 'keyword_2, keyword_5', 'Recipe_links_105', 'Video_links_105', 'Approved', 'Notes_105', 'food3.jpg'),
(106, 'Name_106', 'Type_3', 'State_5', 'Country_106', 'Description_106', 'keyword_2, keyword_5', 'Recipe_links_106', 'Video_links_106', 'Approved', 'Notes_106', 'food4.jpg'),
(107, 'Name_107', 'Type_4', 'State_5', 'Country_107', 'Description_107', 'keyword_2, keyword_5', 'Recipe_links_107', 'Video_links_107', 'Approved', 'Notes_107', 'food5.jpg'),
(108, 'Name_108', 'Type_5', 'State_5', 'Country_108', 'Description_108', 'keyword_2, keyword_5', 'Recipe_links_108', 'Video_links_108', 'Approved', 'Notes_108', 'food6.jpg'),
(109, 'Name_109', 'Type_6', 'State_5', 'Country_109', 'Description_109', 'keyword_2, keyword_5', 'Recipe_links_109', 'Video_links_109', 'Approved', 'Notes_109', 'food1.jpg'),
(110, 'Name_110', 'Type_7', 'State_5', 'Country_110', 'Description_110', 'keyword_2, keyword_5', 'Recipe_links_110', 'Video_links_110', 'Approved', 'Notes_110', 'food2.jpg'),
(111, 'Name_111', 'Type_8', 'State_5', 'Country_111', 'Description_111', 'keyword_2, keyword_5', 'Recipe_links_111', 'Video_links_111', 'Approved', 'Notes_111', 'food3.jpg'),
(112, 'Name_112', 'Type_9', 'State_5', 'Country_112', 'Description_112', 'keyword_3, keyword_4', 'Recipe_links_112', 'Video_links_112', 'Approved', 'Notes_112', 'food4.jpg'),
(113, 'Name_113', 'Type_10', 'State_5', 'Country_113', 'Description_113', 'keyword_3, keyword_4', 'Recipe_links_113', 'Video_links_113', 'Approved', 'Notes_113', 'food5.jpg'),
(114, 'Name_114', 'Type_11', 'State_5', 'Country_114', 'Description_114', 'keyword_3, keyword_4', 'Recipe_links_114', 'Video_links_114', 'Approved', 'Notes_114', 'food6.jpg'),
(115, 'Name_115', 'Type_12', 'State_5', 'Country_115', 'Description_115', 'keyword_3, keyword_4', 'Recipe_links_115', 'Video_links_115', 'Approved', 'Notes_115', 'food1.jpg'),
(116, 'Name_116', 'Type_13', 'State_5', 'Country_116', 'Description_116', 'keyword_3, keyword_4', 'Recipe_links_116', 'Video_links_116', 'Approved', 'Notes_116', 'food2.jpg'),
(117, 'Name_117', 'Type_14', 'State_5', 'Country_117', 'Description_117', 'keyword_3, keyword_4', 'Recipe_links_117', 'Video_links_117', 'Approved', 'Notes_117', 'food3.jpg'),
(118, 'Name_118', 'Type_15', 'State_5', 'Country_118', 'Description_118', 'keyword_3, keyword_4', 'Recipe_links_118', 'Video_links_118', 'Approved', 'Notes_118', 'food4.jpg'),
(119, 'Name_119', 'Type_16', 'State_5', 'Country_119', 'Description_119', 'keyword_3, keyword_4', 'Recipe_links_119', 'Video_links_119', 'Approved', 'Notes_119', 'food5.jpg'),
(120, 'Name_120', 'Type_17', 'State_5', 'Country_120', 'Description_120', 'keyword_3, keyword_4', 'Recipe_links_120', 'Video_links_120', 'Approved', 'Notes_120', 'food6.jpg'),
(121, 'Name_121', 'Type_18', 'State_5', 'Country_121', 'Description_121', 'keyword_3, keyword_4', 'Recipe_links_121', 'Video_links_121', 'Approved', 'Notes_121', 'food1.jpg'),
(122, 'Name_122', 'Type_19', 'State_5', 'Country_122', 'Description_122', 'keyword_3, keyword_4', 'Recipe_links_122', 'Video_links_122', 'Approved', 'Notes_122', 'food2.jpg'),
(123, 'Name_123', 'Type_20', 'State_5', 'Country_123', 'Description_123', 'keyword_3, keyword_4', 'Recipe_links_123', 'Video_links_123', 'Approved', 'Notes_123', 'food3.jpg'),
(124, 'Name_124', 'Type_21', 'State_6', 'Country_124', 'Description_124', 'keyword_3, keyword_4', 'Recipe_links_124', 'Video_links_124', 'Approved', 'Notes_124', 'food4.jpg'),
(125, 'Name_125', 'Type_22', 'State_6', 'Country_125', 'Description_125', 'keyword_3, keyword_4', 'Recipe_links_125', 'Video_links_125', 'Approved', 'Notes_125', 'food5.jpg'),
(126, 'Name_126', 'Type_23', 'State_6', 'Country_126', 'Description_126', 'keyword_3, keyword_4', 'Recipe_links_126', 'Video_links_126', 'Approved', 'Notes_126', 'food6.jpg'),
(127, 'Name_127', 'Type_24', 'State_6', 'Country_127', 'Description_127', 'keyword_3, keyword_4', 'Recipe_links_127', 'Video_links_127', 'Approved', 'Notes_127', 'food1.jpg'),
(128, 'Name_128', 'Type_25', 'State_6', 'Country_128', 'Description_128', 'keyword_3, keyword_4', 'Recipe_links_128', 'Video_links_128', 'Approved', 'Notes_128', 'food2.jpg'),
(129, 'Name_129', 'Type_1', 'State_6', 'Country_129', 'Description_129', 'keyword_3, keyword_4', 'Recipe_links_129', 'Video_links_129', 'Approved', 'Notes_129', 'food3.jpg'),
(130, 'Name_130', 'Type_2', 'State_6', 'Country_130', 'Description_130', 'keyword_3, keyword_4', 'Recipe_links_130', 'Video_links_130', 'Approved', 'Notes_130', 'food4.jpg'),
(131, 'Name_131', 'Type_3', 'State_6', 'Country_131', 'Description_131', 'keyword_3, keyword_4', 'Recipe_links_131', 'Video_links_131', 'Approved', 'Notes_131', 'food5.jpg'),
(132, 'Name_132', 'Type_4', 'State_6', 'Country_132', 'Description_132', 'keyword_3, keyword_4', 'Recipe_links_132', 'Video_links_132', 'Approved', 'Notes_132', 'food6.jpg'),
(133, 'Name_133', 'Type_5', 'State_6', 'Country_133', 'Description_133', 'keyword_3, keyword_4', 'Recipe_links_133', 'Video_links_133', 'Approved', 'Notes_133', 'food1.jpg'),
(134, 'Name_134', 'Type_6', 'State_6', 'Country_134', 'Description_134', 'keyword_3, keyword_4', 'Recipe_links_134', 'Video_links_134', 'Approved', 'Notes_134', 'food2.jpg'),
(135, 'Name_135', 'Type_7', 'State_6', 'Country_135', 'Description_135', 'keyword_3, keyword_4', 'Recipe_links_135', 'Video_links_135', 'Approved', 'Notes_135', 'food3.jpg'),
(136, 'Name_136', 'Type_8', 'State_6', 'Country_136', 'Description_136', 'keyword_3, keyword_4', 'Recipe_links_136', 'Video_links_136', 'Approved', 'Notes_136', 'food4.jpg'),
(137, 'Name_137', 'Type_9', 'State_6', 'Country_137', 'Description_137', 'keyword_3, keyword_4', 'Recipe_links_137', 'Video_links_137', 'Approved', 'Notes_137', 'food5.jpg'),
(138, 'Name_138', 'Type_10', 'State_6', 'Country_138', 'Description_138', 'keyword_3, keyword_4', 'Recipe_links_138', 'Video_links_138', 'Approved', 'Notes_138', 'food6.jpg'),
(139, 'Name_139', 'Type_11', 'State_6', 'Country_139', 'Description_139', 'keyword_3, keyword_4', 'Recipe_links_139', 'Video_links_139', 'Approved', 'Notes_139', 'food1.jpg'),
(140, 'Name_140', 'Type_12', 'State_6', 'Country_140', 'Description_140', 'keyword_3, keyword_4', 'Recipe_links_140', 'Video_links_140', 'Approved', 'Notes_140', 'food2.jpg'),
(141, 'Name_141', 'Type_13', 'State_6', 'Country_141', 'Description_141', 'keyword_3, keyword_4', 'Recipe_links_141', 'Video_links_141', 'Approved', 'Notes_141', 'food3.jpg'),
(142, 'Name_142', 'Type_14', 'State_6', 'Country_142', 'Description_142', 'keyword_3, keyword_4', 'Recipe_links_142', 'Video_links_142', 'Approved', 'Notes_142', 'food4.jpg'),
(143, 'Name_143', 'Type_15', 'State_6', 'Country_143', 'Description_143', 'keyword_3, keyword_4', 'Recipe_links_143', 'Video_links_143', 'Approved', 'Notes_143', 'food5.jpg'),
(144, 'Name_144', 'Type_16', 'State_6', 'Country_144', 'Description_144', 'keyword_3, keyword_4', 'Recipe_links_144', 'Video_links_144', 'Approved', 'Notes_144', 'food6.jpg'),
(145, 'Name_145', 'Type_1', 'State_6', 'Country_145', 'Description_145', 'keyword_3, keyword_4', 'Recipe_links_145', 'Video_links_145', 'Approved', 'Notes_145', 'food1.jpg'),
(146, 'Name_146', 'Type_2', 'State_6', 'Country_146', 'Description_146', 'keyword_2, keyword_5', 'Recipe_links_146', 'Video_links_146', 'Approved', 'Notes_146', 'food2.jpg'),
(147, 'Name_147', 'Type_3', 'State_6', 'Country_147', 'Description_147', 'keyword_2, keyword_5', 'Recipe_links_147', 'Video_links_147', 'Approved', 'Notes_147', 'food3.jpg'),
(148, 'Name_148', 'Type_4', 'State_6', 'Country_148', 'Description_148', 'keyword_2, keyword_5', 'Recipe_links_148', 'Video_links_148', 'Approved', 'Notes_148', 'food4.jpg'),
(149, 'Name_149', 'Type_5', 'State_6', 'Country_149', 'Description_149', 'keyword_2, keyword_5', 'Recipe_links_149', 'Video_links_149', 'Approved', 'Notes_149', 'food5.jpg'),
(150, 'Name_150', 'Type_6', 'State_6', 'Country_150', 'Description_150', 'keyword_2, keyword_5', 'Recipe_links_150', 'Video_links_150', 'Approved', 'Notes_150', 'food6.jpg'),
(151, 'Name_151', 'Type_7', 'State_6', 'Country_151', 'Description_151', 'keyword_2, keyword_5', 'Recipe_links_151', 'Video_links_151', 'Approved', 'Notes_151', 'food1.jpg'),
(152, 'Name_152', 'Type_8', 'State_6', 'Country_152', 'Description_152', 'keyword_2, keyword_5', 'Recipe_links_152', 'Video_links_152', 'Approved', 'Notes_152', 'food2.jpg'),
(153, 'Name_153', 'Type_9', 'State_6', 'Country_153', 'Description_153', 'keyword_2, keyword_5', 'Recipe_links_153', 'Video_links_153', 'Approved', 'Notes_153', 'food3.jpg'),
(154, 'Name_154', 'Type_1', 'State_6', 'Country_154', 'Description_154', 'keyword_2, keyword_5', 'Recipe_links_154', 'Video_links_154', 'Approved', 'Notes_154', 'food4.jpg'),
(155, 'Name_155', 'Type_2', 'State_6', 'Country_155', 'Description_155', 'keyword_2, keyword_5', 'Recipe_links_155', 'Video_links_155', 'Approved', 'Notes_155', 'food5.jpg'),
(156, 'Name_156', 'Type_3', 'State_6', 'Country_156', 'Description_156', 'keyword_2, keyword_5', 'Recipe_links_156', 'Video_links_156', 'Approved', 'Notes_156', 'food6.jpg'),
(157, 'Name_157', 'Type_4', 'State_6', 'Country_157', 'Description_157', 'keyword_2, keyword_5', 'Recipe_links_157', 'Video_links_157', 'Approved', 'Notes_157', 'food1.jpg'),
(158, 'Name_158', 'Type_5', 'State_6', 'Country_158', 'Description_158', 'keyword_2, keyword_5', 'Recipe_links_158', 'Video_links_158', 'Approved', 'Notes_158', 'food2.jpg'),
(159, 'Name_159', 'Type_6', 'State_6', 'Country_159', 'Description_159', 'keyword_2, keyword_5', 'Recipe_links_159', 'Video_links_159', 'Approved', 'Notes_159', 'food3.jpg'),
(160, 'Name_160', 'Type_7', 'State_6', 'Country_160', 'Description_160', 'keyword_2, keyword_5', 'Recipe_links_160', 'Video_links_160', 'Approved', 'Notes_160', 'food4.jpg'),
(161, 'Name_161', 'Type_8', 'State_6', 'Country_161', 'Description_161', 'keyword_2, keyword_5', 'Recipe_links_161', 'Video_links_161', 'Approved', 'Notes_161', 'food5.jpg'),
(162, 'Name_162', 'Type_9', 'State_6', 'Country_162', 'Description_162', 'keyword_2, keyword_5', 'Recipe_links_162', 'Video_links_162', 'Approved', 'Notes_162', 'food6.jpg'),
(163, 'Name_163', 'Type_10', 'State_6', 'Country_163', 'Description_163', 'keyword_2, keyword_5', 'Recipe_links_163', 'Video_links_163', 'Approved', 'Notes_163', 'food1.jpg'),
(164, 'Name_164', 'Type_11', 'State_6', 'Country_164', 'Description_164', 'keyword_2, keyword_5', 'Recipe_links_164', 'Video_links_164', 'Approved', 'Notes_164', 'food2.jpg'),
(165, 'Name_165', 'Type_12', 'State_6', 'Country_165', 'Description_165', 'keyword_2, keyword_5', 'Recipe_links_165', 'Video_links_165', 'Approved', 'Notes_165', 'food3.jpg'),
(166, 'Name_166', 'Type_13', 'State_6', 'Country_166', 'Description_166', 'keyword_2, keyword_5', 'Recipe_links_166', 'Video_links_166', 'Approved', 'Notes_166', 'food4.jpg'),
(167, 'Name_167', 'Type_14', 'State_6', 'Country_167', 'Description_167', 'keyword_2, keyword_5', 'Recipe_links_167', 'Video_links_167', 'Approved', 'Notes_167', 'food5.jpg'),
(168, 'Name_168', 'Type_15', 'State_6', 'Country_168', 'Description_168', 'keyword_2, keyword_5', 'Recipe_links_168', 'Video_links_168', 'Approved', 'Notes_168', 'food6.jpg'),
(169, 'Name_169', 'Type_16', 'State_6', 'Country_169', 'Description_169', 'keyword_2, keyword_5', 'Recipe_links_169', 'Video_links_169', 'Approved', 'Notes_169', 'food1.jpg'),
(170, 'Name_170', 'Type_1', 'State_6', 'Country_170', 'Description_170', 'keyword_2, keyword_5', 'Recipe_links_170', 'Video_links_170', 'Approved', 'Notes_170', 'food2.jpg'),
(171, 'Name_171', 'Type_2', 'State_6', 'Country_171', 'Description_171', 'keyword_2, keyword_5', 'Recipe_links_171', 'Video_links_171', 'Approved', 'Notes_171', 'food3.jpg'),
(172, 'Name_172', 'Type_3', 'State_6', 'Country_172', 'Description_172', 'keyword_2, keyword_5', 'Recipe_links_172', 'Video_links_172', 'Approved', 'Notes_172', 'food4.jpg'),
(173, 'Name_173', 'Type_4', 'State_6', 'Country_173', 'Description_173', 'keyword_2, keyword_5', 'Recipe_links_173', 'Video_links_173', 'Approved', 'Notes_173', 'food5.jpg'),
(174, 'Name_174', 'Type_5', 'State_6', 'Country_174', 'Description_174', 'keyword_2, keyword_5', 'Recipe_links_174', 'Video_links_174', 'Approved', 'Notes_174', 'food6.jpg'),
(175, 'Name_175', 'Type_6', 'State_6', 'Country_175', 'Description_175', 'keyword_2, keyword_5', 'Recipe_links_175', 'Video_links_175', 'Approved', 'Notes_175', 'food1.jpg'),
(176, 'Name_176', 'Type_7', 'State_6', 'Country_176', 'Description_176', 'keyword_4, keyword_1', 'Recipe_links_176', 'Video_links_176', 'Approved', 'Notes_176', 'food2.jpg'),
(177, 'Name_177', 'Type_8', 'State_6', 'Country_177', 'Description_177', 'keyword_4, keyword_1', 'Recipe_links_177', 'Video_links_177', 'Approved', 'Notes_177', 'food3.jpg'),
(178, 'Name_178', 'Type_9', 'State_6', 'Country_178', 'Description_178', 'keyword_4, keyword_1', 'Recipe_links_178', 'Video_links_178', 'Approved', 'Notes_178', 'food4.jpg'),
(179, 'Name_179', 'Type_10', 'State_6', 'Country_179', 'Description_179', 'keyword_4, keyword_1', 'Recipe_links_179', 'Video_links_179', 'Approved', 'Notes_179', 'food5.jpg'),
(180, 'Name_180', 'Type_1', 'State_6', 'Country_180', 'Description_180', 'keyword_4, keyword_1', 'Recipe_links_180', 'Video_links_180', 'Approved', 'Notes_180', 'food6.jpg'),
(181, 'Name_181', 'Type_2', 'State_6', 'Country_181', 'Description_181', 'keyword_4, keyword_1', 'Recipe_links_181', 'Video_links_181', 'Approved', 'Notes_181', 'food1.jpg'),
(182, 'Name_182', 'Type_3', 'State_6', 'Country_182', 'Description_182', 'keyword_4, keyword_1', 'Recipe_links_182', 'Video_links_182', 'Approved', 'Notes_182', 'food2.jpg'),
(183, 'Name_183', 'Type_4', 'State_6', 'Country_183', 'Description_183', 'keyword_4, keyword_1', 'Recipe_links_183', 'Video_links_183', 'Approved', 'Notes_183', 'food3.jpg'),
(184, 'Name_184', 'Type_5', 'State_6', 'Country_184', 'Description_184', 'keyword_4, keyword_1', 'Recipe_links_184', 'Video_links_184', 'Approved', 'Notes_184', 'food4.jpg'),
(185, 'Name_185', 'Type_6', 'State_6', 'Country_185', 'Description_185', 'keyword_4, keyword_1', 'Recipe_links_185', 'Video_links_185', 'Approved', 'Notes_185', 'food5.jpg'),
(186, 'Name_186', 'Type_1', 'State_6', 'Country_186', 'Description_186', 'keyword_4, keyword_1', 'Recipe_links_186', 'Video_links_186', 'Approved', 'Notes_186', 'food6.jpg'),
(187, 'Name_187', 'Type_2', 'State_6', 'Country_187', 'Description_187', 'keyword_4, keyword_1', 'Recipe_links_187', 'Video_links_187', 'Approved', 'Notes_187', 'food1.jpg'),
(188, 'Name_188', 'Type_3', 'State_6', 'Country_188', 'Description_188', 'keyword_4, keyword_1', 'Recipe_links_188', 'Video_links_188', 'Approved', 'Notes_188', 'food2.jpg'),
(189, 'Name_189', 'Type_4', 'State_6', 'Country_189', 'Description_189', 'keyword_4, keyword_1', 'Recipe_links_189', 'Video_links_189', 'Approved', 'Notes_189', 'food3.jpg'),
(190, 'Name_190', 'Type_5', 'State_6', 'Country_190', 'Description_190', 'keyword_4, keyword_1', 'Recipe_links_190', 'Video_links_190', 'Approved', 'Notes_190', 'food4.jpg'),
(191, 'Name_191', 'Type_6', 'State_6', 'Country_191', 'Description_191', 'keyword_4, keyword_1', 'Recipe_links_191', 'Video_links_191', 'Approved', 'Notes_191', 'food5.jpg'),
(192, 'Name_192', 'Type_7', 'State_6', 'Country_192', 'Description_192', 'keyword_4, keyword_1', 'Recipe_links_192', 'Video_links_192', 'Approved', 'Notes_192', 'food6.jpg'),
(193, 'Name_193', 'Type_1', 'State_6', 'Country_193', 'Description_193', 'keyword_4, keyword_1', 'Recipe_links_193', 'Video_links_193', 'Approved', 'Notes_193', 'food1.jpg'),
(194, 'Name_194', 'Type_2', 'State_6', 'Country_194', 'Description_194', 'keyword_4, keyword_1', 'Recipe_links_194', 'Video_links_194', 'Approved', 'Notes_194', 'food2.jpg'),
(195, 'Name_195', 'Type_3', 'State_6', 'Country_195', 'Description_195', 'keyword_4, keyword_1', 'Recipe_links_195', 'Video_links_195', 'Approved', 'Notes_195', 'food3.jpg'),
(196, 'Name_196', 'Type_1', 'State_6', 'Country_196', 'Description_196', 'keyword_4, keyword_1', 'Recipe_links_196', 'Video_links_196', 'Approved', 'Notes_196', 'food4.jpg'),
(197, 'Name_197', 'Type_2', 'State_6', 'Country_197', 'Description_197', 'keyword_4, keyword_1', 'Recipe_links_197', 'Video_links_197', 'Approved', 'Notes_197', 'food5.jpg'),
(198, 'Name_198', 'Type_3', 'State_6', 'Country_198', 'Description_198', 'keyword_4, keyword_1', 'Recipe_links_198', 'Video_links_198', 'Approved', 'Notes_198', 'food6.jpg'),
(199, 'Name_199', 'Type_4', 'State_6', 'Country_199', 'Description_199', 'keyword_4, keyword_1', 'Recipe_links_199', 'Video_links_199', 'Approved', 'Notes_199', 'food1.jpg'),
(200, 'Name_200', 'Type_5', 'State_6', 'Country_200', 'Description_200', 'keyword_4, keyword_1', 'Recipe_links_200', 'Video_links_200', 'Approved', 'Notes_200', 'food2.jpg'),
(201, 'Name_201', 'Type_6', 'State_6', 'Country_201', 'Description_201', 'keyword_4, keyword_1', 'Recipe_links_201', 'Video_links_201', 'Approved', 'Notes_201', 'food3.jpg'),
(202, 'Name_202', 'Type_7', 'State_6', 'Country_202', 'Description_202', 'keyword_4, keyword_1', 'Recipe_links_202', 'Video_links_202', 'Approved', 'Notes_202', 'food4.jpg'),
(203, 'Name_203', 'Type_8', 'State_6', 'Country_203', 'Description_203', 'keyword_4, keyword_1', 'Recipe_links_203', 'Video_links_203', 'Approved', 'Notes_203', 'food5.jpg'),
(204, 'Name_204', 'Type_9', 'State_6', 'Country_204', 'Description_204', 'keyword_4, keyword_1', 'Recipe_links_204', 'Video_links_204', 'Approved', 'Notes_204', 'food6.jpg'),
(205, 'Name_205', 'Type_10', 'State_6', 'Country_205', 'Description_205', 'keyword_4, keyword_1', 'Recipe_links_205', 'Video_links_205', 'Approved', 'Notes_205', 'food1.jpg'),
(206, 'Name_206', 'Type_11', 'State_6', 'Country_206', 'Description_206', 'keyword_4, keyword_1', 'Recipe_links_206', 'Video_links_206', 'Approved', 'Notes_206', 'food2.jpg'),
(207, 'Name_207', 'Type_12', 'State_6', 'Country_207', 'Description_207', 'keyword_4, keyword_1', 'Recipe_links_207', 'Video_links_207', 'Approved', 'Notes_207', 'food3.jpg'),
(208, 'Name_208', 'Type_13', 'State_6', 'Country_208', 'Description_208', 'keyword_4, keyword_1', 'Recipe_links_208', 'Video_links_208', 'Approved', 'Notes_208', 'food4.jpg'),
(209, 'Name_209', 'Type_14', 'State_6', 'Country_209', 'Description_209', 'keyword_4, keyword_1', 'Recipe_links_209', 'Video_links_209', 'Approved', 'Notes_209', 'food5.jpg'),
(210, 'Name_210', 'Type_15', 'State_6', 'Country_210', 'Description_210', 'keyword_4, keyword_1', 'Recipe_links_210', 'Video_links_210', 'Approved', 'Notes_210', 'food6.jpg'),
(211, 'Name_211', 'Type_16', 'State_6', 'Country_211', 'Description_211', 'keyword_4, keyword_1', 'Recipe_links_211', 'Video_links_211', 'Approved', 'Notes_211', 'food1.jpg'),
(212, 'Name_212', 'Type_17', 'State_6', 'Country_212', 'Description_212', 'keyword_4, keyword_1', 'Recipe_links_212', 'Video_links_212', 'Approved', 'Notes_212', 'food2.jpg'),
(213, 'Name_213', 'Type_18', 'State_6', 'Country_213', 'Description_213', 'keyword_4, keyword_1', 'Recipe_links_213', 'Video_links_213', 'Approved', 'Notes_213', 'food3.jpg'),
(214, 'Name_214', 'Type_19', 'State_6', 'Country_214', 'Description_214', 'keyword_4, keyword_1', 'Recipe_links_214', 'Video_links_214', 'Approved', 'Notes_214', 'food4.jpg'),
(215, 'Name_215', 'Type_20', 'State_6', 'Country_215', 'Description_215', 'keyword_4, keyword_1', 'Recipe_links_215', 'Video_links_215', 'Approved', 'Notes_215', 'food5.jpg'),
(216, 'Name_216', 'Type_21', 'State_6', 'Country_216', 'Description_216', 'keyword_4, keyword_1', 'Recipe_links_216', 'Video_links_216', 'Approved', 'Notes_216', 'food6.jpg'),
(217, 'Name_217', 'Type_22', 'State_6', 'Country_217', 'Description_217', 'keyword_4, keyword_1', 'Recipe_links_217', 'Video_links_217', 'Approved', 'Notes_217', 'food1.jpg'),
(218, 'Name_218', 'Type_23', 'State_6', 'Country_218', 'Description_218', 'keyword_4, keyword_1', 'Recipe_links_218', 'Video_links_218', 'Approved', 'Notes_218', 'food2.jpg'),
(219, 'Name_219', 'Type_24', 'State_6', 'Country_219', 'Description_219', 'keyword_4, keyword_1', 'Recipe_links_219', 'Video_links_219', 'Approved', 'Notes_219', 'food3.jpg'),
(220, 'Name_220', 'Type_25', 'State_7', 'Country_220', 'Description_220', 'keyword_4, keyword_1', 'Recipe_links_220', 'Video_links_220', 'Approved', 'Notes_220', 'food4.jpg'),
(221, 'Name_221', 'Type_26', 'State_7', 'Country_221', 'Description_221', 'keyword_4, keyword_1', 'Recipe_links_221', 'Video_links_221', 'Approved', 'Notes_221', 'food5.jpg'),
(222, 'Name_222', 'Type_27', 'State_7', 'Country_222', 'Description_222', 'keyword_4, keyword_1', 'Recipe_links_222', 'Video_links_222', 'Approved', 'Notes_222', 'food6.jpg'),
(223, 'Name_223', 'Type_28', 'State_7', 'Country_223', 'Description_223', 'keyword_4, keyword_1', 'Recipe_links_223', 'Video_links_223', 'Approved', 'Notes_223', 'food1.jpg'),
(224, 'Name_224', 'Type_29', 'State_7', 'Country_224', 'Description_224', 'keyword_4, keyword_1', 'Recipe_links_224', 'Video_links_224', 'Approved', 'Notes_224', 'food2.jpg'),
(225, 'Name_225', 'Type_30', 'State_7', 'Country_225', 'Description_225', 'keyword_4, keyword_1', 'Recipe_links_225', 'Video_links_225', 'Approved', 'Notes_225', 'food3.jpg'),
(226, 'Name_226', 'Type_31', 'State_7', 'Country_226', 'Description_226', 'keyword_4, keyword_1', 'Recipe_links_226', 'Video_links_226', 'Approved', 'Notes_226', 'food4.jpg'),
(227, 'Name_227', 'Type_1', 'State_7', 'Country_227', 'Description_227', 'keyword_4, keyword_1', 'Recipe_links_227', 'Video_links_227', 'Approved', 'Notes_227', 'food5.jpg'),
(228, 'Name_228', 'Type_2', 'State_7', 'Country_228', 'Description_228', 'keyword_4, keyword_1', 'Recipe_links_228', 'Video_links_228', 'Approved', 'Notes_228', 'food6.jpg'),
(229, 'Name_229', 'Type_3', 'State_7', 'Country_229', 'Description_229', 'keyword_4, keyword_1', 'Recipe_links_229', 'Video_links_229', 'Approved', 'Notes_229', 'food1.jpg'),
(230, 'Name_230', 'Type_4', 'State_7', 'Country_230', 'Description_230', 'keyword_4, keyword_1', 'Recipe_links_230', 'Video_links_230', 'Approved', 'Notes_230', 'food2.jpg'),
(231, 'Name_231', 'Type_5', 'State_7', 'Country_231', 'Description_231', 'keyword_4, keyword_1', 'Recipe_links_231', 'Video_links_231', 'Approved', 'Notes_231', 'food3.jpg'),
(232, 'Name_232', 'Type_6', 'State_7', 'Country_232', 'Description_232', 'keyword_4, keyword_1', 'Recipe_links_232', 'Video_links_232', 'Approved', 'Notes_232', 'food4.jpg'),
(233, 'Name_233', 'Type_7', 'State_7', 'Country_233', 'Description_233', 'keyword_2, keyword_4', 'Recipe_links_233', 'Video_links_233', 'Approved', 'Notes_233', 'food5.jpg'),
(234, 'Name_234', 'Type_8', 'State_7', 'Country_234', 'Description_234', 'keyword_2, keyword_4', 'Recipe_links_234', 'Video_links_234', 'Approved', 'Notes_234', 'food6.jpg'),
(235, 'Name_235', 'Type_9', 'State_7', 'Country_235', 'Description_235', 'keyword_2, keyword_4', 'Recipe_links_235', 'Video_links_235', 'Approved', 'Notes_235', 'food1.jpg'),
(236, 'Name_236', 'Type_10', 'State_7', 'Country_236', 'Description_236', 'keyword_2, keyword_4', 'Recipe_links_236', 'Video_links_236', 'Approved', 'Notes_236', 'food2.jpg'),
(237, 'Name_237', 'Type_1', 'State_7', 'Country_237', 'Description_237', 'keyword_2, keyword_4', 'Recipe_links_237', 'Video_links_237', 'Approved', 'Notes_237', 'food3.jpg'),
(238, 'Name_238', 'Type_2', 'State_7', 'Country_238', 'Description_238', 'keyword_2, keyword_4', 'Recipe_links_238', 'Video_links_238', 'Approved', 'Notes_238', 'food4.jpg'),
(239, 'Name_239', 'Type_3', 'State_7', 'Country_239', 'Description_239', 'keyword_2, keyword_4', 'Recipe_links_239', 'Video_links_239', 'Approved', 'Notes_239', 'food5.jpg'),
(240, 'Name_240', 'Type_4', 'State_7', 'Country_240', 'Description_240', 'keyword_2, keyword_4', 'Recipe_links_240', 'Video_links_240', 'Approved', 'Notes_240', 'food6.jpg'),
(241, 'Name_241', 'Type_5', 'State_7', 'Country_241', 'Description_241', 'keyword_2, keyword_4', 'Recipe_links_241', 'Video_links_241', 'Approved', 'Notes_241', 'food1.jpg'),
(242, 'Name_242', 'Type_6', 'State_7', 'Country_242', 'Description_242', 'keyword_2, keyword_4', 'Recipe_links_242', 'Video_links_242', 'Approved', 'Notes_242', 'food2.jpg'),
(243, 'Name_243', 'Type_7', 'State_7', 'Country_243', 'Description_243', 'keyword_2, keyword_4', 'Recipe_links_243', 'Video_links_243', 'Approved', 'Notes_243', 'food3.jpg'),
(244, 'Name_244', 'Type_8', 'State_7', 'Country_244', 'Description_244', 'keyword_2, keyword_4', 'Recipe_links_244', 'Video_links_244', 'Approved', 'Notes_244', 'food4.jpg'),
(245, 'Name_245', 'Type_9', 'State_8', 'Country_245', 'Description_245', 'keyword_2, keyword_4', 'Recipe_links_245', 'Video_links_245', 'Approved', 'Notes_245', 'food5.jpg'),
(246, 'Name_246', 'Type_10', 'State_8', 'Country_246', 'Description_246', 'keyword_2, keyword_4', 'Recipe_links_246', 'Video_links_246', 'Approved', 'Notes_246', 'food6.jpg'),
(247, 'Name_247', 'Type_11', 'State_8', 'Country_247', 'Description_247', 'keyword_2, keyword_4', 'Recipe_links_247', 'Video_links_247', 'Approved', 'Notes_247', 'food1.jpg'),
(248, 'Name_248', 'Type_12', 'State_8', 'Country_248', 'Description_248', 'keyword_2, keyword_4', 'Recipe_links_248', 'Video_links_248', 'Approved', 'Notes_248', 'food2.jpg'),
(249, 'Name_249', 'Type_13', 'State_8', 'Country_249', 'Description_249', 'keyword_2, keyword_4', 'Recipe_links_249', 'Video_links_249', 'Approved', 'Notes_249', 'food3.jpg'),
(250, 'Name_250', 'Type_14', 'State_8', 'Country_250', 'Description_250', 'keyword_2, keyword_4', 'Recipe_links_250', 'Video_links_250', 'Approved', 'Notes_250', 'food4.jpg'),
(251, 'Name_251', 'Type_15', 'State_8', 'Country_251', 'Description_251', 'keyword_2, keyword_4', 'Recipe_links_251', 'Video_links_251', 'Approved', 'Notes_251', 'food5.jpg'),
(252, 'Name_252', 'Type_16', 'State_8', 'Country_252', 'Description_252', 'keyword_2, keyword_4', 'Recipe_links_252', 'Video_links_252', 'Approved', 'Notes_252', 'food6.jpg'),
(253, 'Name_253', 'Type_17', 'State_8', 'Country_253', 'Description_253', 'keyword_2, keyword_4', 'Recipe_links_253', 'Video_links_253', 'Approved', 'Notes_253', 'food1.jpg'),
(254, 'Name_254', 'Type_18', 'State_8', 'Country_254', 'Description_254', 'keyword_2, keyword_4', 'Recipe_links_254', 'Video_links_254', 'Approved', 'Notes_254', 'food2.jpg'),
(255, 'Name_255', 'Type_19', 'State_8', 'Country_255', 'Description_255', 'keyword_2, keyword_4', 'Recipe_links_255', 'Video_links_255', 'Approved', 'Notes_255', 'food3.jpg'),
(256, 'Name_256', 'Type_1', 'State_8', 'Country_256', 'Description_256', 'keyword_2, keyword_4', 'Recipe_links_256', 'Video_links_256', 'Approved', 'Notes_256', 'food4.jpg'),
(257, 'Name_257', 'Type_2', 'State_8', 'Country_257', 'Description_257', 'keyword_2, keyword_4', 'Recipe_links_257', 'Video_links_257', 'Approved', 'Notes_257', 'food5.jpg'),
(258, 'Name_258', 'Type_3', 'State_8', 'Country_258', 'Description_258', 'keyword_2, keyword_4', 'Recipe_links_258', 'Video_links_258', 'Approved', 'Notes_258', 'food6.jpg'),
(259, 'Name_259', 'Type_4', 'State_8', 'Country_259', 'Description_259', 'keyword_2, keyword_4', 'Recipe_links_259', 'Video_links_259', 'Approved', 'Notes_259', 'food1.jpg'),
(260, 'Name_260', 'Type_5', 'State_8', 'Country_260', 'Description_260', 'keyword_1, keyword_3', 'Recipe_links_260', 'Video_links_260', 'Approved', 'Notes_260', 'food2.jpg'),
(261, 'Name_261', 'Type_6', 'State_8', 'Country_261', 'Description_261', 'keyword_1, keyword_3', 'Recipe_links_261', 'Video_links_261', 'Approved', 'Notes_261', 'food3.jpg'),
(262, 'Name_262', 'Type_7', 'State_8', 'Country_262', 'Description_262', 'keyword_1, keyword_3', 'Recipe_links_262', 'Video_links_262', 'Approved', 'Notes_262', 'food4.jpg'),
(263, 'Name_263', 'Type_8', 'State_8', 'Country_263', 'Description_263', 'keyword_1, keyword_3', 'Recipe_links_263', 'Video_links_263', 'Approved', 'Notes_263', 'food5.jpg'),
(264, 'Name_264', 'Type_9', 'State_8', 'Country_264', 'Description_264', 'keyword_1, keyword_3', 'Recipe_links_264', 'Video_links_264', 'Approved', 'Notes_264', 'food6.jpg'),
(265, 'Name_265', 'Type_10', 'State_8', 'Country_265', 'Description_265', 'keyword_1, keyword_3', 'Recipe_links_265', 'Video_links_265', 'Approved', 'Notes_265', 'food1.jpg'),
(266, 'Name_266', 'Type_11', 'State_8', 'Country_266', 'Description_266', 'keyword_1, keyword_3', 'Recipe_links_266', 'Video_links_266', 'Approved', 'Notes_266', 'food2.jpg'),
(267, 'Name_267', 'Type_12', 'State_8', 'Country_267', 'Description_267', 'keyword_1, keyword_3', 'Recipe_links_267', 'Video_links_267', 'Approved', 'Notes_267', 'food3.jpg'),
(268, 'Name_268', 'Type_13', 'State_8', 'Country_268', 'Description_268', 'keyword_1, keyword_3', 'Recipe_links_268', 'Video_links_268', 'Approved', 'Notes_268', 'food4.jpg'),
(269, 'Name_269', 'Type_14', 'State_8', 'Country_269', 'Description_269', 'keyword_1, keyword_3', 'Recipe_links_269', 'Video_links_269', 'Approved', 'Notes_269', 'food5.jpg'),
(270, 'Name_270', 'Type_15', 'State_8', 'Country_270', 'Description_270', 'keyword_1, keyword_3', 'Recipe_links_270', 'Video_links_270', 'Approved', 'Notes_270', 'food6.jpg'),
(271, 'Name_271', 'Type_16', 'State_8', 'Country_271', 'Description_271', 'keyword_1, keyword_3', 'Recipe_links_271', 'Video_links_271', 'Approved', 'Notes_271', 'food1.jpg'),
(272, 'Name_272', 'Type_17', 'State_8', 'Country_272', 'Description_272', 'keyword_1, keyword_3', 'Recipe_links_272', 'Video_links_272', 'Approved', 'Notes_272', 'food2.jpg'),
(273, 'Name_273', 'Type_18', 'State_8', 'Country_273', 'Description_273', 'keyword_1, keyword_3', 'Recipe_links_273', 'Video_links_273', 'Approved', 'Notes_273', 'food3.jpg'),
(274, 'Name_274', 'Type_19', 'State_8', 'Country_274', 'Description_274', 'keyword_1, keyword_3', 'Recipe_links_274', 'Video_links_274', 'Approved', 'Notes_274', 'food4.jpg'),
(275, 'Name_275', 'Type_1', 'State_8', 'Country_275', 'Description_275', 'keyword_1, keyword_3', 'Recipe_links_275', 'Video_links_275', 'Approved', 'Notes_275', 'food5.jpg'),
(276, 'Name_276', 'Type_2', 'State_8', 'Country_276', 'Description_276', 'keyword_1, keyword_3', 'Recipe_links_276', 'Video_links_276', 'Approved', 'Notes_276', 'food6.jpg'),
(277, 'Name_277', 'Type_3', 'State_8', 'Country_277', 'Description_277', 'keyword_1, keyword_3', 'Recipe_links_277', 'Video_links_277', 'Approved', 'Notes_277', 'food1.jpg'),
(278, 'Name_278', 'Type_4', 'State_8', 'Country_278', 'Description_278', 'keyword_1, keyword_3', 'Recipe_links_278', 'Video_links_278', 'Approved', 'Notes_278', 'food2.jpg'),
(279, 'Name_279', 'Type_5', 'State_8', 'Country_279', 'Description_279', 'keyword_1, keyword_3', 'Recipe_links_279', 'Video_links_279', 'Approved', 'Notes_279', 'food3.jpg'),
(280, 'Name_280', 'Type_6', 'State_8', 'Country_280', 'Description_280', 'keyword_1, keyword_3', 'Recipe_links_280', 'Video_links_280', 'Approved', 'Notes_280', 'food4.jpg'),
(281, 'Name_281', 'Type_7', 'State_8', 'Country_281', 'Description_281', 'keyword_1, keyword_3', 'Recipe_links_281', 'Video_links_281', 'Approved', 'Notes_281', 'food5.jpg'),
(282, 'Name_282', 'Type_8', 'State_8', 'Country_282', 'Description_282', 'keyword_1, keyword_3', 'Recipe_links_282', 'Video_links_282', 'Approved', 'Notes_282', 'food6.jpg'),
(283, 'Name_283', 'Type_9', 'State_8', 'Country_283', 'Description_283', 'keyword_1, keyword_3', 'Recipe_links_283', 'Video_links_283', 'Approved', 'Notes_283', 'food1.jpg'),
(284, 'Name_284', 'Type_10', 'State_8', 'Country_284', 'Description_284', 'keyword_1, keyword_3', 'Recipe_links_284', 'Video_links_284', 'Approved', 'Notes_284', 'food2.jpg'),
(285, 'Name_285', 'Type_11', 'State_8', 'Country_285', 'Description_285', 'keyword_1, keyword_3', 'Recipe_links_285', 'Video_links_285', 'Approved', 'Notes_285', 'food3.jpg'),
(286, 'Name_286', 'Type_12', 'State_8', 'Country_286', 'Description_286', 'keyword_1, keyword_3', 'Recipe_links_286', 'Video_links_286', 'Approved', 'Notes_286', 'food4.jpg'),
(287, 'Name_287', 'Type_13', 'State_8', 'Country_287', 'Description_287', 'keyword_1, keyword_3', 'Recipe_links_287', 'Video_links_287', 'Approved', 'Notes_287', 'food5.jpg'),
(288, 'Name_288', 'Type_14', 'State_8', 'Country_288', 'Description_288', 'keyword_1, keyword_3', 'Recipe_links_288', 'Video_links_288', 'Approved', 'Notes_288', 'food6.jpg'),
(289, 'Name_289', 'Type_15', 'State_8', 'Country_289', 'Description_289', 'keyword_1, keyword_3', 'Recipe_links_289', 'Video_links_289', 'Approved', 'Notes_289', 'food1.jpg'),
(290, 'Name_290', 'Type_16', 'State_8', 'Country_290', 'Description_290', 'keyword_1, keyword_3', 'Recipe_links_290', 'Video_links_290', 'Rejected', 'Notes_290', 'food2.jpg'),
(291, 'Name_291', 'Type_17', 'State_8', 'Country_291', 'Description_291', 'keyword_1, keyword_3', 'Recipe_links_291', 'Video_links_291', 'Rejected', 'Notes_291', 'food3.jpg'),
(292, 'Name_292', 'Type_18', 'State_8', 'Country_292', 'Description_292', 'keyword_1, keyword_3', 'Recipe_links_292', 'Video_links_292', 'Rejected', 'Notes_292', 'food4.jpg'),
(293, 'Name_293', 'Type_19', 'State_8', 'Country_293', 'Description_293', 'keyword_1, keyword_3', 'Recipe_links_293', 'Video_links_293', 'Rejected', 'Notes_293', 'food5.jpg'),
(294, 'Name_294', 'Type_20', 'State_8', 'Country_294', 'Description_294', 'keyword_1, keyword_3', 'Recipe_links_294', 'Video_links_294', 'Rejected', 'Notes_294', 'food6.jpg'),
(295, 'Name_295', 'Type_21', 'State_8', 'Country_295', 'Description_295', 'keyword_1, keyword_3', 'Recipe_links_295', 'Video_links_295', 'Rejected', 'Notes_295', 'food1.jpg'),
(296, 'Name_296', 'Type_22', 'State_8', 'Country_296', 'Description_296', 'keyword_1, keyword_3', 'Recipe_links_296', 'Video_links_296', 'Rejected', 'Notes_296', 'food2.jpg'),
(297, 'Name_297', 'Type_1', 'State_8', 'Country_297', 'Description_297', 'keyword_1, keyword_3', 'Recipe_links_297', 'Video_links_297', 'Rejected', 'Notes_297', 'food3.jpg');
INSERT INTO `dishes` (`ID`, `Name`, `Type`, `State`, `Country`, `Description`, `Keywords`, `Recipe_links`, `Video_links`, `Status`, `Notes`, `Image`) VALUES
(298, 'Name_298', 'Type_2', 'State_8', 'Country_298', 'Description_298', 'keyword_1, keyword_3', 'Recipe_links_298', 'Video_links_298', 'Rejected', 'Notes_298', 'food4.jpg'),
(299, 'Name_299', 'Type_3', 'State_8', 'Country_299', 'Description_299', 'keyword_1, keyword_3', 'Recipe_links_299', 'Video_links_299', 'Rejected', 'Notes_299', 'food5.jpg'),
(300, 'Name_300', 'Type_4', 'State_8', 'Country_300', 'Description_300', 'keyword_1, keyword_3', 'Recipe_links_300', 'Video_links_300', 'Rejected', 'Notes_300', 'food6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `value` int(11) NOT NULL,
  `comments` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `name`, `value`, `comments`) VALUES
(1, 'NO_OF_DISHES_PER_ROW', 4, 'This is the number of topics, per row, on home page'),
(2, 'NO_OF_DISHES_TO_SHOW', 20, 'The number of Question per quiz'),
(3, 'IMAGE_HEIGHT_IN_GRID', 400, 'the height'),
(4, 'IMAGE_WIDTH_IN_GRID', 400, 'the width'),
(5, 'IMAGE_HEIGTH_IN_CAROUSAL', 400, 'carousal heigth'),
(6, 'IMAGE_WIDTH_IN_CAROUSAL', 400, 'with of carousal'),
(7, 'NAME_OF_FAVORITE_DISH', 0, 'chicken soup'),
(8, 'DEFAULT_VIEW_FOR_HOME_PAGE', 0, 'Grid');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `hash` varchar(200) NOT NULL,
  `role` varchar(20) NOT NULL,
  `modified_time` date NOT NULL,
  `created_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `hash`, `role`, `modified_time`, `created_time`) VALUES
(1, 'new', 'new', 'new', '', 'new', '0000-00-00', '0000-00-00'),
(3, 'SILC', 'Tester', 'test@silcmn.com', '$2y$10$zFAG5GBNtf.5BpowMqZSputSLeG8OzfKACpjAMsePjZhu.TnvU/Bu', 'admin', '0000-00-00', '0000-00-00'),
(4, 'SILC', 'CS320', 'cs320@silcmn.com', '$2y$10$zFAG5GBNtf.5BpowMqZSputSLeG8OzfKACpjAMsePjZhu.TnvU/Bu', 'admin', '0000-00-00', '0000-00-00'),
(8, 'Dylon', 'Lowinske', 'dylon.lowinske@gmail.com', '$2y$10$srP1fF3K.Pi/PWzGJBXuBOZikWVcYFKQ.eRo5WYWBimg2lvoXg5/a', 'admin', '0000-00-00', '0000-00-00'),
(9, 'test', 'test', 'test', '$2y$10$jGsIRWqjuWdfGmBz5kFaguzuCBUl0SZviaQILQ0aVQJHtQtQXC5kG', 'test', '0000-00-00', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
