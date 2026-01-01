-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 01, 2026 at 03:51 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE IF NOT EXISTS `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('018236a76184f3e31f4633da12484a00e35579ce', '2026-01-01 06:16:41.298533', 3),
('8532258633bed87ba7fe241d47b96c7b7518d5d7', '2025-12-29 16:38:44.262333', 1),
('86b5db9332c64138fee83592d2a933db9b5604a6', '2025-12-30 18:46:39.923335', 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 3, 'add_permission'),
(6, 'Can change permission', 3, 'change_permission'),
(7, 'Can delete permission', 3, 'delete_permission'),
(8, 'Can view permission', 3, 'view_permission'),
(9, 'Can add group', 2, 'add_group'),
(10, 'Can change group', 2, 'change_group'),
(11, 'Can delete group', 2, 'delete_group'),
(12, 'Can view group', 2, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add Token', 6, 'add_token'),
(22, 'Can change Token', 6, 'change_token'),
(23, 'Can delete Token', 6, 'delete_token'),
(24, 'Can view Token', 6, 'view_token'),
(25, 'Can add Token', 7, 'add_tokenproxy'),
(26, 'Can change Token', 7, 'change_tokenproxy'),
(27, 'Can delete Token', 7, 'delete_tokenproxy'),
(28, 'Can view Token', 7, 'view_tokenproxy'),
(29, 'Can add user profile', 9, 'add_userprofile'),
(30, 'Can change user profile', 9, 'change_userprofile'),
(31, 'Can delete user profile', 9, 'delete_userprofile'),
(32, 'Can view user profile', 9, 'view_userprofile'),
(33, 'Can add test result', 8, 'add_testresult'),
(34, 'Can change test result', 8, 'change_testresult'),
(35, 'Can delete test result', 8, 'delete_testresult'),
(36, 'Can view test result', 8, 'view_testresult'),
(37, 'Can add generated quiz', 10, 'add_generatedquiz'),
(38, 'Can change generated quiz', 10, 'change_generatedquiz'),
(39, 'Can delete generated quiz', 10, 'delete_generatedquiz'),
(40, 'Can view generated quiz', 10, 'view_generatedquiz'),
(41, 'Can add question', 13, 'add_question'),
(42, 'Can change question', 13, 'change_question'),
(43, 'Can delete question', 13, 'delete_question'),
(44, 'Can view question', 13, 'view_question'),
(45, 'Can add user result', 15, 'add_userresult'),
(46, 'Can change user result', 15, 'change_userresult'),
(47, 'Can delete user result', 15, 'delete_userresult'),
(48, 'Can view user result', 15, 'view_userresult'),
(49, 'Can add learning path', 11, 'add_learningpath'),
(50, 'Can change learning path', 11, 'change_learningpath'),
(51, 'Can delete learning path', 11, 'delete_learningpath'),
(52, 'Can view learning path', 11, 'view_learningpath'),
(53, 'Can add module', 12, 'add_module'),
(54, 'Can change module', 12, 'change_module'),
(55, 'Can delete module', 12, 'delete_module'),
(56, 'Can view module', 12, 'view_module'),
(57, 'Can add user progress', 14, 'add_userprogress'),
(58, 'Can change user progress', 14, 'change_userprogress'),
(59, 'Can delete user progress', 14, 'delete_userprogress'),
(60, 'Can view user progress', 14, 'view_userprogress');

-- --------------------------------------------------------

--
-- Table structure for table `core_testresult`
--

DROP TABLE IF EXISTS `core_testresult`;
CREATE TABLE IF NOT EXISTS `core_testresult` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `score` int NOT NULL,
  `date_taken` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_testresult_user_id_f583bb94_fk_core_userprofile_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_userprofile`
--

