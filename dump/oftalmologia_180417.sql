-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 17 2018 г., 12:32
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `oftalmologia`
--

-- --------------------------------------------------------

--
-- Структура таблицы `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ideology` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `image`, `mission`, `values`, `ideology`, `created_at`, `updated_at`) VALUES
(1, 'Название', '<p>Описание</p>', 'uploads/1/2018-04/slide_logo_1.png', '<p>Миссия</p>', '<p>Ценности</p>', '<p>Идеология</p>', '2018-04-16 05:18:28', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@mintrocket.ru', NULL, '2018-04-10 01:37:52', NULL),
(2, 'Test Email Template', 'test_email_template', 'Test Email Template', '<p>Hello. This is test mail</p><p><br></p><p>Здравствуйте. Это тестовое письмо</p>', 'Test', NULL, 'system@mintrocket.ru', NULL, '2018-04-16 00:03:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/document_groups/add-save', 'Add New Data Обычные документы at Группы документов', '', 1, '2018-04-10 01:46:25', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/document_groups/add-save', 'Add New Data Важные документы at Группы документов', '', 1, '2018-04-10 01:46:30', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/documents/add-save', 'Add New Data git test at Документы', '', 1, '2018-04-10 01:57:19', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/documents/edit-save/1', 'Update data git test at Документы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-04-10 02:01:47', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/documents/edit-save/1', 'Update data git test at Документы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>checkbox_show_about</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-04-10 02:01:53', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/documents/edit-save/1', 'Update data git test at Документы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-04-10 02:02:01', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/documents/edit-save/1', 'Update data git test at Документы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>checkbox_show_about</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-04-10 02:02:42', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/logout', 'admin@mintrocket.ru logout', '', 1, '2018-04-10 02:05:30', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/login', 'admin@mintrocket.ru login with IP Address 127.0.0.1', '', 1, '2018-04-10 02:05:31', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/menu_management/edit-save/4', 'Update data Группы документов at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Группа документов</td><td>Группы документов</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-04-10 02:08:07', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/content_pages/add-save', 'Add New Data Заголовок один at Контентные страницы', '', 1, '2018-04-10 04:48:56', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/emails/add-save', 'Add New Data Тест at Адреса эл.почты', '', 1, '2018-04-10 06:02:32', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/unique_techs/add-save', 'Add New Data test at Уникальные технологии', '', 1, '2018-04-10 06:03:16', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/videos/add-save', 'Add New Data giphy mp4 проверка at Видео', '', 1, '2018-04-10 06:38:12', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/videos/delete-image', 'Delete the image of giphy mp4 проверка at Видео', '', 1, '2018-04-10 06:59:08', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/videos/edit-save/1', 'Update data giphy mp4 проверка at Видео', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>URL</td><td>https://giphy.com/gifs/loop-loading-loader-xTk9ZvMnbIiIew7IpW</td><td>https://giphy.com/stickers/3d-emoji-3ohhwjlY5Qvz1SA4Y8</td></tr><tr><td>video</td><td></td><td>uploads/1/2018-04/explosion_explode_sticker_by_valeris_original.mp4</td></tr></tbody></table>', 1, '2018-04-10 06:59:24', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/documents/delete-image', 'Delete the image of git test at Документы', '', 1, '2018-04-10 07:01:45', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/documents/edit-save/1', 'Update data git test at Документы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>attach</td><td></td><td>uploads/1/2018-04/untitled_diagram.xml</td></tr></tbody></table>', 1, '2018-04-10 07:01:55', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/documents/edit-save/1', 'Update data git test at Документы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-04-10 07:09:07', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/emails/add-save', 'Add New Data Тест 2 at Адреса эл.почты', '', 1, '2018-04-10 07:25:07', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/emails/add', 'Try add data at Адреса эл.почты', '', 1, '2018-04-10 07:25:26', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/login', 'admin@mintrocket.ru login with IP Address 127.0.0.1', '', 1, '2018-04-10 23:21:57', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/documents/add-save', 'Add New Data test at Документы', '', 1, '2018-04-10 23:43:49', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/documents/delete/2', 'Delete data test at Документы', '', 1, '2018-04-10 23:43:53', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/documents/add-save', 'Add New Data test at Документы', '', 1, '2018-04-10 23:46:01', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/documents/delete/2', 'Delete data test at Документы', '', 1, '2018-04-10 23:46:05', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/login', 'admin@mintrocket.ru login with IP Address 127.0.0.1', '', 1, '2018-04-11 23:06:28', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/add-save', 'Add New Data test at Опросы', '', 1, '2018-04-12 01:24:23', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/delete/1', 'Delete data test at Опросы', '', 1, '2018-04-12 01:25:02', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/add-save', 'Add New Data test at Опросы', '', 1, '2018-04-12 01:25:22', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/add-save', 'Add New Data Проверочный опрос at Опросы', '', 1, '2018-04-12 01:48:49', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/add-save', 'Add New Data test opros at Опросы', '', 1, '2018-04-12 03:31:39', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/add-save', 'Add New Data test opros 2 at Опросы', '', 1, '2018-04-12 04:26:46', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 2 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"radio\", \"title\": \"вопрос 3\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 2\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 3\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"}]},{\"id\":2,\"type\":\"radio\",\"title\":\"вопрос 3\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ 2\"},{\"id\":2,\"count\":0,\"title\":\"ответ 3\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 06:15:42', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 2 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"radio\", \"title\": \"вопрос 3\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 2\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 3\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"}]},{\"id\":2,\"type\":\"radio\",\"title\":\"вопрос 3\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ 2\"},{\"id\":2,\"count\":0,\"title\":\"ответ 3\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 06:15:53', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 2 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"radio\", \"title\": \"вопрос 3\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 2\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 3\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"}]},{\"id\":2,\"type\":\"radio\",\"title\":\"вопрос 3\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ 2\"},{\"id\":2,\"count\":0,\"title\":\"ответ 3\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 06:16:23', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 2 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"radio\", \"title\": \"вопрос 3\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 2\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 3\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"}]},{\"id\":2,\"type\":\"radio\",\"title\":\"вопрос 3\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ 2\"},{\"id\":2,\"count\":0,\"title\":\"ответ 3\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 06:17:23', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 2 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"radio\", \"title\": \"вопрос 3\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 2\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 3\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"}]},{\"id\":2,\"type\":\"radio\",\"title\":\"вопрос 3\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ 2\"},{\"id\":2,\"count\":0,\"title\":\"ответ 3\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 06:17:44', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 2 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"radio\", \"title\": \"вопрос 3\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 2\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 3\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"}]},{\"id\":2,\"type\":\"radio\",\"title\":\"вопрос 3\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ 2\"},{\"id\":2,\"count\":0,\"title\":\"ответ 3\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 06:18:01', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 2 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"radio\", \"title\": \"вопрос 3\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 2\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 3\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"}]},{\"id\":2,\"type\":\"radio\",\"title\":\"вопрос 3\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ 2\"},{\"id\":2,\"count\":0,\"title\":\"ответ 3\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 06:18:39', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/add-save', 'Add New Data test opros 2 at Опросы', '', 1, '2018-04-12 06:36:07', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/delete/5', 'Delete data test opros 2 at Опросы', '', 1, '2018-04-12 06:36:41', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/add-save', 'Add New Data test opros 2 at Опросы', '', 1, '2018-04-12 06:36:55', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/delete/5', 'Delete data test opros 2 at Опросы', '', 1, '2018-04-12 06:37:05', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 2 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 1, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"radio\", \"title\": \"вопрос 3\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 2\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 3\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":1,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"}]},{\"id\":2,\"type\":\"check\",\"title\":\"вопрос 3\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ 22\"},{\"id\":2,\"count\":0,\"title\":\"ответ 333\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 06:38:01', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 2 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 1, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"check\", \"title\": \"вопрос 3\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 22\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 333\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":1,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"}]},{\"id\":2,\"type\":\"checkbox\",\"title\":\"вопрос 3\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ 22\"},{\"id\":2,\"count\":0,\"title\":\"ответ 333\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 06:40:29', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 2 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 1, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"checkbox\", \"title\": \"вопрос 3\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 22\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 333\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":1,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"}]},{\"id\":2,\"type\":\"checkbox\",\"title\":\"вопрос 3\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ 22\"},{\"id\":2,\"count\":0,\"title\":\"ответ 333\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 06:40:40', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 222 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title</td><td>test opros 2</td><td>test opros 222</td></tr><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 1, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"checkbox\", \"title\": \"вопрос 3\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 22\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 333\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":1,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"}]},{\"id\":2,\"type\":\"checkbox\",\"title\":\"вопрос 3  новый\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1111\"},{\"id\":1,\"count\":0,\"title\":\"ответ 22\"},{\"id\":2,\"count\":0,\"title\":\"ответ 333\"},{\"id\":3,\"title\":\"ответ 4\",\"count\":0}]}]</td></tr></tbody></table>', 1, '2018-04-12 06:41:06', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 222 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 1, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"checkbox\", \"title\": \"вопрос 3  новый\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1111\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 22\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 333\"}, {\"id\": 3, \"count\": 0, \"title\": \"ответ 4\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":1,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"}]},{\"id\":2,\"type\":\"checkbox\",\"title\":\"вопрос 3  новый\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1111\"},{\"id\":1,\"count\":0,\"title\":\"ответ 22\"},{\"id\":2,\"count\":0,\"title\":\"ответ 333\"},{\"id\":3,\"count\":0,\"title\":\"ответ 4\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 07:02:49', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 222 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 1, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"checkbox\", \"title\": \"вопрос 3  новый\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1111\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 22\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 333\"}, {\"id\": 3, \"count\": 0, \"title\": \"ответ 4\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":1,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"}]},{\"id\":2,\"type\":\"checkbox\",\"title\":\"вопрос 3  новый\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1111\"},{\"id\":1,\"count\":0,\"title\":\"ответ 22\"},{\"id\":2,\"count\":0,\"title\":\"ответ 333\"},{\"id\":3,\"count\":0,\"title\":\"ответ 4\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 07:04:47', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 222 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 1, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"checkbox\", \"title\": \"вопрос 3  новый\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1111\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 22\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 333\"}, {\"id\": 3, \"count\": 0, \"title\": \"ответ 4\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":1,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"},{\"id\":2,\"title\":\"ответ 3 nhb nhbgbd\",\"count\":0}]},{\"id\":2,\"type\":\"checkbox\",\"title\":\"вопрос 3  новый\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1111\"},{\"id\":1,\"count\":0,\"title\":\"ответ 22\"},{\"id\":2,\"count\":0,\"title\":\"ответ 333\"},{\"id\":3,\"count\":0,\"title\":\"ответ 4\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 07:07:43', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 222 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 1, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 3 nhb nhbgbd\"}]}, {\"id\": 2, \"type\": \"checkbox\", \"title\": \"вопрос 3  новый\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1111\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 22\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 333\"}, {\"id\": 3, \"count\": 0, \"title\": \"ответ 4\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":1,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":0,\"title\":\"ответ и 2\"},{\"id\":2,\"count\":0,\"title\":\"ответ 3 nhb nhbgbd\"}]},{\"id\":2,\"type\":\"radio\",\"title\":\"вопрос 3  новый\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1111\"},{\"id\":1,\"count\":0,\"title\":\"ответ 22\"},{\"id\":2,\"count\":0,\"title\":\"ответ 333\"},{\"id\":3,\"count\":0,\"title\":\"ответ 4\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 07:08:02', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 222 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 1, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 3 nhb nhbgbd\"}]}, {\"id\": 2, \"type\": \"radio\", \"title\": \"вопрос 3  новый\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1111\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 22\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 333\"}, {\"id\": 3, \"count\": 0, \"title\": \"ответ 4\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":1,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":1,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":1,\"title\":\"ответ и 2\"},{\"id\":2,\"count\":1,\"title\":\"ответ 3 nhb nhbgbd\"}]},{\"id\":2,\"type\":\"radio\",\"title\":\"вопрос 3  новый\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1111\"},{\"id\":1,\"count\":0,\"title\":\"ответ 22\"},{\"id\":2,\"count\":0,\"title\":\"ответ 333\"},{\"id\":3,\"count\":1,\"title\":\"ответ 4\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 07:12:50', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/4', 'Update data test opros 222 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 1, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 1, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 1, \"title\": \"ответ и 2\"}, {\"id\": 2, \"count\": 1, \"title\": \"ответ 3 nhb nhbgbd\"}]}, {\"id\": 2, \"type\": \"radio\", \"title\": \"вопрос 3  новый\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1111\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 22\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 333\"}, {\"id\": 3, \"count\": 1, \"title\": \"ответ 4\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"вопрос 1\",\"answers\":[{\"id\":0,\"count\":2,\"title\":\"ответ или 1\"},{\"id\":1,\"count\":1,\"title\":\"ответ или 2\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"вопрос 2\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ и 1\"},{\"id\":1,\"count\":2,\"title\":\"ответ и 2\"},{\"id\":2,\"count\":2,\"title\":\"ответ 3 nhb nhbgbd\"}]},{\"id\":2,\"type\":\"radio\",\"title\":\"вопрос 3  новый\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"ответ 1111\"},{\"id\":1,\"count\":0,\"title\":\"ответ 22\"},{\"id\":2,\"count\":0,\"title\":\"ответ 333\"},{\"id\":3,\"count\":2,\"title\":\"ответ 4\"}]}]</td></tr></tbody></table>', 1, '2018-04-12 07:13:33', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/login', 'admin@mintrocket.ru login with IP Address 127.0.0.1', '', 1, '2018-04-15 23:08:06', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/email_templates/add-save', 'Add New Data Test Email Template at Email Templates', '', 1, '2018-04-16 00:03:00', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/vacants/add-save', 'Add New Data Старший человек at Вакансии', '', 1, '2018-04-16 04:52:03', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/abouts/add-save', 'Add New Data Название at О нас', '', 1, '2018-04-16 05:18:28', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/module_generator/delete/24', 'Delete data Отзывы at Module Generator', '', 1, '2018-04-16 05:42:34', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/add-save', 'Add New Data Имярек at Отзывы', '', 1, '2018-04-16 06:24:07', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/login', 'admin@mintrocket.ru login with IP Address 127.0.0.1', '', 1, '2018-04-16 07:43:00', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/login', 'admin@mintrocket.ru login with IP Address 127.0.0.1', '', 1, '2018-04-16 23:17:49', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td></td><td></td></tr><tr><td>answer</td><td><p>Ответ</p></td><td><p>Ответ</p><p>Мы вам ответили</p></td></tr></tbody></table>', 1, '2018-04-16 23:51:54', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td></td><td></td></tr><tr><td>answer</td><td><p>Ответ</p><p>Мы вам ответили</p></td><td><p><br></p></td></tr></tbody></table>', 1, '2018-04-16 23:54:03', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td></td><td></td></tr><tr><td>answer</td><td><p><br></p></td><td><p>Ответ есть</p></td></tr></tbody></table>', 1, '2018-04-16 23:54:53', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td></td><td></td></tr><tr><td>answer</td><td><p>Ответ есть</p></td><td><p><br></p></td></tr></tbody></table>', 1, '2018-04-16 23:55:01', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td></td><td></td></tr><tr><td>answer</td><td><p><br></p></td><td><p>Ответ есть<br></p></td></tr></tbody></table>', 1, '2018-04-16 23:55:07', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td></td><td></td></tr><tr><td>answer</td><td><p>Ответ есть<br></p></td><td><p><br></p></td></tr></tbody></table>', 1, '2018-04-16 23:57:34', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td></td><td></td></tr><tr><td>answer</td><td><p><br></p></td><td><p>Ответ есть</p></td></tr></tbody></table>', 1, '2018-04-16 23:57:46', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/add-save', 'Add New Data Имя at Отзывы', '', 1, '2018-04-17 00:23:36', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/2', 'Update data Имя at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td></td><td></td></tr><tr><td>published</td><td></td><td></td></tr><tr><td>answer</td><td></td><td><p>И вам не хворать</p></td></tr></tbody></table>', 1, '2018-04-17 00:24:01', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td></td><td></td></tr><tr><td>published</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-04-17 00:24:12', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td></td><td></td></tr><tr><td>published</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-04-17 00:24:20', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td></td><td></td></tr><tr><td>published</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-04-17 00:24:40', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td></td><td></td></tr><tr><td>published</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-04-17 00:26:03', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/documents/edit-save/1', 'Update data git test at Документы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>attach</td><td>uploads/1/2018-04/untitled_diagram.xml</td><td></td></tr></tbody></table>', 1, '2018-04-17 00:26:20', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td></td><td></td></tr><tr><td>published</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-04-17 00:27:29', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td>0</td><td></td></tr><tr><td>published</td><td>1</td><td></td></tr></tbody></table>', 1, '2018-04-17 00:40:51', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>published</td><td>1</td><td>0</td></tr><tr><td>answer</td><td></td><td></td></tr></tbody></table>', 1, '2018-04-17 00:44:27', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/1', 'Update data Имярек at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>answered</td><td>0</td><td></td></tr><tr><td>published</td><td>0</td><td>1</td></tr><tr><td>answer</td><td></td><td></td></tr></tbody></table>', 1, '2018-04-17 00:46:30', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/qnas/add-save', 'Add New Data На этот вопрос ответят? at Вопрос-Ответ', '', 1, '2018-04-17 01:47:25', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/qnas/add-save', 'Add New Data Как насчет этого ответа? at Вопрос-Ответ', '', 1, '2018-04-17 01:47:47', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/comments25/edit-save/2', 'Update data Имя at Отзывы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-04-17 03:54:41', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/add-save', 'Add New Data Опрос от 170418 at Опросы', '', 1, '2018-04-17 03:56:38', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/interviews/edit-save/7', 'Update data Опрос от 170418 at Опросы', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>options</td><td>[{\"id\": 0, \"type\": \"radio\", \"title\": \"Откуда ты пришел?\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"Да\"}, {\"id\": 1, \"count\": 0, \"title\": \"Нет\"}, {\"id\": 2, \"count\": 0, \"title\": \"Наверное\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"Ты?\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"Я\"}, {\"id\": 1, \"count\": 0, \"title\": \"Я?\"}, {\"id\": 2, \"count\": 0, \"title\": \"Нет\"}]}]</td><td>[{\"id\":0,\"type\":\"radio\",\"title\":\"Откуда ты пришел?\",\"answers\":[{\"id\":0,\"count\":0,\"title\":\"Да\"},{\"id\":1,\"count\":0,\"title\":\"Нет\"},{\"id\":2,\"count\":1,\"title\":\"Наверное\"}]},{\"id\":1,\"type\":\"checkbox\",\"title\":\"Ты?\",\"answers\":[{\"id\":0,\"count\":1,\"title\":\"Я\"},{\"id\":1,\"count\":1,\"title\":\"Я?\"},{\"id\":2,\"count\":0,\"title\":\"Нет\"}]}]</td></tr></tbody></table>', 1, '2018-04-17 03:56:53', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/logout', 'admin@mintrocket.ru logout', '', 1, '2018-04-17 04:16:02', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/login', 'admin@mintrocket.ru login with IP Address 127.0.0.1', '', 1, '2018-04-17 04:16:07', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/logout', 'admin@mintrocket.ru logout', '', 1, '2018-04-17 04:16:12', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'http://dev-oftalmologia/admin/login', 'admin@mintrocket.ru login with IP Address 127.0.0.1', '', 1, '2018-04-17 04:16:21', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Контентные страницы', 'Route', 'AdminContentPagesControllerGetIndex', NULL, 'fa fa-th-list', 0, 1, 0, 1, 1, '2018-04-10 01:38:35', NULL),
(2, 'Адреса эл.почты', 'Route', 'AdminEmailsControllerGetIndex', NULL, 'fa fa-envelope', 0, 1, 0, 1, 2, '2018-04-10 01:40:37', NULL),
(3, 'Уникальные технологии', 'Route', 'AdminUniqueTechs1ControllerGetIndex', NULL, 'fa fa-star', 0, 1, 0, 1, 3, '2018-04-10 01:41:30', NULL),
(4, 'Группы документов', 'Route', 'AdminDocumentGroups1ControllerGetIndex', 'normal', 'fa fa-book', 0, 1, 0, 1, 4, '2018-04-10 01:43:20', '2018-04-10 02:08:07'),
(5, 'Документы', 'Route', 'AdminDocuments1ControllerGetIndex', NULL, 'fa fa-book', 0, 1, 0, 1, 5, '2018-04-10 01:44:21', NULL),
(6, 'Видео', 'Route', 'AdminVideosControllerGetIndex', NULL, 'fa fa-video-camera', 0, 1, 0, 1, 6, '2018-04-10 06:29:21', NULL),
(7, 'Пользователи', 'Route', 'AdminCmsUsers1ControllerGetIndex', NULL, 'fa fa-users', 0, 1, 0, 1, 7, '2018-04-10 07:03:52', NULL),
(8, 'TABUN', 'Route', 'AdminTabunsControllerGetIndex', NULL, 'fa fa-barcode', 0, 1, 0, 1, 8, '2018-04-10 23:51:03', NULL),
(9, 'Новости', 'Route', 'AdminNewsControllerGetIndex', NULL, 'fa fa-list', 0, 1, 0, 1, 9, '2018-04-11 00:44:16', NULL),
(10, 'Опросы', 'Route', 'AdminInterviewsControllerGetIndex', NULL, 'fa fa-inbox', 0, 1, 0, 1, 10, '2018-04-11 02:29:22', NULL),
(11, 'Вакансии', 'Route', 'AdminVacantsControllerGetIndex', NULL, 'fa fa-comment', 0, 1, 0, 1, 11, '2018-04-16 04:48:47', NULL),
(12, 'О нас', 'Route', 'AdminAboutsControllerGetIndex', NULL, 'fa fa-eye-slash', 0, 1, 0, 1, 12, '2018-04-16 05:16:46', NULL),
(14, 'Отзывы', 'Route', 'AdminComments25ControllerGetIndex', NULL, 'fa fa-twitch', 0, 1, 0, 1, 13, '2018-04-16 05:42:55', NULL),
(15, 'Вопрос-Ответ', 'Route', 'AdminQnasControllerGetIndex', NULL, 'fa fa-question-circle', 0, 1, 0, 1, 14, '2018-04-17 01:43:20', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(5, 5, 1),
(6, 4, 1),
(7, 6, 1),
(8, 7, 1),
(9, 8, 1),
(10, 9, 1),
(11, 10, 1),
(12, 11, 1),
(13, 12, 1),
(14, 13, 1),
(15, 14, 1),
(16, 15, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2018-04-10 01:37:52', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2018-04-10 01:37:52', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2018-04-10 01:37:52', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2018-04-10 01:37:52', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2018-04-10 01:37:52', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2018-04-10 01:37:52', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2018-04-10 01:37:52', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2018-04-10 01:37:52', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2018-04-10 01:37:52', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2018-04-10 01:37:52', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-04-10 01:37:52', NULL, NULL),
(12, 'Контентные страницы', 'fa fa-th-list', 'content_pages', 'content_pages', 'AdminContentPagesController', 0, 0, '2018-04-10 01:38:35', NULL, NULL),
(13, 'Адреса эл.почты', 'fa fa-envelope', 'emails', 'emails', 'AdminEmailsController', 0, 0, '2018-04-10 01:40:37', NULL, NULL),
(14, 'Уникальные технологии', 'fa fa-star', 'unique_techs', 'unique_techs', 'AdminUniqueTechs1Controller', 0, 0, '2018-04-10 01:41:30', NULL, NULL),
(15, 'Группы документов', 'fa fa-star', 'document_groups', 'document_groups', 'AdminDocumentGroups1Controller', 0, 0, '2018-04-10 01:43:20', NULL, NULL),
(16, 'Документы', 'fa fa-book', 'documents', 'documents', 'AdminDocuments1Controller', 0, 0, '2018-04-10 01:44:20', NULL, NULL),
(17, 'Видео', 'fa fa-video-camera', 'videos', 'videos', 'AdminVideosController', 0, 0, '2018-04-10 06:29:21', NULL, NULL),
(18, 'Пользователи', 'fa fa-users', 'cms_users', 'cms_users', 'AdminCmsUsers1Controller', 0, 0, '2018-04-10 07:03:52', NULL, NULL),
(19, 'TABUN', 'fa fa-barcode', 'tabuns', 'tabuns', 'AdminTabunsController', 0, 0, '2018-04-10 23:51:03', NULL, NULL),
(20, 'Новости', 'fa fa-list', 'news', 'news', 'AdminNewsController', 0, 0, '2018-04-11 00:44:16', NULL, NULL),
(21, 'Опросы', 'fa fa-inbox', 'interviews', 'interviews', 'AdminInterviewsController', 0, 0, '2018-04-11 02:29:22', NULL, NULL),
(22, 'Вакансии', 'fa fa-comment', 'vacants', 'vacants', 'AdminVacantsController', 0, 0, '2018-04-16 04:48:47', NULL, NULL),
(23, 'О нас', 'fa fa-eye-slash', 'abouts', 'abouts', 'AdminAboutsController', 0, 0, '2018-04-16 05:16:46', NULL, NULL),
(24, 'Отзывы', 'fa fa-twitch', 'comments', 'comments', 'AdminCommentsController', 0, 0, '2018-04-16 05:40:22', NULL, '2018-04-16 05:42:34'),
(25, 'Отзывы', 'fa fa-twitch', 'comments25', 'comments', 'AdminComments25Controller', 0, 0, '2018-04-16 05:42:55', NULL, NULL),
(26, 'Вопрос-Ответ', 'fa fa-question-circle', 'qnas', 'qnas', 'AdminQnasController', 0, 0, '2018-04-17 01:43:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-blue', '2018-04-10 01:37:52', NULL),
(2, 'Корректор-оператор сайта', 0, 'skin-purple', NULL, NULL),
(3, 'Регистратор', 0, 'skin-yellow', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2018-04-10 01:37:52', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2018-04-10 01:37:52', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2018-04-10 01:37:52', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2018-04-10 01:37:52', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2018-04-10 01:37:52', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2018-04-10 01:37:52', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2018-04-10 01:37:52', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2018-04-10 01:37:52', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2018-04-10 01:37:52', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2018-04-10 01:37:52', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2018-04-10 01:37:52', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
(18, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(19, 1, 1, 1, 1, 1, 2, 12, NULL, NULL),
(20, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(24, 1, 1, 1, 1, 1, 3, 18, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(30, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(31, 1, 1, 1, 1, 1, 1, 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2018-04-10 01:37:52', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2018-04-10 01:37:52', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2018-04-10 01:37:52', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@mintrocket.ru', 'text', NULL, NULL, '2018-04-10 01:37:52', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'sendmail', 'select', 'smtp,mail,sendmail', NULL, '2018-04-10 01:37:52', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', NULL, 'text', NULL, NULL, '2018-04-10 01:37:52', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-04-10 01:37:52', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', NULL, 'text', NULL, NULL, '2018-04-10 01:37:52', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', NULL, 'text', NULL, NULL, '2018-04-10 01:37:52', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Mintrocket', 'text', NULL, NULL, '2018-04-10 01:37:52', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-04-10 01:37:52', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', '', 'upload_image', NULL, NULL, '2018-04-10 01:37:52', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', '', 'upload_image', NULL, NULL, '2018-04-10 01:37:52', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-04-10 01:37:52', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2018-04-10 01:37:52', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2018-04-10 01:37:52', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@mintrocket.ru', '$2y$10$.xPlhz/rjeF24xW6jzZFDuPhearhrqQw0BkfLQECOJQeenXcYdWDy', 1, '2018-04-10 01:37:52', NULL, 'Active');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answered` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `name`, `phone`, `comment`, `answered`, `published`, `created_at`, `updated_at`, `answer`) VALUES
(1, 'Имярек', '123', 'Отзыв', 0, 1, '2018-04-16 06:24:07', '2018-04-17 00:46:30', ''),
(2, 'Имя', '123123', 'Привет вам', 0, 0, '2018-04-17 00:23:36', '2018-04-17 03:54:41', '<p>И вам не хворать</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `content_pages`
--

CREATE TABLE `content_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_eng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `content_pages`
--

INSERT INTO `content_pages` (`id`, `title`, `title_eng`, `content`, `seo_title`, `seo_description`, `seo_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Заголовок один', 'Title one', '<p>Проверочная страница</p><p><br></p><p>Page for testing</p>', NULL, NULL, NULL, '2018-04-10 04:48:56', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `chief_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_URL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_groups_id` int(10) UNSIGNED NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkbox_show_about` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `documents`
--

INSERT INTO `documents` (`id`, `title`, `header_URL`, `document_groups_id`, `attach`, `checkbox_show_about`, `created_at`, `updated_at`) VALUES
(1, 'git test', 'github.com', 1, NULL, 0, '2018-04-10 01:57:19', '2018-04-17 00:26:20');

-- --------------------------------------------------------

--
-- Структура таблицы `document_groups`
--

CREATE TABLE `document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `document_groups`
--

INSERT INTO `document_groups` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Обычные документы', '2018-04-10 01:46:25', NULL),
(2, 'Важные документы', '2018-04-10 01:46:30', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `emails`
--

INSERT INTO `emails` (`id`, `title`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Тест', 'test@test.test', '2018-04-10 06:02:32', NULL),
(2, 'Тест 2', 'test2@test.test', '2018-04-10 07:25:07', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `interviews`
--

CREATE TABLE `interviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `interviews`
--

INSERT INTO `interviews` (`id`, `title`, `options`, `created_at`, `updated_at`) VALUES
(1, 'test', '[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 11\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}]', '2018-04-12 01:25:22', NULL),
(2, 'Проверочный опрос', '[{\"id\": 0, \"type\": \"radio\", \"title\": \"Вы  видите этот опрос?\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"Да\"}, {\"id\": 1, \"count\": 0, \"title\": \"Нет\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"Вы можете выбрать варианты?\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ и 3\"}]}]', '2018-04-12 01:48:49', NULL),
(3, 'test opros', '[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"testtest\"}, {\"id\": 1, \"count\": 0, \"title\": \"test\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"adfgad\"}, {\"id\": 1, \"count\": 0, \"title\": \"adgfdag\"}]}]', '2018-04-12 03:31:39', NULL),
(4, 'test opros 222', '[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 2, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 1, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 2, \"title\": \"ответ и 2\"}, {\"id\": 2, \"count\": 2, \"title\": \"ответ 3 nhb nhbgbd\"}]}, {\"id\": 2, \"type\": \"radio\", \"title\": \"вопрос 3  новый\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1111\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 22\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 333\"}, {\"id\": 3, \"count\": 2, \"title\": \"ответ 4\"}]}]', '2018-04-12 04:26:46', '2018-04-12 07:13:33'),
(6, 'test opros 2bak', '[{\"id\": 0, \"type\": \"radio\", \"title\": \"вопрос 1\", \"answers\": [{\"id\": 0, \"count\": 1, \"title\": \"ответ или 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ или 2\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"вопрос 2\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ и 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ и 2\"}]}, {\"id\": 2, \"type\": \"radio\", \"title\": \"вопрос 3\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"ответ 1\"}, {\"id\": 1, \"count\": 0, \"title\": \"ответ 2\"}, {\"id\": 2, \"count\": 0, \"title\": \"ответ 3\"}]}]', '2018-04-12 04:26:46', '2018-04-12 06:18:39'),
(7, 'Опрос от 170418', '[{\"id\": 0, \"type\": \"radio\", \"title\": \"Откуда ты пришел?\", \"answers\": [{\"id\": 0, \"count\": 0, \"title\": \"Да\"}, {\"id\": 1, \"count\": 0, \"title\": \"Нет\"}, {\"id\": 2, \"count\": 1, \"title\": \"Наверное\"}]}, {\"id\": 1, \"type\": \"checkbox\", \"title\": \"Ты?\", \"answers\": [{\"id\": 0, \"count\": 1, \"title\": \"Я\"}, {\"id\": 1, \"count\": 1, \"title\": \"Я?\"}, {\"id\": 2, \"count\": 0, \"title\": \"Нет\"}]}]', '2018-04-17 03:56:38', '2018-04-17 03:56:53');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(86, '2016_08_07_145904_add_table_cms_apicustom', 1),
(87, '2016_08_07_150834_add_table_cms_dashboard', 1),
(88, '2016_08_07_151210_add_table_cms_logs', 1),
(89, '2016_08_07_151211_add_details_cms_logs', 1),
(90, '2016_08_07_152014_add_table_cms_privileges', 1),
(91, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(92, '2016_08_07_152320_add_table_cms_settings', 1),
(93, '2016_08_07_152421_add_table_cms_users', 1),
(94, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(95, '2016_08_07_154624_add_table_cms_moduls', 1),
(96, '2016_08_17_225409_add_status_cms_users', 1),
(97, '2016_08_20_125418_add_table_cms_notifications', 1),
(98, '2016_09_04_033706_add_table_cms_email_queues', 1),
(99, '2016_09_16_035347_add_group_setting', 1),
(100, '2016_09_16_045425_add_label_setting', 1),
(101, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(102, '2016_10_01_141740_add_method_type_apicustom', 1),
(103, '2016_10_01_141846_add_parameters_apicustom', 1),
(104, '2016_10_01_141934_add_responses_apicustom', 1),
(105, '2016_10_01_144826_add_table_apikey', 1),
(106, '2016_11_14_141657_create_cms_menus', 1),
(107, '2016_11_15_132350_create_cms_email_templates', 1),
(108, '2016_11_15_190410_create_cms_statistics', 1),
(109, '2016_11_17_102740_create_cms_statistic_components', 1),
(110, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(111, '2017_08_18_111216_add_deleted_at_cms_notifications', 1),
(112, '2018_04_09_123241_create_content_pages_table', 1),
(113, '2018_04_10_053614_create_emails_table', 1),
(114, '2018_04_10_054057_create_unique_techs_table', 1),
(115, '2018_04_10_055337_create_document_groups_table', 1),
(116, '2018_04_10_055635_create_documents_table', 1),
(117, '2018_04_10_104342_create_tabuns_table', 2),
(118, '2018_04_10_104527_create_videos_table', 2),
(119, '2018_04_10_104935_create_interviews_table', 9),
(120, '2018_04_10_105540_create_users_table', 2),
(122, '2018_04_10_120100_update_documents_table', 4),
(123, '2018_04_10_123927_create_news_table', 5),
(124, '2018_04_10_124338_create_divisions_table', 6),
(125, '2018_04_10_124339_create_specialists_table', 7),
(127, '2018_04_11_045612_update_divisions_table_for_chief_id', 8),
(128, '2018_04_16_094523_create_vacants_table', 10),
(129, '2018_04_16_101434_create_abouts_table', 11),
(131, '2018_04_16_102742_create_comments_table', 12),
(133, '2018_04_16_111645_update_divisions_table', 13),
(135, '2018_04_10_115726_update_videos_table', 14),
(136, '2018_04_16_111540_update_comments_table', 15),
(139, '2018_04_17_064024_create_qnas_table', 16);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `qnas`
--

CREATE TABLE `qnas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `qnas`
--

INSERT INTO `qnas` (`id`, `name`, `phone`, `title`, `answer`, `published`, `created_at`, `updated_at`) VALUES
(1, 'Иван', '123', 'На этот вопрос ответят?', NULL, NULL, '2018-04-17 01:47:25', NULL),
(2, 'Иван', NULL, 'Как насчет этого ответа?', '<p>Ответят</p>', 1, '2018-04-17 01:47:47', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `specialists`
--

CREATE TABLE `specialists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_priem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `graph_priem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divisions_id` int(10) UNSIGNED NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkbox_show_about` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tabuns`
--

CREATE TABLE `tabuns` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `textfield` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `unique_techs`
--

CREATE TABLE `unique_techs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `unique_techs`
--

INSERT INTO `unique_techs` (`id`, `title`, `description`, `image`, `weight`, `seo_title`, `seo_description`, `seo_keywords`, `created_at`, `updated_at`) VALUES
(1, 'test', 'Описание', 'uploads/1/2018-04/slide_logo_1.png', 1, NULL, NULL, NULL, '2018-04-10 06:03:16', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `vacants`
--

CREATE TABLE `vacants` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checkbox_show` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `vacants`
--

INSERT INTO `vacants` (`id`, `title`, `description`, `payment`, `phone`, `created_at`, `updated_at`, `checkbox_show`) VALUES
(1, 'Старший человек', '<p>Он тут главный? </p><p>Или нет</p>', 'Много', '123456', '2018-04-16 04:52:03', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `videos`
--

INSERT INTO `videos` (`id`, `title`, `URL`, `video`, `created_at`, `updated_at`) VALUES
(1, 'giphy mp4 проверка', 'https://giphy.com/stickers/3d-emoji-3ohhwjlY5Qvz1SA4Y8', 'uploads/1/2018-04/explosion_explode_sticker_by_valeris_original.mp4', '2018-04-10 06:38:12', '2018-04-10 06:59:24');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `content_pages`
--
ALTER TABLE `content_pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisions_chief_id_foreign` (`chief_id`);

--
-- Индексы таблицы `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_document_groups_id_foreign` (`document_groups_id`);

--
-- Индексы таблицы `document_groups`
--
ALTER TABLE `document_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `qnas`
--
ALTER TABLE `qnas`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `specialists`
--
ALTER TABLE `specialists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialists_divisions_id_foreign` (`divisions_id`);

--
-- Индексы таблицы `tabuns`
--
ALTER TABLE `tabuns`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `unique_techs`
--
ALTER TABLE `unique_techs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vacants`
--
ALTER TABLE `vacants`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT для таблицы `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT для таблицы `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `content_pages`
--
ALTER TABLE `content_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `document_groups`
--
ALTER TABLE `document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `qnas`
--
ALTER TABLE `qnas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `specialists`
--
ALTER TABLE `specialists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tabuns`
--
ALTER TABLE `tabuns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `unique_techs`
--
ALTER TABLE `unique_techs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `vacants`
--
ALTER TABLE `vacants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `divisions`
--
ALTER TABLE `divisions`
  ADD CONSTRAINT `divisions_chief_id_foreign` FOREIGN KEY (`chief_id`) REFERENCES `specialists` (`id`);

--
-- Ограничения внешнего ключа таблицы `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_document_groups_id_foreign` FOREIGN KEY (`document_groups_id`) REFERENCES `document_groups` (`id`);

--
-- Ограничения внешнего ключа таблицы `specialists`
--
ALTER TABLE `specialists`
  ADD CONSTRAINT `specialists_divisions_id_foreign` FOREIGN KEY (`divisions_id`) REFERENCES `divisions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
