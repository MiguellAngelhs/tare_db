-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2023 a las 17:00:35
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbtare`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `documento_per` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`id`, `documento_per`, `created_at`, `updated_at`) VALUES
(1, 'Cédula Ciudadanía', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(2, 'Cédula Extranjería', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(3, 'NIT', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(4, 'Pasaporte', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(5, 'Registro Civil', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(6, 'Tarjeta Extranjería', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(7, 'Tarjeta Identidad', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(8, 'Desconocido', '2023-08-16 19:59:54', '2023-08-16 19:59:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estado_propiedad` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `estado_propiedad`, `created_at`, `updated_at`) VALUES
(1, 'En Arriendo', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(2, 'En Venta', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(3, 'Arriendo - Venta', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(4, 'Permuta', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(5, 'Desconocido', '2023-08-16 19:59:54', '2023-08-16 19:59:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE `inmuebles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoria_inmueble` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`id`, `categoria_inmueble`, `created_at`, `updated_at`) VALUES
(1, 'Aparta-Estudio', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(2, 'Apartamento', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(3, 'Bodega', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(4, 'Casa', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(5, 'Centro Comercial', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(6, 'Consultorio', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(7, 'Edificio', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(8, 'Fábrica', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(9, 'Finca', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(10, 'Habitación', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(11, 'Hotel', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(12, 'Local', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(13, 'Lote', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(14, 'Oficina', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(15, 'Parcela', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(16, 'Parqueadero', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(17, 'Desconocido', '2023-08-16 19:59:54', '2023-08-16 19:59:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_11_11_131510_add_username_to_users_table', 1),
(6, '2021_04_27_171833_create_posts_table', 1),
(7, '2021_05_05_001414_create_permission_tables', 1),
(8, '2023_08_11_210013_create_propiedads_table', 1),
(9, '2023_08_12_214743_create_inmuebles_table', 1),
(10, '2023_08_12_231759_create_estados_table', 1),
(11, '2023_08_14_011246_create_documentos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'permission_index', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(2, 'permission_create', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(3, 'permission_show', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(4, 'permission_edit', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(5, 'permission_destroy', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(6, 'role_index', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(7, 'role_create', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(8, 'role_show', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(9, 'role_edit', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(10, 'role_destroy', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(11, 'user_index', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(12, 'user_create', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(13, 'user_show', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(14, 'user_edit', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(15, 'user_destroy', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(16, 'post_index', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(17, 'post_create', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(18, 'post_show', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(19, 'post_edit', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(20, 'post_destroy', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(21, 'propiedad_index', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(22, 'propiedad_create', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(23, 'propiedad_show', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(24, 'propiedad_edit', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(25, 'propiedad_destroy', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(26, 'inmueble_index', 'web', '2023-08-16 19:59:54', '2023-08-16 19:59:54'),
(27, 'inmueble_create', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(28, 'inmueble_show', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(29, 'inmueble_edit', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(30, 'inmueble_destroy', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(31, 'estado_index', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(32, 'estado_create', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(33, 'estado_show', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(34, 'estado_edit', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(35, 'estado_destroy', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(36, 'documento_index', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(37, 'documento_create', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(38, 'documento_show', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(39, 'documento_edit', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(40, 'documento_destroy', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedads`
--

CREATE TABLE `propiedads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoria` bigint(20) UNSIGNED NOT NULL,
  `construccion` varchar(255) DEFAULT NULL,
  `estado` bigint(20) UNSIGNED NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `estrato` varchar(255) DEFAULT NULL,
  `barrio` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) NOT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `contacto1` varchar(255) NOT NULL,
  `contacto2` varchar(255) DEFAULT NULL,
  `propietario` varchar(255) DEFAULT NULL,
  `tipo_documento` bigint(20) NOT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `contacto1_propietario` varchar(255) NOT NULL,
  `contacto2_propietario` varchar(255) DEFAULT NULL,
  `direccion_propietario` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(2, 'Agente', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55'),
(3, 'User', 'web', '2023-08-16 19:59:55', '2023-08-16 19:59:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`, `username`) VALUES
(1, 'Miguel Herrera', 'miguellangelhs@gmail.com', NULL, '$2y$10$nbpmOVG7SQ.ZkTE23xlHFu/AilNB2wCnb6bpC0easzMnoy/qL/scu', NULL, NULL, NULL, '2023-08-16 19:59:55', '2023-08-16 19:59:55', 'miguel');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `propiedads`
--
ALTER TABLE `propiedads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `propiedads`
--
ALTER TABLE `propiedads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
