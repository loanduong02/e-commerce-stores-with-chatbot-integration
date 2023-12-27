-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 03:55 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbeauty_db`
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
(25, 'Can add Danh mục sản phẩm', 7, 'add_danhmucsanpham'),
(26, 'Can change Danh mục sản phẩm', 7, 'change_danhmucsanpham'),
(27, 'Can delete Danh mục sản phẩm', 7, 'delete_danhmucsanpham'),
(28, 'Can view Danh mục sản phẩm', 7, 'view_danhmucsanpham'),
(29, 'Can add Loại sản phẩm', 8, 'add_loaisanpham'),
(30, 'Can change Loại sản phẩm', 8, 'change_loaisanpham'),
(31, 'Can delete Loại sản phẩm', 8, 'delete_loaisanpham'),
(32, 'Can view Loại sản phẩm', 8, 'view_loaisanpham'),
(33, 'Can add Sản phẩm', 9, 'add_sanpham'),
(34, 'Can change Sản phẩm', 9, 'change_sanpham'),
(35, 'Can delete Sản phẩm', 9, 'delete_sanpham'),
(36, 'Can view Sản phẩm', 9, 'view_sanpham'),
(37, 'Can add Khách hàng', 10, 'add_khachhang'),
(38, 'Can change Khách hàng', 10, 'change_khachhang'),
(39, 'Can delete Khách hàng', 10, 'delete_khachhang'),
(40, 'Can view Khách hàng', 10, 'view_khachhang'),
(41, 'Can add cart', 11, 'add_cart'),
(42, 'Can change cart', 11, 'change_cart'),
(43, 'Can delete cart', 11, 'delete_cart'),
(44, 'Can view cart', 11, 'view_cart'),
(45, 'Can add order placed', 12, 'add_orderplaced'),
(46, 'Can change order placed', 12, 'change_orderplaced'),
(47, 'Can delete order placed', 12, 'delete_orderplaced'),
(48, 'Can view order placed', 12, 'view_orderplaced'),
(49, 'Can add Nhà cung cấp', 13, 'add_supplier'),
(50, 'Can change Nhà cung cấp', 13, 'change_supplier'),
(51, 'Can delete Nhà cung cấp', 13, 'delete_supplier'),
(52, 'Can view Nhà cung cấp', 13, 'view_supplier'),
(53, 'Can add Lô nhập', 14, 'add_lonhhap'),
(54, 'Can change Lô nhập', 14, 'change_lonhhap'),
(55, 'Can delete Lô nhập', 14, 'delete_lonhhap'),
(56, 'Can view Lô nhập', 14, 'view_lonhhap'),
(57, 'Can add Thông tin lô nhập', 15, 'add_ctlonhap'),
(58, 'Can change Thông tin lô nhập', 15, 'change_ctlonhap'),
(59, 'Can delete Thông tin lô nhập', 15, 'delete_ctlonhap'),
(60, 'Can view Thông tin lô nhập', 15, 'view_ctlonhap'),
(61, 'Can add Loại bài viết', 16, 'add_loaibaiviet'),
(62, 'Can change Loại bài viết', 16, 'change_loaibaiviet'),
(63, 'Can delete Loại bài viết', 16, 'delete_loaibaiviet'),
(64, 'Can view Loại bài viết', 16, 'view_loaibaiviet'),
(65, 'Can add Bài viết', 17, 'add_baiviet'),
(66, 'Can change Bài viết', 17, 'change_baiviet'),
(67, 'Can delete Bài viết', 17, 'delete_baiviet'),
(68, 'Can view Bài viết', 17, 'view_baiviet');

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
(1, 'pbkdf2_sha256$260000$MF3X1I23xZdaKiiEYum3y4$p1Uyhm0QyWToGTtiiQAPmhiQRtMcpCHS10LNP9qxYMI=', '2023-12-05 18:02:00.185405', 1, 'admin2', '', '', 'duonganhloan2001@gmail.com', 1, 1, '2023-10-31 10:34:10.509111'),
(6, 'pbkdf2_sha256$260000$HgwdEy0UHEFmqPKow23Vt9$HpZ5xgbN4FnC0BOVe/Kk0lpztSPi9VT5PeHV2FaZxRI=', '2023-12-05 17:19:08.963468', 0, 'LoanDuong', '', '', 'duonganhloan0227@gmail.com', 0, 1, '2023-11-30 08:52:23.160143');

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
(1, '2023-10-31 10:35:13.381008', '1', 'Chăm sóc da', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-10-31 10:35:19.309150', '2', 'Chăm sóc cơ thể', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-10-31 10:35:25.114947', '3', 'Chăm sóc tóc', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-10-31 10:35:32.068148', '4', 'Trang điểm', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-10-31 10:36:18.566013', '1', 'Kem chống nắng', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-10-31 10:36:38.582240', '2', 'Son môi', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-10-31 10:37:15.070773', '3', 'Trang điểm mặt', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-10-31 10:37:28.714328', '4', 'Kem dưỡng', 1, '[{\"added\": {}}]', 8, 1),
(9, '2023-10-31 10:37:40.643630', '5', 'Dầu gội', 1, '[{\"added\": {}}]', 8, 1),
(10, '2023-10-31 10:38:15.485659', '6', 'Dưỡng thể', 1, '[{\"added\": {}}]', 8, 1),
(11, '2023-10-31 10:38:41.375518', '7', 'Dầu xả', 1, '[{\"added\": {}}]', 8, 1),
(12, '2023-10-31 10:39:28.480272', '1', 'Kem chống nắng', 2, '[{\"changed\": {\"fields\": [\"LspThumb\"]}}]', 8, 1),
(13, '2023-10-31 10:49:48.175766', '1', 'Kem chống nắng', 2, '[{\"changed\": {\"fields\": [\"LspThumb\"]}}]', 8, 1),
(14, '2023-10-31 10:50:43.169465', '5', 'Dầu gội', 3, '', 8, 1),
(15, '2023-10-31 10:50:43.173467', '7', 'Dầu xả', 3, '', 8, 1),
(16, '2023-10-31 10:50:43.176464', '6', 'Dưỡng thể', 3, '', 8, 1),
(17, '2023-10-31 10:50:43.178470', '1', 'Kem chống nắng', 3, '', 8, 1),
(18, '2023-10-31 10:50:43.180465', '4', 'Kem dưỡng', 3, '', 8, 1),
(19, '2023-10-31 10:50:43.182464', '2', 'Son môi', 3, '', 8, 1),
(20, '2023-10-31 10:50:43.183468', '3', 'Trang điểm mặt', 3, '', 8, 1),
(21, '2023-10-31 10:51:01.244706', '8', 'Kem chống nắng', 1, '[{\"added\": {}}]', 8, 1),
(22, '2023-10-31 10:51:56.722480', '9', 'Son môi', 1, '[{\"added\": {}}]', 8, 1),
(23, '2023-10-31 10:52:50.783784', '10', 'Trang điểm mặt', 1, '[{\"added\": {}}]', 8, 1),
(24, '2023-10-31 10:53:06.162719', '11', 'Kem dưỡng', 1, '[{\"added\": {}}]', 8, 1),
(25, '2023-10-31 10:53:21.446229', '12', 'Dầu gội', 1, '[{\"added\": {}}]', 8, 1),
(26, '2023-10-31 10:53:37.108312', '13', 'Dầu xả', 1, '[{\"added\": {}}]', 8, 1),
(27, '2023-10-31 10:53:52.991295', '14', 'Dưỡng tóc', 1, '[{\"added\": {}}]', 8, 1),
(28, '2023-10-31 10:54:12.999403', '15', 'Mặt nạ', 1, '[{\"added\": {}}]', 8, 1),
(29, '2023-10-31 10:54:59.055474', '17', 'Trang điểm mắt', 1, '[{\"added\": {}}]', 8, 1),
(30, '2023-10-31 10:55:27.197967', '18', 'Làm sạch cơ thể', 1, '[{\"added\": {}}]', 8, 1),
(31, '2023-10-31 15:23:23.337276', '1', 'Chăm sóc da', 1, '[{\"added\": {}}]', 16, 1),
(32, '2023-10-31 15:23:49.532153', '2', 'Chăm sóc cơ thể', 1, '[{\"added\": {}}]', 16, 1),
(33, '2023-10-31 15:24:03.609271', '3', 'Chăm sóc tóc', 1, '[{\"added\": {}}]', 16, 1),
(34, '2023-10-31 15:24:14.253208', '4', 'Trang điểm', 1, '[{\"added\": {}}]', 16, 1),
(35, '2023-10-31 15:42:11.548611', '1', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 1, '[{\"added\": {}}]', 17, 1),
(36, '2023-10-31 16:58:02.395630', '1', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 2, '[{\"changed\": {\"fields\": [\"BvNoidung\"]}}]', 17, 1),
(37, '2023-10-31 16:58:41.345080', '1', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 2, '[{\"changed\": {\"fields\": [\"BvNoidung\"]}}]', 17, 1),
(38, '2023-10-31 16:59:59.249088', '1', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 2, '[{\"changed\": {\"fields\": [\"BvNoidung\"]}}]', 17, 1),
(39, '2023-10-31 17:02:28.081659', '1', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 2, '[{\"changed\": {\"fields\": [\"BvNoidung\"]}}]', 17, 1),
(40, '2023-10-31 17:02:46.511878', '1', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 2, '[{\"changed\": {\"fields\": [\"BvNoidung\"]}}]', 17, 1),
(41, '2023-10-31 17:13:43.912459', '1', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 2, '[{\"changed\": {\"fields\": [\"BvNoidung\"]}}]', 17, 1),
(42, '2023-11-03 15:42:39.389600', '1', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 2, '[{\"changed\": {\"fields\": [\"BvThumb\"]}}]', 17, 1),
(43, '2023-11-03 15:55:04.116023', '1', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 3, '', 17, 1),
(44, '2023-11-03 16:00:01.478670', '2', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 1, '[{\"added\": {}}]', 17, 1),
(45, '2023-11-03 16:04:15.782455', '2', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 2, '[]', 17, 1),
(46, '2023-11-03 16:13:29.364624', '1', 'Chăm sóc da', 1, '[{\"added\": {}}]', 16, 1),
(47, '2023-11-03 16:14:10.605704', '1', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 1, '[{\"added\": {}}]', 17, 1),
(48, '2023-11-03 16:18:13.920772', '1', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 2, '[{\"changed\": {\"fields\": [\"BvThumb\"]}}]', 17, 1),
(49, '2023-11-03 16:19:47.363870', '1', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 3, '', 17, 1),
(50, '2023-11-03 16:20:56.518573', '1', 'dffff', 1, '[{\"added\": {}}]', 9, 1),
(51, '2023-11-03 16:22:36.298983', '2', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 1, '[{\"added\": {}}]', 17, 1),
(52, '2023-11-03 16:38:13.460128', '2', 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', 2, '[]', 17, 1),
(53, '2023-11-03 18:00:24.281998', '2', 'Chăm sóc cơ thể', 1, '[{\"added\": {}}]', 16, 1),
(54, '2023-11-03 18:00:51.051879', '3', 'Chăm sóc tóc', 1, '[{\"added\": {}}]', 16, 1),
(55, '2023-11-03 18:01:07.305320', '4', 'Trang điểm', 1, '[{\"added\": {}}]', 16, 1),
(56, '2023-11-14 13:31:59.161091', '4', 'Trang điểm', 2, '[{\"changed\": {\"fields\": [\"LbvHinhanh\"]}}]', 16, 1),
(57, '2023-11-14 13:32:10.585822', '1', 'Chăm sóc da', 2, '[{\"changed\": {\"fields\": [\"LbvHinhanh\"]}}]', 16, 1),
(58, '2023-11-14 13:40:31.676623', '1', 'dffff', 2, '[{\"changed\": {\"fields\": [\"SpHinhanh\"]}}]', 9, 1),
(59, '2023-11-14 13:41:06.246945', '18', 'Làm sạch cơ thể', 2, '[{\"changed\": {\"fields\": [\"LspThumb\"]}}]', 8, 1),
(60, '2023-11-14 13:41:24.274349', '17', 'Trang điểm mắt', 2, '[{\"changed\": {\"fields\": [\"LspThumb\"]}}]', 8, 1),
(61, '2023-11-14 13:41:32.176513', '15', 'Mặt nạ', 2, '[{\"changed\": {\"fields\": [\"LspThumb\"]}}]', 8, 1),
(62, '2023-11-14 13:41:46.542448', '14', 'Dưỡng tóc', 2, '[{\"changed\": {\"fields\": [\"LspThumb\"]}}]', 8, 1),
(63, '2023-11-14 13:41:56.348827', '13', 'Dầu xả', 2, '[{\"changed\": {\"fields\": [\"LspThumb\"]}}]', 8, 1),
(64, '2023-11-14 13:42:02.794472', '12', 'Dầu gội', 2, '[{\"changed\": {\"fields\": [\"LspThumb\"]}}]', 8, 1),
(65, '2023-11-14 13:42:12.512908', '11', 'Kem dưỡng', 2, '[{\"changed\": {\"fields\": [\"LspThumb\"]}}]', 8, 1),
(66, '2023-11-14 13:42:22.546390', '10', 'Trang điểm mặt', 2, '[{\"changed\": {\"fields\": [\"LspThumb\"]}}]', 8, 1),
(67, '2023-11-14 13:42:30.239858', '9', 'Son môi', 2, '[{\"changed\": {\"fields\": [\"LspThumb\"]}}]', 8, 1),
(68, '2023-11-14 13:42:38.553365', '8', 'Kem chống nắng', 2, '[{\"changed\": {\"fields\": [\"LspThumb\"]}}]', 8, 1),
(69, '2023-11-14 15:50:55.969843', '1', 'Kem chống nắng abc', 2, '[{\"changed\": {\"fields\": [\"SpTen\"]}}]', 9, 1),
(70, '2023-11-14 15:55:33.203912', '1', 'Kem chống nắng abc', 2, '[{\"changed\": {\"fields\": [\"SpDuongdan\"]}}]', 9, 1),
(71, '2023-11-29 08:11:50.347423', '2', 'loan', 3, '', 4, 1),
(72, '2023-11-29 08:26:57.971591', '3', 'LoanDuong', 3, '', 4, 1),
(73, '2023-11-29 08:52:31.345777', '4', 'LoanDuong', 3, '', 4, 1),
(74, '2023-11-29 08:58:02.126836', '5', 'LoanDuong', 3, '', 4, 1),
(75, '2023-11-30 14:28:53.203949', '1', 'Kem chống nắng abc', 3, '', 9, 1),
(76, '2023-11-30 14:30:40.729804', '2', 'Sữa Chống Nắng Dưỡng Da Trắng Mịn Sunplay Skin Aqua Clear White Limited Editon SPF 50+', 1, '[{\"added\": {}}]', 9, 1),
(77, '2023-11-30 14:46:13.281829', '3', 'Mặt Nạ JMsolution Marine Luminous', 1, '[{\"added\": {}}]', 9, 1),
(78, '2023-11-30 14:48:35.158350', '4', 'Mặt Nạ Giấy Dưỡng Da The SAEM', 1, '[{\"added\": {}}]', 9, 1),
(79, '2023-11-30 14:50:35.213012', '5', 'Son Kem Lì 3CE Hazy Lip Clay', 1, '[{\"added\": {}}]', 9, 1),
(80, '2023-11-30 15:12:25.343736', '3', 'OrderPlaced object (3)', 3, '', 12, 1),
(81, '2023-11-30 15:12:25.347830', '2', 'OrderPlaced object (2)', 3, '', 12, 1),
(82, '2023-11-30 15:12:25.349771', '1', 'OrderPlaced object (1)', 3, '', 12, 1),
(83, '2023-11-30 15:25:47.994860', '2', 'Kem Chống Nắng Dưỡng Da Sunplay Skin Aqua Clear White Limited Editon', 2, '[{\"changed\": {\"fields\": [\"SpTen\"]}}]', 9, 1),
(84, '2023-11-30 15:26:03.029371', '2', 'Kem Chống Nắng Dưỡng Da Sunplay Skin Aqua', 2, '[{\"changed\": {\"fields\": [\"SpTen\"]}}]', 9, 1),
(85, '2023-11-30 15:26:53.025769', '2', 'Kem Chống Nắng Dưỡng Da Sunplay Skin Aqua', 2, '[{\"changed\": {\"fields\": [\"SpHinhanh\"]}}]', 9, 1),
(86, '2023-11-30 15:27:31.316183', '5', 'Son Kem Lì 3CE Hazy Lip Clay (4g) - #Hipamine', 2, '[{\"changed\": {\"fields\": [\"SpTen\"]}}]', 9, 1),
(87, '2023-11-30 15:27:55.472103', '4', 'Mặt Nạ Giấy Dưỡng Da The SAEM Natural Sheet', 2, '[{\"changed\": {\"fields\": [\"SpTen\"]}}]', 9, 1),
(88, '2023-11-30 15:28:34.806979', '3', 'Mặt Nạ JMsolution Marine Luminous Pearl Deep Moisture', 2, '[{\"changed\": {\"fields\": [\"SpTen\"]}}]', 9, 1),
(89, '2023-11-30 15:45:48.773559', '6', 'Kem Chống Nắng Cho Da Dầu La Roche-Posay Anti-Shine', 1, '[{\"added\": {}}]', 9, 1),
(90, '2023-11-30 15:47:24.479594', '7', 'Kem Chống Nắng Cho Da Thường, Da Hỗn Hợp Eucerin  Sun Fluid Mattifying', 1, '[{\"added\": {}}]', 9, 1),
(91, '2023-11-30 15:48:46.534702', '8', 'Kem Chống Nắng Klairs Ẩm Mượt, Làm Dịu Da All-Day Airy', 1, '[{\"added\": {}}]', 9, 1),
(92, '2023-12-05 14:32:11.458513', '7', 'Kem Chống Nắng Cho Da Thường, Da Hỗn Hợp Eucerin  Sun Fluid', 2, '[{\"changed\": {\"fields\": [\"SpTen\"]}}]', 9, 1),
(93, '2023-12-05 14:35:12.864407', '9', 'Bộ Dầu Gội Hairburst Shampoo & Conditioner For Longer Stronger Hair', 1, '[{\"added\": {}}]', 9, 1),
(94, '2023-12-05 14:48:02.279431', '19', 'Kem trị mụn', 1, '[{\"added\": {}}]', 8, 1),
(95, '2023-12-05 14:58:36.426594', '3', 'TOP 12 Kem Dưỡng Ẩm Cho Da Dầu Mụn 2023', 1, '[{\"added\": {}}]', 17, 1),
(96, '2023-12-05 15:01:55.811521', '4', 'Glycerin là gì? Thành phần tốt nên có trong mỹ phẩm', 1, '[{\"added\": {}}]', 17, 1),
(97, '2023-12-05 15:10:22.518715', '5', 'Review Mặt nạ ngủ dưỡng trắng da dProgram Whitening Clear Jelly Essence', 1, '[{\"added\": {}}]', 17, 1),
(98, '2023-12-05 15:21:01.813240', '6', 'Các bước trang điểm cơ bản dành cho người mới học makeup', 1, '[{\"added\": {}}]', 17, 1),
(99, '2023-12-05 15:24:56.410611', '7', '8 loại mỹ phẩm trang điểm cơ bản cho người mới bắt đầu', 1, '[{\"added\": {}}]', 17, 1),
(100, '2023-12-05 15:36:50.050183', '6', 'Các bước trang điểm cơ bản dành cho người mới học makeup', 2, '[{\"changed\": {\"fields\": [\"BvNoidung\"]}}]', 17, 1),
(101, '2023-12-05 15:37:18.162518', '6', 'Các bước trang điểm cơ bản dành cho người mới học makeup', 2, '[{\"changed\": {\"fields\": [\"BvNoidung\"]}}]', 17, 1),
(102, '2023-12-05 16:14:39.791688', '1', 'Công ty nhập khẩu dược mỹ phẩm Dermafirm Hàn Quốc', 1, '[{\"added\": {}}]', 13, 1),
(103, '2023-12-05 16:14:53.158546', '2', 'Công Ty TNHH Thương Mại Và Đầu Tư Xuất Nhập khẩu Việt Nam', 1, '[{\"added\": {}}]', 13, 1),
(104, '2023-12-05 16:15:01.373138', '3', 'CÔNG TY TNHH HASAKI BEAUTY & S.P.A', 1, '[{\"added\": {}}]', 13, 1),
(105, '2023-12-05 16:15:15.884406', '4', 'Rohto Mentholatum Vietnam', 1, '[{\"added\": {}}]', 13, 1),
(106, '2023-12-05 16:15:52.459635', '1', 'LONHHAP object (1)', 1, '[{\"added\": {}}]', 14, 1),
(107, '2023-12-05 16:16:08.589661', '2', 'LONHHAP object (2)', 1, '[{\"added\": {}}]', 14, 1),
(108, '2023-12-05 16:17:15.040156', '1', 'CTLONHAP object (1)', 1, '[{\"added\": {}}]', 15, 1),
(109, '2023-12-05 16:23:05.424699', '2', 'CTLONHAP object (2)', 1, '[{\"added\": {}}]', 15, 1);

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
(17, 'store', 'baiviet'),
(11, 'store', 'cart'),
(15, 'store', 'ctlonhap'),
(7, 'store', 'danhmucsanpham'),
(10, 'store', 'khachhang'),
(16, 'store', 'loaibaiviet'),
(8, 'store', 'loaisanpham'),
(14, 'store', 'lonhhap'),
(12, 'store', 'orderplaced'),
(9, 'store', 'sanpham'),
(13, 'store', 'supplier');

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
(1, 'contenttypes', '0001_initial', '2023-10-31 10:31:26.003148'),
(2, 'auth', '0001_initial', '2023-10-31 10:31:26.673877'),
(3, 'admin', '0001_initial', '2023-10-31 10:31:26.851303'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-31 10:31:26.872303'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-31 10:31:26.894740'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-31 10:31:26.977391'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-31 10:31:27.034434'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-31 10:31:27.087971'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-31 10:31:27.102707'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-31 10:31:27.196336'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-31 10:31:27.200334'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-31 10:31:27.218334'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-31 10:31:27.271044'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-31 10:31:27.311819'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-31 10:31:27.352958'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-31 10:31:27.360395'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-31 10:31:27.401596'),
(18, 'sessions', '0001_initial', '2023-10-31 10:31:27.464202'),
(19, 'store', '0001_initial', '2023-10-31 10:31:27.733202'),
(20, 'store', '0002_auto_20230824_1144', '2023-10-31 10:31:27.747199'),
(21, 'store', '0003_sanpham_spduongdan', '2023-10-31 10:31:27.817264'),
(22, 'store', '0004_khachhang', '2023-10-31 10:31:27.955453'),
(23, 'store', '0005_auto_20230912_1126', '2023-10-31 10:31:28.017722'),
(24, 'store', '0006_alter_khachhang_khphone', '2023-10-31 10:31:28.075534'),
(25, 'store', '0007_auto_20230918_2318', '2023-10-31 10:31:28.440246'),
(26, 'store', '0008_auto_20230923_1829', '2023-10-31 10:31:28.521833'),
(27, 'store', '0009_rename_user_dondathang_customer', '2023-10-31 10:31:28.658518'),
(28, 'store', '0010_rename_customer_dondathang_user', '2023-10-31 10:31:28.786454'),
(29, 'store', '0011_alter_khachhang_user', '2023-10-31 10:31:28.943544'),
(30, 'store', '0012_alter_khachhang_user', '2023-10-31 10:31:29.141558'),
(31, 'store', '0013_auto_20230924_1933', '2023-10-31 10:31:29.226205'),
(32, 'store', '0014_cart', '2023-10-31 10:31:29.424087'),
(33, 'store', '0015_auto_20230925_2012', '2023-10-31 10:31:29.668802'),
(34, 'store', '0016_orderplaced', '2023-10-31 10:31:29.917539'),
(35, 'store', '0017_auto_20231029_1347', '2023-10-31 10:31:30.386565'),
(36, 'store', '0018_baiviet_bvtrangthai', '2023-10-31 10:31:30.433999'),
(37, 'store', '0019_auto_20231031_1714', '2023-10-31 10:31:30.455179'),
(38, 'store', '0020_baiviet_loaibaiviet', '2023-10-31 10:31:30.631297'),
(39, 'store', '0021_auto_20231103_2105', '2023-11-03 14:06:08.251256'),
(40, 'store', '0022_auto_20231103_2306', '2023-11-03 16:08:01.142458'),
(41, 'store', '0023_baiviet_loaibaiviet', '2023-11-03 16:11:30.293661');

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
('eju33na889gzyxfre6uf1g44jim3488a', '.eJxVjL0OAiEQhN-F2hCI_Oxa2vsMZFlATg0kx11lfHfvkiu0mWK-b-YtAq1LDevIc5iSuAgtTr9dJH7mtoP0oHbvkntb5inKXZEHHfLWU35dD_fvoNKo29ppE7Ur1no8gy-IyoN3in3GyK5oD463LIYtKAKygBAVMhtSxSCLzxe6pjdF:1r2te9:FIJewJNMYzsX4sm7DgYYnewQAMHVp-tSKFun5Ufks80', '2023-11-28 13:40:05.351598'),
('gpv4jim36axhxbzqkxr3jqtq85lfa2u7', '.eJxVjL0OAiEQhN-F2hCI_Oxa2vsMZFlATg0kx11lfHfvkiu0mWK-b-YtAq1LDevIc5iSuAgtTr9dJH7mtoP0oHbvkntb5inKXZEHHfLWU35dD_fvoNKo29ppE7Ur1no8gy-IyoN3in3GyK5oD463LIYtKAKygBAVMhtSxSCLzxe6pjdF:1rAZk8:DjFOCA9EUNLi4XvSJOOKm1RPbfgCefKIKxMqfk7NOhw', '2023-12-19 18:02:00.191201'),
('lgirade9ibilgvxns6mhidju7hiogelt', '.eJxVjL0OAiEQhN-F2hCI_Oxa2vsMZFlATg0kx11lfHfvkiu0mWK-b-YtAq1LDevIc5iSuAgtTr9dJH7mtoP0oHbvkntb5inKXZEHHfLWU35dD_fvoNKo29ppE7Ur1no8gy-IyoN3in3GyK5oD463LIYtKAKygBAVMhtSxSCLzxe6pjdF:1qzGdQ:84cpJWJOvSEqbb6egR32DlVYZW0xnrLJQEdwMgErk4Q', '2023-11-18 13:24:20.546531'),
('lum4cm8tid3jjfhrtqf4i2zhhz7h14rm', '.eJxVjL0OAiEQhN-F2hCI_Oxa2vsMZFlATg0kx11lfHfvkiu0mWK-b-YtAq1LDevIc5iSuAgtTr9dJH7mtoP0oHbvkntb5inKXZEHHfLWU35dD_fvoNKo29ppE7Ur1no8gy-IyoN3in3GyK5oD463LIYtKAKygBAVMhtSxSCLzxe6pjdF:1rAXad:-1OI51EI_lkKXE1yLdL6wU-vUXLTalLA8mcaLL1Cnmc', '2023-12-19 15:44:03.479520'),
('zwe4ac1l7aharwwxz00d8z9xx57lkw7i', '.eJxVjL0OAiEQhN-F2hCI_Oxa2vsMZFlATg0kx11lfHfvkiu0mWK-b-YtAq1LDevIc5iSuAgtTr9dJH7mtoP0oHbvkntb5inKXZEHHfLWU35dD_fvoNKo29ppE7Ur1no8gy-IyoN3in3GyK5oD463LIYtKAKygBAVMhtSxSCLzxe6pjdF:1qxm5K:3Wd--lsw3hm8fGAOJ3YNoa3nk2CbqbS4a5qY30NZlGQ', '2023-11-14 10:34:58.284645');

-- --------------------------------------------------------

--
-- Table structure for table `store_baiviet`
--

CREATE TABLE `store_baiviet` (
  `id` bigint(20) NOT NULL,
  `baivietTen` varchar(255) NOT NULL,
  `bvNoidung` longtext NOT NULL,
  `bvNgaytao` datetime(6) NOT NULL,
  `bvDuongdan` varchar(256) DEFAULT NULL,
  `bvThumb` varchar(100) NOT NULL,
  `bvTrangthai` varchar(255) NOT NULL,
  `bvTacgia_id` int(11) NOT NULL,
  `loaibaiviet_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_baiviet`
--

INSERT INTO `store_baiviet` (`id`, `baivietTen`, `bvNoidung`, `bvNgaytao`, `bvDuongdan`, `bvThumb`, `bvTrangthai`, `bvTacgia_id`, `loaibaiviet_id`) VALUES
(2, 'Vì sao chăm da ban đêm lại quan trọng hơn ban ngày', '<p>Hầu hết c&aacute;c chuy&ecirc;n gia đều cho rằng việc chăm s&oacute;c da ban đ&ecirc;m quan trọng hơn ban ng&agrave;y rất nhiều. Bởi đ&acirc;y l&agrave; thời điểm v&agrave;ng để l&agrave;n da t&aacute;i sinh. Do đ&oacute; bạn cần phải ch&uacute; trọng dưỡng da v&agrave;o buổi tối trước khi đi ngủ. B&agrave;i viết dưới đ&acirc;y của Hills Spa &amp; Beauty sẽ khẳng định những điều tr&ecirc;n l&agrave; đ&uacute;ng. Mời c&aacute;c bạn c&ugrave;ng theo d&otilde;i!</p>\r\n<p>1. V&igrave; sao chăm da ban đ&ecirc;m quan trọng hơn ban ng&agrave;y?</p>\r\n<p>Sau đ&acirc;y l&agrave; những l&yacute; do chăm da ban đ&ecirc;m quan trọng hơn ban ng&agrave;y:</p>\r\n<p><img src=\"https://hillsbeauty.vn/wp-content/uploads/2023/10/cham-soc-da-ban-dem-quan-trong-hon-ban-ngay.jpg\" /></p>\r\n<p>1.1. Ban đ&ecirc;m da t&aacute;i sinh v&agrave; phục hồi mạnh mẽ</p>\r\n<p>Đ&ecirc;m ch&iacute;nh l&agrave; thời điểm l&yacute; tưởng để c&aacute;c tế b&agrave;o t&agrave;i sinh mạnh mẽ nhất để chữa l&agrave;nh cho l&agrave;n da sau ng&agrave;y l&agrave;m việc d&agrave;i. Cũng l&uacute;c n&agrave;y collagen được sinh sản bổ sung v&agrave; c&aacute;c tế b&agrave;o gốc c&oacute; hại cho da cũng bị ti&ecirc;u diệt. V&igrave; thế việc bạn chăm s&oacute;c da ban đ&ecirc;m sẽ gi&uacute;p da hấp thụ những dưỡng chất c&oacute; trong sản phẩm dưỡng da tốt hơn.</p>', '2023-11-03 16:22:36.295982', 'vi-sao-cham-da-ban-dem-lai-quan-trong-hon-ban-ngay', 'thumb/bv_chamsocda.jpg', 'hiển thị', 1, 1),
(3, 'TOP 12 Kem Dưỡng Ẩm Cho Da Dầu Mụn 2023', '<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Mặc d&ugrave; đ&atilde; chăm s&oacute;c da theo nhiều c&aacute;ch kh&aacute;c nhau, tuy nhi&ecirc;n nổi &ldquo;MỤN&rdquo; l&agrave; một vấn đề kh&oacute; tr&aacute;nh khỏi. C&oacute; người nổi mụn do thay đổi cơ địa đột ngột, cũng c&oacute; người sinh ra đ&atilde; phải sống chung với mụn.</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Nguy&ecirc;n nh&acirc;n dẫn đến mụn b&aacute;m dai dẳng tr&ecirc;n da l&agrave; do ch&uacute;ng ta chưa c&oacute; c&aacute;i nh&igrave;n đ&uacute;ng về c&aacute;ch chăm s&oacute;c da. Điển h&igrave;nh như, nhiều bạn nghĩ rằng da dầu kh&ocirc;ng n&ecirc;n d&ugrave;ng kem dưỡng ẩm. Nhưng đ&oacute; l&agrave; sai lầm khiến da thường xuy&ecirc;n l&ecirc;n mụn.</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: underline;\"><a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; transition: all 0.25s linear 0s; color: #e90c85;\" href=\"https://blogchamsoc.com/da-dau/\" target=\"_blank\" rel=\"noopener noreferrer\">Da dầu mụn</a></span>&nbsp;l&agrave; một trong những l&agrave;n da rất kh&oacute; chăm s&oacute;c, việc chọn lựa kem dưỡng ẩm cho da dầu mụn cũng phải cần c&oacute; kiến thức đ&uacute;ng nữa.</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Tuy nhi&ecirc;n, việc chọn kem dưỡng ẩm cho da dầu mụn th&igrave; kh&ocirc;ng mấy dễ d&agrave;ng, bạn sẽ cần phải c&oacute; một ch&uacute;t kiến thức về da v&agrave; skincare, trong b&agrave;i n&agrave;y m&igrave;nh sẽ giới thiệu v&agrave; review TOP 12 kem dưỡng ẩm cho da dầu mụn gi&uacute;p bạn nh&eacute;!</p>\r\n<h2 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 28px; line-height: 1.4; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; clear: both;\"><span id=\"Tai-sao-da-dau-can-duong-am\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Tại sao da dầu cần dưỡng ẩm?</span></h2>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Thật ra da dầu ch&iacute;nh l&agrave; loại da thiếu nước, quốc gia c&oacute; số người sở hữu da dầu phổ biến nhất l&agrave; ở Việt Nam nơi c&oacute; kh&iacute; hậu nhiệt đới gi&oacute; m&ugrave;a. Khi trời trở n&ecirc;n oi bức, da dầu vốn thiếu nước sẽ k&iacute;ch th&iacute;ch tuyến b&atilde; nhờn hoạt động mạnh để tạo độ ẩm cho da. L&acirc;u dần hệ b&agrave;i tiết sẽ bị mất c&acirc;n bằng nếu kh&ocirc;ng được dưỡng ẩm cẩn thận.</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><img class=\"size-full wp-image-9984 aligncenter\" style=\"margin: 1rem auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto !important; display: block; clear: both;\" src=\"https://blogchamsoc.com/wp-content/uploads/2019/12/Kem-duong-am-chua-nhieu-duong-chat.jpg\" alt=\"Kem dưỡng ẩm chứa nhiều dưỡng chất\" width=\"600\" height=\"400\" data-src=\"https://blogchamsoc.com/wp-content/uploads/2019/12/Kem-duong-am-chua-nhieu-duong-chat.jpg\" /></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Kh&ocirc;ng chỉ ri&ecirc;ng l&agrave;n da dầu, m&agrave; cả những bạn c&oacute; l&agrave;n da kh&ocirc;, da thường, da hỗn hợp, da nhạy cảm,&hellip;đều cần dưỡng ẩm để da khỏe mạnh v&agrave; s&aacute;ng mịn.</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Việc dưỡng ẩm cho da gi&uacute;p c&aacute;c tế b&agrave;o ph&aacute;t triển, giữ cho da c&oacute; một độ ẩm nhất định, kiểm so&aacute;t lượng b&atilde; nhờn, tr&aacute;nh t&igrave;nh trạng bong tr&oacute;c, hạn chế mụn v&agrave; chống l&atilde;o h&oacute;a da.</p>', '2023-12-05 14:58:36.423590', 'top-12-kem-duong-am-cho-da-dau-mun-2023', 'thumb/baiviet1.jpg', 'bản nháp', 1, 1),
(4, 'Glycerin là gì? Thành phần tốt nên có trong mỹ phẩm', '<h2 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 28px; line-height: 1.4; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; clear: both;\"><span id=\"Glycerin-la-gi\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Glycerin l&agrave; g&igrave;?</span></h2>\r\n<figure id=\"attachment_13656\" class=\"wp-caption aligncenter\" style=\"margin: 0.3rem auto 0.5rem; padding: 0.3125rem 0.1875rem 0.625rem; border: 1px solid #f0f0f0; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; max-width: 96%; text-align: center; width: 600px;\" aria-describedby=\"caption-attachment-13656\"><img class=\"wp-image-13656 size-full\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto !important;\" src=\"https://blogchamsoc.com/wp-content/uploads/2019/08/chat-glycerin-la-gi.jpg\" alt=\"hoạt chất glycerin trong mỹ phẩm\" width=\"600\" height=\"400\" data-src=\"https://blogchamsoc.com/wp-content/uploads/2019/08/chat-glycerin-la-gi.jpg\" />\r\n<figcaption id=\"caption-attachment-13656\" class=\"wp-caption-text\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Hoạt chất glycerin trong mỹ phẩm</figcaption>\r\n</figure>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><a style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; transition: all 0.25s linear 0s; color: #e90c85;\" href=\"https://vi.wikipedia.org/wiki/Glyxerol\" target=\"_blank\" rel=\"noopener\">Glycerin</a>&nbsp;được nhiều người gọi bằng nhiều c&aacute;i t&ecirc;n kh&aacute;c nhau như Glyxerol, Glycerol hay Glyxerin.</span></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Đ&acirc;y được xem l&agrave; một dạng rượu đa thức c&oacute;</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">&nbsp;c&ocirc;ng thức h&oacute;a học l&agrave; C</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">3</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">H</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">5</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">(OH)</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">3</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">.&nbsp;</span></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">T&ugrave;y thuộc v&agrave;o từng mức nồng độ m&agrave; glycerin c&oacute; nhiều loại kh&aacute;c nhau, thuộc t&iacute;nh của ch&uacute;ng cũng kh&aacute;c nhau.</span></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">V&igrave; thế, với mỗi loại glycerin, con người sẽ sử dụng ch&uacute;ng v&agrave;o những mục đ&iacute;ch kh&ocirc;ng giống nhau.</span></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">V&agrave; c&aacute;c lĩnh vực m&agrave; cần tới sự xuất hiện của glycerin th&igrave; kh&aacute; l&agrave; đa dạng như c&ocirc;ng nghiệp, thực phẩm, dược phẩm v&agrave; nhiều nhất l&agrave; trong c&aacute;c m&oacute;n đồ mỹ phẩm l&agrave;m đẹp da.</span></p>\r\n<h2 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 28px; line-height: 1.4; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; clear: both;\"><span id=\"Cong-dung-cua-Glycerin\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">C&ocirc;ng dụng của Glycerin</span></h2>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Một l&agrave;n da khỏe đẹp lu&ocirc;n l&agrave; niềm ao ước của biết bao chị em phụ nữ, kh&ocirc;ng chỉ gi&uacute;p da khỏe mạnh hơn m&agrave; c&ograve;n tạo sự tự tin khi giao tiếp với người đối diện.</span></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Gelycerin l&agrave; một hoạt chất kh&ocirc;ng thể thiếu v&agrave; n&ecirc;n c&oacute; trong mỹ phẩm l&agrave;m đẹp của bạn.</span></p>', '2023-12-05 15:01:55.806557', 'glycerin-la-gi-thanh-phan-tot-nen-co-trong-my-pham', 'thumb/baiviet2.jpg', 'bản nháp', 1, 1),
(5, 'Review Mặt nạ ngủ dưỡng trắng da dProgram Whitening Clear Jelly Essence', '<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Mặt nạ ngủ dưỡng trắng da dProgram Whitening Clear Jelly Essence đang một trong những sản phẩm dưỡng ẩm v&agrave; dưỡng trắng da kh&aacute; hot tr&ecirc;n thị trường, em n&agrave;y đến từ thương hiệu dProgram (một trong c&aacute;c thương hiệu dược mỹ phẩm của Nhật Bản).</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Trước đ&acirc;y, m&igrave;nh c&oacute; viết nhiều b&agrave;i về c&aacute;c d&ograve;ng dưỡng ẩm cho da nhưng chủ yếu đến từ H&agrave;n v&agrave; h&ocirc;m nay đổi gi&oacute; một ch&uacute;t, m&igrave;nh sẽ review về em mask ngủ dưỡng trắng da dProgram Whitening Clear Jelly Essence của Nhật b&ecirc;n dưới đ&acirc;y cho bạn, để xem đ&acirc;y c&oacute; thực sự l&agrave; một sản phẩm tốt đ&aacute;ng để mua hay kh&ocirc;ng.</p>\r\n<h2 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 28px; line-height: 1.4; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; clear: both;\"><span id=\"Ve-thuong-hieu-dProgram\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Về thương hiệu dProgram</span></h2>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">dProgram l&agrave; thương hiệu dược mỹ phẩm thuộc tập đo&agrave;n Shiseido đến từ đất nước Nhật Bản. H&atilde;ng ch&uacute; trọng v&agrave;o việc ph&aacute;t triển sản phẩm chăm s&oacute;c da d&agrave;nh cho da nhạy cảm với hơn 50 năm nghi&ecirc;n cứu tỉ mỉ, chăm ch&uacute;t từ những điều nhỏ nhất. Theo đuổi sứ mệnh mang lại vẻ đẹp bền vững cho người phụ nữ, Shiseido Nhật Bản đ&atilde; cho ra đời thương hiệu Evenese d&agrave;nh cho da nhạy cảm v&agrave; cũng l&agrave; tiền th&acirc;n của dProgram ng&agrave;y nay.</p>\r\n<figure id=\"attachment_15085\" class=\"wp-caption aligncenter\" style=\"margin: 0.3rem auto 0.5rem; padding: 0.3125rem 0.1875rem 0.625rem; border: 1px solid #f0f0f0; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; max-width: 96%; text-align: center; width: 602px;\" aria-describedby=\"caption-attachment-15085\"><img class=\"wp-image-15085 size-full\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto !important;\" src=\"https://blogchamsoc.com/wp-content/uploads/2021/06/mat-na-ngu-duong-am-dprogram.png\" alt=\"mặt nạ ngủ dưỡng ẩm trắng da dProgram whitening\" width=\"602\" height=\"601\" data-src=\"https://blogchamsoc.com/wp-content/uploads/2021/06/mat-na-ngu-duong-am-dprogram.png\" />\r\n<figcaption id=\"caption-attachment-15085\" class=\"wp-caption-text\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Điều quan trọng nhất l&agrave; bảng th&agrave;nh phần l&agrave;nh t&iacute;nh của mỹ phẩm gi&uacute;p chăm s&oacute;c da an to&agrave;n v&agrave; hiệu quả</em></figcaption>\r\n</figure>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Điều quan trọng nhất l&agrave; bảng th&agrave;nh phần l&agrave;nh t&iacute;nh của c&aacute;c sản phẩm dProgram gi&uacute;p chăm s&oacute;c v&agrave; t&aacute;i tạo l&agrave;n da nhạy cảm yếu ớt. C&ocirc;ng dụng của sản phẩm đ&atilde; được kiểm nghiệm l&acirc;m s&agrave;ng tr&ecirc;n l&agrave;n da nhạy cảm của 1800 phụ nữ Ch&acirc;u &Aacute;. V&igrave; vậy, kh&ocirc;ng phải ngẫu nhi&ecirc;n m&agrave; đ&acirc;y l&agrave; thương hiệu được c&aacute;c dược sĩ v&agrave; b&aacute;c sĩ da liễu khuy&ecirc;n d&ugrave;ng h&agrave;ng ng&agrave;y.</p>\r\n<h2 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 28px; line-height: 1.4; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; clear: both;\"><span id=\"Review-tinh-chat-duong-trang-da-dProgram-Whitening-Clear-Jelly-Essence\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Review tinh chất dưỡng trắng da dProgram Whitening Clear Jelly Essence</span></h2>\r\n<h3 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 24px; line-height: 1.4; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; clear: both; color: #1da31f;\"><span id=\"1-Tong-quan-ve-cau-tao-ket-cau-san-pham\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">1. Tổng quan về cấu tạo, kết cấu sản phẩm</span></h3>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">dProgram Whitening Jelly Clear Essence c&oacute; kết cấu dạng Jelly tho&aacute;ng nhẹ, kh&ocirc;ng m&ugrave;i, kh&ocirc;ng chứa cồn, kh&ocirc;ng chứa paraben v&agrave; an to&agrave;n với mọi l&agrave;n da, đặc biệt l&agrave; da nhạy cảm.</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Một hộp 60g của em n&agrave;y c&oacute; gi&aacute; khoảng 900.000đ do m&igrave;nh mua đợt c&oacute; khuyến m&atilde;i n&ecirc;n chỉ c&ograve;n tầm 600.000đ/hộp.</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><img class=\"size-full wp-image-15086 aligncenter\" style=\"margin: 1rem auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto !important; display: block; clear: both;\" src=\"https://blogchamsoc.com/wp-content/uploads/2021/06/mat-na-ngu-duong-am-dprogram-1.png\" alt=\"\" width=\"602\" height=\"601\" data-src=\"https://blogchamsoc.com/wp-content/uploads/2021/06/mat-na-ngu-duong-am-dprogram-1.png\" /></p>\r\n<h3 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 24px; line-height: 1.4; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; clear: both; color: #1da31f;\"><span id=\"2-Bang-thanh-phan-chi-tiet\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">2. Bảng th&agrave;nh phần chi tiết</span></h3>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Water (Aqua), Butylene Glycol, Dimethicone, Glycerin, Dipropylene Glycol, Propanediol, Tranexamic Acid, Diphenylsiloxy Phenyl Trimethicone, PEG-240/HDI Copolymer Bis-Decyltetradeceth-20 Ether, PEG-6. PEG-32, Phenoxyethanol, HDI/Trimethylol Hexyllactone Crosspolymer, Carbomer, Erythritol, PEG/PPG-17/4 Dimethyl Ether, Dipotassium Glycyrrhizate, PEG-10 Dimethicone, PED-60 Hydrogenated Castor Oil, Sodium Metaphosphate, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Silica, Betaine, Allantoin, Phytosteryl/Octyldodecyl Lauroyl Glutamate, Sodium Metabisulfite, Sanguisorba Officinalis Root Extract, PEG/PPG-14/7 Dimethyl Ether, SOdium Hyaluronate, BHT, Lamium Album Flower/Leaf/Stem Extract, Aloe Barbadensis Leaf Extract, Crataegus Monogyna Flower Extract, Tocopherl Ginkgo Biloba Leaf Extract,&hellip;</p>\r\n<h3 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 24px; line-height: 1.4; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; clear: both; color: #1da31f;\"><span id=\"3-Cong-dung-cua-mat-na-ngu-duong-trang-dProgram-Whitening-Clear-Jelly-Essence\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">3. C&ocirc;ng dụng của mặt nạ ngủ dưỡng trắng dProgram Whitening Clear Jelly Essence</span></h3>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Mask ngủ dưỡng trắng da dProgram Whitening Clear Jelly c&oacute; t&aacute;c dụng ch&iacute;nh l&agrave; dưỡng ẩm v&agrave; dưỡng trắng s&aacute;ng da.</p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Như m&igrave;nh đ&atilde; n&oacute;i ở phần kết cấu của sản phẩm n&agrave;y th&igrave; với kết cấu dạng Jelly (dạng thạch) chứa rất nhiều nước n&ecirc;n khi apply l&ecirc;n da mang lại cảm gi&aacute;c m&aacute;t, dưỡng ẩm nhanh ch&oacute;ng cho da, gi&uacute;p da thư gi&atilde;n sau một ng&agrave;y l&agrave;m việc mệt mỏi.</p>\r\n<h3 style=\"margin: 0px 0px 12px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 24px; line-height: 1.4; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; clear: both; color: #1da31f;\"><span id=\"4-Uu-diem-va-nhuoc-diem-cua-san-pham\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">4. Ưu điểm v&agrave; nhược điểm của sản phẩm</span></h3>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Ưu điểm:</span></p>\r\n<ul style=\"margin: 0px; padding: 0px 0px 1.571rem 1.3125rem; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style: square; position: relative;\">\r\n<li style=\"margin: 0px 0px 7px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative;\">Kết cấu Jelly mỏng nhẹ, thấm nhanh, dưỡng ẩm tốt.</li>\r\n<li style=\"margin: 0px 0px 7px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative;\">Chứa nhiều th&agrave;nh phần độc đ&aacute;o, hỗ trợ dưỡng s&aacute;ng v&agrave; l&agrave;m dịu l&agrave;n da bị tổn thương.</li>\r\n<li style=\"margin: 0px 0px 7px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative;\">Ph&ugrave; hợp cho mọi loại da, đặc biệt l&agrave; l&agrave;n da nhạy cảm k&eacute;n mỹ phẩm.</li>\r\n<li style=\"margin: 0px 0px 7px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; position: relative;\">Sản phẩm kh&ocirc;ng m&agrave;u, kh&ocirc;ng m&ugrave;i, kh&ocirc;ng chứa c&aacute;c parabens, dầu kho&aacute;ng, hương liệu, cồn,&hellip;</li>\r\n</ul>\r\n<figure id=\"attachment_15087\" class=\"wp-caption aligncenter\" style=\"margin: 0.3rem auto 0.5rem; padding: 0.3125rem 0.1875rem 0.625rem; border: 1px solid #f0f0f0; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; max-width: 96%; text-align: center; width: 602px;\" aria-describedby=\"caption-attachment-15087\"><img class=\"size-full wp-image-15087\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto !important;\" src=\"https://blogchamsoc.com/wp-content/uploads/2021/06/tinh-chat-duong-sang-da-dprogram-whitening-clear-jelly-essence.png\" alt=\"Tinh chất dưỡng s&aacute;ng da dạng jelly dProgram Whitening Jelly Clear Essence c&oacute; khả năng thẩm thấu v&ocirc; c&ugrave;ng tốt\" width=\"602\" height=\"601\" data-src=\"https://blogchamsoc.com/wp-content/uploads/2021/06/tinh-chat-duong-sang-da-dprogram-whitening-clear-jelly-essence.png\" />\r\n<figcaption id=\"caption-attachment-15087\" class=\"wp-caption-text\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Tinh chất dưỡng s&aacute;ng da dạng jelly dProgram Whitening Jelly Clear Essence c&oacute; khả năng thẩm thấu v&ocirc; c&ugrave;ng tốt</figcaption>\r\n</figure>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Nhược điểm:</span></p>\r\n<p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: \'Open Sans\', Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Hiện tại, đối với m&igrave;nh dProgram Whitening Jelly Clear Essence chưa c&oacute; khuyết điểm n&agrave;o, nếu ai từng thử d&ugrave;ng c&aacute;c brand mỹ phẩm của H&agrave;n hoặc của Mỹ th&igrave; so s&aacute;nh ra rất hiếm khi t&igrave;m được c&aacute;c sản phẩm dược mỹ phẩm c&oacute; hiệu quả tốt v&agrave; gi&aacute; th&agrave;nh ở tầm trung như dProgram Whitening Jelly Clear Essence n&agrave;y.</p>', '2023-12-05 15:10:22.511681', 'review-mat-na-ngu-duong-trang-da-dprogram-whitening-clear-jelly-essence', 'thumb/baiviet3.png', 'bản nháp', 1, 1),
(6, 'Các bước trang điểm cơ bản dành cho người mới học makeup', '<h3 style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; font-weight: 500; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 22px;\">Bước 1: L&agrave;m sạch da mặt</span></h3>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">Sử dụng sữa rửa mặt để loại bỏ bụi bẩn, vi khuẩn v&agrave; tế b&agrave;o chết tr&ecirc;n da. Điều n&agrave;y gi&uacute;p lỗ ch&acirc;n l&ocirc;ng th&ocirc;ng tho&aacute;ng v&agrave; hấp thu dưỡng chất tốt hơn.</span></p>\r\n<div class=\"media-wrap image-wrap\" style=\"box-sizing: border-box; font-family: SVNMont, sans-serif;\"><img style=\"box-sizing: border-box; font-family: var(--font-family); vertical-align: middle; border-style: none; margin: 0px auto; padding: 0px; display: block; max-width: 100%; width: 579px; border-radius: 20px; height: 305px; object-fit: contain;\" src=\"https://file.hstatic.net/200000223113/file/lam-sach-da-mat-truoc-khi-trang-diem_73c85a44afa4429a8dc1390cca2b59b4_1024x1024.jpg\" alt=\"lam-sach-da-mat-truoc-khi-trang-diem\" /></div>\r\n<h3 style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; font-weight: 500; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 22px;\">Bước 2: C&acirc;n bằng da</span></h3>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">D&ugrave;ng nước hoa hồng để loại bỏ vi khuẩn g&acirc;y vi&ecirc;m da. Đồng thời, gi&uacute;p nu&ocirc;i dưỡng cấu tr&uacute;c da v&agrave; gi&uacute;p da đ&agrave;n hồi tốt hơn.</span></p>\r\n<h3 style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; font-weight: 500; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 22px;\">Bước 3: Dưỡng ẩm</span></h3>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">Thoa một lớp serum hoặc kem dưỡng ẩm mỏng l&ecirc;n da để tăng độ ẩm v&agrave; gi&uacute;p da mềm mịn hơn. Ngo&agrave;i ra, c&ograve;n gi&uacute;p c&aacute;c lớp mỹ phẩm sau n&agrave;y b&aacute;m l&acirc;u hơn.</span></p>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">Dưỡng &acirc;̉m là m&ocirc;̣t bước thi&ecirc;́t y&ecirc;́u trong quy trình dưỡng da. Kh&ocirc;ng chỉ đ&acirc;̉y lùi d&acirc;́u hi&ecirc;̣u lão hóa hi&ecirc;̣u quả, sử dụng các</span>&nbsp;<span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-weight: bolder;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); color: #2980b9;\"><a style=\"box-sizing: border-box; font-family: var(--font-family); text-decoration-line: none; background-color: transparent; outline: none; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation;\" href=\"https://beautybox.com.vn/collections/kem-duong-da-mat?utm_source=blogs&amp;utm_medium=E1001331688\">sản ph&acirc;̉m kem dưỡng da</a></span></span>&nbsp;sẽ giúp lớp n&ecirc;̀n kh&ocirc;ng bị chảy hay cakey. Các bạn n&ecirc;n ưu ti&ecirc;n các thành ph&acirc;̀n như Hyaluronic acid, Ceramide, Glycerin... trong kem dưỡng.</span></p>\r\n<div class=\"media-wrap image-wrap\" style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; text-align: center;\"><a style=\"box-sizing: border-box; font-family: var(--font-family); text-decoration-line: none; background-color: transparent; outline: none; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; display: inline-block;\" href=\"https://beautybox.com.vn/collections/kem-duong-da-mat?utm_source=blogs&amp;utm_medium=E1001331688\"><img style=\"box-sizing: border-box; font-family: var(--font-family); vertical-align: middle; border-style: none; margin: 0px auto; padding: 0px; max-width: 100%; width: 465px; border-radius: 20px; height: 465px; object-fit: contain; display: block;\" src=\"https://file.hstatic.net/200000223113/file/kem-duong-am-real-barrier-gel-cream-beauty-box_361e863b73f441378b76e7a4332c37df_1024x1024.jpg\" alt=\"Kem dưỡng &acirc;̉m Real Barrier Aqua Soothing Gel Cream - Beauty Box\" /></a></div>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: center;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\"><em style=\"box-sizing: border-box; font-family: var(--font-family);\">Các loại kem dưỡng &acirc;̉m từ Real Barrier, A\'Pieu, Goodal, cho đ&ecirc;́n Clinique, Paula\'s Choice, Trilogy, các bạn đ&ecirc;̀u có th&ecirc;̉ mua tại Beauty Box</em></span></p>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: center;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 22px;\">Bước 4: D&ugrave;ng kem chống nắng</span></p>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">Sử dụng th&ecirc;m kem chống nắng để hạn chế tối đa c&aacute;c t&aacute;c động xấu từ &aacute;nh nắng mặt trời l&ecirc;n da. Từ đ&oacute;, gi&uacute;p giảm h&igrave;nh th&agrave;nh sạm th&acirc;m v&agrave; t&igrave;nh trạng l&atilde;o h&oacute;a da sớm.</span></p>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\">&nbsp;</p>', '2023-12-05 15:21:01.807239', 'cac-buoc-trang-diem-co-ban-danh-cho-nguoi-moi-hoc-makeup', 'thumb/baiviet4.webp', 'hiển thị', 1, 4);
INSERT INTO `store_baiviet` (`id`, `baivietTen`, `bvNoidung`, `bvNgaytao`, `bvDuongdan`, `bvThumb`, `bvTrangthai`, `bvTacgia_id`, `loaibaiviet_id`) VALUES
(7, '8 loại mỹ phẩm trang điểm cơ bản cho người mới bắt đầu', '<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">Với người bắt đầu học make up th&igrave; chuẩn bị mỹ phẩm đ&uacute;ng v&agrave; đủ kh&ocirc;ng phải điều dễ d&agrave;ng, ch&uacute;ng ta chỉ n&ecirc;n chuẩn bị những sản phẩm cơ bản v&agrave; dễ sử dụng trong thời gian đầu.</span></p>\r\n<h3 style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; font-weight: 500; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 22px;\">1. Kem l&oacute;t (Base)</span></h3>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">B&ocirc;i kem l&oacute;t l&agrave; một trong</span>&nbsp;<span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\"><span style=\"box-sizing: border-box; font-family: var(--font-family);\">c&aacute;c bước trang điểm cơ bản</span>&nbsp;nhất. N&oacute; gi&uacute;p tạo lớp bảo vệ cho l&agrave;n da bạn trước c&aacute;c chất c&oacute; hại trong c&aacute;c loại mỹ phẩm kh&aacute;c.</span></p>\r\n<h3 style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; font-weight: 500; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 22px;\">2. Kem nền (Foundation)</span></h3>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">Kem n&agrave;y gi&uacute;p bạn che đi c&aacute;c khuyết điểm nhỏ tr&ecirc;n da.&nbsp;<span style=\"box-sizing: border-box; font-family: var(--font-family); color: #2980b9;\"><a style=\"box-sizing: border-box; font-family: var(--font-family); text-decoration-line: none; background-color: transparent; outline: none; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation;\" href=\"https://beautybox.com.vn/blogs/cach-trang-diem/nhung-dieu-can-biet-ve-kem-nen\">Kem nền</a></span></span>&nbsp;<span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">c&oacute; nhiều dạng như: kem lỏng, kem đặc, bột,... Trường hợp bạn đ&atilde; c&oacute; l&agrave;n da đẹp th&igrave; chỉ cần d&ugrave;ng kem nền lỏng để tạo sự mềm mịn, tự nhi&ecirc;n.</span></p>\r\n<h3 style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; font-weight: 500; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 22px;\">3. Kem che khuyết điểm (Concealer)</span></h3>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">Loại kem n&agrave;y cũng gi&uacute;p l&agrave;m mờ c&aacute;c khuyết điểm tr&ecirc;n da như n&aacute;m, mụn th&acirc;m, t&agrave;n nhang,... Nếu mới học trang điểm, bạn chỉ cần chọn m&agrave;u kem che khuyết điểm nhẹ hơn một ch&uacute;t so với m&agrave;u kem nền l&agrave; được.</span></p>\r\n<h3 style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; font-weight: 500; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 22px;\">4. Phấn phủ (Powder)</span></h3>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">Nếu da bạn l&agrave; da dầu th&igrave; n&ecirc;n chọn phấn phủ dạng bột để h&uacute;t dầu nhờn tốt hơn. C&ograve;n nếu bạn c&oacute; l&agrave;n da b&igrave;nh thường th&igrave; n&ecirc;n chọn phấn phủ dạng n&eacute;n để tạo sự mềm mịn cho da.</span></p>\r\n<h3 style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; font-weight: 500; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 22px;\">5. Phấn m&aacute; hồng</span></h3>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">Đ&aacute;nh m&aacute; hồng l&agrave; c&ocirc;ng đoạn kh&ocirc;ng thể thiếu trong c&aacute;c bước trang điểm của chị em. N&ecirc;n chọn phấn m&aacute; hồng dựa tr&ecirc;n t&ocirc;ng m&agrave;u da để gương mặt tươi tắn, tự nhi&ecirc;n.</span></p>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">B&ecirc;n cạnh đó, bạn có th&ecirc;̉ dùng ph&acirc;́n má đ&ecirc;̉ trang đi&ecirc;̉m mắt. Vi&ecirc;̣c này có th&ecirc;̉ giúp bạn ti&ecirc;́t ki&ecirc;̣m chi phí mà \"cửa s&ocirc;̉ t&acirc;m h&ocirc;̀n\" v&acirc;̃n th&acirc;̣t n&ocirc;̉i b&acirc;̣t và tươi tắn.</span></p>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">Má h&ocirc;̀ng cực kỳ quan trọng trong makeup, bởi lớp n&ecirc;̀n của bạn sẽ tr&ocirc;ng nhợt nhạt n&ecirc;́u kh&ocirc;ng có loại mỹ ph&acirc;̉m này. Thời gian g&acirc;̀n đ&acirc;y, xu hướng trang đi&ecirc;̉m đang hướng đ&ecirc;́n phong cách tự nhi&ecirc;n, nhẹ nhàng và&nbsp;<span style=\"box-sizing: border-box; font-family: var(--font-family); font-weight: bolder;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); color: #2980b9;\"><a style=\"box-sizing: border-box; font-family: var(--font-family); text-decoration-line: none; background-color: transparent; outline: none; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation;\" href=\"https://beautybox.com.vn/collections/ma-hong?utm_source=blogs&amp;utm_medium=E1001331688\">má h&ocirc;̀ng</a></span></span>&nbsp;sẽ giúp \"no makeup makeup look\" của bạn tr&ocirc;ng rạng rỡ hơn.</span></p>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: center;\">&nbsp;</p>\r\n<div class=\"media-wrap image-wrap\" style=\"box-sizing: border-box; font-family: SVNMont, sans-serif;\"><a style=\"box-sizing: border-box; font-family: var(--font-family); text-decoration-line: none; background-color: transparent; outline: none; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; display: inline-block;\" href=\"https://beautybox.com.vn/collections/ma-hong?utm_source=blogs&amp;utm_medium=E1001331688\"><img style=\"box-sizing: border-box; font-family: var(--font-family); vertical-align: middle; border-style: none; margin: 0px; padding: 0px; display: block; max-width: 100%; width: 444px; border-radius: 20px; height: 653px; object-fit: contain;\" src=\"https://file.hstatic.net/200000223113/file/ma-hong-dear-dahlia-dual-palette-beauty-box_9fece7f5c87049288ca38ab1d52d0e56_1024x1024.jpg\" alt=\"Má h&ocirc;̀ng Dear Dahlia Bloom Edition Dual Palette Blusher - Beauty Box\" /></a></div>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: center;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\"><em style=\"box-sizing: border-box; font-family: var(--font-family);\">Beauty Box sở hữu b&ocirc;̣ sưu t&acirc;̣p má h&ocirc;̀ng cực kỳ đa dạng, từ dạng kem, dạng ph&acirc;́n nén, dạng lỏng, cho đ&ecirc;́n dạng thạch dẻo và dạng thỏi.</em></span></p>\r\n<h3 style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; font-weight: 500; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 22px;\">6. Ch&igrave; kẻ m&agrave;y</span></h3>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">Kẻ ch&acirc;n m&agrave;y gi&uacute;p khu&ocirc;n mặt tạo điểm nhấn tốt hơn. Đồng thời, đ&ocirc;i ch&acirc;n m&agrave;y đẹp cũng gi&uacute;p đ&ocirc;i mắt đẹp hơn, khu&ocirc;n mặt h&agrave;i ho&agrave; hơn.</span></p>\r\n<h3 style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; font-weight: 500; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 22px;\">7. B&uacute;t kẻ mắt (Eyeliner)</span></h3>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">Sử dụng b&uacute;t kẻ mắt gi&uacute;p đ&ocirc;i mắt to v&agrave; sắc n&eacute;t hơn. C&oacute; c&aacute;c dạng b&uacute;t ch&igrave;, b&uacute;t nước, v&agrave; mới bắt đầu trang điểm, bạn n&ecirc;n d&ugrave;ng b&uacute;t ch&igrave; để hạn chế tối đa những sai s&oacute;t.</span></p>\r\n<h3 style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; font-weight: 500; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 22px;\">8. Son m&ocirc;i (Lipstick)</span></h3>\r\n<p style=\"box-sizing: border-box; font-family: SVNMont, sans-serif; margin: auto auto 20px; padding: 0px; max-width: 768px; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: var(--font-family); font-size: 16px;\">Son m&ocirc;i sẽ gi&uacute;p gương mặt của bạn th&ecirc;m rạng rỡ, đ&ocirc;i m&ocirc;i tr&ocirc;ng đầy đặn hơn.</span></p>', '2023-12-05 15:24:56.402612', '8-loai-my-pham-trang-diem-co-ban-cho-nguoi-moi-bat-dau', 'thumb/trangdiem1.webp', 'bản nháp', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `store_cart`
--

CREATE TABLE `store_cart` (
  `id` bigint(20) NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ;

--
-- Dumping data for table `store_cart`
--

INSERT INTO `store_cart` (`id`, `quantity`, `product_id`, `user_id`) VALUES
(8, 1, 2, 6),
(9, 3, 3, 6),
(11, 2, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `store_ctlonhap`
--

CREATE TABLE `store_ctlonhap` (
  `id` bigint(20) NOT NULL,
  `soluongNhap` int(10) UNSIGNED NOT NULL CHECK (`soluongNhap` >= 0),
  `giaNhap` int(11) NOT NULL,
  `ngaysanxuat` date NOT NULL,
  `hansudung` date NOT NULL,
  `loNhap_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_ctlonhap`
--

INSERT INTO `store_ctlonhap` (`id`, `soluongNhap`, `giaNhap`, `ngaysanxuat`, `hansudung`, `loNhap_id`, `product_id`) VALUES
(1, 1000, 90000, '2023-07-05', '2025-04-16', 1, 2),
(2, 500, 10000, '2023-05-15', '2024-02-16', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `store_danhmucsanpham`
--

CREATE TABLE `store_danhmucsanpham` (
  `id` bigint(20) NOT NULL,
  `dmspTen` varchar(256) DEFAULT NULL,
  `dmspDuongdan` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_danhmucsanpham`
