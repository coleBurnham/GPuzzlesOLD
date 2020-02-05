-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2020 at 04:58 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gpuzzles_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gpuzzles`
--

CREATE TABLE `gpuzzles` (
  `id` int(6) NOT NULL COMMENT 'primary key',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name of the generated puzzle  (eg: word_search_1, cross_word_98)',
  `creator_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'Manual' COMMENT 'Application used to generate the puzzle',
  `author_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'who created this puzzle',
  `book_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'what is the name of the compilation or book in which this puzzle is going in?',
  `puzzle_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'we will carry only the image name in DB',
  `solution_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'we will carry only the image name in DB',
  `notes` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'to capture any misc. notes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gpuzzles`
--

INSERT INTO `gpuzzles` (`id`, `name`, `creator_name`, `author_name`, `book_name`, `puzzle_image`, `solution_image`, `notes`) VALUES
(1, 'cross_word_1', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_1.jpg', 'cross_word_1_sol.jpg', 'this is the first puzzle'),
(2, 'cross_word_2', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_2.jpg', 'cross_word_2_sol.jpg', ''),
(3, 'cross_word_3', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_3.jpg', 'cross_word_3_sol.jpg', ''),
(4, 'cross_word_4', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_4.jpg', 'cross_word_4_sol.jpg', ''),
(5, 'cross_word_5', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_5.jpg', 'cross_word_5_sol.jpg', ''),
(6, 'cross_word_6', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_6.jpg', 'cross_word_6_sol.jpg', ''),
(7, 'cross_word_7', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_7.jpg', 'cross_word_7_sol.jpg', ''),
(8, 'cross_word_8', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_8.jpg', 'cross_word_8_sol.jpg', ''),
(9, 'cross_word_9', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_9.jpg', 'cross_word_9_sol.jpg', ''),
(10, 'cross_word_10', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_10.jpg', 'cross_word_10_sol.jpg', ''),
(11, 'cross_word_11', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_11.jpg', 'cross_word_11_sol.jpg', ''),
(12, 'cross_word_12', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_12.jpg', 'cross_word_12_sol.jpg', ''),
(13, 'cross_word_13', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_13.jpg', 'cross_word_13_sol.jpg', ''),
(14, 'cross_word_14', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_14.jpg', 'cross_word_14_sol.jpg', ''),
(15, 'cross_word_15', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_15.jpg', 'cross_word_15_sol.jpg', ''),
(16, 'cross_word_16', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_16.jpg', 'cross_word_16_sol.jpg', ''),
(17, 'cross_word_17', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_17.jpg', 'cross_word_17_sol.jpg', ''),
(18, 'cross_word_18', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_18.jpg', 'cross_word_18_sol.jpg', ''),
(19, 'cross_word_19', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_19.jpg', 'cross_word_19_sol.jpg', ''),
(20, 'cross_word_20', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_20.jpg', 'cross_word_20_sol.jpg', ''),
(21, 'cross_word_21', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_21.jpg', 'cross_word_21_sol.jpg', ''),
(22, 'cross_word_22', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_22.jpg', 'cross_word_22_sol.jpg', ''),
(23, 'cross_word_23', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_23.jpg', 'cross_word_23_sol.jpg', ''),
(24, 'cross_word_24', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_24.jpg', 'cross_word_24_sol.jpg', ''),
(25, 'cross_word_25', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_25.jpg', 'cross_word_25_sol.jpg', ''),
(26, 'cross_word_26', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_26.jpg', 'cross_word_26_sol.jpg', ''),
(27, 'cross_word_27', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_27.jpg', 'cross_word_27_sol.jpg', ''),
(28, 'cross_word_28', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_28.jpg', 'cross_word_28_sol.jpg', ''),
(29, 'cross_word_29', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_29.jpg', 'cross_word_29_sol.jpg', ''),
(30, 'cross_word_30', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_30.jpg', 'cross_word_30_sol.jpg', ''),
(31, 'cross_word_31', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_31.jpg', 'cross_word_31_sol.jpg', ''),
(32, 'cross_word_32', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_32.jpg', 'cross_word_32_sol.jpg', ''),
(33, 'cross_word_33', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_33.jpg', 'cross_word_33_sol.jpg', ''),
(34, 'cross_word_34', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_34.jpg', 'cross_word_34_sol.jpg', ''),
(35, 'cross_word_35', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_35.jpg', 'cross_word_35_sol.jpg', ''),
(36, 'cross_word_36', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_36.jpg', 'cross_word_36_sol.jpg', ''),
(37, 'cross_word_37', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_37.jpg', 'cross_word_37_sol.jpg', ''),
(38, 'cross_word_38', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_38.jpg', 'cross_word_38_sol.jpg', ''),
(39, 'cross_word_39', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_39.jpg', 'cross_word_39_sol.jpg', ''),
(40, 'cross_word_40', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_40.jpg', 'cross_word_40_sol.jpg', ''),
(41, 'cross_word_41', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_41.jpg', 'cross_word_41_sol.jpg', ''),
(42, 'cross_word_42', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_42.jpg', 'cross_word_42_sol.jpg', ''),
(43, 'cross_word_43', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_43.jpg', 'cross_word_43_sol.jpg', ''),
(44, 'cross_word_44', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_44.jpg', 'cross_word_44_sol.jpg', ''),
(45, 'cross_word_45', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_45.jpg', 'cross_word_45_sol.jpg', ''),
(46, 'cross_word_46', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_46.jpg', 'cross_word_46_sol.jpg', ''),
(47, 'cross_word_47', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_47.jpg', 'cross_word_47_sol.jpg', ''),
(48, 'cross_word_48', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_48.jpg', 'cross_word_48_sol.jpg', ''),
(49, 'cross_word_49', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_49.jpg', 'cross_word_49_sol.jpg', ''),
(50, 'cross_word_50', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_50.jpg', 'cross_word_50_sol.jpg', ''),
(51, 'cross_word_51', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_51.jpg', 'cross_word_51_sol.jpg', ''),
(52, 'cross_word_52', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_52.jpg', 'cross_word_52_sol.jpg', ''),
(53, 'cross_word_53', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_53.jpg', 'cross_word_53_sol.jpg', ''),
(54, 'cross_word_54', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_54.jpg', 'cross_word_54_sol.jpg', ''),
(55, 'cross_word_55', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_55.jpg', 'cross_word_55_sol.jpg', ''),
(56, 'cross_word_56', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_56.jpg', 'cross_word_56_sol.jpg', ''),
(57, 'cross_word_57', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_57.jpg', 'cross_word_57_sol.jpg', ''),
(58, 'cross_word_58', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_58.jpg', 'cross_word_58_sol.jpg', ''),
(59, 'cross_word_59', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_59.jpg', 'cross_word_59_sol.jpg', ''),
(60, 'cross_word_60', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_60.jpg', 'cross_word_60_sol.jpg', ''),
(61, 'cross_word_61', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_61.jpg', 'cross_word_61_sol.jpg', ''),
(62, 'cross_word_62', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_62.jpg', 'cross_word_62_sol.jpg', ''),
(63, 'cross_word_63', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_63.jpg', 'cross_word_63_sol.jpg', ''),
(64, 'cross_word_64', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_64.jpg', 'cross_word_64_sol.jpg', ''),
(65, 'cross_word_65', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_65.jpg', 'cross_word_65_sol.jpg', ''),
(66, 'cross_word_66', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_66.jpg', 'cross_word_66_sol.jpg', ''),
(67, 'cross_word_67', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_67.jpg', 'cross_word_67_sol.jpg', ''),
(68, 'cross_word_68', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_68.jpg', 'cross_word_68_sol.jpg', ''),
(69, 'cross_word_69', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_69.jpg', 'cross_word_69_sol.jpg', ''),
(70, 'cross_word_70', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_70.jpg', 'cross_word_70_sol.jpg', ''),
(71, 'cross_word_71', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_71.jpg', 'cross_word_71_sol.jpg', ''),
(72, 'cross_word_72', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_72.jpg', 'cross_word_72_sol.jpg', ''),
(73, 'cross_word_73', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_73.jpg', 'cross_word_73_sol.jpg', ''),
(74, 'cross_word_74', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_74.jpg', 'cross_word_74_sol.jpg', ''),
(75, 'cross_word_75', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_75.jpg', 'cross_word_75_sol.jpg', ''),
(76, 'cross_word_76', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_76.jpg', 'cross_word_76_sol.jpg', ''),
(77, 'cross_word_77', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_77.jpg', 'cross_word_77_sol.jpg', ''),
(78, 'cross_word_78', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_78.jpg', 'cross_word_78_sol.jpg', ''),
(79, 'cross_word_79', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_79.jpg', 'cross_word_79_sol.jpg', ''),
(80, 'cross_word_80', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_80.jpg', 'cross_word_80_sol.jpg', ''),
(81, 'cross_word_81', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_81.jpg', 'cross_word_81_sol.jpg', ''),
(82, 'cross_word_82', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_82.jpg', 'cross_word_82_sol.jpg', ''),
(83, 'cross_word_83', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_83.jpg', 'cross_word_83_sol.jpg', ''),
(84, 'cross_word_84', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_84.jpg', 'cross_word_84_sol.jpg', ''),
(85, 'cross_word_85', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_85.jpg', 'cross_word_85_sol.jpg', ''),
(86, 'cross_word_86', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_86.jpg', 'cross_word_86_sol.jpg', ''),
(87, 'cross_word_87', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_87.jpg', 'cross_word_87_sol.jpg', ''),
(88, 'cross_word_88', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_88.jpg', 'cross_word_88_sol.jpg', ''),
(89, 'cross_word_89', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_89.jpg', 'cross_word_89_sol.jpg', ''),
(90, 'cross_word_90', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_90.jpg', 'cross_word_90_sol.jpg', ''),
(91, 'cross_word_91', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_91.jpg', 'cross_word_91_sol.jpg', ''),
(92, 'cross_word_92', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_92.jpg', 'cross_word_92_sol.jpg', ''),
(93, 'cross_word_93', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_93.jpg', 'cross_word_93_sol.jpg', ''),
(94, 'cross_word_94', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_94.jpg', 'cross_word_94_sol.jpg', ''),
(95, 'cross_word_95', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_95.jpg', 'cross_word_95_sol.jpg', ''),
(96, 'cross_word_96', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_96.jpg', 'cross_word_96_sol.jpg', ''),
(97, 'cross_word_97', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_97.jpg', 'cross_word_97_sol.jpg', ''),
(98, 'cross_word_98', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_98.jpg', 'cross_word_98_sol.jpg', ''),
(99, 'cross_word_99', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_99.jpg', 'cross_word_99_sol.jpg', ''),
(100, 'cross_word_100', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'cross_word_100.jpg', 'cross_word_100_sol.jpg', 'this is the 100th puzzle'),
(101, 'word_search_1', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_1.jpg', 'word_search_1_sol.jpg', 'this is the first puzzle'),
(102, 'word_search_2', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_2.jpg', 'word_search_2_sol.jpg', ''),
(103, 'word_search_3', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_3.jpg', 'word_search_3_sol.jpg', ''),
(104, 'word_search_4', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_4.jpg', 'word_search_4_sol.jpg', ''),
(105, 'word_search_5', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_5.jpg', 'word_search_5_sol.jpg', ''),
(106, 'word_search_6', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_6.jpg', 'word_search_6_sol.jpg', ''),
(107, 'word_search_7', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_7.jpg', 'word_search_7_sol.jpg', ''),
(108, 'word_search_8', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_8.jpg', 'word_search_8_sol.jpg', ''),
(109, 'word_search_9', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_9.jpg', 'word_search_9_sol.jpg', ''),
(110, 'word_search_10', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_10.jpg', 'word_search_10_sol.jpg', ''),
(111, 'word_search_11', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_11.jpg', 'word_search_11_sol.jpg', ''),
(112, 'word_search_12', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_12.jpg', 'word_search_12_sol.jpg', ''),
(113, 'word_search_13', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_13.jpg', 'word_search_13_sol.jpg', ''),
(114, 'word_search_14', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_14.jpg', 'word_search_14_sol.jpg', ''),
(115, 'word_search_15', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_15.jpg', 'word_search_15_sol.jpg', ''),
(116, 'word_search_16', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_16.jpg', 'word_search_16_sol.jpg', ''),
(117, 'word_search_17', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_17.jpg', 'word_search_17_sol.jpg', ''),
(118, 'word_search_18', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_18.jpg', 'word_search_18_sol.jpg', ''),
(119, 'word_search_19', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_19.jpg', 'word_search_19_sol.jpg', ''),
(120, 'word_search_20', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_20.jpg', 'word_search_20_sol.jpg', ''),
(121, 'word_search_21', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_21.jpg', 'word_search_21_sol.jpg', ''),
(122, 'word_search_22', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_22.jpg', 'word_search_22_sol.jpg', ''),
(123, 'word_search_23', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_23.jpg', 'word_search_23_sol.jpg', ''),
(124, 'word_search_24', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_24.jpg', 'word_search_24_sol.jpg', ''),
(125, 'word_search_25', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_25.jpg', 'word_search_25_sol.jpg', ''),
(126, 'word_search_26', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_26.jpg', 'word_search_26_sol.jpg', ''),
(127, 'word_search_27', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_27.jpg', 'word_search_27_sol.jpg', ''),
(128, 'word_search_28', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_28.jpg', 'word_search_28_sol.jpg', ''),
(129, 'word_search_29', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_29.jpg', 'word_search_29_sol.jpg', ''),
(130, 'word_search_30', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_30.jpg', 'word_search_30_sol.jpg', ''),
(131, 'word_search_31', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_31.jpg', 'word_search_31_sol.jpg', ''),
(132, 'word_search_32', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_32.jpg', 'word_search_32_sol.jpg', ''),
(133, 'word_search_33', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_33.jpg', 'word_search_33_sol.jpg', ''),
(134, 'word_search_34', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_34.jpg', 'word_search_34_sol.jpg', ''),
(135, 'word_search_35', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_35.jpg', 'word_search_35_sol.jpg', ''),
(136, 'word_search_36', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_36.jpg', 'word_search_36_sol.jpg', ''),
(137, 'word_search_37', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_37.jpg', 'word_search_37_sol.jpg', ''),
(138, 'word_search_38', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_38.jpg', 'word_search_38_sol.jpg', ''),
(139, 'word_search_39', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_39.jpg', 'word_search_39_sol.jpg', ''),
(140, 'word_search_40', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_40.jpg', 'word_search_40_sol.jpg', ''),
(141, 'word_search_41', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_41.jpg', 'word_search_41_sol.jpg', ''),
(142, 'word_search_42', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_42.jpg', 'word_search_42_sol.jpg', ''),
(143, 'word_search_43', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_43.jpg', 'word_search_43_sol.jpg', ''),
(144, 'word_search_44', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_44.jpg', 'word_search_44_sol.jpg', ''),
(145, 'word_search_45', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_45.jpg', 'word_search_45_sol.jpg', ''),
(146, 'word_search_46', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_46.jpg', 'word_search_46_sol.jpg', ''),
(147, 'word_search_47', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_47.jpg', 'word_search_47_sol.jpg', ''),
(148, 'word_search_48', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_48.jpg', 'word_search_48_sol.jpg', ''),
(149, 'word_search_49', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_49.jpg', 'word_search_49_sol.jpg', ''),
(150, 'word_search_50', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_50.jpg', 'word_search_50_sol.jpg', ''),
(151, 'word_search_51', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_51.jpg', 'word_search_51_sol.jpg', ''),
(152, 'word_search_52', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_52.jpg', 'word_search_52_sol.jpg', ''),
(153, 'word_search_53', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_53.jpg', 'word_search_53_sol.jpg', ''),
(154, 'word_search_54', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_54.jpg', 'word_search_54_sol.jpg', ''),
(155, 'word_search_55', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_55.jpg', 'word_search_55_sol.jpg', ''),
(156, 'word_search_56', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_56.jpg', 'word_search_56_sol.jpg', ''),
(157, 'word_search_57', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_57.jpg', 'word_search_57_sol.jpg', ''),
(158, 'word_search_58', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_58.jpg', 'word_search_58_sol.jpg', ''),
(159, 'word_search_59', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_59.jpg', 'word_search_59_sol.jpg', ''),
(160, 'word_search_60', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_60.jpg', 'word_search_60_sol.jpg', ''),
(161, 'word_search_61', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_61.jpg', 'word_search_61_sol.jpg', ''),
(162, 'word_search_62', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_62.jpg', 'word_search_62_sol.jpg', ''),
(163, 'word_search_63', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_63.jpg', 'word_search_63_sol.jpg', ''),
(164, 'word_search_64', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_64.jpg', 'word_search_64_sol.jpg', ''),
(165, 'word_search_65', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_65.jpg', 'word_search_65_sol.jpg', ''),
(166, 'word_search_66', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_66.jpg', 'word_search_66_sol.jpg', ''),
(167, 'word_search_67', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_67.jpg', 'word_search_67_sol.jpg', ''),
(168, 'word_search_68', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_68.jpg', 'word_search_68_sol.jpg', ''),
(169, 'word_search_69', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_69.jpg', 'word_search_69_sol.jpg', ''),
(170, 'word_search_70', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_70.jpg', 'word_search_70_sol.jpg', ''),
(171, 'word_search_71', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_71.jpg', 'word_search_71_sol.jpg', ''),
(172, 'word_search_72', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_72.jpg', 'word_search_72_sol.jpg', ''),
(173, 'word_search_73', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_73.jpg', 'word_search_73_sol.jpg', ''),
(174, 'word_search_74', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_74.jpg', 'word_search_74_sol.jpg', ''),
(175, 'word_search_75', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_75.jpg', 'word_search_75_sol.jpg', ''),
(176, 'word_search_76', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_76.jpg', 'word_search_76_sol.jpg', ''),
(177, 'word_search_77', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_77.jpg', 'word_search_77_sol.jpg', ''),
(178, 'word_search_78', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_78.jpg', 'word_search_78_sol.jpg', ''),
(179, 'word_search_79', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_79.jpg', 'word_search_79_sol.jpg', ''),
(180, 'word_search_80', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_80.jpg', 'word_search_80_sol.jpg', ''),
(181, 'word_search_81', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_81.jpg', 'word_search_81_sol.jpg', ''),
(182, 'word_search_82', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_82.jpg', 'word_search_82_sol.jpg', ''),
(183, 'word_search_83', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_83.jpg', 'word_search_83_sol.jpg', ''),
(184, 'word_search_84', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_84.jpg', 'word_search_84_sol.jpg', ''),
(185, 'word_search_85', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_85.jpg', 'word_search_85_sol.jpg', ''),
(186, 'word_search_86', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_86.jpg', 'word_search_86_sol.jpg', ''),
(187, 'word_search_87', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_87.jpg', 'word_search_87_sol.jpg', ''),
(188, 'word_search_88', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_88.jpg', 'word_search_88_sol.jpg', ''),
(189, 'word_search_89', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_89.jpg', 'word_search_89_sol.jpg', ''),
(190, 'word_search_90', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_90.jpg', 'word_search_90_sol.jpg', ''),
(191, 'word_search_91', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_91.jpg', 'word_search_91_sol.jpg', ''),
(192, 'word_search_92', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_92.jpg', 'word_search_92_sol.jpg', ''),
(193, 'word_search_93', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_93.jpg', 'word_search_93_sol.jpg', ''),
(194, 'word_search_94', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_94.jpg', 'word_search_94_sol.jpg', ''),
(195, 'word_search_95', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_95.jpg', 'word_search_95_sol.jpg', ''),
(196, 'word_search_96', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_96.jpg', 'word_search_96_sol.jpg', ''),
(197, 'word_search_97', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_97.jpg', 'word_search_97_sol.jpg', ''),
(198, 'word_search_98', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_98.jpg', 'word_search_98_sol.jpg', ''),
(199, 'word_search_99', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_99.jpg', 'word_search_99_sol.jpg', ''),
(200, 'word_search_100', 'Cross Word', 'Siva Jasthi', 'Easy Cross Words  V.1', 'word_search_100.jpg', 'word_search_100_sol.jpg', 'this is the 100th puzzle');

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
(1, 'NO_OF_TOPICS_PER_ROW', 5, 'This is the number of topics, per row, on home page'),
(2, 'NO_OF_QUESTIONS_TO_SHOW', 5, 'The number of Question per quiz');

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
  `active` varchar(10) NOT NULL,
  `role` varchar(20) NOT NULL,
  `modified_time` date NOT NULL,
  `created_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `hash`, `active`, `role`, `modified_time`, `created_time`) VALUES
(1, 'Siva', 'Jasthi', 'siva@silcmn.com', '$2y$10$zFAG5GBNtf.5BpowMqZSputSLeG8OzfKACpjAMsePjZhu.TnvU/Bu', 'yes', 'admin', '0000-00-00', '0000-00-00'),
(2, 'Mahesh', 'Sunkara', 'mahesh@silcmn.com', '$2y$10$zFAG5GBNtf.5BpowMqZSputSLeG8OzfKACpjAMsePjZhu.TnvU/Bu', 'yes', 'admin', '0000-00-00', '0000-00-00'),
(3, 'SILC', 'Tester', 'test@silcmn.com', '$2y$10$zFAG5GBNtf.5BpowMqZSputSLeG8OzfKACpjAMsePjZhu.TnvU/Bu', 'yes', 'admin', '0000-00-00', '0000-00-00'),
(4, 'SILC', 'CS320', 'cs320@silcmn.com', '$2y$10$zFAG5GBNtf.5BpowMqZSputSLeG8OzfKACpjAMsePjZhu.TnvU/Bu', 'yes', 'admin', '0000-00-00', '0000-00-00'),
(5, 'ics', '499', 'ics499@metrostate.edu', '', '1', 'admin', '0000-00-00', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gpuzzles`
--
ALTER TABLE `gpuzzles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `gpuzzles`
--
ALTER TABLE `gpuzzles`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
