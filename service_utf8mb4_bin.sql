-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20230212.f19d22c671
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 13 2023 г., 14:41
-- Версия сервера: 8.0.29
-- Версия PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `service`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `idcategory` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`idcategory`, `name`) VALUES
(1, 'Грузоперевозки'),
(2, 'Компьютерная помощь'),
(3, 'Репетиторство');

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `executor_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`id`, `customer_id`, `executor_id`, `name`) VALUES
(1, 1, 2, 'dgfdgdfgdfg');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `id` int NOT NULL,
  `chat_id` int NOT NULL,
  `sender_id` int NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `chat_id`, `sender_id`, `text`) VALUES
(1, 1, 1, 'dfsfsdf'),
(2, 1, 1, 'dfsfsdf'),
(3, 1, 1, 'vcvxv'),
(4, 1, 1, 'xcvxcvxvcv'),
(5, 1, 1, 'xcvxcvxvcv'),
(6, 1, 1, 'vvvv'),
(7, 1, 1, 'vvvv'),
(8, 1, 1, 'vvvv'),
(9, 1, 1, 'vvvv'),
(10, 1, 1, 'vvvv'),
(11, 1, 1, 'vvvv');

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` int NOT NULL,
  `UserId` int DEFAULT NULL,
  `Token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`id`, `UserId`, `Token`) VALUES
(1, 1, '66ed650f4bb07089acdeee18bec39b1fbce216aeb840f05ae8f747da841f23dc'),
(2, 2, '6aabb5ae1ea3d263f90cd91034e7e444b803cb120b38e1d554d812dd2b5b3b7e'),
(3, 2, '09d51f56f841b146ab487be1d666cedf99a57d0226dbea1602c51150e7a4e450'),
(4, 2, '4f3efbb4948ea6385837c5ede2e9300313ceef672affbd360bc2c5e62ccf6290'),
(5, 1, 'aab94d776a7a5c933cbc1e09c6e4d3447720192b1a2ee98f80d1b5ea44a0052a'),
(6, 1, 'f5840d83a2bbf3b4d1def08610a48740c1c93ec22d264c571ae3708aad7cf5de');

-- --------------------------------------------------------

--
-- Структура таблицы `rash_service`
--

CREATE TABLE `rash_service` (
  `Id` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `OtCost` bigint NOT NULL,
  `DoCost` bigint NOT NULL,
  `OtDate` timestamp NOT NULL,
  `Place` varchar(100) NOT NULL,
  `categoryId` int DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `iduser` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `rash_service`
--

INSERT INTO `rash_service` (`Id`, `Name`, `Description`, `OtCost`, `DoCost`, `OtDate`, `Place`, `categoryId`, `photo`, `video`, `iduser`) VALUES
(1, 'Веб-программирование', 'вапавпвап', 200, 2000, '2023-04-12 14:00:00', 'апрапр', NULL, NULL, NULL, NULL),
(2, 'вапвапвап', 'вапавпвап', 200, 2000, '2023-04-12 14:00:00', 'апрапр', NULL, NULL, NULL, NULL),
(3, 'retert', 'reterter', 234, 234234, '2023-06-15 14:00:00', 'dfghdgf', 1, 'logo.png', 'bandicam 2022-09-22 19-52-28-297.jpg', NULL),
(4, 'retert', 'erter', 435, 345435, '2023-04-12 14:00:00', 'fghfgfhg', 2, 'logo.png', 'bandicam 2022-12-16 18-37-00-182.mp4', NULL),
(5, 'retert', 'erter', 435, 345435, '2023-04-12 14:00:00', 'fghfgfhg', 2, '', '', NULL),
(6, 'jgjgh', 'ghjgh', 54645, 45645, '2023-04-06 14:00:00', 'ghgfh', 1, '', '', NULL),
(7, 'jgjgh', 'ghjgh', 54645, 45645, '2023-04-06 14:00:00', 'ghgfh', 1, '', '', NULL),
(8, 'hgfh', 'yhfgh', 4566, 546456, '2023-04-27 14:00:00', 'try', 2, '', '', NULL),
(9, 'впапав', 'павпавпав', 43435, 34534534, '2023-03-29 14:00:00', 'прапар', 2, 'logo.png', 'bandicam 2022-12-16 18-37-33-548.mp4', NULL),
(10, 'впапав', 'павпавпав', 43435, 34534534, '2023-03-29 14:00:00', 'прапар', 2, 'logo.png', 'bandicam 2022-12-16 18-37-33-548.mp4', NULL),
(11, 'hgjghj', 'ghjgh', 5345, 345345, '2023-04-05 14:00:00', 'hfghfg', 2, 'logo.png', 'bandicam 2022-12-16 18-37-00-182.mp4', 2),
(12, 'dfggdfg', 'rfrgdg', 23423, 324, '2023-03-31 19:00:00', 'sdfsdf', 2, '', '', 2),
(13, 'dfggdfg', 'rfrgdg', 23423, 324, '2023-03-31 19:00:00', 'sdfsdf', 3, '', '', 2),
(14, 'hfgh', 'fgh', 456, 456, '2023-04-05 19:00:00', 'ghfh', 2, '', '', 2),
(15, 'вапап', 'вапва', 435345, 345345, '2023-04-07 19:00:00', 'прапра', 1, '', '', 2),
(16, 'вапап', 'вапва', 435345, 345345, '2023-04-07 19:00:00', 'прапра', 1, '', '', 2),
(17, 'кенкен', 'кенкен', 435, 345345, '2023-04-12 19:00:00', 'sdfsdf', 1, '', '', 2),
(18, 'вапвап', 'вапв', 345435, 34534535, '2023-04-20 19:00:00', 'праапр', 3, '', '', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

CREATE TABLE `requests` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `respond`
--

CREATE TABLE `respond` (
  `Id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `userzakaz` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `respond`
