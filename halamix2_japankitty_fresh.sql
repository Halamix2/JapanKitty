-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 13 Lis 2018, 11:28
-- Wersja serwera: 10.1.24-MariaDB-cll-lve
-- Wersja PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `halamix2_japankitty`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `basic_vocabulary_table`
--

CREATE TABLE `basic_vocabulary_table` (
  `id` int(11) NOT NULL,
  `kanji` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `polish` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `basic_vocabulary_table`
--

INSERT INTO `basic_vocabulary_table` (`id`, `kanji`, `kana`, `polish`) VALUES
(1, '猫', 'ねこ', 'kot'),
(2, '犬', 'いぬ', 'pies'),
(3, '鳥', 'とり', 'ptak'),
(4, '魚', 'さかな', 'ryba'),
(5, '学校', 'がっこう', 'szkoła'),
(6, '私', 'わたし', 'ja'),
(7, '', 'あなた', 'ty'),
(8, '母', 'はは', '(moja) mama'),
(9, '父', 'ちち', '(mój) tata'),
(10, '肉', 'にく', 'mięso');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `setting` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `config`
--

INSERT INTO `config` (`id`, `setting`, `value`) VALUES
(1, 'current_motd', '2'),
(2, 'autoupdate_date', '2018-02-05');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_jp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('vocabulary','kanji','definitions') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `courses`
--

INSERT INTO `courses` (`id`, `file`, `name`, `name_jp`, `type`) VALUES
(1, 'hiragana', 'Hiragana', '', 'vocabulary'),
(2, 'katakana', 'Katakana', '', 'vocabulary'),
(3, 'basic', 'Podstawy', '初級', 'vocabulary'),
(4, 'basic2', 'Podstawy 2', '初級 2', 'vocabulary'),
(5, 'animals', 'Zwierzęta', '動物', 'vocabulary'),
(6, 'tokyo_stations', 'Miejsca', '', 'vocabulary'),
(7, 'family', 'Rodzina', '家族', 'vocabulary'),
(8, 'vocabulary_intermediate1', 'Sredniozaawansowane', '中級', 'vocabulary'),
(9, 'vocabulary_intermediate2', 'Sredniozaawansowane 2', '中級 2', 'vocabulary'),
(10, 'vocabulary_intermediate3', 'Sredniozaawansowane 3', '中級 3', 'vocabulary'),
(11, 'kanji_basic1', 'Podstawy kanji 1', '', 'kanji'),
(12, 'kanji_basic2', 'Podstawy kanji 2', '', 'kanji');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `definitions`
--

CREATE TABLE `definitions` (
  `id` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `word` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kanji`
--

CREATE TABLE `kanji` (
  `id` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `kanji` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kunyomi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `onyomi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `radicals` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `kanji`
--

INSERT INTO `kanji` (`id`, `course`, `kanji`, `kunyomi`, `onyomi`, `radicals`) VALUES
(1, 11, '猫', 'ねこ', 'ビョウ', NULL),
(2, 11, '気', 'いき', 'キ、ケ', NULL),
(3, 11, '日', 'ひ、-び、-か', 'ニチ、ジツ', NULL),
(4, 11, '月', 'つき', 'ゲツ、ガツ', NULL),
(5, 11, '金', 'かね、かな-、-がね', 'キン、コン、ゴン', NULL),
(6, 11, '血', 'ち', 'ケツ', NULL),
(7, 11, '皿', 'さら', 'ベイ', NULL),
(8, 11, '道', 'みち', 'ドウ、 トウ', NULL),
(9, 11, '犬', 'いぬ', 'ケン', NULL),
(10, 11, '本', 'もと', 'ホン', NULL),
(11, 11, '橋', 'はし', 'キョウ', NULL),
(12, 11, '円', 'まる、まど、まろ', 'エン', NULL),
(13, 11, '駅', 'えき', '―', NULL),
(14, 11, '安', 'やす', 'アン', NULL),
(15, 11, '雨', 'あめ、あま-、-さめ', 'ウ', NULL),
(16, 11, '学', 'まな', 'ガク', NULL),
(17, 12, '花', 'はな', 'カ', NULL),
(18, 12, '火', 'ひ', 'カ', NULL),
(19, 12, '休', 'やす', 'キュウ', NULL),
(20, 12, '月', 'つき', 'ゲツ、ガツ', NULL),
(21, 12, '魚', 'うお、さかな、-ざかな', 'ギョ', NULL),
(22, 12, '見', 'み', 'ケン', NULL),
(23, 12, '古', 'ふる', 'コ', NULL),
(24, 12, '口', 'くち', 'コウ、ク', NULL),
(25, 12, '子', 'こ、ね', 'シ、ス、ツ', NULL),
(26, 12, '山', 'やま', 'サン、セン', NULL),
(27, 12, '車', 'くるま', 'シャ', NULL),
(28, 12, '人', 'ジン、ニン', 'ひと、-り、-と', NULL),
(29, 12, '川', 'かわ', 'セン', NULL),
(30, 12, '中', 'なか、うち、あた', 'チュウ', NULL),
(31, 12, '天', 'あまつ、あめ、あま-', 'テン', NULL),
(32, 12, '店', 'みせ、たな', 'テン', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(6, '2016_06_01_000004_create_oauth_clients_table', 2),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `motds`
--

CREATE TABLE `motds` (
  `id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `motds`
--

INSERT INTO `motds` (`id`, `message`) VALUES
(3, 'Manju to słodkawa bułka z nadzieniem z fasoli azuki. Momiji manju to manju w kształcie liścia klonu, specjalność wyspy Miyajima.'),
(4, 'Łączna długość linii metra w Tokyo wynosi 304.1 km.'),
(5, 'Metro w Osace jest droższe od metra w Tokyo. (wtf?)'),
(6, 'Świątynia Senso-ji jest najczęściej odwiedzanym miejscem religijnym na świecie.'),
(7, 'Najpopularniejsze nazwiska w Japonii to Satou, Suzuki, Takahashi.'),
(8, 'Oficjalna lista podstawowych znaków kanji zawiera 2136 znaki. (Zestaw jouyou)'),
(9, 'Najczęściej używanym znakiem kanji jest 日');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0f502389d18972f5fd9a3985183d855f63d2c693429bd1c96eb7f7282a6b750fa7c0f669514845fe', 15, 4, 'api', '[]', 0, '2018-01-23 20:44:14', '2018-01-23 20:44:14', '2019-01-23 21:44:14'),
('1f7d3a64531ccdafb1610871715305620d59ac26043e0938d122be73bb962f5845a28f1174264838', 11, 4, 'api', '[]', 0, '2018-01-14 19:11:41', '2018-01-14 19:11:41', '2019-01-14 20:11:41'),
('21a1cd3857b331602123977b720eb099133de42a749edc10fdb74fc7ed71296b68290b007e8a08cb', 7, 4, 'api', '[]', 0, '2018-01-23 20:02:43', '2018-01-23 20:02:43', '2019-01-23 21:02:43'),
('2fc83f334c7c4571e4a33cb40a7dfc39f0e688ee6ae849a80cb1a247d7f11f056878416416932202', 10, 4, 'api', '[]', 0, '2018-01-14 19:10:26', '2018-01-14 19:10:26', '2019-01-14 20:10:26'),
('34b3a154804e4ad13c4186d1e65dd8b4186e52ef54710f21629d5dbd87867993ed2fe3cbab772184', 6, 4, 'api', '[]', 0, '2018-01-14 12:14:51', '2018-01-14 12:14:51', '2019-01-14 13:14:51'),
('4c42e4beb4c8d45c18438a506918e2afdf790ce97bd6a2b205a865adf7f6cd9bdb88add1d5e17029', 23, 4, 'api', '[]', 0, '2018-01-23 21:38:04', '2018-01-23 21:38:04', '2019-01-23 22:38:04'),
('549e699eb0448927282bbe0e59d427876b4c5b623dfae1eefa724e3ae78e92f63f4da9712694c729', 6, 4, 'api', '[]', 0, '2018-01-14 12:14:36', '2018-01-14 12:14:36', '2019-01-14 13:14:36'),
('5cdc9b2e2ef6cf9d4c1a3b0aa7a596a2fdac9ea0ee3dfcadaa42dc85e971321067921160a330456f', 6, 4, 'api', '[]', 0, '2018-01-14 12:13:53', '2018-01-14 12:13:53', '2019-01-14 13:13:53'),
('6a6ac87e25f21c6043ab157c5188b8a7d85b9f246aacb9357df83a8eb9785c11db71ed6e63a69461', 12, 4, 'api', '[]', 0, '2018-01-15 15:37:12', '2018-01-15 15:37:12', '2019-01-15 16:37:12'),
('84d50e8cd56caad4481dfe0a89465d0900a935e6afb22d8b24246bad50eab1503f60ac9c9cf283d4', 7, 4, 'api', '[]', 0, '2018-01-23 13:32:50', '2018-01-23 13:32:50', '2019-01-23 14:32:50'),
('8ac60f60a42e0a98bf57e3b085207c4f6da8c86e1cef71fd11c4adeb7ec7a0ac646ba69ee172ae66', 6, 4, 'api', '[]', 0, '2018-01-14 12:14:12', '2018-01-14 12:14:12', '2019-01-14 13:14:12'),
('8d55dac214b4906abca4e697663e60a79bd85df8712b493a7be247a50487aa481e9ff8c82c33f1bd', 7, 4, 'api', '[]', 0, '2018-01-23 20:01:45', '2018-01-23 20:01:45', '2019-01-23 21:01:45'),
('93c531b17619361c785cabfa0a2782972a709c59e35728191773f13b6b3a26247c20ffd84e43db51', 6, 4, 'api', '[]', 0, '2018-01-14 12:15:58', '2018-01-14 12:15:58', '2019-01-14 13:15:58'),
('98111d7894cf67d4ea7bc87e06958fe3c0f1d6c2855c27d72597db8ef6da3419bba738ce18ebf383', 7, 4, 'api', '[]', 0, '2018-01-23 20:03:46', '2018-01-23 20:03:46', '2019-01-23 21:03:46'),
('a962247a4c45f1ca8cc0c8ee5767230f910d8deee65a27a89f5bb234391240fdffbb246b5b5a2bff', 6, 4, 'api', '[]', 0, '2018-01-14 12:13:23', '2018-01-14 12:13:23', '2019-01-14 13:13:23'),
('ab463b3dc854b9c2fdb93b53fd212c9d40eebc54ba3112969b08265c282faa6a73555e9270f549b6', 9, 4, 'api', '[]', 0, '2018-01-14 12:26:46', '2018-01-14 12:26:46', '2019-01-14 13:26:46'),
('af29c33bd553b6cb13dd832bdb5cf5b6f00cd9b7553cd439db401ff8ba1737d0eb32b8eb37162636', 6, 4, 'api', '[]', 0, '2018-01-14 12:15:55', '2018-01-14 12:15:55', '2019-01-14 13:15:55'),
('b561bd67eb44f57e63876203c42d8716796d31130ea2fa2d7b32a5a45eaf1ee67f29df5c81ab1d42', 18, 4, 'api', '[]', 0, '2018-01-23 21:29:31', '2018-01-23 21:29:31', '2019-01-23 22:29:31'),
('bba420047fec7e8a942f8f617cd732fec6efaaac56a56c10bf503515a3de4067d77f8dd4108199a0', 17, 4, 'api', '[]', 0, '2018-01-23 21:28:53', '2018-01-23 21:28:53', '2019-01-23 22:28:53'),
('bf9645c101893aeba5d3327a2755f4112f8c8c888590b35a1de63f787bca43445d57c93afa8117c8', 7, 4, 'api', '[]', 0, '2018-01-23 21:27:11', '2018-01-23 21:27:11', '2019-01-23 22:27:11'),
('c2b483529023651ef2528df7e02124cc56eaa03795e7e2c43f226f23672c87a535654651466c5afd', 16, 4, 'api', '[]', 0, '2018-02-05 17:32:51', '2018-02-05 17:32:51', '2019-02-05 18:32:51'),
('c6ccab47a33ba8c6f1e12957da233d8c2f3b5ef257a19fec042a486ba83f8e5a9951a74042c49878', 21, 4, 'api', '[]', 0, '2018-01-23 21:33:35', '2018-01-23 21:33:35', '2019-01-23 22:33:35'),
('c76936fcb607aea093060b161d7bfdc51f39fb3e30c57a9a8567f58fba8f4c6f0c325d71199362ac', 20, 4, 'api', '[]', 0, '2018-01-23 21:31:41', '2018-01-23 21:31:41', '2019-01-23 22:31:41'),
('ca7d330a45a070c9ce438d381adb0ac5dc8ac146ea6f5c0f8b7ec7373f918de73bec76371c2594e3', 19, 4, 'api', '[]', 0, '2018-01-23 21:31:13', '2018-01-23 21:31:13', '2019-01-23 22:31:13'),
('d82d57f7b9cb29ec3233826a74e83d8dfa77ee518e4ea77884b3c612643a1b64b5e7ac665c81dee5', 6, 4, 'api', '[]', 0, '2018-01-06 11:11:27', '2018-01-06 11:11:27', '2019-01-06 12:11:27'),
('d933b43d9fee23f55aa0286aa2543bc555f0ca795fdcba4c92b5afe659af759087b1b132e289c0a5', 14, 4, 'api', '[]', 0, '2018-01-23 20:41:03', '2018-01-23 20:41:03', '2019-01-23 21:41:03'),
('dc77b8204112ce6ef7aabcafa6cac7b502adf08933a840e207d85601918a930d4a6a69b4dcc58468', 22, 4, 'api', '[]', 0, '2018-01-23 21:34:28', '2018-01-23 21:34:28', '2019-01-23 22:34:28'),
('e6a102b26d697fb5ba6a3381d9b336b7abb185ffac6ea47f96eac50c1fc753611ba9b89c9f97009b', 6, 4, 'api', '[]', 0, '2018-01-14 12:14:25', '2018-01-14 12:14:25', '2019-01-14 13:14:25'),
('e9c2dff9f46bced9e8b88cd2ae333834ddc93592612ba67b5634c8a4456a377ba8f2998c09e9cecd', 6, 4, 'api', '[]', 0, '2018-01-14 11:51:33', '2018-01-14 11:51:33', '2019-01-14 12:51:33');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'JapanKitty Personal Access Client', '6GaiqO5i9iH4Jr4TfhKUIZgmEvzyzVo7QJgbSXc2', 'http://localhost', 1, 0, 0, '2017-10-28 10:40:29', '2017-10-28 10:40:29'),
(2, NULL, 'JapanKitty Password Grant Client', 'zMjn6qZvS9Wr92JKQ10DIUSyemxQ6bz2EuhYqphY', 'http://localhost', 0, 1, 0, '2017-10-28 10:40:29', '2017-10-28 10:40:29'),
(3, NULL, 'android', 'ctqFpVFJ9Q5qCHyDUPwUjRGzSg5BiulX3mrjXJnD', 'http://localhost/auth/callback', 0, 0, 0, '2017-11-14 12:25:37', '2017-11-14 12:25:37'),
(4, NULL, 'JapanKitty Personal Access Client', 'hG9mUK1VgEJ1TaBwXbsDid67bkITJ8iueQw697lN', 'http://localhost', 1, 0, 0, '2017-11-14 12:37:33', '2017-11-14 12:37:33'),
(5, NULL, 'JapanKitty Password Grant Client', 'XMrGyxKwtcSqx7vDtuVZnbqPyK0iufKoOApAPHAY', 'http://localhost', 0, 1, 0, '2017-11-14 12:37:33', '2017-11-14 12:37:33');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-10-28 10:40:29', '2017-10-28 10:40:29'),
(2, 4, '2017-11-14 12:37:33', '2017-11-14 12:37:33');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `texts`
--

CREATE TABLE `texts` (
  `id` int(11) NOT NULL,
  `offerDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `offerOption1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `offerOption2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `offerOption3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutCourse` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `texts`
--

INSERT INTO `texts` (`id`, `offerDescription`, `offerOption1`, `offerOption2`, `offerOption3`, `contactDescription`, `aboutCourse`) VALUES
(3, '', '', '', '', 'japankitty@halamix2.pl', ''),
(4, 'Serwis jest nieustannie rozwijany', '', '', '', 'W razie pytań skontaktuj się z nami pod adresem\r\njapankitty@halamix2.pl', 'Język japoński - język używany przez ok. 130 mln mieszkańców Japonii oraz japońskich emigrantów na wszystkich kontynentach. Najstarsze znane teksty to pochodzące z V i VI wieku nazwy własne. Nie mówią jednak one wiele o języku. Najstarsze dłuższe teksty pochodzą z VIII wieku (kiki). Już wtedy zaczęto używać znaków chińskich do sylabicznego zapisu wymowy.\n\nJednak pewne sylaby, które są identyczne we współczesnym japońskim, były zapisywane różnymi znakami i był to zapis konsekwentny. Świadczy to o tym, że dawny japoński miał więcej samogłosek (lub ogólniej: typów sylab) – osiem, zamiast współczesnych pięciu, za to nie rozróżniał długości samogłosek, tak jak to czyni współczesny japoński.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sex` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unknown',
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'missing',
  `birthday` date NOT NULL DEFAULT '1970-01-01',
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `sex`, `surname`, `birthday`, `role`, `status`) VALUES
(2, 'Halamix2', 'skrzynka@halamix2.pl', '$2y$10$o.XEZz68z0FVTw/ZZwoQueII5R/h11stbQcXPTEddsCcZ4DyvIUc.', 'LS5pnXF6JRJ0FoRdgQntabsb2gAYhZcCdS74WpntA6rWaBA8cr8D7XN2Xk9A', '2017-10-24 11:18:36', '2018-01-23 20:24:54', 'unknown', 'missing', '1970-01-01', 'admin', 'active'),
(3, 'testowyJa', 'new2@halamix2.pl', '$2y$10$o.XEZz68z0FVTw/ZZwoQueII5R/h11stbQcXPTEddsCcZ4DyvIUc.', NULL, '2017-11-14 13:05:08', '2018-01-06 11:47:25', 'unknown', 'missing', '1970-01-01', 'user', 'blocked'),
(6, 'testowyJa2', 'lol2@halamix2.pl', '$2y$10$ci1WSXHLyqKjyjsnxbiNcOV.VwmixF8Rptc1WiFgq6bI/G/pi02B2', NULL, '2018-01-06 11:11:25', '2018-01-06 11:11:25', 'unknown', 'missing', '1970-01-01', 'user', 'active'),
(7, 'testowyJa2', 'lol@halamix2.pl', '$2y$10$P85lQL6M94u4nZm.xnaTV.sSQER98RzLA2ntK6iJvYdEAEywqOqre', NULL, '2018-01-14 12:20:36', '2018-01-22 15:30:51', 'steam train', 'missing', '1970-01-01', 'user', 'active'),
(9, 'testowyJa23', 'lol3@halamix2.pl', '$2y$10$fn1i0VSlAw2wzJcepPbVbOQ/CA9qxQUbA1sBaztnvppCPVroSOQSy', NULL, '2018-01-14 12:26:46', '2018-01-14 12:26:46', 'unknown', 'missing', '1970-01-01', 'user', 'active'),
(11, 'testowyJa11', 'lol11@halamix2.pl', '$2y$10$JPhBMwPUNRRJlmLgCLdcGuLkmhuXCpgVqRbmMHAvkubhVjCKrGwxu', NULL, '2018-01-14 19:11:41', '2018-01-14 19:11:41', 'raz w tygodniu', 'Waligrucha', '1999-09-29', 'user', 'active'),
(12, 'Piotr', 'lool@halamix2.pl', '$2y$10$88GWjnEeD4Bs1rAMXWfW2Oits6JnMb5r8/IG43spICarDjqXcSXZS', NULL, '2018-01-15 15:37:12', '2018-01-15 15:37:12', 'unknown', 'missing', '1970-01-01', 'user', 'active'),
(13, 'Piotr', 'll@halamix2.pl', '$2y$10$slJY7kG9hOfemxhVXKgeDuNNubkSFzyzGl6KFkhkF7nMd0JVLvWIu', NULL, '2018-01-23 13:19:26', '2018-01-23 13:19:26', 'Man', 'Halamix', '2017-11-08', 'user', 'active'),
(14, 'admin', 'admin@admin.pl', '$2y$10$y9OxnBK9gAOs6IOKfnsEN..6rpSBAAjN9XhiodrcbPc.b.bT0BV1W', NULL, '2018-01-23 20:41:03', '2018-01-23 20:41:03', 'unknown', 'missing', '1970-01-01', 'user', 'active'),
(15, 'admin2', 'admin2@admin.pl', '$2y$10$y9OxnBK9gAOs6IOKfnsEN..6rpSBAAjN9XhiodrcbPc.b.bT0BV1W', NULL, '2018-01-23 21:43:54', '2018-01-23 21:43:54', 'unknown', 'missing', '1970-01-01', 'admin', 'active'),
(16, 'Użytkownik', 'user@user.pl', '$2y$10$iQ.X0v7amMbSrWJy4s6Od.2SFtEO2esRUmmfz4rXs7IIX6BlVFHS.', NULL, '2018-02-05 15:29:21', '2018-02-05 15:29:21', 'Man', 'Użytkownik', '2018-02-01', 'user', 'active');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `kana` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kanji` text COLLATE utf8mb4_unicode_ci,
  `polish` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `course`, `kana`, `kanji`, `polish`) VALUES
(1, 5, 'かめ', '亀', 'żółw'),
(2, 5, 'うさぎ', '兎', 'królik'),
(3, 5, 'えび', '海老', 'krewetka'),
(4, 5, 'かえる', '蛙', 'żaba'),
(5, 5, 'とかげ', '蜥蜴', 'jaszczurka'),
(6, 5, 'ぞう', '象', 'słoń'),
(7, 5, 'ライオン', 'ライオン', 'lew'),
(8, 5, 'ねずみ', '鼠', 'mysz'),
(9, 5, 'さる', '猿', 'małpa'),
(10, 5, 'へび', '蛇', 'wąż'),
(11, 5, 'さかな', '魚', 'ryba'),
(12, 5, 'とり', '鳥', 'ptak'),
(13, 5, 'いぬ', '犬', 'pies'),
(14, 5, 'ねこ', '猫', 'kot'),
(15, 3, 'きょうし', '教師', 'nauczyciel'),
(16, 3, 'いしゃ', '医者', 'lekarz'),
(17, 3, 'かんごし', '看護師', 'pielęgniarka'),
(18, 3, 'べんごし', '弁護士', 'prawnik'),
(19, 3, 'かしゅ', '歌手', 'piosenkarz'),
(20, 3, 'はいゆう', '俳優', 'aktor'),
(21, 3, 'げいじゅつか', '芸術家', 'artysta'),
(22, 3, 'プログラマ', 'プログラマ', 'programista'),
(23, 3, 'さっか', '作家', 'pisarz'),
(24, 3, 'おとこ', '男', 'mężczyzna'),
(25, 3, 'ひと', '人', 'człowiek'),
(26, 4, 'えき', '駅', 'stacja'),
(27, 4, 'だいがく', '大学', 'uniwersytet'),
(28, 4, 'がくせい', '学生', 'student'),
(29, 4, 'みんな', '皆', 'wszyscy'),
(30, 4, 'わすれる', '忘れる', 'zapominać'),
(31, 4, 'おぼえる', '覚える', 'pamiętać'),
(32, 4, 'おどる', '踊る', 'tańczyć'),
(33, 4, 'かしゅ', '歌手', 'piosenkarz'),
(34, 4, 'しょうらい', '将来', 'przyszłość'),
(35, 4, 'それで', 'それで', 'zatem'),
(36, 4, 'かいわ', '会話', 'rozmowa'),
(37, 4, 'しゅうかん', '習慣', 'zwyczaj'),
(38, 4, 'そら', '空', 'niebo'),
(39, 4, 'よる', '夜', 'noc'),
(40, 4, 'はなび', '花火', 'fajerwerki'),
(41, 4, 'どうぶつ', '動物', 'zwierzę'),
(42, 4, 'ばしょ', '場所', 'miejsce'),
(43, 4, 'お', 'お', 'o'),
(44, 4, 'え', 'え', 'e'),
(45, 4, 'う', 'う', 'u'),
(46, 4, 'い', 'い', 'i'),
(47, 4, 'あ', 'あ', 'a'),
(48, 4, 'か', 'か', 'ka'),
(49, 4, 'き', 'き', 'ki'),
(50, 4, 'く', 'く', 'ku'),
(51, 4, 'け', 'け', 'ke'),
(52, 4, 'こ', 'こ', 'ko'),
(53, 4, 'さ', 'さ', 'sa'),
(54, 4, 'しんぶん', '新聞', 'gazeta'),
(55, 4, 'おゆ', 'お湯', 'gorąca woda'),
(56, 4, 'じむしょ', '事務所', 'biuro'),
(57, 4, 'かん', '缶', 'puszka'),
(58, 4, 'びん', '瓶', 'butelka'),
(59, 4, 'うちゅう', '宇宙', 'kosmos'),
(60, 4, 'きもの', '着物', 'kimono'),
(61, 7, 'おじいさん', 'お祖父さん', 'dziadek'),
(62, 7, 'おばあさん', 'お祖母さん', 'babcia'),
(63, 7, 'いもうと', '妹', 'młodsza siostra'),
(64, 7, 'あね', '姉', 'starsza siostra'),
(65, 7, 'おとうと', '弟', 'młodszy brat'),
(66, 7, 'あに', '兄', 'starszy brat'),
(67, 7, 'むすめ', '娘', 'córka'),
(68, 7, 'むすこ', '息子', 'syn'),
(69, 7, 'おとうさん', 'お父さん', '(twój) tata'),
(70, 7, 'ちち', '父', '(mój) tata'),
(71, 7, 'おかあさん', 'お母さん', '(twoja) mama'),
(72, 7, 'はは', '母', '(moja) mama'),
(73, 1, 'や', 'や', 'ya'),
(74, 1, 'ゆ', 'ゆ', 'yu'),
(75, 1, 'よ', 'よ', 'yo'),
(76, 1, 'わ', 'わ', 'wa'),
(77, 1, 'を', 'を', 'wo'),
(78, 1, 'は', 'は', 'ha'),
(79, 1, 'ひ', 'ひ', 'hi'),
(80, 1, 'ふ', 'ふ', 'fu'),
(81, 1, 'へ', 'へ', 'he'),
(82, 1, 'ほ', 'ほ', 'ho'),
(83, 1, 'ぱ', 'ぱ', 'pa'),
(84, 1, 'ぴ', 'ぴ', 'pi'),
(85, 1, 'ぷ', 'ぷ', 'pu'),
(86, 1, 'ぺ', 'ぺ', 'pe'),
(87, 1, 'ぽ', 'ぽ', 'po'),
(88, 1, 'が', 'が', 'ga'),
(89, 1, 'ぎ', 'ぎ', 'gi'),
(90, 1, 'ぐ', 'ぐ', 'gu'),
(91, 1, 'げ', 'げ', 'ge'),
(92, 1, 'ご', 'ご', 'go'),
(93, 1, 'だ', 'だ', 'da'),
(94, 1, 'づ', 'づ', 'du'),
(95, 1, 'で', 'で', 'de'),
(96, 1, 'ど', 'ど', 'do'),
(97, 1, 'ら', 'ら', 'ra'),
(98, 1, 'り', 'り', 'ri'),
(99, 1, 'る', 'る', 'ru'),
(100, 1, 'れ', 'れ', 're'),
(101, 1, 'ろ', 'ろ', 'ro'),
(102, 1, 'ざ', 'ざ', 'za'),
(103, 1, 'じ', 'じ', 'ji'),
(104, 1, 'ず', 'ず', 'zu'),
(105, 1, 'ぜ', 'ぜ', 'ze'),
(106, 1, 'ぞ', 'ぞ', 'zo'),
(107, 1, 'ん', 'ん', 'n'),
(108, 1, 'つ', 'つ', 'tsu'),
(109, 1, 'て', 'て', 'te'),
(110, 1, 'と', 'と', 'to'),
(111, 1, 'な', 'な', 'na'),
(112, 1, 'に', 'に', 'ni'),
(113, 1, 'ぬ', 'ぬ', 'nu'),
(114, 1, 'ね', 'ね', 'ne'),
(115, 1, 'の', 'の', 'no'),
(116, 1, 'ま', 'ま', 'ma'),
(117, 1, 'み', 'み', 'mi'),
(118, 1, 'む', 'む', 'mu'),
(119, 1, 'め', 'め', 'me'),
(120, 1, 'も', 'も', 'mo'),
(121, 1, 'お', 'お', 'o'),
(122, 1, 'え', 'え', 'e'),
(123, 1, 'う', 'う', 'u'),
(124, 1, 'い', 'い', 'i'),
(125, 1, 'あ', 'あ', 'a'),
(126, 1, 'か', 'か', 'ka'),
(127, 1, 'き', 'き', 'ki'),
(128, 1, 'く', 'く', 'ku'),
(129, 1, 'け', 'け', 'ke'),
(130, 1, 'こ', 'こ', 'ko'),
(131, 1, 'さ', 'さ', 'sa'),
(132, 1, 'し', 'し', 'shi'),
(133, 1, 'す', 'す', 'su'),
(134, 1, 'せ', 'せ', 'se'),
(135, 1, 'そ', 'そ', 'so'),
(136, 1, 'た', 'た', 'ta'),
(137, 1, 'ち', 'ち', 'chi'),
(138, 2, 'オ', 'オ', 'o'),
(139, 2, 'エ', 'エ', 'e'),
(140, 2, 'ウ', 'ウ', 'u'),
(141, 2, 'イ', 'イ', 'i'),
(142, 2, 'ア', 'ア', 'a'),
(143, 2, 'カ', 'カ', 'ka'),
(144, 2, 'キ', 'キ', 'ki'),
(145, 2, 'ク', 'ク', 'ku'),
(146, 2, 'ケ', 'ケ', 'ke'),
(147, 2, 'コ', 'コ', 'ko'),
(148, 2, 'サ', 'サ', 'sa'),
(149, 2, 'シ', 'シ', 'shi'),
(150, 2, 'ス', 'ス', 'su'),
(151, 2, 'セ', 'セ', 'se'),
(152, 2, 'ソ', 'ソ', 'so'),
(153, 2, 'タ', 'タ', 'ta'),
(154, 2, 'チ', 'チ', 'chi'),
(155, 2, 'ヤ', 'ヤ', 'ya'),
(156, 2, 'ユ', 'ユ', 'yu'),
(157, 2, 'ヨ', 'ヨ', 'yo'),
(158, 2, 'ワ', 'ワ', 'wa'),
(159, 2, 'ヲ', 'ヲ', 'wo'),
(160, 2, 'ハ', 'ハ', 'ha'),
(161, 2, 'ヒ', 'ヒ', 'hi'),
(162, 2, 'フ', 'フ', 'fu'),
(163, 2, 'ヘ', 'ヘ', 'he'),
(164, 2, 'ホ', 'ホ', 'ho'),
(165, 2, 'パ', 'パ', 'pa'),
(166, 2, 'ピ', 'ピ', 'pi'),
(167, 2, 'プ', 'プ', 'pu'),
(168, 2, 'ペ', 'ペ', 'pe'),
(169, 2, 'ポ', 'ポ', 'po'),
(170, 2, 'ガ', 'ガ', 'ga'),
(171, 2, 'ギ', 'ギ', 'gi'),
(172, 2, 'グ', 'グ', 'gu'),
(173, 2, 'ゲ', 'ゲ', 'ge'),
(174, 2, 'ゴ', 'ゴ', 'go'),
(175, 2, 'ダ', 'ダ', 'da'),
(176, 2, 'ヅ', 'ヅ', 'du'),
(177, 2, 'デ', 'デ', 'de'),
(178, 2, 'ド', 'ド', 'do'),
(179, 2, 'ラ', 'ラ', 'ra'),
(180, 2, 'リ', 'リ', 'ri'),
(181, 2, 'ル', 'ル', 'ru'),
(182, 2, 'レ', 'レ', 're'),
(183, 2, 'ロ', 'ロ', 'ro'),
(184, 2, 'ザ', 'ザ', 'za'),
(185, 2, 'ジ', 'ジ', 'ji'),
(186, 2, 'ズ', 'ズ', 'zu'),
(187, 2, 'ゼ', 'ゼ', 'ze'),
(188, 2, 'ゾ', 'ゾ', 'zo'),
(189, 2, 'ン', 'ン', 'n'),
(190, 2, 'ツ', 'ツ', 'tsu'),
(191, 2, 'テ', 'テ', 'te'),
(192, 2, 'ト', 'ト', 'to'),
(193, 2, 'ナ', 'ナ', 'na'),
(194, 2, 'ニ', 'ニ', 'ni'),
(195, 2, 'ヌ', 'ヌ', 'nu'),
(196, 2, 'ネ', 'ネ', 'ne'),
(197, 2, 'ノ', 'ノ', 'no'),
(198, 2, 'マ', 'マ', 'ma'),
(199, 2, 'ミ', 'ミ', 'mi'),
(200, 2, 'ム', 'ム', 'mu'),
(201, 2, 'メ', 'メ', 'me'),
(202, 2, 'モ', 'モ', 'mo'),
(203, 6, 'あきはばら', '秋葉原', 'Akihabara'),
(204, 6, 'とうきょう', '東京', 'Tokio'),
(205, 6, 'おおさか', '大阪', 'Osaka'),
(206, 6, 'きょうと', '京都', 'Kioto'),
(207, 6, 'ひびや', '日比谷', 'Hibiya'),
(208, 6, 'みのわ', '三ノ輪', 'Minowa'),
(209, 6, 'よよぎ', '代々木', 'Yoyogi'),
(210, 6, 'しぶや', '渋谷', 'Shibuya'),
(211, 6, 'しんじゅく', '新宿', 'Shinjuku'),
(212, 6, 'みなみせんじゅう', '南千住', 'Minami Senju'),
(213, 6, 'うえの', '上野', 'Ueno'),
(214, 6, 'ひろしま', '広島', 'Hiroshima'),
(215, 6, 'いつくしま', '厳島', 'Itsukushima'),
(216, 6, 'おおくのしま', '大久野島', 'Okunoshima'),
(217, 6, 'ふくやま', '福山', 'Fukuyama'),
(218, 6, 'よこはま', '横浜', 'Yokohama'),
(219, 6, 'みしま', '三島', 'Mishima'),
(220, 6, 'ひめじ', '姫路', 'Himeji'),
(221, 6, 'こうべ', '神戸', 'Kobe'),
(222, 6, 'やくしま', '屋久島', 'Yakushima'),
(223, 8, 'ちゅうしゃ（する）', '駐車（する）', 'parkowac'),
(224, 8, 'まんしゃ', '満車', 'pelny parking'),
(225, 8, 'くうしゃ', '空車', 'parking z wolnymi miejscami'),
(226, 8, 'むだん（で）', '無断（で）', 'bez pozwolenia'),
(227, 8, 'だいきん', '代金', 'oplata'),
(228, 8, 'すいどう', '水道', 'zaopatrzenie w wode'),
(229, 8, 'ふまん（な）', '不満（な）', 'niezadowolenie'),
(230, 8, 'せいかく（な）', '正確（な）', 'poprawny'),
(231, 8, 'しんよう', '信用', 'zaufanie'),
(232, 8, 'ほうこう', '方向', 'kierunek'),
(233, 8, 'しゅっせきする', '出席する', 'uczęszczać'),
(234, 8, 'すうしき', '数式', 'równanie'),
(235, 8, 'てんじょう', '天井', 'sufit'),
(236, 8, 'もくじ', '目次', 'spis treści'),
(237, 8, 'かんしん', '関心', 'zainteresowanie'),
(238, 8, 'けっせき', '欠席', 'nieobecność'),
(239, 8, 'みらい', '未来', 'przyszłość'),
(240, 8, 'しま', '島', 'wyspa'),
(241, 8, 'わかい', '若い', 'młody'),
(242, 8, 'しゅっけつ', '出血', 'krwawienie'),
(243, 8, 'げんご', '言語', 'język'),
(244, 8, 'こうこく', '広告', 'reklamy'),
(245, 8, 'きょうつう', '共通', 'wspólny'),
(246, 8, 'たすける', '助ける', 'pomagać'),
(247, 8, 'できあがる', 'できあがる', 'być ukończonym'),
(248, 8, 'しおからい', '塩辛い', 'słony'),
(249, 8, 'くわえる', '加える', 'dodawać'),
(250, 8, 'きざむ', '刻む', 'siekać'),
(251, 8, 'おゆをわかす', 'お湯を沸かす', 'zagotować wodę'),
(252, 8, 'おゆをさます', 'お湯を冷ます', 'ostudzić wodę'),
(253, 8, 'ごはんをたく', 'ご飯を炊く', 'ugotować ryż'),
(254, 8, 'ゆでる', 'ゆでる', 'gotować'),
(255, 8, 'みずをきる', '水を切る', 'wysuszyć'),
(256, 8, 'こしょうをふる', 'こしょうを振る', 'posypać pieprzem'),
(257, 8, 'こさじ', '小さじ', 'łyżeczka'),
(258, 8, 'おおさじ', '大さじ', 'łyżka stołowa'),
(259, 8, 'すいはんき', '炊飯器', 'maszyna do gotowania ryżu'),
(260, 8, 'さます', '覚ます', 'obudzić kogoś'),
(261, 9, 'ていしゃ', '停車', 'zatrzymać pojazd'),
(262, 9, 'バスてい', 'バス停', 'przystanek autobusowy'),
(263, 9, 'せいり', '整理', 'porządek'),
(264, 9, 'ちゅうしゃけん', '駐車券', 'bilet parkingowy'),
(265, 9, 'げんきん', '現金', 'gotówka'),
(266, 9, 'きがえる', '着替える', 'przebrać się'),
(267, 9, 'りょうがえ', '両替', 'wymiana (np. walut)'),
(268, 9, 'ゆうせんせき', '優先席', 'siedzenie dla osób niepełnosprawnych'),
(269, 9, 'じょゆう', '女優', 'aktorka'),
(270, 9, 'やさしい', '優しい', 'delikatny'),
(271, 9, 'ざせき', '座席', 'siedzenie'),
(272, 9, 'せいざ', '正座', 'seiza (siedzenie w japońskim stylu)'),
(273, 9, 'すわる', '座る', 'siadać'),
(274, 9, 'こうしゃぐち', '降車口', 'wyjście (np. z autobusu)'),
(275, 9, 'おりる', '降りる', 'wysiadać'),
(276, 9, 'いこう', '以降', 'po ...'),
(277, 9, 'していせき', '指定席', 'zarezerwowane miejsce'),
(278, 9, 'りょうきん', '料金', 'opłata'),
(279, 9, 'ちょうみりょう', '調味料', 'przyprawy'),
(280, 9, 'まないた', 'まな板', 'deska do krojenia'),
(281, 9, 'す', '酢', 'ocet'),
(282, 9, 'はかり', 'はかり', 'waga'),
(283, 9, 'えいよう', '栄養', 'składniki odżywcze'),
(284, 9, 'じゅうたん', 'じゅうたん', 'dywan'),
(285, 10, 'りそう', '理想', 'ideał');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `basic_vocabulary_table`
--
ALTER TABLE `basic_vocabulary_table`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `definitions`
--
ALTER TABLE `definitions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kanji`
--
ALTER TABLE `kanji`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `motds`
--
ALTER TABLE `motds`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indeksy dla tabeli `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeksy dla tabeli `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `basic_vocabulary_table`
--
ALTER TABLE `basic_vocabulary_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `definitions`
--
ALTER TABLE `definitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `kanji`
--
ALTER TABLE `kanji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `motds`
--
ALTER TABLE `motds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
