-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2022 at 08:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add acknowledgement', 7, 'add_acknowledgement'),
(26, 'Can change acknowledgement', 7, 'change_acknowledgement'),
(27, 'Can delete acknowledgement', 7, 'delete_acknowledgement'),
(28, 'Can view acknowledgement', 7, 'view_acknowledgement'),
(29, 'Can add department', 8, 'add_department'),
(30, 'Can change department', 8, 'change_department'),
(31, 'Can delete department', 8, 'delete_department'),
(32, 'Can view department', 8, 'view_department'),
(33, 'Can add hod', 9, 'add_hod'),
(34, 'Can change hod', 9, 'change_hod'),
(35, 'Can delete hod', 9, 'delete_hod'),
(36, 'Can view hod', 9, 'view_hod'),
(37, 'Can add pcomplaint', 10, 'add_pcomplaint'),
(38, 'Can change pcomplaint', 10, 'change_pcomplaint'),
(39, 'Can delete pcomplaint', 10, 'delete_pcomplaint'),
(40, 'Can view pcomplaint', 10, 'view_pcomplaint'),
(41, 'Can add principals', 11, 'add_principals'),
(42, 'Can change principals', 11, 'change_principals'),
(43, 'Can delete principals', 11, 'delete_principals'),
(44, 'Can view principals', 11, 'view_principals'),
(45, 'Can add prodetails', 12, 'add_prodetails'),
(46, 'Can change prodetails', 12, 'change_prodetails'),
(47, 'Can delete prodetails', 12, 'delete_prodetails'),
(48, 'Can view prodetails', 12, 'view_prodetails'),
(49, 'Can add staffcomplaint', 13, 'add_staffcomplaint'),
(50, 'Can change staffcomplaint', 13, 'change_staffcomplaint'),
(51, 'Can delete staffcomplaint', 13, 'delete_staffcomplaint'),
(52, 'Can view staffcomplaint', 13, 'view_staffcomplaint'),
(53, 'Can add stdcomplaint', 14, 'add_stdcomplaint'),
(54, 'Can change stdcomplaint', 14, 'change_stdcomplaint'),
(55, 'Can delete stdcomplaint', 14, 'delete_stdcomplaint'),
(56, 'Can view stdcomplaint', 14, 'view_stdcomplaint'),
(57, 'Can add students', 15, 'add_students'),
(58, 'Can change students', 15, 'change_students'),
(59, 'Can delete students', 15, 'delete_students'),
(60, 'Can view students', 15, 'view_students'),
(61, 'Can add teachers', 16, 'add_teachers'),
(62, 'Can change teachers', 16, 'change_teachers'),
(63, 'Can delete teachers', 16, 'delete_teachers'),
(64, 'Can view teachers', 16, 'view_teachers');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(7, 'studentgrievence', 'acknowledgement'),
(8, 'studentgrievence', 'department'),
(9, 'studentgrievence', 'hod'),
(10, 'studentgrievence', 'pcomplaint'),
(11, 'studentgrievence', 'principals'),
(12, 'studentgrievence', 'prodetails'),
(13, 'studentgrievence', 'staffcomplaint'),
(14, 'studentgrievence', 'stdcomplaint'),
(15, 'studentgrievence', 'students'),
(16, 'studentgrievence', 'teachers');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-07-21 14:40:28.863135'),
(2, 'auth', '0001_initial', '2022-07-21 14:40:30.388625'),
(3, 'admin', '0001_initial', '2022-07-21 14:40:30.708767'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-07-21 14:40:30.717909'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-07-21 14:40:30.742830'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-07-21 14:40:31.016752'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-07-21 14:40:31.150766'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-07-21 14:40:31.282329'),
(9, 'auth', '0004_alter_user_username_opts', '2022-07-21 14:40:31.308803'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-07-21 14:40:31.413859'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-07-21 14:40:31.430662'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-07-21 14:40:31.446771'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-07-21 14:40:31.553975'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-07-21 14:40:31.678698'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-07-21 14:40:31.801474'),
(16, 'auth', '0011_update_proxy_permissions', '2022-07-21 14:40:31.824378'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-07-21 14:40:31.991188'),
(18, 'sessions', '0001_initial', '2022-07-21 14:40:32.145718'),
(19, 'studentgrievence', '0001_initial', '2022-07-21 14:40:33.010961');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('254sejjx0yr3jdk58wpq47u8q604qcuz', 'e30:1oGw2B:ss5r98z3g5yFitiqEY2NshaTzFPAWFtwbzCuu9NE_RY', '2022-08-11 05:26:07.700855'),
('4qe7svge7bcj1r7go6840wjxeci6aghi', '.eJyrVirNTFGyMtVRKs1LzE1VslJKKcpPz89TAgqk5iZm5oBFEtMd0kEcveT8XJBMcWoRUBxM1QIAyXwVpw:1oSddb:hg9yqY_B3SlcmDMBB0ICQSw4qn5LZqhMOZEyRbWR6rI', '2022-09-12 12:13:07.159797'),
('8dfhsu58s4dd1v7s063hwrrqmh5gqzfd', '.eJyrVirNTFGyMtZRKs1LzE1VslJyLC7PzFNwzMvMzc9TAgqn5iZm5gDFE0HiDumJuZk5esn5uSCp4tQioASYqgUAbMQYJA:1ob1yo:e6NLtF0J9WRk_TW-N_sOIy3OlKPnqpAFiiKJ0Gzpw4Y', '2022-10-05 15:49:42.170214'),
('cn5pkax4g8c22tjxcs1ynm90wmjhawp3', 'e30:1oY07z:aRAgYK3RZcD8zAmhBUb5o1_xGupWplYlraoArtmYVTg', '2022-09-27 07:14:39.130545'),
('ymyekdvflz9roeedgqteqe50j5h4d6if', 'e30:1oH2RL:5e1HABzIB6YYnJquaIXhR0zQMxCaNIakEN_avbmbfwU', '2022-08-11 12:16:31.993582'),
('zqnzqsgdzm9p891lczg1o8s5mattcm0f', 'e30:1oEXwR:kuSoZdGuXSOOAfCE6u4btWWVLlLBx_sQfFZpa1oWxx0', '2022-08-04 15:18:19.400741');

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievance_acknowledgement`
--

CREATE TABLE `studentgrievance_acknowledgement` (
  `id` bigint(20) NOT NULL,
  `ack` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `h_id` varchar(150) NOT NULL,
  `p_id` varchar(150) NOT NULL,
  `t_id` varchar(150) NOT NULL,
  `cid` varchar(150) NOT NULL,
  `uid` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievance_department`
--

CREATE TABLE `studentgrievance_department` (
  `id` bigint(20) NOT NULL,
  `department` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentgrievance_department`
--

INSERT INTO `studentgrievance_department` (`id`, `department`) VALUES
(5, 'CE'),
(6, 'ME'),
(7, 'MARINE');

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievance_hod`
--

CREATE TABLE `studentgrievance_hod` (
  `id` bigint(20) NOT NULL,
  `p_name` varchar(150) NOT NULL,
  `p_email` varchar(150) NOT NULL,
  `p_phone` varchar(150) NOT NULL,
  `p_password` varchar(150) NOT NULL,
  `depart` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievance_pcomplaint`
--

CREATE TABLE `studentgrievance_pcomplaint` (
  `id` bigint(20) NOT NULL,
  `complaint` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `uid` varchar(150) NOT NULL,
  `princy` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievance_principals`
--

CREATE TABLE `studentgrievance_principals` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentgrievance_principals`
--

INSERT INTO `studentgrievance_principals` (`id`, `name`, `phone`, `email`, `password`) VALUES
(2, 'S Jose', '9876567809', 'sjose@aisat.ac.in', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievance_staffcomplaint`
--

CREATE TABLE `studentgrievance_staffcomplaint` (
  `id` bigint(20) NOT NULL,
  `complaint` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `uid` varchar(150) NOT NULL,
  `princy` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievance_stdcomplaint`
--

CREATE TABLE `studentgrievance_stdcomplaint` (
  `id` bigint(20) NOT NULL,
  `complaint` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `uid` varchar(150) NOT NULL,
  `hod` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievance_students`
--

CREATE TABLE `studentgrievance_students` (
  `id` bigint(20) NOT NULL,
  `st_name` varchar(150) NOT NULL,
  `st_email` varchar(150) NOT NULL,
  `st_department` varchar(150) NOT NULL,
  `st_semester` varchar(150) NOT NULL,
  `st_phone` varchar(150) NOT NULL,
  `st_password` varchar(150) NOT NULL,
  `st_cpassword` varchar(150) NOT NULL,
  `st_fathername` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentgrievance_students`
--

INSERT INTO `studentgrievance_students` (`id`, `st_name`, `st_email`, `st_department`, `st_semester`, `st_phone`, `st_password`, `st_cpassword`, `st_fathername`) VALUES
(3, 'Aswin Animon', 'aswin@gamil.com', 'CSE', '6', '9576867532', '1234', '1234', 'Animon Antony');

-- --------------------------------------------------------

--
-- Table structure for table `studentgrievance_teachers`
--

CREATE TABLE `studentgrievance_teachers` (
  `id` bigint(20) NOT NULL,
  `t_name` varchar(150) NOT NULL,
  `t_email` varchar(150) NOT NULL,
  `t_department` varchar(150) NOT NULL,
  `t_semester` varchar(150) NOT NULL,
  `t_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentgrievance_teachers`
--

INSERT INTO `studentgrievance_teachers` (`id`, `t_name`, `t_email`, `t_department`, `t_semester`, `t_password`) VALUES
(3, 'Sebin', 'sebin@aisat.in', 'CSE', '6', '1234'),
(4, 'Renjini', 'renjini@aisat.in', 'CSE', '4', '1234'),
(5, 'Neeraj', 'neeraj@aisat.ac.in', 'CE', '6', '1234'),
(6, 'MEE', 'mee@gmail.com', 'ME', '6', '1234'),
(7, 'Ma', 'ma@aisat.ac.in', 'MARINE', '4', '1234'),
(8, 'Teenu', 'teenu@aisat.ac.in', 'CSE', '7', '123456');

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
-- Indexes for table `studentgrievance_acknowledgement`
--
ALTER TABLE `studentgrievance_acknowledgement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentgrievance_department`
--
ALTER TABLE `studentgrievance_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentgrievance_hod`
--
ALTER TABLE `studentgrievance_hod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentgrievance_pcomplaint`
--
ALTER TABLE `studentgrievance_pcomplaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentgrievance_principals`
--
ALTER TABLE `studentgrievance_principals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentgrievance_staffcomplaint`
--
ALTER TABLE `studentgrievance_staffcomplaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentgrievance_stdcomplaint`
--
ALTER TABLE `studentgrievance_stdcomplaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentgrievance_students`
--
ALTER TABLE `studentgrievance_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentgrievance_teachers`
--
ALTER TABLE `studentgrievance_teachers`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `studentgrievance_acknowledgement`
--
ALTER TABLE `studentgrievance_acknowledgement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `studentgrievance_department`
--
ALTER TABLE `studentgrievance_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `studentgrievance_hod`
--
ALTER TABLE `studentgrievance_hod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `studentgrievance_pcomplaint`
--
ALTER TABLE `studentgrievance_pcomplaint`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `studentgrievance_principals`
--
ALTER TABLE `studentgrievance_principals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `studentgrievance_staffcomplaint`
--
ALTER TABLE `studentgrievance_staffcomplaint`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `studentgrievance_stdcomplaint`
--
ALTER TABLE `studentgrievance_stdcomplaint`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `studentgrievance_students`
--
ALTER TABLE `studentgrievance_students`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `studentgrievance_teachers`
--
ALTER TABLE `studentgrievance_teachers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