DROP TABLE IF EXISTS `core_userprofile`;
CREATE TABLE IF NOT EXISTS `core_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `student_level` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `core_userprofile`
--

INSERT INTO `core_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `email`, `full_name`, `birth_date`, `student_level`, `is_active`, `is_staff`) VALUES
(1, 'pbkdf2_sha256$1200000$Tdpi3oebSoH1KlJfU3oV9G$XKk6sJqeIhr9a6GvhiV/9m1U3ATr3OiWy0MEC0rp+VE=', NULL, 1, 'admin@demo.com', 'System Administrator', '1995-01-01', NULL, 1, 1),
(2, 'pbkdf2_sha256$1200000$iMn4D4joTJ8u6NvmI7LY3I$MPoF45zrcT9RzO8WKscLa2GcjSTVp5wRDo7qoLnwWic=', NULL, 0, 'omr@demo.com', 'Omr', '2000-12-29', NULL, 1, 0),
(3, 'pbkdf2_sha256$1200000$DLILPxvmSUZE0IGKUuyiiG$qvAzO6eO7SEw7phljQL18GmYkg1MlRIQ10aTMApippo=', NULL, 0, 'moayed@demo.com', 'moayed', '2026-01-01', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_userprofile_groups`
--

DROP TABLE IF EXISTS `core_userprofile_groups`;
CREATE TABLE IF NOT EXISTS `core_userprofile_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userprofile_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_userprofile_groups_userprofile_id_group_id_850ef664_uniq` (`userprofile_id`,`group_id`),
  KEY `core_userprofile_groups_group_id_384230fa_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `core_userprofile_user_permissions`;
CREATE TABLE IF NOT EXISTS `core_userprofile_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userprofile_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_userprofile_user_pe_userprofile_id_permissio_99e366ea_uniq` (`userprofile_id`,`permission_id`),
  KEY `core_userprofile_use_permission_id_c90fc1a9_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_core_userprofile_id` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(6, 'authtoken', 'token'),
(7, 'authtoken', 'tokenproxy'),
(4, 'contenttypes', 'contenttype'),
(8, 'core', 'testresult'),
(9, 'core', 'userprofile'),
(10, 'quiz_api', 'generatedquiz'),
(11, 'quiz_api', 'learningpath'),
(12, 'quiz_api', 'module'),
(13, 'quiz_api', 'question'),
(14, 'quiz_api', 'userprogress'),
(15, 'quiz_api', 'userresult'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-12-29 06:24:55.504782'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-12-29 06:24:55.651608'),
(3, 'auth', '0001_initial', '2025-12-29 06:24:56.406037'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-12-29 06:24:56.534541'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-12-29 06:24:56.546437'),
(6, 'auth', '0004_alter_user_username_opts', '2025-12-29 06:24:56.557730'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-12-29 06:24:56.568664'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-12-29 06:24:56.572306'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-12-29 06:24:56.584505'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-12-29 06:24:56.595889'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-12-29 06:24:56.608453'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-12-29 06:24:56.640414'),
(13, 'auth', '0011_update_proxy_permissions', '2025-12-29 06:24:56.654612'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-12-29 06:24:56.667135'),
(15, 'core', '0001_initial', '2025-12-29 06:24:57.181660'),
(16, 'admin', '0001_initial', '2025-12-29 06:24:57.335645'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-12-29 06:24:57.347316'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-12-29 06:24:57.357811'),
(19, 'authtoken', '0001_initial', '2025-12-29 06:24:57.504034'),
(20, 'authtoken', '0002_auto_20160226_1747', '2025-12-29 06:24:57.535002'),
(21, 'authtoken', '0003_tokenproxy', '2025-12-29 06:24:57.539275'),
(22, 'authtoken', '0004_alter_tokenproxy_options', '2025-12-29 06:24:57.544973'),
(23, 'quiz_api', '0001_initial', '2025-12-29 06:24:57.860650'),
(24, 'quiz_api', '0002_remove_userresult_ai_analysis_json_question_q_type', '2025-12-29 06:24:57.933746'),
(25, 'quiz_api', '0003_learningpath_module_generatedquiz_module_and_more', '2025-12-29 06:24:58.435635'),
(26, 'quiz_api', '0004_generatedquiz_user', '2025-12-29 06:24:58.523035'),
(27, 'quiz_api', '0005_rename_path_module_learning_path_and_more', '2025-12-29 06:24:58.710436'),
(28, 'sessions', '0001_initial', '2025-12-29 06:24:58.770738'),
(29, 'quiz_api', '0006_question_model_answer_question_question_type_and_more', '2026-01-01 07:05:53.943205');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_generatedquiz`
--

DROP TABLE IF EXISTS `quiz_api_generatedquiz`;
CREATE TABLE IF NOT EXISTS `quiz_api_generatedquiz` (
  `quiz_id` char(32) NOT NULL,
  `language` varchar(50) NOT NULL,
  `initial_level` varchar(50) NOT NULL,
  `generated_at` datetime(6) NOT NULL,
  `module_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`quiz_id`),
  KEY `quiz_api_generatedquiz_module_id_85ed5c63_fk_quiz_api_module_id` (`module_id`),
  KEY `quiz_api_generatedquiz_user_id_4aeeedf4_fk_core_userprofile_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quiz_api_generatedquiz`
--

INSERT INTO `quiz_api_generatedquiz` (`quiz_id`, `language`, `initial_level`, `generated_at`, `module_id`, `user_id`) VALUES
('0bc321c727f44569b21ff1a0838d8cbe', 'html', 'Beginner', '2026-01-01 11:34:20.661226', 1, 3),
('172da35e48e1436a868da1ec3fd9088e', 'html', 'Beginner', '2026-01-01 07:07:51.670499', 1, 3),
('398540391cf84555bbf94b5e9fdecea9', 'html', 'Beginner', '2026-01-01 11:04:24.354334', 1, 3),
('41a08a37320342bfb7794e8917242b13', 'html', 'Beginner', '2026-01-01 11:38:57.960101', 1, 3),
('655c06c49c4f42a29b85cae524866297', 'html', 'Beginner', '2025-12-30 19:21:26.863739', 1, 2),
('6c7a929b82d5455c87597458e3d87c0b', 'html', 'Beginner', '2026-01-01 10:40:58.648959', 1, 3),
('72f0eedf7f6b4452bd94f3c0a5d1ce3e', 'html', 'Beginner', '2026-01-01 10:58:25.276446', 1, 3),
('780edef0bc504551b328ac7c3c400b99', 'html', 'Beginner', '2026-01-01 07:01:33.105749', 1, 3),
('81829f73ccfc424fb9efd2af91fe5904', 'html', 'Beginner', '2026-01-01 10:55:10.853989', 1, 3),
('ad44fbbe8e8d466eb9b6769cb7d1a9bf', 'html', 'Beginner', '2026-01-01 07:00:06.592916', 1, 3),
('ae64ee9f2cce49fda6bcfb2ae42ce5a7', 'html', 'Beginner', '2026-01-01 11:13:27.563613', 1, 3),
('b7cf67919a634c47b05864138f7d40d1', 'html', 'Intermediate', '2026-01-01 11:01:50.331520', 1, 3),
('de5cfd95a42c4636985cdf1772741d45', 'html', 'Beginner', '2026-01-01 11:15:06.504808', 1, 3),
('ffff79522c96437bad9fa072e236df65', 'html', 'Intermediate', '2026-01-01 11:20:16.335724', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_learningpath`
--

DROP TABLE IF EXISTS `quiz_api_learningpath`;
CREATE TABLE IF NOT EXISTS `quiz_api_learningpath` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quiz_api_learningpath`
--

INSERT INTO `quiz_api_learningpath` (`id`, `name`, `description`, `created_at`, `is_active`) VALUES
(1, 'الفرونت اند', '', '2025-12-30 18:06:33.415866', 1),
(2, 'الباك اند', '', '2025-12-30 18:07:12.377056', 1),
(3, 'تطبيقات الموبايل ', '', '2026-01-01 14:07:40.196495', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_module`
--

DROP TABLE IF EXISTS `quiz_api_module`;
CREATE TABLE IF NOT EXISTS `quiz_api_module` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `order` int NOT NULL,
  `content_summary` longtext NOT NULL,
  `learning_path_id` bigint NOT NULL,
  `prerequisite_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_api_module_prerequisite_id_cc870469_fk_quiz_api_module_id` (`prerequisite_id`),
  KEY `quiz_api_module_learning_path_id_7bafa156_fk_quiz_api_` (`learning_path_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quiz_api_module`
--

INSERT INTO `quiz_api_module` (`id`, `name`, `order`, `content_summary`, `learning_path_id`, `prerequisite_id`) VALUES
(1, 'html', 1, 'وحدة تعليمية خاصة بـ html', 1, NULL),
(2, 'css', 2, 'وحدة تعليمية خاصة بـ css', 1, NULL),
(3, 'جافا سكريبت', 3, 'وحدة تعليمية خاصة بـ جافا سكريبت', 1, NULL),
(4, 'php', 1, 'وحدة تعليمية خاصة بـ php', 2, NULL),
(5, '.net', 2, 'وحدة تعليمية خاصة بـ .net', 2, NULL),
(6, 'react', 4, '', 1, 3),
(7, 'جافا ', 1, 'تعلم جافا  من الصفر', 3, NULL),
(8, 'xml', 2, 'تعلم xml من الصفر', 3, 7),
(9, 'دارت', 3, 'تعلم دارت من الصفر', 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_question`
--

DROP TABLE IF EXISTS `quiz_api_question`;
CREATE TABLE IF NOT EXISTS `quiz_api_question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_text` longtext NOT NULL,
  `options_json` json NOT NULL,
  `correct_answer` varchar(10) DEFAULT NULL,
  `quiz_id` char(32) NOT NULL,
  `q_type` varchar(20) NOT NULL,
  `model_answer` longtext,
  `question_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_api_question_quiz_id_fff5180a_fk_quiz_api_` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quiz_api_question`
--

INSERT INTO `quiz_api_question` (`id`, `question_text`, `options_json`, `correct_answer`, `quiz_id`, `q_type`, `model_answer`, `question_type`) VALUES
(1, 'What does HTML stand for?', '{\"a\": \"Hyperlink Transfer Markup Language\", \"b\": \"HyperText Markup Language\", \"c\": \"High-Tech Machine Learning\", \"d\": \"Human Text Manipulation Library\"}', '2', '655c06c49c4f42a29b85cae524866297', 'theory', NULL, 'multiple_choice'),
(2, 'Which of the following is a valid HTML tag for creating a hyperlink?', '{\"a\": \"<link>\", \"b\": \"<a>\", \"c\": \"<href>\", \"d\": \"<url>\"}', '2', '655c06c49c4f42a29b85cae524866297', 'theory', NULL, 'multiple_choice'),
(3, 'What is the purpose of the \'src\' attribute in an HTML <img> tag?', '{\"a\": \"Specifies a script to be executed on page load.\", \"b\": \"Defines the source file path for image content.\", \"c\": \"Creates a link between two web pages.\", \"d\": \"<img> does not support \'src\' attribute\"}', '2', '655c06c49c4f42a29b85cae524866297', 'theory', NULL, 'multiple_choice'),
(4, 'What is the correct syntax for embedding an external CSS file in HTML?', '{\"a\": \"<link rel=\'stylesheet\'>\", \"b\": \"<style src=\'styles.css\'></style>\", \"c\": \"<script type=\'text/css\'>\", \"d\": \"<link href=\'styles.css\' rel=\'stylesheet\'>\"}', '1', '655c06c49c4f42a29b85cae524866297', 'code', NULL, 'multiple_choice'),
(5, 'أين التعلم الإلكتروني يقدمها?', '{\"a\": \"في الخزانة\", \"b\": \"في البحث\", \"c\": \"في العرض الإلكتروني\", \"d\": \"في المشهد الأرضي\"}', '3', '172da35e48e1436a868da1ec3fd9088e', 'theory', NULL, 'multiple_choice'),
(6, 'أين يعقد لوحة التفاعل البشري؟', '{\"a\": \"في مكان السكاية\", \"b\": \"في مكان التخزین\", \"c\": \"في مكان العرض الإلكتروني\", \"d\": \"في مكان البحث\"}', 'None', '172da35e48e1436a868da1ec3fd9088e', 'theory', NULL, 'open_ended'),
(7, 'أين يعقد لوحة التفاعل البشري؟', '{\"a\": \"في مكان السكاية\", \"b\": \"في مكان التخزین\", \"c\": \"في مكان العرض الإلكتروني\", \"d\": \"في مكان البحث\"}', 'None', '172da35e48e1436a868da1ec3fd9088e', 'theory', NULL, 'multiple_choice'),
(8, 'أين يعقد لوحة التفاعل البشري؟', '{\"a\": \"في مكان السكاية\", \"b\": \"في مكان التخزین\", \"c\": \"في مكان العرض الإلكتروني\", \"d\": \"في مكان البحث\"}', 'None', '172da35e48e1436a868da1ec3fd9088e', 'theory', NULL, 'open_ended'),
(9, 'أين التعلم الإلكتروني؟', '{\"a\": \"المكان الحضري\", \"b\": \"المكان الإلكتروني\", \"c\": null, \"d\": null}', '2', '6c7a929b82d5455c87597458e3d87c0b', 'theory', NULL, 'multiple_choice'),
(10, 'أين يعقد المصانع الإلكتروني؟', '{\"a\": \"الخزانات\", \"b\": \"المكان الحضري\", \"c\": null, \"d\": null}', '1', '6c7a929b82d5455c87597458e3d87c0b', 'theory', NULL, 'multiple_choice'),
(11, 'أين تقع الخلفة المشتقة؟', '{\"a\": \"المكان الحضري\", \"b\": \"المكان الإلكتروني\", \"c\": null, \"d\": null}', '2', '6c7a929b82d5455c87597458e3d87c0b', 'theory', NULL, 'multiple_choice'),
(12, 'أين يعقد المصانع الإلكتروني؟', '{\"a\": \"الخزانات\", \"b\": \"المكان الحضري\", \"c\": null, \"d\": null}', 'None', '6c7a929b82d5455c87597458e3d87c0b', 'theory', NULL, 'open_ended'),
(13, 'أين التعلم الإلكتروني؟', '{\"a\": \"المكان الحضري\", \"b\": \"المكان الإلكتروني\", \"c\": \"المكان غير المعروف\", \"d\": \"هناك أخذ جديد\"}', '2', '81829f73ccfc424fb9efd2af91fe5904', 'theory', NULL, 'multiple_choice'),
(14, 'ما الوسيع الإلكتروني الذي يحتاج البرودة إلى أكثر؟', '{\"a\": \"1024x768\", \"b\": \"1920x1080\", \"c\": \"1366x768\", \"d\": \"1280x720\"}', '1', '81829f73ccfc424fb9efd2af91fe5904', 'theory', NULL, 'multiple_choice'),
(15, 'أين يمكن التعريف للبرودة؟', '{\"a\": null, \"b\": null, \"c\": null, \"d\": null}', 'None', '81829f73ccfc424fb9efd2af91fe5904', 'theory', NULL, 'open_ended'),
(16, 'كيف تعريف البناء للمخدة الإلكترونية؟', '{\"a\": \"<html>\\n<head>\\n</head>\\n<body>\\n\\n</body>\\n</html>\", \"b\": null, \"c\": null, \"d\": null}', '1', '81829f73ccfc424fb9efd2af91fe5904', 'code', NULL, 'multiple_choice'),
(17, 'أين التعلم الإلكتروني؟', '{\"a\": \"في المحلة\", \"b\": \"عبر الإنترنت\", \"c\": null, \"d\": null}', '2', '72f0eedf7f6b4452bd94f3c0a5d1ce3e', 'theory', NULL, 'multiple_choice'),
(18, 'أين يمكن الإعداد للمحتوى؟', '{\"a\": \"في هذا المكان\", \"b\": \"في خطة الإعداد\", \"c\": \"في برنامج التعلم\", \"d\": \"في حساب الأثر\"}', '2', '72f0eedf7f6b4452bd94f3c0a5d1ce3e', 'theory', NULL, 'multiple_choice'),
(19, 'ماذا يعني التعريف بـ \'HTML\'؟', '{\"a\": \"هولم حلم\", \"b\": \"الكشف الإلكتروني\", \"c\": \"الخطة الإلكترونية\", \"d\": null}', '3', '72f0eedf7f6b4452bd94f3c0a5d1ce3e', 'theory', NULL, 'multiple_choice'),
(20, 'ما الذي يعتبر أساسيًا لإنترنت الإلكتروني؟', '{\"a\": null, \"b\": null, \"c\": null, \"d\": null}', 'None', '72f0eedf7f6b4452bd94f3c0a5d1ce3e', 'theory', NULL, 'open_ended'),
(21, 'أين التعلم الإلكتروني؟', '{\"a\": \"البحث العلمي\", \"b\": \"الفيديو والإلتفجة\", \"c\": \"الخائفين\", \"d\": \"الكتابين\"}', '2', 'b7cf67919a634c47b05864138f7d40d1', 'theory', NULL, 'multiple_choice'),
(22, 'أين الخلفية؟', '{\"a\": \"المعنى الرسولي\", \"b\": \"المعنى التحدثي\", \"c\": \"المعنى الفهمي\", \"d\": \"المعنى الإلكتروني\"}', '3', 'b7cf67919a634c47b05864138f7d40d1', 'theory', NULL, 'multiple_choice'),
(23, 'أين الأخذاج؟', '{\"a\": \"المعنى الرسولي\", \"b\": \"المعنى التحدثي\", \"c\": \"المعنى الفهمي\", \"d\": \"المعنى الإلكتروني\"}', '1', 'b7cf67919a634c47b05864138f7d40d1', 'theory', NULL, 'multiple_choice'),
(24, 'أين البحث العلمي؟', '{\"a\": null, \"b\": null, \"c\": null, \"d\": null}', 'None', 'b7cf67919a634c47b05864138f7d40d1', 'theory', NULL, 'open_ended'),
(25, 'أين التعبير المعني الذي يُستخدمه في اللغة العربية؟', '{\"a\": \"المصادرة\", \"b\": \"الأرقام\", \"c\": null, \"d\": null}', '2', '398540391cf84555bbf94b5e9fdecea9', 'theory', NULL, 'multiple_choice'),
(26, 'إذن، المعلومات التي تحتوي على هيكل البرنامج المخصص للأطفال هي:', '{\"a\": \"<div class=\\\"game\\\">\", \"b\": \"<section id=\\\"child-game\\\" role=\\\"main\\\">\", \"c\": null, \"d\": null}', 'None', '398540391cf84555bbf94b5e9fdecea9', 'code', NULL, 'multiple_choice'),
(27, 'أين يمكن التعبير عن الاستفاقة؟', '{\"a\": null, \"b\": null, \"c\": null, \"d\": null}', 'None', '398540391cf84555bbf94b5e9fdecea9', 'theory', NULL, 'open_ended'),
(28, 'أين التعبير المعني الذي يُستخدمه في اللغة العربية؟', '{\"a\": \"المصادرة\", \"b\": \"الأرقام\", \"c\": null, \"d\": null}', '2', '398540391cf84555bbf94b5e9fdecea9', 'theory', NULL, 'multiple_choice'),
(29, 'ما الذي يعني <title>بيتك</title>?', '{\"a\": null, \"b\": null, \"c\": null, \"d\": null}', 'None', 'ae64ee9f2cce49fda6bcfb2ae42ce5a7', 'theory', NULL, 'multiple_choice'),
(30, 'أي من التطبيقات التالية غيرها للHTML؟', '{\"a\": null, \"b\": null, \"c\": null, \"d\": null}', 'None', 'ae64ee9f2cce49fda6bcfb2ae42ce5a7', 'theory', NULL, 'multiple_choice'),
(31, 'أي من التغذية التالية غيرها للHTML؟', '{\"a\": null, \"b\": null, \"c\": null, \"d\": null}', 'None', 'ae64ee9f2cce49fda6bcfb2ae42ce5a7', 'theory', NULL, 'multiple_choice'),
(32, 'ما الذي يعني <img src=\'image.jpg\' alt=\'A beautiful landscape\'>؟', '{\"a\": null, \"b\": null, \"c\": null, \"d\": null}', 'None', 'ae64ee9f2cce49fda6bcfb2ae42ce5a7', 'theory', NULL, 'multiple_choice'),
(33, 'ما الذي يعني <title>بيتك</title>?', '{\"a\": null, \"b\": null, \"c\": null, \"d\": null}', 'None', 'de5cfd95a42c4636985cdf1772741d45', 'theory', NULL, 'multiple_choice'),
(34, 'أي من الآتية التالية هي كلمة <meta charset=\"UTF-8\">?', '{\"a\": null, \"b\": null, \"c\": null, \"d\": null}', 'None', 'de5cfd95a42c4636985cdf1772741d45', 'theory', NULL, 'multiple_choice'),
(35, 'أي من الآتية التالية هي كلمة <link rel=\"stylesheet\" href=\"styles.css\">?', '{\"a\": null, \"b\": null, \"c\": null, \"d\": null}', 'None', 'de5cfd95a42c4636985cdf1772741d45', 'theory', NULL, 'multiple_choice'),
(36, 'ماه ذهب إليك؟', '{\"a\": null, \"b\": null, \"c\": null, \"d\": null}', 'None', 'de5cfd95a42c4636985cdf1772741d45', 'theory', NULL, 'multiple_choice');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_userprogress`
--

DROP TABLE IF EXISTS `quiz_api_userprogress`;
CREATE TABLE IF NOT EXISTS `quiz_api_userprogress` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_completed` tinyint(1) NOT NULL,
  `score` double NOT NULL,
  `level_achieved` varchar(20) NOT NULL,
  `last_attempt_date` datetime(6) NOT NULL,
  `module_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quiz_api_userprogress_user_id_module_id_a5e4054d_uniq` (`user_id`,`module_id`),
  KEY `quiz_api_userprogress_module_id_41538db0_fk_quiz_api_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_userresult`
--

DROP TABLE IF EXISTS `quiz_api_userresult`;
CREATE TABLE IF NOT EXISTS `quiz_api_userresult` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `score` int NOT NULL,
  `final_level` varchar(50) NOT NULL,
  `submitted_at` datetime(6) NOT NULL,
  `quiz_id` char(32) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_api_userresult_quiz_id_8a9df2aa_fk_quiz_api_` (`quiz_id`),
  KEY `quiz_api_userresult_user_id_879e2f0f_fk_core_userprofile_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_core_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`);

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
-- Constraints for table `core_testresult`
--
ALTER TABLE `core_testresult`
  ADD CONSTRAINT `core_testresult_user_id_f583bb94_fk_core_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`);

--
-- Constraints for table `core_userprofile_groups`
--
ALTER TABLE `core_userprofile_groups`
  ADD CONSTRAINT `core_userprofile_gro_userprofile_id_b21bcdce_fk_core_user` FOREIGN KEY (`userprofile_id`) REFERENCES `core_userprofile` (`id`),
  ADD CONSTRAINT `core_userprofile_groups_group_id_384230fa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `core_userprofile_user_permissions`
--
ALTER TABLE `core_userprofile_user_permissions`
  ADD CONSTRAINT `core_userprofile_use_permission_id_c90fc1a9_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `core_userprofile_use_userprofile_id_e6c8d79a_fk_core_user` FOREIGN KEY (`userprofile_id`) REFERENCES `core_userprofile` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_core_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`);

--
-- Constraints for table `quiz_api_generatedquiz`
--
ALTER TABLE `quiz_api_generatedquiz`
  ADD CONSTRAINT `quiz_api_generatedquiz_module_id_85ed5c63_fk_quiz_api_module_id` FOREIGN KEY (`module_id`) REFERENCES `quiz_api_module` (`id`),
  ADD CONSTRAINT `quiz_api_generatedquiz_user_id_4aeeedf4_fk_core_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`);

--
-- Constraints for table `quiz_api_module`
--
ALTER TABLE `quiz_api_module`
  ADD CONSTRAINT `quiz_api_module_learning_path_id_7bafa156_fk_quiz_api_` FOREIGN KEY (`learning_path_id`) REFERENCES `quiz_api_learningpath` (`id`),
  ADD CONSTRAINT `quiz_api_module_prerequisite_id_cc870469_fk_quiz_api_module_id` FOREIGN KEY (`prerequisite_id`) REFERENCES `quiz_api_module` (`id`);

--
-- Constraints for table `quiz_api_question`
--
ALTER TABLE `quiz_api_question`
  ADD CONSTRAINT `quiz_api_question_quiz_id_fff5180a_fk_quiz_api_` FOREIGN KEY (`quiz_id`) REFERENCES `quiz_api_generatedquiz` (`quiz_id`);

--
-- Constraints for table `quiz_api_userprogress`
--
ALTER TABLE `quiz_api_userprogress`
  ADD CONSTRAINT `quiz_api_userprogress_module_id_41538db0_fk_quiz_api_module_id` FOREIGN KEY (`module_id`) REFERENCES `quiz_api_module` (`id`),
  ADD CONSTRAINT `quiz_api_userprogress_user_id_e850d528_fk_core_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`);

--
-- Constraints for table `quiz_api_userresult`
--
ALTER TABLE `quiz_api_userresult`
  ADD CONSTRAINT `quiz_api_userresult_quiz_id_8a9df2aa_fk_quiz_api_` FOREIGN KEY (`quiz_id`) REFERENCES `quiz_api_generatedquiz` (`quiz_id`),
  ADD CONSTRAINT `quiz_api_userresult_user_id_879e2f0f_fk_core_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
