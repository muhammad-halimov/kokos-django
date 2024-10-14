-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 14 2024 г., 20:55
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `django-kokos`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `auth_permission`
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add Age category', 6, 'add_agecategory'),
(22, 'Can change Age category', 6, 'change_agecategory'),
(23, 'Can delete Age category', 6, 'delete_agecategory'),
(24, 'Can view Age category', 6, 'view_agecategory'),
(25, 'Can add Arena', 7, 'add_arena'),
(26, 'Can change Arena', 7, 'change_arena'),
(27, 'Can delete Arena', 7, 'delete_arena'),
(28, 'Can view Arena', 7, 'view_arena'),
(29, 'Can add Brand', 8, 'add_brand'),
(30, 'Can change Brand', 8, 'change_brand'),
(31, 'Can delete Brand', 8, 'delete_brand'),
(32, 'Can view Brand', 8, 'view_brand'),
(33, 'Can add Breeding service', 9, 'add_breedingservice'),
(34, 'Can change Breeding service', 9, 'change_breedingservice'),
(35, 'Can delete Breeding service', 9, 'delete_breedingservice'),
(36, 'Can view Breeding service', 9, 'view_breedingservice'),
(37, 'Can add Breeding service type', 10, 'add_breedingservicetype'),
(38, 'Can change Breeding service type', 10, 'change_breedingservicetype'),
(39, 'Can delete Breeding service type', 10, 'delete_breedingservicetype'),
(40, 'Can view Breeding service type', 10, 'view_breedingservicetype'),
(41, 'Can add City', 11, 'add_city'),
(42, 'Can change City', 11, 'change_city'),
(43, 'Can delete City', 11, 'delete_city'),
(44, 'Can view City', 11, 'view_city'),
(45, 'Can add Clothes type', 12, 'add_clothestype'),
(46, 'Can change Clothes type', 12, 'change_clothestype'),
(47, 'Can delete Clothes type', 12, 'delete_clothestype'),
(48, 'Can view Clothes type', 12, 'view_clothestype'),
(49, 'Can add Coach staff', 13, 'add_coachstaff'),
(50, 'Can change Coach staff', 13, 'change_coachstaff'),
(51, 'Can delete Coach staff', 13, 'delete_coachstaff'),
(52, 'Can view Coach staff', 13, 'view_coachstaff'),
(53, 'Can add Coach staff type', 14, 'add_coachstafftype'),
(54, 'Can change Coach staff type', 14, 'change_coachstafftype'),
(55, 'Can delete Coach staff type', 14, 'delete_coachstafftype'),
(56, 'Can view Coach staff type', 14, 'view_coachstafftype'),
(57, 'Can add Coach summary statistics', 15, 'add_coachsummarystatistics'),
(58, 'Can change Coach summary statistics', 15, 'change_coachsummarystatistics'),
(59, 'Can delete Coach summary statistics', 15, 'delete_coachsummarystatistics'),
(60, 'Can view Coach summary statistics', 15, 'view_coachsummarystatistics'),
(61, 'Can add Color', 16, 'add_color'),
(62, 'Can change Color', 16, 'change_color'),
(63, 'Can delete Color', 16, 'delete_color'),
(64, 'Can view Color', 16, 'view_color'),
(65, 'Can add Director', 17, 'add_director'),
(66, 'Can change Director', 17, 'change_director'),
(67, 'Can delete Director', 17, 'delete_director'),
(68, 'Can view Director', 17, 'view_director'),
(69, 'Can add Director type', 18, 'add_directortype'),
(70, 'Can change Director type', 18, 'change_directortype'),
(71, 'Can delete Director type', 18, 'delete_directortype'),
(72, 'Can view Director type', 18, 'view_directortype'),
(73, 'Can add Footballer', 19, 'add_footballer'),
(74, 'Can change Footballer', 19, 'change_footballer'),
(75, 'Can delete Footballer', 19, 'delete_footballer'),
(76, 'Can view Footballer', 19, 'view_footballer'),
(77, 'Can add Footballer position', 20, 'add_footballerposition'),
(78, 'Can change Footballer position', 20, 'change_footballerposition'),
(79, 'Can delete Footballer position', 20, 'delete_footballerposition'),
(80, 'Can view Footballer position', 20, 'view_footballerposition'),
(81, 'Can add Gallery', 21, 'add_gallery'),
(82, 'Can change Gallery', 21, 'change_gallery'),
(83, 'Can delete Gallery', 21, 'delete_gallery'),
(84, 'Can view Gallery', 21, 'view_gallery'),
(85, 'Can add Gender', 22, 'add_gender'),
(86, 'Can change Gender', 22, 'change_gender'),
(87, 'Can delete Gender', 22, 'delete_gender'),
(88, 'Can view Gender', 22, 'view_gender'),
(89, 'Can add General statistics all', 23, 'add_generalstatisticsall'),
(90, 'Can change General statistics all', 23, 'change_generalstatisticsall'),
(91, 'Can delete General statistics all', 23, 'delete_generalstatisticsall'),
(92, 'Can view General statistics all', 23, 'view_generalstatisticsall'),
(93, 'Can add General statistics tournament', 24, 'add_generalstatisticstournament'),
(94, 'Can change General statistics tournament', 24, 'change_generalstatisticstournament'),
(95, 'Can delete General statistics tournament', 24, 'delete_generalstatisticstournament'),
(96, 'Can view General statistics tournament', 24, 'view_generalstatisticstournament'),
(97, 'Can add Header Link', 25, 'add_headermodel'),
(98, 'Can change Header Link', 25, 'change_headermodel'),
(99, 'Can delete Header Link', 25, 'delete_headermodel'),
(100, 'Can view Header Link', 25, 'view_headermodel'),
(101, 'Can add Match', 26, 'add_match'),
(102, 'Can change Match', 26, 'change_match'),
(103, 'Can delete Match', 26, 'delete_match'),
(104, 'Can view Match', 26, 'view_match'),
(105, 'Can add Material', 27, 'add_material'),
(106, 'Can change Material', 27, 'change_material'),
(107, 'Can delete Material', 27, 'delete_material'),
(108, 'Can view Material', 27, 'view_material'),
(109, 'Can add Media', 28, 'add_media'),
(110, 'Can change Media', 28, 'change_media'),
(111, 'Can delete Media', 28, 'delete_media'),
(112, 'Can view Media', 28, 'view_media'),
(113, 'Can add Neutral field statistics', 29, 'add_neutralfield'),
(114, 'Can change Neutral field statistics', 29, 'change_neutralfield'),
(115, 'Can delete Neutral field statistics', 29, 'delete_neutralfield'),
(116, 'Can view Neutral field statistics', 29, 'view_neutralfield'),
(117, 'Can add Outcome', 30, 'add_outcome'),
(118, 'Can change Outcome', 30, 'change_outcome'),
(119, 'Can delete Outcome', 30, 'delete_outcome'),
(120, 'Can view Outcome', 30, 'view_outcome'),
(121, 'Can add Own field statistics', 31, 'add_ownfield'),
(122, 'Can change Own field statistics', 31, 'change_ownfield'),
(123, 'Can delete Own field statistics', 31, 'delete_ownfield'),
(124, 'Can view Own field statistics', 31, 'view_ownfield'),
(125, 'Can add Penalty Scored', 32, 'add_penaltyscored'),
(126, 'Can change Penalty Scored', 32, 'change_penaltyscored'),
(127, 'Can delete Penalty Scored', 32, 'delete_penaltyscored'),
(128, 'Can view Penalty Scored', 32, 'view_penaltyscored'),
(129, 'Can add Season', 33, 'add_season'),
(130, 'Can change Season', 33, 'change_season'),
(131, 'Can delete Season', 33, 'delete_season'),
(132, 'Can view Season', 33, 'view_season'),
(133, 'Can add Size', 34, 'add_size'),
(134, 'Can change Size', 34, 'change_size'),
(135, 'Can delete Size', 34, 'delete_size'),
(136, 'Can view Size', 34, 'view_size'),
(137, 'Can add Someone field statistics', 35, 'add_someonefield'),
(138, 'Can change Someone field statistics', 35, 'change_someonefield'),
(139, 'Can delete Someone field statistics', 35, 'delete_someonefield'),
(140, 'Can view Someone field statistics', 35, 'view_someonefield'),
(141, 'Can add Staff', 36, 'add_staff'),
(142, 'Can change Staff', 36, 'change_staff'),
(143, 'Can delete Staff', 36, 'delete_staff'),
(144, 'Can view Staff', 36, 'view_staff'),
(145, 'Can add Staff type', 37, 'add_stafftype'),
(146, 'Can change Staff type', 37, 'change_stafftype'),
(147, 'Can delete Staff type', 37, 'delete_stafftype'),
(148, 'Can view Staff type', 37, 'view_stafftype'),
(149, 'Can add Ticket place', 38, 'add_ticketplace'),
(150, 'Can change Ticket place', 38, 'change_ticketplace'),
(151, 'Can delete Ticket place', 38, 'delete_ticketplace'),
(152, 'Can view Ticket place', 38, 'view_ticketplace'),
(153, 'Can add Tournament', 39, 'add_tournament'),
(154, 'Can change Tournament', 39, 'change_tournament'),
(155, 'Can delete Tournament', 39, 'delete_tournament'),
(156, 'Can view Tournament', 39, 'view_tournament'),
(157, 'Can add Ticket', 40, 'add_ticket'),
(158, 'Can change Ticket', 40, 'change_ticket'),
(159, 'Can delete Ticket', 40, 'delete_ticket'),
(160, 'Can view Ticket', 40, 'view_ticket'),
(161, 'Can add Team', 41, 'add_team'),
(162, 'Can change Team', 41, 'change_team'),
(163, 'Can delete Team', 41, 'delete_team'),
(164, 'Can view Team', 41, 'view_team'),
(165, 'Can add News', 42, 'add_news'),
(166, 'Can change News', 42, 'change_news'),
(167, 'Can delete News', 42, 'delete_news'),
(168, 'Can view News', 42, 'view_news'),
(169, 'Can add Goalkeeper statistics', 43, 'add_goalkeeperstatistics'),
(170, 'Can change Goalkeeper statistics', 43, 'change_goalkeeperstatistics'),
(171, 'Can delete Goalkeeper statistics', 43, 'delete_goalkeeperstatistics'),
(172, 'Can view Goalkeeper statistics', 43, 'view_goalkeeperstatistics'),
(173, 'Can add Footballer statistics', 44, 'add_footballerstatistics'),
(174, 'Can change Footballer statistics', 44, 'change_footballerstatistics'),
(175, 'Can delete Footballer statistics', 44, 'delete_footballerstatistics'),
(176, 'Can view Footballer statistics', 44, 'view_footballerstatistics'),
(177, 'Can add Clothes', 45, 'add_clothes'),
(178, 'Can change Clothes', 45, 'change_clothes'),
(179, 'Can delete Clothes', 45, 'delete_clothes'),
(180, 'Can view Clothes', 45, 'view_clothes'),
(181, 'Can add User', 46, 'add_user'),
(182, 'Can change User', 46, 'change_user'),
(183, 'Can delete User', 46, 'delete_user'),
(184, 'Can view User', 46, 'view_user'),
(185, 'Can add Staff', 36, 'add_administrativestaff'),
(186, 'Can change Staff', 36, 'change_administrativestaff'),
(187, 'Can delete Staff', 36, 'delete_administrativestaff'),
(188, 'Can view Staff', 36, 'view_administrativestaff'),
(189, 'Can add Staff type', 37, 'add_administrativestafftype'),
(190, 'Can change Staff type', 37, 'change_administrativestafftype'),
(191, 'Can delete Staff type', 37, 'delete_administrativestafftype'),
(192, 'Can view Staff type', 37, 'view_administrativestafftype');

