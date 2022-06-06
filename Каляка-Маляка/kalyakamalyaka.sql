-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 27 2021 г., 22:44
-- Версия сервера: 5.6.47
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kalyakamalyaka`
--

-- --------------------------------------------------------

--
-- Структура таблицы `coming_tab`
--

CREATE TABLE `coming_tab` (
  `id_children` int(11) NOT NULL,
  `id_month` int(11) NOT NULL,
  `FIO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kol` int(11) NOT NULL,
  `id_services` int(11) DEFAULT '1',
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `coming_tab`
--

INSERT INTO `coming_tab` (`id_children`, `id_month`, `FIO`, `kol`, `id_services`, `cost`) VALUES
(1, 1, 'Иванов Саша', 21, 1, 1),
(2, 2, 'Петрова Маша', 12, 2, 2),
(3, 3, 'Сидоров Миша', 6, 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `month_tab`
--

CREATE TABLE `month_tab` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `month_tab`
--

INSERT INTO `month_tab` (`id`, `name`) VALUES
(1, 'Март'),
(2, 'Март'),
(3, 'Апрель');

-- --------------------------------------------------------

--
-- Структура таблицы `servis_tab`
--

CREATE TABLE `servis_tab` (
  `id` int(11) NOT NULL,
  `nameServ` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `servis_tab`
--

INSERT INTO `servis_tab` (`id`, `nameServ`, `price`) VALUES
(1, 'Каляка-Маляка', 100),
(2, 'Каляка-Маляк', 100),
(3, 'Веселый мяч', 200);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `coming_tab`
--
ALTER TABLE `coming_tab`
  ADD PRIMARY KEY (`id_children`),
  ADD KEY `id_month` (`id_month`),
  ADD KEY `id_services` (`id_services`);

--
-- Индексы таблицы `month_tab`
--
ALTER TABLE `month_tab`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `servis_tab`
--
ALTER TABLE `servis_tab`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `coming_tab`
--
ALTER TABLE `coming_tab`
  MODIFY `id_children` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `month_tab`
--
ALTER TABLE `month_tab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `servis_tab`
--
ALTER TABLE `servis_tab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `coming_tab`
--
ALTER TABLE `coming_tab`
  ADD CONSTRAINT `coming_tab_ibfk_1` FOREIGN KEY (`id_month`) REFERENCES `month_tab` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coming_tab_ibfk_2` FOREIGN KEY (`id_services`) REFERENCES `servis_tab` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
