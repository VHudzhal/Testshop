-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 22 2021 г., 15:27
-- Версия сервера: 8.0.19
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wpshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'action_scheduler/migration_hook', 'complete', '2021-05-20 13:03:24', '2021-05-20 13:03:24', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621515804;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621515804;}', 1, 1, '2021-05-20 13:04:40', '2021-05-20 16:04:40', 0, NULL),
(7, 'adjust_download_permissions', 'complete', '2021-05-20 13:14:48', '2021-05-20 13:14:48', '[13]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621516488;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621516488;}', 0, 1, '2021-05-20 13:15:31', '2021-05-20 16:15:31', 0, NULL),
(8, 'adjust_download_permissions', 'complete', '2021-05-20 13:16:19', '2021-05-20 13:16:19', '[13]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621516579;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621516579;}', 0, 1, '2021-05-20 13:16:50', '2021-05-20 16:16:50', 0, NULL),
(9, 'adjust_download_permissions', 'complete', '2021-05-20 13:17:00', '2021-05-20 13:17:00', '[13]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621516620;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621516620;}', 0, 1, '2021-05-20 13:17:28', '2021-05-20 16:17:28', 0, NULL),
(10, 'adjust_download_permissions', 'complete', '2021-05-20 13:17:41', '2021-05-20 13:17:41', '[13]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621516661;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621516661;}', 0, 1, '2021-05-20 13:18:12', '2021-05-20 16:18:12', 0, NULL),
(11, 'action_scheduler/migration_hook', 'complete', '2021-05-20 14:28:15', '2021-05-20 14:28:15', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621520895;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621520895;}', 1, 1, '2021-05-20 14:28:39', '2021-05-20 17:28:39', 0, NULL),
(12, 'action_scheduler/migration_hook', 'complete', '2021-05-21 14:09:58', '2021-05-21 14:09:58', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621606198;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621606198;}', 1, 1, '2021-05-21 14:10:11', '2021-05-21 17:10:11', 0, NULL),
(13, 'adjust_download_permissions', 'complete', '2021-05-21 16:52:12', '2021-05-21 16:52:12', '[13]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621615932;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621615932;}', 0, 1, '2021-05-21 16:52:28', '2021-05-21 19:52:28', 0, NULL),
(14, 'adjust_download_permissions', 'complete', '2021-05-21 17:12:36', '2021-05-21 17:12:36', '[55]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621617156;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621617156;}', 0, 1, '2021-05-21 17:13:21', '2021-05-21 20:13:21', 0, NULL),
(15, 'adjust_download_permissions', 'complete', '2021-05-21 17:13:24', '2021-05-21 17:13:24', '[55]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621617204;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621617204;}', 0, 1, '2021-05-21 17:13:27', '2021-05-21 20:13:27', 0, NULL),
(16, 'adjust_download_permissions', 'complete', '2021-05-21 17:13:29', '2021-05-21 17:13:29', '[55]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621617209;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621617209;}', 0, 1, '2021-05-21 17:13:36', '2021-05-21 20:13:36', 0, NULL),
(17, 'adjust_download_permissions', 'complete', '2021-05-21 17:13:40', '2021-05-21 17:13:40', '[55]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621617220;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621617220;}', 0, 1, '2021-05-21 17:13:44', '2021-05-21 20:13:44', 0, NULL),
(18, 'adjust_download_permissions', 'complete', '2021-05-21 17:13:45', '2021-05-21 17:13:45', '[55]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621617225;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621617225;}', 0, 1, '2021-05-21 17:13:52', '2021-05-21 20:13:52', 0, NULL),
(19, 'adjust_download_permissions', 'complete', '2021-05-21 17:21:07', '2021-05-21 17:21:07', '[61]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621617667;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621617667;}', 0, 1, '2021-05-21 17:21:19', '2021-05-21 20:21:19', 0, NULL),
(20, 'adjust_download_permissions', 'complete', '2021-05-21 17:21:40', '2021-05-21 17:21:40', '[61]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621617700;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621617700;}', 0, 1, '2021-05-21 17:21:53', '2021-05-21 20:21:53', 0, NULL),
(21, 'adjust_download_permissions', 'complete', '2021-05-21 17:22:32', '2021-05-21 17:22:32', '[61]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621617752;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621617752;}', 0, 1, '2021-05-21 17:23:07', '2021-05-21 20:23:07', 0, NULL),
(22, 'adjust_download_permissions', 'complete', '2021-05-21 17:23:41', '2021-05-21 17:23:41', '[65]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621617821;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621617821;}', 0, 1, '2021-05-21 17:24:26', '2021-05-21 20:24:26', 0, NULL),
(23, 'adjust_download_permissions', 'complete', '2021-05-21 17:24:34', '2021-05-21 17:24:34', '[65]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621617874;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621617874;}', 0, 1, '2021-05-21 17:24:45', '2021-05-21 20:24:45', 0, NULL),
(24, 'adjust_download_permissions', 'complete', '2021-05-21 17:25:08', '2021-05-21 17:25:08', '[65]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621617908;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621617908;}', 0, 1, '2021-05-21 17:25:16', '2021-05-21 20:25:16', 0, NULL),
(25, 'action_scheduler/migration_hook', 'complete', '2021-05-22 08:05:21', '2021-05-22 08:05:21', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621670721;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621670721;}', 1, 1, '2021-05-22 08:05:41', '2021-05-22 11:05:41', 0, NULL),
(26, 'action_scheduler/migration_hook', 'complete', '2021-05-22 08:08:13', '2021-05-22 08:08:13', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621670893;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621670893;}', 1, 1, '2021-05-22 08:08:36', '2021-05-22 11:08:36', 0, NULL),
(27, 'action_scheduler/migration_hook', 'complete', '2021-05-22 08:15:23', '2021-05-22 08:15:23', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621671323;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621671323;}', 1, 1, '2021-05-22 08:15:25', '2021-05-22 11:15:25', 0, NULL),
(28, 'action_scheduler/migration_hook', 'complete', '2021-05-22 08:45:44', '2021-05-22 08:45:44', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621673144;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621673144;}', 1, 1, '2021-05-22 08:46:00', '2021-05-22 11:46:00', 0, NULL),
(29, 'action_scheduler/migration_hook', 'complete', '2021-05-22 08:47:45', '2021-05-22 08:47:45', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621673265;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621673265;}', 1, 1, '2021-05-22 08:48:49', '2021-05-22 11:48:49', 0, NULL),
(30, 'action_scheduler/migration_hook', 'complete', '2021-05-22 09:17:45', '2021-05-22 09:17:45', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621675065;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621675065;}', 1, 1, '2021-05-22 09:17:50', '2021-05-22 12:17:50', 0, NULL),
(31, 'adjust_download_permissions', 'complete', '2021-05-22 11:59:10', '2021-05-22 11:59:10', '[13]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1621684750;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1621684750;}', 0, 1, '2021-05-22 11:59:16', '2021-05-22 14:59:16', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint UNSIGNED NOT NULL,
  `action_id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'action created', '2021-05-20 13:02:24', '2021-05-20 13:02:24'),
(2, 6, 'action started via Async Request', '2021-05-20 13:04:39', '2021-05-20 13:04:39'),
(3, 6, 'action complete via Async Request', '2021-05-20 13:04:40', '2021-05-20 13:04:40'),
(4, 7, 'action created', '2021-05-20 13:14:47', '2021-05-20 13:14:47'),
(5, 7, 'action started via WP Cron', '2021-05-20 13:15:31', '2021-05-20 13:15:31'),
(6, 7, 'action complete via WP Cron', '2021-05-20 13:15:31', '2021-05-20 13:15:31'),
(7, 8, 'action created', '2021-05-20 13:16:19', '2021-05-20 13:16:19'),
(8, 8, 'action started via Async Request', '2021-05-20 13:16:50', '2021-05-20 13:16:50'),
(9, 8, 'action complete via Async Request', '2021-05-20 13:16:50', '2021-05-20 13:16:50'),
(10, 9, 'action created', '2021-05-20 13:16:59', '2021-05-20 13:16:59'),
(11, 9, 'action started via WP Cron', '2021-05-20 13:17:28', '2021-05-20 13:17:28'),
(12, 9, 'action complete via WP Cron', '2021-05-20 13:17:28', '2021-05-20 13:17:28'),
(13, 10, 'action created', '2021-05-20 13:17:41', '2021-05-20 13:17:41'),
(14, 10, 'action started via Async Request', '2021-05-20 13:18:12', '2021-05-20 13:18:12'),
(15, 10, 'action complete via Async Request', '2021-05-20 13:18:12', '2021-05-20 13:18:12'),
(16, 11, 'action created', '2021-05-20 14:27:15', '2021-05-20 14:27:15'),
(17, 11, 'action started via WP Cron', '2021-05-20 14:28:36', '2021-05-20 14:28:36'),
(18, 11, 'action complete via WP Cron', '2021-05-20 14:28:38', '2021-05-20 14:28:38'),
(19, 12, 'action created', '2021-05-21 14:08:58', '2021-05-21 14:08:58'),
(20, 12, 'action started via Async Request', '2021-05-21 14:10:10', '2021-05-21 14:10:10'),
(21, 12, 'action complete via Async Request', '2021-05-21 14:10:11', '2021-05-21 14:10:11'),
(22, 13, 'action created', '2021-05-21 16:52:12', '2021-05-21 16:52:12'),
(23, 13, 'action started via WP Cron', '2021-05-21 16:52:26', '2021-05-21 16:52:26'),
(24, 13, 'action complete via WP Cron', '2021-05-21 16:52:28', '2021-05-21 16:52:28'),
(25, 14, 'action created', '2021-05-21 17:12:36', '2021-05-21 17:12:36'),
(26, 14, 'action started via WP Cron', '2021-05-21 17:13:20', '2021-05-21 17:13:20'),
(27, 14, 'action complete via WP Cron', '2021-05-21 17:13:21', '2021-05-21 17:13:21'),
(28, 15, 'action created', '2021-05-21 17:13:23', '2021-05-21 17:13:23'),
(29, 15, 'action started via Async Request', '2021-05-21 17:13:26', '2021-05-21 17:13:26'),
(30, 15, 'action complete via Async Request', '2021-05-21 17:13:27', '2021-05-21 17:13:27'),
(31, 16, 'action created', '2021-05-21 17:13:28', '2021-05-21 17:13:28'),
(32, 16, 'action started via Async Request', '2021-05-21 17:13:35', '2021-05-21 17:13:35'),
(33, 16, 'action complete via Async Request', '2021-05-21 17:13:36', '2021-05-21 17:13:36'),
(34, 17, 'action created', '2021-05-21 17:13:40', '2021-05-21 17:13:40'),
(35, 17, 'action started via Async Request', '2021-05-21 17:13:43', '2021-05-21 17:13:43'),
(36, 17, 'action complete via Async Request', '2021-05-21 17:13:44', '2021-05-21 17:13:44'),
(37, 18, 'action created', '2021-05-21 17:13:44', '2021-05-21 17:13:44'),
(38, 18, 'action started via Async Request', '2021-05-21 17:13:52', '2021-05-21 17:13:52'),
(39, 18, 'action complete via Async Request', '2021-05-21 17:13:52', '2021-05-21 17:13:52'),
(40, 19, 'action created', '2021-05-21 17:21:06', '2021-05-21 17:21:06'),
(41, 19, 'action started via WP Cron', '2021-05-21 17:21:19', '2021-05-21 17:21:19'),
(42, 19, 'action complete via WP Cron', '2021-05-21 17:21:19', '2021-05-21 17:21:19'),
(43, 20, 'action created', '2021-05-21 17:21:39', '2021-05-21 17:21:39'),
(44, 20, 'action started via Async Request', '2021-05-21 17:21:52', '2021-05-21 17:21:52'),
(45, 20, 'action complete via Async Request', '2021-05-21 17:21:53', '2021-05-21 17:21:53'),
(46, 21, 'action created', '2021-05-21 17:22:31', '2021-05-21 17:22:31'),
(47, 21, 'action started via Async Request', '2021-05-21 17:23:06', '2021-05-21 17:23:06'),
(48, 21, 'action complete via Async Request', '2021-05-21 17:23:07', '2021-05-21 17:23:07'),
(49, 22, 'action created', '2021-05-21 17:23:40', '2021-05-21 17:23:40'),
(50, 22, 'action started via WP Cron', '2021-05-21 17:24:23', '2021-05-21 17:24:23'),
(51, 22, 'action complete via WP Cron', '2021-05-21 17:24:26', '2021-05-21 17:24:26'),
(52, 23, 'action created', '2021-05-21 17:24:33', '2021-05-21 17:24:33'),
(53, 23, 'action started via Async Request', '2021-05-21 17:24:44', '2021-05-21 17:24:44'),
(54, 23, 'action complete via Async Request', '2021-05-21 17:24:45', '2021-05-21 17:24:45'),
(55, 24, 'action created', '2021-05-21 17:25:07', '2021-05-21 17:25:07'),
(56, 24, 'action started via WP Cron', '2021-05-21 17:25:15', '2021-05-21 17:25:15'),
(57, 24, 'action complete via WP Cron', '2021-05-21 17:25:16', '2021-05-21 17:25:16'),
(58, 25, 'action created', '2021-05-22 08:04:22', '2021-05-22 08:04:22'),
(59, 25, 'action started via Async Request', '2021-05-22 08:05:40', '2021-05-22 08:05:40'),
(60, 25, 'action complete via Async Request', '2021-05-22 08:05:41', '2021-05-22 08:05:41'),
(61, 26, 'action created', '2021-05-22 08:07:13', '2021-05-22 08:07:13'),
(62, 26, 'action started via WP Cron', '2021-05-22 08:08:35', '2021-05-22 08:08:35'),
(63, 26, 'action complete via WP Cron', '2021-05-22 08:08:36', '2021-05-22 08:08:36'),
(64, 27, 'action created', '2021-05-22 08:14:23', '2021-05-22 08:14:23'),
(65, 27, 'action started via Async Request', '2021-05-22 08:15:25', '2021-05-22 08:15:25'),
(66, 27, 'action complete via Async Request', '2021-05-22 08:15:25', '2021-05-22 08:15:25'),
(67, 28, 'action created', '2021-05-22 08:44:44', '2021-05-22 08:44:44'),
(68, 28, 'action started via WP Cron', '2021-05-22 08:45:56', '2021-05-22 08:45:56'),
(69, 28, 'action complete via WP Cron', '2021-05-22 08:45:59', '2021-05-22 08:45:59'),
(70, 29, 'action created', '2021-05-22 08:46:45', '2021-05-22 08:46:45'),
(71, 29, 'action started via WP Cron', '2021-05-22 08:48:47', '2021-05-22 08:48:47'),
(72, 29, 'action complete via WP Cron', '2021-05-22 08:48:49', '2021-05-22 08:48:49'),
(73, 30, 'action created', '2021-05-22 09:16:46', '2021-05-22 09:16:46'),
(74, 30, 'action started via Async Request', '2021-05-22 09:17:50', '2021-05-22 09:17:50'),
(75, 30, 'action complete via Async Request', '2021-05-22 09:17:50', '2021-05-22 09:17:50'),
(76, 31, 'action created', '2021-05-22 11:59:09', '2021-05-22 11:59:09'),
(77, 31, 'action started via WP Cron', '2021-05-22 11:59:15', '2021-05-22 11:59:15'),
(78, 31, 'action complete via WP Cron', '2021-05-22 11:59:15', '2021-05-22 11:59:15');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'rating', '4'),
(2, 2, 'verified', '0'),
(3, 2, '_ywar_imported', '60a7df57b7ce3'),
(4, 3, 'rating', '3'),
(5, 3, 'verified', '0'),
(6, 4, 'rating', '5'),
(7, 4, 'verified', '0'),
(8, 5, 'rating', '4'),
(9, 5, 'verified', '0'),
(10, 6, 'rating', '2'),
(11, 6, 'verified', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-05-20 15:57:52', '2021-05-20 12:57:52', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(2, 13, 'vladymyrlem', 'vovangud@gmail.com', 'http://testshop', '127.0.0.1', '2021-05-21 19:52:06', '2021-05-21 16:52:06', 'Good', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 YaBrowser/20.3.2.238 Yowser/2.5 Safari/537.36', 'review', 0, 1),
(3, 49, 'vladymyrlem', 'vovangud@gmail.com', 'http://testshop', '127.0.0.1', '2021-05-22 11:11:23', '2021-05-22 08:11:23', 'dsfsdf', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 YaBrowser/20.3.2.238 Yowser/2.5 Safari/537.36', 'review', 0, 1),
(4, 49, 'vladymyrlem', 'vovangud@gmail.com', 'http://testshop', '127.0.0.1', '2021-05-22 14:55:14', '2021-05-22 11:55:14', 'sdfsdf', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 YaBrowser/20.3.2.238 Yowser/2.5 Safari/537.36', 'review', 0, 1),
(5, 13, 'vladymyrlem', 'vovangud@gmail.com', 'http://testshop', '127.0.0.1', '2021-05-22 14:59:06', '2021-05-22 11:59:06', 'sdfsdf', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 YaBrowser/20.3.2.238 Yowser/2.5 Safari/537.36', 'review', 0, 1),
(6, 59, 'vladymyrlem', 'vovangud@gmail.com', 'http://testshop', '127.0.0.1', '2021-05-22 15:17:31', '2021-05-22 12:17:31', 'sdfdf', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 YaBrowser/20.3.2.238 Yowser/2.5 Safari/537.36', 'review', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(99, 'siteurl', 'http://testshop', 'yes'),
(100, 'home', 'http://testshop', 'yes'),
(101, 'blogname', 'Test Shop', 'yes'),
(102, 'blogdescription', 'Announcement Announcement Announcement Announcement Announcement', 'yes'),
(103, 'users_can_register', '0', 'yes'),
(104, 'admin_email', 'vovangud@gmail.com', 'yes'),
(105, 'start_of_week', '1', 'yes'),
(106, 'use_balanceTags', '0', 'yes'),
(107, 'use_smilies', '1', 'yes'),
(108, 'require_name_email', '1', 'yes'),
(109, 'comments_notify', '1', 'yes'),
(110, 'posts_per_rss', '10', 'yes'),
(111, 'rss_use_excerpt', '0', 'yes'),
(112, 'mailserver_url', 'mail.example.com', 'yes'),
(113, 'mailserver_login', 'login@example.com', 'yes'),
(114, 'mailserver_pass', 'password', 'yes'),
(115, 'mailserver_port', '110', 'yes'),
(116, 'default_category', '1', 'yes'),
(117, 'default_comment_status', 'open', 'yes'),
(118, 'default_ping_status', 'open', 'yes'),
(119, 'default_pingback_flag', '1', 'yes'),
(120, 'posts_per_page', '10', 'yes'),
(121, 'date_format', 'd.m.Y', 'yes'),
(122, 'time_format', 'H:i', 'yes'),
(123, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(124, 'comment_moderation', '0', 'yes'),
(125, 'moderation_notify', '1', 'yes'),
(126, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(128, 'hack_file', '0', 'yes'),
(129, 'blog_charset', 'UTF-8', 'yes'),
(130, 'moderation_keys', '', 'no'),
(131, 'active_plugins', 'a:7:{i:0;s:25:\"polylang-pro/polylang.php\";i:1;s:41:\"acf-theme-code-pro/acf_theme_code_pro.php\";i:2;s:34:\"advanced-custom-fields-pro/acf.php\";i:3;s:33:\"classic-editor/classic-editor.php\";i:4;s:47:\"current-template-info/current-template-info.php\";i:5;s:27:\"woocommerce/woocommerce.php\";i:6;s:39:\"wp-product-review/wp-product-review.php\";}', 'yes'),
(132, 'category_base', '', 'yes'),
(133, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(134, 'comment_max_links', '2', 'yes'),
(135, 'gmt_offset', '3', 'yes'),
(136, 'default_email_category', '1', 'yes'),
(137, 'recently_edited', '', 'no'),
(138, 'template', 'myshop', 'yes'),
(139, 'stylesheet', 'myshop', 'yes'),
(140, 'comment_registration', '0', 'yes'),
(141, 'html_type', 'text/html', 'yes'),
(142, 'use_trackback', '0', 'yes'),
(143, 'default_role', 'subscriber', 'yes'),
(144, 'db_version', '49752', 'yes'),
(145, 'uploads_use_yearmonth_folders', '1', 'yes'),
(146, 'upload_path', '', 'yes'),
(147, 'blog_public', '1', 'yes'),
(148, 'default_link_category', '2', 'yes'),
(149, 'show_on_front', 'page', 'yes'),
(150, 'tag_base', '', 'yes'),
(151, 'show_avatars', '1', 'yes'),
(152, 'avatar_rating', 'G', 'yes'),
(153, 'upload_url_path', '', 'yes'),
(154, 'thumbnail_size_w', '150', 'yes'),
(155, 'thumbnail_size_h', '150', 'yes'),
(156, 'thumbnail_crop', '1', 'yes'),
(157, 'medium_size_w', '300', 'yes'),
(158, 'medium_size_h', '300', 'yes'),
(159, 'avatar_default', 'mystery', 'yes'),
(160, 'large_size_w', '1024', 'yes'),
(161, 'large_size_h', '1024', 'yes'),
(162, 'image_default_link_type', 'none', 'yes'),
(163, 'image_default_size', '', 'yes'),
(164, 'image_default_align', '', 'yes'),
(165, 'close_comments_for_old_posts', '0', 'yes'),
(166, 'close_comments_days_old', '14', 'yes'),
(167, 'thread_comments', '1', 'yes'),
(168, 'thread_comments_depth', '5', 'yes'),
(169, 'page_comments', '0', 'yes'),
(170, 'comments_per_page', '50', 'yes'),
(171, 'default_comments_page', 'oldest', 'yes'),
(172, 'comment_order', 'asc', 'yes'),
(173, 'sticky_posts', 'a:0:{}', 'yes'),
(174, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(175, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'uninstall_plugins', 'a:0:{}', 'no'),
(178, 'timezone_string', '', 'yes'),
(179, 'page_for_posts', '6', 'yes'),
(180, 'page_on_front', '26', 'yes'),
(181, 'default_post_format', '0', 'yes'),
(182, 'link_manager_enabled', '0', 'yes'),
(183, 'finished_splitting_shared_terms', '1', 'yes'),
(184, 'site_icon', '30', 'yes'),
(185, 'medium_large_size_w', '768', 'yes'),
(186, 'medium_large_size_h', '0', 'yes'),
(187, 'wp_page_for_privacy_policy', '3', 'yes'),
(188, 'show_comments_cookies_opt_in', '1', 'yes'),
(189, 'admin_email_lifespan', '1637067461', 'yes'),
(190, 'disallowed_keys', '', 'no'),
(191, 'comment_previously_approved', '', 'yes'),
(192, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(193, 'auto_update_core_dev', 'enabled', 'yes'),
(194, 'auto_update_core_minor', 'enabled', 'yes'),
(195, 'auto_update_core_major', 'enabled', 'yes'),
(196, 'initial_db_version', '49752', 'yes'),
(197, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:14:\"manage_ratings\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:6:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:12:\"upload_files\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:12:\"upload_files\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:12:\"upload_files\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(198, 'fresh_site', '0', 'yes'),
(199, 'WPLANG', 'ru_RU', 'yes'),
(200, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(201, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(202, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(203, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(204, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(205, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(206, 'cron', 'a:22:{i:1621686432;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1621687207;a:1:{s:34:\"yith_wcwl_send_back_in_stock_email\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1621687209;a:1:{s:33:\"yith_wcwl_send_on_sale_item_email\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1621687210;a:1:{s:30:\"yith_wcwl_send_promotion_email\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1621687999;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1621688274;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621688275;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1621688394;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621688397;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621688524;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621688530;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1621688537;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621688570;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1621699314;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621701606;a:1:{s:34:\"yith_wcwl_delete_expired_wishlists\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621701607;a:1:{s:32:\"yith_wcwl_register_on_sale_items\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621710114;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1621717200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622127599;a:1:{s:23:\"polylang_check_licenses\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1622206674;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1622811774;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(207, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(208, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(209, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(210, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(211, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(212, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(213, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(214, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(215, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(217, 'recovery_keys', 'a:2:{s:22:\"4grxAVmhwSwSMF1zyI0eon\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B1yEPRbDtg5LCqd7MFFOW/f7xy.Aa1/\";s:10:\"created_at\";i:1621519743;}s:22:\"hzirRq22ZJBEQASZUGGNEe\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BEUGWsNuHr.JFsxhZbgPsFrwg8roH9/\";s:10:\"created_at\";i:1621614425;}}', 'yes'),
(218, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1621516793;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(219, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(229, '_site_transient_timeout_browser_3cc8ab2a0fe176596aaf92518b736d52', '1622120395', 'no'),
(230, '_site_transient_browser_3cc8ab2a0fe176596aaf92518b736d52', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(231, '_site_transient_timeout_php_check_33fe6d8f3148d10c2ff7ce3ff095dd41', '1622120396', 'no'),
(232, '_site_transient_php_check_33fe6d8f3148d10c2ff7ce3ff095dd41', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(234, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1621558811', 'no'),
(235, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:69:\"Watch Party + Discussion group: How to Create and Use Reusable Blocks\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/278262480/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-05-21 07:00:00\";s:8:\"end_date\";s:19:\"2021-05-21 08:00:00\";s:20:\"start_unix_timestamp\";i:1621605600;s:18:\"end_unix_timestamp\";i:1621609200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:30:\"WordCamp Northeast Ohio Region\";s:3:\"url\";s:30:\"https://neo.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-05-21 00:00:00\";s:8:\"end_date\";s:19:\"2021-05-23 00:00:00\";s:20:\"start_unix_timestamp\";i:1621569600;s:18:\"end_unix_timestamp\";i:1621742400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:41.2617873;s:9:\"longitude\";d:-81.1637245;}}}}', 'no'),
(236, 'can_compress_scripts', '1', 'no'),
(247, 'recently_activated', 'a:10:{s:25:\"ultimate-reviews/Main.php\";i:1621675069;s:41:\"ewd-premium-helper/ewd-premium-helper.php\";i:1621675004;s:33:\"star-rating-block/star-rating.php\";i:1621673204;s:19:\"reviewx/reviewx.php\";i:1621673082;s:33:\"wp-postratings/wp-postratings.php\";i:1621671262;s:27:\"rating-plus/rating-plus.php\";i:1621670832;s:31:\"rating-widget/rating-widget.php\";i:1621670747;s:50:\"yith-woocommerce-advanced-reviews-premium/init.php\";i:1621670486;s:19:\"wp-scss/wp-scss.php\";i:1621606135;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:1621520833;}', 'yes'),
(248, 'acf_version', '5.9.5', 'yes'),
(249, 'hookturn_acftcp_license_key', 'valid', 'yes'),
(250, 'hookturn_acftcp_license_status', 'valid', 'yes'),
(251, '_transient_timeout_acf_plugin_updates', '1621688452', 'no'),
(252, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.7\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";}}', 'no'),
(253, '84dacf2eaef45c2f3d84610b96c7f212', 'a:2:{s:7:\"timeout\";i:1621707937;s:5:\"value\";s:178:\"{\"new_version\":\"\",\"stable_version\":\"\",\"sections\":\"\",\"license_check\":\"\",\"msg\":\"License key is not valid for ACF Theme Code Pro\",\"homepage\":\"\",\"package\":\"\",\"icons\":[],\"banners\":[]}\";}', 'no'),
(256, 'finished_updating_comment_type', '1', 'yes'),
(257, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(258, 'schema-ActionScheduler_StoreSchema', '3.0.1621515671', 'yes'),
(259, 'schema-ActionScheduler_LoggerSchema', '2.0.1621515672', 'yes'),
(262, 'woocommerce_schema_version', '430', 'yes'),
(263, 'woocommerce_store_address', 'Shevchenka', 'yes'),
(264, 'woocommerce_store_address_2', '22', 'yes'),
(265, 'woocommerce_store_city', 'Petrove', 'yes'),
(266, 'woocommerce_default_country', 'UA', 'yes'),
(267, 'woocommerce_store_postcode', '12345', 'yes'),
(268, 'woocommerce_allowed_countries', 'all', 'yes'),
(269, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(270, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(271, 'woocommerce_ship_to_countries', '', 'yes'),
(272, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(273, 'woocommerce_default_customer_address', 'base', 'yes'),
(274, 'woocommerce_calc_taxes', 'no', 'yes'),
(275, 'woocommerce_enable_coupons', 'yes', 'yes'),
(276, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(277, 'woocommerce_currency', 'USD', 'yes'),
(278, 'woocommerce_currency_pos', 'left', 'yes'),
(279, 'woocommerce_price_thousand_sep', '', 'yes'),
(280, 'woocommerce_price_decimal_sep', '', 'yes'),
(281, 'woocommerce_price_num_decimals', '0', 'yes'),
(282, 'woocommerce_shop_page_id', '6', 'yes'),
(283, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(284, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(285, 'woocommerce_placeholder_image', '5', 'yes'),
(286, 'woocommerce_weight_unit', 'kg', 'yes'),
(287, 'woocommerce_dimension_unit', 'cm', 'yes'),
(288, 'woocommerce_enable_reviews', 'yes', 'yes'),
(289, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(290, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(291, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(292, 'woocommerce_review_rating_required', 'yes', 'no'),
(293, 'woocommerce_manage_stock', 'yes', 'yes'),
(294, 'woocommerce_hold_stock_minutes', '60', 'no'),
(295, 'woocommerce_notify_low_stock', 'yes', 'no'),
(296, 'woocommerce_notify_no_stock', 'yes', 'no'),
(297, 'woocommerce_stock_email_recipient', 'vovangud@gmail.com', 'no'),
(298, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(299, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(300, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(301, 'woocommerce_stock_format', '', 'yes'),
(302, 'woocommerce_file_download_method', 'force', 'no'),
(303, 'woocommerce_downloads_require_login', 'no', 'no'),
(304, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(305, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(306, 'woocommerce_prices_include_tax', 'no', 'yes'),
(307, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(308, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(309, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(310, 'woocommerce_tax_classes', '', 'yes'),
(311, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(312, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(313, 'woocommerce_price_display_suffix', '', 'yes'),
(314, 'woocommerce_tax_total_display', 'itemized', 'no'),
(315, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(316, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(317, 'woocommerce_ship_to_destination', 'billing', 'no'),
(318, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(319, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(320, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(321, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(322, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(323, 'woocommerce_registration_generate_username', 'yes', 'no'),
(324, 'woocommerce_registration_generate_password', 'yes', 'no'),
(325, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(326, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(327, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(328, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(329, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(330, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(331, 'woocommerce_trash_pending_orders', '', 'no'),
(332, 'woocommerce_trash_failed_orders', '', 'no'),
(333, 'woocommerce_trash_cancelled_orders', '', 'no'),
(334, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(335, 'woocommerce_email_from_name', 'Test Shop', 'no'),
(336, 'woocommerce_email_from_address', 'vovangud@gmail.com', 'no'),
(337, 'woocommerce_email_header_image', '', 'no'),
(338, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(339, 'woocommerce_email_base_color', '#96588a', 'no'),
(340, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(341, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(342, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(343, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(344, 'woocommerce_cart_page_id', '7', 'no'),
(345, 'woocommerce_checkout_page_id', '8', 'no'),
(346, 'woocommerce_myaccount_page_id', '9', 'no'),
(347, 'woocommerce_terms_page_id', '', 'no'),
(348, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(349, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(350, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(351, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(352, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(353, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(354, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(355, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(356, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(357, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(358, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(359, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(360, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(361, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(362, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(363, 'woocommerce_api_enabled', 'no', 'yes'),
(364, 'woocommerce_allow_tracking', 'no', 'no'),
(365, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(366, 'woocommerce_single_image_width', '600', 'yes'),
(367, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(368, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(369, 'woocommerce_demo_store', 'no', 'no'),
(372, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(373, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(374, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(377, 'default_product_cat', '15', 'yes'),
(380, 'woocommerce_version', '5.3.0', 'yes'),
(381, 'woocommerce_db_version', '5.3.0', 'yes'),
(385, '_transient_jetpack_autoloader_plugin_paths', 'a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}', 'yes'),
(386, 'action_scheduler_lock_async-request-runner', '1621686414', 'yes'),
(387, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(388, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"abzcJpsl5rDkugrRYJeBbDd8ARJXdbAJ\";}', 'yes'),
(389, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(390, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(391, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(392, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(393, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(394, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(395, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(396, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(397, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(398, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(399, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(400, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(401, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(404, 'woocommerce_admin_version', '2.2.6', 'yes'),
(405, 'woocommerce_admin_install_timestamp', '1621515737', 'yes'),
(406, 'wc_remote_inbox_notifications_wca_updated', '', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(407, 'wc_remote_inbox_notifications_specs', 'a:18:{s:20:\"paypal_ppcp_gtm_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"paypal_ppcp_gtm_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Offer more options with the new PayPal\";s:7:\"content\";s:113:\"Get the latest PayPal extension for a full suite of payment methods with extensive currency and country coverage.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:36:\"open_wc_paypal_payments_product_page\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:61:\"https://woocommerce.com/products/woocommerce-paypal-payments/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-04-05 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-04-21 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:30:\"woocommerce-gateway-paypal-pro\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:37:\"woocommerce-gateway-paypal-pro-hosted\";}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:35:\"woocommerce-gateway-paypal-advanced\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:40:\"woocommerce-gateway-paypal-digital-goods\";}}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"woocommerce-paypal-here-gateway\";}}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:44:\"woocommerce-gateway-paypal-adaptive-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:27:\"woocommerce-paypal-payments\";s:7:\"version\";s:5:\"1.2.1\";s:8:\"operator\";s:1:\"<\";}}}}}s:23:\"facebook_pixel_api_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:23:\"facebook_pixel_api_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:44:\"Improve the performance of your Facebook ads\";s:7:\"content\";s:152:\"Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved measurement and ad targeting capabilities.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"upgrade_now_facebook_pixel_api\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Upgrade now\";}}s:3:\"url\";s:67:\"plugin-install.php?tab=plugin-information&plugin=&section=changelog\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-05-17 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-06-14 00:00:00\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"facebook-for-woocommerce\";s:7:\"version\";s:5:\"2.4.0\";s:8:\"operator\";s:2:\"<=\";}}}s:16:\"facebook_ec_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:16:\"facebook_ec_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:59:\"Sync your product catalog with Facebook to help boost sales\";s:7:\"content\";s:170:\"A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:22:\"learn_more_facebook_ec\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:42:\"https://woocommerce.com/products/facebook/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-03-01 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-03-15 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:24:\"facebook-for-woocommerce\";}}}}s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:37:\"wc-admin-getting-started-in-ecommerce\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-getting-started-in-ecommerce\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Getting Started in eCommerce - webinar\";s:7:\"content\";s:174:\"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"watch-the-webinar\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Watch the webinar\";}}s:3:\"url\";s:28:\"https://youtu.be/V_2XtCOyZ7o\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:12:\"setup_client\";s:9:\"operation\";s:2:\"!=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_count\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:1:\"0\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:4:\"none\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:10:\"up-to-2500\";}}}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:461:\"That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:31:\"wc-square-apple-pay-boost-sales\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"wc-square-apple-pay-boost-sales\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"Boost sales with Apple Pay\";s:7:\"content\";s:191:\"Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"boost-sales-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:97:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:18:\"woocommerce-square\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"2.3\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"wc_square_apple_pay_enabled\";s:5:\"value\";i:1;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:38:\"wc-square-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:38:\"wc-square-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:38:\"wc-square-apple-pay-grow-your-business\";O:8:\"stdClass\":8:{s:4:\"slug\";s:38:\"wc-square-apple-pay-grow-your-business\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"Grow your business with Square and Apple Pay \";s:7:\"content\";s:178:\"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"grow-your-business-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:104:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:18:\"woocommerce-square\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"2.3\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"wc_square_apple_pay_enabled\";s:5:\"value\";i:2;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:31:\"wc-square-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:31:\"wc-square-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wcpay-apple-pay-is-now-available\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wcpay-apple-pay-is-now-available\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"Apple Pay is now available with WooCommerce Payments!\";s:7:\"content\";s:397:\"Increase your conversion rate by offering a fast and secure checkout with <a href=\"https://woocommerce.com/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\" target=\"_blank\">Apple Pay</a>®. It’s free to get started with <a href=\"https://woocommerce.com/payments/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\" target=\"_blank\">WooCommerce Payments</a>.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:13:\"add-apple-pay\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Add Apple Pay\";}}s:3:\"url\";s:69:\"/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:121:\"https://docs.woocommerce.com/document/payments/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"2.3.0\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";b:0;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}}}s:27:\"wcpay-apple-pay-boost-sales\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-apple-pay-boost-sales\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"Boost sales with Apple Pay\";s:7:\"content\";s:205:\"Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"boost-sales-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:96:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";i:1;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:34:\"wcpay-apple-pay-grow-your-business\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:34:\"wcpay-apple-pay-grow-your-business\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"wcpay-apple-pay-grow-your-business\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:58:\"Grow your business with WooCommerce Payments and Apple Pay\";s:7:\"content\";s:178:\"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"grow-your-business-marketing-guide\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"See marketing guide\";}}s:3:\"url\";s:103:\"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"wcpay_is_apple_pay_enabled\";s:5:\"value\";i:2;s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:27:\"wcpay-apple-pay-boost-sales\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:171:\"It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:78:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:39:\"wc-admin-first-five-things-to-customize\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-admin-first-five-things-to-customize\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"The first 5 things to customize in your store\";s:7:\"content\";s:173:\"Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:2;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:5:\"value\";s:9:\"NOT EMPTY\";s:7:\"default\";s:9:\"NOT EMPTY\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wc-payments-qualitative-feedback\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wc-payments-qualitative-feedback\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Payments setup - let us know what you think\";s:7:\"content\";s:146:\"Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"qualitative-feedback-from-new-users\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:39:\"https://automattic.survey.fm/wc-pay-new\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:20:\"woocommerce-payments\";s:7:\"default\";a:0:{}}}}s:29:\"share-your-feedback-on-paypal\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"share-your-feedback-on-paypal\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:29:\"Share your feedback on PayPal\";s:7:\"content\";s:127:\"Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:43:\"http://automattic.survey.fm/paypal-feedback\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}}}s:31:\"wcpay_instant_deposits_gtm_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"wcpay_instant_deposits_gtm_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:69:\"Get paid within minutes – Instant Deposits for WooCommerce Payments\";s:7:\"content\";s:384:\"Stay flexible with immediate access to your funds when you need them – including nights, weekends, and holidays. With <a href=\"https://woocommerce.com/products/woocommerce-payments/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_instant_deposits\">WooCommerce Payments\'</a> new Instant Deposits feature, you’re able to transfer your earnings to a debit card within minutes.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:40:\"Learn about Instant Deposits eligibility\";}}s:3:\"url\";s:136:\"https://docs.woocommerce.com/document/payments/instant-deposits/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_instant_deposits\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-05-18 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-06-01 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}}}', 'yes'),
(408, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":3:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;s:17:\"new_product_count\";i:0;}', 'yes'),
(413, 'wc_blocks_db_schema_version', '260', 'yes'),
(414, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(421, '_transient_woocommerce_reports-transient-version', '1621515870', 'yes'),
(422, '_transient_timeout_orders-all-statuses', '1622121042', 'no'),
(423, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1621515870\";s:5:\"value\";a:0:{}}', 'no'),
(427, 'woocommerce_onboarding_profile', 'a:8:{s:12:\"setup_client\";b:0;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:21:\"home-furniture-garden\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:4:\"1-10\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:1:{i:0;s:24:\"facebook-for-woocommerce\";}s:5:\"theme\";s:15:\"twentytwentyone\";s:9:\"completed\";b:1;}', 'yes'),
(435, 'facebook_config', 'a:4:{s:8:\"pixel_id\";s:1:\"0\";s:7:\"use_pii\";b:1;s:7:\"use_s2s\";b:0;s:12:\"access_token\";s:0:\"\";}', 'yes'),
(442, 'wc_facebook_for_woocommerce_lifecycle_events', '[{\"name\":\"install\",\"time\":1621527039,\"version\":\"2.5.0\"}]', 'no'),
(443, 'wc_facebook_for_woocommerce_version', '2.5.0', 'yes'),
(445, '_transient_timeout_sv_wc_plugin_wc_versions', '1622121041', 'no'),
(446, '_transient_sv_wc_plugin_wc_versions', 'a:88:{i:0;s:5:\"5.3.0\";i:1;s:5:\"5.2.2\";i:2;s:5:\"5.2.1\";i:3;s:5:\"5.2.0\";i:4;s:5:\"5.1.0\";i:5;s:5:\"5.0.0\";i:6;s:5:\"4.9.2\";i:7;s:5:\"4.9.1\";i:8;s:5:\"4.9.0\";i:9;s:5:\"4.8.0\";i:10;s:5:\"4.7.1\";i:11;s:5:\"4.7.0\";i:12;s:5:\"4.6.2\";i:13;s:5:\"4.6.1\";i:14;s:5:\"4.6.0\";i:15;s:5:\"4.5.2\";i:16;s:5:\"4.5.1\";i:17;s:5:\"4.5.0\";i:18;s:5:\"4.4.1\";i:19;s:5:\"4.4.0\";i:20;s:5:\"4.3.3\";i:21;s:5:\"4.3.2\";i:22;s:5:\"4.3.1\";i:23;s:5:\"4.3.0\";i:24;s:5:\"4.2.2\";i:25;s:5:\"4.2.1\";i:26;s:5:\"4.2.0\";i:27;s:5:\"4.1.1\";i:28;s:5:\"4.1.0\";i:29;s:5:\"4.0.1\";i:30;s:5:\"4.0.0\";i:31;s:5:\"3.9.3\";i:32;s:5:\"3.9.2\";i:33;s:5:\"3.9.1\";i:34;s:5:\"3.9.0\";i:35;s:5:\"3.8.1\";i:36;s:5:\"3.8.0\";i:37;s:5:\"3.7.1\";i:38;s:5:\"3.7.0\";i:39;s:5:\"3.6.5\";i:40;s:5:\"3.6.4\";i:41;s:5:\"3.6.3\";i:42;s:5:\"3.6.2\";i:43;s:5:\"3.6.1\";i:44;s:5:\"3.6.0\";i:45;s:5:\"3.5.8\";i:46;s:5:\"3.5.7\";i:47;s:5:\"3.5.6\";i:48;s:5:\"3.5.5\";i:49;s:5:\"3.5.4\";i:50;s:5:\"3.5.3\";i:51;s:5:\"3.5.2\";i:52;s:5:\"3.5.1\";i:53;s:5:\"3.5.0\";i:54;s:5:\"3.4.7\";i:55;s:5:\"3.4.6\";i:56;s:5:\"3.4.5\";i:57;s:5:\"3.4.4\";i:58;s:5:\"3.4.3\";i:59;s:5:\"3.4.2\";i:60;s:5:\"3.4.1\";i:61;s:5:\"3.4.0\";i:62;s:5:\"3.3.5\";i:63;s:5:\"3.3.4\";i:64;s:5:\"3.3.3\";i:65;s:5:\"3.3.2\";i:66;s:5:\"3.3.1\";i:67;s:5:\"3.3.0\";i:68;s:5:\"3.2.6\";i:69;s:5:\"3.2.5\";i:70;s:5:\"3.2.4\";i:71;s:5:\"3.2.3\";i:72;s:5:\"3.2.2\";i:73;s:5:\"3.2.1\";i:74;s:5:\"3.2.0\";i:75;s:5:\"3.1.2\";i:76;s:5:\"3.1.1\";i:77;s:5:\"3.1.0\";i:78;s:5:\"3.0.9\";i:79;s:5:\"3.0.8\";i:80;s:5:\"3.0.7\";i:81;s:5:\"3.0.6\";i:82;s:5:\"3.0.5\";i:83;s:5:\"3.0.4\";i:84;s:5:\"3.0.3\";i:85;s:5:\"3.0.2\";i:86;s:5:\"3.0.1\";i:87;s:5:\"3.0.0\";}', 'no'),
(447, 'woocommerce_task_list_tracked_completed_tasks', 'a:1:{i:0;s:13:\"store_details\";}', 'yes'),
(448, '_transient_timeout_wc_report_orders_stats_f25202048739d510ae259b507510b396', '1622121051', 'no'),
(449, '_transient_timeout_wc_report_orders_stats_a2e05cd1f33837031fda1da8c64c4412', '1622121051', 'no'),
(450, '_transient_wc_report_orders_stats_f25202048739d510ae259b507510b396', 'a:2:{s:7:\"version\";s:10:\"1621515870\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-20\";s:10:\"date_start\";s:19:\"2021-05-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-05-19 21:00:00\";s:8:\"date_end\";s:19:\"2021-05-20 16:10:00\";s:12:\"date_end_gmt\";s:19:\"2021-05-20 13:10:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(451, '_transient_wc_report_orders_stats_a2e05cd1f33837031fda1da8c64c4412', 'a:2:{s:7:\"version\";s:10:\"1621515870\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-20\";s:10:\"date_start\";s:19:\"2021-05-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-05-18 21:00:00\";s:8:\"date_end\";s:19:\"2021-05-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-05-19 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(452, '_transient_timeout_wc_report_orders_stats_a93fad216a7a4aebf2f23b5280a46a26', '1622121052', 'no'),
(453, '_transient_timeout_wc_report_orders_stats_59430f0a4eb8d20fa765842697642826', '1622121052', 'no'),
(454, '_transient_wc_report_orders_stats_a93fad216a7a4aebf2f23b5280a46a26', 'a:2:{s:7:\"version\";s:10:\"1621515870\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-20\";s:10:\"date_start\";s:19:\"2021-05-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-05-19 21:00:00\";s:8:\"date_end\";s:19:\"2021-05-20 16:10:00\";s:12:\"date_end_gmt\";s:19:\"2021-05-20 13:10:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(455, '_transient_wc_report_orders_stats_59430f0a4eb8d20fa765842697642826', 'a:2:{s:7:\"version\";s:10:\"1621515870\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-20\";s:10:\"date_start\";s:19:\"2021-05-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-05-18 21:00:00\";s:8:\"date_end\";s:19:\"2021-05-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-05-19 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(458, '_transient_timeout_wc_report_orders_stats_3768e23f2cb95be8d3e25ba44625c758', '1622121161', 'no'),
(459, '_transient_wc_report_orders_stats_3768e23f2cb95be8d3e25ba44625c758', 'a:2:{s:7:\"version\";s:10:\"1621515870\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-20\";s:10:\"date_start\";s:19:\"2021-05-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-05-19 21:00:00\";s:8:\"date_end\";s:19:\"2021-05-20 16:12:00\";s:12:\"date_end_gmt\";s:19:\"2021-05-20 13:12:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(460, '_transient_timeout_wc_report_orders_stats_362e6cabbbf96a66f39ce840e01b29ae', '1622121161', 'no'),
(461, '_transient_wc_report_orders_stats_362e6cabbbf96a66f39ce840e01b29ae', 'a:2:{s:7:\"version\";s:10:\"1621515870\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-20\";s:10:\"date_start\";s:19:\"2021-05-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-05-19 21:00:00\";s:8:\"date_end\";s:19:\"2021-05-20 16:12:00\";s:12:\"date_end_gmt\";s:19:\"2021-05-20 13:12:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(462, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(466, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(467, '_transient_product_query-transient-version', '1621685853', 'yes'),
(472, 'pa_color_children', 'a:0:{}', 'yes'),
(475, 'pa_size_children', 'a:0:{}', 'yes'),
(476, '_transient_product-transient-version', '1621685854', 'yes'),
(491, 'wc_facebook_background_product_sync_job_00c3adde3ffc0bb2789d9342a750dc3a', '{\"requests\":{\"p-14\":\"UPDATE\",\"p-15\":\"UPDATE\",\"p-16\":\"UPDATE\",\"p-17\":\"UPDATE\",\"p-18\":\"UPDATE\",\"p-19\":\"UPDATE\",\"p-20\":\"UPDATE\",\"p-21\":\"UPDATE\",\"p-22\":\"UPDATE\"},\"id\":\"00c3adde3ffc0bb2789d9342a750dc3a\",\"created_at\":\"2021-05-20 16:14:47\",\"created_by\":1,\"status\":\"completed\",\"started_processing_at\":\"2021-05-20 16:14:49\",\"updated_at\":\"2021-05-20 16:14:51\",\"total\":9,\"progress\":9,\"completed_at\":\"2021-05-20 16:14:51\"}', 'no'),
(506, 'wc_facebook_background_product_sync_job_9064056c6247d0f2e13ec28358ba5573', '{\"requests\":{\"p-14\":\"UPDATE\",\"p-15\":\"UPDATE\",\"p-16\":\"UPDATE\",\"p-17\":\"UPDATE\",\"p-18\":\"UPDATE\",\"p-19\":\"UPDATE\",\"p-20\":\"UPDATE\",\"p-21\":\"UPDATE\",\"p-22\":\"UPDATE\"},\"id\":\"9064056c6247d0f2e13ec28358ba5573\",\"created_at\":\"2021-05-20 16:17:00\",\"created_by\":1,\"status\":\"completed\",\"started_processing_at\":\"2021-05-20 16:17:02\",\"updated_at\":\"2021-05-20 16:17:03\",\"total\":9,\"progress\":9,\"completed_at\":\"2021-05-20 16:17:03\"}', 'no'),
(516, 'wc_facebook_background_product_sync_job_298c75ec224c6c36a10614531c45365a', '{\"requests\":{\"p-14\":\"UPDATE\",\"p-15\":\"UPDATE\",\"p-16\":\"UPDATE\",\"p-17\":\"UPDATE\",\"p-18\":\"UPDATE\",\"p-19\":\"UPDATE\",\"p-20\":\"UPDATE\",\"p-21\":\"UPDATE\",\"p-22\":\"UPDATE\"},\"id\":\"298c75ec224c6c36a10614531c45365a\",\"created_at\":\"2021-05-20 16:17:43\",\"created_by\":1,\"status\":\"completed\",\"started_processing_at\":\"2021-05-20 16:17:45\",\"updated_at\":\"2021-05-20 16:17:47\",\"total\":9,\"progress\":9,\"completed_at\":\"2021-05-20 16:17:47\"}', 'no'),
(525, 'current_theme', 'Shop theme', 'yes'),
(526, 'theme_mods_myshop', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:24;s:6:\"menu-1\";i:24;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:30;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1621611756;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(527, 'theme_switched', '', 'yes'),
(528, 'woocommerce_catalog_rows', '3', 'yes'),
(529, 'woocommerce_catalog_columns', '4', 'yes'),
(530, 'woocommerce_maybe_regenerate_images_hash', '0354fa9fd89ed0769e68ad19ec0251fa', 'yes'),
(547, 'recovery_mode_email_last_sent', '1621614424', 'yes'),
(562, 'category_children', 'a:0:{}', 'yes'),
(583, 'wpscss_version', '2.1.6', 'no'),
(586, 'polylang', 'a:13:{s:7:\"browser\";i:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:3:\"2.9\";s:16:\"first_activation\";i:1621522789;}', 'yes'),
(587, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(588, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(590, 'polylang_licenses', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(594, 'rewrite_rules', 'a:189:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:49:\"language/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?lang=$matches[1]&feed=$matches[2]\";s:44:\"language/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?lang=$matches[1]&feed=$matches[2]\";s:25:\"language/([^/]+)/embed/?$\";s:37:\"index.php?lang=$matches[1]&embed=true\";s:37:\"language/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?lang=$matches[1]&paged=$matches[2]\";s:19:\"language/([^/]+)/?$\";s:26:\"index.php?lang=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"reviewx/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"reviewx/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"reviewx/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"reviewx/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"reviewx/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"reviewx/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"reviewx/([^/]+)/embed/?$\";s:40:\"index.php?reviewx=$matches[1]&embed=true\";s:28:\"reviewx/([^/]+)/trackback/?$\";s:34:\"index.php?reviewx=$matches[1]&tb=1\";s:36:\"reviewx/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?reviewx=$matches[1]&paged=$matches[2]\";s:43:\"reviewx/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?reviewx=$matches[1]&cpage=$matches[2]\";s:33:\"reviewx/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?reviewx=$matches[1]&wc-api=$matches[3]\";s:39:\"reviewx/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"reviewx/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"reviewx/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?reviewx=$matches[1]&page=$matches[2]\";s:24:\"reviewx/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"reviewx/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"reviewx/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"reviewx/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"reviewx/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"reviewx/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=26&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(602, 'wpscss_options', 'a:6:{s:21:\"base_compiling_folder\";s:57:\"C:\\OpenServer\\domains\\Testshop/wp-content/plugins/wp-scss\";s:8:\"scss_dir\";s:6:\"/sass/\";s:7:\"css_dir\";s:0:\"\";s:17:\"compiling_options\";s:33:\"ScssPhp\\ScssPhp\\Formatter\\Compact\";s:17:\"sourcemap_options\";s:15:\"SOURCE_MAP_NONE\";s:6:\"errors\";s:4:\"show\";}', 'yes'),
(674, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(788, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":7,\"critical\":0}', 'yes'),
(817, 'edd_sl_609ae11585be436291a4a56797acb272', 'a:2:{s:7:\"timeout\";i:1621681074;s:5:\"value\";s:8088:\"{\"new_version\":\"3.0.4\",\"stable_version\":\"3.0.4\",\"name\":\"Polylang Pro\",\"slug\":\"polylang\",\"url\":\"https:\\/\\/polylang.pro\\/downloads\\/polylang-pro\\/?changelog=1\",\"last_updated\":\"4 weeks ago\",\"homepage\":\"https:\\/\\/polylang.pro\\/downloads\\/polylang-pro\\/\",\"package\":\"\",\"download_link\":\"\",\"sections\":{\"description\":\"<p>Polylang Pro offers all the awesomeness of Polylang plus extra features and Premium support.<\\/p>\\n\",\"changelog\":\"<h4> 3.0.4 (2021-04-27) <\\/h4>\\n<ul>\\n<li>Improve performance in the pages (or hierarchical post types) list table<\\/li>\\n<li>Fix an ajax conflict with WooCommerce License manager<\\/li>\\n<\\/ul>\\n<h4> 3.0.3 (2021-03-23) <\\/h4>\\n<ul>\\n<li>Fix a warning when a language is corrupted in database (term_language missing)<\\/li>\\n<li>Fix confirmation modal with WooCommerce and WordPress &lt; 5.6<\\/li>\\n<li>Fix an ajax conflict with WooCommerce Tree Table Rate Shipping and HubSpot All-In-One Marketing<\\/li>\\n<\\/ul>\\n<h4> 3.0.2 (2021-03-16) <\\/h4>\\n<ul>\\n<li>Move hreflang attributes higher in the head section #771<\\/li>\\n<li>Fix custom flags not working (introduced in 3.0)<\\/li>\\n<li>Fix translation of the confirmation modal when changing the language of a post<\\/li>\\n<li>Fix js and css not loaded when Polylang is used as a mu-plugin ((introduced in 3.0))<\\/li>\\n<li>Fix support for html5 stylesheet link tags #775<\\/li>\\n<li>Fix possible warning in frontend-filters-links.php<\\/li>\\n<li>Yoast SEO Premium: Take over the multilingual compatibility removed in Yoast SEO Premium 15.8 #796<\\/li>\\n<li>Yoast SEO: Fix CPT breadcrumb title when the option is left empty #794<\\/li>\\n<li>Yoast SEO: Fix sitemap.xml not redirected on secondary domains #789<\\/li>\\n<\\/ul>\\n<h4> 3.0.1 (2021-03-10) <\\/h4>\\n<ul>\\n<li>Fix media gallery messed when editing a post in the classic editor<\\/li>\\n<li>Fix missing script dependency on old WP versions<\\/li>\\n<li>Fix CSS conflict with WooCommerce Bookings for WP &lt; 5.6<\\/li>\\n<li>Fix conflict resulting in \'__\' already defined in block-editor.js. #779<\\/li>\\n<li>Fix search form removed for some themes. Props Mari\\u00e1n Kada\\u0148ka. #780<\\/li>\\n<li>Fix fatal error with very old versions of Yoast SEO. Props Nicola Peluchetti. #781<\\/li>\\n<\\/ul>\\n<h4> 3.0 (2021-03-08) <\\/h4>\\n<ul>\\n<li>Add compatibility with WordPress 5.7<\\/li>\\n<li>Remove upgrades from Polylang older than 1.8<\\/li>\\n<li>Remove deprecated class PLL_Pointer<\\/li>\\n<li>Pro: Hide the license keys<\\/li>\\n<li>Pro: Fix redirect to the home page of a deactivated language<\\/li>\\n<li>Pro: Fix synchronization of post status not working<\\/li>\\n<li>Pro: Fix language switcher block not working in a post retrieved in REST API<\\/li>\\n<li>Pro: Fix PO export of strings with line breaks<\\/li>\\n<li>Pro: Fix file block title customization lost<\\/li>\\n<li>Add a dialog box to ask a confirmation about a language change in classic and block editors<\\/li>\\n<li>Improve browser language detection #591<\\/li>\\n<li>Improve robustness and documentation of code<\\/li>\\n<li>Fix media library after the language has been chnaged in the editor metabox<\\/li>\\n<li>Fix duplicated title attribute on flag link in posts list<\\/li>\\n<li>Fix legacy block editor language metabox compatibility with WordPress 5.6<\\/li>\\n<li>Fix uploaded theme and plugin files in media library<\\/li>\\n<li>Fix site title not translated in email change confirmation email<\\/li>\\n<li>Fix remaining deprecated jQuery notices #741<\\/li>\\n<li>Fix compatibility with GN publisher<\\/li>\\n<li>Fix compatibility with Woodmart theme search form<\\/li>\\n<li>Fix compatibility issue with 3rd party ajax requests since jQuery 3.3 #744<\\/li>\\n<li>Fix CSS conflict with WooCommerce Bookings<\\/li>\\n<li>Fix browser error when displaying an embed and using a cache plugin #757<\\/li>\\n<li>Fix post type archive title and metadesc not translated in Yoast SEO<\\/li>\\n<li>Fix PHP notice in REST API<\\/li>\\n<\\/ul>\\n<p>See <a href=\\\"https:\\/\\/plugins.svn.wordpress.org\\/polylang\\/trunk\\/changelog.txt\\\">changelog.txt<\\/a> for older changelog<\\/p>\"},\"banners\":{\"high\":\"\",\"low\":\"\"},\"icons\":{\"1x\":\"https:\\/\\/polylang.pro\\/wp-content\\/uploads\\/edd\\/2016\\/04\\/polylang-pro.png\",\"2x\":\"https:\\/\\/polylang.pro\\/wp-content\\/uploads\\/edd\\/2016\\/04\\/polylang-pro.png\"},\"msg\":\"No license key has been provided.\",\"stable_tag\":\"3.0.4\",\"tested\":\"5.7\",\"description\":[\"<p>Polylang Pro offers all the awesomeness of Polylang plus extra features and Premium support.<\\/p>\\n\"],\"changelog\":[\"<h4> 3.0.4 (2021-04-27) <\\/h4>\\n<ul>\\n<li>Improve performance in the pages (or hierarchical post types) list table<\\/li>\\n<li>Fix an ajax conflict with WooCommerce License manager<\\/li>\\n<\\/ul>\\n<h4> 3.0.3 (2021-03-23) <\\/h4>\\n<ul>\\n<li>Fix a warning when a language is corrupted in database (term_language missing)<\\/li>\\n<li>Fix confirmation modal with WooCommerce and WordPress &lt; 5.6<\\/li>\\n<li>Fix an ajax conflict with WooCommerce Tree Table Rate Shipping and HubSpot All-In-One Marketing<\\/li>\\n<\\/ul>\\n<h4> 3.0.2 (2021-03-16) <\\/h4>\\n<ul>\\n<li>Move hreflang attributes higher in the head section #771<\\/li>\\n<li>Fix custom flags not working (introduced in 3.0)<\\/li>\\n<li>Fix translation of the confirmation modal when changing the language of a post<\\/li>\\n<li>Fix js and css not loaded when Polylang is used as a mu-plugin ((introduced in 3.0))<\\/li>\\n<li>Fix support for html5 stylesheet link tags #775<\\/li>\\n<li>Fix possible warning in frontend-filters-links.php<\\/li>\\n<li>Yoast SEO Premium: Take over the multilingual compatibility removed in Yoast SEO Premium 15.8 #796<\\/li>\\n<li>Yoast SEO: Fix CPT breadcrumb title when the option is left empty #794<\\/li>\\n<li>Yoast SEO: Fix sitemap.xml not redirected on secondary domains #789<\\/li>\\n<\\/ul>\\n<h4> 3.0.1 (2021-03-10) <\\/h4>\\n<ul>\\n<li>Fix media gallery messed when editing a post in the classic editor<\\/li>\\n<li>Fix missing script dependency on old WP versions<\\/li>\\n<li>Fix CSS conflict with WooCommerce Bookings for WP &lt; 5.6<\\/li>\\n<li>Fix conflict resulting in \'__\' already defined in block-editor.js. #779<\\/li>\\n<li>Fix search form removed for some themes. Props Mari\\u00e1n Kada\\u0148ka. #780<\\/li>\\n<li>Fix fatal error with very old versions of Yoast SEO. Props Nicola Peluchetti. #781<\\/li>\\n<\\/ul>\\n<h4> 3.0 (2021-03-08) <\\/h4>\\n<ul>\\n<li>Add compatibility with WordPress 5.7<\\/li>\\n<li>Remove upgrades from Polylang older than 1.8<\\/li>\\n<li>Remove deprecated class PLL_Pointer<\\/li>\\n<li>Pro: Hide the license keys<\\/li>\\n<li>Pro: Fix redirect to the home page of a deactivated language<\\/li>\\n<li>Pro: Fix synchronization of post status not working<\\/li>\\n<li>Pro: Fix language switcher block not working in a post retrieved in REST API<\\/li>\\n<li>Pro: Fix PO export of strings with line breaks<\\/li>\\n<li>Pro: Fix file block title customization lost<\\/li>\\n<li>Add a dialog box to ask a confirmation about a language change in classic and block editors<\\/li>\\n<li>Improve browser language detection #591<\\/li>\\n<li>Improve robustness and documentation of code<\\/li>\\n<li>Fix media library after the language has been chnaged in the editor metabox<\\/li>\\n<li>Fix duplicated title attribute on flag link in posts list<\\/li>\\n<li>Fix legacy block editor language metabox compatibility with WordPress 5.6<\\/li>\\n<li>Fix uploaded theme and plugin files in media library<\\/li>\\n<li>Fix site title not translated in email change confirmation email<\\/li>\\n<li>Fix remaining deprecated jQuery notices #741<\\/li>\\n<li>Fix compatibility with GN publisher<\\/li>\\n<li>Fix compatibility with Woodmart theme search form<\\/li>\\n<li>Fix compatibility issue with 3rd party ajax requests since jQuery 3.3 #744<\\/li>\\n<li>Fix CSS conflict with WooCommerce Bookings<\\/li>\\n<li>Fix browser error when displaying an embed and using a cache plugin #757<\\/li>\\n<li>Fix post type archive title and metadesc not translated in Yoast SEO<\\/li>\\n<li>Fix PHP notice in REST API<\\/li>\\n<\\/ul>\\n<p>See <a href=\\\"https:\\/\\/plugins.svn.wordpress.org\\/polylang\\/trunk\\/changelog.txt\\\">changelog.txt<\\/a> for older changelog<\\/p>\"],\"plugin\":\"polylang-pro\\/polylang.php\",\"id\":\"polylang-pro\\/polylang.php\"}\";}', 'no'),
(825, '_transient_timeout_as-post-store-dependencies-met', '1621692537', 'no'),
(826, '_transient_as-post-store-dependencies-met', 'yes', 'no'),
(887, 'theme_mods_underscore-wordpress-with-gulp-master', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:24;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1621611881;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(888, '_transient_timeout__woocommerce_upload_directory_status', '1621698150', 'no'),
(889, '_transient__woocommerce_upload_directory_status', 'protected', 'no'),
(946, 'pll_dismissed_notices', 'a:2:{i:0;s:6:\"wizard\";i:1;s:5:\"pllwc\";}', 'yes'),
(947, 'yit_recently_activated', 'a:0:{}', 'yes'),
(948, 'YITH_WC_ywar_meta_value_import_id', '60a7df57b7ce3', 'yes'),
(949, 'YITH_WC_ywar_meta_value_import_id_updated', '1', 'yes'),
(966, '_transient_timeout_yith_register_e4e9ddd7a10697f9aac1b41ddf5f8195', '1621701038', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(967, '_transient_yith_register_e4e9ddd7a10697f9aac1b41ddf5f8195', 'a:2:{s:6:\"Latest\";s:6:\"1.6.25\";s:9:\"changelog\";s:31979:\"\n        \n         <h4>1.6.25 - Released on 19 May 2021</h4>\n        <ul>\n            <li>Update: YITH plugin framework</li>\n            <li>Fix: Fixed the display of the reviews when the option is set to 0</li>\n        </ul>\n        <h4>1.6.24 - Released on 11 May 2021</h4>\n        <ul>\n            <li>New: support for WooCommerce 5.3</li>\n            <li>Update: YITH plugin framework</li>\n            <li>Fix: total items count in reviews list table</li>\n            <li>Dev: added actions: ywar_review_metabox_saved, ywar_metabox_before_author_info_fields, ywar_metabox_after_author_info_fields</li>\n            <li>Dev: new filter ywar_filter_reviews_by_search_term_clause</li>\n        </ul>\n        <h4>1.6.23 - Released on 07 April 2021</h4>\n        <ul>\n            <li>New: support for WooCommerce 5.1</li>\n            <li>Update: YITH plugin framework</li>\n        </ul>\n        <h4>1.6.22 - Released on 10 March 2021</h4>\n        <ul>\n            <li>New: support for WordPress 5.7</li>\n            <li>New: support for WooCommerce 5.1</li>\n            <li>Update: YITH plugin framework</li>\n            <li>Dev: improved the get_reviews_stats function</li>\n            <li>Dev: added post type check at the moment of delete reviews in backend</li>\n        </ul>\n        <h4>1.6.21 - Released on 15 February 20211</h4>\n        <ul>\n            <li>fixed a problem where the reviews are not displayed</li>\n        </ul>\n        <h4>1.6.20 - Released on 11 February 2021</h4>\n        <ul>\n            <li>Fix: fixed a recaptcha issue</li>\n        </ul>\n        <h4>1.6.19 - Released on 10 February 2021</h4>\n        <ul>\n            <li>New: Support for WooCommerce 5.0</li>\n            <li>Update: YITH plugin framework</li>\n            <li>Update: updated German language</li>\n            <li>Fix: included the replies in the reviews convert</li>\n            <li>Fix: fixed the reCaptcha feature</li>\n        </ul>\n        <h4>1.6.18 - Released on 31 December 2020</h4>\n        <ul>\n            <li>New: Support for WooCommerce 4.9</li>\n            <li>Update: plugin framework</li>\n        </ul>\n        <h4>1.6.17 - Released on 27 November 2020</h4>\n        <ul>\n            <li>New: Support for WooCommerce 4.8</li>\n            <li>Update: plugin framework</li>\n            <li>Fix: avoid showing not approved reviews on shortcode</li>\n            <li>Dev: removed the .ready method from jQuery</li>\n            <li>Dev: including a different upload folder for the reviews attached files</li>\n            <li>Dev: added change to avoid possible XSS issues</li>\n            <li>Dev: added a prevent default on edit button click</li>\n            <li>Dev: added a stopImmediatePropagation on edit button click</li>\n            <li>Dev: added a stopImmediatePropagation on reply button click</li>\n            <li>Dev: avoid include unnecessary parameters in urls</li>\n        </ul>\n        <h4>1.6.16 - Released on 29 October 2020</h4>\n        <ul>\n            <li>New: Support for WooCommerce 4.7</li>\n            <li>New: Support for WordPress 5.6</li>\n            <li>Update: plugin framework</li>\n            <li>Fix: fixed most helpful reviews order</li>\n        </ul>\n         <h4>1.6.15 - Released on 02 October 2020</h4>\n        <ul>\n            <li>New: Support for WooCommerce 4.6</li>\n            <li>Update: plugin framework</li>\n            <li>Fix: Foxed a CSS issue with the name and star rating</li>\n            <li>Dev: minor CSS changes</li>\n        </ul>\n        <h4>1.6.14 - Released on 11 August 2020</h4>\n        <ul>\n            <li>New: Support for WooCommerce 4.4</li>\n            <li>New: Support for WordPress 5.5</li>\n            <li>Update: plugin framework</li>\n            <li>Dev: added new filter yith_ywar_review_content</li>\n            <li>Dev: minor CSS changes</li>\n        </ul>\n        <h4>1.6.13 - Released on 03 Jul 2020</h4>\n        <ul>\n            <li>New: Support for WooCommerce 4.3</li>\n            <li>Update: plugin framework</li>\n            <li>Update: language files</li>\n            <li>Dev: added notice type when publishing a review</li>\n            <li>Dev: added new filter \'ywar_denied_text_edit_allowed\'</li>\n            <li>Dev: added new filter \'yith_ywar_add_review_title\'</li>\n            <li>Dev: added new filter \'yith_ywar_review_title_label\'</li>\n            <li>Dev: added new filter \'ywar_skip_metakey_on_query\'</li>\n        </ul>\n        <h4>1.6.12 - Released on 19 May 2020</h4>\n        <ul>\n            <li>New: Support for WooCommerce 4.2</li>\n            <li>New: French Translation</li>\n            <li>Update: plugin framework</li>\n            <li>Update: language files</li>\n            <li>Fix: check if the comment is not an object in the all reviews shortcode template</li>\n            <li>Fix: undefined function error</li>\n            <li>Fix: fixed a possible issue in the thumbnail section in the backend</li>\n        </ul>\n        <h4>1.6.11 - Released on 24 April 2020</h4>\n        <ul>\n            <li>New: Support to WooCommerce 4.1</li>\n            <li>Tweak: prevent division by zero warning when total_review = 0</li>\n            <li>Tweak: added the trash/restore/delete sync with the WP comments</li>\n            <li>Tweak: use comment object instead of POST variable to get comment data</li>\n            <li>Update: plugin framework</li>\n            <li>Update: Greek language updated/li>\n            <li>Fix: disable the most helpful reviews if the vote section is disabled</li>\n            <li>Fix: fixed an issue with the non loaded reviews</li>\n            <li>Fix: check if the comment is not an object in the review template</li>\n            <li>Dev: align the avatar with the review box</li>\n            <li>Dev: deleting the product Schema, now the Google Schema is completely managed by WooCommerce</li>\n            <li>Dev: added new filter \'yith_ywar_show_filter_helpful_recent\'</li>\n            <li>Dev: new attributes for filters \'yith_advanced_reviews_user_can_submit_review_use_custom\' and \'yith_advanced_reviews_user_can_submit_review_custom_value\'</li>\n        </ul>\n        <h4>1.6.10 - Released on 05 March 2020</h4>\n        <ul>\n            <li>New: added Greek language</li>\n            <li>New: added the plugin shortcode to the Elementor panel</li>\n            <li>Fix: exclude the non rated reviews from the average rating</li>\n            <li>Dev: all strings escaped</li>\n        </ul>\n        <h4>1.6.9 - Released on 27 February 2020</h4>\n        <ul>\n            <li>New: Support to WordPress 5.4</li>\n            <li>New: Support to WooCommerce 4.0</li>\n            <li>New: now displays a successful message when a user submit a review</li>\n            <li>New: added Greek translation</li>\n            <li>Tweak: added the attached images to the reviews shortcode</li>\n            <li>Tweak: added stars in the shortcode reviews</li>\n            <li>Update: Language file .pot</li>\n            <li>Update: Spanish language</li>\n            <li>Update: updated plugin fw</li>\n            <li>Update: updated plugin settings</li>\n            <li>Fix: fixed a warning in the Schema</li>\n            <li>Fix: fixed textarea name in order to avoid conflicts with possible equal IDs</li>\n            <li>Fix: remove the reply button when the user is not logged in and he can\'t leave a review</li>\n            <li>Dev: added new filter ywar_get_thumbnails_div_return</li>\n            <li>Dev: added new filter ywar_customer_reviews_text</li>\n            <li>Dev: added missing texts to avoid empty values</li>\n            <li>Dev: check if user exist</li>\n        </ul>\n        <h4>1.6.8 - Released on 23 December 2019</h4>\n        <ul>\n            <li>New: Support for WooCommerce 3.9</li>\n            <li>Update: plugin framework</li>\n            <li>Fix: deleted unnecessary schema code for reviews in the reviews shortcode template</li>\n            <li>Dev: new filter \'yith_ywar_redirect_after_submit_review\'</li>\n            <li>Dev: new filter \'yith_ywar_show_review_shortcode_without_product_id\'</li>\n        </ul>\n		<h4>1.6.7 - Released on 15 November 2019</h4>\n        <ul>\n            <li>Update: Italian language</li>\n            <li>Update: plugin framework</li>\n            <li>Fix: fixed the issue with the duplicate product short description</li>\n            <li>Fix: option panel changes</li>\n        </ul>\n        <h4>1.6.6 - Released on 05 November 2019</h4>\n        <ul>\n            <li>New: support for WordPress 5.3</li>\n            <li>New: support for WooCommerce 3.8</li>\n            <li>Update: plugin framework</li>\n            <li>Update: updated .pot file</li>\n            <li>Update: updated language files</li>\n            <li>Update: updated the Google Schema in the reviews</li>\n            <li>Fix: fixed an error in the Schema</li>\n            <li>Fix: fixed warning in review template</li>\n            <li>Dev: replacing the product description by the short description in the schema meta</li>\n        </ul>\n        <h4>1.6.5 - Released on 09 October 2019</h4>\n        <ul>\n            <li>New: Support to WordPress 5.2.3</li>\n            <li>New: Added pagination to yith_ywar_show_reviews shortcode</li>\n            <li>Tweak: Added a new color option to change the \"Most recent reviews\" and \"Most helpful reviews\" tab</li>\n            <li>Tweak: New improvements in the reviews shortcode</li>\n            <li>Update: plugin framework</li>\n            <li>Update: updated .pot file</li>\n            <li>Update: updated the Google Schema in the reviews</li>\n            <li>Fix: fixed the edit message when the edit is not allowed</li>\n            <li>Dev: adding a new filter to redirect the voting login</li>\n            <li>Dev: fixed a minor issue in the yith_ywar_show_reviews shortcode</li>\n        </ul>\n        <h4>1.6.4 - Released on 05 August 2019</h4>\n        <ul>\n            <li>New: support WooCommerce 3.7</li>\n            <li>New: new filter yith_advanced_reviews_query_review_list_args</li>\n            <li>Tweak: fixed a condition the admin could not reply to customers</li>\n            <li>Update: updated plugin core</li>\n            <li>Update: Updated Italian Language</li>\n            <li>Fix: fixed the review stats not updating when deleting permanently with the bulk action</li>\n            <li>Fix: deleted the add new button in the edit review page</li>\n            <li>Dev: deleted the type numeric in the queries compare</li>\n        </ul>\n        <h4>1.6.3 - Released on 29 May 2019</h4>\n        <ul>\n            <li>New: support to WordPress 5.2</li>\n            <li>New: added a shortcode to display the reviews [yith_ywar_show_reviews]</li>\n            <li>Update: Updated plugin Framework</li>\n            <li>Update: version of file ywar-rating.php</li>\n            <li>Update: Updated Dutch Language</li>\n            <li>Fix: Fixed condition of reCaptcha for product page.</li>\n            <li>Dev: fixed an Undefined index error</li>\n            <li>Dev: Added new filter \'yith_ywar_check_ajax_wp_nonce_vote_review_callback\' for vote review callback</li>\n            <li>Dev: fixing an issue in the shortcode [yith_ywar_show_reviews]</li>\n        </ul>\n        <h4>1.6.2 - Released on 09 April 2019</h4>\n        <ul>\n            <li>New: support to WooCommerce 3.6.0 RC 1</li>\n            <li>Update: updated plugin Framework</li>\n            <li>Update: language file .pot</li>\n            <li>Update: Updated Dutch language</li>\n            <li>Update: Updated Spanish language</li>\n            <li>Fix: check the thumbs id in the attachment section</li>\n            <li>Fix: Fixed showing all features reviews</li>\n        </ul>\n        <h4>1.6.1 - Released on 15 March 2019</h4>\n        <ul>\n            <li>Update: updated plugin Framework</li>\n            <li>Update: language file .pot</li>\n            <li>Fix: deleted the call to the reviews_list function in the product reviews template</li>\n            <li>Fix: Don\'t display the replies as a reviews in the reviews list</li>\n            <li>Fix: fixed the name of the Dutch translation files</li>\n            <li>Fix: include Recaptcha scripts only when the module is enabled</li>\n            <li>Fix: Fixed warning when offset of review doesn\'t exists.</li>\n            <li>Fix: fixed an error that appear in the Google SDTT</li>\n        </ul>\n        <h4>1.6.0 - Released on 25 February 2019</h4>\n        <ul>\n            <li>New: added a bubble notification in the backend when a new review or reply is added </li>\n            <li>Tweak: improving the plugin performance</li>\n            <li>Update: updated Dutch language</li>\n            <li>Update: updated Spanish language</li>\n            <li>Update: updated template ywar-rating.php</li>\n            <li>Update: updated plugin Framework</li>\n            <li>Update: Update template version in order to prevent notice on WooCommerce status</li>\n            <li>Update: main language file</li>\n            <li>Fix: count notice getting Review count value</li>\n            <li>Fix: wrong format for dutch language files</li>\n            <li>Fix: fixed a non numeric value warning</li>\n            <li>Fix: Fixed reCaptcha condition, it was working on admin panel</li>\n            <li>Dev: added new filter yith_advanced_reviews_allow_reply_condition</li>\n        </ul>\n        <h4>1.5.7 - Released on 07 December 2018</h4>\n        <ul>\n            <li>New: support to WordPress 5.0</li>\n            <li>New: Slovenian language, thanks to Franci Kern</li>\n            <li>Update: plugin core to version 3.1.6</li>\n            <li>Update: Brazilian language .po and .mo files</li>\n            <li>Update: Portuguese language file</li>\n            <li>Update: main language file</li>\n            <li>Dev: new filter \'yith_ywar_display_rating_stars_condition\'</li>\n            <li>Dev: updating the filter \'yith_advanced_reviews_reviews_title_text\'</li>\n            <li>Dev: new filter \'yith_advanced_reviews_reviews_title_text\'</li>\n        </ul>\n        <h4>1.5.6 - Released on 22 October 2018</h4>\n        <ul>\n            <li>Update: Plugin framework</li>\n        </ul>\n        <h4>1.5.5 - Released on 17 October 2018</h4>\n        <ul>\n            <li>New: Support to WooCommerce 3.5.0</li>\n            <li>Tweak: new action links and plugin row meta in admin manage plugins page</li>\n            <li>Update: updating the .pot</li>\n            <li>Update: Updating the German translation, thanks to Alexander Cekic</li>\n            <li>Fix: Avoid spam for user reviews who have not purchased the product</li>\n            <li>Dev: added filter yith_ywar_add_filtering_link</li>\n            <li>Dev: check about recapcha only on products</li>\n            <li>Dev: added a new filter to the tab title</li>\n            <li>Dev: added a new filter to check if is a custom user</li>\n        </ul>\n        <h4>1.5.4 - Released on 28 June 2018</h4>\n        <ul>\n            <li>New: Added screen options to reviews screen</li>\n            <li>Update: Italian translation</li>\n            <li>Update: Dutch translation</li>\n            <li>Update: Spanish translation</li>\n            <li>Update: Documentation link of the plugin</li>\n            <li>Fix: mark comments created from a yith review as imported</li>\n            <li>Dev: checking YITH_Privacy_Plugin_Abstract for old plugin-fw versions</li>\n            <li>Dev: including \'wp-admin/includes/plugin.php\'</li>\n            <li>Dev: Improvement of the performance on product page</li>\n        </ul>\n        <h4>1.5.3 - Released on 25 May 2018</h4>\n        <ul>\n            <li>New: Support to GDPR compliance</li>\n            <li>New: recaptcha</li>\n            <li>New: added Persian ( farsi ) translation to the plugin, thanks to BanuSara Group</li>\n            <li>Tweak: SEO Improvements (added rel=\"nofollow\" to several links)</li>\n            <li>Tweak: add variable $review on filter yith_ywar_review_author_data</li>\n            <li>Update: Italian translation</li>\n            <li>Update: Dutch translation</li>\n            <li>Update: Documentation link of the plugin</li>\n            <li>Fix: Capatibility changed from manage_option to manage_woocommerce</li>\n            <li>Fix: fixed visual issue in a string</li>\n            <li>Fix: adding product item to aggregateRating</li>\n            <li>Fix: recaptcha</li>\n            <li>Dev: adding new filters</li>\n        </ul>\n\n        <h4>1.5.2 - Released on 16 February 2018</h4>\n        <ul>\n            <li>Fix: Version in template ywar-rating.php</li>\n            <li>Fix: Converting comments into reviews</li>\n        </ul>\n\n        <h4>1.5.1 - Released on 30 January 2018</h4>\n        <ul>\n            <li>New: support to WooCommerce 3.3.0-RC2</li>\n            <li>Update: plugin framework 3.0.10</li>\n            <li>Fix: review form is showed to non-verified owners even if the related WooCommerce option is enabled</li>\n            <li>Dev: new filter \'filter yith_ywar_review_author_data\'</li>\n        </ul>\n\n        <h4>1.5.0 - Released on 04 January 2018</h4>\n        <ul>\n            <li>New: dutch translation</li>\n            <li>New: attachments of review images are now loading in a lightbox</li>\n            <li>New: support to WooCommerce 3.2.6</li>\n            <li>Fix: deny to load posts inside review section</li>\n            <li>Update: plugin framework to the version 3.0.5</li>\n            <li>Dev: new filter \'ywar_arg_for_reviews\'</li>\n            <li>Dev: new filter \'yith_wc_advance_reviews_ywar_script\'</li>\n        </ul>\n\n        <h4>1.4.7 - Released on 08 November 2017</h4>\n        <ul>\n            <li>Fix: remove testing strings</li>\n        </ul>\n\n        <h4>1.4.6 - Released on 07 November 2017</h4>\n        <ul>\n            <li>New: support to WooCommerce 3.2.3</li>\n            <li>Add: Option to show the Most Helpful Reviews tab selected by default</li>\n            <li>Fix: Option \"Number of reviews to display\" did not work properly</li>\n        </ul>\n        <h4>1.4.5 - Released on 20 Julyy 2017</h4>\n        <ul>\n            <li>Fix: reinitialize PrettyPhoto on load more</li>\n            <li>Update: YITH Plugin Framework</li>\n        </ul>\n        <h4>1.4.4 - Released on 06 Julyy 2017</h4>\n        <ul>\n            <li>New: support for WooCommerce 3.1</li>\n            <li>New: tested up to WordPress 4.8</li>\n            <li>Update: YITH Plugin Framework</li>\n        </ul>\n        <h4>1.4.3 - Released on 27 June 2017</h4>\n        <ul>\n            <li>New: hide review bars if \'Product ratings\' option is not set in WooCommerce settings page</li>\n            <li>Dev: updated template ywar-single-product-reviews.php</li>\n            <li>Dev: added template ywar-review-bars</li>\n        </ul>\n        <h4>1.4.2 - Released on 19 May 2017</h4>\n        <ul>\n            <li>Fix: privacy issue, removed user email from the Gravatar alt attribute</li>\n        </ul>\n        <h4>1.4.1 - Released on 23 March 2017</h4>\n        <ul>\n            <li>New:  Support WooCommerce 3.0</li>\n            <li>Fix: review list corrupted if one product with reviews was deleted</li>\n            <li>Fix: YITH Plugin Framework initialization</li>\n        </ul>\n        <h4>1.4.0 - Released on 16 March 2017</h4>\n        <ul>\n            <li>New:  Support to WooCommerce 2.7.0-RC1</li>\n            <li>Update: YITH Plugin Framework</li>\n        </ul>\n        <h4>1.3.17 - Released on 13 February 2017</h4>\n        <ul>\n            <li>Fix: wrong average rating calculation when an approved review is deleted</li>\n            <li>Fix: review\'s replies disappear when the review is set as featured</li>\n            <li>Dev: filter \'yith_advanced_reviews_review_container_start\' in template file ywar-product-reviews.php</li>\n            <li>Dev: filter \'yith_ywar_login_url\' lets third party to set the login URL for guest users</li>\n        </ul>\n        <h4>1.3.16 - Released on 11 January 2017</h4>\n        <ul>\n            <li>Fix: with YITH WooCommerce Points and Rewards plugin, points for reviews not credited properly</li>\n        </ul>\n        <h4>1.3.15 - Released on 03 January 2017</h4>\n        <ul>\n            <li>Fixed: max file size for attachments not working properly</li>\n        </ul>\n        <h4>1.3.14 - Released on 07 December 2016</h4>\n        <ul>\n            <li>Added: ready for WordPress 4.7</li>\n        </ul>\n        <h4>1.3.13 - Released on 07 November 2016</h4>\n        <ul>\n            <li>Added: new option for the file max size allowed</li>\n            <li>Added: attachments of the same review are shown in a lightbox</li>\n        </ul>\n        <h4>1.3.12 - Released on 02 November 2016</h4>\n        <ul>\n            <li>Added: choose front end colors from plugin options</li>\n        </ul>\n        <h4>1.3.11 - Released on 31 October 2016</h4>\n        <ul>\n            <li>Added: a new option for entering the id or CSS class of the main review container</li>\n            <li>Added: all script and CSS belong to the optionable container and not to a fixed id</li>\n            <li>Added: in reviews table, show the content and a link to the parent review for ever reply</li>\n        </ul>\n        <h4>1.3.10 - Released on 08 August 2016</h4>\n        <ul>\n            <li>Updated: moved the set_approved_status method at the end of the review creation process in order to fire only when all data are stored</li>\n            <li>Added: trigger the \'wp_set_comment_status\' action when the approval status of the review changes</li>\n        </ul>\n        <h4>1.3.9 - Released on 13 June 2016</h4>\n        <ul>\n            <li>Updated: WooCommerce 2.6 100% compatible</li>\n        </ul>\n        <h4>1.3.8 - Released on 16 May 2016</h4>\n        <ul>\n            <li>Added: italian localization file</li>\n            <li>Added: spanish localization file</li>\n            <li>Added: filter \'yith_advanced_reviews_avatar_email\' let you change the displayed author email on ywar-review.php template file</li>\n        </ul>\n        <h4>1.3.7 - Released on 22 April 2016</h4>\n        <ul>\n            <li>Fixed: reviews do not shown author data edited from admin edit review page</li>\n        </ul>\n        <h4>1.3.6 - Released on 06 April 2016</h4>\n        <ul>\n            <li>Added: new section in edit review page for author information and management</li>\n            <li>Fixed: reviews table issue in a multilingual environment</li>\n        </ul>\n        <h4>1.3.5 - Released on 18 March 2016</h4>\n        <ul>\n            <li>Updated: removed color properties in CSS file so dark theme will not have visual issues</li>\n            <li>Fixed: missing argument caused a warning</li>\n            <li>Updated: changed capability for manage Reviews to \'manage_woocommerce\'</li>\n            <li>Added: filter yith_ywar_manage_reviews_capability for let third party plugin to change the capability for managing the Reviews</li>\n        </ul>\n        <h4>1.3.4 - Released on 29 February 2016</h4>\n        <ul>\n            <li>Fixed: transient not deleted in all the needed cases give temporary wrong review values</li>\n            <li>Fixed: current object selected in wrong way in ywar-attachments.js</li>\n            <li>Fixed: string in ywar-attachments.js not localizable</li>\n            <li>Added: new action \'yith_ywar_product_reviews_updated\' reporting an update for a product review</li>\n        </ul>\n        <h4>1.3.3 - Released on 28 January 2016</h4>\n        <ul>\n            <li>Updated: reviews are shown even if comments_open is false</li>\n        </ul>\n        <h4>1.3.2 - Released on 27 January 2016</h4>\n        <ul>\n            <li>Fixed: admin edit link for reviews do not work</li>\n        </ul>\n        <h4>1.3.1 - Released on 26 January 2016</h4>\n        <ul>\n            <li>Fixed: conflict with YITH WooCommerce Gift Cards that prevents the sending of attachments</li>\n            <li>Fixed: the google rich snippet about the review date do not shows the review time</li>\n        </ul>\n        <h4>1.3.0 - Released on 04 January 2016</h4>\n        <ul>\n            <li>Updated: ready for WooCommerce 2.5</li>\n            <li>Added: action ywar_woocommerce_review_before_comment_text on review.php as replace for woocommerce_review_before_comment_text for WooCommerce 2.5+</li>\n            <li>Added: action ywar_woocommerce_review_after_comment_text on review.php as replace for woocommerce_review_after_comment_text for WooCommerce 2.5+</li>\n        </ul>\n        <h4>1.2.3 - Released on 21 December 2015</h4>\n        <ul>\n            <li>Fixed: author name shown twice on reviews table</li>\n            <li>Fixed: warning shown on WooCommerce reviews widget</li>\n            <li>Update: improved reviews rating query performance</li>\n        </ul>\n        <h4>1.2.2 - Released on 26 November 2015</h4>\n        <ul>\n            <li>Fixed: review not submitted when \"Ratings are required to leave a review\" option is not set</li>\n        </ul>\n        <h4>1.2.1 - Released on 16 November 2015</h4>\n        <ul>\n            <li>Update: YITH plugin framework loading starts on plugins_loaded instead of after_setup_theme</li>\n            <li>Added: review_label CSS class on ywar-product-reviews.php template file</li>\n            <li>Fixed: edit reviews fails</li>\n        </ul>\n        <h4>1.2.0 - Released on 05 November 2015</h4>\n        <ul>\n            <li>Update: YITH plugin framework</li>\n            <li>Update: add CSS class \"clearfix\" on single review template</li>\n            <li>Added: optionally limit a verified customer from submitting multiple reviews for the same product</li>\n            <li>Added: user can edit a previous review</li>\n            <li>Fix: don\'t show \"Reply\" button if the user has not permission to write a review</li>\n            <li>Update: changes to ywar-product-reviews.php template for stopping multiple reviews from a single verified customer</li>\n            <li>Update: in ywar-product-reviews.php template all elements are wrapped inside a div with id \"ywar_reviews\"</li>\n            <li>Added: author information on back end reviews table.</li>\n        </ul>\n        <h4>1.1.14 - Released on 14 October 2015</h4>\n        <ul>\n            <li>Fix: name of the user not shown if the reviews is submitted by a guest not logged in.</li>\n        </ul>\n        <h4>1.1.13 - Released on 07 October 2015</h4>\n        <ul>\n            <li>Update: changed text-domain to yith-woocommerce-advanced-reviews</li>\n        </ul>\n        <h4>1.1.12 - Released on 23 September 2015</h4>\n        <ul>\n            <li>Added: improved query performance for low resources server.</li>\n            <li>Fix: sometimes items was not shown clicking on a view on reviews back end page.</li>\n        </ul>\n        <h4>1.1.11 - Released on 21 September 2015</h4>\n        <ul>\n            <li>Added: admins can reply to review from site front end even if woocommerce setting - Only allow reviews from \"verified owners\" - is checked.</li>\n            <li>Fix: replies from admins written from site front end are shown without moderation.</li>\n            <li>Added: check for empty content before trying to submit a review</li>\n        </ul>\n        <h4>1.1.10 - Released on 03 September 2015</h4>\n        <ul>\n            <li>Fix: CSS issue on pages other than \"Reviews\" page</li>\n        </ul>\n        <h4>1.1.9 - Released on 28 August 2015</h4>\n        <ul>\n            <li>Fix: Review average rating was calculated including also unapproved reviews</li>\n        </ul>\n\n        <h4>1.1.8 - Released on 27 August 2015</h4>\n        <ul>\n            <li>Tweak: update YITH Plugin framework</li>\n        </ul>\n        <h4>1.1.7 - Released on 20 Julyy 2015</h4>\n        <ul>\n            <li>Fix: blog comments conflict.</li>\n        </ul>\n        <h4>1.1.6 - Released on 17 Julyy 2015</h4>\n        <ul>\n            <li>Fix: wrong product average rating.</li>\n        </ul>\n        <h4>1.1.5 - Released on 14 Julyy 2015</h4>\n        <ul>\n            <li>Fix: review title not shown.</li>\n        </ul>\n        <h4>1.1.4 - Released on 21 May 2015</h4>\n        <ul>\n            <li>Added: new filter before showing review content elements</li>\n        </ul>\n        <h4>1.1.3 - Released on 12 May 2015</h4>\n        <ul>\n            <li>Fix: when the review author is unknown, it was shown admin user as content author.</li>\n        </ul>\n        <h4>1.1.2 - Released on 11 May 2015</h4>\n        <ul>\n            <li>New: Custom template are fully overwritable from theme files</li>\n        </ul>\n        <h4>1.1.1 - Released on 07 May 2015</h4>\n        <ul>\n            <li>Fixed: Call to undefined function session_status for previous PHP version</li>\n        </ul>\n        <h4>1.1.0 - Released on 06 May 2015</h4>\n        <ul>\n            <li>Added: advanced reviews custom post type</li>\n            <li>Added: you can set the reviews as featured, in this way these will be showed before the others and highlighted compared to a normal review</li>\n            <li>Added: a report to view the statistics about the value of the reviews, with minimum, maximum and average rate</li>\n            <li>Added: allow users to report inappropriate contents</li>\n            <li>Added: hide temporarily a review if this receives a number of inappropriate reports higher than a customized value</li>\n            <li>Added: check the review status from a single page, choosing if a review is approved, featured, inappropriate, with blocked answers and so on</li>\n            <li>Added: filter the reviews by status or update the status with bulk actions</li>\n            <li>Added: sort reviews by received rates, both positive and negative</li>\n        </ul>\n        <h4>1.0.11 - Released on 10 April 2015</h4>\n        <ul>\n            <li>Fixed: some string was not correctly translated</li>\n        </ul>\n        <h4>1.0.10 - Released on 09 April 2015</h4>\n        <ul>\n            <li>Added: new option let admin to manually approve reviews before they are shown on product page</li>\n        </ul>\n        <h4>1.0.9 - Released on 05 March 2015</h4>\n        <ul>\n            <li>Added: support WPML</li>\n            <li>Fixed: Minor bugs</li>\n            <li>Added : new option for allowing anonymous users to vote the reviews</li>\n            <li>New: admins can interact with reviews from product page on back-end</li>\n        </ul>\n        <h4>1.0.8 - Released on 26 February 2015</h4>\n        <ul>\n            <li>Fixed: adding a rating to a reviews failed after a \"reply to\" attempt</li>\n        </ul>\n        <h4>1.0.7 - Released on 12 February 2015</h4>\n        <ul>\n            <li>Added: Woocommerce 2.3 support</li>\n            <li>Tweak: String translation</li>\n        </ul>\n        <h4>1.0.6 - Released on 05 February 2015</h4>\n        <ul>\n            <li>Tweak: Buttons with WooCommerce style</li>\n            <li>Tweak: Review summary overwritten by theme</li>\n            <li>Fixed: Css issues</li>\n            <li>Fixed: Duplicate load more button</li>\n            <li>Fixed: Submit form disappears after Reply to</li>\n            <li>Fixed: \"Load more\" button style strong appearance</li>\n        </ul>\n        <h4>1.0.5 - Released on 04 February 2015</h4>\n        <ul>\n            <li>Tweak: Plugin core framework</li>\n        </ul>\n        <h4>1.0.4  - Released on 02 February 2015</h4>\n        <ul>\n            <li>Fixed: Minor bugs</li>\n        </ul>\n        <h4>1.0.3  - Released. 30 January 2015</h4>\n        <ul>\n            <li>Tweak: Plugin core framework</li>\n            <li>Tweak: Theme integration</li>\n        </ul>\n\n        <h4>1.0.2 - Released on 29 December 2014</h4>\n        <ul>\n            <li>Fixed: YIT_Plugin_Panel_WooCommerce class not exists</li>\n        </ul>\n\n        <h4>1.0.1 - Released on 23 December 2014</h4>\n        <ul>\n            <li>Updated: Plugin core framework</li>\n            <li>Tweak: Plugin options page</li>\n            <li>Fixed: Minor bugs</li>\n        </ul>\n\n        <h4>1.0.0 - Released on 09 December 2014</h4>\n        <ul>\n            <li>Initial Release</li>\n        </ul>\n        \n    \";}', 'no'),
(968, 'ywar_enable_review_title', 'yes', 'yes'),
(969, 'ywar_enable_attachments', 'yes', 'yes'),
(970, 'ywar_attachment_type', 'jpg,png', 'yes'),
(971, 'ywar_max_attachments', '0', 'yes'),
(972, 'ywar_attachment_max_size', '0', 'yes'),
(973, 'ywar_tab_selector', '#tab-reviews', 'yes'),
(974, 'ywar_enable_recaptcha', 'no', 'yes'),
(975, 'ywar_recaptcha_message_error', 'You have entered an incorrect reCAPTCHA value. Click the BACK button on your browser and try again.', 'yes'),
(976, 'ywar_import_review', 'yes', 'yes'),
(977, 'ywar_summary_bar_color', '#f4f4f4', 'yes'),
(978, 'ywar_summary_percentage_bar_color', '#a9709d', 'yes'),
(979, 'ywar_summary_percentage_value', 'yes', 'yes'),
(980, 'ywar_summary_rating_label_color', '#a9709d', 'yes'),
(981, 'ywar_summary_percentage_value_color', '#a9709d', 'yes'),
(982, 'ywar_summary_count_color', '#000000', 'yes'),
(983, 'ywar_tab_bottom_border_color', '#a9709d', 'yes'),
(984, 'ywar_enable_vote_system', 'yes', 'yes'),
(985, 'ywar_show_peoples_vote', 'yes', 'yes'),
(986, 'ywar_enable_visitors_vote', 'yes', 'yes'),
(987, 'ywar_review_moderation', 'no', 'yes'),
(988, 'ywar_limit_multiple_review', 'no', 'yes'),
(989, 'ywar_edit_reviews', 'no', 'yes'),
(990, 'ywar_review_per_page', '0', 'yes'),
(991, 'ywar_show_load_more', '1', 'yes'),
(992, 'ywar_reviews_dialog', 'no', 'yes'),
(993, 'ywar_reply_to_review', '2', 'yes'),
(994, 'ywar_report_inappropriate_review', '2', 'yes'),
(995, 'ywar_hide_inappropriate_review', '0', 'yes'),
(996, 'ywar_featured_review', '0', 'yes'),
(997, 'ywar_featured_review_tab_first', 'no', 'yes'),
(998, 'ywar_load_more_text', 'Load more', 'yes'),
(999, 'yit_plugin_fw_panel_wc_default_options_set', 'a:2:{s:15:\"yith_ywar_panel\";b:1;s:15:\"yith_wcwl_panel\";b:1;}', 'yes'),
(1000, 'yith_plugin_fw_promo_2019_bis', '1', 'yes'),
(1001, '_site_transient_timeout_yith_promo_message', '3243326490', 'no'),
(1002, '_site_transient_yith_promo_message', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n\n<promotions>\n    <expiry_date>2019-12-10</expiry_date>\n    <promo>\n        <promo_id>yithblackfriday2019</promo_id>\n        <title><![CDATA[<strong>YITH Black Friday</strong>]]></title>\n        <description><![CDATA[\n            Don\'t miss our <strong>30% discount</strong> on all our products! No coupon needed in cart. Valid from <strong>28th November</strong> to <strong>2nd December</strong>.\n        ]]></description>\n        <link>\n            <label>Get your deals now!</label>\n            <url><![CDATA[https://yithemes.com]]></url>\n        </link>\n        <style>\n            <image_bg_color>#272121</image_bg_color>\n            <border_color>#272121</border_color>\n            <background_color>#ffffff</background_color>\n        </style>\n        <start_date>2019-11-27 23:59:59</start_date>\n        <end_date>2019-12-03 08:00:00</end_date>\n    </promo>\n</promotions>', 'no'),
(1007, 'ywar_last_viewed', '', 'yes'),
(1014, 'widget_yith-wcwl-lists', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1015, 'widget_yith-wcwl-items', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1016, 'yith-wcwl-page-id', '47', 'yes'),
(1017, 'yith_wcwl_wishlist_page_id', '47', 'yes'),
(1018, 'yith_wcwl_version', '3.0.5', 'yes'),
(1019, 'yith_wcwl_db_version', '3.0.0', 'yes'),
(1021, '_transient_timeout_yith_register_d98492a8f1335195f0b37edc56ac6b50', '1621701572', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1022, '_transient_yith_register_d98492a8f1335195f0b37edc56ac6b50', 'a:2:{s:6:\"Latest\";s:6:\"3.0.22\";s:9:\"changelog\";s:42764:\"\n\n<h4>3.0.22 - Released on 17 May 2021</h4>\n<ul>\n    <li>New: support for WooCommerce 5.3</li>\n    <li>Update: YITH plugin framework</li>\n    <li>Tweak: add visual notification for error on ATW process</li>\n    <li>Tweak: add class to ATW container, when count is enabled</li>\n    <li>Tweak: use share link title for WhatsApp sharing link too</li>\n    <li>Tweak: enqueue plugin scripts only when needed</li>\n    <li>Fix: visibility param for wishlist queries not working correctly</li>\n    <li>Fix: generic selectors used at found_variations (thanks to vivik93)</li>\n</ul>\n<h4>3.0.21 - Released on 21 April 2021</h4>\n<ul>\n    <li>New: support for WooCommerce 5.2</li>\n    <li>New: added German translation</li>\n    <li>New: added no-robots headers for add_to_wishlist url (thanks to brix720)</li>\n    <li>Update: YITH plugin framework</li>\n    <li>Tweak: added datepicker to date fields on popular table</li>\n    <li>Tweak: code refactoring according to PHPCS</li>\n    <li>Fix: avoid setting session_id, until guest performs any edit operation over the lists</li>\n    <li>Fix: removed deprecated unbind from scripts</li>\n    <li>Dev: added new variable to the localize script to disable the popup of the products when grid view is enabled</li>\n    <li>Dev: added filter yith_wcwl_redirect_unauthenticated_users_http_status for unauthenticated users redirect</li>\n    <li>Dev: added filter yith_wcwl_disable_popup_grid_view to allow third party code disable popup on products grid view</li>\n    <li>Dev: added yith_wcwl_main_style_deps filter to allow devs remove unnecessary deps</li>\n    <li>Dev: added yith_wcwl_custom_icon_alt and yith_wcwl_custom_width filters, to allow dev customize ATW custom icon</li>\n</ul>\n<h4>3.0.20 - Released on 23 February 2021</h4>\n<ul>\n    <li>New: support for WordPress 5.7</li>\n    <li>New: support for WooCommerce 5.1</li>\n    <li>Update: YITH plugin framework</li>\n    <li>Fix: wrong data type for item insert query (thanks to jonatanmenendez)</li>\n    <li>Dev: added new yith_wcwl_get_wishlist_on_remove filter</li>\n</ul>\n<h4>3.0.19 - Released on 18 February 2021</h4>\n<ul>\n	<li>New: support for WooCommerce 5.0</li>\n	<li>Update: YITH plugin framework</li>\n	<li>Tweak: added transient for hidden products</li>\n	<li>Dev: fixed issue when unchecking all products in wishlist page</li>\n	<li>Dev: added yith_wcwl_mobile_media_query filter</li>\n	<li>Dev: added new filters yith_wcwl_remove_after_add_to_cart and yith_wcwl_allow_remove_after_add_to_cart</li>\n</ul>\n<h4>3.0.18 - Released on 13 January 2021</h4>\n<ul>\n	<li>New: support for WooCommerce 4.9</li>\n	<li>Update: plugin framework</li>\n	<li>Tweak: corrected wrong text domain for a string</li>\n	<li>Tweak: improved product name sanitization on wishlist template</li>\n	<li>Tweak: added variation details to Ask an Estimate email</li>\n	<li>Tweak: improved code style for all email templates</li>\n	<li>Fix: wishlist search not working for guest users</li>\n	<li>Dev: added fifth parameter for yith_wcwl_add_to_wishlist_button_html filter</li>\n	<li>Dev: added new yith_wcwl_promotion_email_item filter</li>\n</ul>\n<h4>3.0.17 - Released on 11 December 2020</h4>\n<ul>\n	<li>New: support for WooCommerce 4.8</li>\n	<li>Update: plugin framework</li>\n	<li>Update: Spanish translation</li>\n	<li>Tweak: added view wishlist anchor to wishlists links, when Multi-Wishlist is disabled</li>\n	<li>Tweak: added rel=\"noopener\" attribute to sharing links (thanks to onetimelord)</li>\n	<li>Tweak: avoid slugs that overflow column width</li>\n	<li>Tweak: improved Wishlist Items elementor Widget</li>\n	<li>Tweak: changed set of default columns for wishlist table</li>\n	<li>Tweak: improved style for Edit Title form in wishlist page</li>\n	<li>Fix: prevent load_fragments ajax call when no fragment is found for current page (thanks to powernic)</li>\n	<li>Fix: correctly sanitize fragments options</li>\n	<li>Dev: added 4th parameter to woocommerce_email_headers filter</li>\n	<li>Dev: added new filter yith_wcwl_dompdf_orientation</li>\n	<li>Dev: added new filter yith_wcwl_additional_crons</li>\n</ul>\n<h4>3.0.16 - Released on 10 November 2020</h4>\n<ul>\n    <li>New: support for WordPress 5.6</li>\n    <li>New: support for WooCommerce 4.7</li>\n    <li>New: possibility to update plugin via WP-CLI</li>\n    <li>Update: plugin framework</li>\n    <li>Update: french translation</li>\n    <li>Tweak: search view now shows matching wishlists instead of all the lists of matching customers</li>\n    <li>Tweak: default wishlist sorting now places last added item as heading item</li>\n    <li>Fix: avoid using localized string as param name for bulk action on wishlists table</li>\n    <li>Fix: prevent possible fatal errors due to missing email classes</li>\n    <li>Dev: added yith_wcwl_reload_on_found_variation filter to allow dev programmatically disable ATW reload on found_variation</li>\n    <li>Dev: added yith_wcwl_wishlist_view_images_after_thumbnail action</li>\n    <li>Dev: added yith_wcwl_modern_wishlist_empty_message filter</li>\n    <li>Dev: added yith_wcwl_ask_estimate_email_wishlist_name filter</li>\n    <li>Dev: removed deprecated .ready method from scripts</li>\n</ul>\n<h4>3.0.15 - Released on 16 October 2020</h4>\n<ul>\n    <li>New: support for WooCommerce 4.6</li>\n    <li>Update: plugin framework</li>\n    <li>Tweak: return product price as float in item class</li>\n    <li>Fix: bulk add to cart checkbox in the wishlist table not working</li>\n    <li>Fix: prevent possible fatal error when printing ATW button</li>\n    <li>Fix: original price being sent to database as int instead of float</li>\n    <li>Fix: wrong layout being loaded for manage endpoint</li>\n    <li>Dev: added new filter yith_wcwl_get_product_image_with_path</li>\n    <li>Dev: added new filter yith_wcwl_set_session_cookie</li>\n    <li>Dev: added new filter yith_wcwl_privacy_value</li>\n    <li>Dev: added new filter yith_wcwl_wishlist_privacy_types</li>\n    <li>Dev: added new filter yith_wcwl_available_admin_tabs_premium</li>\n    <li>Dev: added new parameter to yith_wcwl_{privacy}_wishlist_visibility filter</li>\n</ul>\n<h4>3.0.14 - Released on 17 September 2020</h4>\n<ul>\n    <li>New: support for WooCommerce 4.5</li>\n    <li>Update: plugin framework</li>\n    <li>Tweak: filter fragments to update only visible ATW when reset_data js event occurs</li>\n    <li>Tweak: fixed appearance of images_grid layout after sorting</li>\n    <li>Tweak: changed js handling to support selects as quantity input in wishlist view</li>\n    <li>Tweak: added error message when trying to add variable products to cart</li>\n    <li>Tweak: solved issue with confirm popup after search on All Wishlists section</li>\n    <li>Tweak: improved search among wishlists, to consider wishlist name, slug and token too</li>\n    <li>Fix: warning continue targeting switch is equivalent to break</li>\n    <li>Fix: promotional email heading not correctly retrieved inside wizard preview</li>\n    <li>Fix: issue with cart redirect when using YITH WCCL</li>\n    <li>Dev: added new yith_wcwl_admin_table_column_name_actions filter</li>\n    <li>Dev: added new yith_wcwl_admin_table_column_username_row filter</li>\n</ul>\n<h4>3.0.13 - Released on 17 August 2020</h4>\n<ul>\n    <li>Fix: moved check over Ajax Loading option on first wishlist init only, to avoid problems when dynamically loading ATW on variable products</li>\n    <li>Dev: added some new strings to wpml-config.xml file</li>\n</ul>\n<h4>3.0.12 - Released on 14 August 2020</h4>\n<ul>\n    <li>New: support for WordPress 5.5</li>\n    <li>New: support for WooCommerce 4.4</li>\n    <li>New: support for Polylang PRO</li>\n    <li>New: load correct Add to Wishlist (ATW) template for selected variation, and refresh it when changing variations on product page</li>\n    <li>Update: plugin framework</li>\n    <li>Tweak: added nocache headers to PDF download process</li>\n    <li>Tweak: hide Arrange column when there is only one product in wishlist</li>\n    <li>Tweak: added wpautop to promotional email body before sending</li>\n    <li>Tweak: show appropriate error message when trying to Add all to Cart, with variable product in list</li>\n    <li>Tweak: new style for the scrollbar of mini-wishlist widget</li>\n    <li>Tweak: changed messages for empty wishlist, no wishlists</li>\n    <li>Fix: upsells are now correctly identified as loop by wishlist</li>\n    <li>Fix: issue with dropdown showing default wishlist after one product is added to wishlist</li>\n    <li>Fix: icon select at backend showing [Object object]</li>\n    <li>Fix: avoid showing default list on wishlist dropdown after moving item to another list from the popup</li>\n    <li>Fix: quantity fields not triggering save function after an item is removed from wishlist</li>\n    <li>Fix: adding wrong quantity to cart after changing quantity on wishlist page</li>\n    <li>Fix: changed fragments indexes to work with a greater set of configurations</li>\n    <li>Fix: problem with Frequently Bought Together integration</li>\n    <li>Fix: notice when using custom icons for ATW buttons</li>\n    <li>Dev: added new localize variable to filter time to close Ask for an estimate popup</li>\n    <li>Dev: added new action yith_wcwl_before_add_all_to_cart_from_wishlist</li>\n    <li>Dev: added new filter yith_wcwl_add_all_to_cart_from_wishlist</li>\n    <li>Dev: added new filter yith_wcwl_add_all_to_cart_error_message</li>\n    <li>Dev: added new filter yith_wcwl_add_wishlist_notice</li>\n    <li>Dev: added new filter yith_wcwl_fragments_index_glue</li>\n</ul>\n<h4>3.0.11 - Released on 08 June 2020</h4>\n<ul>\n	<li>New: support for WooCommerce 4.2</li>\n	<li>Update: plugin framework</li>\n	<li>Tweak: set minimum item quantity to 1</li>\n	<li>Tweak: added WordPress among blocked bot user agents</li>\n	<li>Tweak: make sure to finalize session when possible</li>\n	<li>Tweak: added link to product in wishlist mobile template</li>\n	<li>Fix: Prevent error if default wishlist doesn\'t exists</li>\n	<li>Fix: update button not saving items position</li>\n	<li>Fix: correctly applied yith_wcwl_is_wishlist_responsive filter to yith_wcwl_is_mobile function</li>\n	<li>Fix: wrong check over show_ask_an_estimate_button</li>\n	<li>Fix: avoid to use cache that cannot be invalidated (stop caching queries results, use cache for user wishlists)</li>\n	<li>Fix: Ask an Estimate button on mobile footer not using dedicated label option</li>\n	<li>Fix: additional info popup not appearing for guest users</li>\n	<li>Fix: clear_caches method wasnt properly cleaning cache for guest users</li>\n	<li>Dev: added yith_wcwl_ask_for_an_estimate_popup_text filter</li>\n	<li>Dev: added yith_wcwl_show_wishlist_update_button filter</li>\n	<li>Dev: added yith_wcwl_add_to_wishlist_icon_html filter</li>\n	<li>Dev: added yith_wcwl_add_to_wishlist_heading_icon_html filter</li>\n	<li>Dev: added yith_wcwl_add_to_wishlist_data trigger, to allow third party code change data submitted with ATW ajax call</li>\n</ul>\n<h4>3.0.10 - Released on 07 May 2020</h4>\n<ul>\n    <li>New: support for WooCommerce 4.1</li>\n    <li>New: prevent some UserAgents from triggering wishlist handling (avoid spam)</li>\n    <li>New: added minor css fixes for Storefront theme</li>\n    <li>New: added option to choose whether to automatically close feedback popup or not</li>\n    <li>Update: plugin framework</li>\n    <li>Tweak: added product_url placeholder for promotional email body</li>\n    <li>Tweak: review add process, to avoid unnecessary items update</li>\n    <li>Tweak: items are now counted per ID instead of user_id</li>\n    <li>Tweak: show variation attributes on Popular table</li>\n    <li>Tweak: changed \'Price\' by \'Unit price\' on wishlist modern view</li>\n    <li>Tweak: improved localized date on wishlist table</li>\n    <li>Tweak: added wishlist as gutenberg block in new wishlist page</li>\n    <li>Tweak: added \"Wishlist page\" post status</li>\n    <li>Tweak: added new check to avoid \"Cannot read property contains of undefined\" error</li>\n    <li>Tweak: added search box to All Wishlist view</li>\n    <li>Tweak: added default values for email contents on plugin options</li>\n    <li>Tweak: user can now delete also default wishlist</li>\n    <li>Tweak: minor changes to \'manage modern\' layout</li>\n    <li>Tweak: added view > and close links to confirmation popup</li>\n    <li>Fix: solved issue with item counts, when filtering per product</li>\n    <li>Fix: fixed billing last name value on \'promotional\', \'on sale\' and \'back in stock\' emails</li>\n    <li>Fix: show remove button on list mobile when at least one of the two buttons is shown on desktop</li>\n    <li>Fix: notice due to undefined widgets attributes</li>\n    <li>Fix: fatal error on empty wishlist page</li>\n    <li>Fix: added some checks to avoid fatal errors in back in stock email</li>\n    <li>Dev: added yith_wcwl_create_wishlist_button_label filter</li>\n    <li>Dev: added yith_wcwl_wishlist_download_url filter</li>\n    <li>Dev: added yith_wcwl_is_wishlist_responsive filter, to allow developers disable responsive behaviour for the wishlist</li>\n    <li>Dev: added yith_wcwl_generated_default_wishlist action</li>\n    <li>Dev: added yith_wcwl_default_wishlist filter</li>\n    <li>Dev: added yith_wcwl_add_notice wrapper function, to avoid possible fatal errors when calling wc_add_notice</li>\n</ul>\n<h4>3.0.9 - Released on 09 March 2020</h4>\n<ul>\n    <li>Tweak: use wp_kses_post instead of esc_html for browse wishlist text</li>\n    <li>Update: plugin framework</li>\n</ul>\n<h4>3.0.8 - Released on 04 March 2020</h4>\n<ul>\n    <li>Tweak: use wp_kses_post sanitization instead of esc_html for button labels to allow developers to add HTML to them</li>\n    <li>Tweak: minor improvements for OceanWP theme style</li>\n    <li>Tweak: improved widgets style when they are applied via Elementor</li>\n    <li>Fix: notice on empty wishlist page (thanks to ashimhastech)</li>\n</ul>\n<h4>3.0.7 - Released on 03 March 2020</h4>\n<ul>\n    <li>New: support for WordPress 5.4</li>\n    <li>New: support for WooCommerce 4.0</li>\n    <li>New: edit title & change privacy on Manage view are now performed via ajax</li>\n    <li>New: improved checks on user capabilities</li>\n    <li>New: added wishlist widgets to Elementor</li>\n    <li>Update: plugin framework</li>\n    <li>Tweak: added check on user permission level for all wishlist actions</li>\n    <li>Tweak: show 404 page when non-owner user tries to visit private wishlists</li>\n    <li>Tweak: hide share buttons on private wishlists (thanks to Jory)</li>\n    <li>Tweak: escape output on templates</li>\n    <li>Fix: non-owner users cannot sort wishlist any longer</li>\n    <li>Fix: custom css not being loaded in the page</li>\n    <li>Fix: added check to avoid fatal error in the popular users table</li>\n    <li>Fix: compatibility with YITH Infinite Scrolling when ajax loading is enabled</li>\n    <li>Fix: avoid notice when \'ask an estimate button\' is not showing in the template</li>\n    <li>Fix: hide share section on wishlist page when \"Share wishlist\" option is disabled</li>\n    <li>Fix: assign correct css rule to border color for Wishlist Table</li>\n    <li>Fix: added pagination links to all wishlist templates</li>\n    <li>Dev: added yith_wcwl_reload_fragments trigger to refresh wishlist fragments</li>\n    <li>Dev: added yith_wcwl_remove_hidden_products_via_query filter</li>\n    <li>Dev: added yith_wcwl_show_add_to_wishlist filter, to allow dev selectively hide Add to Wishlist buttons</li>\n    <li>Dev: added yith_wcwl_create_wishlist_title_label filter</li>\n    <li>Dev: added yith_wcwl_search_wishlist_title_label filter</li>\n    <li>Dev: added yith_wcwl_manage_wishlist_title_label filter</li>\n    <li>Dev: new actions on wishlist-view.php template (thanks to Jory)</li>\n    <li>Dev: added .editorconfig (thanks to Jory)</li>\n</ul>\n<h4>3.0.6 - Released on 04 February 2020</h4>\n<ul>\n    <li>Tweak: avoid redirect for guest users if wishlist page is set to my-account</li>\n    <li>Tweak: allow popup timeout to be filtered via code</li>\n    <li>Tweak: using yith_wcwl_l10n.popup_timeout for wishlist messages too</li>\n    <li>Tweak: minor improvements to localization</li>\n    <li>Tweak: promotion email preview can now be scrolled</li>\n    <li>Tweak: update wrong text domains</li>\n    <li>Tweak: changed default value for ATW icons</li>\n    <li>Tweak: set wishlist session cookie JIT</li>\n    <li>Tweak: use secure cookie for sessions, when possible (thanks to Ahmed)</li>\n    <li>Tweak: improved cache handling for get_default_wishlist method</li>\n    <li>Tweak: even if system cannot set session cookie, calculate session_id and use it for the entire execution</li>\n    <li>Tweak: improved privacy labels for the wishlists</li>\n    <li>Update: Italian language</li>\n    <li>Update: plugin framework</li>\n    <li>Fix: prevent error if list doesn\'t exists</li>\n    <li>Fix: issue with wishlist_id query param</li>\n    <li>Fix: items query now search for product in original language</li>\n    <li>Fix: Create promotion button for single products view</li>\n    <li>Fix: fatal error after saving promotional email draft</li>\n    <li>Fix: prevent fatal error when sending Promotional Email</li>\n    <li>Fix: returning correct wishlist and user id to yith_wcwl_added_to_wishlist and yith_wcwl_removed_from_wishlist actions (thanks to danielbitzer)</li>\n    <li>Fix: issue with default value for yith_wcwl_positions option</li>\n    <li>Fix: ask an estimate label not being shown on frontend</li>\n    <li>Fix: added key name to avoid DB error during install or update procedure</li>\n    <li>Dev: added yith_wcwl_shortcode_share_link_url filter</li>\n    <li>Dev: added yith_wcwl_popup_timeout filter</li>\n</ul>\n<h4>3.0.5 - Released on 23 December 2019</h4>\n<ul>\n    <li>New: support for WooCommerce 3.9</li>\n    <li>Update: plugin framework</li>\n    <li>Tweak: register original product id instead of translated one, when saving item in DB</li>\n    <li>Fix: customer not being redirected to cart after clicking Add to Cart button in wishlist</li>\n</ul>\n<h4>3.0.4 - Released on 19 December 2019</h4>\n<ul>\n    <li>Tweak: added isset on wishlist data store, to prevent notice</li>\n    <li>Tweak: removed transients for items count, to avoid load on wp-options table</li>\n    <li>Tweak: improved dependencies animation</li>\n    <li>Tweak: restored $atts variable inside template, for better compatibility with themes</li>\n    <li>Tweak: handling for redirect_to param in $_REQUEST for form-handler class</li>\n    <li>Update: plugin framework</li>\n    <li>Fix: default variation not being added to wishlist</li>\n    <li>Fix: add default variation to wishlist when Ajax loading is enabled</li>\n    <li>Fix: count_all_products not retrieving correct number</li>\n    <li>Dev: added yith_wcwl_wishlist_view_images_columns filter</li>\n    <li>Dev: added yith_wcwl_wishlist_delete_url filter</li>\n    <li>Dev: added yith_wcwl_before_wishlist_create and yith_wcwl_after_wishlist_create inside create popup</li>\n</ul>\n<h4>3.0.3 - Released on 12 December 2019</h4>\n<ul>\n    <li>Tweak: prevent yith_setcookie to process if cookie name is not set</li>\n    <li>Tweak: refactored session class to set up session cookie name on demand, when needed (avoid empty cookie name)</li>\n    <li>Tweak: minor improvements to functions that require session (count_products, get_default_wishlist..) as a consequence of changes applied to session class</li>\n</ul>\n<h4>3.0.2 - Released on 11 December 2019</h4>\n<ul>\n    <li>Update: plugin framework</li>\n    <li>Tweak: added defaults for yith_wcwl_add_to_cart_text option (thanks to ecksiteweb)</li>\n    <li>Tweak: changed placeholder for Wishlist Name field on Add to Wishlist popup template</li>\n    <li>Fix: prevent fatal error when switching from cookies to session</li>\n</ul>\n<h4>3.0.1 - Released on 10 December 2019</h4>\n<ul>\n    <li>Update: language files</li>\n    <li>Tweak: restored global $yith_wcwl</li>\n</ul>\n<h4>3.0.0 - Released on 10 December 2019</h4>\n<ul>\n    <li>New: option to show Add to Wishlist button on loops</li>\n    <li>New: Add to Wishlist button style when placed over product image</li>\n    <li>New: Add to Wishlist button can now turn into Remove from Wishlist after addition</li>\n    <li>New: Add to Wishlist button can now turn itno Move to another wishlist after addition</li>\n    <li>New: added new layouts for wishlist shortcode (Modern and Images grid)</li>\n    <li>New: plugin will add variation to wishlist, if user selected one before pressing the button</li>\n    <li>New: count of users that added item in the wishlist</li>\n    <li>New: option to load wishlist templates via Ajax</li>\n    <li>New: select add to wishlist icon and/or upload  custom image</li>\n    <li>New: guest wishlists are now stored on db, within session id</li>\n    <li>New: unified experience for guests and logged in users</li>\n    <li>New: added new layout for manage wishlist view (Modern)</li>\n    <li>New: create new wishlist can now be opened as a popup</li>\n    <li>New: customization for social icons</li>\n    <li>New: added tooltips for wishlist buttons</li>\n    <li>New: wizard to configure promotional email</li>\n    <li>New: email sent when an item of the wishlist is back in stock</li>\n    <li>New: email sent when an item of the wishilist is on sale</li>\n    <li>Tweak: improved admin panel, and settings UX</li>\n    <li>Dev: code refactoring of the entire plugin</li>\n    <li>Dev: new YITH_WCWL_Wishlist and YITH_WCWL_Wishlist_Item objects</li>\n    <li>Dev: now using Data_store classes to handle db operations</li>\n    <li>Dev: added filter yith_wcwl_loop_positions</li>\n    <li>Dev: added filter yith_wcwl_custom_css_rules</li>\n    <li>Dev: added filter yith_wcwl_session_cookie</li>\n    <li>Dev: added filter yith_wcwl_item_formatted_price</li>\n    <li>Dev: added filter yith_wcwl_wishlist_formatted_title</li>\n    <li>Dev: added filter yith_wcwl_wishlist_get_items</li>\n    <li>Dev: added filter yith_wcwl_user_cannot_add_to_wishlist_message</li>\n    <li>Dev: added filter yith_wcwl_can_user_add_to_wishlist</li>\n    <li>Dev: added filters yith_wcwl_add_wishlist_{property}</li>\n    <li>Dev: added filters yith_wcwl_adding_to_wishlist_{property}</li>\n</ul>\n<h4>2.2.13 - Released on 11 November 2019</h4>\n<ul>\n    <li>New: support for WordPress 5.3</li>\n    <li>New: support for WooCommerce 3.8</li>\n    <li>Update: plugin framework</li>\n    <li>Update: Italian language</li>\n    <li>Update: Dutch language</li>\n    <li>Tweak: wrapped Add to Wishlist button label into span HTML tag</li>\n    <li>Fix: removed occurrences of deprecated properties on promotional email class</li>\n    <li>Dev: added new yith_wcwl_product_already_in_wishlist_text_button and yith_wcwl_product_added_to_wishlist_message_button filters</li>\n    <li>Dev: added new yith_wcwl_out_of_stock_label and yith_wcwl_in_stock_label filters</li>\n</ul>\n<h4>2.2.12 - Released on 12 August 2019</h4>\n<ul>\n    <li>New: WooCommerce 3.7.0 RC2 support</li>\n    <li>New: input to copy wishlist link and share it anywhere</li>\n    <li>Update: internal plugin framework</li>\n    <li>Update: Italian language</li>\n    <li>Fix: redirect url if there is more than one parameter on the url</li>\n    <li>Fix: changed escape for share link, to properly escape url special characters</li>\n</ul>\n<h4>2.2.11 - Released on 18 July 2019</h4>\n<ul>\n	<li>Update: internal plugin framework</li>\n    <li>Tweak: improved performance on wishlist page, when user is a guest and store has huge catalog (thanks to Dave)</li>\n    <li>Dev: add filter yith_wcwl_wishlist_correctly_created on add_wishlist function</li>\n</ul>\n<h4>2.2.10 - Released on 29 May 2019</h4>\n<ul>\n	<li>Tweak Prevent undefined index: user_id when user is loggin</li>\n	<li>Fix: Fixed active status for default wishlist when WPML is active</li>\n	<li>Fix: Fixed active status for default wishlist when WPML is active</li>\n	<li>Fix: fixed the default wishlist name in the multi wishlist select</li>\n	<li>Fix: widget not recognizing current wishlist when WPML is active</li>\n	<li>Fix: notice when sending Promotional email, due to access to legacy attributes</li>\n	<li>Dev: new filter yith_wcwl_wishlist_disabled_for_unauthenticated_user_message_condition</li>\n	<li>Dev: New action yith_wcwl_default_user_wishlist</li>\n</ul>\n<h4>2.2.9 - Released on 15 April 2019</h4>\n<ul>\n    <li>New: WooCommerce 3.6.x support</li>\n    <li>New: added a WhatsApp share button on mobile</li>\n    <li>New: add new shortcode yith_wcwl_show_public_wishlist</li>\n    <li>Tweak: using add_inline_style to include custom css code</li>\n    <li>Tweak: no longer adding empty style tag to the page</li>\n    <li>Update: Spanish language</li>\n    <li>Fix: get the correct value for wishlist name</li>\n    <li>Fix: deprecated notice caused by product id attribute being accessed directly</li>\n</ul>\n<h4>2.2.8 - Released on 11 February 2019</h4>\n<ul>\n    <li>New: added support to WooCommerce 3.5.4</li>\n    <li>Update: internal plugin framework</li>\n    <li>Update: Dutch translation</li>\n    <li>Fix: added explicit array casting on shortcode to avoid warning</li>\n    <li>Fix: don\'t add custom classes to body if wishlist page is not set</li>\n    <li>Fix: changed a wrong method in the enqueue style</li>\n    <li>Dev: add filter yith_wcwl_email_share_subject</li>\n</ul>\n<h4>2.2.7 - Released on 21 December 2018</h4>\n<ul>\n    <li>Fix: possible warning when Add to Wishlist shortcode is called with no params</li>\n</ul>\n<h4>2.2.6 - Released on 21 December 2018</h4>\n<ul>\n    <li>New: added support to WordPress 5.0</li>\n    <li>New: added support to WooCommerce 3.5.3</li>\n    <li>New: added Gutenberg blocks for plugin shortcodes</li>\n    <li>Update: internal plugin framework</li>\n    <li>Update: italian language</li>\n    <li>Fix: preventing sql error when hidden products list just contains 0 id</li>\n    <li>Fix: problem with sprintf on backend</li>\n    <li>Dev: added product param to yith_free_text filter</li>\n    <li>Dev: added yith_wcwl_login_register_redirect filter to let third party code filter redirect uri for unauthenticated users</li>\n</ul>\n<h4>2.2.5 - Released on 24 October 2018</h4>\n<ul>\n    <li>New: updated plugin framework</li>\n</ul>\n<h4>2.2.4 - Released on 04 October 2018</h4>\n<ul>\n    <li>New: added support to WooCoommerce 3.5</li>\n    <li>New: added support to WordPress 4.9.8</li>\n    <li>New: added method that returns localization variables</li>\n    <li>New: updated plugin framework</li>\n    <li>Tweak: type attribute from script tag</li>\n    <li>Update: Spanish language</li>\n    <li>Update: Italian language</li>\n    <li>Dev: added new filter yith_wcwl_localize_script to let third party dev filter localization variables</li>\n    <li>Dev: added new filter yith_wcwl_column_default</li>\n    <li>Dev: added new filter yith_wcwl_wishlist_column</li>\n    <li>Dev: added new filter yith_wcwl_share_conditions to display the share buttons for no logged users</li>\n    <li>Dev: added new filter yith_wcwl_set_cookie to let third party code skip cookie saving</li>\n    <li>Dev: added new filter yith_wcwl_wishlist_visibility_string_value to the wishlist visibility value</li>\n    <li>Dev: added new filter yith_wcwl_manage_wishlist_title</li>\n    <li>Dev: added new filter yith_wcwl_create_wishlist_title</li>\n    <li>Dev: added new filter yith_wcwl_search_wishlist_title</li>\n    <li>Dev: added new filter yith_wcwl_result_wishlist</li>\n    <li>Dev: added new filter yith_wcwl_empty_search_result</li>\n    <li>Dev: added new filter yith_wcwl_wishlist_param to change query-string param</li>\n    <li>Dev: added new filter yith_wcwl_remove_product_wishlist_message_title</li>\n</ul>\n<h4>2.2.2 - Released on 28 May 2018</h4>\n<ul>\n    <li>New: WooCommerce 3.4 compatibility</li>\n    <li>New: WordPress 4.9.6 compatibility</li>\n    <li>New: updated plugin framework</li>\n    <li>New: GDPR compliance</li>\n    <li>New: register dateadded field for the lists</li>\n    <li>Tweak: replaced create_function with a proper class method, to improve compatibility with PHP 7.2 and avoid warnings</li>\n    <li>Fix: js error when switching from Premium version to Free</li>\n    <li>Fix: preventing add_rewrite_rule when WPML is active, to avoid possible Internal Server Error (thanks to Adri & Bruno)</li>\n    <li>Fix: icon replacement not working on variable Add to Cart</li>\n    <li>Fix: preventing warning \"Illegal string offset\" when get_availability() returns empty string instead of array</li>\n    <li>Update: Italian language</li>\n    <li>Dev: added filter yith_wcwl_redirect_url</li>\n    <li>Dev: added filter yith_wcwl_login_notice</li>\n</ul>\n<h4>2.2.1 - Released on 31 January 2018</h4>\n<ul>\n    <li>New: tested with WooCommerce 3.3.0</li>\n    <li>Fix: issue with Add to Wishlist shortcode when global $product not defined</li>\n</ul>\n<h4>2.2.0 - Released on 11 January 2018</h4>\n<ul>\n    <li>New: WooCommerce 3.2.6 compatibility</li>\n    <li>New: plugin-fw 3.0</li>\n    <li>New: added js compatibility to Infinite Scrolling</li>\n    <li>New: added \"Last promotional email sent on\" info, for admins</li>\n    <li>New: added option to export users that added a specific product to their wishlists, using csv format</li>\n    <li>New: added Swedish - SWEDEN translation (thanks to Suzanne)</li>\n    <li>New: added Dutch - NETHERLANDS translation</li>\n    <li>Tweak: improved wishlist-view template checks and params</li>\n    <li>Tweak: wishlist now registers (and shows) \"date added\" param for unauthenticated users too</li>\n    <li>Tweak: added check over product object, to avoid Fatal when printing Add to Wishlist shortcode</li>\n    <li>Fix: fixed security vulnerability, causing possible SQL Injections (huge thanks to John C. and Sucuri Vulnerability Research team)</li>\n    <li>Dev: added filter yith_wcwl_estimate_additional_data to let developers add custom data to print in Estimate Email template</li>\n    <li>Dev: added yith_wcwl_removing_from_wishlist / yith_wcwl_removed_from_wishlist hooks</li>\n    <li>Dev: added params to main triggers in wishlist js code</li>\n</ul>\n<h4>2.1.2 - Released on 11 May 2017</h4>\n<ul>\n    <li>Tweak: updated FontAwesome to 4.7.0</li>\n    <li>Fix: possible warning when empty rewrite rules</li>\n    <li>Fix: problem with custom CSS inclusion, when not located in child theme</li>\n    <li>Fix: using current_product instead of global product when retrieving product type (prevents a Fatal error when placing Add to Wishlist outside the loop)</li>\n</ul>\n<h4>Ver\n<h4>2.1.1 - Released on 24 April 2017</h4>\n<ul>\n    <li>Tweak: improved endpoints creation, with dynamic flush</li>\n    <li>Tweak: added check over wc_print_notices existence, to avoid possible fatal errors</li>\n    <li>Tweak: updated plugin-fw</li>\n    <li>Fix: problem with duplicated meta</li>\n    <li>Fix: product created wince WC 3.0.x not being shown on wishlist</li>\n    <li>Dev: added yith_wcwl_admin_table_show_empty_list filter to show empty lists on admin</li>\n</ul>\n<h4>2.1.0 - Released on 03 April 2017</h4>\n<ul>\n    <li>New: WooCommerce 3.0-RC2 compatibility</li>\n    <li>New: WordPress 4.7.3 compatibility</li>\n    <li>New: Ask an Estimate for unauthenticated users</li>\n    <li>New: added action_params param to yith_wcwl_wishlist shortcode, to let administrators show different wishlist views on different pages</li>\n    <li>New: redirect to wishlist after login from \"Login Notice\" in wishlist page</li>\n    <li>New: {product_url} and {wishlist_url} within promotion email replacements</li>\n    <li>New: flush rewrite rules when installing plugin</li>\n    <li>Tweak: added urlencode to mail content in mailto share link</li>\n    <li>Tweak: count query of count_all_products</li>\n    <li>Tweak: improved WPML list content handling (thanks to Adri)</li>\n    <li>Tweak: double check over wc_add_to_cart_params exists and not null</li>\n    <li>Tweak: added wishlist meta inside wishlist table data attr also for not logged in users (used for shared wishlist)</li>\n    <li>Tweak: remove prettyPhoto-init library</li>\n    <li>Tweak: implemented custom code to enable prettyPhoto on Wishlist elements</li>\n    <li>Tweak: fixed typo in wishlist-view template</li>\n    <li>Tweak: added urlencode to all sharing links</li>\n    <li>Tweak: minimized endpoint usage when not required</li>\n    <li>Tweak: removed unused check for WC_Product_Bundle</li>\n    <li>Fix: \"Move to another Wishlist\" message, when moving to default wishlist</li>\n    <li>Fix: get_template_directory for custom wishlist js</li>\n    <li>Fix: global yith_wcwl_wishlist_token (false for default wishlists)</li>\n    <li>Fix: check before \"additional info\" popup in wishlist_view template</li>\n    <li>Fix: stock_status not existing when stock column isn\'t shown</li>\n    <li>Dev: added filter yith_wcwl_create_new_wishlist_title on wishlist-manage.php</li>\n    <li>Dev: added filter yith_wcwl_ask_an_estimate_text</li>\n    <li>Dev: action as second param for yith_wcwl_wishlist_page_url filter</li>\n    <li>Dev: applied filter yith_wcwl_no_product_to_remove_message also for message on wishlist-view template</li>\n    <li>Dev: added filter yith_wcwl_add_wishlist_user_id</li>\n    <li>Dev: added filter yith_wcwl_add_wishlist_slug</li>\n    <li>Dev: added filter yith_wcwl_add_wishlist_name</li>\n    <li>Dev: added filter yith_wcwl_add_wishlist_privacy</li>\n    <li>Dev: added yith_wcwl_promotional_email_thumbnail_size filter</li>\n    <li>Dev: added filters yith_wcwl_estimate_sent & yith_wcwl_estimate_missing_email</li>\n</ul>\n<h4>2.0.16 - Released on 14 June 2016</h4>\n<ul>\n    <li>Added: WooCommerce 2.6-RC1 support</li>\n    <li>Tweak: changed unsintall procedure to work with multisite and delete plugin options</li>\n    <li>Tweak: removed description and image from facebook share link (fb doesn\'t allow anymore)</li>\n    <li>Fixed: product query (GROUP By and LIMIT statement conflicting)</li>\n    <li>Fixed: to print \"Sent Manually\" on WC Emails</li>\n</ul>\n<h4>2.0.15 - Released on 04 April 2016</h4>\n<ul>\n    <li>Added: filter yith_wcwl_is_product_in_wishlist to choose whether a product is in wishlist or not</li>\n    <li>Added: filter yith_wcwl_cookie_expiration to set default wishlist cookie expiration time in seconds</li>\n    <li>Fixed: get_products query returning product multiple times when product has more then one visibility meta</li>\n</ul>\n<h4>2.0.14 - Released on 21 March 2016</h4>\n<ul>\n    <li>Added: yith_wcwl_is_wishlist_page function to identify if current page is wishlist page</li>\n    <li>Added: filter yith_wcwl_settings_panel_capability for panel capability</li>\n    <li>Added: filter yith_wcwl_current_wishlist_view_params for shortcode view params</li>\n    <li>Added: \"defined YITH_WCWL\" check before every template</li>\n    <li>Added: check over existance of $.prettyPhoto.close before using it</li>\n    <li>Added: method count_add_to_wishlist to YITH_WCWL class</li>\n    <li>Added: function yith_wcwl_count_add_to_wishlist</li>\n    <li>Tweak: Changed ajax url to \"relative\"</li>\n    <li>Tweak: Removed yit-common (old plugin-fw) deprecated since 2.0</li>\n    <li>Tweak: Removed deprecated WC functions</li>\n    <li>Tweak: Skipped removed_from_wishlist query arg adding, when external product</li>\n    <li>Tweak: Added transients for wishist counts</li>\n    <li>Tweak: Removed DOM structure dependencies from js for wishlist table handling</li>\n    <li>Tweak: All methods/functions that prints/counts products in wishlist now skip trashed or not visible products</li>\n    <li>Fixed: shortcode callback setting global product in some conditions</li>\n    <li>Fixed: typo in hook yith_wccl_table_after_product_name (now set to yith_wcwl_table_after_product_name)</li>\n    <li>Fixed: notice appearing when wishlist page slug is empty</li>\n    <li>Fixed: \"Please login\" notice appearing right after login</li>\n    <li>Fixed: email template for WC 2.5 and WCET compatibility</li>\n</ul>\n<h4>2.0.13 - Released on 17 December 2015</h4>\n<ul>\n    <li>Added check over adding_to_cart event data existance in js procedures</li>\n    <li>Added compatibility with YITH WooCommerce Email Templates</li>\n    <li>Added \'yith_wcwl_added_to_cart_message\' filter, to customize added to cart message in wishlist page</li>\n    <li>Added \'yith_wcwl_action_links\' filter, to customize action link at the end of wishlist pages</li>\n    <li>Added nofollow to \"Add to Wishlist\" links, where missing</li>\n    <li>Added \'yith_wcwl_email_share_subject\' filter to customize share by email subject</li>\n    <li>Added \'yith_wcwl_email_share_body\' filter to customize share by email body</li>\n    <li>Added function \"yith_wcwl_count_all_products\"</li>\n    <li>Fixed plugin-fw loading</li>\n</ul>\n<h4>2.0.12 - Released on 23 October 2015</h4>\n <ul>\n     <li>Added: method to count all products in wishlist</li>\n     <li>Tweak: Added wishlist js handling on \'yith_wcwl_init\' triggered on document</li>\n     <li>Tweak: Performance improved with new plugin core 2.0</li>\n     <li>Fixed: occasional fatal error for users with outdated version of plugin-fw on their theme</li>\n </ul>\n <h4>2.0.11 - Released on 21 September 2015</h4>\n <ul>\n     <li>Updated: changed text domain from yit to yith-woocommerce-wishlist</li>\n     <li>Updated: changed all language file for the new text domain</li>\n </ul>\n<h4>2.0.10 - Released on 12 August 2015</h4>\n<ul>\n    <li>Added: Compatibility with WC 2.4.2</li>\n    <li>Tweak: added nonce field to wishlist-view form</li>\n    <li>Tweak: added yith_wcwl_custom_add_to_cart_text and yith_wcwl_ask_an_estimate_text filters</li>\n    <li>Tweak: added check for presence of required function in wishlist script</li>\n    <li>Fixed: admin colorpicker field (for WC 2.4.x compatibility)</li>\n</ul>\n<h4>2.0.9 - Released on 24 July 2015</h4>\n<ul>\n    <li>Added: WooCommerce class to wishlist view form</li>\n    <li>Added: spinner to plugin assets</li>\n    <li>Added: check on \"user_logged_in\" for sub-templates in wishlist-view</li>\n    <li>Added: WordPress 4.2.3 compatibility</li>\n    <li>Added: WPML 3.2.2 compatibility (removed deprecated function)</li>\n    <li>Added: new check on is_product_in_wishlist (for unlogged users/default wishlist)</li>\n    <li>Tweak: escaped urls on share template</li>\n    <li>Tweak: removed new line between html attributes, to improve themes compatibility</li>\n    <li>Updated: italian translation</li>\n    <li>Fixed: WPML 3.2.2 compatibility (fix suggested by Konrad)</li>\n    <li>Fixed: regex used to find class attr in \"Add to Cart\" button</li>\n    <li>Fixed: usage of product_id for add_to_wishlist shortcode, when global $product is not defined</li>\n    <li>Fixed: icon attribute for yith_wcwl_add_to_wishlist shortcode</li>\n</ul>\n<h4>2.0.8 - Released on 29 May 2015</h4>\n<ul>\n    <li>Added: support WP 4.2.2</li>\n    <li>Added: redirect to wishlist after login</li>\n    <li>Added: check on cookie content</li>\n    <li>Added: Frequently Bought Together integration</li>\n    <li>Added: text domain to page links</li>\n    <li>Tweak: moved cookie update before first cookie usage</li>\n    <li>Updated: Italian translation</li>\n    <li>Removed: control to unable admin to delete default wishlists</li>\n    <li>Removed: login_redirect_url variable</li>\n</ul>\n<h4>2.0.7 - Released on 30 April 2015</h4>\n<ul>\n    <li>Added: WP 4.2.1 support</li>\n    <li>Added: WC 2.3.8 support</li>\n    <li>Added: redirect to wishlist after login</li>\n    <li>Added: \"Added to cart\" message in wishlist page</li>\n    <li>Added: promotional email functionality</li>\n    <li>Added: email tab under wishlist panel</li>\n    <li>Added: \"Move to another wishlist\" select</li>\n    <li>Updated: revision of all templates</li>\n    <li>Fixed: vulnerability for unserialize of cookie content (Warning: in this way all the old serialized plugins will be deleted and all the wishlists of the non-logged users will be lost)</li>\n    <li>Fixed: Escaped add_query_arg() and remove_query_arg()</li>\n    <li>Fixed: wishlist count on admin table</li>\n    <li>Removed: use of pretty permalinks if WPML enabled</li>\n</ul>\n<h4>2.0.6 - Released on 08 April 2015</h4>\n<ul>\n    <li>Added: system to overwrite wishlist js</li>\n    <li>Added: trailingslashit() to wishlist permalink</li>\n    <li>Added: \"show_empty\" filter to get_wishlists() method</li>\n    <li>Added: \"user that added this product\" view</li>\n    <li>Added: admin capability to delete default wishlist</li>\n    <li>Tweak: removed email from wishlist search</li>\n    <li>Tweak: removed empty wishlist from admin table</li>\n    <li>Tweak: removed \"Save\" button from manage template, when not needed</li>\n    <li>Fixed: \"user/user_id\" endpoint</li>\n    <li>Fixed: count wishlist items</li>\n    <li>Fixed: problem with price inclusive of tax</li>\n    <li>Fixed: remove from wishlist for not logged user</li>\n    <li>Fixed: twitter share summary</li>\n</ul>\n<h4>2.0.5 - Released on 19 March 2015</h4>\n<ul>\n    <li>Added: option to show create/manage/search links after wishlist table</li>\n    <li>Added: option to let only logged user to use wishlist</li>\n    <li>Added: option to show a notice to invite users to log in, before wishlist table</li>\n    <li>Added: option to add additional notes textarea when sendin e quote request</li>\n    <li>Added: popular section on backend</li>\n    <li>Added: checkbox to add multiple items to cart from wishlist</li>\n    <li>Added: icl_object_id to wishlist page id, to translate pages</li>\n    <li>Tweak: updated rewrite rules, to include child pages as wishlist pages</li>\n    <li>Tweak: moved WC notices from wishlist template to yith_wcwl_before_wishlist_title hook</li>\n    <li>Tweak: added wishlist table id to .load(), to update only that part of template</li>\n    <li>Fixed: yith_wcwl_locate_template causing 500 Internal Server Error</li>\n</ul>\n<h4>2.0.4 - Released on 04 March 2015</h4>\n<ul>\n    <li>Added: Options for browse wishlist/already in wishlist/product added strings</li>\n    <li>Added: rel nofollow to add to wishlist button</li>\n    <li>Tweak: moved wishlist response popup handling to separate js file</li>\n    <li>Updated: WPML xml configuration</li>\n    <li>Updated: string revision</li>\n</ul>\n<h4>2.0.3 - Released on 19 February 2015</h4>\n<ul>\n    <li>Tweak: set correct protocol for admin-ajax requests</li>\n    <li>Tweak: used wc core function to set cookie</li>\n    <li>Tweak: let customization of add_to_wishlist shortcodes</li>\n    <li>Fixed: show add to cart column when stock status disabled</li>\n    <li>Fixed: product existing in wishlist</li>\n</ul>\n<h4>2.0.2 - Released on 17 February 2015</h4>\n<ul>\n    <li>Updated: font-awesome library</li>\n    <li>Fixed: option with old font-awesome classes</li>\n</ul>\n<h4>2.0.1 - Released on 13 February 2015</h4>\n<ul>\n    <li>Added: spinner image on loading</li>\n    <li>Added: flush rewrite rules on database upgrade</li>\n    <li>Fixed: wc_add_to_cart_params not defined issue</li>\n</ul>\n<h4>2.0.0 - Released on 12 February 2015 </h4>\n<ul>\n    <li> Initial Release</li>\n</ul>\n\n    \";}', 'no'),
(1023, 'yith_wcwl_disable_wishlist_for_unauthenticated_users', 'no', 'yes'),
(1024, 'yith_wcwl_notices_enable', 'yes', 'yes'),
(1025, 'yith_wcwl_tooltip_enable', 'no', 'yes'),
(1026, 'yith_wcwl_ajax_enable', 'yes', 'yes'),
(1027, 'yith_wcwl_multi_wishlist_enable', 'no', 'yes'),
(1028, 'yith_wcwl_enable_multi_wishlist_for_unauthenticated_users', 'no', 'yes'),
(1029, 'yith_wcwl_show_login_notice', 'Please %login_anchor% to use all the wishlist features', 'yes'),
(1030, 'yith_wcwl_login_anchor_text', 'login', 'yes'),
(1031, 'yith_wfbt_enable_integration', 'yes', 'yes'),
(1032, 'yith_wcwl_modal_enable', 'yes', 'yes'),
(1033, 'yith_wcwl_after_add_to_wishlist_behaviour', 'add', 'yes'),
(1034, 'yith_wcwl_show_on_loop', 'yes', 'yes'),
(1035, 'yith_wcwl_loop_position', 'before_image', 'yes'),
(1036, 'yith_wcwl_button_position', 'thumbnails', 'yes'),
(1037, 'yith_wcwl_show_counter', 'no', 'yes'),
(1038, 'yith_wcwl_add_to_wishlist_text', 'Add to wishlist', 'yes'),
(1039, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(1040, 'yith_wcwl_browse_wishlist_text', 'Browse wishlist', 'yes'),
(1041, 'yith_wcwl_already_in_wishlist_text', 'The product is already in your wishlist!', 'yes'),
(1042, 'yith_wcwl_add_to_wishlist_popup_text', 'Add to wishlist', 'yes'),
(1043, 'yith_wcwl_add_to_wishlist_style', 'button_default', 'yes'),
(1044, 'yith_wcwl_rounded_corners_radius', '16', 'yes'),
(1045, 'yith_wcwl_add_to_wishlist_icon', 'custom', 'yes'),
(1046, 'yith_wcwl_add_to_wishlist_custom_icon', 'http://testshop/wp-content/uploads/2021/05/heart.png', 'yes'),
(1047, 'yith_wcwl_added_to_wishlist_icon', 'fa-heart', 'yes'),
(1048, 'yith_wcwl_added_to_wishlist_custom_icon', '', 'yes'),
(1049, 'yith_wcwl_custom_css', 'i{\r\ncolor: #FF725F;\r\n}', 'yes'),
(1050, 'yith_wcwl_wishlist_manage_layout', 'traditional', 'yes'),
(1051, 'yith_wcwl_manage_num_of_items_show', 'yes', 'yes'),
(1052, 'yith_wcwl_manage_creation_date_show', 'no', 'yes'),
(1053, 'yith_wcwl_manage_download_pdf_show', 'no', 'yes'),
(1054, 'yith_wcwl_manage_rename_wishlist_show', 'no', 'yes'),
(1055, 'yith_wcwl_manage_delete_wishlist_show', 'yes', 'yes'),
(1056, 'yith_wcwl_create_wishlist_popup', 'no', 'yes'),
(1057, 'yith_wcwl_wishlist_layout', 'traditional', 'yes'),
(1058, 'yith_wcwl_variation_show', 'yes', 'yes'),
(1059, 'yith_wcwl_price_show', 'yes', 'yes'),
(1060, 'yith_wcwl_price_changes_show', 'yes', 'yes'),
(1061, 'yith_wcwl_quantity_show', 'yes', 'yes'),
(1062, 'yith_wcwl_stock_show', 'no', 'yes'),
(1063, 'yith_wcwl_show_dateadded', 'no', 'yes'),
(1064, 'yith_wcwl_add_to_cart_show', 'no', 'yes'),
(1065, 'yith_wcwl_show_remove', 'yes', 'yes'),
(1066, 'yith_wcwl_cb_show', 'no', 'yes'),
(1067, 'yith_wcwl_repeat_remove_button', 'no', 'yes'),
(1068, 'yith_wcwl_show_move_to_another_wishlist', 'no', 'yes'),
(1069, 'yith_wcwl_move_to_another_wishlist_type', 'select', 'yes'),
(1070, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(1071, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(1072, 'yith_wcwl_enable_add_all_to_cart', 'no', 'yes'),
(1073, 'yith_wcwl_enable_drag_and_drop', 'no', 'yes'),
(1074, 'yith_wcwl_enable_wishlist_links', 'no', 'yes'),
(1075, 'yith_wcwl_enable_share', 'yes', 'yes'),
(1076, 'yith_wcwl_share_fb', 'yes', 'yes'),
(1077, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(1078, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(1079, 'yith_wcwl_share_email', 'yes', 'yes'),
(1080, 'yith_wcwl_share_whatsapp', 'yes', 'yes'),
(1081, 'yith_wcwl_share_url', 'no', 'yes'),
(1082, 'yith_wcwl_socials_title', 'My wishlist on Test Shop', 'yes'),
(1083, 'yith_wcwl_socials_text', '', 'yes'),
(1084, 'yith_wcwl_socials_image_url', '', 'yes'),
(1085, 'yith_wcwl_wishlist_title', 'My wishlist on Test Shop', 'yes'),
(1086, 'yith_wcwl_wishlist_create_title', 'Create a new wishlist', 'yes'),
(1087, 'yith_wcwl_wishlist_manage_title', 'Manage your wishlists on Test Shop', 'yes'),
(1088, 'yith_wcwl_wishlist_search_title', 'Search wishlists on Test Shop', 'yes'),
(1089, 'yith_wcwl_add_to_cart_text', 'Add to cart', 'yes'),
(1090, 'yith_wcwl_add_to_cart_style', 'link', 'yes'),
(1091, 'yith_wcwl_add_to_cart_rounded_corners_radius', '16', 'yes'),
(1092, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(1093, 'yith_wcwl_add_to_cart_custom_icon', '', 'yes'),
(1094, 'yith_wcwl_color_headers_background', '#F4F4F4', 'yes'),
(1095, 'yith_wcwl_fb_button_icon', 'fa-facebook', 'yes'),
(1096, 'yith_wcwl_fb_button_custom_icon', '', 'yes'),
(1097, 'yith_wcwl_tw_button_icon', 'fa-twitter', 'yes'),
(1098, 'yith_wcwl_tw_button_custom_icon', '', 'yes'),
(1099, 'yith_wcwl_pr_button_icon', 'fa-pinterest', 'yes'),
(1100, 'yith_wcwl_pr_button_custom_icon', '', 'yes'),
(1101, 'yith_wcwl_em_button_icon', 'fa-envelope-o', 'yes'),
(1102, 'yith_wcwl_em_button_custom_icon', '', 'yes'),
(1103, 'yith_wcwl_wa_button_icon', 'fa-whatsapp', 'yes'),
(1104, 'yith_wcwl_wa_button_custom_icon', '', 'yes'),
(1105, 'yith_wcwl_show_estimate_button', 'yes', 'yes'),
(1106, 'woocommerce_estimate_mail_settings[email_type]', 'html', 'yes'),
(1107, 'woocommerce_estimate_mail_settings[heading]', '', 'yes'),
(1108, 'woocommerce_estimate_mail_settings[subject]', '', 'yes'),
(1109, 'woocommerce_estimate_mail_settings[recipient]', '', 'yes'),
(1110, 'woocommerce_estimate_mail_settings[enable_cc]', 'no', 'yes'),
(1111, 'yith_wcwl_show_additional_info_textarea', 'no', 'yes'),
(1112, 'yith_wcwl_ask_an_estimate_label', 'Ask for an estimate', 'yes'),
(1113, 'yith_wcwl_additional_info_textarea_label', 'Additional notes', 'yes'),
(1117, 'yith_wcwl_ask_an_estimate_style', 'button_default', 'yes'),
(1118, 'yith_wcwl_ask_an_estimate_rounded_corners_radius', '16', 'yes'),
(1119, 'yith_wcwl_ask_an_estimate_icon', '', 'yes'),
(1120, 'yith_wcwl_ask_an_estimate_custom_icon', '', 'yes'),
(1121, 'woocommerce_promotion_mail_settings[email_type]', 'html', 'yes'),
(1122, 'woocommerce_promotion_mail_settings[heading]', '', 'yes'),
(1123, 'woocommerce_promotion_mail_settings[subject]', '', 'yes'),
(1124, 'woocommerce_promotion_mail_settings[content_html]', '', 'yes'),
(1125, 'woocommerce_promotion_mail_settings[content_text]', '', 'yes'),
(1126, 'woocommerce_yith_wcwl_back_in_stock_settings[enabled]', 'no', 'yes'),
(1127, 'woocommerce_yith_wcwl_back_in_stock_settings[email_type]', 'html', 'yes'),
(1128, 'woocommerce_yith_wcwl_back_in_stock_settings[heading]', '', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1129, 'woocommerce_yith_wcwl_back_in_stock_settings[subject]', '', 'yes'),
(1130, 'woocommerce_yith_wcwl_back_in_stock_settings[content_html]', '', 'yes'),
(1131, 'woocommerce_yith_wcwl_back_in_stock_settings[content_text]', '', 'yes'),
(1132, 'woocommerce_yith_wcwl_on_sale_item_settings[enabled]', 'no', 'yes'),
(1133, 'woocommerce_yith_wcwl_on_sale_item_settings[email_type]', 'html', 'yes'),
(1134, 'woocommerce_yith_wcwl_on_sale_item_settings[heading]', '', 'yes'),
(1135, 'woocommerce_yith_wcwl_on_sale_item_settings[subject]', '', 'yes'),
(1136, 'woocommerce_yith_wcwl_on_sale_item_settings[content_html]', '', 'yes'),
(1137, 'woocommerce_yith_wcwl_on_sale_item_settings[content_text]', '', 'yes'),
(1150, '_transient_orders-transient-version', '1621615935', 'yes'),
(1151, '_transient_timeout_wc_customer_bought_product_891c3be21a1cde9d9e9082ece8d206a1', '1624207937', 'no'),
(1152, '_transient_wc_customer_bought_product_891c3be21a1cde9d9e9082ece8d206a1', 'a:2:{s:7:\"version\";s:10:\"1621615935\";s:5:\"value\";a:0:{}}', 'no'),
(1161, '_transient_timeout_yith_product_reviews_stats_13', '1624207947', 'no'),
(1162, '_transient_yith_product_reviews_stats_13', 'a:8:{i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:1;i:5;i:0;s:5:\"total\";i:1;s:13:\"voted_reviews\";i:1;s:7:\"average\";i:4;}', 'no'),
(1179, '_transient_timeout_wc_onboarding_product_data', '1621703121', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1180, '_transient_wc_onboarding_product_data', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:18:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Fri, 21 May 2021 17:05:21 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:5:\"11488\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:33:\"X-WP-Total, X-WP-TotalPages, Link\";s:28:\"access-control-allow-headers\";s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";s:13:\"x-wccom-cache\";s:3:\"HIT\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-rq\";s:16:\"vie2 91 183 3126\";s:3:\"age\";s:2:\"25\";s:7:\"x-cache\";s:3:\"hit\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";}}s:4:\"body\";s:48078:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"Securely accept payments, track cash flow, and manage recurring revenue from your dashboard \\u2014 all without setup costs or monthly fees.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Google Ads &amp; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 3000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed product data to Google Merchant Center for setting up Google product listings &amp; product ads.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/12\\/Thumbnail-Jilt-updated.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Opayo Payment Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-updated.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:48078:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"Securely accept payments, track cash flow, and manage recurring revenue from your dashboard \\u2014 all without setup costs or monthly fees.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Google Ads &amp; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 3000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed product data to Google Merchant Center for setting up Google product listings &amp; product ads.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/12\\/Thumbnail-Jilt-updated.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Opayo Payment Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-updated.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709}]}\";s:3:\"raw\";s:48716:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Fri, 21 May 2021 17:05:21 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 11488\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages, Link\r\nAccess-Control-Allow-Headers: Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\r\nX-WCCOM-Cache: HIT\r\nCache-Control: max-age=60\r\nAllow: GET\r\nContent-Encoding: gzip\r\nX-rq: vie2 91 183 3126\r\nAge: 25\r\nX-Cache: hit\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"Securely accept payments, track cash flow, and manage recurring revenue from your dashboard \\u2014 all without setup costs or monthly fees.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Google Ads &amp; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 3000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed product data to Google Merchant Center for setting up Google product listings &amp; product ads.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/12\\/Thumbnail-Jilt-updated.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Opayo Payment Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-updated.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:18:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Fri, 21 May 2021 17:05:21 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:5:\"11488\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:33:\"X-WP-Total, X-WP-TotalPages, Link\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";}s:13:\"x-wccom-cache\";a:1:{i:0;s:3:\"HIT\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:4:\"x-rq\";a:1:{i:0;s:16:\"vie2 91 183 3126\";}s:3:\"age\";a:1:{i:0;s:2:\"25\";}s:7:\"x-cache\";a:1:{i:0;s:3:\"hit\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:59:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1216, '_transient_timeout_wc_product_children_55', '1624209232', 'no'),
(1217, '_transient_wc_product_children_55', 'a:2:{s:3:\"all\";a:3:{i:0;i:56;i:1;i:57;i:2;i:58;}s:7:\"visible\";a:3:{i:0;i:56;i:1;i:57;i:2;i:58;}}', 'no'),
(1221, 'product_cat_children', 'a:1:{i:16;a:1:{i:0;i:17;}}', 'yes'),
(1254, '_transient_timeout_wc_product_children_61', '1624209764', 'no'),
(1255, '_transient_wc_product_children_61', 'a:2:{s:3:\"all\";a:3:{i:0;i:62;i:1;i:63;i:2;i:64;}s:7:\"visible\";a:3:{i:0;i:62;i:1;i:63;i:2;i:64;}}', 'no'),
(1258, '_transient_timeout_wc_var_prices_61', '1624277855', 'no'),
(1262, '_transient_wc_var_prices_61', '{\"version\":\"1621685854\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"62\":\"8\",\"63\":\"8\",\"64\":\"7\"},\"regular_price\":{\"62\":\"8\",\"63\":\"8\",\"64\":\"7\"},\"sale_price\":{\"62\":\"8\",\"63\":\"8\",\"64\":\"7\"}}}', 'no'),
(1264, '_transient_timeout_wc_var_prices_55', '1624277862', 'no'),
(1267, '_transient_wc_var_prices_55', '{\"version\":\"1621685854\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"56\":\"13\",\"57\":\"10\",\"58\":\"8\"},\"regular_price\":{\"56\":\"13\",\"57\":\"10\",\"58\":\"8\"},\"sale_price\":{\"56\":\"13\",\"57\":\"10\",\"58\":\"8\"}}}', 'no'),
(1270, '_transient_timeout_wc_product_children_0', '1624209779', 'no'),
(1271, '_transient_wc_product_children_0', 'a:2:{s:3:\"all\";a:0:{}s:7:\"visible\";a:0:{}}', 'no'),
(1289, '_transient_timeout_wc_product_children_65', '1624209915', 'no'),
(1290, '_transient_wc_product_children_65', 'a:2:{s:3:\"all\";a:9:{i:0;i:66;i:1;i:67;i:2;i:68;i:3;i:69;i:4;i:70;i:5;i:71;i:6;i:72;i:7;i:73;i:8;i:74;}s:7:\"visible\";a:9:{i:0;i:66;i:1;i:67;i:2;i:68;i:3;i:69;i:4;i:70;i:5;i:71;i:6;i:72;i:7;i:73;i:8;i:74;}}', 'no'),
(1291, '_transient_timeout_yith_product_reviews_stats_49', '1624209969', 'no'),
(1292, '_transient_yith_product_reviews_stats_49', 'a:8:{i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;s:5:\"total\";i:0;s:13:\"voted_reviews\";i:0;s:7:\"average\";i:0;}', 'no'),
(1293, '_transient_timeout_yith_product_reviews_stats_59', '1624209970', 'no'),
(1294, '_transient_yith_product_reviews_stats_59', 'a:8:{i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;s:5:\"total\";i:0;s:13:\"voted_reviews\";i:0;s:7:\"average\";i:0;}', 'no'),
(1295, '_transient_timeout_yith_product_reviews_stats_61', '1624209971', 'no'),
(1296, '_transient_yith_product_reviews_stats_61', 'a:8:{i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;s:5:\"total\";i:0;s:13:\"voted_reviews\";i:0;s:7:\"average\";i:0;}', 'no'),
(1297, '_transient_timeout_yith_product_reviews_stats_55', '1624209971', 'no'),
(1298, '_transient_yith_product_reviews_stats_55', 'a:8:{i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;s:5:\"total\";i:0;s:13:\"voted_reviews\";i:0;s:7:\"average\";i:0;}', 'no'),
(1359, 'yith_wcwl_color_add_to_wishlist', 'a:6:{s:10:\"background\";s:15:\"rgb(255,114,95)\";s:4:\"text\";s:7:\"#FFFFFF\";s:6:\"border\";s:15:\"rgb(255,114,95)\";s:16:\"background_hover\";s:7:\"#333333\";s:10:\"text_hover\";s:7:\"#FFFFFF\";s:12:\"border_hover\";s:7:\"#333333\";}', 'yes'),
(1379, '_transient_timeout_wc_child_has_weight_61', '1624219230', 'no'),
(1380, '_transient_wc_child_has_weight_61', '0', 'no'),
(1381, '_transient_timeout_wc_child_has_dimensions_61', '1624219230', 'no'),
(1382, '_transient_wc_child_has_dimensions_61', '0', 'no'),
(1383, '_transient_timeout_wc_related_61', '1621713799', 'no'),
(1384, '_transient_wc_related_61', 'a:1:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=61\";a:1:{i:0;s:2:\"59\";}}', 'no'),
(1386, 'yith_wcwl_tooltip_color', 'a:2:{s:10:\"background\";s:4:\"#333\";s:4:\"text\";s:4:\"#fff\";}', 'yes'),
(1388, 'yith_wcwl_color_add_to_cart', 'a:6:{s:10:\"background\";s:7:\"#333333\";s:4:\"text\";s:7:\"#FFFFFF\";s:6:\"border\";s:7:\"#333333\";s:16:\"background_hover\";s:7:\"#4F4F4F\";s:10:\"text_hover\";s:7:\"#FFFFFF\";s:12:\"border_hover\";s:7:\"#4F4F4F\";}', 'yes'),
(1389, 'yith_wcwl_color_button_style_1', 'a:6:{s:10:\"background\";s:7:\"#333333\";s:4:\"text\";s:7:\"#FFFFFF\";s:6:\"border\";s:7:\"#333333\";s:16:\"background_hover\";s:7:\"#4F4F4F\";s:10:\"text_hover\";s:7:\"#FFFFFF\";s:12:\"border_hover\";s:7:\"#4F4F4F\";}', 'yes'),
(1390, 'yith_wcwl_color_button_style_2', 'a:6:{s:10:\"background\";s:7:\"#333333\";s:4:\"text\";s:7:\"#FFFFFF\";s:6:\"border\";s:7:\"#333333\";s:16:\"background_hover\";s:7:\"#4F4F4F\";s:10:\"text_hover\";s:7:\"#FFFFFF\";s:12:\"border_hover\";s:7:\"#4F4F4F\";}', 'yes'),
(1391, 'yith_wcwl_color_wishlist_table', 'a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:4:\"text\";s:7:\"#6d6c6c\";s:6:\"border\";s:7:\"#FFFFFF\";}', 'yes'),
(1392, 'yith_wcwl_color_share_button', 'a:2:{s:5:\"color\";s:7:\"#FFFFFF\";s:11:\"color_hover\";s:7:\"#FFFFFF\";}', 'yes'),
(1393, 'yith_wcwl_color_fb_button', 'a:2:{s:10:\"background\";s:7:\"#39599E\";s:16:\"background_hover\";s:7:\"#595A5A\";}', 'yes'),
(1394, 'yith_wcwl_color_tw_button', 'a:2:{s:10:\"background\";s:7:\"#45AFE2\";s:16:\"background_hover\";s:7:\"#595A5A\";}', 'yes'),
(1395, 'yith_wcwl_color_pr_button', 'a:2:{s:10:\"background\";s:7:\"#AB2E31\";s:16:\"background_hover\";s:7:\"#595A5A\";}', 'yes'),
(1396, 'yith_wcwl_color_em_button', 'a:2:{s:10:\"background\";s:7:\"#FBB102\";s:16:\"background_hover\";s:7:\"#595A5A\";}', 'yes'),
(1397, 'yith_wcwl_color_wa_button', 'a:2:{s:10:\"background\";s:7:\"#00A901\";s:16:\"background_hover\";s:7:\"#595A5A\";}', 'yes'),
(1441, '_transient_timeout__woocommerce_helper_updates', '1621712936', 'no'),
(1442, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1621669736;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1445, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1621673635;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(1446, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1621673641;s:7:\"checked\";a:5:{s:6:\"myshop\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";s:37:\"underscore-wordpress-with-gulp-master\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"2.0\";s:7:\"updated\";s:19:\"2020-12-10 15:15:50\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/2.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentytwenty\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.7\";s:7:\"updated\";s:19:\"2020-12-10 15:14:23\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwenty/1.7/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentyone\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2020-12-22 20:22:07\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentytwentyone/1.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(1451, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1621681013', 'no'),
(1452, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4899;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4766;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2714;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2592;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2000;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1855;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1834;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1513;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1504;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1498;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1490;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1479;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1470;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1310;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1259;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1247;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1230;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1151;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1125;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1054;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:951;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:929;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:908;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:886;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:877;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:823;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:817;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:808;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:804;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:782;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:762;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:745;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:726;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:725;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:715;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:713;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:680;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:677;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:665;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:664;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:661;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:660;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:653;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:648;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:635;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:604;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:598;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:597;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:590;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:590;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:576;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:571;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:566;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:561;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:559;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:557;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:546;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:545;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:545;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:540;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:530;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:520;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:511;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:505;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:502;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:500;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:496;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:493;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:488;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:486;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:477;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:464;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:459;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:455;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:448;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:445;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:445;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:443;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:443;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:441;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:432;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:425;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:420;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:410;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:410;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:408;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:405;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:400;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:392;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:390;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:388;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:380;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:379;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:376;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:371;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:364;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:363;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:356;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:355;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:347;}}', 'no'),
(1465, 'fs_active_plugins', 'O:8:\"stdClass\":0:{}', 'yes'),
(1466, 'fs_debug_mode', '', 'yes'),
(1467, 'fs_accounts', 'a:7:{s:21:\"id_slug_type_path_map\";a:1:{i:56;a:3:{s:4:\"slug\";s:13:\"rating-widget\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:31:\"rating-widget/rating-widget.php\";}}s:11:\"plugin_data\";a:1:{s:13:\"rating-widget\";a:17:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:31:\"rating-widget/rating-widget.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1621670411;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"3.1.2\";s:19:\"plugin_upgrade_mode\";b:0;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"license_migration\";a:1:{s:12:\"is_migrating\";b:0;}s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"9\";s:4:\"info\";s:0:\"\";s:12:\"is_anonymous\";b:1;}s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:8:\"testshop\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1621671277;s:7:\"version\";s:5:\"3.1.2\";}s:15:\"prev_is_premium\";b:0;}}s:13:\"file_slug_map\";a:1:{s:31:\"rating-widget/rating-widget.php\";s:13:\"rating-widget\";}s:7:\"plugins\";a:1:{s:13:\"rating-widget\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:33:\"Rating-Widget: Star Review System\";s:4:\"slug\";s:13:\"rating-widget\";s:12:\"premium_slug\";s:21:\"rating-widget-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:31:\"rating-widget/rating-widget.php\";s:7:\"version\";s:5:\"3.1.2\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_74be465babd9d3d6d5ff578d56745\";s:10:\"secret_key\";N;s:2:\"id\";s:2:\"56\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"f72ee18faf5b51d19b33cb96cee3ce26\";s:13:\"admin_notices\";a:1:{s:13:\"rating-widget\";a:0:{}}s:6:\"addons\";a:1:{i:56;a:3:{i:0;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:2:\"56\";s:5:\"title\";s:6:\"Tweets\";s:4:\"slug\";s:15:\"rw-addon-tweets\";s:12:\"premium_slug\";s:23:\"rw-addon-tweets-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";i:1;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:2:\"68\";s:11:\"description\";s:478:\"<h3>How it works?</h3>\n<p>After a visitor will rate your content with a 4-star or 5-star rating, the <b>Tweets Add-On</b> will automatically open a window and suggest the visitor to share the rated content on Twitter.</p>\n<h3>Why it\'s great?</h3>\n<p>Readers that dig your content and made the effort to rate it with a high rating are the most qualified & engaged users for a follow-up action. They are the best visitors to ask to Tweet the content they just enjoyed reading.</p>\";s:17:\"short_description\";s:90:\"Get more Twitter shares by asking your visitors to Tweet the post after submitting a vote.\";s:10:\"banner_url\";s:40:\"//img.freemius.com/plugins/68/banner.jpg\";s:15:\"card_banner_url\";s:45:\"//img.freemius.com/plugins/68/card_banner.jpg\";s:15:\"selling_point_0\";s:36:\"Increase social traffic to your site\";s:15:\"selling_point_1\";s:47:\"Generate more shares of your content on Twitter\";s:15:\"selling_point_2\";s:41:\"Works out of the Box - Zero Configuration\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/68/screenshots/0.png\";s:12:\"screenshot_1\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/68/screenshots/1.png\";s:12:\"screenshot_2\";s:66:\"//s3-us-west-2.amazonaws.com/freemius/plugins/68/screenshots/2.png\";}s:2:\"id\";s:1:\"7\";s:7:\"updated\";s:19:\"2016-03-16 16:14:18\";s:7:\"created\";s:19:\"2015-10-01 01:31:34\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_848c598339c16b8d03c344185d6d9\";s:10:\"secret_key\";N;s:2:\"id\";s:2:\"68\";s:7:\"updated\";s:19:\"2021-05-18 05:54:46\";s:7:\"created\";s:19:\"2015-10-01 01:27:33\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:2:\"56\";s:5:\"title\";s:6:\"Shares\";s:4:\"slug\";s:15:\"rw-addon-shares\";s:12:\"premium_slug\";s:23:\"rw-addon-shares-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";i:3;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:2:\"90\";s:11:\"description\";s:479:\"<h3>How it works?</h3>\n<p>After a visitor will rate your content with a 4-star or 5-star rating, the <b>Shares Add-On</b> will automatically open a window and suggest the visitor to share the rated content on Facebook.</p>\n<h3>Why it\'s great?</h3>\n<p>Readers that dig your content and made the effort to rate it with a high rating are the most qualified & engaged users for a follow-up action. They are the best visitors to ask to share the content they just enjoyed reading.</p>\";s:17:\"short_description\";s:91:\"Get more Facebook shares by asking your visitors to share the post after submitting a vote.\";s:10:\"banner_url\";s:40:\"//img.freemius.com/plugins/90/banner.jpg\";s:15:\"card_banner_url\";s:45:\"//img.freemius.com/plugins/90/card_banner.jpg\";s:15:\"selling_point_0\";s:36:\"Increase social traffic to your site\";s:15:\"selling_point_1\";s:48:\"Generate more shares of your content on Facebook\";s:15:\"selling_point_2\";s:41:\"Works out of the Box - Zero Configuration\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:47:\"//img.freemius.com/plugins/90/screenshots/0.png\";s:12:\"screenshot_1\";s:47:\"//img.freemius.com/plugins/90/screenshots/1.png\";s:12:\"screenshot_2\";s:47:\"//img.freemius.com/plugins/90/screenshots/2.png\";}s:2:\"id\";s:2:\"10\";s:7:\"updated\";s:19:\"2015-11-16 17:02:43\";s:7:\"created\";s:19:\"2015-11-15 04:02:01\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_57b6749889e37d6a9fd103afc68ee\";s:10:\"secret_key\";N;s:2:\"id\";s:2:\"90\";s:7:\"updated\";s:19:\"2021-05-18 05:54:46\";s:7:\"created\";s:19:\"2015-11-15 03:55:26\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:2;O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";s:2:\"56\";s:5:\"title\";s:7:\"Reviews\";s:4:\"slug\";s:16:\"rw-addon-reviews\";s:12:\"premium_slug\";s:24:\"rw-addon-reviews-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";i:1;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:3:\"156\";s:11:\"description\";s:399:\"<h3>How it works?</h3>\n<p>After a visitor rates your content with a 5-star rating, the <b>Reviews Add-On</b> will automatically open a comment form and ask the visitor for a textual feedback.</p>\n<h3>Why it\'s great?</h3>\n<p>Whether you are writing an article or selling products, giving your visitors a chance to express their interests and concerns via text review is crucial for your business.</p>\";s:17:\"short_description\";s:122:\"Get valuable insights for your content & products by capturing a textual review from your visitors, right after they vote.\";s:10:\"banner_url\";s:41:\"//img.freemius.com/plugins/156/banner.jpg\";s:15:\"card_banner_url\";s:46:\"//img.freemius.com/plugins/156/card_banner.jpg\";s:15:\"selling_point_0\";s:86:\"Attract more traffic to your site by improving your content based on readers\' reviews!\";s:15:\"selling_point_1\";s:93:\"Get valuable insights for your site by asking the readers what they think about your content.\";s:15:\"selling_point_2\";s:41:\"Works out of the Box - Zero Configuration\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:48:\"//img.freemius.com/plugins/156/screenshots/0.png\";s:12:\"screenshot_1\";s:48:\"//img.freemius.com/plugins/156/screenshots/1.png\";s:12:\"screenshot_2\";s:48:\"//img.freemius.com/plugins/156/screenshots/2.png\";}s:2:\"id\";s:2:\"13\";s:7:\"updated\";s:19:\"2016-02-06 23:05:31\";s:7:\"created\";s:19:\"2015-12-28 15:08:40\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_3ff7921741d1f83c76d1f99c21d17\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"156\";s:7:\"updated\";s:19:\"2021-05-20 12:59:17\";s:7:\"created\";s:19:\"2015-12-28 15:06:19\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}}', 'yes'),
(1468, 'fs_options', 'a:1:{s:14:\"api_force_http\";b:0;}', 'yes'),
(1469, 'fs_api_cache', 'a:0:{}', 'no'),
(1470, 'widget_ratingwidgetplugin_topratedwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1481, 'widget_ratingpluswidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1505, '_transient_timeout_wc_child_has_weight_55', '1624263029', 'no'),
(1506, '_transient_wc_child_has_weight_55', '0', 'no'),
(1507, '_transient_timeout_wc_child_has_dimensions_55', '1624263030', 'no'),
(1508, '_transient_wc_child_has_dimensions_55', '0', 'no'),
(1509, '_transient_timeout_wc_related_55', '1621766832', 'no'),
(1510, '_transient_wc_related_55', 'a:1:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=55\";a:1:{i:0;s:2:\"49\";}}', 'no'),
(1524, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(1537, '_rx_option_unsubscribe_url', 'http://testshop/rx-schedule-email-unsubscribe/', 'yes'),
(1541, '_rx_wc_active_check', '1', 'yes'),
(1544, '_rx_builder_current_tab', 'design_tab', 'yes'),
(1545, '_rx_review_email_current_tab', 'content_tab', 'yes'),
(1548, '_transient_timeout_wc_customer_bought_product_c4ca4238a0b923820dcc509a6f75849b', '1624263556', 'no'),
(1549, '_transient_wc_customer_bought_product_c4ca4238a0b923820dcc509a6f75849b', 'a:2:{s:7:\"version\";s:10:\"1621615935\";s:5:\"value\";a:0:{}}', 'no'),
(1550, '_transient_timeout_wc_var_prices_65', '1624276757', 'no'),
(1551, '_transient_wc_var_prices_65', '{\"version\":\"1621684751\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"66\":\"20\",\"67\":\"15\",\"68\":\"11\",\"69\":\"20\",\"70\":\"13\",\"71\":\"11\",\"72\":\"20\",\"73\":\"15\",\"74\":\"11\"},\"regular_price\":{\"66\":\"20\",\"67\":\"15\",\"68\":\"11\",\"69\":\"20\",\"70\":\"15\",\"71\":\"11\",\"72\":\"20\",\"73\":\"15\",\"74\":\"11\"},\"sale_price\":{\"66\":\"20\",\"67\":\"15\",\"68\":\"11\",\"69\":\"20\",\"70\":\"13\",\"71\":\"11\",\"72\":\"20\",\"73\":\"15\",\"74\":\"11\"}}}', 'no'),
(1568, 'ewd-urp-permission-level', '1', 'yes'),
(1570, 'widget_ewd_urp_recent_reviews_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1571, 'widget_ewd_urp_selected_reviews_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1572, 'widget_ewd_urp_popular_reviews_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1573, 'widget_ewd_urp_reviews_slider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1574, '_transient_timeout_ewd-urp-woocommerce-reminders', '1621674966', 'no'),
(1575, '_transient_ewd-urp-woocommerce-reminders', '1', 'no'),
(1577, 'ewd-urp-installation-time', '1621673176', 'yes'),
(1588, 'EWD_URP_Maximum_Score', '5', 'yes'),
(1589, 'EWD_URP_Review_Style', 'Points', 'yes'),
(1590, 'EWD_URP_Review_Score_Input', 'Stars', 'yes'),
(1591, 'EWD_URP_Review_Image', 'No', 'yes'),
(1592, 'EWD_URP_Review_Video', 'No', 'yes'),
(1593, 'EWD_URP_Review_Category', 'No', 'yes'),
(1594, 'EWD_URP_Review_Filtering', 'a:2:{i:0;s:5:\"Score\";i:1;s:4:\"Name\";}', 'yes'),
(1595, 'EWD_URP_Submit_Review_Toggle', 'No', 'yes'),
(1596, 'EWD_URP_Allow_Reviews', 'a:0:{}', 'yes'),
(1597, 'EWD_URP_InDepth_Reviews', 'No', 'yes'),
(1598, 'EWD_URP_Review_Categories_Array', 'a:8:{i:0;a:4:{s:12:\"CategoryName\";s:28:\"Product Name (if applicable)\";s:16:\"CategoryRequired\";s:3:\"Yes\";s:18:\"ExplanationAllowed\";s:2:\"No\";s:12:\"CategoryType\";s:7:\"Default\";}i:1;a:4:{s:12:\"CategoryName\";s:13:\"Review Author\";s:16:\"CategoryRequired\";s:2:\"No\";s:18:\"ExplanationAllowed\";s:2:\"No\";s:12:\"CategoryType\";s:7:\"Default\";}i:2;a:4:{s:12:\"CategoryName\";s:30:\"Reviewer Email (if applicable)\";s:16:\"CategoryRequired\";s:3:\"Yes\";s:18:\"ExplanationAllowed\";s:2:\"No\";s:12:\"CategoryType\";s:7:\"Default\";}i:3;a:4:{s:12:\"CategoryName\";s:12:\"Review Title\";s:16:\"CategoryRequired\";s:3:\"Yes\";s:18:\"ExplanationAllowed\";s:2:\"No\";s:12:\"CategoryType\";s:7:\"Default\";}i:4;a:4:{s:12:\"CategoryName\";s:28:\"Review Image (if applicable)\";s:16:\"CategoryRequired\";s:2:\"No\";s:18:\"ExplanationAllowed\";s:2:\"No\";s:12:\"CategoryType\";s:7:\"Default\";}i:5;a:4:{s:12:\"CategoryName\";s:28:\"Review Video (if applicable)\";s:16:\"CategoryRequired\";s:2:\"No\";s:18:\"ExplanationAllowed\";s:2:\"No\";s:12:\"CategoryType\";s:7:\"Default\";}i:6;a:4:{s:12:\"CategoryName\";s:6:\"Review\";s:16:\"CategoryRequired\";s:3:\"Yes\";s:18:\"ExplanationAllowed\";s:2:\"No\";s:12:\"CategoryType\";s:7:\"Default\";}i:7;a:4:{s:12:\"CategoryName\";s:31:\"Review Category (if applicable)\";s:16:\"CategoryRequired\";s:2:\"No\";s:18:\"ExplanationAllowed\";s:2:\"No\";s:12:\"CategoryType\";s:7:\"Default\";}}', 'yes'),
(1599, 'EWD_URP_Autocomplete_Product_Names', 'Yes', 'yes'),
(1600, 'EWD_URP_Restrict_Product_Names', 'No', 'yes'),
(1601, 'EWD_URP_Product_Name_Input_Type', 'Text', 'yes'),
(1602, 'EWD_URP_UPCP_Integration', 'No', 'yes'),
(1603, 'EWD_URP_Product_Names_Array', 'a:0:{}', 'yes'),
(1604, 'EWD_URP_Link_To_Post', 'No', 'yes'),
(1605, 'EWD_URP_Display_Author', 'Yes', 'yes'),
(1606, 'EWD_URP_Display_Categories', 'No', 'yes'),
(1607, 'EWD_URP_Display_Date', 'Yes', 'yes'),
(1608, 'EWD_URP_Author_Click_Filter', 'No', 'yes'),
(1609, 'EWD_URP_Flag_Inappropriate', 'Yes', 'yes'),
(1610, 'EWD_URP_Review_Comments', 'No', 'yes'),
(1611, 'EWD_URP_Reviews_Per_Page', '1000', 'yes'),
(1612, 'EWD_URP_Pagination_Location', 'Both', 'yes'),
(1613, 'EWD_URP_Show_TinyMCE', 'Yes', 'yes'),
(1614, 'EWD_URP_Review_Format', 'Standard', 'yes'),
(1615, 'EWD_URP_Summary_Statistics', 'None', 'yes'),
(1616, 'EWD_URP_Summary_Clickable', 'No', 'yes'),
(1617, 'EWD_URP_Display_Microdata', 'No', 'yes'),
(1618, 'EWD_URP_Pretty_Permalinks', 'No', 'yes'),
(1619, 'EWD_URP_Thumbnail_Characters', '140', 'yes'),
(1620, 'EWD_URP_Read_More_AJAX', 'No', 'yes'),
(1621, 'EWD_URP_Review_Weights', 'No', 'yes'),
(1622, 'EWD_URP_Review_Karma', 'No', 'yes'),
(1623, 'EWD_URP_Use_Captcha', 'No', 'yes'),
(1624, 'EWD_URP_Infinite_Scroll', 'No', 'yes'),
(1625, 'EWD_URP_Admin_Notification', 'No', 'yes'),
(1626, 'EWD_URP_Admin_Approval', 'No', 'yes'),
(1627, 'EWD_URP_Require_Email', 'No', 'yes'),
(1628, 'EWD_URP_Email_Confirmation', 'No', 'yes'),
(1629, 'EWD_URP_Display_On_Confirmation', 'Yes', 'yes'),
(1630, 'EWD_URP_One_Review_Per_Product_Person', 'No', 'yes'),
(1631, 'EWD_URP_Require_Login', 'No', 'yes'),
(1632, 'EWD_URP_Login_Options', 'a:0:{}', 'yes'),
(1633, 'EWD_URP_Replace_WooCommerce_Reviews', 'Yes', 'yes'),
(1634, 'EWD_URP_WooCommerce_Review_Submit_First', 'No', 'yes'),
(1635, 'EWD_URP_Only_WooCommerce_Products', 'No', 'yes'),
(1636, 'EWD_URP_WooCommerce_Review_Types', 'a:1:{i:0;s:7:\"Default\";}', 'yes'),
(1637, 'EWD_URP_Override_WooCommerce_Theme', 'No', 'yes'),
(1638, 'EWD_URP_Display_WooCommerce_Verified', 'No', 'yes'),
(1639, 'EWD_URP_WooCommerce_Minimum_Days', '0', 'yes'),
(1640, 'EWD_URP_WooCommerce_Maximum_Days', '1000', 'yes'),
(1641, 'EWD_URP_Match_WooCommerce_Categories', 'No', 'yes'),
(1642, 'EWD_URP_WooCommerce_Category_Product_Reviews', '0', 'yes'),
(1643, 'EWD_URP_Group_By_Product', 'No', 'yes'),
(1644, 'EWD_URP_Group_By_Product_Order', 'ASC', 'yes'),
(1645, 'EWD_URP_Ordering_Type', 'Date', 'yes'),
(1646, 'EWD_URP_Order_Direction', 'DESC', 'yes'),
(1647, 'EWD_URP_Reviews_Skin', 'SimpleStars', 'yes'),
(1648, 'EWD_URP_Display_Numerical_Score', 'Yes', 'yes'),
(1649, 'EWD_URP_Install_Flag', 'Yes', 'yes'),
(1650, 'EWD_URP_Read_More_Style', 'StandardLink', 'yes'),
(1651, 'EWD_URP_Install_Version', '2', 'yes'),
(1652, 'EWD_URP_Install_Time', '1621673424', 'yes'),
(1653, 'EWD_URP_Version', '2.1.0c', 'yes'),
(1654, 'URP_Run_Tutorial', 'Yes', 'yes'),
(1657, 'URP_SubMenus', 'a:16:{s:9:\"index.php\";a:2:{i:0;a:3:{i:0;s:14:\"Главная\";i:1;s:4:\"read\";i:2;s:9:\"index.php\";}i:10;a:3:{i:0;s:100:\"Обновления <span class=\"update-plugins count-4\"><span class=\"update-count\">4</span></span>\";i:1;s:11:\"update_core\";i:2;s:15:\"update-core.php\";}}s:10:\"upload.php\";a:2:{i:5;a:3:{i:0;s:20:\"Библиотека\";i:1;s:12:\"upload_files\";i:2;s:10:\"upload.php\";}i:10;a:3:{i:0;s:27:\"Добавить новый\";i:1;s:12:\"upload_files\";i:2;s:13:\"media-new.php\";}}s:17:\"edit-comments.php\";a:1:{i:0;a:3:{i:0;s:29:\"Все комментарии\";i:1;s:10:\"edit_posts\";i:2;s:17:\"edit-comments.php\";}}s:8:\"edit.php\";a:4:{i:5;a:3:{i:0;s:19:\"Все записи\";i:1;s:10:\"edit_posts\";i:2;s:8:\"edit.php\";}i:10;a:3:{i:0;s:27:\"Добавить новую\";i:1;s:10:\"edit_posts\";i:2;s:12:\"post-new.php\";}i:15;a:3:{i:0;s:14:\"Рубрики\";i:1;s:17:\"manage_categories\";i:2;s:31:\"edit-tags.php?taxonomy=category\";}i:16;a:3:{i:0;s:10:\"Метки\";i:1;s:16:\"manage_post_tags\";i:2;s:31:\"edit-tags.php?taxonomy=post_tag\";}}s:23:\"edit.php?post_type=page\";a:2:{i:5;a:3:{i:0;s:23:\"Все страницы\";i:1;s:10:\"edit_pages\";i:2;s:23:\"edit.php?post_type=page\";}i:10;a:3:{i:0;s:27:\"Добавить новую\";i:1;s:10:\"edit_pages\";i:2;s:27:\"post-new.php?post_type=page\";}}s:26:\"edit.php?post_type=product\";a:5:{i:5;a:3:{i:0;s:12:\"All Products\";i:1;s:13:\"edit_products\";i:2;s:26:\"edit.php?post_type=product\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:13:\"edit_products\";i:2;s:30:\"post-new.php?post_type=product\";}i:15;a:3:{i:0;s:10:\"Categories\";i:1;s:20:\"manage_product_terms\";i:2;s:56:\"edit-tags.php?taxonomy=product_cat&amp;post_type=product\";}i:16;a:3:{i:0;s:4:\"Tags\";i:1;s:20:\"manage_product_terms\";i:2;s:56:\"edit-tags.php?taxonomy=product_tag&amp;post_type=product\";}i:17;a:4:{i:0;s:10:\"Attributes\";i:1;s:20:\"manage_product_terms\";i:2;s:18:\"product_attributes\";i:3;s:10:\"Attributes\";}}s:10:\"themes.php\";a:6:{i:5;a:3:{i:0;s:8:\"Темы\";i:1;s:13:\"switch_themes\";i:2;s:10:\"themes.php\";}i:6;a:5:{i:0;s:18:\"Настроить\";i:1;s:9:\"customize\";i:2;s:171:\"customize.php?return=%2Fwp-admin%2Fplugins.php%3Faction%3Ddeactivate%26plugin%3Dultimate-reviews%252FMain.php%26plugin_status%3Dall%26paged%3D1%26s%26_wpnonce%3D519af7bbd0\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:7;a:3:{i:0;s:14:\"Виджеты\";i:1;s:18:\"edit_theme_options\";i:2;s:11:\"widgets.php\";}i:10;a:3:{i:0;s:8:\"Меню\";i:1;s:18:\"edit_theme_options\";i:2;s:13:\"nav-menus.php\";}i:15;a:5:{i:0;s:18:\"Заголовок\";i:1;s:13:\"switch_themes\";i:2;s:212:\"customize.php?return=%2Fwp-admin%2Fplugins.php%3Faction%3Ddeactivate%26plugin%3Dultimate-reviews%252FMain.php%26plugin_status%3Dall%26paged%3D1%26s%26_wpnonce%3D519af7bbd0&#038;autofocus%5Bcontrol%5D=header_image\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:20;a:5:{i:0;s:6:\"Фон\";i:1;s:13:\"switch_themes\";i:2;s:216:\"customize.php?return=%2Fwp-admin%2Fplugins.php%3Faction%3Ddeactivate%26plugin%3Dultimate-reviews%252FMain.php%26plugin_status%3Dall%26paged%3D1%26s%26_wpnonce%3D519af7bbd0&#038;autofocus%5Bcontrol%5D=background_image\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}}s:11:\"plugins.php\";a:3:{i:5;a:3:{i:0;s:26:\"Установленные\";i:1;s:16:\"activate_plugins\";i:2;s:11:\"plugins.php\";}i:10;a:3:{i:0;s:27:\"Добавить новый\";i:1;s:15:\"install_plugins\";i:2;s:18:\"plugin-install.php\";}i:15;a:3:{i:0;s:33:\"Редактор плагинов\";i:1;s:12:\"edit_plugins\";i:2;s:17:\"plugin-editor.php\";}}s:9:\"users.php\";a:3:{i:5;a:3:{i:0;s:31:\"Все пользователи\";i:1;s:10:\"list_users\";i:2;s:9:\"users.php\";}i:10;a:3:{i:0;s:29:\"Добавить нового\";i:1;s:12:\"create_users\";i:2;s:12:\"user-new.php\";}i:15;a:3:{i:0;s:14:\"Профиль\";i:1;s:4:\"read\";i:2;s:11:\"profile.php\";}}s:9:\"tools.php\";a:6:{i:5;a:3:{i:0;s:29:\"Все инструменты\";i:1;s:10:\"edit_posts\";i:2;s:9:\"tools.php\";}i:10;a:3:{i:0;s:12:\"Импорт\";i:1;s:6:\"import\";i:2;s:10:\"import.php\";}i:15;a:3:{i:0;s:14:\"Экспорт\";i:1;s:6:\"export\";i:2;s:10:\"export.php\";}i:20;a:3:{i:0;s:27:\"Здоровье сайта\";i:1;s:23:\"view_site_health_checks\";i:2;s:15:\"site-health.php\";}i:25;a:3:{i:0;s:52:\"Экспорт персональных данных\";i:1;s:27:\"export_others_personal_data\";i:2;s:24:\"export-personal-data.php\";}i:30;a:3:{i:0;s:54:\"Удаление персональных данных\";i:1;s:26:\"erase_others_personal_data\";i:2;s:23:\"erase-personal-data.php\";}}s:19:\"options-general.php\";a:8:{i:10;a:3:{i:0;s:10:\"Общие\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-general.php\";}i:15;a:3:{i:0;s:18:\"Написание\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-writing.php\";}i:20;a:3:{i:0;s:12:\"Чтение\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-reading.php\";}i:25;a:3:{i:0;s:20:\"Обсуждение\";i:1;s:14:\"manage_options\";i:2;s:22:\"options-discussion.php\";}i:30;a:3:{i:0;s:20:\"Медиафайлы\";i:1;s:14:\"manage_options\";i:2;s:17:\"options-media.php\";}i:40;a:3:{i:0;s:33:\"Постоянные ссылки\";i:1;s:14:\"manage_options\";i:2;s:21:\"options-permalink.php\";}i:45;a:3:{i:0;s:22:\"Приватность\";i:1;s:22:\"manage_privacy_options\";i:2;s:19:\"options-privacy.php\";}i:46;a:4:{i:0;s:14:\"Theme Code Pro\";i:1;s:14:\"manage_options\";i:2;s:22:\"theme-code-pro-license\";i:3;s:22:\"Theme Code Pro License\";}}s:36:\"edit-tags.php?taxonomy=link_category\";a:1:{i:15;a:3:{i:0;s:27:\"Рубрики ссылок\";i:1;s:17:\"manage_categories\";i:2;s:36:\"edit-tags.php?taxonomy=link_category\";}}s:21:\"woocommerce-marketing\";a:2:{i:0;a:4:{i:0;s:8:\"Overview\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:39:\"admin.php?page=wc-admin&path=/marketing\";i:3;s:8:\"Overview\";}i:1;a:4:{i:0;s:7:\"Coupons\";i:1;s:17:\"edit_shop_coupons\";i:2;s:30:\"edit.php?post_type=shop_coupon\";i:3;s:7:\"Coupons\";}}s:11:\"woocommerce\";a:2:{i:0;a:4:{i:0;s:11:\"WooCommerce\";i:1;s:23:\"edit_others_shop_orders\";i:2;s:11:\"woocommerce\";i:3;s:11:\"WooCommerce\";}i:1;a:4:{i:0;s:6:\"Orders\";i:1;s:16:\"edit_shop_orders\";i:2;s:29:\"edit.php?post_type=shop_order\";i:3;s:6:\"Orders\";}}s:34:\"edit.php?post_type=acf-field-group\";a:3:{i:0;a:4:{i:0;s:23:\"Группы полей\";i:1;s:14:\"manage_options\";i:2;s:34:\"edit.php?post_type=acf-field-group\";i:3;s:23:\"Группы полей\";}i:1;a:4:{i:0;s:16:\"Добавить\";i:1;s:14:\"manage_options\";i:2;s:38:\"post-new.php?post_type=acf-field-group\";i:3;s:16:\"Добавить\";}i:2;a:4:{i:0;s:22:\"Инструменты\";i:1;s:14:\"manage_options\";i:2;s:9:\"acf-tools\";i:3;s:22:\"Инструменты\";}}s:15:\"EWD-URP-Options\";a:7:{i:0;a:4:{i:0;s:9:\"Dashboard\";i:1;s:10:\"edit_posts\";i:2;s:15:\"EWD-URP-Options\";i:3;s:16:\"Ultimate Reviews\";}i:1;a:4:{i:0;s:7:\"Reviews\";i:1;s:10:\"edit_posts\";i:2;s:29:\"edit.php?post_type=urp_review\";i:3;s:7:\"Reviews\";}i:2;a:4:{i:0;s:7:\"Add New\";i:1;s:10:\"edit_posts\";i:2;s:33:\"post-new.php?post_type=urp_review\";i:3;s:7:\"Add New\";}i:3;a:4:{i:0;s:17:\"Review Categories\";i:1;s:17:\"manage_categories\";i:2;s:63:\"edit-tags.php?taxonomy=urp-review-category&post_type=urp_review\";i:3;s:17:\"Review Categories\";}i:4;a:4:{i:0;s:6:\"Export\";i:1;s:10:\"edit_posts\";i:2;s:49:\"admin.php?page=EWD-URP-Options&DisplayPage=Export\";i:3;s:6:\"Export\";}i:5;a:4:{i:0;s:6:\"Import\";i:1;s:10:\"edit_posts\";i:2;s:45:\"EWD-URP-Options&DisplayPage=WooCommerceImport\";i:3;s:22:\"URP WooCommerce Import\";}i:6;a:4:{i:0;s:7:\"Options\";i:1;s:10:\"edit_posts\";i:2;s:35:\"EWD-URP-Options&DisplayPage=Options\";i:3;s:11:\"URP Options\";}}}', 'yes'),
(1662, 'EWD_URP_Update_Flag', 'Yes', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1665, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1621697154;s:7:\"checked\";a:14:{s:41:\"acf-theme-code-pro/acf_theme_code_pro.php\";s:5:\"2.5.0\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:47:\"current-template-info/current-template-info.php\";s:5:\"1.0.0\";s:41:\"ewd-premium-helper/ewd-premium-helper.php\";s:5:\"0.0.4\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:5:\"2.5.0\";s:25:\"polylang-pro/polylang.php\";s:3:\"2.9\";s:19:\"reviewx/reviewx.php\";s:5:\"1.3.2\";s:33:\"star-rating-block/star-rating.php\";s:5:\"1.0.0\";s:25:\"ultimate-reviews/Main.php\";s:6:\"2.1.31\";s:27:\"woocommerce/woocommerce.php\";s:5:\"5.3.0\";s:19:\"wp-scss/wp-scss.php\";s:5:\"2.1.6\";s:39:\"wp-product-review/wp-product-review.php\";s:6:\"3.7.11\";}s:8:\"response\";a:2:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.7\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}s:25:\"polylang-pro/polylang.php\";O:8:\"stdClass\":19:{s:11:\"new_version\";s:5:\"3.0.4\";s:14:\"stable_version\";s:5:\"3.0.4\";s:4:\"name\";s:12:\"Polylang Pro\";s:4:\"slug\";s:8:\"polylang\";s:3:\"url\";s:56:\"https://polylang.pro/downloads/polylang-pro/?changelog=1\";s:12:\"last_updated\";s:11:\"4 weeks ago\";s:8:\"homepage\";s:44:\"https://polylang.pro/downloads/polylang-pro/\";s:7:\"package\";s:0:\"\";s:13:\"download_link\";s:0:\"\";s:8:\"sections\";O:8:\"stdClass\":2:{s:11:\"description\";s:100:\"<p>Polylang Pro offers all the awesomeness of Polylang plus extra features and Premium support.</p>\n\";s:9:\"changelog\";s:3449:\"<h4> 3.0.4 (2021-04-27) </h4>\n<ul>\n<li>Improve performance in the pages (or hierarchical post types) list table</li>\n<li>Fix an ajax conflict with WooCommerce License manager</li>\n</ul>\n<h4> 3.0.3 (2021-03-23) </h4>\n<ul>\n<li>Fix a warning when a language is corrupted in database (term_language missing)</li>\n<li>Fix confirmation modal with WooCommerce and WordPress &lt; 5.6</li>\n<li>Fix an ajax conflict with WooCommerce Tree Table Rate Shipping and HubSpot All-In-One Marketing</li>\n</ul>\n<h4> 3.0.2 (2021-03-16) </h4>\n<ul>\n<li>Move hreflang attributes higher in the head section #771</li>\n<li>Fix custom flags not working (introduced in 3.0)</li>\n<li>Fix translation of the confirmation modal when changing the language of a post</li>\n<li>Fix js and css not loaded when Polylang is used as a mu-plugin ((introduced in 3.0))</li>\n<li>Fix support for html5 stylesheet link tags #775</li>\n<li>Fix possible warning in frontend-filters-links.php</li>\n<li>Yoast SEO Premium: Take over the multilingual compatibility removed in Yoast SEO Premium 15.8 #796</li>\n<li>Yoast SEO: Fix CPT breadcrumb title when the option is left empty #794</li>\n<li>Yoast SEO: Fix sitemap.xml not redirected on secondary domains #789</li>\n</ul>\n<h4> 3.0.1 (2021-03-10) </h4>\n<ul>\n<li>Fix media gallery messed when editing a post in the classic editor</li>\n<li>Fix missing script dependency on old WP versions</li>\n<li>Fix CSS conflict with WooCommerce Bookings for WP &lt; 5.6</li>\n<li>Fix conflict resulting in \'__\' already defined in block-editor.js. #779</li>\n<li>Fix search form removed for some themes. Props Marián Kadaňka. #780</li>\n<li>Fix fatal error with very old versions of Yoast SEO. Props Nicola Peluchetti. #781</li>\n</ul>\n<h4> 3.0 (2021-03-08) </h4>\n<ul>\n<li>Add compatibility with WordPress 5.7</li>\n<li>Remove upgrades from Polylang older than 1.8</li>\n<li>Remove deprecated class PLL_Pointer</li>\n<li>Pro: Hide the license keys</li>\n<li>Pro: Fix redirect to the home page of a deactivated language</li>\n<li>Pro: Fix synchronization of post status not working</li>\n<li>Pro: Fix language switcher block not working in a post retrieved in REST API</li>\n<li>Pro: Fix PO export of strings with line breaks</li>\n<li>Pro: Fix file block title customization lost</li>\n<li>Add a dialog box to ask a confirmation about a language change in classic and block editors</li>\n<li>Improve browser language detection #591</li>\n<li>Improve robustness and documentation of code</li>\n<li>Fix media library after the language has been chnaged in the editor metabox</li>\n<li>Fix duplicated title attribute on flag link in posts list</li>\n<li>Fix legacy block editor language metabox compatibility with WordPress 5.6</li>\n<li>Fix uploaded theme and plugin files in media library</li>\n<li>Fix site title not translated in email change confirmation email</li>\n<li>Fix remaining deprecated jQuery notices #741</li>\n<li>Fix compatibility with GN publisher</li>\n<li>Fix compatibility with Woodmart theme search form</li>\n<li>Fix compatibility issue with 3rd party ajax requests since jQuery 3.3 #744</li>\n<li>Fix CSS conflict with WooCommerce Bookings</li>\n<li>Fix browser error when displaying an embed and using a cache plugin #757</li>\n<li>Fix post type archive title and metadesc not translated in Yoast SEO</li>\n<li>Fix PHP notice in REST API</li>\n</ul>\n<p>See <a href=\"https://plugins.svn.wordpress.org/polylang/trunk/changelog.txt\">changelog.txt</a> for older changelog</p>\";}s:7:\"banners\";O:8:\"stdClass\":2:{s:4:\"high\";s:0:\"\";s:3:\"low\";s:0:\"\";}s:5:\"icons\";a:2:{s:2:\"1x\";s:68:\"https://polylang.pro/wp-content/uploads/edd/2016/04/polylang-pro.png\";s:2:\"2x\";s:68:\"https://polylang.pro/wp-content/uploads/edd/2016/04/polylang-pro.png\";}s:3:\"msg\";s:33:\"No license key has been provided.\";s:10:\"stable_tag\";s:5:\"3.0.4\";s:6:\"tested\";s:3:\"5.7\";s:11:\"description\";a:1:{i:0;s:100:\"<p>Polylang Pro offers all the awesomeness of Polylang plus extra features and Premium support.</p>\n\";}s:9:\"changelog\";a:1:{i:0;s:3449:\"<h4> 3.0.4 (2021-04-27) </h4>\n<ul>\n<li>Improve performance in the pages (or hierarchical post types) list table</li>\n<li>Fix an ajax conflict with WooCommerce License manager</li>\n</ul>\n<h4> 3.0.3 (2021-03-23) </h4>\n<ul>\n<li>Fix a warning when a language is corrupted in database (term_language missing)</li>\n<li>Fix confirmation modal with WooCommerce and WordPress &lt; 5.6</li>\n<li>Fix an ajax conflict with WooCommerce Tree Table Rate Shipping and HubSpot All-In-One Marketing</li>\n</ul>\n<h4> 3.0.2 (2021-03-16) </h4>\n<ul>\n<li>Move hreflang attributes higher in the head section #771</li>\n<li>Fix custom flags not working (introduced in 3.0)</li>\n<li>Fix translation of the confirmation modal when changing the language of a post</li>\n<li>Fix js and css not loaded when Polylang is used as a mu-plugin ((introduced in 3.0))</li>\n<li>Fix support for html5 stylesheet link tags #775</li>\n<li>Fix possible warning in frontend-filters-links.php</li>\n<li>Yoast SEO Premium: Take over the multilingual compatibility removed in Yoast SEO Premium 15.8 #796</li>\n<li>Yoast SEO: Fix CPT breadcrumb title when the option is left empty #794</li>\n<li>Yoast SEO: Fix sitemap.xml not redirected on secondary domains #789</li>\n</ul>\n<h4> 3.0.1 (2021-03-10) </h4>\n<ul>\n<li>Fix media gallery messed when editing a post in the classic editor</li>\n<li>Fix missing script dependency on old WP versions</li>\n<li>Fix CSS conflict with WooCommerce Bookings for WP &lt; 5.6</li>\n<li>Fix conflict resulting in \'__\' already defined in block-editor.js. #779</li>\n<li>Fix search form removed for some themes. Props Marián Kadaňka. #780</li>\n<li>Fix fatal error with very old versions of Yoast SEO. Props Nicola Peluchetti. #781</li>\n</ul>\n<h4> 3.0 (2021-03-08) </h4>\n<ul>\n<li>Add compatibility with WordPress 5.7</li>\n<li>Remove upgrades from Polylang older than 1.8</li>\n<li>Remove deprecated class PLL_Pointer</li>\n<li>Pro: Hide the license keys</li>\n<li>Pro: Fix redirect to the home page of a deactivated language</li>\n<li>Pro: Fix synchronization of post status not working</li>\n<li>Pro: Fix language switcher block not working in a post retrieved in REST API</li>\n<li>Pro: Fix PO export of strings with line breaks</li>\n<li>Pro: Fix file block title customization lost</li>\n<li>Add a dialog box to ask a confirmation about a language change in classic and block editors</li>\n<li>Improve browser language detection #591</li>\n<li>Improve robustness and documentation of code</li>\n<li>Fix media library after the language has been chnaged in the editor metabox</li>\n<li>Fix duplicated title attribute on flag link in posts list</li>\n<li>Fix legacy block editor language metabox compatibility with WordPress 5.6</li>\n<li>Fix uploaded theme and plugin files in media library</li>\n<li>Fix site title not translated in email change confirmation email</li>\n<li>Fix remaining deprecated jQuery notices #741</li>\n<li>Fix compatibility with GN publisher</li>\n<li>Fix compatibility with Woodmart theme search form</li>\n<li>Fix compatibility issue with 3rd party ajax requests since jQuery 3.3 #744</li>\n<li>Fix CSS conflict with WooCommerce Bookings</li>\n<li>Fix browser error when displaying an embed and using a cache plugin #757</li>\n<li>Fix post type archive title and metadesc not translated in Yoast SEO</li>\n<li>Fix PHP notice in REST API</li>\n</ul>\n<p>See <a href=\"https://plugins.svn.wordpress.org/polylang/trunk/changelog.txt\">changelog.txt</a> for older changelog</p>\";}s:6:\"plugin\";s:25:\"polylang-pro/polylang.php\";s:2:\"id\";s:25:\"polylang-pro/polylang.php\";}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.1.9\";s:7:\"updated\";s:19:\"2020-12-31 04:04:29\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1.9/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.6\";s:7:\"updated\";s:19:\"2020-08-11 20:39:25\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.6/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.3.0\";s:7:\"updated\";s:19:\"2021-05-21 20:58:44\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/5.3.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:9:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"current-template-info/current-template-info.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/current-template-info\";s:4:\"slug\";s:21:\"current-template-info\";s:6:\"plugin\";s:47:\"current-template-info/current-template-info.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/current-template-info/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/current-template-info.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/current-template-info/assets/icon-256x256.png?rev=1878011\";s:2:\"1x\";s:74:\"https://ps.w.org/current-template-info/assets/icon-128x128.png?rev=1878011\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:5:\"2.5.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.2.5.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:19:\"reviewx/reviewx.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/reviewx\";s:4:\"slug\";s:7:\"reviewx\";s:6:\"plugin\";s:19:\"reviewx/reviewx.php\";s:11:\"new_version\";s:5:\"1.3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/reviewx/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/reviewx.1.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/reviewx/assets/icon-256x256.gif?rev=2365574\";s:2:\"1x\";s:60:\"https://ps.w.org/reviewx/assets/icon-128x128.gif?rev=2365574\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/reviewx/assets/banner-1544x500.png?rev=2310337\";s:2:\"1x\";s:62:\"https://ps.w.org/reviewx/assets/banner-772x250.png?rev=2310337\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"star-rating-block/star-rating.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/star-rating-block\";s:4:\"slug\";s:17:\"star-rating-block\";s:6:\"plugin\";s:33:\"star-rating-block/star-rating.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/star-rating-block/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/star-rating-block.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/star-rating-block/assets/icon-256x256.png?rev=2377659\";s:2:\"1x\";s:70:\"https://ps.w.org/star-rating-block/assets/icon-128x128.png?rev=2377659\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"5.3.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.5.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"wp-scss/wp-scss.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/wp-scss\";s:4:\"slug\";s:7:\"wp-scss\";s:6:\"plugin\";s:19:\"wp-scss/wp-scss.php\";s:11:\"new_version\";s:5:\"2.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/wp-scss/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/wp-scss.2.1.6.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/wp-scss_222222.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/wp-scss/assets/banner-772x250.png?rev=810420\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"wp-product-review/wp-product-review.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/wp-product-review\";s:4:\"slug\";s:17:\"wp-product-review\";s:6:\"plugin\";s:39:\"wp-product-review/wp-product-review.php\";s:11:\"new_version\";s:6:\"3.7.11\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/wp-product-review/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wp-product-review.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:62:\"https://ps.w.org/wp-product-review/assets/icon.svg?rev=2089819\";s:3:\"svg\";s:62:\"https://ps.w.org/wp-product-review/assets/icon.svg?rev=2089819\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wp-product-review/assets/banner-772x250.png?rev=2089814\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1666, '_transient_timeout_ewdph_update', '1621716843', 'no'),
(1667, '_transient_ewdph_update', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:4:\"date\";s:29:\"Sat, 22 May 2021 08:54:03 GMT\";s:6:\"server\";s:6:\"Apache\";s:7:\"upgrade\";s:2:\"h2\";s:13:\"last-modified\";s:29:\"Thu, 20 May 2021 15:36:38 GMT\";s:4:\"etag\";s:19:\"\"31e-5c2c4b589b6b2\"\";s:13:\"accept-ranges\";s:5:\"bytes\";s:14:\"content-length\";s:3:\"798\";s:13:\"cache-control\";s:14:\"max-age=172800\";s:7:\"expires\";s:29:\"Mon, 24 May 2021 08:54:03 GMT\";s:4:\"vary\";s:10:\"User-Agent\";s:12:\"content-type\";s:16:\"application/json\";}}s:4:\"body\";s:798:\"{\r\n	\"version\" : \"0.0.11\",\r\n	\"name\" : \"EWD Premium Helper\",\r\n	\"download_url\" : \"https://etoilewebdesign.com/downloads/ewd-premium-helper.zip\",\r\n	\"requires\" : \"4.0\",\r\n	\"tested\" : \"5.7\",\r\n	\"requires_php\" : \"5.3\",\r\n	\"last_updated\" : \"2021-05-20 17:00:00\",\r\n	\"sections\" : {\r\n		\"description\" : \"Allows a website to access the premium trial and unlocks premium features of Etoile Web Design plugins with an upgrade code\",\r\n		\"installation\" : \"Upload the plugin to your blog, Activate it, that\'s it!\",\r\n		\"changelog\" : \"<h4>0.0.11 – May 20, 2021</h4><ul><li>Updated to be compatible with our rebuilt Order Tracking plugin.</li><li>0.0.11 – May 20.</li></ul>\"\r\n	},\r\n	\"banners\" : {\r\n		\"low\" : \"https://etoilewebdesign.com/banner-772x250.jpg\",\r\n		\"high\" : \"https://YOUR_WEBSITE/banner-1544x500.jpg\"\r\n	}\r\n}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:798:\"{\r\n	\"version\" : \"0.0.11\",\r\n	\"name\" : \"EWD Premium Helper\",\r\n	\"download_url\" : \"https://etoilewebdesign.com/downloads/ewd-premium-helper.zip\",\r\n	\"requires\" : \"4.0\",\r\n	\"tested\" : \"5.7\",\r\n	\"requires_php\" : \"5.3\",\r\n	\"last_updated\" : \"2021-05-20 17:00:00\",\r\n	\"sections\" : {\r\n		\"description\" : \"Allows a website to access the premium trial and unlocks premium features of Etoile Web Design plugins with an upgrade code\",\r\n		\"installation\" : \"Upload the plugin to your blog, Activate it, that\'s it!\",\r\n		\"changelog\" : \"<h4>0.0.11 – May 20, 2021</h4><ul><li>Updated to be compatible with our rebuilt Order Tracking plugin.</li><li>0.0.11 – May 20.</li></ul>\"\r\n	},\r\n	\"banners\" : {\r\n		\"low\" : \"https://etoilewebdesign.com/banner-772x250.jpg\",\r\n		\"high\" : \"https://YOUR_WEBSITE/banner-1544x500.jpg\"\r\n	}\r\n}\";s:3:\"raw\";s:1148:\"HTTP/1.1 200 OK\r\nDate: Sat, 22 May 2021 08:54:03 GMT\r\nServer: Apache\r\nUpgrade: h2\r\nConnection: Upgrade, close\r\nLast-Modified: Thu, 20 May 2021 15:36:38 GMT\r\nETag: \"31e-5c2c4b589b6b2\"\r\nAccept-Ranges: bytes\r\nContent-Length: 798\r\nCache-Control: max-age=172800\r\nExpires: Mon, 24 May 2021 08:54:03 GMT\r\nVary: User-Agent\r\nContent-Type: application/json\r\n\r\n{\r\n	\"version\" : \"0.0.11\",\r\n	\"name\" : \"EWD Premium Helper\",\r\n	\"download_url\" : \"https://etoilewebdesign.com/downloads/ewd-premium-helper.zip\",\r\n	\"requires\" : \"4.0\",\r\n	\"tested\" : \"5.7\",\r\n	\"requires_php\" : \"5.3\",\r\n	\"last_updated\" : \"2021-05-20 17:00:00\",\r\n	\"sections\" : {\r\n		\"description\" : \"Allows a website to access the premium trial and unlocks premium features of Etoile Web Design plugins with an upgrade code\",\r\n		\"installation\" : \"Upload the plugin to your blog, Activate it, that\'s it!\",\r\n		\"changelog\" : \"<h4>0.0.11 – May 20, 2021</h4><ul><li>Updated to be compatible with our rebuilt Order Tracking plugin.</li><li>0.0.11 – May 20.</li></ul>\"\r\n	},\r\n	\"banners\" : {\r\n		\"low\" : \"https://etoilewebdesign.com/banner-772x250.jpg\",\r\n		\"high\" : \"https://YOUR_WEBSITE/banner-1544x500.jpg\"\r\n	}\r\n}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:11:{s:4:\"date\";a:1:{i:0;s:29:\"Sat, 22 May 2021 08:54:03 GMT\";}s:6:\"server\";a:1:{i:0;s:6:\"Apache\";}s:7:\"upgrade\";a:1:{i:0;s:2:\"h2\";}s:13:\"last-modified\";a:1:{i:0;s:29:\"Thu, 20 May 2021 15:36:38 GMT\";}s:4:\"etag\";a:1:{i:0;s:19:\"\"31e-5c2c4b589b6b2\"\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}s:14:\"content-length\";a:1:{i:0;s:3:\"798\";}s:13:\"cache-control\";a:1:{i:0;s:14:\"max-age=172800\";}s:7:\"expires\";a:1:{i:0;s:29:\"Mon, 24 May 2021 08:54:03 GMT\";}s:4:\"vary\";a:1:{i:0;s:10:\"User-Agent\";}s:12:\"content-type\";a:1:{i:0;s:16:\"application/json\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:1;s:3:\"url\";s:57:\"https://www.etoilewebdesign.com/downloads/ewdph-info.json\";s:7:\"history\";a:1:{i:0;O:17:\"Requests_Response\":10:{s:4:\"body\";s:265:\"<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\n<html><head>\n<title>301 Moved Permanently</title>\n</head><body>\n<h1>Moved Permanently</h1>\n<p>The document has moved <a href=\"https://www.etoilewebdesign.com/downloads/ewdph-info.json\">here</a>.</p>\n</body></html>\n\";s:3:\"raw\";s:506:\"HTTP/1.1 301 Moved Permanently\r\nDate: Sat, 22 May 2021 08:54:02 GMT\r\nServer: Apache\r\nLocation: https://www.etoilewebdesign.com/downloads/ewdph-info.json\r\nContent-Length: 265\r\nConnection: close\r\nContent-Type: text/html; charset=iso-8859-1\r\n\r\n<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\n<html><head>\n<title>301 Moved Permanently</title>\n</head><body>\n<h1>Moved Permanently</h1>\n<p>The document has moved <a href=\"https://www.etoilewebdesign.com/downloads/ewdph-info.json\">here</a>.</p>\n</body></html>\n\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:5:{s:4:\"date\";a:1:{i:0;s:29:\"Sat, 22 May 2021 08:54:02 GMT\";}s:6:\"server\";a:1:{i:0;s:6:\"Apache\";}s:8:\"location\";a:1:{i:0;s:57:\"https://www.etoilewebdesign.com/downloads/ewdph-info.json\";}s:14:\"content-length\";a:1:{i:0;s:3:\"265\";}s:12:\"content-type\";a:1:{i:0;s:29:\"text/html; charset=iso-8859-1\";}}}s:11:\"status_code\";i:301;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:0;s:9:\"redirects\";i:0;s:3:\"url\";s:53:\"https://etoilewebdesign.com/downloads/ewdph-info.json\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}}s:7:\"cookies\";r:76;}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no'),
(1684, 'EWD_URP_Trial_Happening', 'No', 'yes'),
(1685, 'EWD_URP_Full_Version', 'Yes', 'yes'),
(1686, 'EWD_URP_License_Key', 'iC41vlD8mARMiWQXzE7d', 'yes'),
(1687, 'EWD_URP_Custom_CSS', '  ', 'yes'),
(1688, 'EWD_URP_Review_Character_Limit', '', 'yes'),
(1689, 'EWD_URP_Items_Reviewed', 'Product', 'yes'),
(1690, 'EWD_URP_Admin_Email_Address', '', 'yes'),
(1691, 'EWD_URP_Review_Blacklist', '', 'yes'),
(1692, 'EWD_URP_Reminders_Array', 'a:0:{}', 'yes'),
(1693, 'EWD_URP_Email_Messages_Array', 'a:0:{}', 'yes'),
(1694, 'EWD_URP_WordPress_Login_URL', '', 'yes'),
(1695, 'EWD_URP_FEUP_Login_URL', '', 'yes'),
(1696, 'EWD_URP_Posted_Label', '', 'yes'),
(1697, 'EWD_URP_By_Label', '', 'yes'),
(1698, 'EWD_URP_On_Label', '', 'yes'),
(1699, 'EWD_URP_Score_Label', '', 'yes'),
(1700, 'EWD_URP_Explanation_Label', '', 'yes'),
(1701, 'EWD_URP_Submit_Product_Label', '', 'yes'),
(1702, 'EWD_URP_Submit_Author_Label', '', 'yes'),
(1703, 'EWD_URP_Submit_Author_Comment_Label', '', 'yes'),
(1704, 'EWD_URP_Submit_Title_Label', '', 'yes'),
(1705, 'EWD_URP_Submit_Title_Comment_Label', '', 'yes'),
(1706, 'EWD_URP_Submit_Score_Label', '', 'yes'),
(1707, 'EWD_URP_Submit_Review_Label', '', 'yes'),
(1708, 'EWD_URP_Submit_Cat_Score_Label', '', 'yes'),
(1709, 'EWD_URP_Submit_Explanation_Label', '', 'yes'),
(1710, 'EWD_URP_Submit_Button_Label', '', 'yes'),
(1711, 'EWD_URP_Submit_Success_Message', '', 'yes'),
(1712, 'EWD_URP_Submit_Draft_Message', '', 'yes'),
(1713, 'EWD_URP_Review_For_Label', '', 'yes'),
(1714, 'EWD_URP_Categories_Label_Label', '', 'yes'),
(1715, 'EWD_URP_Verified_Buyer_Label', '', 'yes'),
(1716, 'EWD_URP_Filter_Button_Label', '', 'yes'),
(1717, 'EWD_URP_Filter_Product_Name_Label', '', 'yes'),
(1718, 'EWD_URP_Filter_All_Label', '', 'yes'),
(1719, 'EWD_URP_Filter_Review_Score_Label', '', 'yes'),
(1720, 'EWD_URP_Filter_Review_Author_Label', '', 'yes'),
(1721, 'EWD_URP_Submit_Reviewer_Email_Address_Label', '', 'yes'),
(1722, 'EWD_URP_Submit_Reviewer_Email_Address_Instructions_Label', '', 'yes'),
(1723, 'EWD_URP_Submit_Image_Number_Label', '', 'yes'),
(1724, 'EWD_URP_Summary_Average_Score_Label', '', 'yes'),
(1725, 'EWD_URP_Summary_Ratings_Label', '', 'yes'),
(1726, 'EWD_urp_Review_Title_Font', '', 'yes'),
(1727, 'EWD_urp_Review_Title_Font_Size', '', 'yes'),
(1728, 'EWD_urp_Review_Title_Font_Color', '', 'yes'),
(1729, 'EWD_urp_Review_Title_Margin', '', 'yes'),
(1730, 'EWD_urp_Review_Title_Padding', '', 'yes'),
(1731, 'EWD_urp_Review_Content_Font', '', 'yes'),
(1732, 'EWD_urp_Review_Content_Font_Size', '', 'yes'),
(1733, 'EWD_urp_Review_Content_Font_Color', '', 'yes'),
(1734, 'EWD_urp_Review_Content_Margin', '', 'yes'),
(1735, 'EWD_urp_Review_Content_Padding', '', 'yes'),
(1736, 'EWD_urp_Review_Postdate_Font', '', 'yes'),
(1737, 'EWD_urp_Review_Postdate_Font_Size', '', 'yes'),
(1738, 'EWD_urp_Review_Postdate_Font_Color', '', 'yes'),
(1739, 'EWD_urp_Review_Postdate_Margin', '', 'yes'),
(1740, 'EWD_urp_Review_Postdate_Padding', '', 'yes'),
(1741, 'EWD_urp_Review_Score_Font', '', 'yes'),
(1742, 'EWD_urp_Review_Score_Font_Size', '', 'yes'),
(1743, 'EWD_urp_Review_Score_Font_Color', '', 'yes'),
(1744, 'EWD_urp_Review_Score_Margin', '', 'yes'),
(1745, 'EWD_urp_Review_Score_Padding', '', 'yes'),
(1746, 'EWD_urp_Summary_Stats_Color', '', 'yes'),
(1747, 'EWD_urp_Simple_Bar_Color', '', 'yes'),
(1748, 'EWD_urp_Color_Bar_High', '', 'yes'),
(1749, 'EWD_urp_Color_Bar_Medium', '', 'yes'),
(1750, 'EWD_urp_Color_Bar_Low', '', 'yes'),
(1751, 'EWD_urp_Review_Background_Color', '', 'yes'),
(1752, 'EWD_urp_Review_Header_Background_Color', '', 'yes'),
(1753, 'EWD_urp_Review_Content_Background_Color', '', 'yes'),
(1754, 'EWD_urp_Read_More_Button_Background_Color', '', 'yes'),
(1755, 'EWD_urp_Read_More_Button_Text_Color', '', 'yes'),
(1756, 'EWD_urp_Read_More_Button_Hover_Background_Color', '', 'yes'),
(1757, 'EWD_urp_Read_More_Button_Hover_Text_Color', '', 'yes'),
(1758, 'EWD_urp_Image_Style_Background_Color', '', 'yes'),
(1759, 'EWD_urp_Circle_Graph_Background_Color', '', 'yes'),
(1760, 'EWD_urp_Circle_Graph_Fill_Color', '', 'yes'),
(1761, 'EWD_urp_Rating_Stars_Color', '', 'yes'),
(1762, 'EWD_urp_Verified_Checkmark_Background_Color', '', 'yes'),
(1763, 'EWD_urp_Verified_Checkmark_Color', '', 'yes'),
(1764, 'EWD_urp_Verified_Checkmark_Text_Color', '', 'yes'),
(1765, 'EWD_urp_Email_Reminder_Background_Color', '', 'yes'),
(1766, 'EWD_urp_Email_Reminder_Inner_Color', '', 'yes'),
(1767, 'EWD_urp_Email_Reminder_Text_Color', '', 'yes'),
(1768, 'EWD_urp_Email_Reminder_Button_Background_Color', '', 'yes'),
(1769, 'EWD_urp_Email_Reminder_Button_Background_Hover_Color', '', 'yes'),
(1770, 'EWD_urp_Email_Reminder_Button_Text_Color', '', 'yes'),
(1771, 'EWD_urp_Email_Reminder_Button_Text_Hover_Color', '', 'yes'),
(1785, 'action_scheduler_migration_status', 'complete', 'yes'),
(1788, 'widget_cwp_latest_products_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1789, 'widget_cwp_top_products_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1790, 'widget_wppr_top_reviews_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1791, 'wp_product_review_install', '1621675099', 'yes'),
(1793, '_transient_timeout_wp_product_review_all_languages', '1622279901', 'no'),
(1796, '_transient_wp_product_review_all_languages', 'a:1:{s:12:\"translations\";a:6:{i:0;a:7:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:6:\"3.7.11\";s:7:\"updated\";s:19:\"2019-11-18 09:57:36\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/translation/plugin/wp-product-review/3.7.11/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:1;a:7:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:6:\"3.7.11\";s:7:\"updated\";s:19:\"2019-11-18 09:54:51\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/translation/plugin/wp-product-review/3.7.11/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:2;a:7:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:6:\"3.7.11\";s:7:\"updated\";s:19:\"2019-11-18 09:57:50\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/translation/plugin/wp-product-review/3.7.11/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:3;a:7:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:6:\"3.7.11\";s:7:\"updated\";s:19:\"2018-01-25 10:56:12\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/translation/plugin/wp-product-review/3.7.11/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}}i:4;a:7:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:6:\"3.7.11\";s:7:\"updated\";s:19:\"2021-02-06 08:18:40\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/translation/plugin/wp-product-review/3.7.11/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}}i:5;a:7:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:6:\"3.7.11\";s:7:\"updated\";s:19:\"2017-04-04 14:03:44\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/translation/plugin/wp-product-review/3.7.11/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}}}}', 'no'),
(1798, 'cwppos_options', 'a:32:{s:21:\"cwppos_show_reviewbox\";s:3:\"yes\";s:22:\"cwppos_show_userreview\";s:2:\"no\";s:23:\"wppr_use_5_rating_scale\";s:2:\"10\";s:19:\"wppr_comment_rating\";s:6:\"slider\";s:22:\"cwppos_infl_userreview\";s:1:\"0\";s:16:\"cwppos_option_nr\";s:1:\"5\";s:18:\"cwppos_widget_size\";s:0:\"\";s:14:\"cwppos_lighbox\";s:2:\"no\";s:17:\"wppr_rich_snippet\";s:3:\"yes\";s:8:\"wppr_cpt\";s:2:\"no\";s:8:\"wppr_amp\";s:3:\"yes\";s:21:\"cwppos_rating_default\";s:7:\"#E1E2E0\";s:27:\"cwppos_rating_chart_default\";s:7:\"#ebebeb\";s:18:\"cwppos_rating_weak\";s:7:\"#FF7F66\";s:20:\"cwppos_rating_notbad\";s:7:\"#FFCE55\";s:18:\"cwppos_rating_good\";s:7:\"#50C1E9\";s:23:\"cwppos_rating_very_good\";s:7:\"#8DC153\";s:17:\"cwppos_font_color\";s:7:\"#3D3D3D\";s:17:\"cwppos_pros_color\";s:7:\"#8DC153\";s:17:\"cwppos_cons_color\";s:7:\"#C15353\";s:16:\"cwppos_pros_text\";s:4:\"Pros\";s:16:\"cwppos_cons_text\";s:4:\"Cons\";s:24:\"cwppos_reviewboxbd_color\";s:7:\"#3BAEDA\";s:24:\"cwppos_reviewboxbd_width\";s:1:\"5\";s:16:\"cwppos_show_icon\";s:3:\"yes\";s:21:\"cwppos_buttonbd_color\";s:7:\"#3BAEDA\";s:21:\"cwppos_buttonbh_color\";s:7:\"#3BAEDA\";s:22:\"cwppos_buttonbkd_color\";s:7:\"#ffffff\";s:22:\"cwppos_buttonbkh_color\";s:7:\"#3BAEDA\";s:23:\"cwppos_buttontxtd_color\";s:7:\"#3BAEDA\";s:23:\"cwppos_buttontxth_color\";s:7:\"#FFFFFF\";s:19:\"wppr_nonce_settings\";s:10:\"11a271f065\";}', 'yes'),
(1872, '_transient_timeout_wc_related_49', '1621770922', 'no'),
(1873, '_transient_wc_related_49', 'a:1:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=49\";a:1:{i:0;s:2:\"55\";}}', 'no'),
(1884, '_transient_timeout_wc_product_children_13', '1624276754', 'no'),
(1885, '_transient_wc_product_children_13', 'a:2:{s:3:\"all\";a:9:{i:0;i:14;i:1;i:15;i:2;i:16;i:3;i:17;i:4;i:18;i:5;i:19;i:6;i:20;i:7;i:21;i:8;i:22;}s:7:\"visible\";a:9:{i:0;i:14;i:1;i:15;i:2;i:16;i:3;i:17;i:4;i:18;i:5;i:19;i:6;i:20;i:7;i:21;i:8;i:22;}}', 'no'),
(1886, '_transient_timeout_wc_var_prices_13', '1624277861', 'no'),
(1887, '_transient_wc_var_prices_13', '{\"version\":\"1621685854\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"14\":\"20\",\"15\":\"15\",\"16\":\"11\",\"17\":\"20\",\"18\":\"13\",\"19\":\"11\",\"20\":\"20\",\"21\":\"15\",\"22\":\"11\"},\"regular_price\":{\"14\":\"20\",\"15\":\"15\",\"16\":\"11\",\"17\":\"20\",\"18\":\"15\",\"19\":\"11\",\"20\":\"20\",\"21\":\"15\",\"22\":\"11\"},\"sale_price\":{\"14\":\"20\",\"15\":\"15\",\"16\":\"11\",\"17\":\"20\",\"18\":\"13\",\"19\":\"11\",\"20\":\"20\",\"21\":\"15\",\"22\":\"11\"}}}', 'no'),
(1888, '_transient_timeout_wc_child_has_weight_13', '1624276756', 'no'),
(1889, '_transient_wc_child_has_weight_13', '0', 'no'),
(1890, '_transient_timeout_wc_child_has_dimensions_13', '1624276757', 'no'),
(1891, '_transient_wc_child_has_dimensions_13', '0', 'no'),
(1892, '_transient_timeout_wc_related_13', '1621771157', 'no'),
(1893, '_transient_wc_related_13', 'a:1:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=13\";a:1:{i:0;s:2:\"65\";}}', 'no'),
(1912, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:6;s:3:\"all\";i:6;s:8:\"approved\";s:1:\"6\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1913, '_transient_timeout_wc_term_counts', '1624277861', 'no'),
(1914, '_transient_wc_term_counts', 'a:3:{i:25;s:1:\"2\";i:17;s:1:\"2\";i:15;s:1:\"2\";}', 'no'),
(1915, '_transient_timeout_wc_related_59', '1621772255', 'no'),
(1916, '_transient_wc_related_59', 'a:1:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=59\";a:1:{i:0;s:2:\"61\";}}', 'no'),
(1919, '_transient_timeout_wp_product_review_3711versions', '1622118308', 'no'),
(1920, '_transient_wp_product_review_3711versions', 'a:64:{i:0;a:2:{s:7:\"version\";s:3:\"1.1\";s:3:\"url\";s:64:\"https://downloads.wordpress.org/plugin/wp-product-review.1.1.zip\";}i:1;a:2:{s:7:\"version\";s:5:\"2.2.4\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.2.4.zip\";}i:2;a:2:{s:7:\"version\";s:5:\"2.2.7\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.2.7.zip\";}i:3;a:2:{s:7:\"version\";s:5:\"2.4.7\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.4.7.zip\";}i:4;a:2:{s:7:\"version\";s:5:\"2.6.9\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.6.9.zip\";}i:5;a:2:{s:7:\"version\";s:5:\"2.7.2\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.7.2.zip\";}i:6;a:2:{s:7:\"version\";s:5:\"2.8.0\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.8.0.zip\";}i:7;a:2:{s:7:\"version\";s:5:\"2.8.1\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.8.1.zip\";}i:8;a:2:{s:7:\"version\";s:5:\"2.8.7\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.8.7.zip\";}i:9;a:2:{s:7:\"version\";s:5:\"2.9.0\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.9.0.zip\";}i:10;a:2:{s:7:\"version\";s:5:\"2.9.1\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.9.1.zip\";}i:11;a:2:{s:7:\"version\";s:5:\"2.9.2\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.9.2.zip\";}i:12;a:2:{s:7:\"version\";s:5:\"2.9.3\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.9.3.zip\";}i:13;a:2:{s:7:\"version\";s:5:\"2.9.5\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.9.5.zip\";}i:14;a:2:{s:7:\"version\";s:5:\"2.9.6\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.9.6.zip\";}i:15;a:2:{s:7:\"version\";s:5:\"2.9.7\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.9.7.zip\";}i:16;a:2:{s:7:\"version\";s:5:\"2.9.8\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.2.9.8.zip\";}i:17;a:2:{s:7:\"version\";s:5:\"3.0.0\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.0.0.zip\";}i:18;a:2:{s:7:\"version\";s:5:\"3.0.1\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.0.1.zip\";}i:19;a:2:{s:7:\"version\";s:6:\"3.0.10\";s:3:\"url\";s:67:\"https://downloads.wordpress.org/plugin/wp-product-review.3.0.10.zip\";}i:20;a:2:{s:7:\"version\";s:6:\"3.0.11\";s:3:\"url\";s:67:\"https://downloads.wordpress.org/plugin/wp-product-review.3.0.11.zip\";}i:21;a:2:{s:7:\"version\";s:6:\"3.0.12\";s:3:\"url\";s:67:\"https://downloads.wordpress.org/plugin/wp-product-review.3.0.12.zip\";}i:22;a:2:{s:7:\"version\";s:5:\"3.0.2\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.0.2.zip\";}i:23;a:2:{s:7:\"version\";s:5:\"3.0.3\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.0.3.zip\";}i:24;a:2:{s:7:\"version\";s:5:\"3.0.4\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.0.4.zip\";}i:25;a:2:{s:7:\"version\";s:5:\"3.0.5\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.0.5.zip\";}i:26;a:2:{s:7:\"version\";s:5:\"3.0.6\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.0.6.zip\";}i:27;a:2:{s:7:\"version\";s:5:\"3.0.7\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.0.7.zip\";}i:28;a:2:{s:7:\"version\";s:5:\"3.0.8\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.0.8.zip\";}i:29;a:2:{s:7:\"version\";s:5:\"3.0.9\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.0.9.zip\";}i:30;a:2:{s:7:\"version\";s:5:\"3.1.0\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.1.0.zip\";}i:31;a:2:{s:7:\"version\";s:5:\"3.2.0\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.2.0.zip\";}i:32;a:2:{s:7:\"version\";s:5:\"3.2.1\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.2.1.zip\";}i:33;a:2:{s:7:\"version\";s:5:\"3.3.0\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.3.0.zip\";}i:34;a:2:{s:7:\"version\";s:5:\"3.3.1\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.3.1.zip\";}i:35;a:2:{s:7:\"version\";s:5:\"3.3.2\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.3.2.zip\";}i:36;a:2:{s:7:\"version\";s:5:\"3.4.0\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.4.0.zip\";}i:37;a:2:{s:7:\"version\";s:5:\"3.4.1\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.4.1.zip\";}i:38;a:2:{s:7:\"version\";s:6:\"3.4.10\";s:3:\"url\";s:67:\"https://downloads.wordpress.org/plugin/wp-product-review.3.4.10.zip\";}i:39;a:2:{s:7:\"version\";s:5:\"3.4.2\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.4.2.zip\";}i:40;a:2:{s:7:\"version\";s:5:\"3.4.3\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.4.3.zip\";}i:41;a:2:{s:7:\"version\";s:5:\"3.4.4\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.4.4.zip\";}i:42;a:2:{s:7:\"version\";s:5:\"3.4.5\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.4.5.zip\";}i:43;a:2:{s:7:\"version\";s:5:\"3.4.6\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.4.6.zip\";}i:44;a:2:{s:7:\"version\";s:5:\"3.4.7\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.4.7.zip\";}i:45;a:2:{s:7:\"version\";s:5:\"3.4.8\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.4.8.zip\";}i:46;a:2:{s:7:\"version\";s:5:\"3.4.9\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.4.9.zip\";}i:47;a:2:{s:7:\"version\";s:5:\"3.5.0\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.5.0.zip\";}i:48;a:2:{s:7:\"version\";s:5:\"3.5.1\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.5.1.zip\";}i:49;a:2:{s:7:\"version\";s:5:\"3.5.2\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.5.2.zip\";}i:50;a:2:{s:7:\"version\";s:5:\"3.6.0\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.6.0.zip\";}i:51;a:2:{s:7:\"version\";s:5:\"3.6.1\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.6.1.zip\";}i:52;a:2:{s:7:\"version\";s:5:\"3.7.0\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.7.0.zip\";}i:53;a:2:{s:7:\"version\";s:5:\"3.7.1\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.7.1.zip\";}i:54;a:2:{s:7:\"version\";s:6:\"3.7.10\";s:3:\"url\";s:67:\"https://downloads.wordpress.org/plugin/wp-product-review.3.7.10.zip\";}i:55;a:2:{s:7:\"version\";s:6:\"3.7.11\";s:3:\"url\";s:67:\"https://downloads.wordpress.org/plugin/wp-product-review.3.7.11.zip\";}i:56;a:2:{s:7:\"version\";s:5:\"3.7.2\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.7.2.zip\";}i:57;a:2:{s:7:\"version\";s:5:\"3.7.3\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.7.3.zip\";}i:58;a:2:{s:7:\"version\";s:5:\"3.7.4\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.7.4.zip\";}i:59;a:2:{s:7:\"version\";s:5:\"3.7.5\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.7.5.zip\";}i:60;a:2:{s:7:\"version\";s:5:\"3.7.6\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.7.6.zip\";}i:61;a:2:{s:7:\"version\";s:5:\"3.7.7\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.7.7.zip\";}i:62;a:2:{s:7:\"version\";s:5:\"3.7.8\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.7.8.zip\";}i:63;a:2:{s:7:\"version\";s:5:\"3.7.9\";s:3:\"url\";s:66:\"https://downloads.wordpress.org/plugin/wp-product-review.3.7.9.zip\";}}', 'no'),
(1922, '_transient_timeout__woocommerce_helper_subscriptions', '1621687237', 'no'),
(1923, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1924, '_site_transient_timeout_theme_roots', '1621688137', 'no'),
(1925, '_site_transient_theme_roots', 'a:5:{s:6:\"myshop\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:37:\"underscore-wordpress-with-gulp-master\";s:7:\"/themes\";}', 'no'),
(1926, '_site_transient_t15s-registry-plugins', 'O:8:\"stdClass\":2:{s:12:\"polylang-pro\";a:1:{s:12:\"translations\";a:16:{i:0;a:7:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-02-25T12:04:52+00:00\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:81:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-ar.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ar\";i:1;s:3:\"ara\";}}i:1;a:7:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-03-01T19:24:02+00:00\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-da_DK.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"da\";i:1;s:3:\"dan\";}}i:2;a:7:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-02-24T18:12:19+00:00\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-nl_NL.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"nl\";i:1;s:3:\"nld\";}}i:3;a:7:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-02-24T18:17:45+00:00\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-nl_BE.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"nl\";i:1;s:3:\"nld\";}}i:4;a:7:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2020-11-25T11:52:47+00:00\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-en_GB.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"en\";i:1;s:3:\"eng\";i:2;s:3:\"eng\";}}i:5;a:7:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-02-24T18:01:04+00:00\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:81:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-fi.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"fi\";i:1;s:3:\"fin\";}}i:6;a:7:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-03-01T17:39:04+00:00\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-fr_FR.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"fr\";}}i:7;a:7:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-02-28T21:53:03+00:00\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-de_DE.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"de\";}}i:8;a:7:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-02-25T19:26:12+00:00\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-he_IL.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"he\";}}i:9;a:7:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-02-28T17:31:57+00:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-it_IT.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"it\";i:1;s:3:\"ita\";}}i:10;a:7:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-03-01T04:16:58+00:00\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:81:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-ja.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"ja\";}}i:11;a:7:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-03-03T15:18:33+00:00\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-pl_PL.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"pl\";i:1;s:3:\"pol\";}}i:12;a:7:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-03-04T15:41:03+00:00\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-pt_PT.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"pt\";}}i:13;a:7:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-02-25T23:51:59+00:00\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-es_ES.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"es\";i:1;s:3:\"spa\";i:2;s:3:\"spa\";}}i:14;a:7:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-02-24T18:02:32+00:00\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:84:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-sv_SE.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"sv\";i:1;s:3:\"swe\";}}i:15;a:7:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:9:\"3.0-beta1\";s:7:\"updated\";s:25:\"2021-02-25T11:57:54+00:00\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:81:\"https://packages.translationspress.com/wp-syntex/polylang-pro/polylang-pro-uk.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"uk\";i:1;s:3:\"ukr\";}}}}s:13:\"_last_checked\";i:1621686346;}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 10, '_wp_attached_file', '2021/05/vneck-tee-2.jpg'),
(6, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2021/05/vneck-tee-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 10, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
(8, 11, '_wp_attached_file', '2021/05/vnech-tee-green-1.jpg'),
(9, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:29:\"2021/05/vnech-tee-green-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 11, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
(11, 12, '_wp_attached_file', '2021/05/vnech-tee-blue-1.jpg'),
(12, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2021/05/vnech-tee-blue-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 12, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
(14, 13, 'total_sales', '0'),
(15, 13, '_tax_status', 'taxable'),
(16, 13, '_tax_class', ''),
(17, 13, '_manage_stock', 'no'),
(18, 13, '_backorders', 'no'),
(19, 13, '_sold_individually', 'no'),
(20, 13, '_virtual', 'no'),
(21, 13, '_downloadable', 'no'),
(22, 13, '_product_image_gallery', '11,12'),
(23, 13, '_download_limit', '0'),
(24, 13, '_download_expiry', '0'),
(25, 13, '_thumbnail_id', '10'),
(27, 13, '_stock_status', 'instock'),
(28, 13, '_wc_average_rating', '4.00'),
(29, 13, '_wc_review_count', '2'),
(30, 13, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(31, 13, '_product_version', '5.3.0'),
(32, 13, '_wpcom_is_markdown', '1'),
(33, 13, '_edit_lock', '1621516592:1'),
(34, 14, '_variation_description', ''),
(35, 14, 'total_sales', '0'),
(36, 14, '_tax_status', 'taxable'),
(37, 14, '_tax_class', 'parent'),
(38, 14, '_manage_stock', 'no'),
(39, 14, '_backorders', 'no'),
(40, 14, '_sold_individually', 'no'),
(41, 14, '_virtual', 'no'),
(42, 14, '_downloadable', 'no'),
(43, 14, '_download_limit', '-1'),
(44, 14, '_download_expiry', '-1'),
(46, 14, '_stock_status', 'instock'),
(47, 14, '_wc_average_rating', '0'),
(48, 14, '_wc_review_count', '0'),
(49, 14, 'attribute_pa_size', 'large'),
(50, 14, 'attribute_pa_color', 'blue'),
(51, 14, '_product_version', '5.3.0'),
(52, 15, '_variation_description', ''),
(53, 15, 'total_sales', '0'),
(54, 15, '_tax_status', 'taxable'),
(55, 15, '_tax_class', 'parent'),
(56, 15, '_manage_stock', 'no'),
(57, 15, '_backorders', 'no'),
(58, 15, '_sold_individually', 'no'),
(59, 15, '_virtual', 'no'),
(60, 15, '_downloadable', 'no'),
(61, 15, '_download_limit', '-1'),
(62, 15, '_download_expiry', '-1'),
(64, 15, '_stock_status', 'instock'),
(65, 15, '_wc_average_rating', '0'),
(66, 15, '_wc_review_count', '0'),
(67, 15, 'attribute_pa_size', 'medium'),
(68, 15, 'attribute_pa_color', 'blue'),
(69, 15, '_product_version', '5.3.0'),
(70, 16, '_variation_description', ''),
(71, 16, 'total_sales', '0'),
(72, 16, '_tax_status', 'taxable'),
(73, 16, '_tax_class', 'parent'),
(74, 16, '_manage_stock', 'no'),
(75, 16, '_backorders', 'no'),
(76, 16, '_sold_individually', 'no'),
(77, 16, '_virtual', 'no'),
(78, 16, '_downloadable', 'no'),
(79, 16, '_download_limit', '-1'),
(80, 16, '_download_expiry', '-1'),
(82, 16, '_stock_status', 'instock'),
(83, 16, '_wc_average_rating', '0'),
(84, 16, '_wc_review_count', '0'),
(85, 16, 'attribute_pa_size', 'small'),
(86, 16, 'attribute_pa_color', 'blue'),
(87, 16, '_product_version', '5.3.0'),
(88, 17, '_variation_description', ''),
(89, 17, 'total_sales', '0'),
(90, 17, '_tax_status', 'taxable'),
(91, 17, '_tax_class', 'parent'),
(92, 17, '_manage_stock', 'no'),
(93, 17, '_backorders', 'no'),
(94, 17, '_sold_individually', 'no'),
(95, 17, '_virtual', 'no'),
(96, 17, '_downloadable', 'no'),
(97, 17, '_download_limit', '-1'),
(98, 17, '_download_expiry', '-1'),
(100, 17, '_stock_status', 'instock'),
(101, 17, '_wc_average_rating', '0'),
(102, 17, '_wc_review_count', '0'),
(103, 17, 'attribute_pa_size', 'large'),
(104, 17, 'attribute_pa_color', 'green'),
(105, 17, '_product_version', '5.3.0'),
(106, 18, '_variation_description', ''),
(107, 18, 'total_sales', '0'),
(108, 18, '_tax_status', 'taxable'),
(109, 18, '_tax_class', 'parent'),
(110, 18, '_manage_stock', 'no'),
(111, 18, '_backorders', 'no'),
(112, 18, '_sold_individually', 'no'),
(113, 18, '_virtual', 'no'),
(114, 18, '_downloadable', 'no'),
(115, 18, '_download_limit', '-1'),
(116, 18, '_download_expiry', '-1'),
(118, 18, '_stock_status', 'instock'),
(119, 18, '_wc_average_rating', '0'),
(120, 18, '_wc_review_count', '0'),
(121, 18, 'attribute_pa_size', 'medium'),
(122, 18, 'attribute_pa_color', 'green'),
(123, 18, '_product_version', '5.3.0'),
(124, 19, '_variation_description', ''),
(125, 19, 'total_sales', '0'),
(126, 19, '_tax_status', 'taxable'),
(127, 19, '_tax_class', 'parent'),
(128, 19, '_manage_stock', 'no'),
(129, 19, '_backorders', 'no'),
(130, 19, '_sold_individually', 'no'),
(131, 19, '_virtual', 'no'),
(132, 19, '_downloadable', 'no'),
(133, 19, '_download_limit', '-1'),
(134, 19, '_download_expiry', '-1'),
(135, 19, '_stock', NULL),
(136, 19, '_stock_status', 'instock'),
(137, 19, '_wc_average_rating', '0'),
(138, 19, '_wc_review_count', '0'),
(139, 19, 'attribute_pa_size', 'small'),
(140, 19, 'attribute_pa_color', 'green'),
(141, 19, '_product_version', '5.3.0'),
(142, 20, '_variation_description', ''),
(143, 20, 'total_sales', '0'),
(144, 20, '_tax_status', 'taxable'),
(145, 20, '_tax_class', 'parent'),
(146, 20, '_manage_stock', 'no'),
(147, 20, '_backorders', 'no'),
(148, 20, '_sold_individually', 'no'),
(149, 20, '_virtual', 'no'),
(150, 20, '_downloadable', 'no'),
(151, 20, '_download_limit', '-1'),
(152, 20, '_download_expiry', '-1'),
(153, 20, '_stock', NULL),
(154, 20, '_stock_status', 'instock'),
(155, 20, '_wc_average_rating', '0'),
(156, 20, '_wc_review_count', '0'),
(157, 20, 'attribute_pa_size', 'large'),
(158, 20, 'attribute_pa_color', 'red'),
(159, 20, '_product_version', '5.3.0'),
(160, 21, '_variation_description', ''),
(161, 21, 'total_sales', '0'),
(162, 21, '_tax_status', 'taxable'),
(163, 21, '_tax_class', 'parent'),
(164, 21, '_manage_stock', 'no'),
(165, 21, '_backorders', 'no'),
(166, 21, '_sold_individually', 'no'),
(167, 21, '_virtual', 'no'),
(168, 21, '_downloadable', 'no'),
(169, 21, '_download_limit', '-1'),
(170, 21, '_download_expiry', '-1'),
(171, 21, '_stock', NULL),
(172, 21, '_stock_status', 'instock'),
(173, 21, '_wc_average_rating', '0'),
(174, 21, '_wc_review_count', '0'),
(175, 21, 'attribute_pa_size', 'medium'),
(176, 21, 'attribute_pa_color', 'red'),
(177, 21, '_product_version', '5.3.0'),
(178, 22, '_variation_description', ''),
(179, 22, 'total_sales', '0'),
(180, 22, '_tax_status', 'taxable'),
(181, 22, '_tax_class', 'parent'),
(182, 22, '_manage_stock', 'no'),
(183, 22, '_backorders', 'no'),
(184, 22, '_sold_individually', 'no'),
(185, 22, '_virtual', 'no'),
(186, 22, '_downloadable', 'no'),
(187, 22, '_download_limit', '-1'),
(188, 22, '_download_expiry', '-1'),
(189, 22, '_stock', NULL),
(190, 22, '_stock_status', 'instock'),
(191, 22, '_wc_average_rating', '0'),
(192, 22, '_wc_review_count', '0'),
(193, 22, 'attribute_pa_size', 'small'),
(194, 22, 'attribute_pa_color', 'red'),
(195, 22, '_product_version', '5.3.0'),
(196, 14, '_regular_price', '20'),
(197, 14, '_thumbnail_id', '0'),
(198, 14, '_price', '20'),
(199, 15, '_regular_price', '15'),
(200, 15, '_thumbnail_id', '0'),
(201, 15, '_price', '15'),
(202, 16, '_regular_price', '11'),
(203, 16, '_thumbnail_id', '0'),
(204, 16, '_price', '11'),
(205, 17, '_regular_price', '20'),
(206, 17, '_thumbnail_id', '0'),
(207, 17, '_price', '20'),
(208, 18, '_regular_price', '15'),
(209, 18, '_sale_price', '12.5'),
(210, 18, '_thumbnail_id', '0'),
(211, 18, '_price', '12.5'),
(212, 19, '_regular_price', '11'),
(213, 19, '_thumbnail_id', '0'),
(214, 19, '_price', '11'),
(215, 20, '_regular_price', '20'),
(216, 20, '_thumbnail_id', '0'),
(217, 20, '_price', '20'),
(218, 21, '_regular_price', '15'),
(219, 21, '_thumbnail_id', '0'),
(220, 21, '_price', '15'),
(221, 22, '_regular_price', '11'),
(222, 22, '_thumbnail_id', '0'),
(223, 22, '_price', '11'),
(224, 13, '_price', '11'),
(225, 13, '_price', '12.5'),
(226, 13, '_price', '15'),
(227, 13, '_price', '20'),
(228, 13, '_edit_last', '1'),
(231, 23, '_edit_last', '1'),
(232, 23, '_edit_lock', '1621526286:1'),
(233, 25, '_edit_lock', '1621522597:1'),
(234, 26, '_edit_lock', '1621625514:1'),
(235, 26, '_wp_page_template', 'home-template.php'),
(236, 26, '_edit_last', '1'),
(237, 26, 'slider', 'a:5:{i:0;s:2:\"13\";i:1;s:2:\"49\";i:2;s:2:\"59\";i:3;s:2:\"61\";i:4;s:2:\"55\";}'),
(238, 26, '_slider', 'field_60a6759b570f6'),
(239, 28, 'slider', 'a:1:{i:0;s:2:\"13\";}'),
(240, 28, '_slider', 'field_60a6759b570f6'),
(241, 29, '_edit_lock', '1621525418:1'),
(242, 30, '_wp_attached_file', '2021/05/radevs-logo.png'),
(243, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:68;s:4:\"file\";s:23:\"2021/05/radevs-logo.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"radevs-logo-100x68.png\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"radevs-logo-100x68.png\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(244, 29, '_wp_trash_meta_status', 'publish'),
(245, 29, '_wp_trash_meta_time', '1621525425'),
(249, 32, '_edit_lock', '1621525538:1'),
(250, 32, '_wp_trash_meta_status', 'publish'),
(251, 32, '_wp_trash_meta_time', '1621525585'),
(252, 33, '_menu_item_type', 'post_type'),
(253, 33, '_menu_item_menu_item_parent', '0'),
(254, 33, '_menu_item_object_id', '26'),
(255, 33, '_menu_item_object', 'page'),
(256, 33, '_menu_item_target', ''),
(257, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(258, 33, '_menu_item_xfn', ''),
(259, 33, '_menu_item_url', ''),
(260, 33, '_menu_item_orphaned', '1621526437'),
(261, 34, '_menu_item_type', 'post_type'),
(262, 34, '_menu_item_menu_item_parent', '0'),
(263, 34, '_menu_item_object_id', '6'),
(264, 34, '_menu_item_object', 'page'),
(265, 34, '_menu_item_target', ''),
(266, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(267, 34, '_menu_item_xfn', ''),
(268, 34, '_menu_item_url', ''),
(269, 34, '_menu_item_orphaned', '1621526439'),
(270, 35, '_menu_item_type', 'post_type'),
(271, 35, '_menu_item_menu_item_parent', '0'),
(272, 35, '_menu_item_object_id', '7'),
(273, 35, '_menu_item_object', 'page'),
(274, 35, '_menu_item_target', ''),
(275, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(276, 35, '_menu_item_xfn', ''),
(277, 35, '_menu_item_url', ''),
(278, 35, '_menu_item_orphaned', '1621526440'),
(279, 36, '_menu_item_type', 'post_type'),
(280, 36, '_menu_item_menu_item_parent', '0'),
(281, 36, '_menu_item_object_id', '8'),
(282, 36, '_menu_item_object', 'page'),
(283, 36, '_menu_item_target', ''),
(284, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(285, 36, '_menu_item_xfn', ''),
(286, 36, '_menu_item_url', ''),
(287, 36, '_menu_item_orphaned', '1621526441'),
(288, 37, '_menu_item_type', 'post_type'),
(289, 37, '_menu_item_menu_item_parent', '0'),
(290, 37, '_menu_item_object_id', '9'),
(291, 37, '_menu_item_object', 'page'),
(292, 37, '_menu_item_target', ''),
(293, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(294, 37, '_menu_item_xfn', ''),
(295, 37, '_menu_item_url', ''),
(296, 37, '_menu_item_orphaned', '1621526442'),
(297, 38, '_menu_item_type', 'post_type'),
(298, 38, '_menu_item_menu_item_parent', '0'),
(299, 38, '_menu_item_object_id', '2'),
(300, 38, '_menu_item_object', 'page'),
(301, 38, '_menu_item_target', ''),
(302, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(303, 38, '_menu_item_xfn', ''),
(304, 38, '_menu_item_url', ''),
(305, 38, '_menu_item_orphaned', '1621526444'),
(306, 39, '_menu_item_type', 'custom'),
(307, 39, '_menu_item_menu_item_parent', '0'),
(308, 39, '_menu_item_object_id', '39'),
(309, 39, '_menu_item_object', 'custom'),
(310, 39, '_menu_item_target', ''),
(311, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(312, 39, '_menu_item_xfn', ''),
(313, 39, '_menu_item_url', '#'),
(315, 40, '_menu_item_type', 'custom'),
(316, 40, '_menu_item_menu_item_parent', '0'),
(317, 40, '_menu_item_object_id', '40'),
(318, 40, '_menu_item_object', 'custom'),
(319, 40, '_menu_item_target', ''),
(320, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(321, 40, '_menu_item_xfn', ''),
(322, 40, '_menu_item_url', '#'),
(324, 41, '_menu_item_type', 'custom'),
(325, 41, '_menu_item_menu_item_parent', '0'),
(326, 41, '_menu_item_object_id', '41'),
(327, 41, '_menu_item_object', 'custom'),
(328, 41, '_menu_item_target', ''),
(329, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(330, 41, '_menu_item_xfn', ''),
(331, 41, '_menu_item_url', '#'),
(333, 42, '_menu_item_type', 'custom'),
(334, 42, '_menu_item_menu_item_parent', '0'),
(335, 42, '_menu_item_object_id', '42'),
(336, 42, '_menu_item_object', 'custom'),
(337, 42, '_menu_item_target', ''),
(338, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(339, 42, '_menu_item_xfn', ''),
(340, 42, '_menu_item_url', '#'),
(343, 44, '_menu_item_type', 'custom'),
(346, 44, '_menu_item_menu_item_parent', '0'),
(348, 44, '_menu_item_object_id', '44'),
(350, 44, '_menu_item_object', 'custom'),
(352, 44, '_menu_item_target', ''),
(354, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(356, 44, '_menu_item_xfn', ''),
(358, 44, '_menu_item_url', '#'),
(360, 39, '_wp_old_date', '2021-05-20'),
(361, 40, '_wp_old_date', '2021-05-20'),
(362, 41, '_wp_old_date', '2021-05-20'),
(363, 42, '_wp_old_date', '2021-05-20'),
(364, 44, '_wp_old_date', '2021-05-20'),
(365, 45, '_wp_attached_file', '2021/05/yith-woocommerce-advanced-reviews-premium-1.6.21.zip'),
(367, 45, '_wp_attachment_context', 'upgrader'),
(370, 13, '_wc_rating_count', 'a:1:{i:4;i:2;}'),
(371, 48, '_ywar_rating', '4'),
(372, 48, '_ywar_product_id', '13'),
(373, 48, '_ywar_comment_id', '2'),
(374, 48, '_ywar_thumb_ids', 'a:0:{}'),
(375, 48, '_ywar_upvotes_count', '0'),
(376, 48, '_ywar_downvotes_count', '0'),
(377, 48, '_ywar_votes', 'a:0:{}'),
(378, 48, '_ywar_inappropriate_list', 'a:0:{}'),
(379, 48, '_ywar_inappropriate_count', '0'),
(380, 48, '_ywar_featured', '0'),
(381, 48, '_ywar_stop_reply', '0'),
(382, 48, '_ywar_review_user_id', '1'),
(383, 48, '_ywar_review_author', 'vladymyrlem'),
(384, 48, '_ywar_review_author_email', 'vovangud@gmail.com'),
(385, 48, '_ywar_review_author_url', 'http://testshop'),
(386, 48, '_ywar_review_author_IP', '127.0.0.1'),
(387, 48, '_ywar_approved', '1'),
(388, 49, '_edit_last', '1'),
(389, 49, '_edit_lock', '1621616924:1'),
(390, 49, '_regular_price', '7.99'),
(391, 49, 'total_sales', '0'),
(392, 49, '_tax_status', 'taxable'),
(393, 49, '_tax_class', ''),
(394, 49, '_manage_stock', 'no'),
(395, 49, '_backorders', 'no'),
(396, 49, '_sold_individually', 'no'),
(397, 49, '_virtual', 'no'),
(398, 49, '_downloadable', 'no'),
(399, 49, '_download_limit', '-1'),
(400, 49, '_download_expiry', '-1'),
(401, 49, '_stock', NULL),
(402, 49, '_stock_status', 'instock'),
(403, 49, '_wc_average_rating', '4.00'),
(404, 49, '_wc_review_count', '2'),
(405, 49, '_product_version', '5.3.0'),
(406, 49, '_price', '7.99'),
(407, 51, '_wp_attached_file', '2021/05/halloween-banners.jpg'),
(408, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:174;s:6:\"height\";i:127;s:4:\"file\";s:29:\"2021/05/halloween-banners.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"halloween-banners-150x127.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"halloween-banners-150x127.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"halloween-banners-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"halloween-banners-150x127.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"halloween-banners-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(409, 52, '_wp_attached_file', '2021/05/party-banners.jpg'),
(410, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:174;s:6:\"height\";i:127;s:4:\"file\";s:25:\"2021/05/party-banners.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"party-banners-150x127.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"party-banners-150x127.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"party-banners-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"party-banners-150x127.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"party-banners-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(411, 53, '_wp_attached_file', '2021/05/sign-printing.jpg'),
(412, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:174;s:6:\"height\";i:126;s:4:\"file\";s:25:\"2021/05/sign-printing.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"sign-printing-150x126.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"sign-printing-150x126.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"sign-printing-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"sign-printing-150x126.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"sign-printing-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(413, 54, '_wp_attached_file', '2021/05/stickers.jpg'),
(414, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:174;s:6:\"height\";i:126;s:4:\"file\";s:20:\"2021/05/stickers.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"stickers-150x126.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"stickers-150x126.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"stickers-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"stickers-150x126.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"stickers-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(415, 49, '_thumbnail_id', '51'),
(416, 55, '_edit_last', '1'),
(417, 55, '_edit_lock', '1621617241:1'),
(418, 55, 'total_sales', '0'),
(419, 55, '_tax_status', 'taxable'),
(420, 55, '_tax_class', ''),
(421, 55, '_manage_stock', 'no'),
(422, 55, '_backorders', 'no'),
(423, 55, '_sold_individually', 'no'),
(424, 55, '_virtual', 'no'),
(425, 55, '_downloadable', 'no'),
(426, 55, '_download_limit', '-1'),
(427, 55, '_download_expiry', '-1'),
(428, 55, '_stock', NULL),
(429, 55, '_stock_status', 'instock'),
(430, 55, '_wc_average_rating', '0'),
(431, 55, '_wc_review_count', '0'),
(432, 55, '_product_attributes', 'a:1:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(433, 55, '_product_version', '5.3.0'),
(434, 56, '_variation_description', ''),
(435, 56, 'total_sales', '0'),
(436, 56, '_tax_status', 'taxable'),
(437, 56, '_tax_class', 'parent'),
(438, 56, '_manage_stock', 'no'),
(439, 56, '_backorders', 'no'),
(440, 56, '_sold_individually', 'no'),
(441, 56, '_virtual', 'no'),
(442, 56, '_downloadable', 'no'),
(443, 56, '_download_limit', '-1'),
(444, 56, '_download_expiry', '-1'),
(445, 56, '_stock', NULL),
(446, 56, '_stock_status', 'instock'),
(447, 56, '_wc_average_rating', '0'),
(448, 56, '_wc_review_count', '0'),
(449, 56, 'attribute_pa_size', 'large'),
(450, 56, '_product_version', '5.3.0'),
(451, 57, '_variation_description', ''),
(452, 57, 'total_sales', '0'),
(453, 57, '_tax_status', 'taxable'),
(454, 57, '_tax_class', 'parent'),
(455, 57, '_manage_stock', 'no'),
(456, 57, '_backorders', 'no'),
(457, 57, '_sold_individually', 'no'),
(458, 57, '_virtual', 'no'),
(459, 57, '_downloadable', 'no'),
(460, 57, '_download_limit', '-1'),
(461, 57, '_download_expiry', '-1'),
(462, 57, '_stock', NULL),
(463, 57, '_stock_status', 'instock'),
(464, 57, '_wc_average_rating', '0'),
(465, 57, '_wc_review_count', '0'),
(466, 57, 'attribute_pa_size', 'medium'),
(467, 57, '_product_version', '5.3.0'),
(468, 58, '_variation_description', ''),
(469, 58, 'total_sales', '0'),
(470, 58, '_tax_status', 'taxable'),
(471, 58, '_tax_class', 'parent'),
(472, 58, '_manage_stock', 'no'),
(473, 58, '_backorders', 'no'),
(474, 58, '_sold_individually', 'no'),
(475, 58, '_virtual', 'no'),
(476, 58, '_downloadable', 'no'),
(477, 58, '_download_limit', '-1'),
(478, 58, '_download_expiry', '-1'),
(479, 58, '_stock', NULL),
(480, 58, '_stock_status', 'instock'),
(481, 58, '_wc_average_rating', '0'),
(482, 58, '_wc_review_count', '0'),
(483, 58, 'attribute_pa_size', 'small'),
(484, 58, '_product_version', '5.3.0'),
(485, 56, '_regular_price', '13'),
(486, 56, '_thumbnail_id', '54'),
(487, 56, '_price', '13'),
(488, 57, '_regular_price', '9.99'),
(489, 57, '_thumbnail_id', '54'),
(490, 57, '_price', '9.99'),
(491, 58, '_regular_price', '7.99'),
(492, 58, '_thumbnail_id', '54'),
(493, 58, '_price', '7.99'),
(497, 55, '_thumbnail_id', '54'),
(501, 55, '_price', '7.99'),
(502, 55, '_price', '9.99'),
(503, 55, '_price', '13'),
(504, 59, '_edit_last', '1'),
(505, 59, '_edit_lock', '1621617452:1'),
(506, 59, '_thumbnail_id', '52'),
(507, 59, '_regular_price', '7.99'),
(508, 59, 'total_sales', '0'),
(509, 59, '_tax_status', 'taxable'),
(510, 59, '_tax_class', ''),
(511, 59, '_manage_stock', 'no'),
(512, 59, '_backorders', 'no'),
(513, 59, '_sold_individually', 'no'),
(514, 59, '_virtual', 'no'),
(515, 59, '_downloadable', 'no'),
(516, 59, '_download_limit', '-1'),
(517, 59, '_download_expiry', '-1'),
(518, 59, '_stock', NULL),
(519, 59, '_stock_status', 'instock'),
(520, 59, '_wc_average_rating', '2.00'),
(521, 59, '_wc_review_count', '1'),
(522, 59, '_product_version', '5.3.0'),
(523, 59, '_price', '7.99'),
(524, 61, '_edit_last', '1'),
(525, 61, '_edit_lock', '1621617624:1'),
(526, 61, 'total_sales', '0'),
(527, 61, '_tax_status', 'taxable'),
(528, 61, '_tax_class', ''),
(529, 61, '_manage_stock', 'no'),
(530, 61, '_backorders', 'no'),
(531, 61, '_sold_individually', 'no'),
(532, 61, '_virtual', 'no'),
(533, 61, '_downloadable', 'no'),
(534, 61, '_download_limit', '-1'),
(535, 61, '_download_expiry', '-1'),
(536, 61, '_stock', NULL),
(537, 61, '_stock_status', 'instock'),
(538, 61, '_wc_average_rating', '0'),
(539, 61, '_wc_review_count', '0'),
(540, 61, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(541, 61, '_product_version', '5.3.0'),
(542, 62, '_variation_description', ''),
(543, 62, 'total_sales', '0'),
(544, 62, '_tax_status', 'taxable'),
(545, 62, '_tax_class', 'parent'),
(546, 62, '_manage_stock', 'no'),
(547, 62, '_backorders', 'no'),
(548, 62, '_sold_individually', 'no'),
(549, 62, '_virtual', 'no'),
(550, 62, '_downloadable', 'no'),
(551, 62, '_download_limit', '-1'),
(552, 62, '_download_expiry', '-1'),
(553, 62, '_stock', NULL),
(554, 62, '_stock_status', 'instock'),
(555, 62, '_wc_average_rating', '0'),
(556, 62, '_wc_review_count', '0'),
(557, 62, 'attribute_pa_color', 'blue'),
(558, 62, '_product_version', '5.3.0'),
(559, 63, '_variation_description', ''),
(560, 63, 'total_sales', '0'),
(561, 63, '_tax_status', 'taxable'),
(562, 63, '_tax_class', 'parent'),
(563, 63, '_manage_stock', 'no'),
(564, 63, '_backorders', 'no'),
(565, 63, '_sold_individually', 'no'),
(566, 63, '_virtual', 'no'),
(567, 63, '_downloadable', 'no'),
(568, 63, '_download_limit', '-1'),
(569, 63, '_download_expiry', '-1'),
(570, 63, '_stock', NULL),
(571, 63, '_stock_status', 'instock'),
(572, 63, '_wc_average_rating', '0'),
(573, 63, '_wc_review_count', '0'),
(574, 63, 'attribute_pa_color', 'green'),
(575, 63, '_product_version', '5.3.0'),
(576, 64, '_variation_description', ''),
(577, 64, 'total_sales', '0'),
(578, 64, '_tax_status', 'taxable'),
(579, 64, '_tax_class', 'parent'),
(580, 64, '_manage_stock', 'no'),
(581, 64, '_backorders', 'no'),
(582, 64, '_sold_individually', 'no'),
(583, 64, '_virtual', 'no'),
(584, 64, '_downloadable', 'no'),
(585, 64, '_download_limit', '-1'),
(586, 64, '_download_expiry', '-1'),
(587, 64, '_stock', NULL),
(588, 64, '_stock_status', 'instock'),
(589, 64, '_wc_average_rating', '0'),
(590, 64, '_wc_review_count', '0'),
(591, 64, 'attribute_pa_color', 'red'),
(592, 64, '_product_version', '5.3.0'),
(593, 62, '_regular_price', '7.55'),
(594, 62, '_thumbnail_id', '0'),
(595, 62, '_price', '7.55'),
(596, 63, '_regular_price', '7.99'),
(597, 63, '_thumbnail_id', '0'),
(598, 63, '_price', '7.99'),
(599, 64, '_regular_price', '6.55'),
(600, 64, '_thumbnail_id', '0'),
(601, 64, '_price', '6.55'),
(605, 61, '_price', '6.55'),
(606, 61, '_price', '7.55'),
(607, 61, '_price', '7.99'),
(608, 61, '_thumbnail_id', '53'),
(609, 65, 'total_sales', '0'),
(610, 65, '_tax_status', 'taxable'),
(611, 65, '_tax_class', ''),
(612, 65, '_manage_stock', 'no'),
(613, 65, '_backorders', 'no'),
(614, 65, '_sold_individually', 'no'),
(615, 65, '_virtual', 'no'),
(616, 65, '_downloadable', 'no'),
(617, 65, '_product_image_gallery', '11,12'),
(618, 65, '_download_limit', '0'),
(619, 65, '_download_expiry', '0'),
(620, 65, '_thumbnail_id', '10'),
(621, 65, '_stock', NULL),
(622, 65, '_stock_status', 'instock'),
(623, 65, '_wc_average_rating', '0'),
(624, 65, '_wc_review_count', '0'),
(625, 65, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(626, 65, '_product_version', '5.3.0'),
(627, 65, '_wpcom_is_markdown', '1'),
(628, 66, '_variation_description', ''),
(629, 66, '_regular_price', '20'),
(630, 66, 'total_sales', '0'),
(631, 66, '_tax_status', 'taxable'),
(632, 66, '_tax_class', 'parent'),
(633, 66, '_manage_stock', 'no'),
(634, 66, '_backorders', 'no'),
(635, 66, '_sold_individually', 'no'),
(636, 66, '_virtual', 'no'),
(637, 66, '_downloadable', 'no'),
(638, 66, '_download_limit', '-1'),
(639, 66, '_download_expiry', '-1'),
(640, 66, '_thumbnail_id', '0'),
(641, 66, '_stock', NULL),
(642, 66, '_stock_status', 'instock'),
(643, 66, '_wc_average_rating', '0'),
(644, 66, '_wc_review_count', '0'),
(645, 66, 'attribute_pa_color', 'blue'),
(646, 66, 'attribute_pa_size', 'large'),
(647, 66, '_price', '20'),
(648, 66, '_product_version', '5.3.0'),
(649, 67, '_variation_description', ''),
(650, 67, '_regular_price', '15'),
(651, 67, 'total_sales', '0'),
(652, 67, '_tax_status', 'taxable'),
(653, 67, '_tax_class', 'parent'),
(654, 67, '_manage_stock', 'no'),
(655, 67, '_backorders', 'no'),
(656, 67, '_sold_individually', 'no'),
(657, 67, '_virtual', 'no'),
(658, 67, '_downloadable', 'no'),
(659, 67, '_download_limit', '-1'),
(660, 67, '_download_expiry', '-1'),
(661, 67, '_thumbnail_id', '0'),
(662, 67, '_stock', NULL),
(663, 67, '_stock_status', 'instock'),
(664, 67, '_wc_average_rating', '0'),
(665, 67, '_wc_review_count', '0'),
(666, 67, 'attribute_pa_color', 'blue'),
(667, 67, 'attribute_pa_size', 'medium'),
(668, 67, '_price', '15'),
(669, 67, '_product_version', '5.3.0'),
(670, 68, '_variation_description', ''),
(671, 68, '_regular_price', '11'),
(672, 68, 'total_sales', '0'),
(673, 68, '_tax_status', 'taxable'),
(674, 68, '_tax_class', 'parent'),
(675, 68, '_manage_stock', 'no'),
(676, 68, '_backorders', 'no'),
(677, 68, '_sold_individually', 'no'),
(678, 68, '_virtual', 'no'),
(679, 68, '_downloadable', 'no'),
(680, 68, '_download_limit', '-1'),
(681, 68, '_download_expiry', '-1'),
(682, 68, '_thumbnail_id', '0'),
(683, 68, '_stock', NULL),
(684, 68, '_stock_status', 'instock'),
(685, 68, '_wc_average_rating', '0'),
(686, 68, '_wc_review_count', '0'),
(687, 68, 'attribute_pa_color', 'blue'),
(688, 68, 'attribute_pa_size', 'small'),
(689, 68, '_price', '11'),
(690, 68, '_product_version', '5.3.0'),
(691, 69, '_variation_description', ''),
(692, 69, '_regular_price', '20'),
(693, 69, 'total_sales', '0'),
(694, 69, '_tax_status', 'taxable'),
(695, 69, '_tax_class', 'parent'),
(696, 69, '_manage_stock', 'no'),
(697, 69, '_backorders', 'no'),
(698, 69, '_sold_individually', 'no'),
(699, 69, '_virtual', 'no'),
(700, 69, '_downloadable', 'no'),
(701, 69, '_download_limit', '-1'),
(702, 69, '_download_expiry', '-1'),
(703, 69, '_thumbnail_id', '0'),
(704, 69, '_stock', NULL),
(705, 69, '_stock_status', 'instock'),
(706, 69, '_wc_average_rating', '0'),
(707, 69, '_wc_review_count', '0'),
(708, 69, 'attribute_pa_color', 'green'),
(709, 69, 'attribute_pa_size', 'large'),
(710, 69, '_price', '20'),
(711, 69, '_product_version', '5.3.0'),
(712, 70, '_variation_description', ''),
(713, 70, '_regular_price', '15'),
(714, 70, '_sale_price', '12.5'),
(715, 70, 'total_sales', '0'),
(716, 70, '_tax_status', 'taxable'),
(717, 70, '_tax_class', 'parent'),
(718, 70, '_manage_stock', 'no'),
(719, 70, '_backorders', 'no'),
(720, 70, '_sold_individually', 'no'),
(721, 70, '_virtual', 'no'),
(722, 70, '_downloadable', 'no'),
(723, 70, '_download_limit', '-1'),
(724, 70, '_download_expiry', '-1'),
(725, 70, '_thumbnail_id', '0'),
(726, 70, '_stock', NULL),
(727, 70, '_stock_status', 'instock'),
(728, 70, '_wc_average_rating', '0'),
(729, 70, '_wc_review_count', '0'),
(730, 70, 'attribute_pa_color', 'green'),
(731, 70, 'attribute_pa_size', 'medium'),
(732, 70, '_price', '12.5'),
(733, 70, '_product_version', '5.3.0'),
(734, 71, '_variation_description', ''),
(735, 71, '_regular_price', '11'),
(736, 71, 'total_sales', '0'),
(737, 71, '_tax_status', 'taxable'),
(738, 71, '_tax_class', 'parent'),
(739, 71, '_manage_stock', 'no'),
(740, 71, '_backorders', 'no'),
(741, 71, '_sold_individually', 'no'),
(742, 71, '_virtual', 'no'),
(743, 71, '_downloadable', 'no'),
(744, 71, '_download_limit', '-1'),
(745, 71, '_download_expiry', '-1'),
(746, 71, '_thumbnail_id', '0'),
(747, 71, '_stock', NULL),
(748, 71, '_stock_status', 'instock'),
(749, 71, '_wc_average_rating', '0'),
(750, 71, '_wc_review_count', '0'),
(751, 71, 'attribute_pa_color', 'green'),
(752, 71, 'attribute_pa_size', 'small'),
(753, 71, '_price', '11'),
(754, 71, '_product_version', '5.3.0'),
(755, 72, '_variation_description', ''),
(756, 72, '_regular_price', '20'),
(757, 72, 'total_sales', '0'),
(758, 72, '_tax_status', 'taxable'),
(759, 72, '_tax_class', 'parent'),
(760, 72, '_manage_stock', 'no'),
(761, 72, '_backorders', 'no'),
(762, 72, '_sold_individually', 'no'),
(763, 72, '_virtual', 'no'),
(764, 72, '_downloadable', 'no'),
(765, 72, '_download_limit', '-1'),
(766, 72, '_download_expiry', '-1'),
(767, 72, '_thumbnail_id', '0'),
(768, 72, '_stock', NULL),
(769, 72, '_stock_status', 'instock'),
(770, 72, '_wc_average_rating', '0'),
(771, 72, '_wc_review_count', '0'),
(772, 72, 'attribute_pa_color', 'red'),
(773, 72, 'attribute_pa_size', 'large'),
(774, 72, '_price', '20'),
(775, 72, '_product_version', '5.3.0'),
(776, 73, '_variation_description', ''),
(777, 73, '_regular_price', '15'),
(778, 73, 'total_sales', '0'),
(779, 73, '_tax_status', 'taxable'),
(780, 73, '_tax_class', 'parent'),
(781, 73, '_manage_stock', 'no'),
(782, 73, '_backorders', 'no'),
(783, 73, '_sold_individually', 'no'),
(784, 73, '_virtual', 'no'),
(785, 73, '_downloadable', 'no'),
(786, 73, '_download_limit', '-1'),
(787, 73, '_download_expiry', '-1'),
(788, 73, '_thumbnail_id', '0'),
(789, 73, '_stock', NULL),
(790, 73, '_stock_status', 'instock'),
(791, 73, '_wc_average_rating', '0'),
(792, 73, '_wc_review_count', '0'),
(793, 73, 'attribute_pa_color', 'red'),
(794, 73, 'attribute_pa_size', 'medium'),
(795, 73, '_price', '15'),
(796, 73, '_product_version', '5.3.0'),
(797, 74, '_variation_description', ''),
(798, 74, '_regular_price', '11'),
(799, 74, 'total_sales', '0'),
(800, 74, '_tax_status', 'taxable'),
(801, 74, '_tax_class', 'parent'),
(802, 74, '_manage_stock', 'no'),
(803, 74, '_backorders', 'no'),
(804, 74, '_sold_individually', 'no'),
(805, 74, '_virtual', 'no'),
(806, 74, '_downloadable', 'no'),
(807, 74, '_download_limit', '-1'),
(808, 74, '_download_expiry', '-1'),
(809, 74, '_thumbnail_id', '0'),
(810, 74, '_stock', NULL),
(811, 74, '_stock_status', 'instock'),
(812, 74, '_wc_average_rating', '0'),
(813, 74, '_wc_review_count', '0'),
(814, 74, 'attribute_pa_color', 'red'),
(815, 74, 'attribute_pa_size', 'small'),
(816, 74, '_price', '11'),
(817, 74, '_product_version', '5.3.0'),
(818, 65, '_price', '11'),
(819, 65, '_price', '12.5'),
(820, 65, '_price', '15'),
(821, 65, '_price', '20'),
(822, 65, '_edit_lock', '1621617778:1'),
(823, 65, '_edit_last', '1'),
(824, 65, '_wp_old_slug', 'product-1-copy'),
(825, 75, 'slider', 'a:5:{i:0;s:2:\"13\";i:1;s:2:\"49\";i:2;s:2:\"59\";i:3;s:2:\"61\";i:4;s:2:\"55\";}'),
(826, 75, '_slider', 'field_60a6759b570f6'),
(827, 76, '_wp_attached_file', '2021/05/heart.png'),
(828, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:38;s:6:\"height\";i:37;s:4:\"file\";s:17:\"2021/05/heart.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(829, 77, '_wp_attached_file', '2021/05/heart-active.png'),
(830, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:38;s:6:\"height\";i:37;s:4:\"file\";s:24:\"2021/05/heart-active.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(831, 49, '_wc_rating_count', 'a:2:{i:3;i:1;i:5;i:1;}'),
(832, 79, '_wp_page_template', 'rx-schedule-email-unsubscribe-template.php'),
(833, 78, '_wp_page_template', 'rx-schedule-email-unsubscribe-template.php'),
(834, 13, '_stock', NULL),
(835, 59, '_wc_rating_count', 'a:1:{i:2;i:1;}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-05-20 15:57:52', '2021-05-20 12:57:52', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2021-05-20 15:57:52', '2021-05-20 12:57:52', '', 0, 'http://testshop/?p=1', 0, 'post', '', 1),
(2, 1, '2021-05-20 15:57:52', '2021-05-20 12:57:52', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://testshop/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-05-20 15:57:52', '2021-05-20 12:57:52', '', 0, 'http://testshop/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-05-20 15:57:52', '2021-05-20 12:57:52', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://testshop.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-05-20 15:57:52', '2021-05-20 12:57:52', '', 0, 'http://testshop/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-05-20 15:59:56', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-20 15:59:56', '0000-00-00 00:00:00', '', 0, 'http://testshop/?p=4', 0, 'post', '', 0),
(5, 1, '2021-05-20 16:01:54', '2021-05-20 13:01:54', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2021-05-20 16:01:54', '2021-05-20 13:01:54', '', 0, 'http://testshop/wp-content/uploads/2021/05/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2021-05-20 16:01:56', '2021-05-20 13:01:56', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2021-05-20 16:01:56', '2021-05-20 13:01:56', '', 0, 'http://testshop/shop/', 0, 'page', '', 0),
(7, 1, '2021-05-20 16:01:56', '2021-05-20 13:01:56', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2021-05-20 16:01:56', '2021-05-20 13:01:56', '', 0, 'http://testshop/cart/', 0, 'page', '', 0),
(8, 1, '2021-05-20 16:01:56', '2021-05-20 13:01:56', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2021-05-20 16:01:56', '2021-05-20 13:01:56', '', 0, 'http://testshop/checkout/', 0, 'page', '', 0),
(9, 1, '2021-05-20 16:01:56', '2021-05-20 13:01:56', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2021-05-20 16:01:56', '2021-05-20 13:01:56', '', 0, 'http://testshop/my-account/', 0, 'page', '', 0),
(10, 1, '2021-05-20 16:13:04', '2021-05-20 13:13:04', '', 'vneck-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'vneck-tee-2-jpg', '', '', '2021-05-20 16:13:04', '2021-05-20 13:13:04', '', 0, 'http://testshop/wp-content/uploads/2021/05/vneck-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2021-05-20 16:13:07', '2021-05-20 13:13:07', '', 'vnech-tee-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-green-1-jpg', '', '', '2021-05-20 16:13:07', '2021-05-20 13:13:07', '', 0, 'http://testshop/wp-content/uploads/2021/05/vnech-tee-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2021-05-20 16:13:09', '2021-05-20 13:13:09', '', 'vnech-tee-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-blue-1-jpg', '', '', '2021-05-20 16:13:09', '2021-05-20 13:13:09', '', 0, 'http://testshop/wp-content/uploads/2021/05/vnech-tee-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2021-05-20 16:13:11', '2021-05-20 13:13:11', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Product 1', 'This is a variable product.', 'publish', 'open', 'closed', '', 'v-neck-t-shirt', '', '', '2021-05-22 14:59:10', '2021-05-22 11:59:10', '', 0, 'http://testshop/product/v-neck-t-shirt/', 0, 'product', '', 2),
(14, 1, '2021-05-20 16:14:32', '2021-05-20 13:14:32', '', 'Product 1 - Blue, Large', 'Color: Blue, Size: Large', 'publish', 'closed', 'closed', '', 'auto-draft-large-blue', '', '', '2021-05-20 16:16:19', '2021-05-20 13:16:19', '', 13, 'http://testshop/?post_type=product_variation&p=14', 1, 'product_variation', '', 0),
(15, 1, '2021-05-20 16:14:34', '2021-05-20 13:14:34', '', 'Product 1 - Blue, Medium', 'Color: Blue, Size: Medium', 'publish', 'closed', 'closed', '', 'auto-draft-medium-blue', '', '', '2021-05-20 16:16:20', '2021-05-20 13:16:20', '', 13, 'http://testshop/?post_type=product_variation&p=15', 2, 'product_variation', '', 0),
(16, 1, '2021-05-20 16:14:35', '2021-05-20 13:14:35', '', 'Product 1 - Blue, Small', 'Color: Blue, Size: Small', 'publish', 'closed', 'closed', '', 'auto-draft-small-blue', '', '', '2021-05-20 16:16:20', '2021-05-20 13:16:20', '', 13, 'http://testshop/?post_type=product_variation&p=16', 3, 'product_variation', '', 0),
(17, 1, '2021-05-20 16:14:36', '2021-05-20 13:14:36', '', 'Product 1 - Green, Large', 'Color: Green, Size: Large', 'publish', 'closed', 'closed', '', 'auto-draft-large-green', '', '', '2021-05-20 16:16:21', '2021-05-20 13:16:21', '', 13, 'http://testshop/?post_type=product_variation&p=17', 4, 'product_variation', '', 0),
(18, 1, '2021-05-20 16:14:38', '2021-05-20 13:14:38', '', 'Product 1 - Green, Medium', 'Color: Green, Size: Medium', 'publish', 'closed', 'closed', '', 'auto-draft-medium-green', '', '', '2021-05-20 16:16:21', '2021-05-20 13:16:21', '', 13, 'http://testshop/?post_type=product_variation&p=18', 5, 'product_variation', '', 0),
(19, 1, '2021-05-20 16:14:39', '2021-05-20 13:14:39', '', 'Product 1 - Green, Small', 'Color: Green, Size: Small', 'publish', 'closed', 'closed', '', 'auto-draft-small-green', '', '', '2021-05-20 16:16:22', '2021-05-20 13:16:22', '', 13, 'http://testshop/?post_type=product_variation&p=19', 6, 'product_variation', '', 0),
(20, 1, '2021-05-20 16:14:40', '2021-05-20 13:14:40', '', 'Product 1 - Red, Large', 'Color: Red, Size: Large', 'publish', 'closed', 'closed', '', 'auto-draft-large-red', '', '', '2021-05-20 16:16:22', '2021-05-20 13:16:22', '', 13, 'http://testshop/?post_type=product_variation&p=20', 7, 'product_variation', '', 0),
(21, 1, '2021-05-20 16:14:42', '2021-05-20 13:14:42', '', 'Product 1 - Red, Medium', 'Color: Red, Size: Medium', 'publish', 'closed', 'closed', '', 'auto-draft-medium-red', '', '', '2021-05-20 16:16:22', '2021-05-20 13:16:22', '', 13, 'http://testshop/?post_type=product_variation&p=21', 8, 'product_variation', '', 0),
(22, 1, '2021-05-20 16:14:44', '2021-05-20 13:14:44', '', 'Product 1 - Red, Small', 'Color: Red, Size: Small', 'publish', 'closed', 'closed', '', 'auto-draft-small-red', '', '', '2021-05-20 16:16:23', '2021-05-20 13:16:23', '', 13, 'http://testshop/?post_type=product_variation&p=22', 9, 'product_variation', '', 0),
(23, 1, '2021-05-20 17:44:47', '2021-05-20 14:44:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"home-template.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Products slider', 'products-slider', 'publish', 'closed', 'closed', '', 'group_60a67572f3731', '', '', '2021-05-20 18:02:23', '2021-05-20 15:02:23', '', 0, 'http://testshop/?post_type=acf-field-group&#038;p=23', 0, 'acf-field-group', '', 0),
(24, 1, '2021-05-20 17:44:48', '2021-05-20 14:44:48', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"product\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";a:1:{i:0;s:14:\"featured_image\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Slider', 'slider', 'publish', 'closed', 'closed', '', 'field_60a6759b570f6', '', '', '2021-05-20 17:44:48', '2021-05-20 14:44:48', '', 23, 'http://testshop/?post_type=acf-field&p=24', 0, 'acf-field', '', 0),
(25, 1, '2021-05-20 17:53:22', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-20 17:53:22', '0000-00-00 00:00:00', '', 0, 'http://testshop/?page_id=25', 0, 'page', '', 0),
(26, 1, '2021-05-20 17:57:01', '2021-05-20 14:57:01', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2021-05-21 20:26:03', '2021-05-21 17:26:03', '', 0, 'http://testshop/?page_id=26', 0, 'page', '', 0),
(27, 1, '2021-05-20 17:57:01', '2021-05-20 14:57:01', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-05-20 17:57:01', '2021-05-20 14:57:01', '', 26, 'http://testshop/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-05-20 18:07:03', '2021-05-20 15:07:03', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-05-20 18:07:03', '2021-05-20 15:07:03', '', 26, 'http://testshop/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-05-20 18:43:43', '2021-05-20 15:43:43', '{\n    \"blogdescription\": {\n        \"value\": \"Announcement Announcement Announcement Announcement Announcement\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-20 15:41:03\"\n    },\n    \"myshop::custom_logo\": {\n        \"value\": 30,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-20 15:43:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1ce29fcc-5329-4b68-8ed5-25bc80102fb6', '', '', '2021-05-20 18:43:43', '2021-05-20 15:43:43', '', 0, 'http://testshop/?p=29', 0, 'customize_changeset', '', 0),
(30, 1, '2021-05-20 18:43:07', '2021-05-20 15:43:07', '', 'radevs-logo', '', 'inherit', 'open', 'closed', '', 'radevs-logo', '', '', '2021-05-20 18:43:07', '2021-05-20 15:43:07', '', 0, 'http://testshop/wp-content/uploads/2021/05/radevs-logo.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2021-05-20 18:46:24', '2021-05-20 15:46:24', '{\n    \"site_icon\": {\n        \"value\": 30,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-20 15:46:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '69c1d8a8-9205-4130-909d-133b2a1b4683', '', '', '2021-05-20 18:46:24', '2021-05-20 15:46:24', '', 0, 'http://testshop/?p=32', 0, 'customize_changeset', '', 0),
(33, 1, '2021-05-20 19:00:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-20 19:00:36', '0000-00-00 00:00:00', '', 0, 'http://testshop/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2021-05-20 19:00:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-20 19:00:38', '0000-00-00 00:00:00', '', 0, 'http://testshop/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2021-05-20 19:00:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-20 19:00:39', '0000-00-00 00:00:00', '', 0, 'http://testshop/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2021-05-20 19:00:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-20 19:00:40', '0000-00-00 00:00:00', '', 0, 'http://testshop/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2021-05-20 19:00:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-20 19:00:41', '0000-00-00 00:00:00', '', 0, 'http://testshop/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2021-05-20 19:00:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-05-20 19:00:43', '0000-00-00 00:00:00', '', 0, 'http://testshop/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2021-05-21 13:39:30', '2021-05-20 16:35:21', '', 'Banner printing', '', 'publish', 'closed', 'closed', '', 'banner-printing', '', '', '2021-05-21 13:39:30', '2021-05-21 10:39:30', '', 0, 'http://testshop/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2021-05-21 13:39:31', '2021-05-20 16:35:22', '', 'Sign printing', '', 'publish', 'closed', 'closed', '', 'sign-printing', '', '', '2021-05-21 13:39:31', '2021-05-21 10:39:31', '', 0, 'http://testshop/?p=40', 2, 'nav_menu_item', '', 0),
(41, 1, '2021-05-21 13:39:31', '2021-05-20 16:35:23', '', 'Stands and displays', '', 'publish', 'closed', 'closed', '', 'stands-and-displays', '', '', '2021-05-21 13:39:31', '2021-05-21 10:39:31', '', 0, 'http://testshop/?p=41', 3, 'nav_menu_item', '', 0),
(42, 1, '2021-05-21 13:39:31', '2021-05-20 16:35:23', '', 'Stickers', '', 'publish', 'closed', 'closed', '', 'stickers', '', '', '2021-05-21 13:39:31', '2021-05-21 10:39:31', '', 0, 'http://testshop/?p=42', 4, 'nav_menu_item', '', 0),
(44, 1, '2021-05-21 13:39:31', '2021-05-20 16:35:24', '', 'Window graphics', '', 'publish', 'closed', 'closed', '', 'window-graphics-2', '', '', '2021-05-21 13:39:31', '2021-05-21 10:39:31', '', 0, 'http://testshop/?p=44', 5, 'nav_menu_item', '', 0),
(45, 1, '2021-05-21 19:30:11', '2021-05-21 16:30:11', 'http://testshop/wp-content/uploads/2021/05/yith-woocommerce-advanced-reviews-premium-1.6.21.zip', 'yith-woocommerce-advanced-reviews-premium-1.6.21.zip', '', 'private', 'open', 'closed', '', 'yith-woocommerce-advanced-reviews-premium-1-6-21-zip', '', '', '2021-05-21 19:30:11', '2021-05-21 16:30:11', '', 0, 'http://testshop/wp-content/uploads/2021/05/yith-woocommerce-advanced-reviews-premium-1.6.21.zip', 0, 'attachment', '', 0),
(47, 1, '2021-05-21 19:39:29', '2021-05-21 16:39:29', '[yith_wcwl_wishlist]', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2021-05-21 19:39:29', '2021-05-21 16:39:29', '', 0, 'http://testshop/wishlist/', 0, 'page', '', 0),
(48, 1, '2021-05-21 19:52:18', '2021-05-21 16:52:18', 'Good', '', '', 'publish', 'closed', 'closed', '', '48-2', '', '', '2021-05-21 19:52:18', '2021-05-21 16:52:18', '', 0, 'http://testshop/ywar_reviews/48-2/', 0, 'ywar_reviews', '', 0),
(49, 1, '2021-05-21 20:08:35', '2021-05-21 17:08:35', '', 'Halloween Banners', '', 'publish', 'open', 'closed', '', 'halloween-banners', '', '', '2021-05-22 14:55:18', '2021-05-22 11:55:18', '', 0, 'http://testshop/?post_type=product&#038;p=49', 0, 'product', '', 2),
(50, 1, '2021-05-21 20:04:55', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-05-21 20:04:55', '0000-00-00 00:00:00', '', 0, 'http://testshop/?post_type=product&p=50', 0, 'product', '', 0),
(51, 1, '2021-05-21 20:09:54', '2021-05-21 17:09:54', '', 'halloween-banners', '', 'inherit', 'open', 'closed', '', 'halloween-banners-2', '', '', '2021-05-21 20:09:54', '2021-05-21 17:09:54', '', 49, 'http://testshop/wp-content/uploads/2021/05/halloween-banners.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2021-05-21 20:10:16', '2021-05-21 17:10:16', '', 'party-banners', '', 'inherit', 'open', 'closed', '', 'party-banners', '', '', '2021-05-21 20:10:16', '2021-05-21 17:10:16', '', 49, 'http://testshop/wp-content/uploads/2021/05/party-banners.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2021-05-21 20:10:19', '2021-05-21 17:10:19', '', 'sign-printing', '', 'inherit', 'open', 'closed', '', 'sign-printing-2', '', '', '2021-05-21 20:10:19', '2021-05-21 17:10:19', '', 49, 'http://testshop/wp-content/uploads/2021/05/sign-printing.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2021-05-21 20:10:21', '2021-05-21 17:10:21', '', 'stickers', '', 'inherit', 'open', 'closed', '', 'stickers-2', '', '', '2021-05-21 20:10:21', '2021-05-21 17:10:21', '', 49, 'http://testshop/wp-content/uploads/2021/05/stickers.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2021-05-21 20:13:28', '2021-05-21 17:13:28', '', 'Circle Stickers', '', 'publish', 'open', 'closed', '', 'circle-stickers', '', '', '2021-05-21 20:13:44', '2021-05-21 17:13:44', '', 0, 'http://testshop/?post_type=product&#038;p=55', 0, 'product', '', 0),
(56, 1, '2021-05-21 20:12:23', '2021-05-21 17:12:23', '', 'Circle Stickers - Large', 'Size: Large', 'publish', 'closed', 'closed', '', 'circle-stickers-large', '', '', '2021-05-21 20:13:28', '2021-05-21 17:13:28', '', 55, 'http://testshop/?post_type=product_variation&p=56', 1, 'product_variation', '', 0),
(57, 1, '2021-05-21 20:12:27', '2021-05-21 17:12:27', '', 'Circle Stickers - Medium', 'Size: Medium', 'publish', 'closed', 'closed', '', 'circle-stickers-medium', '', '', '2021-05-21 20:13:29', '2021-05-21 17:13:29', '', 55, 'http://testshop/?post_type=product_variation&p=57', 2, 'product_variation', '', 0),
(58, 1, '2021-05-21 20:12:31', '2021-05-21 17:12:31', '', 'Circle Stickers - Small', 'Size: Small', 'publish', 'closed', 'closed', '', 'circle-stickers-small', '', '', '2021-05-21 20:13:29', '2021-05-21 17:13:29', '', 55, 'http://testshop/?post_type=product_variation&p=58', 3, 'product_variation', '', 0),
(59, 1, '2021-05-21 20:17:18', '2021-05-21 17:17:18', '', 'Party Banners', '', 'publish', 'open', 'closed', '', 'party-banners', '', '', '2021-05-22 15:17:33', '2021-05-22 12:17:33', '', 0, 'http://testshop/?post_type=product&#038;p=59', 0, 'product', '', 1),
(60, 1, '2021-05-21 20:19:52', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-05-21 20:19:52', '0000-00-00 00:00:00', '', 0, 'http://testshop/?post_type=product&p=60', 0, 'product', '', 0),
(61, 1, '2021-05-21 20:21:44', '2021-05-21 17:21:44', '', 'Sign Printing', '', 'publish', 'open', 'closed', '', 'sign-printing', '', '', '2021-05-21 20:22:32', '2021-05-21 17:22:32', '', 0, 'http://testshop/?post_type=product&#038;p=61', 0, 'product', '', 0),
(62, 1, '2021-05-21 20:21:01', '2021-05-21 17:21:01', '', 'Sign Printing - Blue', 'Color: Blue', 'publish', 'closed', 'closed', '', 'sign-printing-blue', '', '', '2021-05-21 20:21:41', '2021-05-21 17:21:41', '', 61, 'http://testshop/?post_type=product_variation&p=62', 1, 'product_variation', '', 0),
(63, 1, '2021-05-21 20:21:02', '2021-05-21 17:21:02', '', 'Sign Printing - Green', 'Color: Green', 'publish', 'closed', 'closed', '', 'sign-printing-green', '', '', '2021-05-21 20:21:42', '2021-05-21 17:21:42', '', 61, 'http://testshop/?post_type=product_variation&p=63', 2, 'product_variation', '', 0),
(64, 1, '2021-05-21 20:21:04', '2021-05-21 17:21:04', '', 'Sign Printing - Red', 'Color: Red', 'publish', 'closed', 'closed', '', 'sign-printing-red', '', '', '2021-05-21 20:21:42', '2021-05-21 17:21:42', '', 61, 'http://testshop/?post_type=product_variation&p=64', 3, 'product_variation', '', 0),
(65, 1, '2021-05-21 20:22:59', '2021-05-21 17:22:59', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Product 2', 'This is a variable product.', 'publish', 'open', 'closed', '', 'product-2', '', '', '2021-05-21 20:25:07', '2021-05-21 17:25:07', '', 0, 'http://testshop/?post_type=product&#038;p=65', 0, 'product', '', 0),
(66, 1, '2021-05-21 20:23:03', '2021-05-21 17:23:03', '', 'Product 2 - Blue, Large', 'Color: Blue, Size: Large', 'publish', 'closed', 'closed', '', 'auto-draft-large-blue-2', '', '', '2021-05-21 20:23:03', '2021-05-21 17:23:03', '', 65, 'http://testshop/?post_type=product_variation&p=66', 1, 'product_variation', '', 0),
(67, 1, '2021-05-21 20:23:05', '2021-05-21 17:23:05', '', 'Product 2 - Blue, Medium', 'Color: Blue, Size: Medium', 'publish', 'closed', 'closed', '', 'auto-draft-medium-blue-2', '', '', '2021-05-21 20:23:05', '2021-05-21 17:23:05', '', 65, 'http://testshop/?post_type=product_variation&p=67', 2, 'product_variation', '', 0),
(68, 1, '2021-05-21 20:23:08', '2021-05-21 17:23:08', '', 'Product 2 - Blue, Small', 'Color: Blue, Size: Small', 'publish', 'closed', 'closed', '', 'auto-draft-small-blue-2', '', '', '2021-05-21 20:23:08', '2021-05-21 17:23:08', '', 65, 'http://testshop/?post_type=product_variation&p=68', 3, 'product_variation', '', 0),
(69, 1, '2021-05-21 20:23:10', '2021-05-21 17:23:10', '', 'Product 2 - Green, Large', 'Color: Green, Size: Large', 'publish', 'closed', 'closed', '', 'auto-draft-large-green-2', '', '', '2021-05-21 20:23:10', '2021-05-21 17:23:10', '', 65, 'http://testshop/?post_type=product_variation&p=69', 4, 'product_variation', '', 0),
(70, 1, '2021-05-21 20:23:13', '2021-05-21 17:23:13', '', 'Product 2 - Green, Medium', 'Color: Green, Size: Medium', 'publish', 'closed', 'closed', '', 'auto-draft-medium-green-2', '', '', '2021-05-21 20:23:13', '2021-05-21 17:23:13', '', 65, 'http://testshop/?post_type=product_variation&p=70', 5, 'product_variation', '', 0),
(71, 1, '2021-05-21 20:23:15', '2021-05-21 17:23:15', '', 'Product 2 - Green, Small', 'Color: Green, Size: Small', 'publish', 'closed', 'closed', '', 'auto-draft-small-green-2', '', '', '2021-05-21 20:23:15', '2021-05-21 17:23:15', '', 65, 'http://testshop/?post_type=product_variation&p=71', 6, 'product_variation', '', 0),
(72, 1, '2021-05-21 20:23:18', '2021-05-21 17:23:18', '', 'Product 2 - Red, Large', 'Color: Red, Size: Large', 'publish', 'closed', 'closed', '', 'auto-draft-large-red-2', '', '', '2021-05-21 20:23:18', '2021-05-21 17:23:18', '', 65, 'http://testshop/?post_type=product_variation&p=72', 7, 'product_variation', '', 0),
(73, 1, '2021-05-21 20:23:22', '2021-05-21 17:23:22', '', 'Product 2 - Red, Medium', 'Color: Red, Size: Medium', 'publish', 'closed', 'closed', '', 'auto-draft-medium-red-2', '', '', '2021-05-21 20:23:22', '2021-05-21 17:23:22', '', 65, 'http://testshop/?post_type=product_variation&p=73', 8, 'product_variation', '', 0),
(74, 1, '2021-05-21 20:23:28', '2021-05-21 17:23:28', '', 'Product 2 - Red, Small', 'Color: Red, Size: Small', 'publish', 'closed', 'closed', '', 'auto-draft-small-red-2', '', '', '2021-05-21 20:23:28', '2021-05-21 17:23:28', '', 65, 'http://testshop/?post_type=product_variation&p=74', 9, 'product_variation', '', 0),
(75, 1, '2021-05-21 20:26:03', '2021-05-21 17:26:03', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-05-21 20:26:03', '2021-05-21 17:26:03', '', 26, 'http://testshop/?p=75', 0, 'revision', '', 0),
(76, 1, '2021-05-21 22:56:54', '2021-05-21 19:56:54', '', 'heart', '', 'inherit', 'open', 'closed', '', 'heart', '', '', '2021-05-21 22:56:54', '2021-05-21 19:56:54', '', 0, 'http://testshop/wp-content/uploads/2021/05/heart.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2021-05-21 22:56:57', '2021-05-21 19:56:57', '', 'heart-active', '', 'inherit', 'open', 'closed', '', 'heart-active', '', '', '2021-05-21 22:56:57', '2021-05-21 19:56:57', '', 0, 'http://testshop/wp-content/uploads/2021/05/heart-active.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2021-05-22 11:16:57', '2021-05-22 08:16:57', '<h1>You have been unsubscribed.</h1><p>You have been unsubscribed from these emails and sorry to see you go.</p>', 'ReviewX Schedule Email Unsubscribe', '', 'publish', 'closed', 'closed', '', 'rx-schedule-email-unsubscribe', '', '', '2021-05-22 11:16:57', '2021-05-22 08:16:57', '', 0, 'http://testshop/rx-schedule-email-unsubscribe/', 0, 'page', '', 0),
(79, 1, '2021-05-22 11:16:57', '2021-05-22 08:16:57', '<h1>You have been unsubscribed.</h1><p>You have been unsubscribed from these emails and sorry to see you go.</p>', 'ReviewX Schedule Email Unsubscribe', '', 'publish', 'closed', 'closed', '', 'rx-schedule-email-unsubscribe', '', '', '2021-05-22 11:16:57', '2021-05-22 08:16:57', '', 0, 'http://testshop/rx-schedule-email-unsubscribe/', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_reviewx_criterias`
--

CREATE TABLE `wp_reviewx_criterias` (
  `review_id` int NOT NULL,
  `criteria_id` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rating` int NOT NULL,
  `is_automated` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_reviewx_process_jobs`
--

CREATE TABLE `wp_reviewx_process_jobs` (
  `id` int NOT NULL,
  `process_name` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `process_meta` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_reviewx_reminder_email`
--

CREATE TABLE `wp_reviewx_reminder_email` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `customer_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_items` int NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_date` date NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `max_delivery` int NOT NULL,
  `total_delivery` int NOT NULL DEFAULT '0',
  `processed_email` text COLLATE utf8mb4_unicode_520_ci,
  `scheduled_at` timestamp NOT NULL,
  `is_subscribe` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'product_count_product_cat', '2'),
(2, 16, 'product_count_product_cat', '2'),
(3, 15, 'product_count_product_cat', '2'),
(4, 25, 'order', '0'),
(5, 25, 'product_count_product_cat', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Clothing', 'clothing', 0),
(17, 'Tshirts', 'tshirts', 0),
(18, 'Blue', 'blue', 0),
(19, 'Green', 'green', 0),
(20, 'Red', 'red', 0),
(21, 'Large', 'large', 0),
(22, 'Medium', 'medium', 0),
(23, 'Small', 'small', 0),
(24, 'Menu 1', 'menu-1', 0),
(25, 'Banners', 'banners', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 4, 0),
(13, 8, 0),
(13, 13, 0),
(13, 17, 0),
(13, 18, 0),
(13, 19, 0),
(13, 20, 0),
(13, 21, 0),
(13, 22, 0),
(13, 23, 0),
(39, 24, 0),
(40, 24, 0),
(41, 24, 0),
(42, 24, 0),
(44, 24, 0),
(49, 2, 0),
(49, 13, 0),
(49, 15, 0),
(55, 4, 0),
(55, 15, 0),
(55, 21, 0),
(55, 22, 0),
(55, 23, 0),
(59, 2, 0),
(59, 11, 0),
(59, 25, 0),
(61, 4, 0),
(61, 18, 0),
(61, 19, 0),
(61, 20, 0),
(61, 25, 0),
(65, 4, 0),
(65, 8, 0),
(65, 17, 0),
(65, 18, 0),
(65, 19, 0),
(65, 20, 0),
(65, 21, 0),
(65, 22, 0),
(65, 23, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 2),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 4),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 2),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 1),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 2),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 2),
(16, 16, 'product_cat', '', 0, 0),
(17, 17, 'product_cat', '', 16, 2),
(18, 18, 'pa_color', '', 0, 3),
(19, 19, 'pa_color', '', 0, 3),
(20, 20, 'pa_color', '', 0, 3),
(21, 21, 'pa_size', '', 0, 3),
(22, 22, 'pa_size', '', 0, 3),
(23, 23, 'pa_size', '', 0, 3),
(24, 24, 'nav_menu', '', 0, 5),
(25, 25, 'product_cat', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'vladymyrlem'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'urp_admin_pointers_tutorial-one,urp_admin_pointers_tutorial-two,urp_admin_pointers_tutorial-three,urp_admin_pointers_tutorial-four,urp_admin_pointers_tutorial-five,urp_admin_pointers_tutorial-six'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4a6224460b595e947aceeb280432efcad8411c5897321da8f7a88b5e62d0cef9\";a:4:{s:10:\"expiration\";i:1622725193;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:147:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 YaBrowser/20.3.2.238 Yowser/2.5 Safari/537.36\";s:5:\"login\";i:1621515593;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'last_update', '1621516364'),
(20, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1621516245224'),
(21, 1, 'woocommerce_admin_task_list_tracked_started_tasks', '{\"products\":1}'),
(22, 1, 'wc_last_active', '1621641600'),
(23, 1, '_wc_plugin_framework_facebook_for_woocommerce_dismissed_messages', 'a:1:{s:36:\"facebook_for_woocommerce_get_started\";b:1;}'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(26, 1, 'wp_user-settings', 'libraryContent=browse'),
(27, 1, 'wp_user-settings-time', '1621526422'),
(28, 1, 'nav_menu_recently_edited', '24'),
(29, 1, '_order_count', '0'),
(30, 1, 'dismissed_template_files_notice', '1'),
(31, 1, 'dismissed_no_secure_connection_notice', '1'),
(32, 1, 'yith-license-banner', 'hide');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'vladymyrlem', '$P$BhZCldas5c8/I1JgKSgpr9aw/SsXUt/', 'vladymyrlem', 'vovangud@gmail.com', 'http://testshop', '2021-05-20 12:57:50', '', 0, 'vladymyrlem');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'paypal_ppcp_gtm_2021', 'marketing', 'en_US', 'Offer more options with the new PayPal', 'Get the latest PayPal extension for a full suite of payment methods with extensive currency and country coverage.', '{}', 'pending', 'woocommerce.com', '2021-05-14 19:02:19', NULL, 0, 'plain', '', 0, 'info'),
(2, 'facebook_pixel_api_2021', 'marketing', 'en_US', 'Improve the performance of your Facebook ads', 'Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved measurement and ad targeting capabilities.', '{}', 'pending', 'woocommerce.com', '2021-05-14 07:02:19', NULL, 0, 'plain', '', 0, 'info'),
(3, 'facebook_ec_2021', 'marketing', 'en_US', 'Sync your product catalog with Facebook to help boost sales', 'A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.', '{}', 'pending', 'woocommerce.com', '2021-05-14 10:02:20', NULL, 0, 'plain', '', 0, 'info'),
(4, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2021-05-14 07:02:20', NULL, 0, 'plain', '', 0, 'info'),
(5, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2021-05-14 13:02:20', NULL, 0, 'plain', '', 0, 'info'),
(6, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2021-05-14 07:02:20', NULL, 0, 'plain', '', 0, 'info'),
(7, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'pending', 'woocommerce.com', '2021-05-14 10:02:21', NULL, 0, 'plain', '', 0, 'info'),
(8, 'your-first-product', 'info', 'en_US', 'Your first product', 'That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.', '{}', 'unactioned', 'woocommerce.com', '2021-05-14 22:16:54', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wc-square-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-05-14 07:02:21', NULL, 0, 'plain', '', 0, 'info'),
(10, 'wc-square-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with Square and Apple Pay ', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-05-14 07:02:21', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wcpay-apple-pay-is-now-available', 'marketing', 'en_US', 'Apple Pay is now available with WooCommerce Payments!', 'Increase your conversion rate by offering a fast and secure checkout with <a href=\"https://woocommerce.com/apple-pay/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay\" target=\"_blank\">Apple Pay</a>®. It’s free to get started with <a href=\"https://woocommerce.com/payments/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay\" target=\"_blank\">WooCommerce Payments</a>.', '{}', 'pending', 'woocommerce.com', '2021-05-14 10:02:21', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wcpay-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-05-14 10:02:22', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wcpay-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with WooCommerce Payments and Apple Pay', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-05-14 07:02:22', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'pending', 'woocommerce.com', '2021-05-14 07:02:22', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'pending', 'woocommerce.com', '2021-05-14 07:02:22', NULL, 0, 'plain', '', 0, 'info'),
(16, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '{}', 'pending', 'woocommerce.com', '2021-05-14 07:02:22', NULL, 0, 'plain', '', 0, 'info'),
(17, 'share-your-feedback-on-paypal', 'info', 'en_US', 'Share your feedback on PayPal', 'Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.', '{}', 'pending', 'woocommerce.com', '2021-05-14 10:02:22', NULL, 0, 'plain', '', 0, 'info'),
(18, 'wcpay_instant_deposits_gtm_2021', 'marketing', 'en_US', 'Get paid within minutes – Instant Deposits for WooCommerce Payments', 'Stay flexible with immediate access to your funds when you need them – including nights, weekends, and holidays. With <a href=\"https://woocommerce.com/products/woocommerce-payments/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_instant_deposits\">WooCommerce Payments\'</a> new Instant Deposits feature, you’re able to transfer your earnings to a debit card within minutes.', '{}', 'pending', 'woocommerce.com', '2021-05-14 07:02:23', NULL, 0, 'plain', '', 0, 'info'),
(19, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-20 13:02:27', NULL, 0, 'plain', '', 0, 'info'),
(20, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Sign up for tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2021-05-20 13:02:33', NULL, 0, 'plain', '', 0, 'info'),
(21, 'wc-admin-filter-by-product-variations-in-reports', 'info', 'en_US', 'New - filter by product variations in orders and products reports', 'One of the most awaited features has just arrived! You can now have insights into each product variation in the orders and products reports.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-21 13:03:52', NULL, 0, 'banner', 'http://testshop/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/admin_notes/filter-by-product-variations-note.svg', 0, 'info'),
(22, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Choosing a theme?', 'Check out the themes that are compatible with WooCommerce and choose one aligned with your brand and business needs.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-21 13:03:52', NULL, 0, 'plain', '', 0, 'info'),
(23, 'wc-admin-insight-first-product-and-payment', 'survey', 'en_US', 'Insight', 'More than 80% of new merchants add the first product and have at least one payment method set up during the first week.<br><br>Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2021-05-21 13:03:53', NULL, 0, 'plain', '', 0, 'info'),
(24, 'wc-admin-learn-more-about-variable-products', 'info', 'en_US', 'Learn more about variable products', 'Variable products are a powerful product type that lets you offer a set of variations on a product, with control over prices, stock, image and more for each variation. They can be used for a product like a shirt, where you can offer a large, medium and small and in different colors.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-21 17:08:37', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint UNSIGNED NOT NULL,
  `note_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(20, 19, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(21, 20, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(212, 21, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-analytics/#variations-report', 'actioned', 0, ''),
(213, 22, 'visit-the-theme-marketplace', 'Visit the theme marketplace', 'https://woocommerce.com/product-category/themes/?utm_source=inbox', 'actioned', 0, ''),
(214, 23, 'affirm-insight-first-product-and-payment', 'Yes', '', 'actioned', 0, 'Thanks for your feedback'),
(215, 23, 'affirm-insight-first-product-and-payment', 'No', '', 'actioned', 0, 'Thanks for your feedback'),
(330, 24, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/variable-product/?utm_source=inbox', 'actioned', 0, ''),
(958, 1, 'open_wc_paypal_payments_product_page', 'Learn more', 'https://woocommerce.com/products/woocommerce-paypal-payments/', 'actioned', 1, ''),
(959, 2, 'upgrade_now_facebook_pixel_api', 'Upgrade now', 'plugin-install.php?tab=plugin-information&plugin=&section=changelog', 'actioned', 1, ''),
(960, 3, 'learn_more_facebook_ec', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 1, ''),
(961, 4, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(962, 5, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(963, 6, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(964, 7, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', 1, ''),
(965, 8, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox', 'actioned', 1, ''),
(966, 9, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales', 'actioned', 1, ''),
(967, 10, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business', 'actioned', 1, ''),
(968, 11, 'add-apple-pay', 'Add Apple Pay', '/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments', 'actioned', 1, ''),
(969, 11, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/payments/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay', 'actioned', 1, ''),
(970, 12, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales', 'actioned', 1, ''),
(971, 13, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business', 'actioned', 1, ''),
(972, 14, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox', 'actioned', 1, ''),
(973, 15, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox', 'unactioned', 1, ''),
(974, 16, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', 1, ''),
(975, 17, 'share-feedback', 'Share feedback', 'http://automattic.survey.fm/paypal-feedback', 'unactioned', 1, ''),
(976, 18, 'learn-more', 'Learn about Instant Deposits eligibility', 'https://docs.woocommerce.com/document/payments/instant-deposits/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_instant_deposits', 'actioned', 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `variation_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint UNSIGNED NOT NULL,
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(13, '', 0, 0, '11.0000', '20.0000', 0, NULL, 'instock', 1, '4.00', 0, 'taxable', ''),
(14, '', 0, 0, '20.0000', '20.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(15, '', 0, 0, '15.0000', '15.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(16, '', 0, 0, '11.0000', '11.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(17, '', 0, 0, '20.0000', '20.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(18, '', 0, 0, '12.5000', '12.5000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(19, '', 0, 0, '11.0000', '11.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(20, '', 0, 0, '20.0000', '20.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(21, '', 0, 0, '15.0000', '15.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(22, '', 0, 0, '11.0000', '11.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(49, '', 0, 0, '7.9900', '7.9900', 0, NULL, 'instock', 2, '4.00', 0, 'taxable', ''),
(55, '', 0, 0, '7.9900', '13.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(56, '', 0, 0, '13.0000', '13.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(57, '', 0, 0, '9.9900', '9.9900', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(58, '', 0, 0, '7.9900', '7.9900', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(59, '', 0, 0, '7.9900', '7.9900', 0, NULL, 'instock', 1, '2.00', 0, 'taxable', ''),
(61, '', 0, 0, '6.5500', '7.9900', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(62, '', 0, 0, '7.5500', '7.5500', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(63, '', 0, 0, '7.9900', '7.9900', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(64, '', 0, 0, '6.5500', '6.5500', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(65, '', 0, 0, '11.0000', '20.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(66, '', 0, 0, '20.0000', '20.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(67, '', 0, 0, '15.0000', '15.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(68, '', 0, 0, '11.0000', '11.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(69, '', 0, 0, '20.0000', '20.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(70, '', 0, 0, '12.5000', '12.5000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(71, '', 0, 0, '11.0000', '11.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(72, '', 0, 0, '20.0000', '20.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(73, '', 0, 0, '15.0000', '15.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(74, '', 0, 0, '11.0000', '11.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint NOT NULL,
  `failure_count` smallint NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 0),
(2, 'size', 'Size', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `order_item_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `payment_token_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:8:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:732:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2021-05-20T13:12:44+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"UA\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"UA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:18:\"vovangud@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;}', 1621788743);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint UNSIGNED NOT NULL,
  `zone_id` bigint UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint UNSIGNED NOT NULL,
  `instance_id` bigint UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint UNSIGNED NOT NULL,
  `tax_rate_compound` int NOT NULL DEFAULT '0',
  `tax_rate_shipping` int NOT NULL DEFAULT '1',
  `tax_rate_order` bigint UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yith_wcwl`
--

CREATE TABLE `wp_yith_wcwl` (
  `ID` int NOT NULL,
  `prod_id` int NOT NULL,
  `quantity` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `wishlist_id` int DEFAULT NULL,
  `position` int DEFAULT '0',
  `original_price` decimal(9,3) DEFAULT NULL,
  `original_currency` char(3) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `on_sale` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_yith_wcwl`
--

INSERT INTO `wp_yith_wcwl` (`ID`, `prod_id`, `quantity`, `user_id`, `wishlist_id`, `position`, `original_price`, `original_currency`, `dateadded`, `on_sale`) VALUES
(1, 61, 1, 1, 1, 0, '7.000', 'USD', '2021-05-21 19:39:09', 0),
(2, 59, 1, 1, 1, 0, '7.000', 'USD', '2021-05-21 19:41:10', 0),
(3, 13, 1, 1, 1, 0, '11.000', 'USD', '2021-05-21 19:46:43', 0),
(4, 55, 1, 1, 1, 0, '8.000', 'USD', '2021-05-21 20:00:05', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yith_wcwl_lists`
--

CREATE TABLE `wp_yith_wcwl_lists` (
  `ID` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiration` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_yith_wcwl_lists`
--

INSERT INTO `wp_yith_wcwl_lists` (`ID`, `user_id`, `session_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`, `dateadded`, `expiration`) VALUES
(1, 1, NULL, '', '', 'FC59C1LG6Z5J', 0, 1, '2021-05-21 16:39:08', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Индексы таблицы `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Индексы таблицы `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_reviewx_process_jobs`
--
ALTER TABLE `wp_reviewx_process_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_reviewx_reminder_email`
--
ALTER TABLE `wp_reviewx_reminder_email`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Индексы таблицы `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Индексы таблицы `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Индексы таблицы `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Индексы таблицы `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Индексы таблицы `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Индексы таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Индексы таблицы `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `wishlist_token` (`wishlist_token`),
  ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=647;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1928;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=836;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT для таблицы `wp_reviewx_process_jobs`
--
ALTER TABLE `wp_reviewx_process_jobs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_reviewx_reminder_email`
--
ALTER TABLE `wp_reviewx_reminder_email`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=977;

--
-- AUTO_INCREMENT для таблицы `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