-- --------------------------------------------------------

--
-- Структура таблицы `base_administrativestaff`
--

CREATE TABLE `base_administrativestaff` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  `age` decimal(3,2) DEFAULT NULL,
  `work_experience` decimal(3,2) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `base_administrativestafftype`
--

CREATE TABLE `base_administrativestafftype` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `base_administrativestaff_type_staff`
--

CREATE TABLE `base_administrativestaff_type_staff` (
  `id` bigint(20) NOT NULL,
  `administrativestaff_id` bigint(20) NOT NULL,
  `administrativestafftype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `base_agecategory`
--

CREATE TABLE `base_agecategory` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_agecategory`
--

INSERT INTO `base_agecategory` (`id`, `title`, `created`, `updated`) VALUES
(1, 'Подросток', '2024-10-14 14:01:01.208740', '2024-10-14 14:01:01.208761'),
(2, 'Ребенок', '2024-10-14 18:23:52.769098', '2024-10-14 18:23:52.769120'),
(3, 'Взрослый', '2024-10-14 18:23:58.089984', '2024-10-14 18:23:58.090000');

-- --------------------------------------------------------

--
-- Структура таблицы `base_arena`
--

CREATE TABLE `base_arena` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `places_count` decimal(10,2) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_arena`
--

INSERT INTO `base_arena` (`id`, `name`, `country`, `city`, `street`, `places_count`, `created`, `updated`) VALUES
(1, 'Арена 1', 'Страна 1', 'Город 1', 'Улица разбитых фанарей', 250.00, '2024-10-14 14:01:31.774199', '2024-10-14 14:01:31.774211'),
(2, 'Зенит', 'Россия', 'Ижевск', 'Улица разбитых фонарей', 300.00, '2024-10-14 18:24:43.875033', '2024-10-14 18:24:43.875057'),
(3, 'Торпедо', 'Россия', 'Ижевск', 'Странная', 150.00, '2024-10-14 18:28:04.314466', '2024-10-14 18:28:04.314480');

-- --------------------------------------------------------

--
-- Структура таблицы `base_brand`
--

CREATE TABLE `base_brand` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_brand`
--

INSERT INTO `base_brand` (`id`, `title`, `created`, `updated`) VALUES
(1, 'МугаМуга', '2024-10-14 14:02:12.032823', '2024-10-14 14:02:12.032836'),
(2, 'Адидас', '2024-10-14 18:28:13.821770', '2024-10-14 18:28:13.821791'),
(3, 'Найк', '2024-10-14 18:28:17.422170', '2024-10-14 18:28:17.422194'),
(4, 'Merell', '2024-10-14 18:28:27.735263', '2024-10-14 18:28:27.735284');

-- --------------------------------------------------------

--
-- Структура таблицы `base_breedingservice`
--

CREATE TABLE `base_breedingservice` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  `age` decimal(3,2) DEFAULT NULL,
  `work_experience` decimal(3,2) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `base_breedingservicetype`
--

CREATE TABLE `base_breedingservicetype` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `base_breedingservice_type_service`
--

CREATE TABLE `base_breedingservice_type_service` (
  `id` bigint(20) NOT NULL,
  `breedingservice_id` bigint(20) NOT NULL,
  `breedingservicetype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `base_city`
--

CREATE TABLE `base_city` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_city`
--

INSERT INTO `base_city` (`id`, `title`, `date`, `created`, `updated`) VALUES
(1, 'Город 1', '2024-10-14', '2024-10-14 14:02:24.152403', '2024-10-14 14:02:24.152416'),
(2, 'Ижевск', '2024-10-14', '2024-10-14 18:28:37.983117', '2024-10-14 18:28:37.983135'),
(3, 'Краснодар', '2024-10-14', '2024-10-14 18:28:42.685215', '2024-10-14 18:28:42.685233'),
(4, 'Красноярск', '2024-10-14', '2024-10-14 18:28:46.785749', '2024-10-14 18:28:46.785759'),
(5, 'Москва', '2024-10-14', '2024-10-14 18:28:50.426876', '2024-10-14 18:28:50.426893');

-- --------------------------------------------------------

--
-- Структура таблицы `base_clothes`
--

CREATE TABLE `base_clothes` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `remaining_number` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `age_category_id` bigint(20) DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `gender_id` bigint(20) DEFAULT NULL,
  `season_id` bigint(20) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_clothes`
--

INSERT INTO `base_clothes` (`id`, `name`, `price`, `description`, `remaining_number`, `discount`, `created`, `updated`, `age_category_id`, `brand_id`, `color_id`, `gender_id`, `season_id`, `type_id`) VALUES
(3, '1', 12.00, '1212', 12.00, 0.00, '2024-10-14 14:09:27.870891', '2024-10-14 14:09:27.870909', 1, 1, 1, 1, 1, 1),
(4, 'Штаны скороходы', 12820.00, 'Крутые штанзики для скоростной ходьбы', 45.00, 0.00, '2024-10-14 18:32:58.374704', '2024-10-14 18:32:58.374722', 3, 2, 4, 3, 2, 2),
(5, 'Шарф согревающий', 2500.00, 'Супер греющий шарф!', 20.00, 0.00, '2024-10-14 18:34:08.863360', '2024-10-14 18:34:08.863377', 2, 1, 1, 3, 1, 3),
(6, 'Шорты беговые', 5000.00, 'Скоростные скороходы', 10.00, 500.00, '2024-10-14 18:36:36.710387', '2024-10-14 18:36:36.710410', 3, 3, 3, 2, 3, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `base_clothestype`
--

CREATE TABLE `base_clothestype` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_clothestype`
--

INSERT INTO `base_clothestype` (`id`, `title`, `created`, `updated`) VALUES
(1, 'Куртка', '2024-10-14 14:02:39.196412', '2024-10-14 14:02:39.196427'),
(2, 'Штаны', '2024-10-14 18:29:02.050724', '2024-10-14 18:29:02.050740'),
(3, 'Шарф', '2024-10-14 18:33:05.661407', '2024-10-14 18:33:05.661432'),
(4, 'Шорты', '2024-10-14 18:35:00.577289', '2024-10-14 18:35:00.577307');

-- --------------------------------------------------------

--
-- Структура таблицы `base_clothes_materials`
--

CREATE TABLE `base_clothes_materials` (
  `id` bigint(20) NOT NULL,
  `clothes_id` bigint(20) NOT NULL,
  `material_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_clothes_materials`
--

INSERT INTO `base_clothes_materials` (`id`, `clothes_id`, `material_id`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 4, 1),
(4, 5, 2),
(5, 6, 1),
(6, 6, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `base_clothes_media_links`
--

CREATE TABLE `base_clothes_media_links` (
  `id` bigint(20) NOT NULL,
  `clothes_id` bigint(20) NOT NULL,
  `media_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_clothes_media_links`
--

INSERT INTO `base_clothes_media_links` (`id`, `clothes_id`, `media_id`) VALUES
(1, 3, 1),
(2, 4, 3),
(3, 5, 4),
(4, 6, 5),
(5, 6, 6),
(6, 6, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `base_clothes_size`
--

CREATE TABLE `base_clothes_size` (
  `id` bigint(20) NOT NULL,
  `clothes_id` bigint(20) NOT NULL,
  `size_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_clothes_size`
--

INSERT INTO `base_clothes_size` (`id`, `clothes_id`, `size_id`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 4, 1),
(4, 4, 2),
(5, 4, 5),
(6, 5, 1),
(7, 5, 2),
(8, 5, 5),
(9, 6, 1),
(10, 6, 3),
(11, 6, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `base_coachstaff`
--

CREATE TABLE `base_coachstaff` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  `age` decimal(10,2) DEFAULT NULL,
  `work_experience` decimal(10,2) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `statistics_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_coachstaff`
--

INSERT INTO `base_coachstaff` (`id`, `name`, `surname`, `patronymic`, `age`, `work_experience`, `created`, `updated`, `statistics_id`) VALUES
(1, 'Имя 1', 'Фамилия 1', 'Отчество 1', 18.00, 2.00, '2024-10-14 14:10:31.184376', '2024-10-14 14:10:31.184397', NULL),
(2, 'Кирилл', 'Печенькин', 'Дмитриевич', 26.00, 4.00, '2024-10-14 18:38:35.711954', '2024-10-14 18:38:35.711970', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `base_coachstafftype`
--

CREATE TABLE `base_coachstafftype` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_coachstafftype`
--

INSERT INTO `base_coachstafftype` (`id`, `title`, `created`, `updated`) VALUES
(1, 'Тип 1', '2024-10-14 14:10:25.432223', '2024-10-14 14:10:25.432243'),
(2, 'Тип 2', '2024-10-14 18:38:32.090716', '2024-10-14 18:38:32.090730');

-- --------------------------------------------------------

--
-- Структура таблицы `base_coachstaff_type_coach`
--

CREATE TABLE `base_coachstaff_type_coach` (
  `id` bigint(20) NOT NULL,
  `coachstaff_id` bigint(20) NOT NULL,
  `coachstafftype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_coachstaff_type_coach`
--

INSERT INTO `base_coachstaff_type_coach` (`id`, `coachstaff_id`, `coachstafftype_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `base_coachsummarystatistics`
--

CREATE TABLE `base_coachsummarystatistics` (
  `id` bigint(20) NOT NULL,
  `years` date DEFAULT NULL,
  `games` int(11) DEFAULT NULL,
  `winnings` int(11) DEFAULT NULL,
  `draws` int(11) DEFAULT NULL,
  `defeats` int(11) DEFAULT NULL,
  `point_scored` int(11) DEFAULT NULL,
  `percentage_max_possible` double DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `base_color`
--

CREATE TABLE `base_color` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_color`
--

INSERT INTO `base_color` (`id`, `title`, `created`, `updated`) VALUES
(1, 'Черный', '2024-10-14 14:05:07.764613', '2024-10-14 14:05:07.764627'),
(2, 'Серый', '2024-10-14 14:05:12.615518', '2024-10-14 14:05:12.615537'),
(3, 'Белый', '2024-10-14 18:31:08.937803', '2024-10-14 18:31:08.937816'),
(4, 'Синий', '2024-10-14 18:31:12.390991', '2024-10-14 18:31:12.391006');

-- --------------------------------------------------------

--
-- Структура таблицы `base_director`
--

CREATE TABLE `base_director` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  `age` decimal(10,2) DEFAULT NULL,
  `work_experience` decimal(10,2) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `base_directortype`
--

CREATE TABLE `base_directortype` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `base_director_type_director`
--

CREATE TABLE `base_director_type_director` (
  `id` bigint(20) NOT NULL,
  `director_id` bigint(20) NOT NULL,
  `directortype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `base_footballer`
--

CREATE TABLE `base_footballer` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `position_id` bigint(20) DEFAULT NULL,
  `statistics_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_footballer`
--

INSERT INTO `base_footballer` (`id`, `name`, `surname`, `patronymic`, `age`, `weight`, `created`, `updated`, `position_id`, `statistics_id`) VALUES
(1, 'Имя 1', 'Фамилия 1', 'Отчество 1', 21, 21, '2024-10-14 14:12:56.679830', '2024-10-14 14:12:56.679842', 1, NULL),
(2, 'Максим', 'Футбик', 'Фуууутбоооол', 23, 67, '2024-10-14 18:48:48.330483', '2024-10-14 18:48:48.330501', 2, 1),
(3, 'Артем', 'ОООфутбол', 'Крутяк', 32, 78, '2024-10-14 18:49:27.911095', '2024-10-14 18:49:27.911119', 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `base_footballerposition`
--

CREATE TABLE `base_footballerposition` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_footballerposition`
--

INSERT INTO `base_footballerposition` (`id`, `title`, `created`, `updated`) VALUES
(1, 'Вратарь', '2024-10-14 14:10:44.829617', '2024-10-14 14:10:44.829631'),
(2, 'Нападающий', '2024-10-14 18:48:44.959213', '2024-10-14 18:48:44.959225'),
(3, 'Полузащитник', '2024-10-14 18:49:26.654916', '2024-10-14 18:49:26.654937');

-- --------------------------------------------------------

--
-- Структура таблицы `base_footballerstatistics`
--

CREATE TABLE `base_footballerstatistics` (
  `id` bigint(20) NOT NULL,
  `years` date DEFAULT NULL,
  `matches` int(11) DEFAULT NULL,
  `starting_lineup` int(11) DEFAULT NULL,
  `came_substitute` int(11) DEFAULT NULL,
  `been_replaced` int(11) DEFAULT NULL,
  `goals` int(11) DEFAULT NULL,
  `yellow_cards` int(11) DEFAULT NULL,
  `red_cards` int(11) DEFAULT NULL,
  `minutes_played` int(11) DEFAULT NULL,
  `ball_selection` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_footballerstatistics`
--

INSERT INTO `base_footballerstatistics` (`id`, `years`, `matches`, `starting_lineup`, `came_substitute`, `been_replaced`, `goals`, `yellow_cards`, `red_cards`, `minutes_played`, `ball_selection`, `assists`, `created`, `updated`) VALUES
(1, '2024-10-14', 21, 2, 23, 1, 55, 12, 1, 2390, 12, 12, '2024-10-14 14:17:57.294757', '2024-10-14 14:17:57.294769'),
(2, '2024-10-14', 200, 190, 9, 1, 200, 5, 0, 900, 60, 45, '2024-10-14 18:41:22.454642', '2024-10-14 18:41:22.454655');

-- --------------------------------------------------------

--
-- Структура таблицы `base_footballerstatistics_penalties`
--

CREATE TABLE `base_footballerstatistics_penalties` (
  `id` bigint(20) NOT NULL,
  `footballerstatistics_id` bigint(20) NOT NULL,
  `penaltyscored_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_footballerstatistics_penalties`
--

INSERT INTO `base_footballerstatistics_penalties` (`id`, `footballerstatistics_id`, `penaltyscored_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `base_footballer_image`
--

CREATE TABLE `base_footballer_image` (
  `id` bigint(20) NOT NULL,
  `footballer_id` bigint(20) NOT NULL,
  `media_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_footballer_image`
--

INSERT INTO `base_footballer_image` (`id`, `footballer_id`, `media_id`) VALUES
(1, 1, 1),
(2, 2, 15),
(3, 3, 16),
(4, 3, 17);

-- --------------------------------------------------------

--
-- Структура таблицы `base_gallery`
--

CREATE TABLE `base_gallery` (
  `id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_gallery`
--

INSERT INTO `base_gallery` (`id`, `created`, `updated`) VALUES
(1, '2024-10-14 18:46:37.783823', '2024-10-14 18:46:37.783845');

-- --------------------------------------------------------

--
-- Структура таблицы `base_gallery_media`
--

CREATE TABLE `base_gallery_media` (
  `id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  `media_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_gallery_media`
--

INSERT INTO `base_gallery_media` (`id`, `gallery_id`, `media_id`) VALUES
(1, 1, 12),
(2, 1, 13),
(3, 1, 14);

-- --------------------------------------------------------

--
-- Структура таблицы `base_gender`
--

CREATE TABLE `base_gender` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_gender`
--

INSERT INTO `base_gender` (`id`, `title`, `created`, `updated`) VALUES
(1, 'Женщина', '2024-10-14 14:05:01.534601', '2024-10-14 14:05:01.534624'),
(2, 'Мужчина', '2024-10-14 18:30:58.676619', '2024-10-14 18:30:58.676640'),
(3, 'Унисекс', '2024-10-14 18:31:03.278940', '2024-10-14 18:31:03.278960');

-- --------------------------------------------------------

--
-- Структура таблицы `base_generalstatisticsall`
--

CREATE TABLE `base_generalstatisticsall` (
  `id` bigint(20) NOT NULL,
  `winnings` int(11) DEFAULT NULL,
  `defeats` int(11) DEFAULT NULL,
  `draws` int(11) DEFAULT NULL,
  `goals_scored` int(11) DEFAULT NULL,
  `goals_conceded` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `neutral_field_id` bigint(20) DEFAULT NULL,
  `own_field_id` bigint(20) DEFAULT NULL,
  `someone_field_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_generalstatisticsall`
--

INSERT INTO `base_generalstatisticsall` (`id`, `winnings`, `defeats`, `draws`, `goals_scored`, `goals_conceded`, `score`, `created`, `updated`, `neutral_field_id`, `own_field_id`, `someone_field_id`) VALUES
(1, 120, 40, 12, 2000, 2999, 1222, '2024-10-14 14:19:42.371424', '2024-10-14 14:19:42.371445', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `base_generalstatisticstournament`
--

CREATE TABLE `base_generalstatisticstournament` (
  `id` bigint(20) NOT NULL,
  `winnings` int(11) DEFAULT NULL,
  `defeats` int(11) DEFAULT NULL,
  `draws` int(11) DEFAULT NULL,
  `goals_scored` int(11) DEFAULT NULL,
  `goals_conceded` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `own_field_id` bigint(20) DEFAULT NULL,
  `someone_field_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_generalstatisticstournament`
--

INSERT INTO `base_generalstatisticstournament` (`id`, `winnings`, `defeats`, `draws`, `goals_scored`, `goals_conceded`, `score`, `created`, `updated`, `own_field_id`, `someone_field_id`) VALUES
(1, 100, 20, 30, 500, 456, 500, '2024-10-14 18:42:47.483710', '2024-10-14 18:42:47.483725', 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `base_goalkeeperstatistics`
--

CREATE TABLE `base_goalkeeperstatistics` (
  `id` bigint(20) NOT NULL,
  `years` date DEFAULT NULL,
  `games` int(11) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `goalkeeper_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_goalkeeperstatistics`
--

INSERT INTO `base_goalkeeperstatistics` (`id`, `years`, `games`, `created`, `updated`, `goalkeeper_id`) VALUES
(1, '2024-10-14', 200, '2024-10-14 18:40:21.709440', '2024-10-14 18:40:21.709459', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `base_headermodel`
--

CREATE TABLE `base_headermodel` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `base_match`
--

CREATE TABLE `base_match` (
  `id` bigint(20) NOT NULL,
  `tour` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `arena_id` bigint(20) DEFAULT NULL,
  `outcome_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_match`
--

INSERT INTO `base_match` (`id`, `tour`, `date`, `created`, `updated`, `arena_id`, `outcome_id`) VALUES
(1, 1.00, '2024-10-14', '2024-10-14 18:52:53.741744', '2024-10-14 18:52:53.741754', 2, 3),
(2, 2.00, '2024-10-14', '2024-10-14 18:53:02.347044', '2024-10-14 18:53:02.347056', 1, 1),
(3, 1.00, '2024-10-14', '2024-10-14 18:54:01.749111', '2024-10-14 18:54:01.749121', 3, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `base_match_teams`
--

CREATE TABLE `base_match_teams` (
  `id` bigint(20) NOT NULL,
  `match_id` bigint(20) NOT NULL,
  `team_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_match_teams`
--

INSERT INTO `base_match_teams` (`id`, `match_id`, `team_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `base_material`
--

CREATE TABLE `base_material` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_material`
--

INSERT INTO `base_material` (`id`, `title`, `created`, `updated`) VALUES
(1, 'Материал 1', '2024-10-14 14:06:07.494529', '2024-10-14 14:06:07.494552'),
(2, 'Материал 2', '2024-10-14 14:06:12.499293', '2024-10-14 14:06:12.499306');

-- --------------------------------------------------------

--
-- Структура таблицы `base_media`
--

CREATE TABLE `base_media` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_media`
--

INSERT INTO `base_media` (`id`, `title`, `created`, `updated`, `source`) VALUES
(1, 'Медиа 1', '2024-10-14 14:05:54.569772', '2024-10-14 14:05:54.569790', 'media/1c3cd8bb08a081e8812271d9883a198e.webp'),
(2, 'Штаны', '2024-10-14 18:32:36.050647', '2024-10-14 18:32:36.050659', 'default.svg'),
(3, NULL, '2024-10-14 18:32:46.566381', '2024-10-14 18:32:46.566398', 'media/images.jpg'),
(4, NULL, '2024-10-14 18:34:00.619313', '2024-10-14 18:34:00.619330', 'media/2d8f2007d7200779e98447219c8aecd4.jpg'),
(5, NULL, '2024-10-14 18:35:55.723000', '2024-10-14 18:35:55.723014', 'media/2255439743_1_5.jpg'),
(6, NULL, '2024-10-14 18:36:10.688498', '2024-10-14 18:36:10.688510', 'media/3-9c4ceb10032dcdb531edcc102978572d.jpg'),
(7, NULL, '2024-10-14 18:36:27.926569', '2024-10-14 18:36:27.926582', 'media/images1231231.jpg'),
(8, NULL, '2024-10-14 18:45:25.107819', '2024-10-14 18:45:25.107843', 'media/145656_Futbolyniy_match_Ural_Terek_Ekaterinburg_5184.3456.0.0.jpg'),
(9, NULL, '2024-10-14 18:45:58.317319', '2024-10-14 18:45:58.317340', 'media/145656_Futbolyniy_match_Ural_Terek_Ekaterinburg_5184.3456.0.0_ZY4jVS9.jpg'),
(10, NULL, '2024-10-14 18:46:06.843384', '2024-10-14 18:46:06.843408', 'media/145656_Futbolyniy_match_Ural_Terek_Ekaterinburg_5184.3456.0.0_UEHmtSZ.jpg'),
(11, NULL, '2024-10-14 18:46:13.010228', '2024-10-14 18:46:13.010251', 'media/Ekaterinburg_futbol_fk_ural_futbolisti_boryba_na_pole_futbolyniy_klub_ural_250x0_3_7IsEeCL.jpg'),
(12, NULL, '2024-10-14 18:46:26.113578', '2024-10-14 18:46:26.113600', 'media/cbd00bc8d6652ad93d25915ad4c8744b_250x0_1440.811.0.0.jpg'),
(13, NULL, '2024-10-14 18:46:30.457281', '2024-10-14 18:46:30.457303', 'media/145656_Futbolyniy_match_Ural_Terek_Ekaterinburg_5184.3456.0.0_0XxV3JN.jpg'),
(14, NULL, '2024-10-14 18:46:36.360193', '2024-10-14 18:46:36.360206', 'media/Ekaterinburg_futbol_fk_ural_futbolisti_boryba_na_pole_futbolyniy_klub_ural_250x0_3_Rq9tIXB.jpg'),
(15, NULL, '2024-10-14 18:48:37.563384', '2024-10-14 18:48:37.563405', 'media/photo_2024-09-17_04-37-22.jpg'),
(16, NULL, '2024-10-14 18:49:12.050799', '2024-10-14 18:49:12.050820', 'media/1278643.webp'),
(17, NULL, '2024-10-14 18:49:18.499232', '2024-10-14 18:49:18.499251', 'media/5893d2b339f547d7c7c95720b9ec0ba8.webp');

-- --------------------------------------------------------

--
-- Структура таблицы `base_neutralfield`
--

CREATE TABLE `base_neutralfield` (
  `id` bigint(20) NOT NULL,
  `matches` int(11) DEFAULT NULL,
  `winnings` int(11) DEFAULT NULL,
  `defeats` int(11) DEFAULT NULL,
  `draws` int(11) DEFAULT NULL,
  `goals_scored` int(11) DEFAULT NULL,
  `goals_conceded` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_neutralfield`
--

INSERT INTO `base_neutralfield` (`id`, `matches`, `winnings`, `defeats`, `draws`, `goals_scored`, `goals_conceded`, `score`, `created`, `updated`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, '2024-10-14 14:19:39.275405', '2024-10-14 14:19:39.275425');

-- --------------------------------------------------------

--
-- Структура таблицы `base_news`
--

CREATE TABLE `base_news` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `cover` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_news`
--

INSERT INTO `base_news` (`id`, `title`, `description`, `created`, `updated`, `cover`) VALUES
(1, 'ОООоо футбик ПОБЕДА ЧЕМПИОН!!!', 'Ижевская команда \"КОКОС\" победила на чемпинате мира!!!!', '2024-10-14 18:50:36.324986', '2024-10-14 18:50:36.325002', 'news/1278643.webp'),
(2, 'Жесть какая...', 'Игрок Артем Футбик Круто стал МВП матча!', '2024-10-14 18:51:17.462924', '2024-10-14 18:51:17.462938', 'news/145656_Futbolyniy_match_Ural_Terek_Ekaterinburg_5184.3456.0.0.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `base_outcome`
--

CREATE TABLE `base_outcome` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_outcome`
--

INSERT INTO `base_outcome` (`id`, `title`, `created`, `updated`) VALUES
(1, 'Победа', '2024-10-14 18:39:30.244817', '2024-10-14 18:39:30.244833'),
(2, 'Поражение', '2024-10-14 18:39:35.066305', '2024-10-14 18:39:35.066317'),
(3, 'Ничья', '2024-10-14 18:39:38.472526', '2024-10-14 18:39:38.472541'),
(4, 'Не состоялся', '2024-10-14 18:53:48.982708', '2024-10-14 18:53:48.982723');

-- --------------------------------------------------------

--
-- Структура таблицы `base_ownfield`
--

CREATE TABLE `base_ownfield` (
  `id` bigint(20) NOT NULL,
  `matches` int(11) DEFAULT NULL,
  `winnings` int(11) DEFAULT NULL,
  `defeats` int(11) DEFAULT NULL,
  `draws` int(11) DEFAULT NULL,
  `goals_scored` int(11) DEFAULT NULL,
  `goals_conceded` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_ownfield`
--

INSERT INTO `base_ownfield` (`id`, `matches`, `winnings`, `defeats`, `draws`, `goals_scored`, `goals_conceded`, `score`, `created`, `updated`) VALUES
(1, 53, 32, 21, 0, 120, 23, 100, '2024-10-14 14:19:06.657472', '2024-10-14 14:19:06.657488'),
(2, 100, 80, 20, 0, 124, 109, 126, '2024-10-14 18:42:21.816568', '2024-10-14 18:42:21.816582');

-- --------------------------------------------------------

--
-- Структура таблицы `base_penaltyscored`
--

CREATE TABLE `base_penaltyscored` (
  `id` bigint(20) NOT NULL,
  `kicked` int(11) DEFAULT NULL,
  `scored` int(11) DEFAULT NULL,
  `earned_points` int(11) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_penaltyscored`
--

INSERT INTO `base_penaltyscored` (`id`, `kicked`, `scored`, `earned_points`, `created`, `updated`) VALUES
(1, 12, 2, 12, '2024-10-14 14:17:55.164381', '2024-10-14 14:17:55.164404'),
(2, 30, 20, 20, '2024-10-14 18:41:20.860933', '2024-10-14 18:41:20.860948');

-- --------------------------------------------------------

--
-- Структура таблицы `base_season`
--

CREATE TABLE `base_season` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_season`
--

INSERT INTO `base_season` (`id`, `title`, `created`, `updated`) VALUES
(1, 'Зима 24/25', '2024-10-14 14:05:22.886774', '2024-10-14 14:05:22.886793'),
(2, 'Весна 24/25', '2024-10-14 18:31:21.317856', '2024-10-14 18:31:21.317879'),
(3, 'Лето 24/25', '2024-10-14 18:35:29.552416', '2024-10-14 18:35:29.552428');

-- --------------------------------------------------------

--
-- Структура таблицы `base_size`
--

CREATE TABLE `base_size` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_size`
--

INSERT INTO `base_size` (`id`, `title`, `created`, `updated`) VALUES
(1, 'M', '2024-10-14 14:02:56.733446', '2024-10-14 14:02:56.733462'),
(2, 'L', '2024-10-14 14:03:02.196294', '2024-10-14 14:03:02.196317'),
(3, 'L', '2024-10-14 14:04:46.000681', '2024-10-14 14:04:46.000703'),
(4, 'M', '2024-10-14 14:04:49.991282', '2024-10-14 14:04:49.991297'),
(5, 'S', '2024-10-14 18:30:47.443044', '2024-10-14 18:30:47.443060');

-- --------------------------------------------------------

--
-- Структура таблицы `base_someonefield`
--

CREATE TABLE `base_someonefield` (
  `id` bigint(20) NOT NULL,
  `matches` int(11) DEFAULT NULL,
  `winnings` int(11) DEFAULT NULL,
  `defeats` int(11) DEFAULT NULL,
  `draws` int(11) DEFAULT NULL,
  `goals_scored` int(11) DEFAULT NULL,
  `goals_conceded` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_someonefield`
--

INSERT INTO `base_someonefield` (`id`, `matches`, `winnings`, `defeats`, `draws`, `goals_scored`, `goals_conceded`, `score`, `created`, `updated`) VALUES
(1, 12, 10, 1, 1, 120, 21, 82, '2024-10-14 14:19:25.655888', '2024-10-14 14:19:25.655902'),
(2, 30, 20, 10, 0, 45, 34, 50, '2024-10-14 18:42:46.431520', '2024-10-14 18:42:46.431541');

-- --------------------------------------------------------

--
-- Структура таблицы `base_team`
--

CREATE TABLE `base_team` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `all_statistics_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_team`
--

INSERT INTO `base_team` (`id`, `title`, `created`, `updated`, `all_statistics_id`) VALUES
(1, 'КОКОС', '2024-10-14 18:52:09.306090', '2024-10-14 18:52:09.306105', 1),
(2, 'ФУТБИК ЧЕМПИКИ', '2024-10-14 18:52:31.780674', '2024-10-14 18:52:31.780688', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `base_team_administrative_staff`
--

CREATE TABLE `base_team_administrative_staff` (
  `id` bigint(20) NOT NULL,
  `team_id` bigint(20) NOT NULL,
  `administrativestaff_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `base_team_coach_staff`
--

CREATE TABLE `base_team_coach_staff` (
  `id` bigint(20) NOT NULL,
  `team_id` bigint(20) NOT NULL,
  `coachstaff_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_team_coach_staff`
--

INSERT INTO `base_team_coach_staff` (`id`, `team_id`, `coachstaff_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `base_team_footballers`
--

CREATE TABLE `base_team_footballers` (
  `id` bigint(20) NOT NULL,
  `team_id` bigint(20) NOT NULL,
  `footballer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_team_footballers`
--

INSERT INTO `base_team_footballers` (`id`, `team_id`, `footballer_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `base_team_tournaments_statistics`
--

CREATE TABLE `base_team_tournaments_statistics` (
  `id` bigint(20) NOT NULL,
  `team_id` bigint(20) NOT NULL,
  `generalstatisticstournament_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_team_tournaments_statistics`
--

INSERT INTO `base_team_tournaments_statistics` (`id`, `team_id`, `generalstatisticstournament_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `base_ticket`
--

CREATE TABLE `base_ticket` (
  `id` bigint(20) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `match_id` bigint(20) DEFAULT NULL,
  `place_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_ticket`
--

INSERT INTO `base_ticket` (`id`, `price`, `date`, `created`, `updated`, `match_id`, `place_id`) VALUES
(1, 0.00, '2024-10-14 18:54:29.520743', '2024-10-14 18:54:29.520761', '2024-10-14 18:54:29.520767', 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `base_ticketplace`
--

CREATE TABLE `base_ticketplace` (
  `id` bigint(20) NOT NULL,
  `sector` decimal(10,2) DEFAULT NULL,
  `place` decimal(10,2) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_ticketplace`
--

INSERT INTO `base_ticketplace` (`id`, `sector`, `place`, `created`, `updated`) VALUES
(1, 1.00, 45.00, '2024-10-14 18:54:12.895635', '2024-10-14 18:54:12.895648'),
(2, 2.00, 12.00, '2024-10-14 18:54:17.029313', '2024-10-14 18:54:17.029328');

-- --------------------------------------------------------

--
-- Структура таблицы `base_tournament`
--

CREATE TABLE `base_tournament` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `tours` decimal(10,2) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_tournament`
--

INSERT INTO `base_tournament` (`id`, `name`, `start_date`, `end_date`, `tours`, `created`, `updated`) VALUES
(1, 'Трунир 1', '2024-10-14', '2024-10-14', 1.00, '2024-10-14 18:53:35.877668', '2024-10-14 18:53:35.877678');

-- --------------------------------------------------------

--
-- Структура таблицы `base_tournament_cities`
--

CREATE TABLE `base_tournament_cities` (
  `id` bigint(20) NOT NULL,
  `tournament_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_tournament_cities`
--

INSERT INTO `base_tournament_cities` (`id`, `tournament_id`, `city_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `base_tournament_matches`
--

CREATE TABLE `base_tournament_matches` (
  `id` bigint(20) NOT NULL,
  `tournament_id` bigint(20) NOT NULL,
  `match_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_tournament_matches`
--

INSERT INTO `base_tournament_matches` (`id`, `tournament_id`, `match_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `base_user`
--

CREATE TABLE `base_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `base_user`
--

INSERT INTO `base_user` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `username`, `surname`, `email`, `phone`, `login`, `avatar`, `created`, `updated`) VALUES
(1, 'pbkdf2_sha256$600000$oiGKEq211PyU65Ap3EFWqY$hpcWjzLtIrRffTQ4nzknsRH4xUEerwmLlSTsv/kM+zk=', '2024-10-14 06:51:55.321128', 1, '', '', 1, 1, '2024-10-14 06:51:49.079811', 'kirill', NULL, 'kirill@gmail.com', NULL, NULL, 'assets/img/icons/avatar.svg', '2024-10-14 06:51:49.182160', '2024-10-14 06:51:49.182169');

-- --------------------------------------------------------

--
-- Структура таблицы `base_user_groups`
--

CREATE TABLE `base_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `base_user_user_permissions`
--

CREATE TABLE `base_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-10-14 14:01:01.209225', '1', 'Подросток', 1, '[{\"added\": {}}]', 6, 1),
(2, '2024-10-14 14:01:31.774552', '1', 'Арена 1', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-10-14 14:02:12.033103', '1', 'МугаМуга', 1, '[{\"added\": {}}]', 8, 1),
(4, '2024-10-14 14:02:24.152738', '1', 'Город 1', 1, '[{\"added\": {}}]', 11, 1),
(5, '2024-10-14 14:02:39.196700', '1', 'Куртка', 1, '[{\"added\": {}}]', 12, 1),
(6, '2024-10-14 14:02:56.733766', '1', 'M', 1, '[{\"added\": {}}]', 34, 1),
(7, '2024-10-14 14:03:02.196717', '2', 'L', 1, '[{\"added\": {}}]', 34, 1),
(8, '2024-10-14 14:04:46.001186', '3', 'L', 1, '[{\"added\": {}}]', 34, 1),
(9, '2024-10-14 14:04:49.991573', '4', 'M', 1, '[{\"added\": {}}]', 34, 1),
(10, '2024-10-14 14:05:01.535095', '1', 'Женщина', 1, '[{\"added\": {}}]', 22, 1),
(11, '2024-10-14 14:05:07.764870', '1', 'Черный', 1, '[{\"added\": {}}]', 16, 1),
(12, '2024-10-14 14:05:12.615932', '2', 'Серый', 1, '[{\"added\": {}}]', 16, 1),
(13, '2024-10-14 14:05:22.887279', '1', 'Зима 24/25', 1, '[{\"added\": {}}]', 33, 1),
(14, '2024-10-14 14:05:54.570363', '1', '/uploads/media/1c3cd8bb08a081e8812271d9883a198e.webp', 1, '[{\"added\": {}}]', 28, 1),
(15, '2024-10-14 14:06:07.494981', '1', 'Материал 1', 1, '[{\"added\": {}}]', 27, 1),
(16, '2024-10-14 14:06:12.499627', '2', 'Материал 2', 1, '[{\"added\": {}}]', 27, 1),
(17, '2024-10-14 14:09:27.887327', '3', '1', 1, '[{\"added\": {}}]', 45, 1),
(18, '2024-10-14 14:10:25.432654', '1', 'Тип 1', 1, '[{\"added\": {}}]', 14, 1),
(19, '2024-10-14 14:10:31.186469', '1', 'Имя 1', 1, '[{\"added\": {}}]', 13, 1),
(20, '2024-10-14 14:10:44.830010', '1', 'Вратарь', 1, '[{\"added\": {}}]', 20, 1),
(21, '2024-10-14 14:12:56.681576', '1', 'Имя 1', 1, '[{\"added\": {}}]', 19, 1),
(22, '2024-10-14 14:17:55.165024', '1', 'Penalty scored #1', 1, '[{\"added\": {}}]', 32, 1),
(23, '2024-10-14 14:17:57.295960', '1', '#Footballer statistics #1', 1, '[{\"added\": {}}]', 44, 1),
(24, '2024-10-14 14:19:06.657978', '1', 'Own field matches: #100', 1, '[{\"added\": {}}]', 31, 1),
(25, '2024-10-14 14:19:25.656206', '1', 'Someone field matches: #82', 1, '[{\"added\": {}}]', 35, 1),
(26, '2024-10-14 14:19:39.276034', '1', 'Neutral field matches: #0', 1, '[{\"added\": {}}]', 29, 1),
(27, '2024-10-14 14:19:42.372020', '1', 'General statistics all #1', 1, '[{\"added\": {}}]', 23, 1),
(28, '2024-10-14 18:23:52.769637', '2', 'Ребенок', 1, '[{\"added\": {}}]', 6, 1),
(29, '2024-10-14 18:23:58.090370', '3', 'Взрослый', 1, '[{\"added\": {}}]', 6, 1),
(30, '2024-10-14 18:24:43.875630', '2', 'Зенит', 1, '[{\"added\": {}}]', 7, 1),
(31, '2024-10-14 18:28:04.334913', '3', 'Торпедо', 1, '[{\"added\": {}}]', 7, 1),
(32, '2024-10-14 18:28:13.822199', '2', 'Адидас', 1, '[{\"added\": {}}]', 8, 1),
(33, '2024-10-14 18:28:17.422664', '3', 'Найк', 1, '[{\"added\": {}}]', 8, 1),
(34, '2024-10-14 18:28:27.735675', '4', 'Merell', 1, '[{\"added\": {}}]', 8, 1),
(35, '2024-10-14 18:28:37.983562', '2', 'Ижевск', 1, '[{\"added\": {}}]', 11, 1),
(36, '2024-10-14 18:28:42.685717', '3', 'Краснодар', 1, '[{\"added\": {}}]', 11, 1),
(37, '2024-10-14 18:28:46.786033', '4', 'Красноярск', 1, '[{\"added\": {}}]', 11, 1),
(38, '2024-10-14 18:28:50.427382', '5', 'Москва', 1, '[{\"added\": {}}]', 11, 1),
(39, '2024-10-14 18:29:02.051087', '2', 'Штаны', 1, '[{\"added\": {}}]', 12, 1),
(40, '2024-10-14 18:30:47.443378', '5', 'S', 1, '[{\"added\": {}}]', 34, 1),
(41, '2024-10-14 18:30:58.677033', '2', 'Мужчина', 1, '[{\"added\": {}}]', 22, 1),
(42, '2024-10-14 18:31:03.279360', '3', 'Унисекс', 1, '[{\"added\": {}}]', 22, 1),
(43, '2024-10-14 18:31:08.938059', '3', 'Белый', 1, '[{\"added\": {}}]', 16, 1),
(44, '2024-10-14 18:31:12.391327', '4', 'Синий', 1, '[{\"added\": {}}]', 16, 1),
(45, '2024-10-14 18:31:21.318281', '2', 'Весна 24/25', 1, '[{\"added\": {}}]', 33, 1),
(46, '2024-10-14 18:32:36.050968', '2', '/uploads/default.svg', 1, '[{\"added\": {}}]', 28, 1),
(47, '2024-10-14 18:32:46.566967', '3', '/uploads/media/images.jpg', 1, '[{\"added\": {}}]', 28, 1),
(48, '2024-10-14 18:32:58.387815', '4', 'Штаны скороходы', 1, '[{\"added\": {}}]', 45, 1),
(49, '2024-10-14 18:33:05.661866', '3', 'Шарф', 1, '[{\"added\": {}}]', 12, 1),
(50, '2024-10-14 18:34:00.619717', '4', '/uploads/media/2d8f2007d7200779e98447219c8aecd4.jpg', 1, '[{\"added\": {}}]', 28, 1),
(51, '2024-10-14 18:34:08.878189', '5', 'Шарф согревающий', 1, '[{\"added\": {}}]', 45, 1),
(52, '2024-10-14 18:35:00.577666', '4', 'Шорты', 1, '[{\"added\": {}}]', 12, 1),
(53, '2024-10-14 18:35:29.552722', '3', 'Лето 24/25', 1, '[{\"added\": {}}]', 33, 1),
(54, '2024-10-14 18:35:55.723483', '5', '/uploads/media/2255439743_1_5.jpg', 1, '[{\"added\": {}}]', 28, 1),
(55, '2024-10-14 18:36:10.688870', '6', '/uploads/media/3-9c4ceb10032dcdb531edcc102978572d.jpg', 1, '[{\"added\": {}}]', 28, 1),
(56, '2024-10-14 18:36:27.927023', '7', '/uploads/media/images1231231.jpg', 1, '[{\"added\": {}}]', 28, 1),
(57, '2024-10-14 18:36:36.721020', '6', 'Шорты беговые', 1, '[{\"added\": {}}]', 45, 1),
(58, '2024-10-14 18:38:32.090992', '2', 'Тип 2', 1, '[{\"added\": {}}]', 14, 1),
(59, '2024-10-14 18:38:35.713408', '2', 'Кирилл', 1, '[{\"added\": {}}]', 13, 1),
(60, '2024-10-14 18:39:30.245288', '1', 'Победа', 1, '[{\"added\": {}}]', 30, 1),
(61, '2024-10-14 18:39:35.066596', '2', 'Поражение', 1, '[{\"added\": {}}]', 30, 1),
(62, '2024-10-14 18:39:38.472855', '3', 'Ничья', 1, '[{\"added\": {}}]', 30, 1),
(63, '2024-10-14 18:40:21.709966', '1', '#Имя 1 statistics', 1, '[{\"added\": {}}]', 43, 1),
(64, '2024-10-14 18:41:20.861525', '2', 'Penalty scored #2', 1, '[{\"added\": {}}]', 32, 1),
(65, '2024-10-14 18:41:22.456196', '2', '#Footballer statistics #2', 1, '[{\"added\": {}}]', 44, 1),
(66, '2024-10-14 18:42:21.816873', '2', 'Own field matches: #2', 1, '[{\"added\": {}}]', 31, 1),
(67, '2024-10-14 18:42:46.432005', '2', 'Someone field matches: #2', 1, '[{\"added\": {}}]', 35, 1),
(68, '2024-10-14 18:42:47.484003', '1', 'Generals statistics tournament #1', 1, '[{\"added\": {}}]', 24, 1),
(69, '2024-10-14 18:45:25.108393', '8', '/uploads/media/145656_Futbolyniy_match_Ural_Terek_Ekaterinburg_5184.3456.0.0.jpg', 1, '[{\"added\": {}}]', 28, 1),
(70, '2024-10-14 18:45:58.317803', '9', '/uploads/media/145656_Futbolyniy_match_Ural_Terek_Ekaterinburg_5184.3456.0.0_ZY4jVS9.jpg', 1, '[{\"added\": {}}]', 28, 1),
(71, '2024-10-14 18:46:06.843921', '10', '/uploads/media/145656_Futbolyniy_match_Ural_Terek_Ekaterinburg_5184.3456.0.0_UEHmtSZ.jpg', 1, '[{\"added\": {}}]', 28, 1),
(72, '2024-10-14 18:46:13.010765', '11', '/uploads/media/Ekaterinburg_futbol_fk_ural_futbolisti_boryba_na_pole_futbolyniy_klub_ural_250x0_3_7IsEeCL.jpg', 1, '[{\"added\": {}}]', 28, 1),
(73, '2024-10-14 18:46:26.114100', '12', '/uploads/media/cbd00bc8d6652ad93d25915ad4c8744b_250x0_1440.811.0.0.jpg', 1, '[{\"added\": {}}]', 28, 1),
(74, '2024-10-14 18:46:30.457812', '13', '/uploads/media/145656_Futbolyniy_match_Ural_Terek_Ekaterinburg_5184.3456.0.0_0XxV3JN.jpg', 1, '[{\"added\": {}}]', 28, 1),
(75, '2024-10-14 18:46:36.360584', '14', '/uploads/media/Ekaterinburg_futbol_fk_ural_futbolisti_boryba_na_pole_futbolyniy_klub_ural_250x0_3_Rq9tIXB.jpg', 1, '[{\"added\": {}}]', 28, 1),
(76, '2024-10-14 18:46:37.785862', '1', 'Gallery #1', 1, '[{\"added\": {}}]', 21, 1),
(77, '2024-10-14 18:48:37.563993', '15', '/uploads/media/photo_2024-09-17_04-37-22.jpg', 1, '[{\"added\": {}}]', 28, 1),
(78, '2024-10-14 18:48:44.959502', '2', 'Нападающий', 1, '[{\"added\": {}}]', 20, 1),
(79, '2024-10-14 18:48:48.331796', '2', 'Максим', 1, '[{\"added\": {}}]', 19, 1),
(80, '2024-10-14 18:49:12.051297', '16', '/uploads/media/1278643.webp', 1, '[{\"added\": {}}]', 28, 1),
(81, '2024-10-14 18:49:18.499748', '17', '/uploads/media/5893d2b339f547d7c7c95720b9ec0ba8.webp', 1, '[{\"added\": {}}]', 28, 1),
(82, '2024-10-14 18:49:26.655277', '3', 'Полузащитник', 1, '[{\"added\": {}}]', 20, 1),
(83, '2024-10-14 18:49:27.916182', '3', 'Артем', 1, '[{\"added\": {}}]', 19, 1),
(84, '2024-10-14 18:50:36.325362', '1', 'News object (1)', 1, '[{\"added\": {}}]', 42, 1),
(85, '2024-10-14 18:51:17.463311', '2', 'News object (2)', 1, '[{\"added\": {}}]', 42, 1),
(86, '2024-10-14 18:52:09.318605', '1', 'КОКОС', 1, '[{\"added\": {}}]', 41, 1),
(87, '2024-10-14 18:52:31.801950', '2', 'ФУТБИК ЧЕМПИКИ', 1, '[{\"added\": {}}]', 41, 1),
(88, '2024-10-14 18:52:53.742950', '1', 'Match #1', 1, '[{\"added\": {}}]', 26, 1),
(89, '2024-10-14 18:53:02.355043', '2', 'Match #2', 1, '[{\"added\": {}}]', 26, 1),
(90, '2024-10-14 18:53:35.884093', '1', 'Трунир 1', 1, '[{\"added\": {}}]', 39, 1),
(91, '2024-10-14 18:53:48.983010', '4', 'Не состоялся', 1, '[{\"added\": {}}]', 30, 1),
(92, '2024-10-14 18:54:01.750485', '3', 'Match #3', 1, '[{\"added\": {}}]', 26, 1),
(93, '2024-10-14 18:54:12.896149', '1', 'Ticket place #45', 1, '[{\"added\": {}}]', 38, 1),
(94, '2024-10-14 18:54:17.029623', '2', 'Ticket place #12', 1, '[{\"added\": {}}]', 38, 1),
(95, '2024-10-14 18:54:29.521059', '1', 'Ticket #1', 1, '[{\"added\": {}}]', 40, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(36, 'base', 'administrativestaff'),
(37, 'base', 'administrativestafftype'),
(6, 'base', 'agecategory'),
(7, 'base', 'arena'),
(8, 'base', 'brand'),
(9, 'base', 'breedingservice'),
(10, 'base', 'breedingservicetype'),
(11, 'base', 'city'),
(45, 'base', 'clothes'),
(12, 'base', 'clothestype'),
(13, 'base', 'coachstaff'),
(14, 'base', 'coachstafftype'),
(15, 'base', 'coachsummarystatistics'),
(16, 'base', 'color'),
(17, 'base', 'director'),
(18, 'base', 'directortype'),
(19, 'base', 'footballer'),
(20, 'base', 'footballerposition'),
(44, 'base', 'footballerstatistics'),
(21, 'base', 'gallery'),
(22, 'base', 'gender'),
(23, 'base', 'generalstatisticsall'),
(24, 'base', 'generalstatisticstournament'),
(43, 'base', 'goalkeeperstatistics'),
(25, 'base', 'headermodel'),
(26, 'base', 'match'),
(27, 'base', 'material'),
(28, 'base', 'media'),
(29, 'base', 'neutralfield'),
(42, 'base', 'news'),
(30, 'base', 'outcome'),
(31, 'base', 'ownfield'),
(32, 'base', 'penaltyscored'),
(33, 'base', 'season'),
(34, 'base', 'size'),
(35, 'base', 'someonefield'),
(41, 'base', 'team'),
(40, 'base', 'ticket'),
(38, 'base', 'ticketplace'),
(39, 'base', 'tournament'),
(46, 'base', 'user'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-10-14 06:49:25.794732'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-10-14 06:49:25.834009'),
(3, 'auth', '0001_initial', '2024-10-14 06:49:26.020751'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-10-14 06:49:26.063599'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-10-14 06:49:26.067706'),
(6, 'auth', '0004_alter_user_username_opts', '2024-10-14 06:49:26.071717'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-10-14 06:49:26.076093'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-10-14 06:49:26.078843'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-10-14 06:49:26.084323'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-10-14 06:49:26.088350'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-10-14 06:49:26.092579'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-10-14 06:49:26.102649'),
(13, 'auth', '0011_update_proxy_permissions', '2024-10-14 06:49:26.106968'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-10-14 06:49:26.110921'),
(15, 'base', '0001_initial', '2024-10-14 06:49:30.244798'),
(16, 'admin', '0001_initial', '2024-10-14 06:49:30.340885'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-10-14 06:49:30.346978'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-10-14 06:49:30.353881'),
(19, 'sessions', '0001_initial', '2024-10-14 06:49:30.412495'),
(20, 'base', '0002_rename_staff_administrativestaff_and_more', '2024-10-14 13:59:11.086657'),
(21, 'base', '0003_remove_clothes_size_clothes_size', '2024-10-14 14:09:21.299848'),
(22, 'base', '0004_alter_footballer_age_alter_footballer_weight', '2024-10-14 14:12:47.878151'),
(23, 'base', '0005_alter_footballer_weight', '2024-10-14 14:44:12.818175'),
(24, 'base', '0006_remove_news_gallery_news_cover', '2024-10-14 18:27:38.939543');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('giznuk3u0klvxn5p7pghkk6775jwqqtw', '.eJxVjDkOwjAQAP-yNbJirx07Kel5Q7SHgwPIkXJUiL-jSCmgnRnNGwbatzLsa16GSaEHC5dfxiTPXA-hD6r32chct2VicyTmtKu5zZpf17P9GxRaC_QQo2s5OdfZkJylRiWjCGYdvYzSesTgFBvPIbFy7BqMGiQkyy15VoTPF9TlN8Y:1t0Evr:YjrohmFKP2TjNET_VvSgsKeapPQUgnGIyV-nAvw5eVQ', '2024-10-28 06:51:55.323756');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `base_administrativestaff`
--
ALTER TABLE `base_administrativestaff`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_administrativestafftype`
--
ALTER TABLE `base_administrativestafftype`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_administrativestaff_type_staff`
--
ALTER TABLE `base_administrativestaff_type_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_staff_type_staff_staff_id_stafftype_id_cfcf79ee_uniq` (`administrativestaff_id`,`administrativestafftype_id`),
  ADD KEY `base_administratives_administrativestafft_df1184b7_fk_base_admi` (`administrativestafftype_id`);

--
-- Индексы таблицы `base_agecategory`
--
ALTER TABLE `base_agecategory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_arena`
--
ALTER TABLE `base_arena`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_brand`
--
ALTER TABLE `base_brand`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_breedingservice`
--
ALTER TABLE `base_breedingservice`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_breedingservicetype`
--
ALTER TABLE `base_breedingservicetype`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_breedingservice_type_service`
--
ALTER TABLE `base_breedingservice_type_service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_breedingservice_typ_breedingservice_id_breed_f60ce992_uniq` (`breedingservice_id`,`breedingservicetype_id`),
  ADD KEY `base_breedingservice_breedingservicetype__76dbf94c_fk_base_bree` (`breedingservicetype_id`);

--
-- Индексы таблицы `base_city`
--
ALTER TABLE `base_city`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_clothes`
--
ALTER TABLE `base_clothes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_clothes_age_category_id_a142b32b_fk_base_agecategory_id` (`age_category_id`),
  ADD KEY `base_clothes_brand_id_f2739d98_fk_base_brand_id` (`brand_id`),
  ADD KEY `base_clothes_color_id_1bd1192d_fk_base_color_id` (`color_id`),
  ADD KEY `base_clothes_gender_id_2ac3ba7b_fk_base_gender_id` (`gender_id`),
  ADD KEY `base_clothes_season_id_12837255_fk_base_season_id` (`season_id`),
  ADD KEY `base_clothes_type_id_f704bb18_fk_base_clothestype_id` (`type_id`);

--
-- Индексы таблицы `base_clothestype`
--
ALTER TABLE `base_clothestype`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_clothes_materials`
--
ALTER TABLE `base_clothes_materials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_clothes_materials_clothes_id_material_id_862c0f4a_uniq` (`clothes_id`,`material_id`),
  ADD KEY `base_clothes_materials_material_id_7bfd70ac_fk_base_material_id` (`material_id`);

--
-- Индексы таблицы `base_clothes_media_links`
--
ALTER TABLE `base_clothes_media_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_clothes_media_links_clothes_id_media_id_c38c637c_uniq` (`clothes_id`,`media_id`),
  ADD KEY `base_clothes_media_links_media_id_19bf6f40_fk_base_media_id` (`media_id`);

--
-- Индексы таблицы `base_clothes_size`
--
ALTER TABLE `base_clothes_size`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_clothes_size_clothes_id_size_id_38207eb3_uniq` (`clothes_id`,`size_id`),
  ADD KEY `base_clothes_size_size_id_cc1ad8f6_fk_base_size_id` (`size_id`);

--
-- Индексы таблицы `base_coachstaff`
--
ALTER TABLE `base_coachstaff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_coachstaff_statistics_id_905d4cd3_fk_base_coac` (`statistics_id`);

--
-- Индексы таблицы `base_coachstafftype`
--
ALTER TABLE `base_coachstafftype`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_coachstaff_type_coach`
--
ALTER TABLE `base_coachstaff_type_coach`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_coachstaff_type_coa_coachstaff_id_coachstaff_84e4816d_uniq` (`coachstaff_id`,`coachstafftype_id`),
  ADD KEY `base_coachstaff_type_coachstafftype_id_7eb90320_fk_base_coac` (`coachstafftype_id`);

--
-- Индексы таблицы `base_coachsummarystatistics`
--
ALTER TABLE `base_coachsummarystatistics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_color`
--
ALTER TABLE `base_color`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_director`
--
ALTER TABLE `base_director`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_directortype`
--
ALTER TABLE `base_directortype`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_director_type_director`
--
ALTER TABLE `base_director_type_director`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_director_type_direc_director_id_directortype_56365049_uniq` (`director_id`,`directortype_id`),
  ADD KEY `base_director_type_d_directortype_id_86ade25d_fk_base_dire` (`directortype_id`);

--
-- Индексы таблицы `base_footballer`
--
ALTER TABLE `base_footballer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_footballer_position_id_576d03d6_fk_base_foot` (`position_id`),
  ADD KEY `base_footballer_statistics_id_6972d265_fk_base_foot` (`statistics_id`);

--
-- Индексы таблицы `base_footballerposition`
--
ALTER TABLE `base_footballerposition`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_footballerstatistics`
--
ALTER TABLE `base_footballerstatistics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_footballerstatistics_penalties`
--
ALTER TABLE `base_footballerstatistics_penalties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_footballerstatistic_footballerstatistics_id__f7de3966_uniq` (`footballerstatistics_id`,`penaltyscored_id`),
  ADD KEY `base_footballerstati_penaltyscored_id_5338ac55_fk_base_pena` (`penaltyscored_id`);

--
-- Индексы таблицы `base_footballer_image`
--
ALTER TABLE `base_footballer_image`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_footballer_image_footballer_id_media_id_cf949910_uniq` (`footballer_id`,`media_id`),
  ADD KEY `base_footballer_image_media_id_24a0f236_fk_base_media_id` (`media_id`);

--
-- Индексы таблицы `base_gallery`
--
ALTER TABLE `base_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_gallery_media`
--
ALTER TABLE `base_gallery_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_gallery_media_gallery_id_media_id_29034c1c_uniq` (`gallery_id`,`media_id`),
  ADD KEY `base_gallery_media_media_id_9455c761_fk_base_media_id` (`media_id`);

--
-- Индексы таблицы `base_gender`
--
ALTER TABLE `base_gender`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_generalstatisticsall`
--
ALTER TABLE `base_generalstatisticsall`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_generalstatisti_neutral_field_id_3141a57c_fk_base_neut` (`neutral_field_id`),
  ADD KEY `base_generalstatisti_own_field_id_fb713e01_fk_base_ownf` (`own_field_id`),
  ADD KEY `base_generalstatisti_someone_field_id_220846e7_fk_base_some` (`someone_field_id`);

--
-- Индексы таблицы `base_generalstatisticstournament`
--
ALTER TABLE `base_generalstatisticstournament`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_generalstatisti_own_field_id_e7c81abc_fk_base_ownf` (`own_field_id`),
  ADD KEY `base_generalstatisti_someone_field_id_621cf421_fk_base_some` (`someone_field_id`);

--
-- Индексы таблицы `base_goalkeeperstatistics`
--
ALTER TABLE `base_goalkeeperstatistics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_goalkeeperstati_goalkeeper_id_20ff5f2e_fk_base_foot` (`goalkeeper_id`);

--
-- Индексы таблицы `base_headermodel`
--
ALTER TABLE `base_headermodel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_match`
--
ALTER TABLE `base_match`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_match_outcome_id_9d9f0205_fk_base_outcome_id` (`outcome_id`),
  ADD KEY `base_match_arena_id_baac098e_fk_base_arena_id` (`arena_id`);

--
-- Индексы таблицы `base_match_teams`
--
ALTER TABLE `base_match_teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_match_teams_match_id_team_id_1678894f_uniq` (`match_id`,`team_id`),
  ADD KEY `base_match_teams_team_id_b944bf44_fk_base_team_id` (`team_id`);

--
-- Индексы таблицы `base_material`
--
ALTER TABLE `base_material`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_media`
--
ALTER TABLE `base_media`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_neutralfield`
--
ALTER TABLE `base_neutralfield`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_news`
--
ALTER TABLE `base_news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_outcome`
--
ALTER TABLE `base_outcome`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_ownfield`
--
ALTER TABLE `base_ownfield`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_penaltyscored`
--
ALTER TABLE `base_penaltyscored`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_season`
--
ALTER TABLE `base_season`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_size`
--
ALTER TABLE `base_size`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_someonefield`
--
ALTER TABLE `base_someonefield`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_team`
--
ALTER TABLE `base_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_team_all_statistics_id_d3249780_fk_base_gene` (`all_statistics_id`);

--
-- Индексы таблицы `base_team_administrative_staff`
--
ALTER TABLE `base_team_administrative_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_team_staff_team_id_staff_id_5079b311_uniq` (`team_id`,`administrativestaff_id`),
  ADD KEY `base_team_staff_administrativestaff__e1e27e28_fk_base_admi` (`administrativestaff_id`);

--
-- Индексы таблицы `base_team_coach_staff`
--
ALTER TABLE `base_team_coach_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_team_coach_staff_team_id_coachstaff_id_cc806635_uniq` (`team_id`,`coachstaff_id`),
  ADD KEY `base_team_coach_staf_coachstaff_id_4480d9d9_fk_base_coac` (`coachstaff_id`);

--
-- Индексы таблицы `base_team_footballers`
--
ALTER TABLE `base_team_footballers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_team_footballers_team_id_footballer_id_ad9bfdf5_uniq` (`team_id`,`footballer_id`),
  ADD KEY `base_team_footballer_footballer_id_8eb02ed6_fk_base_foot` (`footballer_id`);

--
-- Индексы таблицы `base_team_tournaments_statistics`
--
ALTER TABLE `base_team_tournaments_statistics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_team_tournaments_st_team_id_generalstatistic_4343b9d6_uniq` (`team_id`,`generalstatisticstournament_id`),
  ADD KEY `base_team_tournament_generalstatisticstou_e127e59f_fk_base_gene` (`generalstatisticstournament_id`);

--
-- Индексы таблицы `base_ticket`
--
ALTER TABLE `base_ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_ticket_match_id_076caa06_fk_base_match_id` (`match_id`),
  ADD KEY `base_ticket_place_id_edf2f95b_fk_base_ticketplace_id` (`place_id`);

--
-- Индексы таблицы `base_ticketplace`
--
ALTER TABLE `base_ticketplace`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_tournament`
--
ALTER TABLE `base_tournament`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `base_tournament_cities`
--
ALTER TABLE `base_tournament_cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_tournament_cities_tournament_id_city_id_7dccf41a_uniq` (`tournament_id`,`city_id`),
  ADD KEY `base_tournament_cities_city_id_e5a7b3db_fk_base_city_id` (`city_id`);

--
-- Индексы таблицы `base_tournament_matches`
--
ALTER TABLE `base_tournament_matches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_tournament_matches_tournament_id_match_id_2bc5f200_uniq` (`tournament_id`,`match_id`),
  ADD KEY `base_tournament_matches_match_id_6e79744e_fk_base_match_id` (`match_id`);

--
-- Индексы таблицы `base_user`
--
ALTER TABLE `base_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `base_user_groups`
--
ALTER TABLE `base_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_user_groups_user_id_group_id_774631b7_uniq` (`user_id`,`group_id`),
  ADD KEY `base_user_groups_group_id_c0eca7d6_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `base_user_user_permissions`
--
ALTER TABLE `base_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_user_user_permissions_user_id_permission_id_e9093277_uniq` (`user_id`,`permission_id`),
  ADD KEY `base_user_user_permi_permission_id_0418bc02_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_base_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT для таблицы `base_administrativestaff`
--
ALTER TABLE `base_administrativestaff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `base_administrativestafftype`
--
ALTER TABLE `base_administrativestafftype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `base_administrativestaff_type_staff`
--
ALTER TABLE `base_administrativestaff_type_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `base_agecategory`
--
ALTER TABLE `base_agecategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `base_arena`
--
ALTER TABLE `base_arena`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `base_brand`
--
ALTER TABLE `base_brand`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `base_breedingservice`
--
ALTER TABLE `base_breedingservice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `base_breedingservicetype`
--
ALTER TABLE `base_breedingservicetype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `base_breedingservice_type_service`
--
ALTER TABLE `base_breedingservice_type_service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `base_city`
--
ALTER TABLE `base_city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `base_clothes`
--
ALTER TABLE `base_clothes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `base_clothestype`
--
ALTER TABLE `base_clothestype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `base_clothes_materials`
--
ALTER TABLE `base_clothes_materials`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `base_clothes_media_links`
--
ALTER TABLE `base_clothes_media_links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `base_clothes_size`
--
ALTER TABLE `base_clothes_size`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `base_coachstaff`
--
ALTER TABLE `base_coachstaff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_coachstafftype`
--
ALTER TABLE `base_coachstafftype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_coachstaff_type_coach`
--
ALTER TABLE `base_coachstaff_type_coach`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_coachsummarystatistics`
--
ALTER TABLE `base_coachsummarystatistics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `base_color`
--
ALTER TABLE `base_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `base_director`
--
ALTER TABLE `base_director`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `base_directortype`
--
ALTER TABLE `base_directortype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `base_director_type_director`
--
ALTER TABLE `base_director_type_director`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `base_footballer`
--
ALTER TABLE `base_footballer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `base_footballerposition`
--
ALTER TABLE `base_footballerposition`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `base_footballerstatistics`
--
ALTER TABLE `base_footballerstatistics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_footballerstatistics_penalties`
--
ALTER TABLE `base_footballerstatistics_penalties`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_footballer_image`
--
ALTER TABLE `base_footballer_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `base_gallery`
--
ALTER TABLE `base_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `base_gallery_media`
--
ALTER TABLE `base_gallery_media`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `base_gender`
--
ALTER TABLE `base_gender`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `base_generalstatisticsall`
--
ALTER TABLE `base_generalstatisticsall`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `base_generalstatisticstournament`
--
ALTER TABLE `base_generalstatisticstournament`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `base_goalkeeperstatistics`
--
ALTER TABLE `base_goalkeeperstatistics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `base_headermodel`
--
ALTER TABLE `base_headermodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `base_match`
--
ALTER TABLE `base_match`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `base_match_teams`
--
ALTER TABLE `base_match_teams`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `base_material`
--
ALTER TABLE `base_material`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_media`
--
ALTER TABLE `base_media`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `base_neutralfield`
--
ALTER TABLE `base_neutralfield`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `base_news`
--
ALTER TABLE `base_news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_outcome`
--
ALTER TABLE `base_outcome`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `base_ownfield`
--
ALTER TABLE `base_ownfield`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_penaltyscored`
--
ALTER TABLE `base_penaltyscored`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_season`
--
ALTER TABLE `base_season`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `base_size`
--
ALTER TABLE `base_size`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `base_someonefield`
--
ALTER TABLE `base_someonefield`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_team`
--
ALTER TABLE `base_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_team_administrative_staff`
--
ALTER TABLE `base_team_administrative_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `base_team_coach_staff`
--
ALTER TABLE `base_team_coach_staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `base_team_footballers`
--
ALTER TABLE `base_team_footballers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `base_team_tournaments_statistics`
--
ALTER TABLE `base_team_tournaments_statistics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_ticket`
--
ALTER TABLE `base_ticket`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `base_ticketplace`
--
ALTER TABLE `base_ticketplace`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_tournament`
--
ALTER TABLE `base_tournament`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `base_tournament_cities`
--
ALTER TABLE `base_tournament_cities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `base_tournament_matches`
--
ALTER TABLE `base_tournament_matches`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `base_user`
--
ALTER TABLE `base_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `base_user_groups`
--
ALTER TABLE `base_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `base_user_user_permissions`
--
ALTER TABLE `base_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_administrativestaff_type_staff`
--
ALTER TABLE `base_administrativestaff_type_staff`
  ADD CONSTRAINT `base_administratives_administrativestaff__ff73d983_fk_base_admi` FOREIGN KEY (`administrativestaff_id`) REFERENCES `base_administrativestaff` (`id`),
  ADD CONSTRAINT `base_administratives_administrativestafft_df1184b7_fk_base_admi` FOREIGN KEY (`administrativestafftype_id`) REFERENCES `base_administrativestafftype` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_breedingservice_type_service`
--
ALTER TABLE `base_breedingservice_type_service`
  ADD CONSTRAINT `base_breedingservice_breedingservice_id_d12ee24b_fk_base_bree` FOREIGN KEY (`breedingservice_id`) REFERENCES `base_breedingservice` (`id`),
  ADD CONSTRAINT `base_breedingservice_breedingservicetype__76dbf94c_fk_base_bree` FOREIGN KEY (`breedingservicetype_id`) REFERENCES `base_breedingservicetype` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_clothes`
--
ALTER TABLE `base_clothes`
  ADD CONSTRAINT `base_clothes_age_category_id_a142b32b_fk_base_agecategory_id` FOREIGN KEY (`age_category_id`) REFERENCES `base_agecategory` (`id`),
  ADD CONSTRAINT `base_clothes_brand_id_f2739d98_fk_base_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `base_brand` (`id`),
  ADD CONSTRAINT `base_clothes_color_id_1bd1192d_fk_base_color_id` FOREIGN KEY (`color_id`) REFERENCES `base_color` (`id`),
  ADD CONSTRAINT `base_clothes_gender_id_2ac3ba7b_fk_base_gender_id` FOREIGN KEY (`gender_id`) REFERENCES `base_gender` (`id`),
  ADD CONSTRAINT `base_clothes_season_id_12837255_fk_base_season_id` FOREIGN KEY (`season_id`) REFERENCES `base_season` (`id`),
  ADD CONSTRAINT `base_clothes_type_id_f704bb18_fk_base_clothestype_id` FOREIGN KEY (`type_id`) REFERENCES `base_clothestype` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_clothes_materials`
--
ALTER TABLE `base_clothes_materials`
  ADD CONSTRAINT `base_clothes_materials_clothes_id_cf84d438_fk_base_clothes_id` FOREIGN KEY (`clothes_id`) REFERENCES `base_clothes` (`id`),
  ADD CONSTRAINT `base_clothes_materials_material_id_7bfd70ac_fk_base_material_id` FOREIGN KEY (`material_id`) REFERENCES `base_material` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_clothes_media_links`
--
ALTER TABLE `base_clothes_media_links`
  ADD CONSTRAINT `base_clothes_media_links_clothes_id_c4c3e864_fk_base_clothes_id` FOREIGN KEY (`clothes_id`) REFERENCES `base_clothes` (`id`),
  ADD CONSTRAINT `base_clothes_media_links_media_id_19bf6f40_fk_base_media_id` FOREIGN KEY (`media_id`) REFERENCES `base_media` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_clothes_size`
--
ALTER TABLE `base_clothes_size`
  ADD CONSTRAINT `base_clothes_size_clothes_id_f6360e0a_fk_base_clothes_id` FOREIGN KEY (`clothes_id`) REFERENCES `base_clothes` (`id`),
  ADD CONSTRAINT `base_clothes_size_size_id_cc1ad8f6_fk_base_size_id` FOREIGN KEY (`size_id`) REFERENCES `base_size` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_coachstaff`
--
ALTER TABLE `base_coachstaff`
  ADD CONSTRAINT `base_coachstaff_statistics_id_905d4cd3_fk_base_coac` FOREIGN KEY (`statistics_id`) REFERENCES `base_coachsummarystatistics` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_coachstaff_type_coach`
--
ALTER TABLE `base_coachstaff_type_coach`
  ADD CONSTRAINT `base_coachstaff_type_coachstaff_id_a850f245_fk_base_coac` FOREIGN KEY (`coachstaff_id`) REFERENCES `base_coachstaff` (`id`),
  ADD CONSTRAINT `base_coachstaff_type_coachstafftype_id_7eb90320_fk_base_coac` FOREIGN KEY (`coachstafftype_id`) REFERENCES `base_coachstafftype` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_director_type_director`
--
ALTER TABLE `base_director_type_director`
  ADD CONSTRAINT `base_director_type_d_director_id_41224ef2_fk_base_dire` FOREIGN KEY (`director_id`) REFERENCES `base_director` (`id`),
  ADD CONSTRAINT `base_director_type_d_directortype_id_86ade25d_fk_base_dire` FOREIGN KEY (`directortype_id`) REFERENCES `base_directortype` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_footballer`
--
ALTER TABLE `base_footballer`
  ADD CONSTRAINT `base_footballer_position_id_576d03d6_fk_base_foot` FOREIGN KEY (`position_id`) REFERENCES `base_footballerposition` (`id`),
  ADD CONSTRAINT `base_footballer_statistics_id_6972d265_fk_base_foot` FOREIGN KEY (`statistics_id`) REFERENCES `base_footballerstatistics` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_footballerstatistics_penalties`
--
ALTER TABLE `base_footballerstatistics_penalties`
  ADD CONSTRAINT `base_footballerstati_footballerstatistics_048215de_fk_base_foot` FOREIGN KEY (`footballerstatistics_id`) REFERENCES `base_footballerstatistics` (`id`),
  ADD CONSTRAINT `base_footballerstati_penaltyscored_id_5338ac55_fk_base_pena` FOREIGN KEY (`penaltyscored_id`) REFERENCES `base_penaltyscored` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_footballer_image`
--
ALTER TABLE `base_footballer_image`
  ADD CONSTRAINT `base_footballer_imag_footballer_id_d2945357_fk_base_foot` FOREIGN KEY (`footballer_id`) REFERENCES `base_footballer` (`id`),
  ADD CONSTRAINT `base_footballer_image_media_id_24a0f236_fk_base_media_id` FOREIGN KEY (`media_id`) REFERENCES `base_media` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_gallery_media`
--
ALTER TABLE `base_gallery_media`
  ADD CONSTRAINT `base_gallery_media_gallery_id_7e6906c5_fk_base_gallery_id` FOREIGN KEY (`gallery_id`) REFERENCES `base_gallery` (`id`),
  ADD CONSTRAINT `base_gallery_media_media_id_9455c761_fk_base_media_id` FOREIGN KEY (`media_id`) REFERENCES `base_media` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_generalstatisticsall`
--
ALTER TABLE `base_generalstatisticsall`
  ADD CONSTRAINT `base_generalstatisti_neutral_field_id_3141a57c_fk_base_neut` FOREIGN KEY (`neutral_field_id`) REFERENCES `base_neutralfield` (`id`),
  ADD CONSTRAINT `base_generalstatisti_own_field_id_fb713e01_fk_base_ownf` FOREIGN KEY (`own_field_id`) REFERENCES `base_ownfield` (`id`),
  ADD CONSTRAINT `base_generalstatisti_someone_field_id_220846e7_fk_base_some` FOREIGN KEY (`someone_field_id`) REFERENCES `base_someonefield` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_generalstatisticstournament`
--
ALTER TABLE `base_generalstatisticstournament`
  ADD CONSTRAINT `base_generalstatisti_own_field_id_e7c81abc_fk_base_ownf` FOREIGN KEY (`own_field_id`) REFERENCES `base_ownfield` (`id`),
  ADD CONSTRAINT `base_generalstatisti_someone_field_id_621cf421_fk_base_some` FOREIGN KEY (`someone_field_id`) REFERENCES `base_someonefield` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_goalkeeperstatistics`
--
ALTER TABLE `base_goalkeeperstatistics`
  ADD CONSTRAINT `base_goalkeeperstati_goalkeeper_id_20ff5f2e_fk_base_foot` FOREIGN KEY (`goalkeeper_id`) REFERENCES `base_footballer` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_match`
--
ALTER TABLE `base_match`
  ADD CONSTRAINT `base_match_arena_id_baac098e_fk_base_arena_id` FOREIGN KEY (`arena_id`) REFERENCES `base_arena` (`id`),
  ADD CONSTRAINT `base_match_outcome_id_9d9f0205_fk_base_outcome_id` FOREIGN KEY (`outcome_id`) REFERENCES `base_outcome` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_match_teams`
--
ALTER TABLE `base_match_teams`
  ADD CONSTRAINT `base_match_teams_match_id_2f5bbd49_fk_base_match_id` FOREIGN KEY (`match_id`) REFERENCES `base_match` (`id`),
  ADD CONSTRAINT `base_match_teams_team_id_b944bf44_fk_base_team_id` FOREIGN KEY (`team_id`) REFERENCES `base_team` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_team`
--
ALTER TABLE `base_team`
  ADD CONSTRAINT `base_team_all_statistics_id_d3249780_fk_base_gene` FOREIGN KEY (`all_statistics_id`) REFERENCES `base_generalstatisticsall` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_team_administrative_staff`
--
ALTER TABLE `base_team_administrative_staff`
  ADD CONSTRAINT `base_team_staff_administrativestaff__e1e27e28_fk_base_admi` FOREIGN KEY (`administrativestaff_id`) REFERENCES `base_administrativestaff` (`id`),
  ADD CONSTRAINT `base_team_staff_team_id_e8eddf11_fk_base_team_id` FOREIGN KEY (`team_id`) REFERENCES `base_team` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_team_coach_staff`
--
ALTER TABLE `base_team_coach_staff`
  ADD CONSTRAINT `base_team_coach_staf_coachstaff_id_4480d9d9_fk_base_coac` FOREIGN KEY (`coachstaff_id`) REFERENCES `base_coachstaff` (`id`),
  ADD CONSTRAINT `base_team_coach_staff_team_id_7c180cd5_fk_base_team_id` FOREIGN KEY (`team_id`) REFERENCES `base_team` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_team_footballers`
--
ALTER TABLE `base_team_footballers`
  ADD CONSTRAINT `base_team_footballer_footballer_id_8eb02ed6_fk_base_foot` FOREIGN KEY (`footballer_id`) REFERENCES `base_footballer` (`id`),
  ADD CONSTRAINT `base_team_footballers_team_id_2809c31c_fk_base_team_id` FOREIGN KEY (`team_id`) REFERENCES `base_team` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_team_tournaments_statistics`
--
ALTER TABLE `base_team_tournaments_statistics`
  ADD CONSTRAINT `base_team_tournament_generalstatisticstou_e127e59f_fk_base_gene` FOREIGN KEY (`generalstatisticstournament_id`) REFERENCES `base_generalstatisticstournament` (`id`),
  ADD CONSTRAINT `base_team_tournament_team_id_baa9f0ea_fk_base_team` FOREIGN KEY (`team_id`) REFERENCES `base_team` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_ticket`
--
ALTER TABLE `base_ticket`
  ADD CONSTRAINT `base_ticket_match_id_076caa06_fk_base_match_id` FOREIGN KEY (`match_id`) REFERENCES `base_match` (`id`),
  ADD CONSTRAINT `base_ticket_place_id_edf2f95b_fk_base_ticketplace_id` FOREIGN KEY (`place_id`) REFERENCES `base_ticketplace` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_tournament_cities`
--
ALTER TABLE `base_tournament_cities`
  ADD CONSTRAINT `base_tournament_citi_tournament_id_64d54736_fk_base_tour` FOREIGN KEY (`tournament_id`) REFERENCES `base_tournament` (`id`),
  ADD CONSTRAINT `base_tournament_cities_city_id_e5a7b3db_fk_base_city_id` FOREIGN KEY (`city_id`) REFERENCES `base_city` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_tournament_matches`
--
ALTER TABLE `base_tournament_matches`
  ADD CONSTRAINT `base_tournament_matc_tournament_id_fa561512_fk_base_tour` FOREIGN KEY (`tournament_id`) REFERENCES `base_tournament` (`id`),
  ADD CONSTRAINT `base_tournament_matches_match_id_6e79744e_fk_base_match_id` FOREIGN KEY (`match_id`) REFERENCES `base_match` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_user_groups`
--
ALTER TABLE `base_user_groups`
  ADD CONSTRAINT `base_user_groups_group_id_c0eca7d6_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `base_user_groups_user_id_29a796b6_fk_base_user_id` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `base_user_user_permissions`
--
ALTER TABLE `base_user_user_permissions`
  ADD CONSTRAINT `base_user_user_permi_permission_id_0418bc02_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `base_user_user_permissions_user_id_2eec4d63_fk_base_user_id` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_base_user_id` FOREIGN KEY (`user_id`) REFERENCES `base_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
