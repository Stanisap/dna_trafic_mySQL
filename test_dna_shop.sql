-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 05 2020 г., 05:46
-- Версия сервера: 10.4.8-MariaDB
-- Версия PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_dna_shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(2, 'бытовая техника'),
(1, 'каталог товаров'),
(14, 'кнопочные телефоны'),
(12, 'компьютеры'),
(3, 'компьютеры и ноутбуки'),
(5, 'крупная бытовая техныка'),
(6, 'мелкая бытовая техника'),
(4, 'мобильные телефоны'),
(11, 'ноутбуки'),
(9, 'с вертикальной загрузкой'),
(10, 'с горизонтальной загрузкой'),
(13, 'смартфоны'),
(7, 'стиральные машины'),
(8, 'холодильники');

-- --------------------------------------------------------

--
-- Структура таблицы `cat_product`
--

CREATE TABLE `cat_product` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `cat_product`
--

INSERT INTO `cat_product` (`id`, `cat_id`, `prod_id`) VALUES
(1, 10, 1),
(2, 10, 2),
(3, 9, 3),
(4, 8, 4),
(5, 8, 5),
(6, 8, 6),
(7, 11, 7),
(8, 11, 8),
(9, 11, 9),
(10, 12, 10),
(11, 12, 11),
(12, 13, 12),
(13, 13, 13),
(14, 14, 14),
(15, 14, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `cat_tree`
--

CREATE TABLE `cat_tree` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `depth` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `cat_tree`
--

INSERT INTO `cat_tree` (`id`, `parent_id`, `child_id`, `depth`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 2),
(6, 1, 6, 2),
(7, 1, 7, 3),
(8, 1, 8, 3),
(9, 1, 9, 4),
(10, 1, 10, 4),
(11, 1, 11, 2),
(12, 1, 12, 2),
(13, 1, 13, 1),
(14, 1, 14, 2),
(15, 2, 2, 1),
(16, 2, 5, 2),
(17, 2, 6, 2),
(18, 2, 7, 3),
(19, 2, 8, 3),
(20, 2, 9, 4),
(21, 2, 10, 4),
(22, 6, 6, 2),
(23, 5, 5, 2),
(24, 5, 7, 3),
(25, 5, 8, 3),
(26, 5, 9, 4),
(27, 5, 10, 4),
(28, 7, 7, 3),
(29, 7, 9, 4),
(30, 7, 10, 4),
(31, 8, 8, 3),
(32, 9, 9, 4),
(33, 10, 10, 4),
(34, 3, 3, 1),
(35, 3, 11, 2),
(36, 3, 12, 2),
(37, 11, 11, 2),
(38, 12, 12, 2),
(39, 4, 4, 1),
(40, 4, 13, 2),
(41, 4, 14, 2),
(42, 13, 13, 2),
(43, 14, 14, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` double(16,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `price`) VALUES
(1, 'Стиральная машина узкая SAMSUNG', 7999.00),
(2, 'Стиральная машина узкая Indesit IWSC 61253 C ECO', 6199.00),
(3, 'Стиральная машина с вертикальной загрузкой CANDY C', 7499.00),
(4, 'Холодильник SAMSUNG RB29FSRNDSA/UA', 11499.00),
(5, 'Холодильник BOSCH KGN36XI35', 13499.00),
(6, 'Двухкамерный холодильник INDESIT XIT8', 10999.00),
(7, 'Ноутбук HP Pavilion Gaming 15-cx0028ua (8KS39EA)', 21999.00),
(8, 'Ноутбук Acer Aspire 7 A715-41G-R7MZ (NH.Q8LEU.004)', 19999.00),
(9, 'Ноутбук Asus TUF Gaming FX705DT-AU102', 22999.00),
(10, 'Компьютер IT-Blok Прогрессивный Ryzen 5 2600 F', 20226.00),
(11, 'Компьютер Qbox I1466', 32859.00),
(12, 'Мобильный телефон Samsung Galaxy M31', 6555.00),
(13, 'Мобильный телефон Xiaomi Redmi Note 8T', 4499.00),
(14, 'Мобильный телефон Assistant AS-204 Black', 461.00),
(15, 'Мобильный телефон CAT B25 Dual Sim Black', 2178.00);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cat_title` (`title`);

--
-- Индексы таблицы `cat_product`
--
ALTER TABLE `cat_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Индексы таблицы `cat_tree`
--
ALTER TABLE `cat_tree`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `fk_cat_tree_dapth` (`depth`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_title` (`title`),
  ADD KEY `fk_product_price` (`price`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `cat_product`
--
ALTER TABLE `cat_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `cat_tree`
--
ALTER TABLE `cat_tree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cat_product`
--
ALTER TABLE `cat_product`
  ADD CONSTRAINT `cat_product_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cat_product_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cat_tree`
--
ALTER TABLE `cat_tree`
  ADD CONSTRAINT `cat_tree_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cat_tree_ibfk_2` FOREIGN KEY (`child_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
