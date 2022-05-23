-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2022 at 02:15 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flower_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add sub category', 8, 'add_subcategory'),
(30, 'Can change sub category', 8, 'change_subcategory'),
(31, 'Can delete sub category', 8, 'delete_subcategory'),
(32, 'Can view sub category', 8, 'view_subcategory'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add order details', 12, 'add_orderdetails'),
(46, 'Can change order details', 12, 'change_orderdetails'),
(47, 'Can delete order details', 12, 'delete_orderdetails'),
(48, 'Can view order details', 12, 'view_orderdetails');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$URsCDzZlxNxSx6QJzhjLgS$usHrRPSiaALQ/LTqQ40KuxXTSnD5K7m6CX6ZfwoV9gw=', '2022-05-19 16:56:27.938842', 1, 'admin', '', '', 'vanshikawalia.jal@gmail.com', 1, 1, '2022-04-12 11:55:00.728370'),
(2, 'pbkdf2_sha256$320000$wvNEc6bdJyoa7g5qP6TCaC$6ncnt5aHnKpIynTQhXfQXKyAwdH2jdvQOf6taG1j4v8=', '2022-04-12 17:38:09.727564', 0, 'krish', 'krish', 'arora', '820arora@gmail.com', 1, 1, '2022-04-12 17:36:14.000000'),
(7, 'pbkdf2_sha256$320000$7YAW28UhAUgAuca8sMKqrs$lcA4b1qIWaBDGY6XBKrLkf8B7EmBBmzxHbcsZN0TUQA=', '2022-05-10 17:59:55.602661', 0, 'Kartik', 'Kartik', '', 'dhir501@gmail.com', 0, 1, '2022-05-04 12:01:26.601446'),
(8, 'pbkdf2_sha256$320000$qDcdw6BDW2JeCdRFEU7VPz$vpxMfTddq4k5ZV5xwjehdkFBh1FSSoRk2pATSCq2gPY=', '2022-05-09 19:38:59.274134', 0, 'aarti', 'aarti verma', '', '123verma@gmail.com', 0, 1, '2022-05-06 18:23:32.485297'),
(9, 'pbkdf2_sha256$320000$0r3VTt9p333oefRcUds2Fx$dr7JMlxhEhjmy0q0KxLfZIv8+r7Arz6bc20g8gaHmKw=', '2022-05-18 22:04:07.068922', 0, 'parika', 'parika walia', '', '123walia@gmail.com', 0, 1, '2022-05-08 16:36:30.576654'),
(10, 'pbkdf2_sha256$320000$jzsmhaB1wu2BurGJu3kB3X$8tjoajDtEN/jhXnNSewvkPMJfI5TzNE81VHT5tYFF8g=', '2022-05-19 00:34:44.995412', 0, 'shallu', 'shallu arora', '', 'dhir501@gmail.com', 0, 1, '2022-05-09 19:23:26.616569'),
(11, 'pbkdf2_sha256$320000$gVo7sOzW3Cxl2rQEUsC5lt$4vpW9dIoXNAd2PbnnojxMIaSD6NmGwnKajSGi7Pg4II=', '2022-05-21 17:41:18.882042', 0, 'vanshika', 'vanshika', '', '123verma@gmail.com', 0, 1, '2022-05-21 17:41:05.842645');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 4),
(2, 2, 8),
(3, 2, 12),
(4, 2, 16),
(5, 2, 20),
(6, 2, 24);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-04-12 17:36:14.887564', '2', 'krish', 1, '[{\"added\": {}}]', 4, 1),
(2, '2022-04-12 17:37:44.224147', '2', 'krish', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"User permissions\"]}}]', 4, 1),
(3, '2022-04-13 11:56:56.047621', '1', 'Flowers', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-04-13 11:57:43.757313', '2', 'Cakes', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-04-14 10:57:27.814432', '3', 'plants', 1, '[{\"added\": {}}]', 7, 1),
(6, '2022-04-14 10:58:01.061149', '1', 'Flower Bouquet', 1, '[{\"added\": {}}]', 8, 1),
(7, '2022-04-14 10:58:22.394242', '2', 'Flower Basket', 1, '[{\"added\": {}}]', 8, 1),
(8, '2022-04-14 10:58:41.333686', '3', 'Strawberry Cake', 1, '[{\"added\": {}}]', 8, 1),
(9, '2022-04-14 11:00:43.334471', '4', 'Indoor plants', 1, '[{\"added\": {}}]', 8, 1),
(10, '2022-04-17 06:01:54.079026', '1', '15 Red Roses Arrangement', 1, '[{\"added\": {}}]', 9, 1),
(11, '2022-04-17 06:03:13.435225', '1', '15 Red Roses Arrangement', 2, '[{\"changed\": {\"fields\": [\"Image3\"]}}]', 9, 1),
(12, '2022-04-17 06:06:14.118136', '5', 'Chocolate Cake', 1, '[{\"added\": {}}]', 8, 1),
(13, '2022-04-17 06:08:32.695781', '2', 'Cream Drop Chocolate Cake', 1, '[{\"added\": {}}]', 9, 1),
(14, '2022-04-17 06:11:07.212370', '6', 'medicinal plants', 1, '[{\"added\": {}}]', 8, 1),
(15, '2022-04-17 06:15:14.187802', '3', 'Small Potted Aloe Vera', 1, '[{\"added\": {}}]', 9, 1),
(16, '2022-04-18 15:13:37.278916', '4', 'Indoor plants', 3, '', 8, 1),
(17, '2022-04-18 15:16:26.204242', '3', 'Strawberry Cake', 3, '', 8, 1),
(18, '2022-04-18 15:22:12.936569', '4', 'Mix Roses Bouquet', 1, '[{\"added\": {}}]', 9, 1),
(19, '2022-04-18 15:24:45.899862', '4', 'Mix Roses Bouquet', 2, '[{\"changed\": {\"fields\": [\"Image2\"]}}]', 9, 1),
(20, '2022-04-24 12:14:58.990963', '4', 'Mix Roses Bouquet', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(21, '2022-04-24 12:15:07.205196', '2', 'Cream Drop Chocolate Cake', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(22, '2022-04-24 12:15:13.274028', '1', '15 Red Roses Arrangement', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(23, '2022-04-24 17:51:38.506546', '7', 'Peaceful White Roses Bouquet', 1, '[{\"added\": {}}]', 8, 1),
(24, '2022-04-24 17:55:20.088135', '7', 'Peaceful White Roses Bouquet', 3, '', 8, 1),
(25, '2022-04-24 17:56:09.575000', '5', 'Peaceful White Roses Bouquet', 1, '[{\"added\": {}}]', 9, 1),
(26, '2022-04-24 17:58:07.334879', '8', 'Cup Cakes', 1, '[{\"added\": {}}]', 8, 1),
(27, '2022-04-24 17:59:02.274185', '6', 'Vanillicious Choco Chip Cupcakes', 1, '[{\"added\": {}}]', 9, 1),
(28, '2022-04-24 18:01:30.133824', '9', 'Artificial plants', 1, '[{\"added\": {}}]', 8, 1),
(29, '2022-04-24 18:02:06.857527', '7', 'Artificial Ponytail Bonsai Plant', 1, '[{\"added\": {}}]', 9, 1),
(30, '2022-04-24 18:11:08.591851', '8', 'Pink Elan', 1, '[{\"added\": {}}]', 9, 1),
(31, '2022-04-25 13:20:27.958195', '3', 'plants', 2, '[{\"changed\": {\"fields\": [\"Category image\"]}}]', 7, 1),
(32, '2022-04-25 13:20:39.355750', '2', 'Cakes', 2, '[{\"changed\": {\"fields\": [\"Category image\"]}}]', 7, 1),
(33, '2022-04-25 13:20:53.134123', '1', 'Flowers', 2, '[{\"changed\": {\"fields\": [\"Category image\"]}}]', 7, 1),
(34, '2022-04-25 13:33:30.152308', '10', 'Pull me up cake', 1, '[{\"added\": {}}]', 8, 1),
(35, '2022-04-25 22:42:35.253506', '11', 'Designer Cakes', 1, '[{\"added\": {}}]', 8, 1),
(36, '2022-04-25 22:43:44.201648', '9', 'Violet Frenzy', 1, '[{\"added\": {}}]', 9, 1),
(37, '2022-04-25 22:43:44.202058', '10', 'Violet Frenzy', 1, '[{\"added\": {}}]', 9, 1),
(38, '2022-04-25 22:47:48.846562', '11', 'Chocolate Pinata Cake', 1, '[{\"added\": {}}]', 9, 1),
(39, '2022-04-25 22:49:15.920074', '8', 'Pink Elan', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(40, '2022-04-25 22:50:30.332648', '3', 'Small Potted Aloe Vera', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(41, '2022-04-25 22:53:53.757257', '6', 'Vanillicious Choco Chip Cupcakes', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(42, '2022-04-25 22:54:22.085849', '2', 'Cream Drop Chocolate Cake', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(43, '2022-04-25 22:55:08.842269', '3', 'Small Potted Aloe Vera', 2, '[{\"changed\": {\"fields\": [\"Price\", \"Discount percent\"]}}]', 9, 1),
(44, '2022-04-25 22:56:39.941458', '5', 'Peaceful White Roses Bouquet', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(45, '2022-04-25 22:56:45.297092', '4', 'Mix Roses Bouquet', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(46, '2022-04-25 23:00:40.731293', '12', 'Artificial Plants In Cute Hippo And Turtle Planters', 1, '[{\"added\": {}}]', 9, 1),
(47, '2022-04-25 23:04:19.410102', '13', 'Ice Blue Rose Box', 1, '[{\"added\": {}}]', 9, 1),
(48, '2022-04-26 13:03:30.487096', '4', 'toys', 1, '[{\"added\": {}}]', 7, 1),
(49, '2022-04-26 13:05:47.174579', '4', 'toys', 3, '', 7, 1),
(50, '2022-04-26 22:45:44.757314', '5', 'Chocolate Cake', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(51, '2022-04-26 22:47:06.381874', '1', 'Flower Bouquet', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(52, '2022-04-26 22:48:12.519422', '2', 'Flower Basket', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(53, '2022-04-26 22:49:31.280728', '9', 'Artificial plants', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(54, '2022-04-26 22:51:02.545638', '8', 'Cup Cakes', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(55, '2022-04-26 22:52:43.698024', '6', 'medicinal plants', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(56, '2022-04-26 23:32:55.964814', '11', 'Designer Cakes', 3, '', 8, 1),
(57, '2022-04-26 23:35:18.211993', '14', 'Ferrero Surprise Delight', 1, '[{\"added\": {}}]', 9, 1),
(58, '2022-04-26 23:35:30.253720', '10', 'Pull me up cake', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(59, '2022-04-28 18:02:27.347421', '8', 'Pink Elan', 2, '[{\"changed\": {\"fields\": [\"Features\", \"Details\"]}}]', 9, 1),
(60, '2022-04-28 18:04:47.397007', '6', 'Vanillicious Choco Chip Cupcakes', 2, '[{\"changed\": {\"fields\": [\"Features\", \"Details\"]}}]', 9, 1),
(61, '2022-04-28 18:07:56.012358', '12', 'Artificial Plants In Cute Hippo And Turtle Planters', 2, '[{\"changed\": {\"fields\": [\"Features\", \"Details\"]}}]', 9, 1),
(62, '2022-04-28 18:10:36.058914', '7', 'Artificial Ponytail Bonsai Plant', 2, '[{\"changed\": {\"fields\": [\"Features\", \"Details\"]}}]', 9, 1),
(63, '2022-04-28 18:11:32.451904', '7', 'Artificial Ponytail Bonsai Plant', 2, '[]', 9, 1),
(64, '2022-04-28 18:18:48.719440', '2', 'Flower Basket', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(65, '2022-04-28 18:18:59.889884', '2', 'Flower Basket', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(66, '2022-04-28 18:19:06.648164', '1', 'Flower Bouquet', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(67, '2022-04-28 18:19:15.891861', '1', 'Flower Bouquet', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(68, '2022-04-28 18:22:03.141091', '10', 'Pull me up cake', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(69, '2022-04-28 18:22:11.717370', '10', 'Pull me up cake', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(70, '2022-04-28 18:22:17.675919', '5', 'Chocolate Cake', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(71, '2022-04-28 18:22:27.249583', '5', 'Chocolate Cake', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(72, '2022-04-28 18:22:40.498753', '8', 'Cup Cakes', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(73, '2022-04-28 18:22:51.561355', '8', 'Cup Cakes', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(74, '2022-04-28 18:25:44.666578', '15', 'Love Mom Chocolate Cup Cakes', 1, '[{\"added\": {}}]', 9, 1),
(75, '2022-04-28 18:27:03.425080', '15', 'Love Mom Chocolate Cup Cakes', 3, '', 9, 1),
(76, '2022-04-29 22:33:28.272585', '4', 'tRed Velvet Roses', 2, '[{\"changed\": {\"fields\": [\"Product name\", \"Price\", \"Image1\", \"Image2\"]}}]', 9, 1),
(77, '2022-04-29 22:34:05.516206', '4', 'Red Velvet Roses', 2, '[{\"changed\": {\"fields\": [\"Product name\", \"Image1\", \"Image2\", \"Image3\"]}}]', 9, 1),
(78, '2022-04-29 22:40:34.816678', '3', 'Remedial Aloe Vera Plant', 2, '[{\"changed\": {\"fields\": [\"Product name\", \"Price\", \"Image1\", \"Image3\"]}}]', 9, 1),
(79, '2022-04-29 22:41:06.295895', '3', 'Remedial Aloe Vera Plant', 2, '[{\"changed\": {\"fields\": [\"Image1\", \"Image2\", \"Image3\"]}}]', 9, 1),
(80, '2022-04-29 22:43:02.615865', '9', 'Artificial plants', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(81, '2022-04-29 22:44:00.151736', '9', 'Artificial plants', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(82, '2022-04-29 22:54:47.999642', '4', 'Red Velvet Roses', 2, '[{\"changed\": {\"fields\": [\"Features\", \"Details\"]}}]', 9, 1),
(83, '2022-04-29 22:56:04.135229', '4', 'Red Velvet Roses', 2, '[{\"changed\": {\"fields\": [\"Details\"]}}]', 9, 1),
(84, '2022-04-29 22:57:02.205235', '4', 'Red Velvet Roses', 2, '[{\"changed\": {\"fields\": [\"Details\"]}}]', 9, 1),
(85, '2022-04-29 22:57:55.398333', '4', 'Red Velvet Roses', 2, '[{\"changed\": {\"fields\": [\"Details\"]}}]', 9, 1),
(86, '2022-04-29 23:00:41.009010', '14', 'Ferrero Surprise Delight', 2, '[{\"changed\": {\"fields\": [\"Features\", \"Details\"]}}]', 9, 1),
(87, '2022-04-29 23:01:56.067128', '13', 'Ice Blue Rose Box', 2, '[{\"changed\": {\"fields\": [\"Features\", \"Details\"]}}]', 9, 1),
(88, '2022-04-29 23:03:19.431837', '11', 'Chocolate Pinata Cake', 2, '[{\"changed\": {\"fields\": [\"Features\", \"Details\"]}}]', 9, 1),
(89, '2022-04-29 23:04:31.095039', '5', 'Peaceful White Roses Bouquet', 2, '[{\"changed\": {\"fields\": [\"Features\", \"Details\"]}}]', 9, 1),
(90, '2022-04-29 23:06:03.766196', '3', 'Remedial Aloe Vera Plant', 2, '[{\"changed\": {\"fields\": [\"Features\", \"Details\"]}}]', 9, 1),
(91, '2022-04-29 23:13:08.173856', '1', 'Merry Times', 2, '[{\"changed\": {\"fields\": [\"Product name\", \"Price\", \"Image1\", \"Image2\", \"Image3\"]}}]', 9, 1),
(92, '2022-04-29 23:14:23.865652', '1', 'Merry Times', 2, '[{\"changed\": {\"fields\": [\"Features\", \"Details\", \"Image1\", \"Image2\", \"Image3\"]}}]', 9, 1),
(93, '2022-04-29 23:16:53.132043', '2', 'Ball of Chocolaty Passion', 2, '[{\"changed\": {\"fields\": [\"Product name\", \"Price\", \"Discount percent\", \"Features\", \"Details\", \"Image1\", \"Image2\", \"Image3\"]}}]', 9, 1),
(94, '2022-04-29 23:19:37.743238', '2', 'Ball of Chocolaty Passion', 2, '[{\"changed\": {\"fields\": [\"Image1\", \"Image2\", \"Image3\"]}}]', 9, 1),
(95, '2022-04-29 23:22:58.309642', '2', 'Sinful Chocolate Truffle', 2, '[{\"changed\": {\"fields\": [\"Product name\", \"Price\", \"Features\", \"Details\", \"Image1\", \"Image2\", \"Image3\"]}}]', 9, 1),
(96, '2022-04-29 23:23:25.161799', '2', 'Sinful Chocolate Truffle', 2, '[{\"changed\": {\"fields\": [\"Image1\", \"Image2\", \"Image3\"]}}]', 9, 1),
(97, '2022-04-29 23:28:08.922177', '16', 'Healthy Tulsi Plant', 1, '[{\"added\": {}}]', 9, 1),
(98, '2022-04-29 23:28:51.062158', '16', 'Tulsi Plant', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 9, 1),
(99, '2022-05-03 19:06:39.720836', '5', 'Chocolates', 1, '[{\"added\": {}}]', 7, 1),
(100, '2022-05-03 19:12:16.901366', '12', 'Chocolate Box', 1, '[{\"added\": {}}]', 8, 1),
(101, '2022-05-03 19:14:53.904360', '17', 'I Heart You Choco Box', 1, '[{\"added\": {}}]', 9, 1),
(102, '2022-05-03 19:16:20.846920', '12', 'Chocolate Box', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(103, '2022-05-03 19:18:46.949799', '18', 'Aura Of Truffles', 1, '[{\"added\": {}}]', 9, 1),
(104, '2022-05-03 19:19:51.445988', '5', 'Peaceful White Roses Bouquet', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(105, '2022-05-03 19:19:58.777394', '18', 'Aura Of Truffles', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(106, '2022-05-03 19:23:02.144745', '13', 'Simple Chocolate', 1, '[{\"added\": {}}]', 8, 1),
(107, '2022-05-03 19:24:36.363078', '19', 'Love Designer Chocolates', 1, '[{\"added\": {}}]', 9, 1),
(108, '2022-05-03 19:27:02.022171', '20', 'Be Mine Chocolates', 1, '[{\"added\": {}}]', 9, 1),
(109, '2022-05-03 19:27:44.509674', '13', 'Simple Chocolate', 2, '[{\"changed\": {\"fields\": [\"Subcategory image\"]}}]', 8, 1),
(110, '2022-05-03 19:32:56.834382', '6', 'Jewellery', 1, '[{\"added\": {}}]', 7, 1),
(111, '2022-05-03 19:33:57.018099', '14', 'Earings', 1, '[{\"added\": {}}]', 8, 1),
(112, '2022-05-03 19:38:53.831569', '21', 'Glam Blue Stone Earrings', 1, '[{\"added\": {}}]', 9, 1),
(113, '2022-05-03 19:40:29.880870', '21', 'Glam Blue Stone Earrings', 2, '[{\"changed\": {\"fields\": [\"Image3\"]}}]', 9, 1),
(114, '2022-05-03 19:44:03.311951', '22', 'Square Stud Earrings', 1, '[{\"added\": {}}]', 9, 1),
(115, '2022-05-03 19:46:23.926983', '15', 'Rings', 1, '[{\"added\": {}}]', 8, 1),
(116, '2022-05-03 19:48:52.293033', '23', 'Red Ruby Ring', 1, '[{\"added\": {}}]', 9, 1),
(117, '2022-05-03 19:51:52.454627', '24', 'White Boho beaded Ring', 1, '[{\"added\": {}}]', 9, 1),
(118, '2022-05-06 19:11:33.371050', '21', 'Glam Blue Stone Earrings', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(119, '2022-05-06 19:11:42.947516', '5', 'Peaceful White Roses Bouquet', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(120, '2022-05-06 19:12:38.871796', '5', 'Peaceful White Roses Bouquet', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(121, '2022-05-06 19:13:12.671927', '21', 'Glam Blue Stone Earrings', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(122, '2022-05-06 19:13:56.837760', '16', 'Tulsi Plant', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(123, '2022-05-06 19:14:02.905533', '3', 'Remedial Aloe Vera Plant', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(124, '2022-05-06 19:14:57.739105', '1', 'Merry Times', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(125, '2022-05-06 19:15:10.488001', '8', 'Pink Elan', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(126, '2022-05-06 19:16:22.267169', '16', 'Tulsi Plant', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(127, '2022-05-06 19:16:32.614595', '20', 'Be Mine Chocolates', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(128, '2022-05-06 19:17:01.564039', '20', 'Be Mine Chocolates', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(129, '2022-05-06 19:17:11.173522', '23', 'Red Ruby Ring', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(130, '2022-05-06 19:17:37.435503', '23', 'Red Ruby Ring', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(131, '2022-05-06 19:17:51.173006', '22', 'Square Stud Earrings', 2, '[{\"changed\": {\"fields\": [\"Featured product\"]}}]', 9, 1),
(132, '2022-05-19 16:57:17.973319', '4', 'Red Velvet Roses Bouquet', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 9, 1),
(133, '2022-05-19 16:57:42.957939', '13', 'Ice Blue Rose Box Bouquet', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 9, 1),
(134, '2022-05-19 16:59:03.234251', '1', 'Merry Times Basket', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 9, 1),
(135, '2022-05-19 16:59:17.200212', '8', 'Pink Elan Basket', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 9, 1),
(136, '2022-05-19 17:01:41.863200', '14', 'Earrings', 2, '[{\"changed\": {\"fields\": [\"Subcategory name\"]}}]', 8, 1),
(137, '2022-05-19 17:04:02.434444', '17', 'I Heart You Chocolate Box', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 9, 1),
(138, '2022-05-19 17:04:55.054262', '18', 'Aura Of Truffles Chocolate Box', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 9, 1),
(139, '2022-05-19 17:08:31.975002', '2', 'Sinful Chocolate Truffle Cake', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 9, 1),
(140, '2022-05-19 17:09:11.892551', '14', 'Ferrero Surprise Delight Cake', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(10, 'ShopApp', 'cart'),
(7, 'ShopApp', 'category'),
(11, 'ShopApp', 'order'),
(12, 'ShopApp', 'orderdetails'),
(9, 'ShopApp', 'product'),
(8, 'ShopApp', 'subcategory');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-12 11:49:00.497838'),
(2, 'auth', '0001_initial', '2022-04-12 11:49:00.882271'),
(3, 'admin', '0001_initial', '2022-04-12 11:49:00.972302'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-12 11:49:00.980650'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-12 11:49:00.990602'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-12 11:49:01.031378'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-12 11:49:01.064024'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-12 11:49:01.079648'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-12 11:49:01.079648'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-12 11:49:01.110906'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-12 11:49:01.110906'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-12 11:49:01.117876'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-12 11:49:01.117876'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-12 11:49:01.150253'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-12 11:49:01.165846'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-12 11:49:01.181598'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-12 11:49:01.197318'),
(18, 'sessions', '0001_initial', '2022-04-12 11:49:01.213054'),
(19, 'ShopApp', '0001_initial', '2022-04-13 11:43:48.586955'),
(20, 'ShopApp', '0002_subcategory', '2022-04-14 10:55:43.138517'),
(21, 'ShopApp', '0003_product', '2022-04-16 08:47:32.639550'),
(22, 'ShopApp', '0004_product_image1_product_image2_product_image3', '2022-04-17 05:49:29.632641'),
(23, 'ShopApp', '0005_rename_discount_product_discount_percent_and_more', '2022-04-24 12:13:34.122634'),
(24, 'ShopApp', '0006_product_details_product_features', '2022-04-28 13:38:23.753970'),
(25, 'ShopApp', '0007_cart', '2022-04-30 23:19:27.064493'),
(26, 'ShopApp', '0008_cart_totalcost', '2022-05-02 23:14:45.662901'),
(27, 'ShopApp', '0009_order_orderdetails', '2022-05-08 15:53:25.766828');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('01ho1lszewlymvjhqlmvoy4mh0s3d4ux', '.eJxVjMsOwiAUBf-FtSFCebp07zeQ-6BSNZCUdmX8d0PShW7PzJy3SLBvJe09r2lhcRFKnH43BHrmOgA_oN6bpFa3dUE5FHnQLm-N8-t6uH8HBXoZNU80RTCKtMFAgOSzA4z-TJpwds5AjJqRrUcVAimcWfkYLFpAyFp8vhCrORw:1np9VJ:QPhcRPVAMC1tbYc8espXyAckMirKBRIpPopUL06spKE', '2022-05-26 19:39:21.216447'),
('0e16uei4hk6wya3oklwkaormoif07ouf', '.eJxVjMsOwiAUBf-FtSFCebp07zeQ-6BSNZCUdmX8d0PShW7PzJy3SLBvJe09r2lhcRFKnH43BHrmOgA_oN6bpFa3dUE5FHnQLm-N8-t6uH8HBXoZNU80RTCKtMFAgOSzA4z-TJpwds5AjJqRrUcVAimcWfkYLFpAyFp8vhCrORw:1noKd3:rRYoehqtnqxPhFGkl5rcKiD_vLy7kC0573Zf_QN8TU0', '2022-05-24 13:19:57.062435'),
('0qknqapskiu2l6fpxdf6eey977usvax4', 'e30:1nnFSf:mO_X1cuFUXQYQ6QzFDCddTfUxF9nBbXNed94XIbqYw8', '2022-05-21 13:36:45.054189'),
('3k9n2rjrswg96kqq8i6l1u668idn7tk7', '.eJxVjEEOwiAURO_C2hDLbwu4dGs8Q_OBj8UqJEBXxrtbki7scmbevA-bcK3ztBbKU3DswiQ7_XcG7UKxDe6J8ZG4TbHmYHhD-L4Wfk-OXtedPQhmLHN7WysEKRBI2hIMXo6OlAerDYihA63VqIjoDMb3AL2SRo4eTAeOEB1u0qaL-KbNdsNcw7J1x_z9AcrHRFE:1nnFQL:2ZAe_ByRMMs0McvWvbvX3dw9uvqz6bhrROZBCim_gLo', '2022-05-21 13:34:21.016448'),
('jzdqxv6zwu6ki46s6v275uro6u25ury5', 'e30:1nla4N:RzEMsReRAkNLM2yrdnqonQ8R6x9R-LvzN3IJuJSUsKw', '2022-05-16 23:12:47.812121'),
('pc4838fmikq6xl3pevmdl883pa3vvzli', '.eJxdjMESgiAURf-FdeMAokLL9n2D84AnaoolWE1N_x42bmx7zr3nTUJnyZHkUTYOOvd4lvkgh3FkbmaL6a-vWywCd-RAalhiWy8B5_p3YWwPNZgL-tXYHrybMjP5OHc6WyfZZkN2niwOp227C7QQ2vRuhNAyNxVTuYSSU0kt0oYqC0kgCIqF5abQ2oBUSpVamKJSgjLDS44oUnTNeRgx1e7gQ9tdINF_8vkCcMpTYg:1nsNx0:EK9dcuAbTafPoCMqGHtf3J02j_uu8_gTOmX-Z-pgsHg', '2022-06-04 17:41:18.887365'),
('ph8jdthltys5acllehpjv7wih6t3bire', '.eJxVjMsOwiAUBf-FtSFCebp07zeQ-6BSNZCUdmX8d0PShW7PzJy3SLBvJe09r2lhcRFKnH43BHrmOgA_oN6bpFa3dUE5FHnQLm-N8-t6uH8HBXoZNU80RTCKtMFAgOSzA4z-TJpwds5AjJqRrUcVAimcWfkYLFpAyFp8vhCrORw:1nreIV:gJRwg7gMnsWhvEGAngICAcFZjIELqqvxCrKWcWgseQI', '2022-06-02 16:56:27.946843'),
('tlvsixkibfoqntfkdv2eaecw3m3qbooz', '.eJxVjMsOwiAUBf-FtSFCebp07zeQ-6BSNZCUdmX8d0PShW7PzJy3SLBvJe09r2lhcRFKnH43BHrmOgA_oN6bpFa3dUE5FHnQLm-N8-t6uH8HBXoZNU80RTCKtMFAgOSzA4z-TJpwds5AjJqRrUcVAimcWfkYLFpAyFp8vhCrORw:1nrOv6:lsX3aplAbybNr8fORaOODcied9mafrEVzK_KFDeVc9o', '2022-06-02 00:31:16.869245'),
('w7o5zzhnx3drdycoiqkbkfbw1k23mwtj', 'e30:1nla4y:XIlDZVNW0Qdb9EQNF70AxhGQ9qiwIkj7KRrYBo82sHQ', '2022-05-16 23:13:24.413792');

-- --------------------------------------------------------

--
-- Table structure for table `shopapp_cart`
--

CREATE TABLE `shopapp_cart` (
  `id` bigint(20) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sessionid` varchar(200) NOT NULL,
  `productid_id` bigint(20) NOT NULL,
  `totalcost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopapp_cart`
--

INSERT INTO `shopapp_cart` (`id`, `price`, `qty`, `sessionid`, `productid_id`, `totalcost`) VALUES
(1, 1330, 2, 'sh490szdw4rctoi8jonkzvykexsjj4dw', 12, 2660),
(2, 1215, 1, 'sh490szdw4rctoi8jonkzvykexsjj4dw', 1, 1215),
(4, 1215, 2, 'sh490szdw4rctoi8jonkzvykexsjj4dw', 1, 2430),
(5, 1140, 2, 'sh490szdw4rctoi8jonkzvykexsjj4dw', 8, 2280),
(22, 760, 2, '7k6kntepq2chv5s805ix3jjctxm6a401', 20, 1520),
(23, 1440, 2, '57auu70tu94lp8i1uvh3j32iqi4moueq', 11, 2880),
(25, 522, 1, 'd7y33fjbxo1k1om2pcqxek0n3awuyn46', 23, 522),
(30, 450, 1, 'uq7nqpjt1cy2h7yc5l88s4mlzmnsipnf', 22, 450);

-- --------------------------------------------------------

--
-- Table structure for table `shopapp_category`
--

CREATE TABLE `shopapp_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopapp_category`
--

INSERT INTO `shopapp_category` (`id`, `category_name`, `category_image`) VALUES
(1, 'Flowers', 'categorypics/bou.jpg'),
(2, 'Cakes', 'categorypics/cake.jpg'),
(3, 'plants', 'categorypics/plant_S3tffF6.webp'),
(5, 'Chocolates', 'categorypics/chocolate.jpg'),
(6, 'Jewellery', 'categorypics/jewellery.webp');

-- --------------------------------------------------------

--
-- Table structure for table `shopapp_order`
--

CREATE TABLE `shopapp_order` (
  `id` bigint(20) NOT NULL,
  `person_name` varchar(400) NOT NULL,
  `address` longtext NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `payment_mode` varchar(500) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `order_status` varchar(10) NOT NULL,
  `username_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopapp_order`
--

INSERT INTO `shopapp_order` (`id`, `person_name`, `address`, `phone`, `email`, `grand_total`, `payment_mode`, `order_date`, `order_status`, `username_id`) VALUES
(1, 'krish arora', 'jalandhar', 4455768, 'arora123@gmail.com', 1527, 'cod', '2022-05-08 16:09:39.997124', 'received', 7),
(2, 'aarti verma', 'Delhi', 88916600, '00@gmail.com', 2680, 'paytm_gpay', '2022-05-08 23:25:38.410080', 'received', 8),
(3, 'Parika', 'New Delhi', 897002177, '123arora@gmail.com', 1440, 'cod', '2022-05-09 18:33:56.419850', 'received', 9),
(4, 'Shallu Walia', 'jalandhar', 4455768, 'walia@gmail.com', 3420, 'paytm_gpay', '2022-05-09 19:31:32.040536', 'received', 9),
(5, 'rahul', 'noida', 567890112, 'arora123@gmail.com', 3234, 'cod', '2022-05-09 19:39:23.250704', 'received', 8),
(6, 'vanshika walia', '560 Rishi nagar,jaladhar', 3435456, '123walia@gmail.com', 1660, 'cod', '2022-05-21 17:43:20.435853', 'received', 11);

-- --------------------------------------------------------

--
-- Table structure for table `shopapp_orderdetails`
--

CREATE TABLE `shopapp_orderdetails` (
  `id` bigint(20) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `totalcost` int(11) NOT NULL,
  `orderno_id` bigint(20) NOT NULL,
  `productid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopapp_orderdetails`
--

INSERT INTO `shopapp_orderdetails` (`id`, `price`, `qty`, `totalcost`, `orderno_id`, `productid_id`) VALUES
(1, 720, 1, 720, 1, 2),
(2, 807, 1, 807, 1, 21),
(3, 1350, 1, 1350, 2, 7),
(4, 665, 2, 1330, 2, 6),
(5, 1440, 1, 1440, 3, 18),
(6, 1140, 3, 3420, 4, 8),
(7, 807, 2, 1614, 5, 21),
(8, 810, 2, 1620, 5, 5),
(9, 450, 2, 900, 6, 22),
(10, 760, 1, 760, 6, 20);

-- --------------------------------------------------------

--
-- Table structure for table `shopapp_product`
--

CREATE TABLE `shopapp_product` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `price` int(11) NOT NULL,
  `discount_percent` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `Image1` varchar(100) DEFAULT NULL,
  `Image2` varchar(100) DEFAULT NULL,
  `Image3` varchar(100) DEFAULT NULL,
  `creation_date` datetime(6) NOT NULL,
  `featured_product` tinyint(1) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `details` longtext DEFAULT NULL,
  `features` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopapp_product`
--

INSERT INTO `shopapp_product` (`id`, `product_name`, `price`, `discount_percent`, `category_id`, `subcategory_id`, `Image1`, `Image2`, `Image3`, `creation_date`, `featured_product`, `modified_date`, `details`, `features`) VALUES
(1, 'Merry Times Basket', 1350, 10, 1, 2, 'productpics/flower_basket_zIRnvbN.webp', 'productpics/flower1.webp', 'productpics/flower2.webp', '2022-04-24 12:13:34.066950', 0, '2022-05-19 16:59:03.234251', '<p>Make merry times even merrier with this picturesque arrangement of 8 pink carnations, 8 white roses and 4 orchids artistically put-together in an oval basket. Green foliage adds another shade of life to it. Present this basket full of love and compassion to the one who brings a happy moment to you.</p>', '<h3><em><strong>Product Contains</strong></em></h3>\r\n\r\n<ul>\r\n	<li>8 Pink Carnations</li>\r\n	<li>8 White Roses</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>4 Purple Orchids</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(2, 'Sinful Chocolate Truffle Cake', 800, 10, 2, 5, 'productpics/Chocolate_cake_CWTT3Ug.webp', 'productpics/chocolate_cake1_xUqA0YY.webp', 'productpics/chocolate_cake_2.webp', '2022-04-24 12:13:34.066950', 0, '2022-05-19 17:08:31.975002', '<p>&nbsp;This Chocolate Truffle is sure to take over the mind and heart of every dessert lover for its fine flavours and unmatched sophisticated beauty. Perfect for birthday, anniversary and all happy celebrations.</p>', '<h3>Caring Tips</h3>\r\n\r\n<ul>\r\n	<li>&nbsp;While receiving, do not squeeze the sides of the box.</li>\r\n	<li>&nbsp;Keep the box upright on the table.</li>\r\n	<li>&nbsp;Keep it away from direct sunlight.</li>\r\n	<li>&nbsp;Store it in a cool place.</li>\r\n	<li>&nbsp;Cover the leftover cake, then refrigerate.</li>\r\n	<li>&nbsp;The cake should be consumed within 24 hours.</li>\r\n</ul>'),
(3, 'Remedial Aloe Vera Plant', 700, 10, 3, 6, 'productpics/plant_D8NGRtm.webp', 'productpics/plant1_6LySN42.webp', 'productpics/plant2_tTzNXjh.webp', '2022-04-24 12:13:34.066950', 0, '2022-05-06 19:14:02.903528', '<p>&nbsp;These days, aloe has an entire industry behind it. Its juices are used in cosmetics and personal-care products such as moisturizers, soap, shaving cream, and suntan lotion. The aloe vera product that probably comes to mind most easily is the bright green gel that&#39;s stocked on drugstore shelves.&nbsp;</p>', '<h3><em><strong>Product Contains</strong></em></h3>\r\n\r\n<ul>\r\n	<li>Plant Type: Medicinal</li>\r\n	<li>Plant Height: 10 Inches Approx</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(4, 'Red Velvet Roses Bouquet', 750, 5, 1, 1, 'productpics/bouquet_w68NXcj.webp', 'productpics/bouquet1.webp', 'productpics/bouquet2.webp', '2022-04-24 12:13:34.066950', 0, '2022-05-19 16:57:17.973319', '<div>What would be a Rose Day without a Rose? Empty, just like you would be without your partner. So, to celebrate your love this Rose Day, choose this unique Rose Day Special bouquet, which is arranged so beautifully that would surely make your love-story more worthy.</div>', '<h3><strong>Caring Tips</strong></h3>\r\n\r\n<ul>\r\n	<li>&nbsp;Start by removing the bouquet wrapper.</li>\r\n	<li>&nbsp;Cut the stems by one or two inches from the bottom to ensure better water intake.</li>\r\n	<li>&nbsp;Choose a vase and fill it with water.</li>\r\n	<li>&nbsp;Remove the leaves below the water level to prevent bacterial growth.</li>\r\n	<li>&nbsp;Add two tablespoon of Lemon Juice and sugar into the water.</li>\r\n	<li>&nbsp;Make sure to place the vase in indirect sunlight.</li>\r\n</ul>'),
(5, 'Peaceful White Roses Bouquet', 900, 10, 1, 1, 'productpics/bouquet.webp', 'productpics/bouquet-1.webp', 'productpics/bouquet-2.webp', '2022-04-24 17:56:09.575000', 0, '2022-05-06 19:12:38.868818', '<p>This bunch consists of 12 White roses. This divine beauty is a symbol of purity of heart. This is an ideal way to project. White roses are the flower of light, they are also called the bride&#39;s flowers in some traditions.</p>', '<h3>Product Contains</h3>\r\n\r\n<ul>\r\n	<li>Bunch of 12 White roses in white paper packing</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(6, 'Vanillicious Choco Chip Cupcakes', 700, 5, 2, 8, 'productpics/cup_cakes.webp', 'productpics/cup_cake_1.webp', 'productpics/cup_cake_2.webp', '2022-04-24 17:59:02.274185', 1, '2022-04-28 18:04:47.396019', '<p>Here is the secret of leading a happy life - this 6 piece choco vanilla cupcakes! While some like to pamper themselves with these yummy treats as part of their #selfcare ritual, others like to treat others with these dreamy delights to make them feel special. With chocolate and vanilla coming together in a cake, you are ready to conquer the world!</p>', '<h3><strong>Caring Tips</strong></h3>\r\n\r\n<ul>\r\n	<li>&nbsp;While receiving, do not squeeze the sides of the box.</li>\r\n	<li>&nbsp;Keep the box upright on the table.</li>\r\n	<li>&nbsp;Keep it away from direct sunlight.</li>\r\n	<li>&nbsp;Store it in a cool place.</li>\r\n	<li>&nbsp;Cover the leftover cake, then refrigerate.</li>\r\n	<li>&nbsp;The cake should be consumed within 24 hours.</li>\r\n</ul>'),
(7, 'Artificial Ponytail Bonsai Plant', 1500, 10, 3, 9, 'productpics/plant_S3tffF6.webp', 'productpics/plant_1.webp', 'productpics/plant_2.webp', '2022-04-24 18:02:06.857527', 0, '2022-04-28 18:11:32.449910', '<h3>Decorating the home interiors with artificial plants gives it so beautiful look. The artificial Ponytail Bonsai plant potted in a black Bonsai tray is the perfect plant for your home decor. It is also great for gifting purpose.</h3>', '<h3><u><em><strong>Product Contains</strong></em></u></h3>\r\n\r\n<ul>\r\n	<li>Plant Height: 3 Inches approx</li>\r\n	<li>Plant Location: Indoor</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Vase Name: Bonsai Tray</li>\r\n	<li>Vase Height: 3 Inches approx</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(8, 'Pink Elan Basket', 1200, 5, 1, 2, 'productpics/Flower_Basket.webp', 'productpics/flower_basket_1.webp', 'productpics/flower_basket_2.webp', '2022-04-24 18:11:08.591158', 1, '2022-05-19 16:59:17.175536', '<p>This is an arrangement of 25 Pink roses with aspidistra leaves and green fillers beautifully arranged in a basket. This arrangement of pink beauties is full of style statement and poise. Use it to say that you care in style !!</p>', '<h3><strong>Caring Tips</strong></h3>\r\n\r\n<ul>\r\n	<li>&nbsp;Start by removing the bouquet wrapper.</li>\r\n	<li>&nbsp;Cut the stems by one or two inches from the bottom to ensure better water intake.</li>\r\n	<li>&nbsp;Choose a vase and fill it with water.</li>\r\n	<li>&nbsp;Remove the leaves below the water level to prevent bacterial growth.</li>\r\n	<li>&nbsp;Add two tablespoon of Lemon Juice and sugar into the water.</li>\r\n	<li>&nbsp;Make sure to place the vase in indirect sunlight.</li>\r\n</ul>'),
(11, 'Chocolate Pinata Cake', 1600, 10, 2, 5, 'productpics/Chocolate_cake.webp', 'productpics/chocolate_cake1.webp', 'productpics/chocolate_cake2.webp', '2022-04-25 22:47:48.845332', 0, '2022-04-29 23:03:19.429326', '<p>The chocolate pinata cake is an art-like and delicious centrepiece that can be perfectly placed on any home or party table. A chocolate pinata cake is a perfect idea for any party! So enjoy the day with this party favourite chocolate pinata cake. It is surely going to steal the show!</p>', '<h3>Product Contains</h3>\r\n\r\n<ul>\r\n	<li>Chocolate Pinata Cake</li>\r\n	<li>1 Kitkats (12gm each)</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(12, 'Artificial Plants In Cute Hippo And Turtle Planters', 1400, 5, 3, 9, 'productpics/plant_ZnC0DCV.webp', 'productpics/plant1.webp', 'productpics/plant2.webp', '2022-04-25 23:00:40.728381', 0, '2022-04-28 18:07:56.010119', '<p>This pair of little blue hippopotamus planters and a cute little grey turtle planter with beautiful green artificial succulents is the perfect gift to give to your loved ones at every occasion. Add a touch of greenery and elegance to your interiors with this adorable planters set.&nbsp;</p>', '<h3><u><em>Product Contains</em></u></h3>\r\n\r\n<ul>\r\n	<li>Plant Height:3 Inches approx</li>\r\n	<li>Plant Location:Indoors</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Vase Name:AnimaL Vase</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(13, 'Ice Blue Rose Box Bouquet', 1350, 12, 1, 1, 'productpics/FA-8-A.webp', 'productpics/FA-8-B.webp', 'productpics/FA-8-C.webp', '2022-04-25 23:04:19.409073', 0, '2022-05-19 16:57:42.949867', '<p>Ice-blue roses is a bewitching beauty to behold. A blue box with hand-arranged ice-blue swirling roses coupled with baby breath fillers and pristine sitting on each rose, this flower box comes straight from the glass gardens of Winterfall.</p>', '<h3>Product Contains</h3>\r\n\r\n<ul>\r\n	<li>Arrangement of 16 White Roses</li>\r\n	<li>Floweraura Blue Box</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(14, 'Ferrero Surprise Delight Cake', 1650, 10, 2, 10, 'productpics/cake_AyTJXdZ.webp', 'productpics/cake1_UfqeSRI.webp', 'productpics/cake2.webp', '2022-04-26 23:35:18.210993', 0, '2022-05-19 17:09:11.892551', '<p>Get this heavenly delicious signature cake topped with crunchy Ferrero Rocher balls and molten creamy decadent chocolate that rolls over as soon as you &lsquo;pull the cake up&rsquo;! Now celebrate every memorable occasion with this scrumptious delight!</p>', '<h3>Product Contains</h3>\r\n\r\n<ul>\r\n	<li>Round Shape Ferrero Surprise Delight Pull Me Up Cake</li>\r\n	<li>Weight: 1Kg</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n</ul>'),
(16, 'Tulsi Plant', 650, 10, 3, 6, 'productpics/plant_B4uayWF.webp', 'productpics/plant1_j9FwtTj.webp', 'productpics/plant2_jdeB3VK.webp', '2022-04-29 23:28:08.921680', 0, '2022-05-06 19:16:22.265176', '<p>Tulsi has a positive effect not only on the body, but also on the thoughts and positive vibes of the mind. Tulsi has the unique quality to kill germs. Tulsi improves the efficiency of all the organs of the body in a natural way and thus helps in the cure of diseases.</p>', '<h3>Product Contains</h3>\r\n\r\n<ul>\r\n	<li>Plant Type: Medicinal Plant</li>\r\n	<li>Plant Height: 8 Inches Approx</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Plant Location: Outdoors</li>\r\n	<li>Vase Name: Plastic Vase</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Vase Height: 4 Inches</li>\r\n	<li>Packaging: Jute and Rassi</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(17, 'I Heart You Chocolate Box', 1000, 5, 5, 12, 'productpics/chocolate_box.webp', 'productpics/chocolate_box1.webp', 'productpics/choclate_box2.webp', '2022-05-03 19:14:53.904360', 0, '2022-05-19 17:04:02.426512', '<p>From your heart to theirs, gift this &#39;I heart you&#39; chocolate box to your beloved in the upcoming season of love. It comes in a beautiful love-filled box to make it extra special. Melt their heart by sending it right at their doorsteps. Place your order right away!</p>', '<h3><em><strong>Product Contains</strong></em></h3>\r\n\r\n<ul>\r\n	<li>25 Handmade Chocolates In Square Box</li>\r\n	<li>Box Size: 8x8 Inches</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(18, 'Aura Of Truffles Chocolate Box', 1600, 10, 5, 12, 'productpics/c_b.webp', 'productpics/c_b_1.webp', 'productpics/c_b_2.webp', '2022-05-03 19:18:46.949799', 1, '2022-05-19 17:04:55.046282', '<p>Gifting is a very delicate gesture as one needs to think a lot before making a pick. You can now easily win your dear one&#39;s heart by presenting a box full of chocolate truffle pieces. It contains eight different flavours including milk chocolate, hazelnut, and dark chocolate.</p>', '<h3><em><strong>Product Contains</strong></em></h3>\r\n\r\n<ul>\r\n	<li>Chocolate Truffles Gift Hamper</li>\r\n	<li>Weight:185g/li&gt;</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(19, 'Love Designer Chocolates', 560, 10, 5, 13, 'productpics/choco.webp', 'productpics/choco_1.webp', 'productpics/choco_2.webp', '2022-05-03 19:24:36.363078', 0, '2022-05-03 19:24:36.363078', '<p>Indulge your sweet tooth with these designer Love Chocolates. Whether it&#39;s for your sweetie, your best friend or a neighbor who&#39;s been good to you, these designer Chocolates make gift-giving easy. These are such a savior with their delicious tastes and flavors.</p>', '<h3><em><strong>Product Contains</strong></em></h3>\r\n\r\n<ul>\r\n	<li>Two Cadbury Dairy Milk Fruit &amp; Nut Chocolate 36gm Each</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(20, 'Be Mine Chocolates', 800, 5, 5, 13, 'productpics/1.webp', 'productpics/2.webp', 'productpics/4.webp', '2022-05-03 19:27:02.022171', 0, '2022-05-06 19:17:01.563050', '<p>Celebrate this Valentine&#39;s Day with all the sweetness inside of you as you get your hands on this chocolate duo. The covers of these chocolates say Be Mine which is a beautiful message for the love of your life. The chocolates are enriched with deliciousness.</p>', '<h3><em><strong>Product Contains</strong></em></h3>\r\n\r\n<ul>\r\n	<li>Two Cadbury Temptations Almond Treat Permium Chocolate 72gm Each</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(21, 'Glam Blue Stone Earrings', 850, 5, 6, 14, 'productpics/earings_final.webp', 'productpics/earings1.webp', 'productpics/ear.webp', '2022-05-03 19:38:53.831569', 0, '2022-05-06 19:13:12.670930', '<p>Mark your presence in your beloved lady&#39;s life by gifting this stunning earring piece on Valentine&#39;s day. As women are fond of jewellery, gifting this earring with bluestone will make her feel special. This pair can go with any outfit, from traditional to western - this earring will add glitters to that attire.</p>', '<h3><em><strong>Product Contains</strong></em></h3>\r\n\r\n<ul>\r\n	<li>Set of Necklace &amp; Earting</li>\r\n	<li>Material:Alloy</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Colour:Blue</li>\r\n	<li>Size:Length- 44cm(adjustable) Pendent-2.5x2.5cm Earring-4x1cm</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(22, 'Square Stud Earrings', 500, 10, 6, 14, 'productpics/12.webp', 'productpics/13.webp', 'productpics/14.webp', '2022-05-03 19:44:03.311951', 1, '2022-05-06 19:17:51.170509', '<p>Stud earrings are a fashion trend these days as it fits in with any outfit be it western or traditional. Get your hands on these classy and stylish square stud earrings for yourself or any women you know and gift it on any special occasion. A perfect gift for any perfect occasion.</p>', '<h3><em><strong>Product Contains</strong></em></h3>\r\n\r\n<ul>\r\n	<li>Square Stud Earrings</li>\r\n	<li>Material:Zinc Alloy</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Size:Length:2.5cm&amp;Width:2cm</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(23, 'Red Ruby Ring', 550, 5, 6, 15, 'productpics/23_eXgn8yE.webp', 'productpics/24.webp', 'productpics/25.webp', '2022-05-03 19:48:52.293033', 0, '2022-05-06 19:17:37.433501', '<p>When it comes to expressing your emotions to someone special, there is no doubt that a ring is a perfect gift. Choose this pretty red ruby ring to express your love to your beloved and make it a gift to remember.&nbsp;</p>', '<h3><em><strong>Product Contains</strong></em></h3>\r\n\r\n<ul>\r\n	<li>Red Ruby Ring</li>\r\n	<li>Material:Alloy</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Colour:Red</li>\r\n	<li>Size:17mm</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>'),
(24, 'White Boho beaded Ring', 600, 10, 6, 15, 'productpics/0.webp', 'productpics/00.webp', 'productpics/000.webp', '2022-05-03 19:51:52.450801', 0, '2022-05-03 19:51:52.450801', '<p>Create your own unique look with this Beautiful White Boho beaded handmade ring. For all occasions especially Valentine&#39;s Day. The ring is handmade with lots of attention to detail, and has a handmade beaded vintage look.</p>', '<h3><em><strong>Product Contains</strong></em></h3>\r\n\r\n<ul>\r\n	<li>Handmade Ring CFR</li>\r\n	<li>Material:Zinc Alloy</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Size:Length:6cm &amp; Width:6cm</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `shopapp_subcategory`
--

CREATE TABLE `shopapp_subcategory` (
  `id` bigint(20) NOT NULL,
  `subcategory_name` varchar(50) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopapp_subcategory`
--

INSERT INTO `shopapp_subcategory` (`id`, `subcategory_name`, `category_id`, `subcategory_image`) VALUES
(1, 'Flower Bouquet', 1, 'subcategorypics/flower_bouquet.webp'),
(2, 'Flower Basket', 1, 'subcategorypics/flower_basket.webp'),
(5, 'Chocolate Cake', 2, 'subcategorypics/Chocolate_cake.jpg'),
(6, 'medicinal plants', 3, 'subcategorypics/plant.webp'),
(8, 'Cup Cakes', 2, 'subcategorypics/cup_cakes_BqNlcDj.webp'),
(9, 'Artificial plants', 3, 'subcategorypics/artificial_plant.webp'),
(10, 'Pull me up cake', 2, 'subcategorypics/pull_me_cake.webp'),
(12, 'Chocolate Box', 5, 'subcategorypics/3.webp'),
(13, 'Simple Chocolate', 5, 'subcategorypics/final.webp'),
(14, 'Earrings', 6, 'subcategorypics/earigs.webp'),
(15, 'Rings', 6, 'subcategorypics/ring.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `shopapp_cart`
--
ALTER TABLE `shopapp_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ShopApp_cart_productid_id_a024ced4_fk_ShopApp_product_id` (`productid_id`);

--
-- Indexes for table `shopapp_category`
--
ALTER TABLE `shopapp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopapp_order`
--
ALTER TABLE `shopapp_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ShopApp_order_username_id_848ff8c1_fk_auth_user_id` (`username_id`);

--
-- Indexes for table `shopapp_orderdetails`
--
ALTER TABLE `shopapp_orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ShopApp_orderdetails_orderno_id_dc453f67_fk_ShopApp_order_id` (`orderno_id`),
  ADD KEY `ShopApp_orderdetails_productid_id_95cc5ee2_fk_ShopApp_product_id` (`productid_id`);

--
-- Indexes for table `shopapp_product`
--
ALTER TABLE `shopapp_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ShopApp_product_category_id_2dbaf2ca_fk_ShopApp_category_id` (`category_id`),
  ADD KEY `ShopApp_product_subcategory_id_2b84160b_fk_ShopApp_s` (`subcategory_id`);

--
-- Indexes for table `shopapp_subcategory`
--
ALTER TABLE `shopapp_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ShopApp_subcategory_category_id_d5bb2ed7_fk_ShopApp_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `shopapp_cart`
--
ALTER TABLE `shopapp_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `shopapp_category`
--
ALTER TABLE `shopapp_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shopapp_order`
--
ALTER TABLE `shopapp_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shopapp_orderdetails`
--
ALTER TABLE `shopapp_orderdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shopapp_product`
--
ALTER TABLE `shopapp_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `shopapp_subcategory`
--
ALTER TABLE `shopapp_subcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shopapp_cart`
--
ALTER TABLE `shopapp_cart`
  ADD CONSTRAINT `ShopApp_cart_productid_id_a024ced4_fk_ShopApp_product_id` FOREIGN KEY (`productid_id`) REFERENCES `shopapp_product` (`id`);

--
-- Constraints for table `shopapp_order`
--
ALTER TABLE `shopapp_order`
  ADD CONSTRAINT `ShopApp_order_username_id_848ff8c1_fk_auth_user_id` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shopapp_orderdetails`
--
ALTER TABLE `shopapp_orderdetails`
  ADD CONSTRAINT `ShopApp_orderdetails_orderno_id_dc453f67_fk_ShopApp_order_id` FOREIGN KEY (`orderno_id`) REFERENCES `shopapp_order` (`id`),
  ADD CONSTRAINT `ShopApp_orderdetails_productid_id_95cc5ee2_fk_ShopApp_product_id` FOREIGN KEY (`productid_id`) REFERENCES `shopapp_product` (`id`);

--
-- Constraints for table `shopapp_product`
--
ALTER TABLE `shopapp_product`
  ADD CONSTRAINT `ShopApp_product_category_id_2dbaf2ca_fk_ShopApp_category_id` FOREIGN KEY (`category_id`) REFERENCES `shopapp_category` (`id`),
  ADD CONSTRAINT `ShopApp_product_subcategory_id_2b84160b_fk_ShopApp_s` FOREIGN KEY (`subcategory_id`) REFERENCES `shopapp_subcategory` (`id`);

--
-- Constraints for table `shopapp_subcategory`
--
ALTER TABLE `shopapp_subcategory`
  ADD CONSTRAINT `ShopApp_subcategory_category_id_d5bb2ed7_fk_ShopApp_category_id` FOREIGN KEY (`category_id`) REFERENCES `shopapp_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
