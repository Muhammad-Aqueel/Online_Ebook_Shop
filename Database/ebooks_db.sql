-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 05:29 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebooks_db`
--
CREATE Database `ebooks_db`;
USE `ebooks_db`;
-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `com_logo` varchar(100) DEFAULT NULL,
  `com_name` varchar(100) NOT NULL,
  `com_email` varchar(60) NOT NULL,
  `com_phone` varchar(15) DEFAULT NULL,
  `com_address` varchar(255) DEFAULT NULL,
  `cur_format` varchar(10) NOT NULL,
  `admin_role` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `username`, `password`, `com_logo`, `com_name`, `com_email`, `com_phone`, `com_address`, `cur_format`, `admin_role`) VALUES
(1, 'admin', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'Admin', 'admin@email.com', NULL, NULL, '$', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL,
  `brand_cat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `brand_cat`) VALUES
(1, 'Pearson', 1),
(2, 'RELX', 1),
(3, 'Thomson Reuters', 1),
(4, 'Penguin Random House', 1),
(5, 'Hachette Livre', 1),
(6, 'HarperCollins', 1),
(7, 'Macmillan Publishers', 1),
(8, 'Bertelsmann', 1),
(9, 'Scholastic Corporation', 1),
(10, 'McGraw-Hill Education', 1),
(11, 'Pearson', 2),
(12, 'RELX', 2),
(13, 'Thomson Reuters', 2),
(14, 'Penguin Random House', 2),
(15, 'Hachette Livre', 2),
(16, 'HarperCollins', 2),
(17, 'Macmillan Publishers', 2),
(18, 'Bertelsmann', 2),
(19, 'Scholastic Corporation', 2),
(20, 'McGraw-Hill Education', 2),
(21, 'Pearson', 3),
(22, 'RELX', 3),
(23, 'Thomson Reuters', 3),
(24, 'Penguin Random House', 3),
(25, 'Hachette Livre', 3),
(26, 'HarperCollins', 3),
(27, 'Macmillan Publishers', 3),
(28, 'Bertelsmann', 3),
(29, 'Scholastic Corporation', 3),
(30, 'McGraw-Hill Education', 3),
(31, 'Pearson', 4),
(32, 'RELX', 4),
(33, 'Thomson Reuters', 4),
(34, 'Penguin Random House', 4),
(35, 'Hachette Livre', 4),
(36, 'HarperCollins', 4),
(37, 'Macmillan Publishers', 4),
(38, 'Bertelsmann', 4),
(39, 'Scholastic Corporation', 4),
(40, 'McGraw-Hill Education', 4),
(41, 'Pearson', 5),
(42, 'RELX', 5),
(43, 'Thomson Reuters', 5),
(44, 'Penguin Random House', 5),
(45, 'Hachette Livre', 5),
(46, 'HarperCollins', 5),
(47, 'Macmillan Publishers', 5),
(48, 'Bertelsmann', 5),
(49, 'Scholastic Corporation', 5),
(50, 'McGraw-Hill Education', 5),
(51, 'Pearson', 6),
(52, 'RELX', 6),
(53, 'Thomson Reuters', 6),
(54, 'Penguin Random House', 6),
(55, 'Hachette Livre', 6),
(56, 'HarperCollins', 6),
(57, 'Macmillan Publishers', 6),
(58, 'Bertelsmann', 6),
(59, 'Scholastic Corporation', 6),
(60, 'McGraw-Hill Education', 6),
(61, 'Pearson', 7),
(62, 'RELX', 7),
(63, 'Thomson Reuters', 7),
(64, 'Penguin Random House', 7),
(65, 'Hachette Livre', 7),
(66, 'HarperCollins', 7),
(67, 'Macmillan Publishers', 7),
(68, 'Bertelsmann', 7),
(69, 'Scholastic Corporation', 7),
(70, 'McGraw-Hill Education', 7),
(71, 'Pearson', 8),
(72, 'RELX', 8),
(73, 'Thomson Reuters', 8),
(74, 'Penguin Random House', 8),
(75, 'Hachette Livre', 8),
(76, 'HarperCollins', 8),
(77, 'Macmillan Publishers', 8),
(78, 'Bertelsmann', 8),
(79, 'Scholastic Corporation', 8),
(80, 'McGraw-Hill Education', 8),
(81, 'Pearson', 9),
(82, 'RELX', 9),
(83, 'Thomson Reuters', 9),
(84, 'Penguin Random House', 9),
(85, 'Hachette Livre', 9),
(86, 'HarperCollins', 9),
(87, 'Macmillan Publishers', 9),
(88, 'Bertelsmann', 9),
(89, 'Scholastic Corporation', 9),
(90, 'McGraw-Hill Education', 9),
(91, 'Pearson', 10),
(92, 'RELX', 10),
(93, 'Thomson Reuters', 10),
(94, 'Penguin Random House', 10),
(95, 'Hachette Livre', 10),
(96, 'HarperCollins', 10),
(97, 'Macmillan Publishers', 10),
(98, 'Bertelsmann', 10),
(99, 'Scholastic Corporation', 10),
(100, 'McGraw-Hill Education', 10),
(101, 'Pearson', 11),
(102, 'RELX', 11),
(103, 'Thomson Reuters', 11),
(104, 'Penguin Random House', 11),
(105, 'Hachette Livre', 11),
(106, 'HarperCollins', 11),
(107, 'Macmillan Publishers', 11),
(108, 'Bertelsmann', 11),
(109, 'Scholastic Corporation', 11),
(110, 'McGraw-Hill Education', 11);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `products` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `products`) VALUES
(1, 'Biography & Memoir', 0),
(2, 'Business & Finance', 0),
(3, 'Comics, Graphic Novels, & Manga', 0),
(4, 'Fiction & Literature', 0),
(5, 'Kids', 0),
(6, 'Mystery & Suspense', 0),
(7, 'Nonfiction', 0),
(8, 'Periodicals', 0),
(9, 'Romance', 0),
(10, 'Science Fiction & Fantasy', 0),
(11, 'Young Adult - YA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `s_no` int(11) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `site_title` varchar(100) DEFAULT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `footer_text` varchar(100) NOT NULL,
  `currency_format` varchar(20) NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`s_no`, `site_name`, `site_title`, `site_logo`, `site_desc`, `footer_text`, `currency_format`, `contact_phone`, `contact_email`, `contact_address`) VALUES