--

INSERT INTO `respond` (`Id`, `user_id`, `service_id`, `userzakaz`) VALUES
(1, 2, 16, 2),
(2, 2, 16, NULL),
(3, 2, 16, NULL),
(4, 2, 16, NULL),
(5, 2, 1, 2),
(6, 2, 1, 2),
(7, 2, 1, 2),
(8, 2, 16, 2),
(9, 2, 1, 2),
(10, 9, 1, 2),
(11, 9, 1, 2),
(12, 9, 1, 2),
(13, 9, 1, 2),
(14, 9, 1, 2),
(15, 9, 1, 2),
(16, 9, 1, 2),
(17, 9, 18, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `responses`
--

CREATE TABLE `responses` (
  `id` int NOT NULL,
  `request_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `service`
--

CREATE TABLE `service` (
  `Id` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `OtCost` bigint NOT NULL,
  `DoCost` bigint NOT NULL,
  `OtDate` timestamp NOT NULL,
  `Place` varchar(100) NOT NULL,
  `iduser` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `service`
--

INSERT INTO `service` (`Id`, `Name`, `Description`, `OtCost`, `DoCost`, `OtDate`, `Place`, `iduser`) VALUES
(1, 'Веб-программирование', 'вапавпвап', 200, 2000, '2023-04-12 19:00:00', 'апрапр', 2),
(2, 'вапвапвап', 'вапавпвап', 200, 2000, '2023-04-12 19:00:00', 'апрапр', 2),
(3, 'retert', 'reterter', 234, 234234, '2023-06-15 19:00:00', 'dfghdgf', 2),
(4, 'retert', 'erter', 435, 345435, '2023-04-12 19:00:00', 'fghfgfhg', NULL),
(5, 'retert', 'erter', 435, 345435, '2023-04-12 19:00:00', 'fghfgfhg', NULL),
(6, 'jgjgh', 'ghjgh', 54645, 45645, '2023-04-06 19:00:00', 'ghgfh', NULL),
(7, 'jgjgh', 'ghjgh', 54645, 45645, '2023-04-06 19:00:00', 'ghgfh', NULL),
(8, 'hgfh', 'yhfgh', 4566, 546456, '2023-04-27 19:00:00', 'try', NULL),
(9, 'впапав', 'павпавпав', 43435, 34534534, '2023-03-29 19:00:00', 'прапар', NULL),
(10, 'впапав', 'павпавпав', 43435, 34534534, '2023-03-29 19:00:00', 'прапар', NULL),
(11, 'hgjghj', 'ghjgh', 5345, 345345, '2023-04-05 19:00:00', 'hfghfg', 2),
(12, 'впавап', 'авпвапвав', 4354, 345345, '2023-04-27 19:00:00', 'вапавп', NULL),
(13, 'вфыфвыфвы', 'фвывфывфы', 232, 333333, '2023-04-22 19:00:00', 'вапва', NULL),
(14, 'ываыв', 'ываыва', 323, 3434, '2023-04-22 19:00:00', 'вапап', NULL),
(15, 'укеуке', 'укеуке', 234, 343, '2023-04-20 19:00:00', 'авпп', NULL),
(16, 'ghfgh', 'fghf', 546, 565, '2023-04-28 19:00:00', 'rtyrt', 2),
(17, '11111', '1111', 12, 12, '2023-03-29 21:00:00', 'JFJFJFJFFJJFJFJF', 7),
(18, '12', '12', 12, 12, '2023-04-06 21:00:00', '12', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `Id` int NOT NULL,
  `Login` varchar(50) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `FIO` text,
  `Number` bigint DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `UserType` int DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `reset_token_expires_at` varchar(255) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `highlighted` double(200,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`Id`, `Login`, `Password`, `FIO`, `Number`, `Email`, `Description`, `UserType`, `reset_token`, `token`, `reset_token_expires_at`, `rating`, `highlighted`) VALUES
(1, 'create', '12121212', 'sdfsd sdffds sdf', 9194563412, 'abdullinv5@gmail.com', 'ssdfsdfdsfdsfdsf', 1, NULL, NULL, NULL, 10, 1.000000),
(2, 'admin', 'admin', 'Vladislav sdf sfd', 9194732312, 'abdullinv7@gmail.com', 'sgsfd', 2, NULL, NULL, NULL, 0, 0.000000),
(3, 'sfdsdf', '90909090', 'йййййййййй', 9194732312, 'AVR6@mail.ru', 'sdfsdfd', 1, NULL, NULL, NULL, NULL, 1.000000),
(4, 'hghghghh', '77777', '13123123', 9194732312, 'AVR5@mail.ru', 'sdfsdfd', 2, NULL, NULL, NULL, NULL, NULL),
(5, 'sasasa', 'zxzxzx', 'dsf sdzxf sghfh', 8787787887, 'abddfgullinv5dfgdfg@gmail.com', 'eqwewq', 1, NULL, NULL, NULL, NULL, 1.000000),
(6, 'qwqwqw', 'qwqwqw', 'Абдуллин Владислав Радомирович', 9195645498, 'admin@gmail.com', 'dfgdfgdfg', 2, NULL, NULL, NULL, NULL, NULL),
(7, 'starzev19', 'PIZDA', 'Данил', 312837981, 'daver.hoper@gmail.com', 'LOL', 2, NULL, NULL, NULL, NULL, NULL),
(8, '12', '12', '12', 12, 'daver.hoper@gmail.com', '12', 1, NULL, NULL, NULL, NULL, NULL),
(9, '99', '99', '99', 99, 'daver.hoper@gmail.com', '99', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `usertype`
--

CREATE TABLE `usertype` (
  `Id` int NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `usertype`
--

INSERT INTO `usertype` (`Id`, `Name`) VALUES
(2, 'Заказчик'),
(1, 'Испольнитель');

-- --------------------------------------------------------

--
-- Структура таблицы `uvedomleniya`
--

CREATE TABLE `uvedomleniya` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `id_zak` int NOT NULL,
  `id_servise` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `uvedomleniya`
--

INSERT INTO `uvedomleniya` (`id`, `id_user`, `id_zak`, `id_servise`) VALUES
(1, 9, 2, 1),
(2, 9, 2, 1),
(3, 9, 7, 18);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idcategory`);

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rash_service`
--
ALTER TABLE `rash_service`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `respond`
--
ALTER TABLE `respond`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `uvedomleniya`
--
ALTER TABLE `uvedomleniya`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `idcategory` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `message`
--
ALTER TABLE `message`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `rash_service`
--
ALTER TABLE `rash_service`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `respond`
--
ALTER TABLE `respond`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `service`
--
ALTER TABLE `service`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `uvedomleniya`
--
ALTER TABLE `uvedomleniya`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
