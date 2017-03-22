-- phpMyAdmin SQL Dump
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 12 2017 г., 16:48

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `contactform`
--

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(21) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass_hash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `messenger` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type_notify` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `notify_about` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'newsadded',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `pass_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `type_notify`, `notify_about`) VALUES
(1, 'admin', 'auth_adminkey', '$2y$13$yd3naZPdIn2', NULL, 'admin@adminmail.ruru', 10, '2000-01-01 00:00:00', '2017-02-06 09:06:50', 'all', 'newsadded');

-- --------------------------------------------------------

--
-- Структура таблицы `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id` char(64) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