(1, 'E-Books', 'Online E-Book Shop Project', 'logo.png', 'Online E-Book Shop E-Project', 'Copyright 2023', 'Rs.', '92123456789', 'ebooks@email.com', 'E-Books Karachi Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_qty` varchar(100) NOT NULL,
  `total_amount` varchar(10) NOT NULL,
  `product_user` int(11) NOT NULL,
  `order_date` varchar(11) NOT NULL,
  `pay_req_id` varchar(100) DEFAULT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT 0,
  `delivery` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_sub_cat` int(11) NOT NULL,
  `product_brand` int(100) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_desc` text NOT NULL,
  `featured_image` text NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `product_keywords` text DEFAULT NULL,
  `product_views` int(11) DEFAULT 0,
  `product_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_cat`, `product_sub_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `featured_image`, `qty`, `product_keywords`, `product_views`, `product_status`) VALUES
(1, '644e8decd683f', 11, 97, 101, 'The Cold Storm', '1000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;&lt;p bis_skin_checked=&quot;1&quot;&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;', '1682869740TheColdStorm.jpg', 20, NULL, 1, 1),
(2, '644e8ebf42e37', 11, 97, 101, 'Jon Land’s STRONG TO THE BONE', '1000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682869951Strong+to+the+Bone+Jon+Land.jpg', 20, NULL, 1, 1),
(3, '644e8fad542f6', 11, 97, 101, 'Blood in the Ashes.', '1000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682870189BloodintheAshes.jpg', 20, NULL, 1, 1),
(6, '644e91aeb289f', 10, 90, 92, 'The Iron Trial', '1000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682870702The-Iron-Trial-.jpg', 15, NULL, 1, 1),
(7, '644e91ef43da0', 10, 90, 92, 'Dragon Slippers', '1000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682870767Dragon-Slippers.jpg', 15, NULL, 1, 1),
(8, '644e922f25ee1', 10, 90, 92, 'Nevermoor The Trial of Morrigan Crow', '1000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682870831Nevermoor-The-Trial-of-Morrigan-Crow.jpg', 15, NULL, 1, 1),
(9, '644e932c06e02', 9, 89, 83, 'The Roughest Draft', '1000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682871084TheRoughestDraft.jpg', 15, NULL, 1, 1),
(10, '644e9384001bb', 9, 89, 83, 'Book Lovers', '1000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682871171BookLovers.jpg', 15, NULL, 1, 1),
(11, '644e93de5f6e5', 9, 89, 83, 'Mr. Wrong Number', '1000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682871262Mr.WrongNumber.jpg', 15, NULL, 1, 1),
(12, '644e9496564b3', 8, 78, 74, 'Spark Joy', '1500', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682871446SparkJoy.jpg', 20, NULL, 1, 1),
(13, '644e9524c8a9f', 8, 78, 74, 'Bobby Flay Fit', '1500', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682871588BobbyFlayFit.jpg', 20, NULL, 1, 1),
(14, '644e97917aa5e', 8, 78, 74, 'This Naked Mind', '1500', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682872209ThisNakedMind.jpg', 20, NULL, 1, 1),
(15, '644e992b025a8', 7, 69, 65, 'Francisco Cantú', '2000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682872619FranciscoCantú.jpg', 20, NULL, 1, 1),
(16, '644e9a2f4b832', 7, 69, 65, 'When They Call You a Terrorist', '2000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;&lt;br&gt;', '1682872879WhenTheyCallYouaTerrorist.jpg', 20, NULL, 1, 1),
(17, '644e9b28e1be0', 7, 69, 65, 'I&#039;ll Be Gone in the Dark', '2000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682873128I&#039;llBeGoneintheDark.jpg', 15, NULL, 1, 1),
(18, '644f8201a03e2', 6, 58, 56, 'Death at La Fenice', '2000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books.&lt;/span&gt;', '1682932225DeathatLaFenice.jpg', 20, NULL, 1, 1),
(19, '644f824406b54', 6, 58, 56, 'Postmortem', '2000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;books.&lt;/span&gt;', '1682932292Postmortem.jpg', 20, NULL, 1, 1),
(20, '644f82770183f', 6, 58, 56, 'The Thin Man', '2000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;books.&lt;/span&gt;', '1682932343TheThinMan.jpg', 20, NULL, 1, 1),
(21, '644f831706a98', 5, 52, 47, 'The Dot', '1500', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books.&lt;/span&gt;&lt;br&gt;', '1682932503the-dot.jpg', 20, NULL, 1, 1),
(22, '644f835208056', 5, 52, 47, 'Ish', '1500', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books.&lt;/span&gt;', '1682932562ish.jpg', 20, NULL, 1, 1),
(23, '644f83895e803', 5, 52, 47, 'The Art Book for Children', '1500', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;books.&lt;/span&gt;', '1682932617TheArtBookforChildren.jpg', 20, NULL, 1, 1),
(24, '644f84a511234', 4, 45, 38, 'Empire of Pain', '5000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;books.&lt;/span&gt;', '1682932901EmpireofPain.jpg', 25, NULL, 1, 1),
(25, '644f84de1d206', 4, 45, 38, 'Bad Blood', '5000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;books.&lt;/span&gt;', '1682932958BadBlood.jpg', 25, NULL, 1, 1),
(26, '644f850e3c73d', 4, 45, 38, 'Last Call', '5000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;books.&lt;/span&gt;', '1682933006LastCall.jpg', 25, NULL, 1, 1),
(27, '644f861c327ba', 3, 27, 29, 'The Open Door', '6000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;books.&lt;/span&gt;', '1682933276TheOpenDoor.jpg', 30, NULL, 1, 1),
(28, '644f8669cd8f7', 3, 27, 29, 'Want Me', '6000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;books.&lt;/span&gt;', '1682933353WantMe.jpg', 25, NULL, 1, 1),
(29, '644f86beda81f', 3, 27, 29, 'Escorted', '6000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;books.&lt;/span&gt;', '1682933438Escorted.jpg', 30, NULL, 1, 1),
(30, '644f8766c4442', 2, 16, 20, 'Shutdown', '7000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;books.&lt;/span&gt;', '1682933606Shutdown.jpg', 15, NULL, 1, 1),
(31, '644f87ba404d6', 2, 16, 20, 'Good Data', '7000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;', '1682933690GoodData.jpg', 15, NULL, 1, 1),
(32, '644f885113035', 2, 16, 20, 'Radical Potter', '7000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;books.&lt;/span&gt;', '1682933841RadicalPotter.jpg', 15, NULL, 1, 1),
(33, '644f896e70641', 1, 5, 10, 'The Poison Machine', '3000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;', '1682934126ThePoisonMachine.jpeg', 20, NULL, 1, 1),
(34, '644f91be6aaba', 1, 5, 10, 'The Hacienda', '3000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682936254TheHacienda.jpg', 25, NULL, 1, 1),
(35, '644f91f15fbd3', 1, 5, 10, 'A Dangerous Business', '3000', '&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;So we&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;offer&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;great discounts on a wide range of&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(95, 99, 104); font-family: arial, sans-serif; font-weight: bold;&quot;&gt;books&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;', '1682936305ADangerousBusiness.jpeg', 15, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `s_no` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat_title` varchar(100) NOT NULL,
  `cat_parent` int(11) NOT NULL,
  `cat_products` int(11) NOT NULL DEFAULT 0,
  `show_in_header` tinyint(4) NOT NULL DEFAULT 1,
  `show_in_footer` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`sub_cat_id`, `sub_cat_title`, `cat_parent`, `cat_products`, `show_in_header`, `show_in_footer`) VALUES
