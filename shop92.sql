-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 14 2020 г., 23:09
-- Версия сервера: 8.0.15
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop92`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `img`, `created_at`, `updated_at`) VALUES
(1, 'in ut amet', 'in-ut-amet', 'https://loremflickr.com/320/240', '2020-09-14 17:06:28', '2020-09-14 17:06:28'),
(2, 'dicta facere rem', 'dicta-facere-rem', 'https://loremflickr.com/320/240', '2020-09-14 17:06:28', '2020-09-14 17:06:28'),
(3, 'aut deleniti est', 'aut-deleniti-est', NULL, '2020-09-14 17:06:28', '2020-09-14 17:06:28'),
(4, 'voluptas expedita sint', 'voluptas-expedita-sint', 'https://loremflickr.com/320/240', '2020-09-14 17:06:28', '2020-09-14 17:06:28'),
(5, 'est accusantium ullam', 'est-accusantium-ullam', NULL, '2020-09-14 17:06:28', '2020-09-14 17:06:28'),
(6, 'nemo suscipit nemo', 'nemo-suscipit-nemo', NULL, '2020-09-14 17:06:28', '2020-09-14 17:06:28'),
(7, 'ratione dolorem qui', 'ratione-dolorem-qui', 'https://loremflickr.com/320/240', '2020-09-14 17:06:28', '2020-09-14 17:06:28'),
(8, 'laborum voluptate ipsam', 'laborum-voluptate-ipsam', 'https://loremflickr.com/320/240', '2020-09-14 17:06:29', '2020-09-14 17:06:29'),
(9, 'alias perspiciatis veritatis', 'alias-perspiciatis-veritatis', 'https://loremflickr.com/320/240', '2020-09-14 17:06:29', '2020-09-14 17:06:29'),
(10, 'ratione aut cumque', 'ratione-aut-cumque', 'https://loremflickr.com/320/240', '2020-09-14 17:06:29', '2020-09-14 17:06:29');

-- --------------------------------------------------------

--
-- Структура таблицы `crossel_products`
--

CREATE TABLE `crossel_products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `crossel_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_100000_create_password_resets_table', 3),
(18, '2020_07_18_062209_add_role_users', 4),
(121, '2020_09_12_141917_create_reviews', 5),
(122, '2020_09_12_142120_create_posts', 5),
(123, '2020_09_12_142201_create_crossel_products', 5),
(138, '2014_10_12_000000_create_users_table', 6),
(139, '2019_08_19_000000_create_failed_jobs_table', 6),
(140, '2020_07_04_062335_create_categories_table', 6),
(141, '2020_07_04_083038_create_products_table', 6),
(142, '2020_09_14_194319_create_reviews_table', 6),
(143, '2020_09_14_194409_create_posts_table', 6),
(144, '2020_09_14_194425_create_crossel_products_table', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `img`, `created_at`, `updated_at`) VALUES
(1, 'quia dolorem possimus', 'placeat-culpa-eos', 'srFvKS8ZOi', NULL, '2020-09-14', '2020-09-14'),
(2, 'sequi a vero', 'quidem-reiciendis-reprehenderit', 'Y9yemnnwWl', 'https://loremflickr.com/320/240', '2020-09-14', '2020-09-14'),
(3, 'ea et ut', 'molestias-autem-voluptas', 'xRi8Ok9kKa', NULL, '2020-09-14', '2020-09-14'),
(4, 'beatae ad ut', 'vel-quo-qui', '5RYFHGDlgJ', 'https://loremflickr.com/320/240', '2020-09-14', '2020-09-14'),
(5, 'quis omnis cupiditate', 'unde-molestiae-exercitationem', '9vF4KWunTD', 'https://loremflickr.com/320/240', '2020-09-14', '2020-09-14'),
(6, 'voluptatem atque provident', 'odio-consequatur-sapiente', 'QouLNTlzcM', NULL, '2020-09-14', '2020-09-14'),
(7, 'aut deserunt nostrum', 'minus-necessitatibus-sunt', 'gSqSBuhEkZ', NULL, '2020-09-14', '2020-09-14'),
(8, 'a dolorem dolorum', 'odit-qui-necessitatibus', 'F7sLOW2lmu', NULL, '2020-09-14', '2020-09-14'),
(9, 'eos quis necessitatibus', 'est-corporis-quis', 'R4XBq2Gv03', 'https://loremflickr.com/320/240', '2020-09-14', '2020-09-14'),
(10, 'rerum voluptatem libero', 'magnam-sequi-sint', '9fCX7qebsc', NULL, '2020-09-14', '2020-09-14');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `recomended` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `img`, `price`, `recomended`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'nisi ab qui', 'nisi-ab-qui', NULL, 3668.57, 1, 4, '2020-09-14 17:06:29', '2020-09-14 17:06:29'),
(2, 'adipisci iusto quia', 'adipisci-iusto-quia', 'https://loremflickr.com/320/240', 7101.53, 0, 6, '2020-09-14 17:06:29', '2020-09-14 17:06:29'),
(3, 'modi qui corporis', 'modi-qui-corporis', 'https://loremflickr.com/320/240', 6550.92, 0, 7, '2020-09-14 17:06:29', '2020-09-14 17:06:29'),
(4, 'exercitationem est architecto', 'exercitationem-est-architecto', 'https://loremflickr.com/320/240', 5752.90, 0, 3, '2020-09-14 17:06:29', '2020-09-14 17:06:29'),
(5, 'quia dolorum non', 'quia-dolorum-non', 'https://loremflickr.com/320/240', 8543.28, 1, 7, '2020-09-14 17:06:29', '2020-09-14 17:06:29'),
(6, 'ut excepturi earum', 'ut-excepturi-earum', NULL, 6218.18, 0, 5, '2020-09-14 17:06:29', '2020-09-14 17:06:29'),
(7, 'fuga quis non', 'fuga-quis-non', NULL, 6606.42, 0, 10, '2020-09-14 17:06:30', '2020-09-14 17:06:30'),
(8, 'sit maiores cupiditate', 'sit-maiores-cupiditate', 'https://loremflickr.com/320/240', 7525.03, 1, 4, '2020-09-14 17:06:30', '2020-09-14 17:06:30'),
(9, 'aut rerum ea', 'aut-rerum-ea', NULL, 2048.67, 0, 4, '2020-09-14 17:06:30', '2020-09-14 17:06:30'),
(10, 'aut rem asperiores', 'aut-rem-asperiores', NULL, 8437.91, 0, 9, '2020-09-14 17:06:30', '2020-09-14 17:06:30');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `comment`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'et perferendis accusantium', 891, 13, '1948-04-08', '1958-05-16'),
(2, 'harum repellendus in', 30532, 3719042, '1987-03-27', '2003-02-05'),
(3, 'corporis voluptas nobis', 60667502, 61730, '1946-12-11', '1925-10-14'),
(4, 'quia nihil sunt', 18, 1, '1933-05-10', '2019-05-17'),
(5, 'sapiente voluptate debitis', 1852, 8482448, '2013-01-07', '1973-10-24'),
(6, 'qui consequatur impedit', 6624398, 94, '1962-07-09', '1969-05-26'),
(7, 'dolores quidem ratione', 3544883, 92559, '1969-03-05', '1958-02-24'),
(8, 'sit asperiores dicta', 257382, 58734750, '1941-03-01', '1927-05-10'),
(9, 'architecto aliquid quia', 91, 90380421, '1986-07-01', '1933-10-11'),
(10, 'perspiciatis blanditiis aut', 19, 6065, '1961-05-10', '2003-07-09');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
