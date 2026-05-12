-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 06 2026 г., 13:07
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `DataBase_Sunbucks`
--

-- --------------------------------------------------------

--
-- Структура таблицы `administrator`
--

CREATE TABLE `administrator` (
  `id_administrator` int NOT NULL,
  `access_level` int NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `administrator`
--

INSERT INTO `administrator` (`id_administrator`, `access_level`, `login`, `password`) VALUES
(1, 1, 'boss_admin', '123'),
(2, 2, 'manager_1', 'pass1'),
(3, 1, 'super_user', 'root'),
(4, 2, 'analyst_01', 'an77'),
(5, 2, 'support_den', 'denis'),
(6, 1, 'ceo_sunbucks', 'gold'),
(7, 2, 'it_spec', 'linux'),
(8, 2, 'hr_manager', 'peop'),
(9, 1, 'owner_001', 'money'),
(10, 2, 'clerk_9', 'paper');

-- --------------------------------------------------------

--
-- Структура таблицы `barista`
--

CREATE TABLE `barista` (
  `id_barista` int NOT NULL,
  `full_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `barista`
--

INSERT INTO `barista` (`id_barista`, `full_name`) VALUES
(1, 'Алексей Петров'),
(2, 'Мария Сидорова'),
(3, 'Иван Волков'),
(4, 'Елена Узел'),
(5, 'Дмитрий Ли'),
(6, 'Анна Роуз'),
(7, 'Сергей Кот'),
(8, 'Ольга Керн'),
(9, 'Виктор Цой'),
(10, 'Яна Соль');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id_category` int NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id_category`, `category_name`) VALUES
(1, 'Кофе'),
(2, 'Чай'),
(3, 'Десерты'),
(4, 'Сэндвичи'),
(5, 'Выпечка'),
(6, 'Холодные напитки'),
(7, 'Зерно'),
(8, 'Аксессуары'),
(9, 'Сиропы'),
(10, 'Сезонное меню');

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `id_customer` int NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`id_customer`, `full_name`, `phone`, `email`, `address`, `password`) VALUES
(1, 'Игорь Николаев', '89001112233', 'igor@mail.ru', 'ул. Ленина 1', 'ig1'),
(2, 'Светлана Лобода', '89002223344', 'sveta@mail.ru', 'ул. Мира 5', 'sv2'),
(3, 'Артем Дзюба', '89003334455', 'art@mail.ru', 'пер. Спортивный 10', 'art3'),
(4, 'Ксения Собчак', '89004445566', 'ksu@mail.ru', 'Рублевка 99', 'ks4'),
(5, 'Павел Воля', '89005556677', 'pasha@mail.ru', 'ул. Комедийная 3', 'p5'),
(6, 'Тимати', '89006667788', 'black@mail.ru', 'Арбат 1', 't6'),
(7, 'Оксимирон', '89007778899', 'miron@mail.ru', 'ул. Питерская 13', 'ox7'),
(8, 'Хасбик', '89008889900', 'hasb@mail.ru', 'Махачкала 1', 'h8'),
(9, 'Моргенштерн', '89009990011', 'morg@mail.ru', 'Дубай Сити', 'm9'),
(10, 'Инстасамка', '89000001122', 'money@mail.ru', 'ул. Хайпа 66', 'i10');

-- --------------------------------------------------------

--
-- Структура таблицы `deliverer`
--

CREATE TABLE `deliverer` (
  `id_deliverer` int NOT NULL,
  `transport_type` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `full_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `deliverer`
--

INSERT INTO `deliverer` (`id_deliverer`, `transport_type`, `phone`, `full_name`) VALUES
(1, 'Велосипед', '89111', 'Петр Быстрый'),
(2, 'Самокат', '89112', 'Антон Легкий'),
(3, 'Автомобиль', '89113', 'Юрий Мощный'),
(4, 'Пешком', '89114', 'Олег Смелый'),
(5, 'Мотоцикл', '89115', 'Илья Громкий'),
(6, 'Велосипед', '89116', 'Влад Скорость'),
(7, 'Автомобиль', '89117', 'Максим Доставка'),
(8, 'Самокат', '89118', 'Денис Ровный'),
(9, 'Пешком', '89119', 'Саша Тихий'),
(10, 'Мотоцикл', '89120', 'Глеб Стрела');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id_order` int NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int DEFAULT NULL,
  `barista_id` int DEFAULT NULL,
  `deliverer_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id_order`, `total_amount`, `status`, `order_date`, `customer_id`, `barista_id`, `deliverer_id`) VALUES
(1, '500.00', 'Завершен', '2026-05-03 19:55:07', 1, 1, NULL),
(2, '1200.50', 'В пути', '2026-05-03 19:55:07', 2, 2, 3),
(3, '350.00', 'Готовится', '2026-05-03 19:55:07', 3, 3, NULL),
(4, '880.00', 'Новый', '2026-05-03 19:55:07', 4, 1, 1),
(5, '150.00', 'Завершен', '2026-05-03 19:55:07', 5, 5, NULL),
(6, '2000.00', 'Отменен', '2026-05-03 19:55:07', 6, 2, 5),
(7, '450.00', 'Завершен', '2026-05-03 19:55:07', 7, 4, NULL),
(8, '990.00', 'В пути', '2026-05-03 19:55:07', 8, 8, 2),
(9, '620.00', 'Новый', '2026-05-03 19:55:07', 9, 10, NULL),
(10, '300.00', 'Завершен', '2026-05-03 19:55:07', 10, 6, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id_product` int NOT NULL,
  `quantity` int DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `arrival_date` date DEFAULT NULL,
  `order_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id_product`, `quantity`, `price`, `arrival_date`, `order_id`) VALUES
(1, 100, '150.00', '2026-05-01', 1),
(2, 50, '450.00', '2026-05-02', 2),
(3, 30, '200.00', '2026-05-01', 3),
(4, 10, '880.00', '2026-04-28', 4),
(5, 200, '75.00', '2026-05-03', 5),
(6, 15, '1000.00', '2026-05-01', 6),
(7, 40, '110.00', '2026-05-02', 7),
(8, 12, '495.00', '2026-05-01', 8),
(9, 60, '310.00', '2026-05-03', 9),
(10, 25, '300.00', '2026-05-02', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `product_category`
--

CREATE TABLE `product_category` (
  `id_product` int NOT NULL,
  `id_category` int NOT NULL,
  `relation_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product_category`
--

INSERT INTO `product_category` (`id_product`, `id_category`, `relation_name`) VALUES
(1, 1, 'Классика'),
(2, 7, 'Премиум'),
(3, 2, 'Травяной'),
(4, 3, 'Сладкое'),
(5, 5, 'Свежее'),
(6, 8, 'Мерч'),
(7, 6, 'Лед'),
(8, 4, 'Завтрак'),
(9, 9, 'Добавка'),
(10, 10, 'Лимитка');

-- --------------------------------------------------------

--
-- Структура таблицы `report`
--

CREATE TABLE `report` (
  `id_report` int NOT NULL,
  `period` varchar(50) DEFAULT NULL,
  `report_type` varchar(50) DEFAULT NULL,
  `registration_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `order_id` int DEFAULT NULL,
  `administrator_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `report`
--

INSERT INTO `report` (`id_report`, `period`, `report_type`, `registration_date`, `order_id`, `administrator_id`) VALUES
(1, 'Май 2026', 'Продажи', '2026-05-03 19:55:07', 1, 1),
(2, 'Май 2026', 'Выручка', '2026-05-03 19:55:07', 2, 2),
(3, 'Апрель 2026', 'Склад', '2026-05-03 19:55:07', 4, 1),
(4, 'Май 2026', 'Курьеры', '2026-05-03 19:55:07', 8, 4),
(5, 'Квартал 1', 'Общий', '2026-05-03 19:55:07', 10, 9),
(6, 'Май 2026', 'Списания', '2026-05-03 19:55:07', 6, 1),
(7, 'Май 2026', 'Лояльность', '2026-05-03 19:55:07', 7, 2),
(8, 'Июнь 2026', 'План', '2026-05-03 19:55:07', 9, 3),
(9, 'Май 2026', 'Налоги', '2026-05-03 19:55:07', 5, 6),
(10, 'Май 2026', 'Ошибки', '2026-05-03 19:55:07', 3, 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id_administrator`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Индексы таблицы `barista`
--
ALTER TABLE `barista`
  ADD PRIMARY KEY (`id_barista`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Индексы таблицы `deliverer`
--
ALTER TABLE `deliverer`
  ADD PRIMARY KEY (`id_deliverer`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `barista_id` (`barista_id`),
  ADD KEY `deliverer_id` (`deliverer_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id_product`,`id_category`),
  ADD KEY `id_category` (`id_category`);

--
-- Индексы таблицы `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id_report`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `administrator_id` (`administrator_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id_administrator` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `barista`
--
ALTER TABLE `barista`
  MODIFY `id_barista` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `deliverer`
--
ALTER TABLE `deliverer`
  MODIFY `id_deliverer` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `report`
--
ALTER TABLE `report`
  MODIFY `id_report` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`barista_id`) REFERENCES `barista` (`id_barista`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`deliverer_id`) REFERENCES `deliverer` (`id_deliverer`);

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id_order`);

--
-- Ограничения внешнего ключа таблицы `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_category_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id_order`),
  ADD CONSTRAINT `report_ibfk_2` FOREIGN KEY (`administrator_id`) REFERENCES `administrator` (`id_administrator`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