(1, 'Artists, Architects & Photographers', 1, 0, 1, 1),
(2, 'Business', 1, 0, 1, 1),
(3, 'Composers & Musicians', 1, 0, 1, 1),
(4, 'Entertainment & Performing Arts', 1, 0, 1, 1),
(5, 'Historical', 1, 3, 1, 1),
(6, 'Literary', 1, 0, 1, 1),
(7, 'Philosophers', 1, 0, 1, 1),
(8, 'Political', 1, 0, 1, 1),
(9, 'Reference', 1, 0, 1, 1),
(10, 'Religious', 1, 0, 1, 1),
(11, 'Royalty', 1, 0, 1, 1),
(12, 'Sports', 1, 0, 1, 1),
(13, 'Accounting', 2, 0, 1, 1),
(14, 'Business Reference', 2, 0, 1, 1),
(15, 'Career Planning & Job Hunting', 2, 0, 1, 1),
(16, 'Economics', 2, 3, 1, 1),
(17, 'Entrepreneurship & Small Business', 2, 0, 1, 1),
(18, 'Finance & Investing', 2, 0, 1, 1),
(19, 'Human Resources & Personnel Management', 2, 0, 1, 1),
(20, 'Industries & Professions', 2, 0, 1, 1),
(21, 'Management & Leadership', 2, 0, 1, 1),
(22, 'Marketing & Sales', 2, 0, 1, 1),
(23, 'Personal Finance', 2, 0, 1, 1),
(24, 'Anthologies', 3, 0, 1, 1),
(25, 'Contemporary Women', 3, 0, 1, 1),
(26, 'Crime & Mystery', 3, 0, 1, 1),
(27, 'Erotica', 3, 3, 1, 1),
(28, 'Fantasy', 3, 0, 1, 1),
(29, 'Historical Fiction', 3, 0, 1, 1),
(30, 'Horror', 3, 0, 1, 1),
(31, 'Literary', 3, 0, 1, 1),
(32, 'Manga', 3, 0, 1, 1),
(33, 'Media Tie-In', 3, 0, 1, 1),
(34, 'Non-Fiction', 3, 0, 1, 1),
(35, 'Religious', 3, 0, 1, 1),
(36, 'Romance', 3, 0, 1, 1),
(37, 'Science Fiction', 3, 0, 1, 1),
(38, 'Superheroes', 3, 0, 1, 1),
(39, 'Action Suspense', 4, 0, 1, 1),
(40, 'African American', 4, 0, 1, 1),
(41, 'Anthologies', 4, 0, 1, 1),
(42, 'Classics', 4, 0, 1, 1),
(43, 'Coming of Age', 4, 0, 1, 1),
(44, 'Contemporary Women', 4, 0, 1, 1),
(45, 'Crime', 4, 3, 1, 1),
(46, 'Cultural Heritage', 4, 0, 1, 1),
(47, 'Drama', 4, 0, 1, 1),
(48, 'ABCs, 123s', 5, 0, 1, 1),
(49, 'Animals', 5, 0, 1, 1),
(50, 'Beautiful and Interesting', 5, 0, 1, 1),
(51, 'Comics, Graphic Novels & Manga', 5, 0, 1, 1),
(52, 'Creative Kids', 5, 3, 1, 1),
(53, 'Fiction', 5, 0, 1, 1),
(54, 'Français, Español and more', 5, 0, 1, 1),
(55, 'My Family, My Feelings, My Friends', 5, 0, 1, 1),
(56, 'Natural World', 5, 0, 1, 1),
(57, 'People and Places', 5, 0, 1, 1),
(58, 'Cozy Mysteries', 6, 3, 1, 1),
(59, 'Espionage', 6, 0, 1, 1),
(60, 'Hard-Boiled', 6, 0, 1, 1),
(61, 'Historical Mystery', 6, 0, 1, 1),
(62, 'International', 6, 0, 1, 1),
(63, 'Legal', 6, 0, 1, 1),
(64, 'Police Procedural', 6, 0, 1, 1),
(65, 'Technological', 6, 0, 1, 1),
(66, 'Thrillers', 6, 0, 1, 1),
(67, 'Art & Architecture', 7, 0, 1, 1),
(68, 'Computers', 7, 0, 1, 1),
(69, 'Entertainment', 7, 3, 1, 1),
(70, 'Family & Relationships', 7, 0, 1, 1),
(71, 'Food & Drink', 7, 0, 1, 1),
(72, 'Health & Well Being', 7, 0, 1, 1),
(73, 'History', 7, 0, 1, 1),
(74, 'Home & Garden', 7, 0, 1, 1),
(75, 'Reference & Language', 7, 0, 1, 1),
(76, 'Computers', 8, 0, 1, 1),
(77, 'Education, Language study', 8, 0, 1, 1),
(78, 'Lifestyle', 8, 3, 1, 1),
(79, 'Local Interest', 8, 0, 1, 1),
(80, 'TV, Entertainment, Music', 8, 0, 1, 1),
(81, 'Travel', 8, 0, 1, 1),
(82, 'Women Interest', 8, 0, 1, 1),
(83, 'Contemporary', 9, 0, 1, 1),
(84, 'Erotica', 9, 0, 1, 1),
(85, 'Historical', 9, 0, 1, 1),
(86, 'Inspired Romance', 9, 0, 1, 1),
(87, 'Adult', 9, 0, 1, 1),
(88, 'Paranormal', 9, 0, 1, 1),
(89, 'Romantic Suspense', 9, 3, 1, 1),
(90, 'Fantasy', 10, 3, 1, 1),
(91, 'High Tech', 10, 0, 1, 1),
(92, 'Historical', 10, 0, 1, 1),
(93, 'Horror', 10, 0, 1, 1),
(94, 'Science Fiction', 10, 0, 1, 1),
(95, 'Space Opera', 10, 0, 1, 1),
(96, 'Steampunk', 10, 0, 1, 1),
(97, 'Action Suspense', 11, 3, 1, 1),
(98, 'Comics, Graphic Novels, & Manga', 11, 0, 1, 1),
(99, 'Dystopia', 11, 0, 1, 1),
(100, 'Fantasy', 11, 0, 1, 1),
(101, 'Historical', 11, 0, 1, 1),
(102, 'Horror', 11, 0, 1, 1),
(103, 'Paranormal', 11, 0, 1, 1),
(104, 'Religious', 11, 0, 1, 1),
(105, 'Romance', 11, 0, 1, 1),
(106, 'School', 11, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_office`
--

CREATE TABLE `tbl_office` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `age` int(11) NOT NULL,
  `designation` varchar(90) NOT NULL,
  `city` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `user_role` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product_cart`
--
ALTER TABLE `product_cart`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
