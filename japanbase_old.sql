-
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
-- Zrzut danych tabeli `courses`
--

INSERT INTO `courses` (`id`, `file`, `name`, `type`) VALUES
(1, 'hiragana', 'Hiragana', 'vocabulary'),
(2, 'katakana', 'Katakana', 'vocabulary'),
(3, 'basic', 'Podstawy', 'vocabulary'),
(4, 'basic2', 'Podstawy 2', 'vocabulary'),
(5, 'animals', 'Zwierzęta', 'vocabulary'),
(6, 'tokyo_stations', 'Miejsca', 'vocabulary'),
(7, 'family', 'Rodzina', 'vocabulary'),
(8, 'vocabulary_intermediate1', 'Sredniozaawansowane', 'vocabulary'),
(9, 'vocabulary_intermediate2', 'Sredniozaawansowane 2', 'vocabulary'),
(10, 'vocabulary_intermediate3', 'Sredniozaawansowane 3', 'vocabulary'),
(11, 'kanji_basic1', 'Podstawy kanji 1', 'kanji'),
(12, 'kanji_basic2', 'Podstawy kanji 2', 'kanji');

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
  `onyomi` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `kanji`
--

INSERT INTO `kanji` (`id`, `course`, `kanji`, `kunyomi`, `onyomi`) VALUES
(1, 11, '猫', 'ねこ', 'ビョウ'),
(2, 11, '気', 'いき', 'キ、ケ'),
(3, 11, '日', 'ひ、-び、-か', 'ニチ、ジツ'),
(4, 11, '月', 'つき', 'ゲツ、ガツ'),
(5, 11, '金', 'かね、かな-、-がね', 'キン、コン、ゴン'),
(6, 11, '血', 'ち', 'ケツ'),
(7, 11, '皿', 'さら', 'ベイ'),
(8, 11, '道', 'みち', 'ドウ、 トウ'),
(9, 11, '犬', 'いぬ', 'ケン'),
(10, 11, '本', 'もと', 'ホン'),
(11, 11, '橋', 'はし', 'キョウ'),
(12, 11, '円', 'まる、まど、まろ', 'エン'),
(13, 11, '駅', 'えき', '―'),
(14, 11, '安', 'やす', 'アン'),
(15, 11, '雨', 'あめ、あま-、-さめ', 'ウ'),
(16, 11, '学', 'まな', 'ガク'),
(17, 12, '花', 'はな', 'カ'),
(18, 12, '火', 'ひ', 'カ'),
(19, 12, '休', 'やす', 'キュウ'),
(20, 12, '月', 'つき', 'ゲツ、ガツ'),
(21, 12, '魚', 'うお、さかな、-ざかな', 'ギョ'),
(22, 12, '見', 'み', 'ケン'),
(23, 12, '古', 'ふる', 'コ'),
(24, 12, '口', 'くち', 'コウ、ク'),
(25, 12, '子', 'こ、ね', 'シ、ス、ツ'),
(26, 12, '山', 'やま', 'サン、セン'),
(27, 12, '車', 'くるま', 'シャ'),
(28, 12, '人', 'ジン、ニン', 'ひと、-り、-と'),
(29, 12, '川', 'かわ', 'セン'),
(30, 12, '中', 'なか、うち、あた', 'チュウ'),
(31, 12, '天', 'あまつ、あめ、あま-', 'テン'),
(32, 12, '店', 'みせ、たな', 'テン');

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
(3, 'Drugiej takiej nie znajdziesz', 'Wersja podstawowa - 20zł', 'Wersja średniozaawansowana -- 50zł', 'Wersja zaawansowana - 65zł', 'W razie pytań skontaktuj się z nami', 'Język japoński - język używany przez ok. 130 mln mieszkańców Japonii oraz japońskich emigrantów na wszystkich kontynentach. Najstarsze znane teksty to pochodzące z V i VI wieku nazwy własne. Nie mówią jednak one wiele o języku. Najstarsze dłuższe teksty pochodzą z VIII wieku (kiki). Już wtedy zaczęto używać znaków chińskich do sylabicznego zapisu wymowy.\n\nJednak pewne sylaby, które są identyczne we współczesnym japońskim, były zapisywane różnymi znakami i był to zapis konsekwentny. Świadczy to o tym, że dawny japoński miał więcej samogłosek (lub ogólniej: typów sylab) – osiem, zamiast współczesnych pięciu, za to nie rozróżniał długości samogłosek, tak jak to czyni współczesny japoński.'),
(4, 'Drugiej takiej nie znajdziesz', 'Wersja podstawowa - 20zł', 'Wersja średniozaawansowana -- 50zł', 'Wersja zaawansowana - 65zł', 'W razie pytań skontaktuj się z nami', 'Język japoński - język używany przez ok. 130 mln mieszkańców Japonii oraz japońskich emigrantów na wszystkich kontynentach. Najstarsze znane teksty to pochodzące z V i VI wieku nazwy własne. Nie mówią jednak one wiele o języku. Najstarsze dłuższe teksty pochodzą z VIII wieku (kiki). Już wtedy zaczęto używać znaków chińskich do sylabicznego zapisu wymowy.\n\nJednak pewne sylaby, które są identyczne we współczesnym japońskim, były zapisywane różnymi znakami i był to zapis konsekwentny. Świadczy to o tym, że dawny japoński miał więcej samogłosek (lub ogólniej: typów sylab) – osiem, zamiast współczesnych pięciu, za to nie rozróżniał długości samogłosek, tak jak to czyni współczesny japoński.');

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
-- Indexes for table `basic_vocabulary_table`
--
ALTER TABLE `basic_vocabulary_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `definitions`
--
ALTER TABLE `definitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kanji`
--
ALTER TABLE `kanji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motds`
--
ALTER TABLE `motds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vocabulary`
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
-- AUTO_INCREMENT dla tabeli `motds`
--
ALTER TABLE `motds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
