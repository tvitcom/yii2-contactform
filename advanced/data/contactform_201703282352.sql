-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 28 2017 г., 23:52
-- Версия сервера: 5.5.54-0+deb8u1
-- Версия PHP: 7.1.2RC1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `contactform`
--

-- --------------------------------------------------------

--
-- Структура таблицы `appeal`
--

CREATE TABLE IF NOT EXISTS `appeal` (
  `id` bigint(21) unsigned NOT NULL,
  `name` varchar(24) NOT NULL,
  `email` varchar(55) NOT NULL,
  `homepage` varchar(64) DEFAULT NULL,
  `content` varchar(718) NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(45) DEFAULT NULL,
  `t_send` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='Public messages like appeal and support requests';

--
-- Дамп данных таблицы `appeal`
--

INSERT INTO `appeal` (`id`, `name`, `email`, `homepage`, `content`, `filename`, `useragent`, `ip_addr`, `t_send`) VALUES
(1, 'wewe', 'wew@mail.ru', 'http://hkjh.nm', 'ewqwedqwqdwqdqwfglkjlkj', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-23 21:17:08'),
(2, 'yo', 'yo@mail.com', 'http://rrrrtrtrt.rtr', 'rtrtrterererdffd gfd', NULL, NULL, NULL, NULL),
(3, 'test', 'fddfg@gmail.ru', '', 'fgfgdgdfgere', NULL, NULL, NULL, NULL),
(4, 'test1', 'test1@example.com', NULL, 'comon common', NULL, NULL, NULL, NULL),
(5, 'test2', 'yo@mail.com', NULL, 'rewrwerwerwerwer', NULL, NULL, NULL, NULL),
(6, 'test3', 'test3@example.com', NULL, 'mio moi moi ', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-23 21:58:16'),
(7, 'test4', 'test4@example.com', 'http://url4.ru', 'koment too much ', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 01:18:22'),
(8, 'test5', 'test5@example.com', NULL, 'yo this content clear too', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 01:35:00'),
(9, 'test5', 'test5@example.com', NULL, 'yo this content clear too', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 01:38:51'),
(10, 'test6', 'test6@example.com', NULL, 'ken you might ', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 01:47:59'),
(11, 'test6', 'test6@example.com', NULL, 'they. six floor', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 01:57:32'),
(12, 'test7', 'test7@example.com', NULL, 'hey yo this test', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 02:00:35'),
(13, 'test8', 'test8@example.com', 'http://url8.ru', 'yo this test went', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 02:07:46'),
(14, 'test9', 'test9@example.com', 'http://url9.ru', 'this test case 9', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 02:09:55'),
(15, 'test9', 'test9@example.com', 'http://url9.ru', '<script>alert(''Hello from hacker ;)'');</script>\r\n', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 03:19:13'),
(16, 'test10', 'test10@example.com', 'http://url10.ru', '&lt;script&gt;alert(&#039;Hello from hacker ;)&#039;);&lt;/script&gt;\r\n', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 03:22:51'),
(17, 'test11', 'test11@example.com', 'http://url11.ru', 'Html::encode()this!!!', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 03:26:52'),
(18, 'Hello fro', 'test12@example.com', 'http://url12.ru', '&lt;script&gt;alert(&#039;Hello from hacker ;)&#039;);&lt;/script&gt;\r\n', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 03:31:38'),
(19, 'test13', 'test13@example.com', 'http://url13.ru', 'show preview in ', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 04:28:34'),
(20, 'test9', 'test11@example.com', 'http://rrrrtrtrt.rtr', 'yo picture downld ready ', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 04:46:21'),
(21, 'ts14', 'ts14@example.com', 'http://uri14.tv', 'werewrlk lkjlkjewr lk jrwrlkw ', NULL, 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-24 10:35:57'),
(22, 'test', 'test@example.com', 'http://test.com', 'testestestqw', '123.sh.txt', 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-28 22:54:20'),
(23, 'test1', 'tes1t@example.com', 'http://test1.com', 'testestesttt', '2017-03-23-190401_1024x768_scrot.png', 'Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101 Firefox/45.0', '127.0.0.1', '2017-03-28 22:59:48');

-- --------------------------------------------------------

--
-- Структура таблицы `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id` char(64) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(21) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'wqTaCHz3pFALY8FO3TYWxAGcLFGND2ej', '$2y$13$eaqng2fhWy/q529RVqrtWOfFKR4JyAIEgqgvWzshs0O.1mWGck9ei', NULL, 'admin@mail.ruru', 10, 1490219785, 1490219785);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `appeal`
--
ALTER TABLE `appeal`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `appeal`
--
ALTER TABLE `appeal`
  MODIFY `id` bigint(21) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(21) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