--

INSERT INTO `store_danhmucsanpham` (`id`, `dmspTen`, `dmspDuongdan`) VALUES
(1, 'Chăm sóc da', 'cham-soc-da'),
(2, 'Chăm sóc cơ thể', 'cham-soc-co-the'),
(3, 'Chăm sóc tóc', 'cham-soc-toc'),
(4, 'Trang điểm', 'trang-diem');

-- --------------------------------------------------------

--
-- Table structure for table `store_khachhang`
--

CREATE TABLE `store_khachhang` (
  `id` bigint(20) NOT NULL,
  `khTen` varchar(256) NOT NULL,
  `khDiachi` varchar(256) NOT NULL,
  `khThanhpho` varchar(256) NOT NULL,
  `khPhone` varchar(12) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_khachhang`
--

INSERT INTO `store_khachhang` (`id`, `khTen`, `khDiachi`, `khThanhpho`, `khPhone`, `user_id`) VALUES
(1, 'loanduong', '226D,đường 3/2, phường Hưng Lợi, quận Ninh Kiều', 'Cần Thơ', '0813371033', 6),
(2, 'loanduong', '226D,đường 3/2, phường Hưng Lợi, quận Ninh Kiều', 'Cần Thơ', '0813371033', 1),
(3, 'loanduong2', 'Đường Lý thái tổ, Thành phố Long Xuyên', 'AN GIANG', '0813371033', 6);

-- --------------------------------------------------------

--
-- Table structure for table `store_loaibaiviet`
--

CREATE TABLE `store_loaibaiviet` (
  `id` bigint(20) NOT NULL,
  `loaibaivietTen` varchar(20) NOT NULL,
  `lbvDuongdan` varchar(256) DEFAULT NULL,
  `lbvHinhanh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_loaibaiviet`
--

INSERT INTO `store_loaibaiviet` (`id`, `loaibaivietTen`, `lbvDuongdan`, `lbvHinhanh`) VALUES
(1, 'Chăm sóc da', 'cham-soc-da', 'thumb/bv_chamsocda.jpg'),
(2, 'Chăm sóc cơ thể', 'cham-soc-co-the', 'thumb/bv_chamsoccothe.jpg'),
(3, 'Chăm sóc tóc', 'cham-soc-toc', 'thumb/bv_chamsoctoc.jpg'),
(4, 'Trang điểm', 'trang-diem', 'thumb/bv_trangdiem.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `store_loaisanpham`
--

CREATE TABLE `store_loaisanpham` (
  `id` bigint(20) NOT NULL,
  `lspTen` varchar(256) DEFAULT NULL,
  `lspDuongdan` varchar(256) DEFAULT NULL,
  `dmsp_id` bigint(20) NOT NULL,
  `lspThumb` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_loaisanpham`
--

INSERT INTO `store_loaisanpham` (`id`, `lspTen`, `lspDuongdan`, `dmsp_id`, `lspThumb`) VALUES
(8, 'Kem chống nắng', 'kem-chong-nang', 1, 'product/kcn1_4KFb5pQ.jpg'),
(9, 'Son môi', 'son-moi', 4, 'product/sonmoi_vLev8xh.jpg'),
(10, 'Trang điểm mặt', 'trang-diem-mat', 4, 'product/trangdiem_lzY4xOh.png'),
(11, 'Kem dưỡng', 'kem-duong', 1, 'product/kemduongam_iWFoCW4.jpg'),
(12, 'Dầu gội', 'dau-goi', 3, 'product/daugoi_RaBZyXG.jpg'),
(13, 'Dầu xả', 'dau-xa', 3, 'product/dauxa_VPmt9HV.png'),
(14, 'Dưỡng tóc', 'duong-toc', 3, 'product/duongtoc_f14GoNz.jpg'),
(15, 'Mặt nạ', 'mat-na', 1, 'product/matna_qU3XDWM.jpg'),
(17, 'Trang điểm mắt', 'trang-diem-mat-1', 4, 'product/mat1_cAa5Mln.jpg'),
(18, 'Làm sạch cơ thể', 'lam-sach-co-the', 2, 'product/splamsachcothe_9RUlK9g.png'),
(19, 'Kem trị mụn', 'kem-tri-mun', 1, 'product/banner_trimun.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `store_lonhhap`
--

CREATE TABLE `store_lonhhap` (
  `id` bigint(20) NOT NULL,
  `ngayNhap` date NOT NULL,
  `ncc_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_lonhhap`
--

INSERT INTO `store_lonhhap` (`id`, `ngayNhap`, `ncc_id`) VALUES
(1, '2023-12-04', 3),
(2, '2023-11-23', 4);

-- --------------------------------------------------------

--
-- Table structure for table `store_orderplaced`
--

CREATE TABLE `store_orderplaced` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `ordered_date` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_orderplaced`
--

INSERT INTO `store_orderplaced` (`id`, `quantity`, `ordered_date`, `status`, `customer_id`, `product_id`, `user_id`) VALUES
(4, 1, '2023-11-30 15:01:17.057540', 'Đang xử lý', 1, 4, 6),
(5, 1, '2023-11-30 15:02:45.503483', 'Đang xử lý', 1, 2, 6),
(6, 3, '2023-11-30 15:02:45.513716', 'Đang xử lý', 1, 3, 6),
(7, 2, '2023-11-30 15:02:45.524483', 'Đang xử lý', 1, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `store_sanpham`
--

CREATE TABLE `store_sanpham` (
  `id` bigint(20) NOT NULL,
  `spTen` varchar(256) DEFAULT NULL,
  `spGioiThieu` longtext NOT NULL,
  `spCongdung` longtext NOT NULL,
  `spHuongdansudung` longtext NOT NULL,
  `spThanhphan` longtext NOT NULL,
  `spDongia` int(11) NOT NULL,
  `spHinhanh` varchar(100) NOT NULL,
  `lsp_id` bigint(20) NOT NULL,
  `spDuongdan` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_sanpham`
--

INSERT INTO `store_sanpham` (`id`, `spTen`, `spGioiThieu`, `spCongdung`, `spHuongdansudung`, `spThanhphan`, `spDongia`, `spHinhanh`, `lsp_id`, `spDuongdan`) VALUES
(2, 'Kem Chống Nắng Dưỡng Da Sunplay Skin Aqua', 'Sữa Chống Nắng Dưỡng Da Trắng Mịn Sunplay Skin Aqua Clear White Limited Editon SPF 50+, PA++++ (25g,PA++++ có khả năng bảo vệ da tối ưu khỏi tác động của tia UV.', '-  Chống nắng giữ ẩm \r\n- Dưỡng da trắng mịn tối ưu\r\n - Kiểm soát dầu \r\n- Chống nắng hiệu quả với SPF50+, PA++++ giúp ngăn ngừa đen sạm, nám, tàn nhang, cháy nắng. Giữ ẩm tối ưu cho da khi tiếp xúc với ánh nắng, dưỡng da trắng mịn.', '- Dùng hàng ngày, dành riêng cho mặt. - Lắc kỹ trước khi dùng. Thoa đều sản phẩm trước khi ra nắng. Dùng hàng ngày để bảo vệ da tốt nhất. Sau khi ra mồ hôi nhiều, thoa lại để có hiệu quả tốt hơn', '- Công nghệ Watery Capsule  - Ceramide Boost  - Vitamin C & B3', 101000, 'product/khnSkinaqua.jpg', 8, 'sua-chong-nang-duong-da-trang-min-sunplay-skin-aqua-clear-white-limited-editon-spf-50'),
(3, 'Mặt Nạ JMsolution Marine Luminous Pearl Deep Moisture', 'Mặt Nạ JMsolution Marine Luminous (28ml) - #Pearl Deep Moisture', 'Được chiết xuất từ Ngọc Trai và năng lượng nước biển sâu giúp tăng cường dưỡng ẩm cho da từ sâu bên trong, mang lại sức sống cho làn da và tạo hàng rào bảo vệ độ ẩm cho da giúp da luôn đủ ẩm, mịn màng.', '- Sau khi rửa mặt sạch với nước, lấy một lượng Step 1 Marine Waterful Essence đủ, thoa đều toàn bộ gương mặt. \r\n- Sử dụng mặt nạ Ngọc Trai Step 2 Marine Luminous Mask đắp lên toàn bộ gương mặt.', '- Chiết xuất từ ngọc trai', 18000, 'product/matnaJM.jpg', 15, 'mat-na-jmsolution-marine-luminous'),
(4, 'Mặt Nạ Giấy Dưỡng Da The SAEM Natural Sheet', 'Mặt Nạ Giấy Dưỡng Da the SAEM Natural Sheet (21ml).Mặt nạ the SAEM Natural Mask Sheet với 100% thành phần thiên nhiên giúp cung cấp độ ẩm cho làn da căng mịn và đầy sức sống. Mặt nạ làm từ chất liệu cellulose, mỏng chỉ 0.2mm giúp phát huy tối đa hiệu quả dưỡng da.', '#Aloe: chống lão hóa, se khít lỗ chân lông #Cucumber: cấp ẩm cho da tươi mới #Green tea: ngừa mụn, giảm nhờn #Gold Kiwi: dưỡng da khỏe #Tea tree: ngăn ngừa mụn, kháng khuẩn.', 'Lấy mặt nạ ra khỏi bao bì, trải ra và đắp lên mặt. Điều chỉnh miếng mặt nạ ôm khít khuôn mặt, tránh vùng mắt và môi. Bước 3: Để yên mặt nạ trên mặt và thư giãn khoảng 10-15 phút', 'Mặt nạ the SAEM Natural Mask Sheet với 100% thành phần thiên nhiên giúp cung cấp độ ẩm cho làn da căng mịn và đầy sức sống. Mặt nạ làm từ chất liệu cellulose, mỏng chỉ 0.2mm giúp phát huy tối đa hiệu quả dưỡng da.', 20000, 'product/matnaTheseam.jpg', 15, 'mat-na-giay-duong-da-the-saem'),
(5, 'Son Kem Lì 3CE Hazy Lip Clay (4g) - #Hipamine', 'Son Kem Lì 3CE Hazy Lip Clay (4g).Với một thiết kế độc đáo bởi vỏ son thuôn dài sang trọng với phần nắp cùng mặt sau của thân son được tráng một lớp gương bạc nổi bật, còn mặt trước lại được bo tròn với lớp vỏ cùng tone với màu son bên trong.', '- Chất son kem dạng mềm mịn như bơ, giúp son lên môi dễ dàng, có thể sử dụng nhiều lớp trên môi mà không sợ bị vón', '- Để son lên màu chuẩn và bám lâu có thể dùng thêm cọ môi để sử dụng hoặc thoa trực tiếp thỏi son lên môi.', 'Dimethicone, polybutene, dimethicone crosspolymer, isododecane, silica, synthetic fluorophlogopite, diisostearyl maleate, titanium dioxide, polyglyceryl-2triisostearate, pentaerythrityltetraethyl Hexanoate', 329000, 'product/sonmoi3CE.jpg', 9, 'son-kem-li-3ce-hazy-lip-clay'),
(6, 'Kem Chống Nắng Cho Da Dầu La Roche-Posay Anti-Shine', 'Kem Chống Nắng Cho Da Dầu La Roche-Posay Anti-Shine Anthelios UVMUNE 400 SPF50+ Oil Control Gel Cream (50ml).Hiệu quả kháng nước cao. Không để lại vệt trắng. Không có chất tạo mùi. Được kiểm nghiệm dưới sự giám sát của các chuyên gia da liễu. Chứa nước khoáng La Roche-Posay.', 'Kiểm soát bã nhờn và mồ hôi giúp mang đến một cảm giác “sạch” cho làn da đến 9h.\r\nDa được bảo vệ tối ưu khỏi tia UVA, UVB, tia hồng ngoại & tác hại từ ô nhiễm.\r\nPhù hợp cho da dầu và da nhờn', 'Thoa một lượng kem chống nắng vừa đủ lên mặt \r\n Thoa trước khi ra ngoài từ 20 - 30 phút', 'Công nghệ AIRLICIUM™: Các hạt phân tử siêu nhỏ với tác dụng thấm hút bã nhờn. Ngay lập tức thẩm thấu vào da và giúp kiểm soát tất cả các nguyên nhân khiến da nhờn bóng (bã nhờn, mồ hôi và độ ẩm).', 422000, 'product/kcn_larocheposay.jpg', 8, 'kem-chong-nang-cho-da-dau-la-roche-posay-anti-shine'),
(7, 'Kem Chống Nắng Cho Da Thường, Da Hỗn Hợp Eucerin  Sun Fluid', 'Kem Chống Nắng Cho Da Thường, Da Hỗn Hợp Eucerin Sun Fluid Mattifying Face SPF50+ (50ml).Eucerin Sun Fluid Mattifying Face SPF50+ là dòng sản phẩm  chống nắng da mặt đến từ thương hiệu dược mỹ phẩm Eucerin của Đức, với kết cấu dạng sữa lỏng nhẹ và không nhờn rít, lý tưởng dành cho da thường và da hỗn hợp', 'Licochalcone A chống oxy hoá, kháng viêm có nguồn gốc từ rễ cây cam thảo, giúp bảo vệ các tế bào da trước tác động của UVA, UVB, ức chế sự hình thành các gốc tự do, đặc biệt đem lại hiệu quả giảm tấy đỏ và dịu viêm ngứa tức thì.\r\n- Công thức Tinosorb S hình thành bộ lọc tia UVA/UVB thông minh, an toàn theo tiêu chuẩn Hiệp hội bảo vệ sức khỏe Châu Âu.', 'Dùng cho da thường và da nhạy cảm, da sáng, thoa đều sản phẩm lên da với lượng sản phẩm đủ để bảo vệ da (ví dụ một muỗng cà phê cho mặt và cổ). Thoa lại sau mỗi 2 giờ tiếp xúc với mặt trời hoặc sau khi tắm, đổ mồ hôi.', 'Aqua, Isodecyl Neopentanoate, Butylene Glycol Dicaprylate/Dicaprate, Isopropyl Palmitate, Octocrylene, Alcohol Denat, Methyl Methacrylate Crosspolymer, Butyl Methoxydibenzoylmethane, Titanium Dioxide (nano), Bis-Ethylhexyloxyphenol Methoxyphenyl Triazine', 559000, 'product/kcn_Eucerin.jpg', 8, 'kem-chong-nang-cho-da-thuong-da-hon-hop-eucerin-sun-fluid-mattifying'),
(8, 'Kem Chống Nắng Klairs Ẩm Mượt, Làm Dịu Da All-Day Airy', 'Kem Chống Nắng Klairs All-day Airy Sunscreen SPF50+ PA++++ là sản phẩm kem chống nắng phiên bản mới được thương hiệu Dear,Klairs cho ra mắt chính thức vào tháng 05/2022.', 'Bảo vệ da khỏi tia UVA, UVB.\r\n\r\n- Dưỡng sáng & làm đều màu da, kháng viêm, kiểm soát lượng dầu thừa trên da.\r\n\r\n- Cấp ẩm, làm dịu da.', 'Bôi lên da sau bước dưỡng da cuối cùng, thoa lên toàn bộ khuôn mặt.\r\n\r\n- Bôi tối thiểu 15 phút trước khi ra nắng.\r\n\r\n- Nên thoa lại sau mỗi 3 giờ để hiệu quả bảo vệ tốt nhất.', 'Màng lọc chống nắng hóa học hữu cơ (Diethylamino Hydroxybenzoyl Hexyl Benzoate, Polysilicone-15, Ethylhexyl Triazone, Bis-Ethylhexyloxyphenol Methoxyphenyl Triazine)', 312000, 'product/kcn_klairs.jpg', 8, 'kem-chong-nang-klairs-am-muot-lam-diu-da-all-day-airy'),
(9, 'Bộ Dầu Gội Hairburst Shampoo & Conditioner For Longer Stronger Hair', 'Bộ Dầu Gội & Dầu Xả Hairburst Shampoo & Conditioner For Longer Stronger Hair sẽ là sự lựa chọn lý tưởng dành cho bạn. Không chỉ sở hữu công thức giàu dưỡng chất mà bộ sản phẩm này còn đảm bảo chứa các thành phần an toàn.', 'Sản phẩm giúp tăng cường dưỡng chất cho tóc, nuôi dưỡng và thúc đẩy tóc tóc phát triển khỏe mạnh hơn. Cải thiện hiệu quả các vấn đề về khô xơ, gãy rụng và chẻ ngọn. \r\nThành phần chiết xuất từ quả bơ và dừa, giúp bổ sung độ ẩm cho mái tóc. Mang đến sức sống và sự óng ả đáng mơ ước cho mái tóc.', '- Làm ướt tóc với nước sạch \r\n\r\n- Lấy 1 lượng dầu gội vừa đủ và tạo bọt. Sau đó dùng đầu ngón tay để làm sạch tóc & xả lại với nước sạch.\r\n\r\n- Sau đó lấy 1 lượng vừa đủ dầu xả apply lên ngọn tóc. Massage & vuốt nhẹ nhàng để cho dầu xả thấm vào sợi tóc\r\n\r\n- Cuối cùng, xả lại với nước sạch và hoàn thiện bước gội đầu.', 'Xuất xứ: Anh Quốc \r\nThương hiệu: Hairburst', 655000, 'product/217-hairburst-4.png', 12, 'bo-dau-goi-hairburst-shampoo-conditioner-for-longer-stronger-hair');

-- --------------------------------------------------------

--
-- Table structure for table `store_supplier`
--

CREATE TABLE `store_supplier` (
  `id` bigint(20) NOT NULL,
  `nccTen` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_supplier`
--

INSERT INTO `store_supplier` (`id`, `nccTen`) VALUES
(1, 'Công ty nhập khẩu dược mỹ phẩm Dermafirm Hàn Quốc'),
(2, 'Công Ty TNHH Thương Mại Và Đầu Tư Xuất Nhập khẩu Việt Nam'),
(3, 'CÔNG TY TNHH HASAKI BEAUTY & S.P.A'),
(4, 'Rohto Mentholatum Vietnam');

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
-- Indexes for table `store_baiviet`
--
ALTER TABLE `store_baiviet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bvDuongdan` (`bvDuongdan`),
  ADD KEY `store_baiviet_bvTacgia_id_ebca3e5e_fk_auth_user_id` (`bvTacgia_id`),
  ADD KEY `store_baiviet_loaibaiviet_id_5e82769a_fk_store_loaibaiviet_id` (`loaibaiviet_id`);

--
-- Indexes for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_cart_user_id_99e99107_fk_auth_user_id` (`user_id`),
  ADD KEY `store_cart_product_id_b219c080_fk_store_sanpham_id` (`product_id`);

--
-- Indexes for table `store_ctlonhap`
--
ALTER TABLE `store_ctlonhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_ctlonhap_loNhap_id_98e6b402_fk_store_lonhhap_id` (`loNhap_id`),
  ADD KEY `store_ctlonhap_product_id_d81d293a_fk_store_sanpham_id` (`product_id`);

--
-- Indexes for table `store_danhmucsanpham`
--
ALTER TABLE `store_danhmucsanpham`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dmspDuongdan` (`dmspDuongdan`);

--
-- Indexes for table `store_khachhang`
--
ALTER TABLE `store_khachhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_khachhang_user_id_5be78156` (`user_id`);

--
-- Indexes for table `store_loaibaiviet`
--
ALTER TABLE `store_loaibaiviet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lbvDuongdan` (`lbvDuongdan`);

--
-- Indexes for table `store_loaisanpham`
--
ALTER TABLE `store_loaisanpham`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lspDuongdan` (`lspDuongdan`),
  ADD KEY `store_loaisanpham_dmsp_id_a771469b_fk_store_danhmucsanpham_id` (`dmsp_id`);

--
-- Indexes for table `store_lonhhap`
--
ALTER TABLE `store_lonhhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_lonhhap_ncc_id_4c707a58_fk_store_supplier_id` (`ncc_id`);

--
-- Indexes for table `store_orderplaced`
--
ALTER TABLE `store_orderplaced`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_orderplaced_customer_id_31b549d9_fk_store_khachhang_id` (`customer_id`),
  ADD KEY `store_orderplaced_product_id_a79e1f35_fk_store_sanpham_id` (`product_id`),
  ADD KEY `store_orderplaced_user_id_0390d005_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_sanpham`
--
ALTER TABLE `store_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `spDuongdan` (`spDuongdan`),
  ADD KEY `store_sanpham_lsp_id_71660859_fk_store_loaisanpham_id` (`lsp_id`);

--
-- Indexes for table `store_supplier`
--
ALTER TABLE `store_supplier`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `store_baiviet`
--
ALTER TABLE `store_baiviet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `store_cart`
--
ALTER TABLE `store_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_ctlonhap`
--
ALTER TABLE `store_ctlonhap`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_danhmucsanpham`
--
ALTER TABLE `store_danhmucsanpham`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_khachhang`
--
ALTER TABLE `store_khachhang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_loaibaiviet`
--
ALTER TABLE `store_loaibaiviet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_loaisanpham`
--
ALTER TABLE `store_loaisanpham`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `store_lonhhap`
--
ALTER TABLE `store_lonhhap`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_orderplaced`
--
ALTER TABLE `store_orderplaced`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `store_sanpham`
--
ALTER TABLE `store_sanpham`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store_supplier`
--
ALTER TABLE `store_supplier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Constraints for table `store_baiviet`
--
ALTER TABLE `store_baiviet`
  ADD CONSTRAINT `store_baiviet_bvTacgia_id_ebca3e5e_fk_auth_user_id` FOREIGN KEY (`bvTacgia_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `store_baiviet_loaibaiviet_id_5e82769a_fk_store_loaibaiviet_id` FOREIGN KEY (`loaibaiviet_id`) REFERENCES `store_loaibaiviet` (`id`);

--
-- Constraints for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD CONSTRAINT `store_cart_product_id_b219c080_fk_store_sanpham_id` FOREIGN KEY (`product_id`) REFERENCES `store_sanpham` (`id`),
  ADD CONSTRAINT `store_cart_user_id_99e99107_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_ctlonhap`
--
ALTER TABLE `store_ctlonhap`
  ADD CONSTRAINT `store_ctlonhap_loNhap_id_98e6b402_fk_store_lonhhap_id` FOREIGN KEY (`loNhap_id`) REFERENCES `store_lonhhap` (`id`),
  ADD CONSTRAINT `store_ctlonhap_product_id_d81d293a_fk_store_sanpham_id` FOREIGN KEY (`product_id`) REFERENCES `store_sanpham` (`id`);

--
-- Constraints for table `store_khachhang`
--
ALTER TABLE `store_khachhang`
  ADD CONSTRAINT `store_khachhang_user_id_5be78156_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_loaisanpham`
--
ALTER TABLE `store_loaisanpham`
  ADD CONSTRAINT `store_loaisanpham_dmsp_id_a771469b_fk_store_danhmucsanpham_id` FOREIGN KEY (`dmsp_id`) REFERENCES `store_danhmucsanpham` (`id`);

--
-- Constraints for table `store_lonhhap`
--
ALTER TABLE `store_lonhhap`
  ADD CONSTRAINT `store_lonhhap_ncc_id_4c707a58_fk_store_supplier_id` FOREIGN KEY (`ncc_id`) REFERENCES `store_supplier` (`id`);

--
-- Constraints for table `store_orderplaced`
--
ALTER TABLE `store_orderplaced`
  ADD CONSTRAINT `store_orderplaced_customer_id_31b549d9_fk_store_khachhang_id` FOREIGN KEY (`customer_id`) REFERENCES `store_khachhang` (`id`),
  ADD CONSTRAINT `store_orderplaced_product_id_a79e1f35_fk_store_sanpham_id` FOREIGN KEY (`product_id`) REFERENCES `store_sanpham` (`id`),
  ADD CONSTRAINT `store_orderplaced_user_id_0390d005_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_sanpham`
--
ALTER TABLE `store_sanpham`
  ADD CONSTRAINT `store_sanpham_lsp_id_71660859_fk_store_loaisanpham_id` FOREIGN KEY (`lsp_id`) REFERENCES `store_loaisanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
