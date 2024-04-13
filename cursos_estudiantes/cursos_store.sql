-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-03-2024 a las 02:47:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cursos_store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `course_id`, `user_id`, `created_at`, `updated_at`) VALUES
(10, 2, 15, '2024-02-08 02:28:51', '2024-02-08 02:28:51'),
(11, 4, 15, '2024-02-08 02:28:53', '2024-02-08 02:28:53'),
(13, 5, 17, '2024-02-10 02:56:10', '2024-02-10 02:56:10'),
(14, 2, 17, '2024-02-10 02:59:56', '2024-02-10 02:59:56'),
(15, 4, 17, '2024-02-10 02:59:57', '2024-02-10 02:59:57'),
(21, 10, 61, '2024-02-23 23:27:01', '2024-02-23 23:27:01'),
(24, 18, 11, '2024-02-29 04:50:07', '2024-02-29 04:50:07'),
(25, 9, 11, '2024-02-29 05:14:43', '2024-02-29 05:14:43'),
(26, 14, 58, '2024-03-01 04:34:06', '2024-03-01 04:34:06'),
(27, 30, 11, '2024-03-07 02:30:13', '2024-03-07 02:30:13'),
(28, 25, 58, '2024-03-08 01:56:02', '2024-03-08 01:56:02'),
(29, 38, 58, '2024-03-08 01:56:04', '2024-03-08 01:56:04'),
(30, 19, 58, '2024-03-08 01:56:10', '2024-03-08 01:56:10'),
(31, 40, 58, '2024-03-08 01:56:14', '2024-03-08 01:56:14'),
(41, 39, 16, '2024-03-08 02:12:39', '2024-03-08 02:12:39'),
(51, 5, 69, '2024-03-08 02:23:00', '2024-03-08 02:23:00'),
(52, 36, 69, '2024-03-08 02:23:10', '2024-03-08 02:23:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `imagen` varchar(250) DEFAULT NULL,
  `categorie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es activo y 2 es noactivo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `imagen`, `categorie_id`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Desarrollo web', 'categories/M7GPVPeTRaNGXqjNH8cKJcqp5pH1aZSWrKJqLhPY.png', NULL, 1, '2024-01-26 22:38:26', '2024-02-21 01:24:09', NULL),
(2, 'Laravel', NULL, 1, 1, '2024-01-26 22:38:45', '2024-02-21 01:24:23', NULL),
(3, 'React', 'categories/5UnJwnTn0eowiCzvfnvKuJFG0GQRkmMf3dJjfo6W.png', NULL, 1, '2024-01-26 22:38:58', '2024-02-21 06:22:56', '2024-02-21 06:22:56'),
(4, 'tecnologias', NULL, 3, 1, '2024-01-26 22:39:09', '2024-02-21 06:23:08', '2024-02-21 06:23:08'),
(5, 'Base de datos', 'categories/e8MbZ51t8maQUQZCX51Mq6HRgVyw0NKzVqh81TSB.png', NULL, 1, '2024-02-14 05:00:00', '2024-02-21 01:20:48', NULL),
(6, 'Matematicas', 'categories/gsBeNsxfzZR3V3hrmOm6US65iE3adwmMrUWDCHPz.png', NULL, 1, '2024-02-14 05:00:31', '2024-02-21 01:22:44', NULL),
(7, 'Servidores', 'categories/4WNFIbX22ho4ogwraks3yaGB1WvLEd5xHRKtPPwN.png', NULL, 1, '2024-02-21 01:21:12', '2024-02-21 01:21:12', NULL),
(8, 'Administración de Base de datos', NULL, 5, 1, '2024-02-21 01:21:44', '2024-02-21 01:21:44', NULL),
(9, 'Servicio de correo', NULL, 7, 1, '2024-02-21 01:21:58', '2024-02-21 01:21:58', NULL),
(10, 'Conexiones IP', NULL, 7, 1, '2024-02-21 01:22:10', '2024-02-21 01:22:10', NULL),
(11, 'Derivadas', NULL, 6, 1, '2024-02-21 01:25:12', '2024-02-21 01:25:12', NULL),
(12, 'Matrices', NULL, 6, 1, '2024-02-21 01:25:20', '2024-02-21 01:25:20', NULL),
(13, 'Ciencia de datos', 'categories/hfJU5GYySXORnkFElvZzSeZw8ATYTJxSiqP83azz.png', NULL, 1, '2024-02-21 01:26:45', '2024-02-21 01:26:45', NULL),
(14, 'Mineria de datos', NULL, 13, 1, '2024-02-21 01:27:06', '2024-02-21 01:27:06', NULL),
(15, 'Clasificacion de datos', NULL, 13, 1, '2024-02-21 01:27:19', '2024-02-21 01:27:19', NULL),
(16, 'Programación', 'categories/eDTrzqabGj41hUFP6TyNlA6eaZuNWBDapgXJzXA9.png', NULL, 1, '2024-02-21 01:29:55', '2024-02-21 01:29:55', NULL),
(17, 'React', NULL, 1, 1, '2024-02-21 01:30:13', '2024-02-21 01:30:13', NULL),
(18, 'Lenguaje C y derivados', NULL, 16, 1, '2024-02-21 01:30:29', '2024-02-21 01:30:29', NULL),
(19, 'Python', NULL, 16, 1, '2024-02-21 01:30:37', '2024-02-21 01:30:37', NULL),
(20, 'Javascript', NULL, 16, 1, '2024-02-21 01:30:46', '2024-02-21 01:30:46', NULL),
(21, 'Estructura de datos', 'categories/KomPy09yowf8ASNT5EnQiwchOIDrRuTTO6ugVnxe.png', NULL, 1, '2024-02-21 01:31:31', '2024-02-21 01:32:06', NULL),
(22, 'Listas', NULL, 21, 1, '2024-02-21 01:31:41', '2024-02-21 01:31:41', NULL),
(23, 'Árboles', NULL, 21, 1, '2024-02-21 01:31:52', '2024-02-21 01:31:52', NULL),
(24, 'Hash', NULL, 21, 1, '2024-02-21 01:32:01', '2024-02-21 01:32:01', NULL),
(25, 'CiberSeguridad', 'categories/SXPPN9cO2DNDgnQawlgSrpQPP8OoOW00DzPBIBkp.png', NULL, 1, '2024-02-21 01:33:30', '2024-02-21 01:33:30', NULL),
(26, 'Vulnerabilidades', NULL, 25, 1, '2024-02-21 01:33:50', '2024-02-21 01:33:50', NULL),
(27, 'Protección de datos', NULL, 25, 1, '2024-02-21 01:34:09', '2024-02-21 01:34:09', NULL),
(28, 'Ing en Software', 'categories/ieBs86USnE4xpnqb3Q2aoemBXJaMKAnUrNRlLNQU.png', NULL, 1, '2024-02-21 01:38:50', '2024-02-21 01:38:50', NULL),
(29, 'Metodologias', NULL, 28, 1, '2024-02-21 01:38:59', '2024-02-21 01:38:59', NULL),
(30, 'Documentación', NULL, 28, 1, '2024-02-21 01:39:22', '2024-02-21 01:39:22', NULL),
(31, 'Sistemas expertos', NULL, 13, 1, '2024-02-21 01:39:47', '2024-02-21 01:39:47', NULL),
(32, 'Orientada a objetos', NULL, 16, 1, '2024-02-21 01:40:04', '2024-02-21 01:40:04', NULL),
(33, 'Redes', 'categories/uAQfV5v3Hn6rrwOMcHEHxJyjPVz2IqUuhu1BkaT4.png', NULL, 1, '2024-02-21 02:21:21', '2024-02-21 02:21:21', NULL),
(34, 'IoT', NULL, 33, 1, '2024-02-21 02:21:34', '2024-02-21 02:21:34', NULL),
(35, 'Algoritmia', 'categories/eNsNJE28oXLUXh8QAvTLBV4QMBEWzezi9kOg4ua7.png', NULL, 1, '2024-02-21 02:32:15', '2024-02-21 02:32:15', NULL),
(36, 'Grafos', NULL, 35, 1, '2024-02-21 02:32:23', '2024-02-21 02:32:23', NULL),
(37, 'Busquedas', NULL, 35, 1, '2024-02-21 02:32:37', '2024-02-21 02:32:37', NULL),
(38, 'Almacenes de datos', NULL, 5, 1, '2024-02-21 02:39:01', '2024-02-21 02:39:01', NULL),
(39, 'Sistemas Inteligentes', 'categories/DxebSLy1KfO5jNLd7mSaT2L5djnIJ2q1THoQ3bpW.png', NULL, 1, '2024-03-07 18:33:32', '2024-03-07 18:33:32', NULL),
(40, 'lógica y álgebra', NULL, 6, 1, '2024-03-08 00:15:16', '2024-03-08 00:15:16', NULL),
(41, 'Ciencias de la Computación', 'categories/MSa4f7kWsW65Ce7EcGQtSWbhzrSLNQYgEQ8KDIYU.png', NULL, 1, '2024-03-08 00:22:12', '2024-03-08 00:30:29', NULL),
(42, 'Teoría', NULL, 41, 1, '2024-03-08 00:22:23', '2024-03-08 00:22:23', NULL),
(43, 'Sistemas operativos', 'categories/B4hvPP6Lxhjoq3wj4xB4j6AN0yULBEvpO2A8HP5w.png', NULL, 1, '2024-03-08 00:29:27', '2024-03-08 00:29:27', NULL),
(44, 'Explotación de sistemas operativos', NULL, 43, 1, '2024-03-08 00:31:36', '2024-03-08 00:31:36', NULL),
(45, 'Hipermedia', 'categories/O9rxTbkjLmFqBDpCSIw7heK9m6yHPLXK8i9gSrRe.png', NULL, 1, '2024-03-08 00:36:34', '2024-03-08 00:36:34', NULL),
(46, 'Modelado 3D', NULL, 45, 1, '2024-03-08 00:37:00', '2024-03-08 00:37:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `slug` text NOT NULL,
  `subtitle` text NOT NULL,
  `imagen` varchar(250) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `categorie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_categorie_id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(120) NOT NULL,
  `idioma` varchar(150) NOT NULL,
  `vimeo_id` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requirements` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`requirements`)),
  `who_is_it_for` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es activo y 2 es desactivo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `title`, `slug`, `subtitle`, `imagen`, `user_id`, `categorie_id`, `sub_categorie_id`, `level`, `idioma`, `vimeo_id`, `time`, `description`, `requirements`, `who_is_it_for`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'programacion sencilla', 'programacion-faciln', 'DEUHEFWKML', 'courses/Z09Do5SC8zu7WrtTR3NoZvWEokuwfmLaOWiLsJig.jpg', 60, 1, 2, '2', 'Español', NULL, NULL, '<p>Hello, worldrgdg</p>', '[\"\"]', '[\"\"]', 1, '2024-01-27 01:53:28', '2024-01-27 02:01:15', '2024-01-27 02:01:15'),
(2, 'Bases de datos', 'bases-de-datos', 'Descubriendo la Arquitectura de Datos: Navegando por las Bases Fundamentales de la Gestión de Información', 'courses/2Wljj3Ruct5xWY4blCZi79DO2nw5hBUMsn3PVLOx.png', 60, 13, 14, '4', 'Español', NULL, NULL, '<p>El curso de Bases de Datos proporciona un estudio exhaustivo y pr&aacute;ctico sobre la gesti&oacute;n de la informaci&oacute;n en el &aacute;mbito digital. Desde los conceptos fundamentales hasta las estrategias avanzadas, los participantes ser&aacute;n guiados a trav&eacute;s de un viaje que abarca el dise&ntilde;o, implementaci&oacute;n y administraci&oacute;n de bases de datos eficientes.</p>\r\n\r\n<p>Durante el curso, se profundizar&aacute; en temas esenciales, incluyendo el modelado de datos para representar de manera precisa la realidad, la utilizaci&oacute;n de lenguajes de consulta para extraer informaci&oacute;n significativa, la normalizaci&oacute;n de bases de datos para optimizar su estructura y el empleo de t&eacute;cnicas avanzadas de optimizaci&oacute;n para mejorar el rendimiento.</p>\r\n\r\n<p>La aplicaci&oacute;n pr&aacute;ctica de estos conocimientos se llevar&aacute; a cabo a trav&eacute;s de proyectos, donde los participantes desarrollar&aacute;n habilidades pr&aacute;cticas en la construcci&oacute;n y mantenimiento de sistemas de bases de datos adaptados a diversas necesidades y entornos. Este enfoque pr&aacute;ctico garantiza que los estudiantes adquieran no solo conocimientos te&oacute;ricos, sino tambi&eacute;n la capacidad de aplicar estos conceptos en situaciones del mundo real.</p>\r\n\r\n<p>Este curso es esencial para aquellos que buscan comprender y dominar los cimientos de la gesti&oacute;n de informaci&oacute;n en la era digital, proporcionando las herramientas necesarias para abordar desaf&iacute;os y oportunidades en el dise&ntilde;o y administraci&oacute;n de bases de datos.</p>', '[\"Entusiasmo\"]', '[\"Ingenier\\u00eda Inform\\u00e1tica\",\"Ingenier\\u00eda en Computaci\\u00f3n\"]', 2, '2024-01-27 01:54:39', '2024-03-08 00:53:04', NULL),
(3, 'Programación fácil', 'programacion-facil', 'aprende desde cero las bases de la programación en C', 'courses/iwjSmgt2jlqKkiNhCyA90uwEsy43YwunfrmYmnNP.jpg', 71, 16, 18, '1', 'Español', NULL, NULL, '<p>El curso de Programaci&oacute;n en C ofrece a los participantes una introducci&oacute;n exhaustiva al lenguaje de programaci&oacute;n C, uno de los m&aacute;s fundamentales y vers&aacute;tiles en el &aacute;mbito de la inform&aacute;tica. Desde los conceptos b&aacute;sicos hasta t&eacute;cnicas m&aacute;s avanzadas, los estudiantes adquirir&aacute;n habilidades pr&aacute;cticas en el desarrollo de software eficiente y robusto.</p>\r\n\r\n<p>A lo largo del curso, se abordar&aacute;n temas esenciales como la sintaxis de C, el manejo de variables, la estructuraci&oacute;n de programas mediante funciones y la manipulaci&oacute;n de estructuras de datos. Los participantes tambi&eacute;n explorar&aacute;n conceptos avanzados, como la gesti&oacute;n de memoria, punteros y la implementaci&oacute;n de estructuras de control.</p>\r\n\r\n<p>Mediante ejercicios pr&aacute;cticos y proyectos aplicados, los estudiantes desarrollar&aacute;n la capacidad de traducir l&oacute;gica y algoritmos en c&oacute;digo C funcional. Se enfatizar&aacute; la resoluci&oacute;n de problemas y la eficiencia del c&oacute;digo, brindando a los participantes las herramientas necesarias para abordar desaf&iacute;os en el desarrollo de software de nivel medio y bajo nivel.</p>\r\n\r\n<p>Este curso es ideal tanto para principiantes que desean iniciarse en la programaci&oacute;n como para aquellos con experiencia en otros lenguajes que buscan dominar las complejidades y la potencia del lenguaje C.</p>', '[\"Entusiasmo\"]', '[\"Ingenier\\u00eda en Computaci\\u00f3n\",\"Ingenier\\u00eda Inform\\u00e1tica\"]', 2, '2024-01-27 02:01:42', '2024-03-08 00:49:54', NULL),
(5, 'Métodos matemáticos 1', 'metodos-matematicos-1', 'Calculo,Analisis matematicos,ecuaciones de primer y segundo grado', 'courses/wdFSg1Jg62hHxsRNzqCNEEUCHlYg60FB4xLDi5Cu.jpg', 82, 6, 2, '1', 'Español', NULL, NULL, '<p>El curso de M&eacute;todos Matem&aacute;ticos proporciona a los estudiantes una s&oacute;lida base en t&eacute;cnicas matem&aacute;ticas avanzadas aplicadas a diversas disciplinas. Desde el c&aacute;lculo y el &aacute;lgebra lineal hasta ecuaciones diferenciales y an&aacute;lisis complejo, los participantes desarrollar&aacute;n habilidades anal&iacute;ticas esenciales para abordar problemas te&oacute;ricos y aplicados.</p>\r\n\r\n<p>El enfoque del curso se centra en la comprensi&oacute;n profunda de los m&eacute;todos matem&aacute;ticos utilizados para modelar y resolver problemas en campos como la f&iacute;sica, la ingenier&iacute;a, la econom&iacute;a y la inform&aacute;tica. A trav&eacute;s de ejercicios pr&aacute;cticos y casos de estudio, los estudiantes aprender&aacute;n a aplicar estas herramientas matem&aacute;ticas de manera efectiva, desarrollando la capacidad de formular y resolver problemas complejos en diversos contextos.</p>\r\n\r\n<p>El curso tambi&eacute;n aborda la importancia de la rigurosidad matem&aacute;tica y la interpretaci&oacute;n de los resultados, proporcionando a los estudiantes las habilidades necesarias para comunicar de manera efectiva los conceptos y soluciones matem&aacute;ticas. Este curso es esencial para aquellos que buscan una comprensi&oacute;n profunda de los m&eacute;todos matem&aacute;ticos y su aplicaci&oacute;n en la resoluci&oacute;n de problemas del mundo real.</p>\r\n\r\n<p>&nbsp;</p>', '[\"Matem\\u00e1tica B\\u00e1sica\"]', '[\"Ingenier\\u00eda Inform\\u00e1tica\",\"Ingenier\\u00eda en Computaci\\u00f3n\"]', 2, NULL, '2024-03-08 00:47:15', NULL),
(6, 'Programación en C#', 'programacion-en-c', 'Lo basico y más', 'courses/SbyyTWripcu0Pke2Xid1l3XcQIaimcAM5T8UdN3w.webp', 72, 16, 18, '3', 'Español', NULL, NULL, '<p><strong>&iquest;Por qu&eacute; C#?</strong><br />\r\nC# es un lenguaje de programaci&oacute;n moderno, orientado a objetos y f&aacute;cil de aprender. Desarrollado por Microsoft, C# es ampliamente utilizado para crear aplicaciones de escritorio, aplicaciones web, juegos, servicios en la nube y mucho m&aacute;s. Su sintaxis clara y su capacidad para trabajar con la plataforma .NET hacen que sea una opci&oacute;n ideal para desarrolladores de todos los niveles.</p>\r\n\r\n<p><strong>&iquest;Qu&eacute; aprender&aacute;s?</strong><br />\r\nDurante este curso, exploraremos los conceptos b&aacute;sicos de C# y te proporcionaremos las habilidades necesarias para comenzar a construir tus propias aplicaciones. Cubriremos temas como variables, tipos de datos, estructuras de control, funciones, manejo de excepciones y m&aacute;s. Adem&aacute;s, te sumergir&aacute;s en la programaci&oacute;n orientada a objetos, un paradigma fundamental en el desarrollo de software moderno.</p>', '[\"No se requiere experiencia previa en programaci\\u00f3n. Solo necesitas una computadora y la determinaci\\u00f3n de aprender.\"]', '[\"Quienes entran a la programaci\\u00f3n\",\"Ingenier\\u00eda en Computaci\\u00f3n\",\"Ingenier\\u00eda Inform\\u00e1tica\"]', 1, '2024-02-21 02:51:47', '2024-03-08 00:54:50', NULL),
(7, 'Filtro de fotos con Python', 'filtro-de-fotos-con-python', 'Algoritmo de matricez', 'courses/dfMDiGtdj1aD0M7R8ONRcjIpbFPGFAp1JaGMNb1M.png', 60, 16, 19, '3', 'Español', NULL, NULL, '<p><strong>&iquest;Qu&eacute; aprender&aacute;s?</strong> Durante este curso, explorar&aacute;s los fundamentos del procesamiento de datos con Python y aprender&aacute;s a crear filtros personalizados para abordar diversos escenarios. Cubriremos temas como manipulaci&oacute;n de listas, diccionarios y conjuntos, expresiones lambda, comprensi&oacute;n de listas y m&aacute;s. Adem&aacute;s, te introduciremos a bibliotecas populares como NumPy y Pandas, que facilitar&aacute;n enormemente tus tareas de filtrado y manipulaci&oacute;n de datos.</p>\r\n\r\n<p><strong>&iquest;Para qui&eacute;n es este curso?</strong> Este curso est&aacute; dise&ntilde;ado tanto para principiantes que desean iniciarse en el procesamiento de datos con Python como para aquellos que ya tienen conocimientos b&aacute;sicos y desean profundizar en la creaci&oacute;n de filtros personalizados. Si trabajas con datos o simplemente te apasiona la manipulaci&oacute;n de informaci&oacute;n, este curso te proporcionar&aacute; habilidades pr&aacute;cticas y aplicables.</p>', '[\"Conocimientos b\\u00e1sicos de Python\",\"Conocimiento de algoritmos\",\"Conocimiento de matricez\"]', '[\"estudiantes interesados en crear filtros\",\"gente que quiera mejorar sus habilidades en python\"]', 2, '2024-02-21 03:00:31', '2024-02-21 03:00:31', NULL),
(8, 'Data warehouses', 'data-warehouses', 'What are and how to use them', 'courses/idSRdGUZ61gc2iHmRhEMWVjlvMR6LlH2ke4kghEx.png', 13, 5, 38, '6', 'Ingles', NULL, NULL, '<p>Welcome to the Data Warehousing Fundamentals Course! In this comprehensive program, we will delve into the essential concepts and practices of data warehousing, equipping you with the knowledge and skills to harness the power of organized data for effective business intelligence.</p>\r\n\r\n<p><strong>Why Data Warehousing?</strong> In today&#39;s data-driven world, businesses rely on structured and organized information to make informed decisions. Data warehousing provides a centralized repository for collecting, storing, and managing data from various sources, facilitating efficient analysis and reporting. This course will guide you through the fundamentals of data warehousing and its crucial role in modern business intelligence strategies.</p>\r\n\r\n<p><strong>What Will You Learn?</strong> Throughout this course, we will explore key data warehousing concepts, including data modeling, ETL (Extract, Transform, Load) processes, dimensional modeling, and data warehouse architecture. You will gain hands-on experience with popular data warehousing tools and technologies, allowing you to design and implement your own data warehouse solutions.</p>', '[\"fundamentals of data warehousing\",\"fundamentals of data bases\",\"fundamentals of data administration\"]', '[\"IT professionals\",\"business intelligence professionals\",\"database administrators\",\"data analysts\"]', 2, '2024-02-21 03:08:47', '2024-02-21 03:08:47', NULL),
(9, 'Integrating Email Services on a Server Course', 'integrating-email-services-on-a-server-course', 'Using a Linux distribution, Debian', 'courses/at2GufYp1rCziNqAyef7sl7P3hIrM28pBfPsZyV0.png', 78, 7, 9, '4', 'Español', NULL, NULL, '<p>Welcome to the Integrating Email Services on a Server Course! In this hands-on program, you will learn the essential skills to set up and manage email services on a server, ensuring smooth communication for your applications and users.</p>\r\n\r\n<p><strong>Why Email Integration?</strong> Email remains a cornerstone of modern communication, and integrating email services on your server is crucial for various applications, from web hosting to business solutions. This course will guide you through the process of configuring and maintaining a robust email infrastructure, enhancing the reliability and functionality of your server.</p>\r\n\r\n<p><strong>What Will You Learn?</strong> Throughout this course, you will acquire the knowledge and practical experience to integrate email services seamlessly into your server environment. Key topics include setting up mail servers, configuring email clients, implementing security measures, and troubleshooting common issues. You&#39;ll gain insights into popular email protocols, such as SMTP, IMAP, and POP3, and explore best practices for optimal email server performance.</p>', '[\"basic understanding of server administration\",\"networking fundamentals\"]', '[\"system administrators\",\"IT professionals\",\"Informatic Students\"]', 2, '2024-02-21 03:18:29', '2024-02-21 03:18:29', NULL),
(10, 'Curso de Algoritmo de Prim', 'curso-de-algoritmo-de-prim', 'Árboles de Expansión Mínima', 'courses/J7nOlawz1STLHtVyWlrqDtaP9T8gTA9OHXA8AwQv.png', 17, 35, 37, '3', 'Español', NULL, NULL, '<p>&iexcl;Bienvenido al Curso de Algoritmo de Prim para &Aacute;rboles de Expansi&oacute;n M&iacute;nima! En este programa educativo, exploraremos en detalle el algoritmo de Prim, una t&eacute;cnica esencial en teor&iacute;a de grafos utilizada para encontrar el &aacute;rbol de expansi&oacute;n m&iacute;nima en un grafo conexo y ponderado.</p>\r\n\r\n<p><strong>&iquest;Por qu&eacute; el Algoritmo de Prim?</strong> Los &aacute;rboles de expansi&oacute;n m&iacute;nima son fundamentales en diversos campos, como redes de comunicaci&oacute;n, log&iacute;stica y dise&ntilde;o de circuitos. El Algoritmo de Prim ofrece una soluci&oacute;n eficiente para encontrar la estructura de &aacute;rbol que conecta todos los nodos de un grafo con el menor costo total posible. Este curso te guiar&aacute; a trav&eacute;s de los conceptos y t&eacute;cnicas esenciales para aplicar con &eacute;xito el algoritmo de Prim en situaciones del mundo real.</p>\r\n\r\n<p><strong>&iquest;Qu&eacute; Aprender&aacute;s?</strong> Durante este curso, abordaremos los siguientes temas clave:</p>\r\n\r\n<ul>\r\n	<li>Introducci&oacute;n a la teor&iacute;a de grafos y &aacute;rboles de expansi&oacute;n m&iacute;nima.</li>\r\n	<li>Explicaci&oacute;n detallada del algoritmo de Prim y su implementaci&oacute;n.</li>\r\n	<li>Estrategias para manejar grafos ponderados y no dirigidos.</li>\r\n	<li>Casos de estudio y aplicaciones pr&aacute;cticas del algoritmo.</li>\r\n	<li>Optimizaci&oacute;n y an&aacute;lisis del rendimiento del algoritmo de Prim.</li>\r\n	<li>Desarrollo de habilidades de resoluci&oacute;n de problemas en teor&iacute;a de grafos.</li>\r\n</ul>\r\n\r\n<p><strong>Destacados del Curso:</strong></p>\r\n\r\n<ul>\r\n	<li>Lecciones te&oacute;ricas acompa&ntilde;adas de ejemplos pr&aacute;cticos.</li>\r\n	<li>Desaf&iacute;os de programaci&oacute;n para aplicar y fortalecer tus habilidades.</li>\r\n	<li>Proyectos pr&aacute;cticos que simulan escenarios del mundo real.</li>\r\n	<li>Colaboraci&oacute;n con instructores experimentados y una comunidad de aprendices.</li>\r\n	<li>Certificaci&oacute;n al completar con &eacute;xito el curso.</li>\r\n</ul>', '[\"conocimientos b\\u00e1sicos de programaci\\u00f3n\",\"comprensi\\u00f3n de conceptos fundamentales de grafos.\"]', '[\"Estudiantes que quieran conocer sobre los grafos\",\"cualquier persona interesada en aplicar el algoritmo de Prim\"]', 1, '2024-02-21 03:47:57', '2024-02-21 03:47:57', NULL),
(11, 'Curso de Desarrollo Web Full Stack', 'curso-de-desarrollo-web-full-stack', 'con React.js y Node.js', 'courses/VJSm74BdeROCkdpwyT8J36bvOcX0xaHodgWWKCB2.png', 80, 1, 17, '5', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Fundamentos de HTML\",\" CSS y JavaScript.\"]', '[\"principiantes que deseen iniciarse en el desarrollo web\"]', 2, '2024-02-21 04:15:28', '2024-02-21 04:15:28', NULL),
(12, 'Exploits', 'exploits', 'usando VM', 'courses/pB8Q9yZs3hpanqWrGsjDjomgE7Obz1PxVcomJffs.png', 60, 25, 26, '5', 'Español', NULL, NULL, 'null', '[\"Usar VM\"]', '[\"Interesados en conocer vulnerabilidades\"]', 2, '2024-02-21 04:19:29', '2024-02-21 04:55:30', NULL),
(13, 'Programacion orientada a objetos', 'programacion-orientada-a-objetos', 'Arrays', 'courses/7LIuV8xF1B1Xi6cngxci7ElfYuuuhN4nohAGqjsw.png', 13, 21, 22, '2', 'Español', NULL, NULL, '<p>Hello, world!cs</p>', '[\"Programacion basica\",\"Declarar variables\"]', '[\"estudiantes principiantes\"]', 1, '2024-02-21 04:28:03', '2024-02-21 04:28:03', NULL),
(14, 'Metodologia', 'metodologia', 'Cascada', 'courses/Eacn2NYLjnhr3JFyyKtpUvIlyyjmSQL9ZP1JBzbH.webp', 82, 28, 29, '3', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Conocer programacion\",\"Saber leer bien\"]', '[\"Programadores principiantes\",\"Aquellos que quieren vender su trabajo\"]', 2, '2024-02-21 04:37:09', '2024-02-21 04:37:09', NULL),
(15, 'Iot', 'iot', 'en conexion', 'courses/ECY6Jzjr7fT9gDuoF0c8MqWGoXmdQfkLQYdcizGb.png', 71, 33, 34, '3', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Cisco Packet Tracer\"]', '[\"estudiantes interesados en redes\"]', 2, '2024-02-21 04:41:13', '2024-02-21 04:41:13', NULL),
(16, 'Conectar varias compus a traves del pais', 'conectar-varias-compus-a-traves-del-pais', 'usando Cisco Packet tracer', 'courses/3sZ7mhUOfcAak5i6E0cxF1twrTrGm3Fdy11yPH2T.jpg', 72, 33, 34, '3', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Cisco Packet Tracer\"]', '[\"estudiantes principiantes en redes\",\"Interesados en realizar conexiones IP\"]', 1, '2024-02-21 04:42:27', '2024-02-21 04:42:27', NULL),
(17, 'Usar diccionarios', 'usar-diccionarios', 'Para cualquier problema', 'courses/x9fIVdVUEmVSWB7r3a4oIxE2tfTm281XJcgUd1oF.jpg', 80, 21, 22, '3', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Python basico\",\"Hacer arrays\"]', '[\"Estudiantes con mejora en programacion dinamica\"]', 1, '2024-02-21 04:43:45', '2024-02-21 04:43:45', NULL),
(18, 'Usar Orange', 'usar-orange', 'Con Anaconda', 'courses/8kKkrEmlfKS6j8IItoCD7EUsQTUuyWfGbbU38Bfc.jpg', 17, 13, 14, '6', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Anaconda\",\"Conocimientos de Python\",\"Base de datos\",\"Limpieza de la informaci\\u00f3n\"]', '[\"Estudiantes principiantes en datamining\",\"Interesados en usar patrones\",\"Estudiantes que quieren predecir\"]', 2, '2024-02-21 04:45:25', '2024-02-21 04:45:25', NULL),
(19, 'Realiza Derivadas', 'realiza-derivadas', 'Extensas', 'courses/3PCuLc9M9lG6PUyy8sMWlRJ6KNI0rEdAHcckNMLq.png', 80, 6, 11, '2', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"matematicas basicas\",\"Resolver funciones\"]', '[\"Estudiantes que apenas entraron a las ciencias y tecnologias\"]', 2, '2024-02-21 04:47:06', '2024-02-21 04:47:06', NULL),
(20, 'Instala Oracle', 'instala-oracle', 'Y aprende a manejarlo', 'courses/jdO4rfEb9xHnhwyzY5mUqRh5eFNdHJKcWwWhaPKV.png', 60, 5, 8, '3', 'Español', NULL, NULL, 'null', '[\"Ganas de aprender\",\"Principios de bases de datos\"]', '[\"Estudiantes que quieran iniciar en Bases de Datos\"]', 1, '2024-02-21 04:48:19', '2024-02-21 04:48:19', NULL),
(21, 'XAMPP', 'xampp', 'Como nos facilitara la administración', 'courses/jBYygCA8WqBikJJhtKxrggExzYNcHW5uKdA4lTSF.jpg', 65, 5, 8, '3', 'Español', NULL, NULL, 'null', '[\"SQL basico\",\"Conocicmiento en puertos computacionales\"]', '[\"Estudiantes que quieran mejorar la administracion de base de datos\"]', 2, '2024-02-21 04:49:31', '2024-03-08 00:43:43', NULL),
(22, 'Crea tu dashboard', 'crea-tu-dashboard', 'Con PowerBI', 'courses/Frd4AibIPMdYgAsYHBWprVX30PD46zQQGHvQt9Ii.png', 80, 13, 15, '6', 'Español', NULL, NULL, 'null', '[\"Manejo de SQL\",\"Estadistica basica\"]', '[\"Estudiantes que quieran representar datos complejos\"]', 2, '2024-02-21 04:50:57', '2024-02-21 04:54:52', NULL),
(23, 'Crea una plataforma', 'crea-una-plataforma', 'usando Laravel', 'courses/54wpchjbK3eFpyb3vp0FvGoet3wAVCmzwFwPY6LU.png', 60, 1, 2, '5', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"LARAGON\",\"GITHUB\",\"COMPOSER\",\"algun manejador de BD\"]', '[\"Interesados en iniciar en el mundo del desarrollo web\"]', 1, '2024-02-21 04:58:27', '2024-02-21 04:58:27', NULL),
(24, 'Crea un sistema experto', 'crea-un-sistema-experto', 'usando PROLOG', 'courses/DVcQLKczlcui0CjK9sKwnEZe65lwc1YMXpfW2LVJ.png', 60, 13, 31, '6', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"PRLOG\",\"Pensamiento Logico avanzado\",\"Programacion basica\"]', '[\"Estudiantes interesados enc rear un sistema experto\"]', 1, '2024-02-21 05:00:53', '2024-02-21 05:00:53', NULL),
(25, 'Usa Graffana', 'usa-graffana', 'Para crear tus dashboards', 'courses/tUtjZVNoQvc7cnxYR4gpqjR9GDhyhtJbLfkpDV2X.png', 13, 13, 15, '6', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Manejo de BD\",\"Manejador de BD\",\"SO de Linux\"]', '[\"Estudiantes que quieran representar informacion\"]', 2, '2024-02-21 05:02:14', '2024-02-21 05:02:14', NULL),
(26, 'Que es Tableau', 'que-es-tableau', 'Y como usarlo', 'courses/QZ5qgEb7vcZHr60GlaqxYPBfx2swXDFl7eFPTgw7.jpg', 65, 13, 15, '6', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Manejador de BD\"]', '[\"Estudiantes que entren a la ciencia de datos\"]', 2, '2024-02-21 05:03:29', '2024-02-21 05:03:29', NULL),
(27, 'Learn Python', 'learn-python', 'Fast as posible', 'courses/KOSmBjuMWBb8Wzyy4L0er4sFG9UzacH4EUMVmTs5.png', 78, 16, 19, '1', 'Ingles', NULL, NULL, '<p>Hello, world!</p>', '[\"\"]', '[\"\"]', 1, '2024-02-21 05:05:06', '2024-02-21 05:05:06', NULL),
(28, 'Conecta dispositivos', 'conecta-dispositivos', 'A tu servidor', 'courses/AZdVpTkRL8MFkEGByBhC4xAWWUalh0hsfsDAhqzl.jpg', 65, 7, 10, '4', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Uso de VM\",\"Redes basicas\"]', '[\"estudiantes principiantes en servidores\"]', 2, '2024-02-21 05:07:39', '2024-02-21 05:07:39', NULL),
(29, 'Arboles', 'arboles', 'Binarios', 'courses/BOMJnM5iRJvCnQCNrjQKZheEqTbHVy2qV1QjwS2L.png', 71, 21, 20, '2', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Proramacion basica\"]', '[\"\"]', 2, '2024-02-21 05:37:19', '2024-02-21 05:37:19', NULL),
(30, 'Como recorrer un grafo', 'como-recorrer-un-grafo', 'Con peso', 'courses/Gpowg9w4qoFhjUIndmyZrBpAtVs9J5Shp5KcBPVN.jpg', 82, 35, 36, '3', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Estructura de datos basica\"]', '[\"estudiantes itneresados en algoritmos\"]', 2, '2024-02-21 05:41:48', '2024-02-21 05:41:48', NULL),
(31, 'Como usar busquedas binarias', 'como-usar-busquedas-binarias', 'Para cualquier problema', 'courses/OfH4LQMkfIG728pPKFzJ17Ou9FJoAMkuzvH79gKH.webp', 72, 35, 37, '2', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"programacion super basica\",\"conocimiento de arrays\"]', '[\"estudiantes principiantes\"]', 2, '2024-02-22 00:21:54', '2024-02-22 00:21:54', NULL),
(32, 'Tableau', 'tableau', 'Curso para principiantes', 'courses/ypLKvabLdb6VioTboElVkdvkUyHYeFyPuP20mcsn.png', 82, 13, 15, '5', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Manejo de bases de datos\"]', '[\"Estudiantes interesados en ciencia de datos\"]', 1, '2024-02-22 00:40:46', '2024-02-22 00:40:46', NULL),
(33, 'Crea tu landingPage', 'crea-tu-landingpage', 'A partir de plantillas', 'courses/nodVLUPBq1jtgPwoI4kUM9TLKPWXogfjitapXHul.jpg', 65, 1, 2, '5', 'Español', NULL, NULL, 'null', '[\"\"]', '[\"\"]', 2, '2024-02-22 01:15:40', '2024-03-08 00:42:38', NULL),
(34, 'Crea matrices', 'crea-matrices', 'desde cualquier lenguaje', 'courses/t2iy4VS9CgY7rhohtCGai0htFpKzcVYqh4Wsgx1J.webp', 75, 16, 36, '2', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"\"]', '[\"\"]', 1, '2024-02-22 01:19:01', '2024-02-22 01:19:01', NULL),
(35, 'Inicia a programar', 'inicia-a-programar', 'En Javascript', 'courses/A4uucEyoY5XcPR6fqkKhHV7bsXDelzc3HvWtm8Pv.jpg', 17, 16, 20, '1', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Ganas de aprender\"]', '[\"Todo el mundo\"]', 1, '2024-02-22 01:41:38', '2024-02-22 01:41:38', NULL),
(36, 'Matemática Discreta', 'matematica-discreta', 'Fundamentos Clave en Matemáticas Discretas', 'courses/b3DhMC8TkMIWgOVl3LvT1RuB5I3aiI51hzShawJW.png', 75, 6, 40, '1', 'Español', NULL, NULL, '<p>El curso de Matem&aacute;ticas Discretas es una inmersi&oacute;n integral en los fundamentos te&oacute;ricos y pr&aacute;cticos de las estructuras y conceptos matem&aacute;ticos discretos. Desde la exploraci&oacute;n de la teor&iacute;a de conjuntos, la l&oacute;gica proposicional y de primer orden hasta la profundizaci&oacute;n en la combinatoria, la teor&iacute;a de grafos y las funciones recursivas, este curso ofrece una comprensi&oacute;n exhaustiva de los elementos clave que constituyen la base de la matem&aacute;tica discreta.</p>\r\n\r\n<p>Los participantes se sumergir&aacute;n en la resoluci&oacute;n de problemas y la aplicaci&oacute;n de conceptos en situaciones del mundo real, destacando la importancia de estas herramientas matem&aacute;ticas en la resoluci&oacute;n de problemas computacionales, dise&ntilde;o de algoritmos eficientes y la optimizaci&oacute;n de procesos. Adem&aacute;s, se abordar&aacute;n temas como las relaciones de equivalencia, &aacute;lgebra booleana y teor&iacute;a de la informaci&oacute;n.</p>\r\n\r\n<p>Este curso no solo proporciona una perspectiva te&oacute;rica s&oacute;lida, sino que tambi&eacute;n se enfoca en la conexi&oacute;n directa con disciplinas afines, como inform&aacute;tica, ciencias de la computaci&oacute;n y telecomunicaciones. Los estudiantes desarrollar&aacute;n habilidades anal&iacute;ticas, capacidad para abordar problemas complejos y la capacidad de aplicar los principios aprendidos en diversos contextos.</p>\r\n\r\n<p>A trav&eacute;s de clases te&oacute;ricas, ejemplos pr&aacute;cticos y proyectos aplicados, los participantes adquirir&aacute;n una apreciaci&oacute;n profunda de la relevancia de las matem&aacute;ticas discretas en la era digital actual, donde estas fundamentales herramientas son esenciales para la construcci&oacute;n y optimizaci&oacute;n de sistemas computacionales, redes y algoritmos.</p>', '[\"\\u00c1lgebra basica\"]', '[\"Ingenier\\u00eda Inform\\u00e1tica\",\"Ingenier\\u00eda en Computaci\\u00f3n\"]', 2, '2024-03-08 00:18:30', '2024-03-08 00:41:34', NULL),
(37, 'Teoría de la computación', 'teoria-de-la-computacion', 'Explorando los Fundamentos Lógicos y Algorítmicos', 'courses/HwdDpnvcEsxC3K7ge8LpPCN5IMqA0tUnR6MNjtg2.jpg', 17, 41, 42, '2', 'Español', NULL, NULL, '<p>El curso de Teor&iacute;a de la Computaci&oacute;n ofrece una inmersi&oacute;n exhaustiva en los fundamentos te&oacute;ricos que sustentan la computaci&oacute;n y los algoritmos. Desde el estudio de m&aacute;quinas de Turing y gram&aacute;ticas formales hasta la exploraci&oacute;n de la complejidad computacional, los participantes adquirir&aacute;n una comprensi&oacute;n profunda de los principios que definen los l&iacute;mites y las capacidades de la computaci&oacute;n.</p>\r\n\r\n<p>El curso aborda conceptos esenciales como la decidibilidad, la computabilidad y la complejidad algor&iacute;tmica, proporcionando a los estudiantes las herramientas necesarias para analizar y dise&ntilde;ar algoritmos eficientes. Se explorar&aacute;n temas avanzados, como la teor&iacute;a de lenguajes formales, aut&oacute;matas, y la relaci&oacute;n entre problemas y clases de complejidad.</p>\r\n\r\n<p>A trav&eacute;s de clases te&oacute;ricas, resoluci&oacute;n de problemas y proyectos pr&aacute;cticos, los participantes desarrollar&aacute;n habilidades anal&iacute;ticas, pensamiento l&oacute;gico y la capacidad para abordar problemas computacionales desde una perspectiva te&oacute;rica. La Teor&iacute;a de la Computaci&oacute;n, como disciplina, no solo proporciona un marco conceptual s&oacute;lido, sino que tambi&eacute;n influye directamente en el dise&ntilde;o y la optimizaci&oacute;n de algoritmos en la pr&aacute;ctica.</p>\r\n\r\n<p>Este curso es esencial para aquellos que buscan comprender a fondo los principios fundamentales que sustentan la inform&aacute;tica y la ciencia de la computaci&oacute;n, y c&oacute;mo estos principios se aplican en el desarrollo de software, la inteligencia artificial y otros campos relacionados</p>', '[\"Haber cursado m\\u00e9todos matem\\u00e1ticos 1\"]', '[\"Ingenier\\u00eda inform\\u00e1tica\",\"Ingenier\\u00eda en computaci\\u00f3n\"]', 2, '2024-03-08 00:24:50', '2024-03-08 00:53:52', NULL),
(38, 'Programación para Internet', 'programacion-para-internet', 'Construyendo el Futuro en Línea: Explorando las Habilidades Esenciales de Programación para Internet', 'courses/m8On5WlxwLPjnvfXFVEe7w8ZKFDEHuaGyrsU80xd.jpg', 11, 1, 2, '5', 'Español', NULL, NULL, '<p>El curso de Programaci&oacute;n para Internet es una inmersi&oacute;n completa en las habilidades esenciales necesarias para desarrollar aplicaciones web y servicios en l&iacute;nea. Desde el dise&ntilde;o de interfaces de usuario interactivas hasta la implementaci&oacute;n de funcionalidades din&aacute;micas, los participantes aprender&aacute;n a utilizar tecnolog&iacute;as modernas para construir soluciones robustas y atractivas en el &aacute;mbito digital.</p>\r\n\r\n<p>A lo largo del curso, se abordar&aacute;n temas clave como HTML, CSS, JavaScript y frameworks populares del lado del cliente y del servidor. Los estudiantes tambi&eacute;n se familiarizar&aacute;n con conceptos de desarrollo web, arquitecturas de aplicaciones, seguridad en l&iacute;nea y pr&aacute;cticas recomendadas en el dise&ntilde;o de interfaces responsivas.</p>\r\n\r\n<p>Mediante proyectos pr&aacute;cticos y ejercicios, los participantes adquirir&aacute;n experiencia pr&aacute;ctica en el desarrollo de aplicaciones web, desde la conceptualizaci&oacute;n hasta la implementaci&oacute;n. Se explorar&aacute;n tambi&eacute;n temas avanzados como API REST, autenticaci&oacute;n de usuarios y despliegue en la nube, brindando a los estudiantes una perspectiva integral de la programaci&oacute;n para internet.</p>\r\n\r\n<p>Este curso es ideal para aquellos que desean ingresar al emocionante mundo del desarrollo web y adquirir habilidades pr&aacute;cticas para crear aplicaciones interactivas y servicios en l&iacute;nea que impulsen la innovaci&oacute;n en el entorno digital actual.</p>', '[\"Programaci\\u00f3n B\\u00e1sica\"]', '[\"Ingenier\\u00eda Inform\\u00e1tica\"]', 2, '2024-03-08 00:27:55', '2024-03-08 00:54:00', NULL),
(39, 'Uso, Adaptación y Explotación de Sistemas Operativos', 'uso-adaptacion-y-explotacion-de-sistemas-operativos', 'Optimizando la Interacción: Descubre el Mundo de los Sistemas Operativos y Domina su Uso Creativo', 'courses/P7YrY0d5ox6AMI70L98556tdRjqHeVUzE2Y1Ve6k.jpg', 82, 43, 44, '6', 'Español', NULL, NULL, '<p>El curso &#39;Uso, Adaptaci&oacute;n y Explotaci&oacute;n de Sistemas Operativos&#39; ofrece una inmersi&oacute;n integral en la comprensi&oacute;n, adaptaci&oacute;n y aprovechamiento efectivo de los sistemas operativos. Desde los fundamentos hasta estrategias avanzadas, los participantes explorar&aacute;n el mundo din&aacute;mico de los sistemas operativos y aprender&aacute;n a utilizarlos como herramientas poderosas para optimizar el rendimiento, la seguridad y la eficiencia en diversos entornos computacionales.</p>\r\n\r\n<p>A lo largo del curso, se abordar&aacute;n temas cruciales como la gesti&oacute;n de recursos, la configuraci&oacute;n del sistema, la administraci&oacute;n de usuarios, la resoluci&oacute;n de problemas y la explotaci&oacute;n de caracter&iacute;sticas avanzadas de los sistemas operativos. Adem&aacute;s, se explorar&aacute;n conceptos clave de virtualizaci&oacute;n, contenedores y t&eacute;cnicas de adaptaci&oacute;n para entornos espec&iacute;ficos.</p>\r\n\r\n<p>Mediante ejercicios pr&aacute;cticos y proyectos aplicados, los participantes adquirir&aacute;n habilidades pr&aacute;cticas para personalizar y optimizar entornos operativos seg&uacute;n las necesidades espec&iacute;ficas de diferentes aplicaciones y usuarios. Este curso proporciona una base s&oacute;lida para aquellos que buscan comprender a fondo la administraci&oacute;n de sistemas operativos y maximizar su utilidad en entornos profesionales y empresariales.</p>', '[\"Programaci\\u00f3n\",\"Teor\\u00eda de computaci\\u00f3n\"]', '[\"Ingenier\\u00eda Inform\\u00e1tica\",\"Ingenier\\u00eda en Computaci\\u00f3n\"]', 2, '2024-03-08 00:34:42', '2024-03-08 00:53:40', NULL),
(40, 'Hipermedia', 'hipermedia', 'Modelado en Blender', 'courses/OPhrjuN0oHYfaWttGqmVE4AOLpHH69bXvtV5JoC2.jpg', 11, 45, 46, '6', 'Español', NULL, NULL, '<p>El curso de Hipermedia y Modelado 3D con Blender ofrece una inmersi&oacute;n completa en la creaci&oacute;n de experiencias interactivas y visuales atractivas. Desde el modelado tridimensional hasta la integraci&oacute;n de elementos multimedia, los participantes explorar&aacute;n las capacidades de Blender, una poderosa herramienta de software de c&oacute;digo abierto, para dar vida a proyectos hipermedia innovadores.</p>\r\n\r\n<p>A lo largo del curso, los estudiantes aprender&aacute;n las t&eacute;cnicas fundamentales de modelado 3D, animaci&oacute;n, texturizaci&oacute;n y renderizaci&oacute;n utilizando Blender. Se explorar&aacute;n tambi&eacute;n conceptos avanzados de interactividad, incorporando elementos como enlaces, botones y navegaci&oacute;n no lineal para crear experiencias hipermedia inmersivas.</p>\r\n\r\n<p>Mediante proyectos pr&aacute;cticos, los participantes aplicar&aacute;n sus conocimientos para desarrollar presentaciones interactivas, simulaciones y entornos virtuales. Se abordar&aacute;n temas como la optimizaci&oacute;n de modelos para la web, la integraci&oacute;n de elementos multimedia y la exportaci&oacute;n de proyectos para diversas plataformas.</p>\r\n\r\n<p>Este curso es ideal para aquellos que desean combinar habilidades en modelado 3D con el poder de la hipermedia, explorando nuevas fronteras en la presentaci&oacute;n visual y la creaci&oacute;n de contenido interactivo.</p>', '[\"Programaci\\u00f3n en c#\",\"Creatividad\",\"Blender\"]', '[\"Ingenier\\u00eda Inform\\u00e1tica\"]', 2, '2024-03-08 00:40:04', '2024-03-08 00:53:29', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses_students`
--

CREATE TABLE `courses_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 es iniciado 2 es terminado',
  `clases_checkeds` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `courses_students`
--

INSERT INTO `courses_students` (`id`, `course_id`, `user_id`, `state`, `clases_checkeds`, `created_at`, `updated_at`) VALUES
(1, 2, 11, 2, '21', '2024-02-08 00:04:06', '2024-02-08 00:04:06'),
(19, 5, 17, 1, NULL, '2024-02-10 02:56:40', '2024-02-10 02:56:40'),
(22, 2, 17, 1, '21', '2024-02-10 03:00:03', '2024-02-10 03:00:03'),
(24, 15, 4, 1, '5', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(25, 18, 5, 1, '4', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(26, 35, 11, 1, '5', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(29, 9, 16, 1, '2', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(30, 13, 17, 1, '1', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(31, 17, 57, 1, '5', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(32, 22, 58, 1, '1', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(33, 16, 59, 1, '2', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(34, 31, 60, 1, '2', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(35, 19, 61, 1, '5', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(36, 2, 62, 1, '3', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(37, 7, 63, 1, '3', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(38, 11, 64, 1, '4', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(39, 27, 65, 1, '4', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(40, 29, 66, 1, '2', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(41, 21, 67, 1, '2', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(42, 1, 68, 1, '1', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(43, 35, 69, 1, '5', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(44, 12, 70, 1, '1', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(45, 15, 71, 1, '5', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(46, 4, 72, 1, '5', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(47, 7, 73, 1, '1', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(48, 13, 74, 1, '2', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(49, 9, 75, 1, '3', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(50, 22, 76, 1, '4', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(51, 9, 77, 1, '2', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(52, 32, 78, 1, '3', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(53, 35, 79, 1, '2', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(54, 23, 80, 1, '2', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(55, 5, 81, 1, '1', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(56, 27, 82, 1, '4', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(87, 7, 4, 1, '4', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(88, 6, 5, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(89, 8, 11, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(90, 29, 13, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(91, 17, 15, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(92, 15, 16, 1, '2', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(93, 24, 17, 1, '2', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(96, 28, 59, 1, '4', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(97, 11, 60, 1, '2', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(98, 19, 61, 1, '5', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(99, 21, 62, 1, '2', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(101, 21, 64, 1, '4', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(102, 8, 65, 1, '4', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(103, 34, 66, 1, '4', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(104, 12, 67, 1, '4', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(105, 20, 68, 1, '4', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(106, 29, 69, 1, '1', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(107, 19, 70, 1, '4', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(108, 32, 71, 1, '2', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(109, 3, 72, 1, '2', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(110, 18, 73, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(111, 23, 74, 1, '5', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(112, 19, 75, 1, '5', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(113, 11, 76, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(114, 34, 77, 1, '1', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(115, 24, 78, 1, '5', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(116, 31, 79, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(117, 10, 11, 1, NULL, '2024-02-23 02:34:00', '2024-02-23 02:34:00'),
(118, 24, 11, 1, NULL, '2024-02-23 02:34:00', '2024-02-23 02:34:00'),
(120, 14, 11, 1, NULL, '2024-02-23 02:36:56', '2024-02-23 02:36:56'),
(121, 25, 61, 1, NULL, '2024-02-23 23:22:27', '2024-02-23 23:22:27'),
(122, 25, 61, 1, NULL, '2024-02-23 23:22:30', '2024-02-23 23:22:30'),
(123, 14, 58, 1, NULL, '2024-03-01 05:01:10', '2024-03-01 05:01:10'),
(124, 14, 58, 1, NULL, '2024-03-01 05:01:15', '2024-03-01 05:01:15'),
(125, 14, 58, 1, NULL, '2024-03-08 01:56:21', '2024-03-08 01:56:21'),
(126, 25, 58, 1, NULL, '2024-03-08 01:56:21', '2024-03-08 01:56:21'),
(127, 38, 58, 1, NULL, '2024-03-08 01:56:21', '2024-03-08 01:56:21'),
(128, 19, 58, 1, NULL, '2024-03-08 01:56:21', '2024-03-08 01:56:21'),
(129, 40, 58, 1, NULL, '2024-03-08 01:56:21', '2024-03-08 01:56:21'),
(130, 14, 58, 1, NULL, '2024-03-08 01:56:26', '2024-03-08 01:56:26'),
(131, 25, 58, 1, NULL, '2024-03-08 01:56:26', '2024-03-08 01:56:26'),
(132, 38, 58, 1, NULL, '2024-03-08 01:56:26', '2024-03-08 01:56:26'),
(133, 19, 58, 1, NULL, '2024-03-08 01:56:26', '2024-03-08 01:56:26'),
(134, 40, 58, 1, NULL, '2024-03-08 01:56:26', '2024-03-08 01:56:26'),
(135, 28, 16, 1, NULL, '2024-03-08 02:05:16', '2024-03-08 02:05:16'),
(136, 38, 16, 1, NULL, '2024-03-08 02:05:16', '2024-03-08 02:05:16'),
(137, 28, 16, 1, NULL, '2024-03-08 02:08:02', '2024-03-08 02:08:02'),
(138, 38, 16, 1, NULL, '2024-03-08 02:08:02', '2024-03-08 02:08:02'),
(139, 23, 16, 1, NULL, '2024-03-08 02:08:02', '2024-03-08 02:08:02'),
(140, 20, 16, 1, NULL, '2024-03-08 02:08:02', '2024-03-08 02:08:02'),
(141, 21, 16, 1, NULL, '2024-03-08 02:08:02', '2024-03-08 02:08:02'),
(142, 26, 16, 1, NULL, '2024-03-08 02:08:02', '2024-03-08 02:08:02'),
(143, 22, 16, 1, NULL, '2024-03-08 02:08:02', '2024-03-08 02:08:02'),
(144, 18, 16, 1, NULL, '2024-03-08 02:08:02', '2024-03-08 02:08:02'),
(145, 37, 16, 1, NULL, '2024-03-08 02:08:02', '2024-03-08 02:08:02'),
(146, 39, 16, 1, NULL, '2024-03-08 02:12:44', '2024-03-08 02:12:44'),
(147, 11, 69, 1, NULL, '2024-03-08 02:17:11', '2024-03-08 02:17:11'),
(148, 28, 69, 1, NULL, '2024-03-08 02:17:11', '2024-03-08 02:17:11'),
(149, 40, 69, 1, NULL, '2024-03-08 02:17:11', '2024-03-08 02:17:11'),
(150, 39, 69, 1, NULL, '2024-03-08 02:17:11', '2024-03-08 02:17:11'),
(151, 37, 69, 1, NULL, '2024-03-08 02:17:11', '2024-03-08 02:17:11'),
(152, 30, 69, 1, NULL, '2024-03-08 02:17:11', '2024-03-08 02:17:11'),
(153, 31, 69, 1, NULL, '2024-03-08 02:17:11', '2024-03-08 02:17:11'),
(154, 16, 69, 1, NULL, '2024-03-08 02:17:11', '2024-03-08 02:17:11'),
(155, 15, 69, 1, NULL, '2024-03-08 02:17:11', '2024-03-08 02:17:11'),
(156, 5, 69, 1, NULL, '2024-03-08 02:23:26', '2024-03-08 02:23:26'),
(157, 36, 69, 1, NULL, '2024-03-08 02:23:26', '2024-03-08 02:23:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_clases`
--

CREATE TABLE `course_clases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_section_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `video_link` varchar(250) DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es activo',
  `time` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `course_clases`
--

INSERT INTO `course_clases` (`id`, `course_section_id`, `name`, `video_link`, `state`, `time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 1, 'clase 1', NULL, 1, NULL, '2024-01-27 03:27:31', '2024-01-27 03:27:44', '2024-01-27 03:27:44'),
(12, 1, 'clase 1 Introducción', 'https://www.youtube.com/watch?v=OuJerKzV5T0', 1, NULL, '2024-01-27 03:34:29', '2024-03-08 06:29:34', NULL),
(13, 1, 'clase 2 principios', 'https://www.youtube.com/watch?v=mEeWiNwa_PI', 1, NULL, '2024-01-27 03:44:31', '2024-03-08 06:30:16', NULL),
(14, 2, 'clase1', 'https://www.youtube.com/watch?v=NkYSK-_hVDQ', 1, NULL, '2024-02-12 10:00:41', '2024-02-12 10:00:41', NULL),
(15, 2, 'clase2', 'https://www.youtube.com/watch?v=DVO8QrGAPHs', 1, NULL, '2024-02-12 10:03:01', '2024-02-12 10:03:01', NULL),
(16, 28, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '24', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(17, 26, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '18', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(18, 19, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '15', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(19, 21, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '19', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(20, 15, 'clase10', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '15', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(21, 14, 'clase3', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '33', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(22, 24, 'clase3', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(23, 30, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '23', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(24, 35, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '11', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(25, 12, 'clase3', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '34', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(26, 10, 'clase3', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '16', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(27, 21, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(28, 34, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '32', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(29, 14, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '19', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(30, 16, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '15', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(31, 22, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(32, 15, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '15', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(33, 26, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '25', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(34, 24, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '28', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(35, 34, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '31', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(36, 24, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '13', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(37, 23, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '19', '2024-02-22 01:51:17', '2024-03-08 06:32:38', '2024-03-08 06:32:38'),
(38, 19, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '22', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(39, 15, 'clase7', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '28', '2024-02-22 01:51:17', '2024-02-22 01:51:17', NULL),
(40, 23, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '12', '2024-02-22 01:51:17', '2024-03-08 06:32:14', '2024-03-08 06:32:14'),
(47, 25, 'clase1', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '24', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(48, 23, 'clase1', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '22', '2024-02-22 01:51:34', '2024-03-08 06:32:17', '2024-03-08 06:32:17'),
(49, 20, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '18', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(50, 14, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '24', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(51, 19, 'clase1', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '20', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(52, 28, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '35', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(53, 25, 'clase10', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '15', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(54, 13, 'clase1', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '27', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(55, 19, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '33', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(56, 12, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(57, 17, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '11', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(58, 23, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '29', '2024-02-22 01:51:34', '2024-03-08 06:32:20', '2024-03-08 06:32:20'),
(59, 21, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '33', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(60, 34, 'clase1', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '25', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(61, 26, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '13', '2024-02-22 01:51:34', '2024-02-22 07:52:40', NULL),
(62, 23, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '11', '2024-02-22 01:51:34', '2024-03-08 06:32:35', '2024-03-08 06:32:35'),
(63, 33, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '14', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(64, 29, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '25', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(65, 22, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '10', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(66, 35, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '34', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(67, 22, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '18', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(68, 35, 'clase10', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '29', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(69, 33, 'clase3', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '20', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(70, 18, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '13', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(71, 22, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '10', '2024-02-22 01:51:34', '2024-02-22 01:51:34', NULL),
(78, 33, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '35', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(79, 25, 'clase10', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '35', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(80, 13, 'clase7', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '27', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(81, 25, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '27', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(82, 29, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(83, 16, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '25', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(84, 23, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-02-22 01:54:47', '2024-03-08 06:32:22', '2024-03-08 06:32:22'),
(85, 16, 'clase3', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '24', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(86, 35, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '27', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(87, 19, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(88, 30, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(89, 11, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '27', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(90, 17, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '35', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(91, 29, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '13', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(92, 10, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '23', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(93, 22, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '33', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(94, 32, 'clase7', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '28', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(95, 25, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '19', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(96, 16, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '22', '2024-02-22 01:54:47', '2024-02-22 07:55:10', NULL),
(97, 28, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '23', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(98, 14, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '14', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(99, 33, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '28', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(100, 32, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '34', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(101, 30, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '14', '2024-02-22 01:54:47', '2024-02-22 01:54:47', NULL),
(102, 23, 'clase1', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '24', '2024-02-22 01:54:47', '2024-03-08 06:32:25', '2024-03-08 06:32:25'),
(109, 68, 'Clase 1, Presentacion', 'https://www.youtube.com/watch?v=TvwiD3WiE8A', 1, NULL, '2024-02-22 07:59:02', '2024-02-22 07:59:02', NULL),
(110, 68, 'Clase 2, Descargar Imagen Debian', 'https://www.youtube.com/watch?v=m3BVZyJc5ko', 1, NULL, '2024-02-22 07:59:40', '2024-02-22 07:59:40', NULL),
(111, 69, 'Acede a la terminal', 'https://www.youtube.com/watch?v=NrTMwzP2Y00', 1, NULL, '2024-02-22 08:00:42', '2024-02-22 08:00:42', NULL),
(112, 5, 'clase 3 Diseño de Bases de Datos', 'https://www.youtube.com/watch?v=eirNt2d9z6E', 1, NULL, '2024-02-27 05:16:38', '2024-03-08 06:31:53', NULL),
(113, 70, 'Clase 01: Introducción a los multimedios', 'https://www.youtube.com/watch?v=zKM-D0I8eCo', 1, NULL, '2024-03-08 06:00:58', '2024-03-08 06:00:58', NULL),
(114, 70, 'Clase 1.1 Aprendiendo Blender', 'https://www.youtube.com/watch?v=O-tV7uBf5LI', 1, NULL, '2024-03-08 06:02:24', '2024-03-08 06:02:51', NULL),
(115, 71, 'Clase 2.0  Explorando el Universo del Modelado 3D', 'https://www.youtube.com/watch?v=viOisulDbEQ', 1, NULL, '2024-03-08 06:04:46', '2024-03-08 06:04:46', NULL),
(116, 71, 'Clase 2.1 Texturización y Materiales en Blender: Dando Vida a tus Creaciones', 'https://www.youtube.com/watch?v=eFowqayoSKc', 1, NULL, '2024-03-08 06:05:35', '2024-03-08 06:05:35', NULL),
(117, 72, 'Clase 3.0: \"Animación en Blender: Dotando de Movimiento a tus Ideas\"', 'https://www.youtube.com/watch?v=MusMqDWXaIc', 1, NULL, '2024-03-08 06:07:13', '2024-03-08 06:07:13', NULL),
(118, 72, 'Simulaciones y Dinámicas en 3.1 Blender: Explorando el Caos Controlado', 'https://www.youtube.com/watch?v=PHhFFIzE53o', 1, NULL, '2024-03-08 06:08:01', '2024-03-08 06:08:01', NULL),
(119, 73, 'Clase 04: \"Iluminación y Renderizado en Blender: Capturando la Esencia Visual\"', 'https://www.youtube.com/watch?v=h4CyfdKJdLg', 1, NULL, '2024-03-08 06:09:28', '2024-03-08 06:09:28', NULL),
(120, 75, 'Clase 01: \"Introducción a los Sistemas Operativos\"', 'https://www.youtube.com/watch?v=u7Ve5Yt7j-8', 1, NULL, '2024-03-08 06:11:43', '2024-03-08 06:11:43', NULL),
(121, 75, 'Clase 02: \"Estructuras de Sistemas Operativos\"', 'https://www.youtube.com/watch?v=666Pc5Yp5hM', 1, NULL, '2024-03-08 06:12:16', '2024-03-08 06:12:16', NULL),
(122, 75, 'Clase 03: \"Interfaz de Usuario y Gestión de Procesos\"', 'https://www.youtube.com/watch?v=ipvAvzUSw5o', 1, NULL, '2024-03-08 06:13:30', '2024-03-08 06:13:30', NULL),
(123, 76, 'Clase 04: \"Gestión de Recursos del Sistema\"', 'https://www.youtube.com/watch?v=sBc17wMNBI4', 1, NULL, '2024-03-08 06:14:23', '2024-03-08 06:14:23', NULL),
(124, 76, 'Clase 05: \"Redes y Sistemas Distribuidos\"', 'https://www.youtube.com/watch?v=O1uXxI4KteA', 1, NULL, '2024-03-08 06:15:12', '2024-03-08 06:15:12', NULL),
(125, 76, 'Clase 06: \"Seguridad en Sistemas Operativos\"', 'https://www.youtube.com/watch?v=Lp4p0G5mwB8', 1, NULL, '2024-03-08 06:16:04', '2024-03-08 06:16:04', NULL),
(126, 78, '1 Introducción a Laravel', 'https://www.youtube.com/watch?v=PGQxIILBb7M', 1, NULL, '2024-03-08 06:20:54', '2024-03-08 06:20:54', NULL),
(127, 78, '2 Entorno de desarrollo', 'https://www.youtube.com/watch?v=I7X3R57vdIk', 1, NULL, '2024-03-08 06:21:37', '2024-03-08 06:21:37', NULL),
(128, 79, '3 Rutas', 'https://www.youtube.com/watch?v=3quQMCHf6B4', 1, NULL, '2024-03-08 06:23:06', '2024-03-08 06:23:06', NULL),
(129, 79, '4 Controladores', 'https://www.youtube.com/watch?v=0YxgCH2R2bE', 1, NULL, '2024-03-08 06:23:48', '2024-03-08 06:23:48', NULL),
(130, 80, '5 Modelos', 'https://www.youtube.com/watch?v=f-pWNf0Ht1Y', 1, NULL, '2024-03-08 06:24:55', '2024-03-08 06:24:55', NULL),
(131, 80, '6 Eloquent ORM', 'https://www.youtube.com/watch?v=Q3-nZVSBUI0', 1, NULL, '2024-03-08 06:25:44', '2024-03-08 06:25:44', NULL),
(132, 81, '7 Vistas', 'https://www.youtube.com/watch?v=JJQ8rBh3nAw', 1, NULL, '2024-03-08 06:26:33', '2024-03-08 06:26:33', NULL),
(133, 82, '8 Autenticación', 'https://www.youtube.com/watch?v=ECDgNM9xEYQ', 1, NULL, '2024-03-08 06:27:26', '2024-03-08 06:27:26', NULL),
(134, 23, 'Clase 4 modelo entidad relación', 'https://www.youtube.com/watch?v=l5PDQtUVye8', 1, NULL, '2024-03-08 06:33:09', '2024-03-08 06:33:09', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_clase_files`
--

CREATE TABLE `course_clase_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_clase_id` bigint(20) UNSIGNED NOT NULL,
  `name_file` varchar(250) NOT NULL,
  `size` varchar(50) NOT NULL,
  `time` varchar(50) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `file` varchar(250) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `course_clase_files`
--

INSERT INTO `course_clase_files` (`id`, `course_clase_id`, `name_file`, `size`, `time`, `resolution`, `file`, `type`, `created_at`, `updated_at`) VALUES
(11, 11, 'cv pau (3).png', '525384', NULL, '1545 X 2000', 'clases_files/mbKq9agHH7lOUTg3mvka5CMGgnfTwBrfphweAFxe.png', 'png', '2024-01-26 22:27:31', '2024-01-26 22:27:31'),
(17, 14, 'H2_Grammar Adjectives.pdf', '60605', NULL, NULL, 'clases_files/rr2HWhbnBIWLVIRIJRBHmEKQMVsga6t0c2296dbG.pdf', 'pdf', '2024-02-12 05:00:42', '2024-02-12 05:00:42'),
(18, 15, 'Resultados SaludDigna.pdf', '181912', NULL, NULL, 'clases_files/C9w7Q1pJ0SJw4hlP8gWu180CW6wtOVUHPyu9PEWw.pdf', 'pdf', '2024-02-12 05:03:01', '2024-02-12 05:03:01'),
(19, 109, 'descarga.jpg', '96104', NULL, '1280 X 720', 'clases_files/P5xFQGy7DsmEWtCmRH6SiZC5nySHXBOAql1oM636.jpg', 'jpg', '2024-02-22 02:59:02', '2024-02-22 02:59:02'),
(20, 110, 'descarga.jpg', '96104', NULL, '1280 X 720', 'clases_files/3qGKqa6xTGWKPendphRKdpxIMTQIA9FpDr4ZXdmQ.jpg', 'jpg', '2024-02-22 02:59:40', '2024-02-22 02:59:40'),
(21, 111, 'descarga.jpg', '96104', NULL, '1280 X 720', 'clases_files/QLuKUyJMNms9Oq3lqIdHTzdULng4aoMJ26pNtoVX.jpg', 'jpg', '2024-02-22 03:00:42', '2024-02-22 03:00:42'),
(23, 113, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/jjn1OLV4sKjDfedj4XS2RRO30ku0w0ElpJsJPyrd.docx', 'docx', '2024-03-08 01:00:58', '2024-03-08 01:00:58'),
(25, 115, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/w73ryYfmKWQhh7eyh0gESL6Ku8eKq2KVyStw4kog.docx', 'docx', '2024-03-08 01:04:46', '2024-03-08 01:04:46'),
(27, 117, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/fVOVcL63G6N3SiD7EEOjn09zhQoB4s1yIv8LjGCy.docx', 'docx', '2024-03-08 01:07:13', '2024-03-08 01:07:13'),
(29, 119, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/9wIkcHmRsEESMBC51HSSz9JOalUanBNMIhCZTEhG.docx', 'docx', '2024-03-08 01:09:28', '2024-03-08 01:09:28'),
(30, 120, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/452m8xoWzagqXj9uE1NpZLpYkWeal2MYbfjq55q4.docx', 'docx', '2024-03-08 01:11:43', '2024-03-08 01:11:43'),
(32, 122, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/t0lwaeU0KOvVPZsbM9JDIiGrNf5MCez6EcYwpdKy.docx', 'docx', '2024-03-08 01:13:30', '2024-03-08 01:13:30'),
(33, 123, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/2aiBQyAg7tnnyp0dZ7qX9qs3ChzVL3bUpgTHLnvZ.docx', 'docx', '2024-03-08 01:14:23', '2024-03-08 01:14:23'),
(35, 125, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/r8eTtikRMw1UD7ivaOyPR0w9WC1RpvyCnTf1zoes.docx', 'docx', '2024-03-08 01:16:04', '2024-03-08 01:16:04'),
(36, 126, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/xzoVygwuCxQHZpRkNjEmSbkNO69t0s5FY0uS2p2V.docx', 'docx', '2024-03-08 01:20:54', '2024-03-08 01:20:54'),
(38, 128, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/VJ43EOW9ZVBoSCDcq43tNlNjNiOrGQ7ug6c71wfl.docx', 'docx', '2024-03-08 01:23:06', '2024-03-08 01:23:06'),
(39, 129, '11111111111111111111.png', '334877', NULL, '418 X 300', 'clases_files/3M8eYQqn3ZKh50INyAAmmRnkmHFtmLbKKvtyrchC.png', 'png', '2024-03-08 01:23:48', '2024-03-08 01:23:48'),
(40, 130, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/HmqqqT6LLRQc1fuulDReOdbvG2jSZWBO6oVtvgUV.docx', 'docx', '2024-03-08 01:24:55', '2024-03-08 01:24:55'),
(41, 131, '11111111111111111111.png', '334877', NULL, '418 X 300', 'clases_files/aFEr6myqpMwR7Iglx3XQsgtqPDEsrCF4VJhKNXY1.png', 'png', '2024-03-08 01:25:44', '2024-03-08 01:25:44'),
(42, 132, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/NaowRjtcIj6ZrSy435s2nDUzhlMmqbgmPlNiJkDj.docx', 'docx', '2024-03-08 01:26:33', '2024-03-08 01:26:33'),
(43, 133, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/Qb7QSepGamEgRnHw0WRtoCzVSJ6PlQw2XQzfKpA4.docx', 'docx', '2024-03-08 01:27:26', '2024-03-08 01:27:26'),
(44, 134, 'Recursos.docx', '13504', NULL, NULL, 'clases_files/5zCHCeELLu47XCb7rMylt22X8M5YpjqQg27UdMc1.docx', 'docx', '2024-03-08 01:33:09', '2024-03-08 01:33:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_sections`
--

CREATE TABLE `course_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `course_sections`
--

INSERT INTO `course_sections` (`id`, `course_id`, `name`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Unidad 1', 1, '2024-01-27 07:24:37', '2024-03-08 06:28:18', NULL),
(2, 3, 'sesion1', 1, '2024-01-27 07:27:38', '2024-01-27 07:27:38', NULL),
(3, 3, 'sesion2', 1, '2024-01-27 07:27:43', '2024-01-27 07:27:43', NULL),
(4, 3, 'sesion3', 1, '2024-01-27 07:27:43', '2024-02-22 06:46:07', NULL),
(5, 2, 'Unidad 2', 1, '2024-01-27 07:28:08', '2024-03-08 06:28:26', NULL),
(6, 25, 'seccion8', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(7, 10, 'seccion15', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(8, 32, 'seccion8', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(9, 25, 'seccion21', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(10, 35, 'seccion25', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(11, 11, 'seccion78', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(12, 34, 'seccion52', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(13, 23, 'seccion75', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(14, 27, 'seccion59', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(15, 23, 'seccion41', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(16, 5, 'seccion45', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(17, 29, 'seccion77', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(18, 13, 'seccion49', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(19, 13, 'seccion31', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(20, 16, 'seccion38', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(21, 19, 'seccion48', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(22, 29, 'seccion71', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(23, 2, 'Unidad 3', 1, '2024-02-22 00:44:21', '2024-03-08 06:28:33', NULL),
(25, 24, 'seccion21', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(26, 35, 'seccion35', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(27, 26, 'seccion64', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(28, 35, 'seccion6', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(29, 10, 'seccion23', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(30, 10, 'seccion74', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(37, 8, 'seccion70', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(38, 30, 'seccion18', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(39, 12, 'seccion9', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(40, 16, 'seccion99', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(41, 20, 'seccion90', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(42, 27, 'seccion16', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(43, 18, 'seccion98', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(44, 15, 'seccion13', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(45, 14, 'seccion57', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(46, 23, 'seccion59', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(47, 34, 'seccion98', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(48, 2, 'Unidad 4', 1, '2024-02-22 00:44:56', '2024-03-08 06:28:43', NULL),
(49, 17, 'seccion44', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(50, 25, 'seccion27', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(51, 7, 'seccion9', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(52, 32, 'seccion29', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(53, 25, 'seccion59', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(54, 31, 'seccion57', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(55, 8, 'seccion45', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(56, 20, 'seccion40', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(57, 12, 'seccion48', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(58, 14, 'seccion52', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(59, 14, 'seccion44', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(60, 35, 'seccion69', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(61, 15, 'seccion6', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
(68, 28, 'Seccion 1, instala Debian', 1, '2024-02-22 07:58:19', '2024-02-22 07:58:19', NULL),
(69, 28, 'Seccion 2, como usar la terminal', 1, '2024-02-22 07:58:38', '2024-02-22 07:58:38', NULL),
(70, 40, 'Unidad 1', 1, '2024-03-08 05:55:05', '2024-03-08 05:55:05', NULL),
(71, 40, 'Unidad 2', 1, '2024-03-08 05:55:11', '2024-03-08 05:55:11', NULL),
(72, 40, 'Unidad 3', 1, '2024-03-08 05:55:16', '2024-03-08 05:55:16', NULL),
(73, 40, 'Unidad 4', 1, '2024-03-08 05:55:32', '2024-03-08 05:55:32', NULL),
(74, 40, 'Unidad 5', 1, '2024-03-08 05:55:39', '2024-03-08 06:09:45', '2024-03-08 06:09:45'),
(75, 39, 'Unidad de aprendizaje 1', 1, '2024-03-08 06:10:14', '2024-03-08 06:10:14', NULL),
(76, 39, 'Unidad de aprendizaje 2', 1, '2024-03-08 06:10:18', '2024-03-08 06:10:18', NULL),
(77, 39, 'Unidad de aprendizaje 3', 1, '2024-03-08 06:10:23', '2024-03-08 06:16:27', '2024-03-08 06:16:27'),
(78, 38, 'Unidad 1: Fundamentos de Laravel', 1, '2024-03-08 06:18:44', '2024-03-08 06:18:44', NULL),
(79, 38, 'Unidad 2: Rutas y controladores', 1, '2024-03-08 06:19:11', '2024-03-08 06:19:11', NULL),
(80, 38, 'Unidad 3: Modelos y Eloquent', 1, '2024-03-08 06:19:31', '2024-03-08 06:19:31', NULL),
(81, 38, 'Unidad 4: Vistas y Blade', 1, '2024-03-08 06:19:35', '2024-03-08 06:19:35', NULL),
(82, 38, 'Unidad 5: Autenticación y autorización', 1, '2024-03-08 06:19:46', '2024-03-08 06:19:46', NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2024_01_17_225801_categories', 2);

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
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sale_detail_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1 es una estrella...',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reviews`
--

INSERT INTO `reviews` (`id`, `course_id`, `user_id`, `sale_detail_id`, `message`, `rating`, `created_at`, `updated_at`) VALUES
(1, 14, 11, 43, 'Buen curso', 2, '2024-02-24 18:09:32', '2024-02-24 18:31:56'),
(2, 24, 11, 41, 'No me agradó tanto no comprendí el concepto principal', 2, '2024-02-24 18:09:51', '2024-02-24 18:09:51'),
(5, 2, 11, 32, 'Buen curso!!', 2, '2024-02-24 18:14:08', '2024-02-24 18:30:19'),
(7, 10, 11, 40, ':(', 1, '2024-02-24 18:16:34', '2024-02-24 18:16:34'),
(8, 3, 11, 33, 'buen curso', 3, '2024-02-24 18:19:42', '2024-02-24 18:19:42'),
(9, 14, 58, 47, 'Excelente curso compañero', 5, '2024-03-08 01:55:16', '2024-03-08 01:55:16'),
(10, 40, 58, 57, 'Gracias ya estaba teniendo problemas en esta materia', 4, '2024-03-08 02:00:29', '2024-03-08 02:00:29'),
(11, 19, 58, 56, '¿Cómo se puede utilizar la regla de la cadena para calcular la derivada de una función compuesta?', 3, '2024-03-08 02:01:17', '2024-03-08 02:01:17'),
(12, 38, 58, 55, 'Compañero una pregunta, ¿Cómo se define una relación uno a muchos en Laravel Eloquent?', 5, '2024-03-08 02:01:56', '2024-03-08 02:01:56'),
(13, 25, 58, 54, '¡Graffana es lo máximo! no la conocía\n\nEs una herramienta increíble para visualizar datos de una manera atractiva e informativa. Con Grafana, puedes crear dashboards personalizados que te permiten monitorizar tu infraestructura, aplicaciones y mucho más.', 3, '2024-03-08 02:02:35', '2024-03-08 02:02:35'),
(14, 38, 58, 50, 'Laravel es muy útil!!', 5, '2024-03-08 02:03:15', '2024-03-08 02:03:15'),
(15, 38, 16, 59, 'Yo te explico compañero, Las relaciones uno a muchos son un tipo de relación entre dos modelos en Laravel Eloquent, donde un registro en un modelo puede tener muchos registros relacionados en otro modelo.\n\nEjemplo:\n\nSupongamos que tenemos dos modelos: Usuario y Publicación. Un usuario puede tener muchas publicaciones, pero una publicación solo puede tener un usuario.', 5, '2024-03-08 02:06:10', '2024-03-08 02:06:10'),
(16, 28, 16, 58, 'Muy útil el curso justo estoy llevando la materia de servidores!!', 4, '2024-03-08 02:06:29', '2024-03-08 02:06:29'),
(17, 37, 16, 68, 'Excelente!!', 5, '2024-03-08 02:08:29', '2024-03-08 02:08:29'),
(18, 18, 16, 67, 'Orange se ve en la materia de minería de datos?', 4, '2024-03-08 02:08:51', '2024-03-08 02:08:51'),
(19, 26, 16, 65, 'Vaya no conocía esta herramienta gracias!!', 5, '2024-03-08 02:09:08', '2024-03-08 02:09:08'),
(20, 21, 16, 64, 'Genial muy buena explicación', 5, '2024-03-08 02:09:38', '2024-03-08 02:09:38'),
(21, 20, 16, 63, 'Es una buena alternativa de gestor pero me quedo con MYSQL', 5, '2024-03-08 02:10:09', '2024-03-08 02:10:09'),
(22, 23, 16, 62, 'No creí que fuera tan sencillo', 4, '2024-03-08 02:10:23', '2024-03-08 02:10:23'),
(23, 28, 16, 60, 'Excelente', 4, '2024-03-08 02:10:34', '2024-03-08 02:10:34'),
(24, 39, 16, 69, 'Es bastante interesante todo lo que hacen los sistemas operativos, tengo una pregunta alguien sabe, ¿Cuáles son las principales diferencias entre Windows y Linux como sistemas operativos para servidores? no se por cual decidirme', 5, '2024-03-08 02:13:57', '2024-03-08 02:13:57'),
(25, 15, 69, 78, 'No comprendi del todo IoT', 3, '2024-03-08 02:17:47', '2024-03-08 02:17:47'),
(26, 16, 69, 77, 'Esto viene en redes? alguien de compu aqui?', 4, '2024-03-08 02:18:01', '2024-03-08 02:18:01'),
(27, 30, 69, 75, 'Bastante buena la explicación', 4, '2024-03-08 02:18:18', '2024-03-08 02:18:18'),
(28, 37, 69, 74, 'Wooow!! no sabía de la máquina de Turing', 5, '2024-03-08 02:18:44', '2024-03-08 02:18:44'),
(29, 39, 69, 73, 'En mi opinión, si buscas una solución robusta, segura y flexible, Linux Server es una excelente opción. Sin embargo, si necesitas un sistema operativo familiar con una amplia gama de software y soporte técnico oficial, Windows Server podría ser una mejor alternativa', 5, '2024-03-08 02:19:47', '2024-03-08 02:19:47'),
(30, 40, 69, 72, 'me encanto modelar en Blender', 5, '2024-03-08 02:20:03', '2024-03-08 02:20:03'),
(31, 28, 69, 71, 'genial!!', 5, '2024-03-08 02:20:21', '2024-03-08 02:20:21'),
(32, 11, 69, 70, 'Esta bastante completo!!', 5, '2024-03-08 02:20:36', '2024-03-08 02:20:36'),
(33, 36, 69, 80, 'Buena explicación', 5, '2024-03-08 02:23:49', '2024-03-08 02:23:49'),
(34, 5, 69, 79, 'No me gustan las matemáticas :(', 2, '2024-03-08 02:24:07', '2024-03-08 02:24:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ESTUDIANTE', NULL, NULL),
(2, 'ADMINISTRADOR', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `method_payment` varchar(50) DEFAULT NULL,
  `currency_total` varchar(10) DEFAULT NULL,
  `currency_payment` varchar(10) DEFAULT NULL,
  `total` double NOT NULL DEFAULT 0,
  `price_dolar` double DEFAULT NULL,
  `n_transaccion` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `method_payment`, `currency_total`, `currency_payment`, `total`, `price_dolar`, `n_transaccion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(22, 11, NULL, NULL, NULL, 0, NULL, '1', '2024-02-10 02:19:03', '2024-02-10 02:19:03', NULL),
(23, 11, NULL, NULL, NULL, 0, NULL, '1', '2024-02-10 02:27:19', '2024-02-10 02:27:19', NULL),
(24, 17, NULL, NULL, NULL, 0, NULL, '1', '2024-02-10 02:56:40', '2024-02-10 02:56:40', NULL),
(25, 17, NULL, NULL, NULL, 0, NULL, '1', '2024-02-10 02:58:01', '2024-02-10 02:58:01', NULL),
(26, 17, NULL, NULL, NULL, 0, NULL, '1', '2024-02-10 03:00:03', '2024-02-10 03:00:03', NULL),
(27, 11, NULL, NULL, NULL, 0, NULL, '1', '2024-02-23 02:34:00', '2024-02-23 02:34:00', NULL),
(28, 11, NULL, NULL, NULL, 0, NULL, '1', '2024-02-23 02:36:53', '2024-02-23 02:36:53', NULL),
(29, 11, NULL, NULL, NULL, 0, NULL, '2', '2024-02-23 02:36:56', '2024-02-23 02:36:56', NULL),
(30, 61, NULL, NULL, NULL, 0, NULL, '1', '2024-02-23 23:22:27', '2024-02-23 23:22:27', NULL),
(31, 61, NULL, NULL, NULL, 0, NULL, '2', '2024-02-23 23:22:30', '2024-02-23 23:22:30', NULL),
(32, 58, NULL, NULL, NULL, 0, NULL, '1', '2024-03-01 05:01:10', '2024-03-01 05:01:10', NULL),
(33, 58, NULL, NULL, NULL, 0, NULL, '2', '2024-03-01 05:01:15', '2024-03-01 05:01:15', NULL),
(34, 58, NULL, NULL, NULL, 0, NULL, '1', '2024-03-08 01:56:21', '2024-03-08 01:56:21', NULL),
(35, 58, NULL, NULL, NULL, 0, NULL, '2', '2024-03-08 01:56:26', '2024-03-08 01:56:26', NULL),
(36, 16, NULL, NULL, NULL, 0, NULL, '1', '2024-03-08 02:05:15', '2024-03-08 02:05:15', NULL),
(37, 16, NULL, NULL, NULL, 0, NULL, '1', '2024-03-08 02:08:02', '2024-03-08 02:08:02', NULL),
(38, 16, NULL, NULL, NULL, 0, NULL, '1', '2024-03-08 02:12:44', '2024-03-08 02:12:44', NULL),
(39, 69, NULL, NULL, NULL, 0, NULL, '1', '2024-03-08 02:17:11', '2024-03-08 02:17:11', NULL),
(40, 69, NULL, NULL, NULL, 0, NULL, '1', '2024-03-08 02:23:26', '2024-03-08 02:23:26', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `type_discount` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '1 es porcentaje y 2 es moneda',
  `discount` double DEFAULT NULL,
  `type_campaing` tinyint(1) DEFAULT NULL,
  `code_cupon` varchar(50) DEFAULT NULL,
  `code_discount` varchar(50) DEFAULT NULL,
  `precio_unitario` double DEFAULT NULL,
  `total` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sale_details`
--

INSERT INTO `sale_details` (`id`, `sale_id`, `course_id`, `type_discount`, `discount`, `type_campaing`, `code_cupon`, `code_discount`, `precio_unitario`, `total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(32, 22, 2, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 02:19:03', '2024-02-10 02:19:03', NULL),
(33, 22, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 02:19:03', '2024-02-10 02:19:03', NULL),
(35, 24, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 02:56:40', '2024-02-10 02:56:40', NULL),
(36, 25, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 02:58:01', '2024-02-10 02:58:01', NULL),
(37, 26, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 03:00:03', '2024-02-10 03:00:03', NULL),
(38, 26, 2, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 03:00:03', '2024-02-10 03:00:03', NULL),
(40, 27, 10, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-23 02:34:00', '2024-02-23 02:34:00', NULL),
(41, 27, 24, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-23 02:34:00', '2024-02-23 02:34:00', NULL),
(43, 29, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-23 02:36:56', '2024-02-23 02:36:56', NULL),
(44, 30, 25, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-23 23:22:27', '2024-02-23 23:22:27', NULL),
(45, 31, 25, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-23 23:22:30', '2024-02-23 23:22:30', NULL),
(46, 32, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-01 05:01:10', '2024-03-01 05:01:10', NULL),
(47, 33, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-01 05:01:15', '2024-03-01 05:01:15', NULL),
(48, 34, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 01:56:21', '2024-03-08 01:56:21', NULL),
(49, 34, 25, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 01:56:21', '2024-03-08 01:56:21', NULL),
(50, 34, 38, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 01:56:21', '2024-03-08 01:56:21', NULL),
(51, 34, 19, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 01:56:21', '2024-03-08 01:56:21', NULL),
(52, 34, 40, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 01:56:21', '2024-03-08 01:56:21', NULL),
(53, 35, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 01:56:26', '2024-03-08 01:56:26', NULL),
(54, 35, 25, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 01:56:26', '2024-03-08 01:56:26', NULL),
(55, 35, 38, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 01:56:26', '2024-03-08 01:56:26', NULL),
(56, 35, 19, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 01:56:26', '2024-03-08 01:56:26', NULL),
(57, 35, 40, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 01:56:26', '2024-03-08 01:56:26', NULL),
(58, 36, 28, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:05:16', '2024-03-08 02:05:16', NULL),
(59, 36, 38, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:05:16', '2024-03-08 02:05:16', NULL),
(60, 37, 28, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:08:02', '2024-03-08 02:08:02', NULL),
(61, 37, 38, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:08:02', '2024-03-08 02:08:02', NULL),
(62, 37, 23, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:08:02', '2024-03-08 02:08:02', NULL),
(63, 37, 20, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:08:02', '2024-03-08 02:08:02', NULL),
(64, 37, 21, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:08:02', '2024-03-08 02:08:02', NULL),
(65, 37, 26, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:08:02', '2024-03-08 02:08:02', NULL),
(66, 37, 22, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:08:02', '2024-03-08 02:08:02', NULL),
(67, 37, 18, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:08:02', '2024-03-08 02:08:02', NULL),
(68, 37, 37, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:08:02', '2024-03-08 02:08:02', NULL),
(69, 38, 39, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:12:44', '2024-03-08 02:12:44', NULL),
(70, 39, 11, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:17:11', '2024-03-08 02:17:11', NULL),
(71, 39, 28, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:17:11', '2024-03-08 02:17:11', NULL),
(72, 39, 40, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:17:11', '2024-03-08 02:17:11', NULL),
(73, 39, 39, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:17:11', '2024-03-08 02:17:11', NULL),
(74, 39, 37, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:17:11', '2024-03-08 02:17:11', NULL),
(75, 39, 30, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:17:11', '2024-03-08 02:17:11', NULL),
(76, 39, 31, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:17:11', '2024-03-08 02:17:11', NULL),
(77, 39, 16, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:17:11', '2024-03-08 02:17:11', NULL),
(78, 39, 15, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:17:11', '2024-03-08 02:17:11', NULL),
(79, 40, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:23:26', '2024-03-08 02:23:26', NULL),
(80, 40, 36, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-08 02:23:26', '2024-03-08 02:23:26', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(250) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_instructor` tinyint(1) DEFAULT 1 COMMENT 'si es nulo no es instructor y si es 1, es instructor',
  `profesion` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `type_user` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es cliente, 2 administrador',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `avatar`, `phone`, `role_id`, `email_verified_at`, `password`, `is_instructor`, `profesion`, `description`, `state`, `type_user`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Paulina Michelle', NULL, 'echodevelopers12@gmail.com', NULL, NULL, 1, NULL, '$2y$10$rw2.tc8V4Vrkc7QcTSnTRe.ST1/Hk0JWaSjSGMMPGTpa42eEXZF7a', 1, NULL, NULL, 1, 1, NULL, '2024-01-12 01:29:02', '2024-01-12 01:29:02', NULL),
(5, 'jose', NULL, 'echodevelopers10@gmail.com', NULL, NULL, 1, NULL, '$2y$10$TNhBKfufoiMRs/RpdgL0Fud436MbEgc/1S7JkWph5C4R2AtO2nHE6', 1, NULL, NULL, 1, 1, NULL, '2024-01-12 01:34:47', '2024-01-12 01:34:47', NULL),
(11, 'Paulina Michelle', 'Figueroa Noriega', 'wswwqs@gmail.com', 'users/bBzI2pVU1zWO4duD5J783f8Zlrvexp9sBtJZ6HOg.jpg', '3332233213', 1, NULL, '$2y$10$Zhe40EWaziRiuqAi5jwI9O6p81C0uJLBfAHz///pczDHqlSpe6yG.', 1, 'Ingeniería Informatica', 'null', 1, 2, NULL, '2024-01-16 09:18:33', '2024-03-05 04:18:46', NULL),
(13, 'Jorge', 'Beard', 'hukf@ef.com', 'users/NdSqjjcOAc2CS1rfkuDBCw8HpuADbxO0i7p2kmf4.webp', NULL, 1, NULL, '$2y$10$3zDosGmXYPTUMDtKCA4CbOjC65wCbOQfKujUjjf7MqkFaEnfy1R/q', 1, 'estudiante', 'efwwf', 1, 2, NULL, '2024-01-17 00:59:37', '2024-02-20 10:48:45', NULL),
(15, 'Jared', NULL, 'jared.monje5944@alumnos.udg.mx', NULL, NULL, 1, NULL, '$2y$10$B/OltUeFOs6TrUGEMyScb.WOaIacYyb8VejjliJg6FtaIaVDR79FG', 1, NULL, NULL, 1, 1, NULL, '2024-02-08 07:28:15', '2024-02-08 07:28:15', NULL),
(16, 'Federico', 'Fernandez', 'fede@gmail.com', 'users/B9bqV6MI0ywZFLzccIuAOImr9YRYN2Eej3GIQ9yK.jpg', '78656475870', 1, NULL, '$2y$10$QSH9SnzgEAzAX0Hgkd.HeeyoEbclGwQEV8SQGRbr4vgXFcqsZ.Nwe', 1, 'Ingeniería informática', '¡Hola! Soy Fede, un estudiante de 20 años en la carrera de Ingeniería Informática del CUCEI. La programación es mi pasión, especialmente en Python, Java y C++. He desarrollado varios proyectos para cursar la carrera, incluyendo un chatbot y hasta un videojuego. ¡Siempre estoy buscando nuevos desafíos para poner a prueba mis habilidades!', 1, 2, NULL, '2024-02-10 07:44:12', '2024-03-08 07:11:52', NULL),
(17, 'Oscar Leonardo', 'Cárdenas Ulloa', 'leo@test.com', 'users/152PGMInCW6nVXFyln6NCe09EvfbVJEp0L5S3ZLB.png', NULL, 1, '2024-02-20 03:20:24', '$2y$10$rw2.tc8V4Vrkc7QcTSnTRe.ST1/Hk0JWaSjSGMMPGTpa42eEXZF7a', 1, 'Estudiante', 'null', 1, 2, NULL, '2024-02-10 07:55:44', '2024-02-20 09:33:32', NULL),
(57, 'Antonio', 'Ezpinoa', 'Jorge@test.com', 'users/kVGkex45De1r9y5Iy7Lhgef8U2nCMFVqAmpPHWVd.jpg', NULL, 1, NULL, '$2y$10$l9HGiVYign8yH1BzqGtI.e/qqn5oCPJ6O3csZ4Ew7e02d9xCJv3mO', 1, NULL, NULL, 1, 2, NULL, '2024-02-20 10:31:52', '2024-02-20 10:31:52', NULL),
(58, 'Cesar', 'Estrada', 'Julion@test.com', 'users/HWk9il2cSMtSurIFGpCXRab9cNAsyFO8YcfRnY9I.jpg', '23456345235', 2, NULL, '$2y$10$DsIC1l4m5UPcTDdr58CFUeGgaC.W4wpEHwUoFFuAjiLwIHwl/KOqa', 1, 'Ingeniería en Computación', 'Hey, ¡qué tal! Soy Juan García, tengo 21 años y estoy en quinto semestre de Ingeniería en Computación en el CUCEI. Soy tapatío de pura cepa, o sea, de Guadalajara, Jalisco. La onda de la computación me trae loco desde siempre. Me encanta programar, pero también le doy duro a los videojuegos y devoro libros de ciencia ficción (¡imagínate robots inteligentes!).\r\n\r\nNo me quedo quieto, siempre estoy buscando nuevos retos. Por ejemplo, gané el primer lugar en el Hackathon CUCEI 2023 con un proyecto de inteligencia artificial para detectar enfermedades. ¡Una pasada! Además, conseguí una beca para irme de intercambio a la Universidad de California, Berkeley, y soy parte activa del IEEE Student Chapter CUCEI.', 1, 2, NULL, '2024-02-20 10:33:28', '2024-03-08 06:59:47', NULL),
(59, 'Billie', 'Elish', 'billielish@test.com', 'users/SbqpyuSWdIaLXNwrS6ZsVBCClj2wk1CbIB6Kn185.jpg', NULL, 1, NULL, '$2y$10$RF5iikO5ObiJu9d9f6zuQugwk54zDUas6F1KahYURg28gumfyOj.K', 1, NULL, NULL, 1, 2, NULL, '2024-02-20 10:34:15', '2024-02-20 10:34:15', NULL),
(60, 'Yahir', 'Jackson', 'hehe@test.com', 'users/jab1pjFPAi5TuIL7u1aEqhFjUeDjo4dwVHAEIqCU.jpg', NULL, 1, NULL, '$2y$10$z8A5UEuNPv/Zof7t3g/lru/3ep0j4ai3/aYgMVpwZ0d1BAGPp6g0u', 1, NULL, NULL, 1, 2, NULL, '2024-02-20 10:34:59', '2024-02-20 10:34:59', NULL),
(61, 'Shrek', 's', 'Shrek@test.com', 'users/S5vG98BdSYrOgjQZc49P7azgRKI9qeJn3piZgCL4.avif', NULL, 1, NULL, '$2y$10$/Sqo4KlXLA5qxeiQNNlqiulty98EmmMr8D8IP1bR6Rzqtxztp8bS6', 1, NULL, NULL, 1, 2, NULL, '2024-02-20 10:40:14', '2024-02-20 10:40:14', NULL),
(62, 'Calamardo', 'Tentaculos', 'calar@test.com', 'users/v6ej7fOR9yi9rQuIQbk1zJoot6fuE7gXLPhkM13R.jpg', NULL, 1, NULL, '$2y$10$mDyYHA9DQuWmoz92slmX3e4VnmEIZZfeFfNuk1tU2nYd/ncFcypt2', 1, NULL, NULL, 1, 2, NULL, '2024-02-20 10:40:50', '2024-02-20 10:40:50', NULL),
(63, 'Sofia', 'meme', 'meme@test.com', 'users/EMqNMeBUZIUNkmc2BSPKZQdg18PL6eopt1LtvPzH.png', NULL, 1, NULL, '$2y$10$.T.x5vBHNHrdXby5eXcn8uQnd2uERhm8Uwilg0z6VP.clGXYtp97W', 1, NULL, NULL, 1, 2, NULL, '2024-02-20 10:41:23', '2024-02-20 10:41:23', NULL),
(64, 'Vicente', 'Fernandez', 'vicente@test.com', 'users/cXfzkH2khbAosxfXCaVcBiEzI5sfR0LSk7XNqEr0.jpg', NULL, 1, NULL, '$2y$10$s/EWuXLd/0sx5.szPk5TJ.rxbJZNOE09vnXezwrBfVkmmpMct0RPi', 1, NULL, NULL, 1, 2, NULL, '2024-02-20 10:42:00', '2024-02-20 10:42:00', NULL),
(65, 'Alejandro', 'Ketshup', 'ash@test.com', 'users/rb3Nc1wGhbVuqPYzHjr2Mek5Z8KvKsy9SqtcgYDW.jpg', NULL, 1, NULL, '$2y$10$LEToG3WP2Vm8NCf55ldR9uyj8FyhVsIqCP.jIWOmmIyKCCOiEMCSK', 1, NULL, NULL, 1, 2, NULL, '2024-02-20 10:42:33', '2024-02-20 10:42:33', NULL),
(66, 'Fernand', 'Floo', 'floo@test.com', 'users/WlOk7lsc8uDJSwi5u2iPHlQr95dcpmOLovXiZdjY.webp', NULL, 1, NULL, '$2y$10$BHH4Ei/m0HMuqDvpn8uKpuFbfgpp1zhqWs4GqU1Ijc0rAC1ySKgG.', 1, NULL, NULL, 1, 2, NULL, '2024-03-08 10:43:05', '2024-02-20 10:43:05', NULL),
(67, 'Hola', 'SoyGerman', 'GermanGar@test.com', 'users/YGTppQPO007qlqtbiEuMRKI2O5lCvHYDKs1ntyRA.jpg', NULL, 1, NULL, '$2y$10$4Cw3anRl6/jmK7CwOv9zuenlMHgbrMPkKfReD97XrvyaXC/PgFnEy', 1, NULL, NULL, 1, 2, NULL, '2024-02-20 10:43:36', '2024-02-20 10:43:36', NULL),
(68, 'Freedie', 'Kruger', 'kruger@test.com', 'users/mwCvQ2GdBlFOnM8hhF1Qxp7uGpnAE50sqO1UNEwj.webp', NULL, 1, NULL, '$2y$10$7kC96AP4/XjknfLZGzqQnO93TNgzsxIJ2J/bojXIiSEUrr6JEqjY6', 1, NULL, NULL, 1, 2, NULL, '2024-03-13 10:44:13', '2024-02-20 10:44:13', NULL),
(69, 'Bruno', 'Wayne', 'batman@test.com', 'users/O6e8XTJ1dz7ZMO4D8nW0JcWCqMx39f84DobZI8kT.jpg', '78656475870', 1, NULL, '$2y$10$kC/PjBRN60ht96chgIlb9uDSF7D7IpCReKWzzrW0I92Wl2knhOtia', 1, 'Ingeniería informática', 'Hola!', 1, 2, NULL, '2024-03-07 10:45:20', '2024-03-08 07:17:00', NULL),
(70, 'Teemo', 'Scout', 'demonio@test.com', 'users/LujfTGNlXGfdQ93mo8DfWoUMDlvg5ddE1A3nfdhJ.webp', NULL, 1, NULL, '$2y$10$Vyxrk57gf5LXmWcK.cBtu.2ufivtciahLr0P9FzQPkES3893eZsYC', 1, NULL, NULL, 1, 2, NULL, '2024-03-02 10:45:52', '2024-02-20 10:45:52', NULL),
(71, 'Lady', 'Gaga', 'gaga@test.com', 'users/saAlml7uqUlPhSivm9wSxP6wAvud4Su1mmMeslKk.webp', NULL, 1, NULL, '$2y$10$8uMzPufe51cUdIe/ARg0heTincin/aEqU5WOgzuSvVip7SH6Z1moK', 1, NULL, NULL, 1, 2, NULL, '2024-03-02 10:46:27', '2024-02-20 10:46:27', NULL),
(72, 'Kayne', 'West', 'kayne@test.com', 'users/vEf2klCCESJFRj8eYg8S7R2MnU2L6W5Po6QESnHr.png', NULL, 1, NULL, '$2y$10$C5mvfszyKEk.6viNwhd.h.A3GeQMYayQqfGhH98sd.OA7wjmAO/zW', 1, NULL, NULL, 1, 2, NULL, '2024-02-20 10:48:03', '2024-02-20 10:48:03', NULL),
(73, 'BRuce', 'Lee', 'bruce@test.com', 'users/NTveVDHt22ak69xRsm0ihJLb2Z8zND5ftcvKpD3A.jpg', NULL, 1, NULL, '$2y$10$mZK3TspOaWYEeB31VvxP7.bD9skvjUzBRxy0KVvVNCBn2GrfZk9Da', 1, NULL, NULL, 1, 2, NULL, '2024-03-07 10:49:23', '2024-02-20 10:49:23', NULL),
(74, 'Yakie', 'Chan', 'chan@test.com', 'users/Nfu3fQEFsP6dBWQa0W5dEqAXMjyerDiC9oKETpAU.webp', NULL, 1, NULL, '$2y$10$YMg0lt554ZV.0MrTlnWjHuwd8khF70sqE7uJf6cYu7M4eqcf1YMM6', 1, NULL, NULL, 1, 2, NULL, '2024-03-07 10:49:55', '2024-02-20 10:49:55', NULL),
(75, 'Guillermo', 'Del Toro', 'Toro@test.com', 'users/elXyaxGZN3EQfSjGh9gfviYsyG29IYfTK36aa320.jpg', NULL, 1, NULL, '$2y$10$i5x64NztcQkiU8Eb2YiCeuar1QnEG5881or95Y2kbPxhzcF3.6Pz6', 1, NULL, NULL, 1, 2, NULL, '2023-12-07 10:51:10', '2024-02-20 10:51:10', NULL),
(76, 'Pitbull', 'Mr 035', 'pitbull@test.com', 'users/SH55QQiAWeBinIFM1hfzpmphrebFPDj2q7wYmcjH.webp', NULL, 1, NULL, '$2y$10$/KP45PEuSTWz9QQU0cyC7ew1p/YX665LeaBuX4t5S3GlOuBiq8l5S', 1, NULL, NULL, 1, 2, NULL, '2023-12-22 05:57:02', '2024-02-21 05:57:02', NULL),
(77, 'Shakira', 'no llora', 'wakawaka@test.com', 'users/2S8UJWBcyPYXYJcdfSloG206q05fx76hGAZCwvWJ.jpg', NULL, 1, NULL, '$2y$10$JEK8FORYTLmq0vDymZWvjONIRwibem036XRCK.7yjU7Rq2HCdrAL2', 1, NULL, NULL, 1, 2, NULL, '2023-12-15 05:58:20', '2024-02-21 05:58:20', NULL),
(78, 'Miguel', 'Bosé', 'miguebose@test.com', 'users/vmdE4eee2nNGTiS24TXphovObNs66WQN79Zshzxs.jpg', NULL, 1, NULL, '$2y$10$Cp02aI.qE04ue2HRYUNqcuDtUGqAut/cX7/H54XfA/zZ.ZtzePv06', 1, NULL, NULL, 1, 2, NULL, '2024-01-10 05:59:16', '2024-02-21 05:59:16', NULL),
(79, 'Eugenioq', 'Derbex', 'derbex@test.com', 'users/9uEPlqj8GLQPJCRPuqSH9CVHMtGkNSdXOXquD9T7.jpg', NULL, 1, NULL, '$2y$10$arBo64lqxJs2qQu.ynGHCO6SbR6wU2ScLBxN13D8E/90oQ9Mpb5Vy', 1, NULL, NULL, 1, 2, NULL, '2024-01-05 06:02:49', '2024-02-21 06:02:49', NULL),
(80, 'Brittney', 'Spears', 'britt@test.com', 'users/CIDJ4eSoHFz8gVFfF2qoggQvcZzJ2pyvdteT4WGS.jpg', NULL, 1, NULL, '$2y$10$2P9v/aeXQBJqfhNYk4UfNOxu3p2/bqT70wEUTFObtDUWvvLMavt8m', 1, NULL, NULL, 1, 2, NULL, '2024-01-11 06:04:21', '2024-02-21 06:04:21', NULL),
(81, 'Rafael', 'Foo', 'redfoo@test.com', 'users/He3aPg17oRsBLZugAHk3PR20Ttyo5n22SkbgwMIb.jpg', NULL, 1, NULL, '$2y$10$lMKm78LnQrz3xDGsxbUZeucILq9fdRRkR5hCRA4NlHwlVfxOkf/su', 1, NULL, NULL, 1, 2, NULL, '2024-01-04 06:06:28', '2024-02-21 06:06:28', NULL),
(82, 'Lana', 'Del Rey', 'LanaRey@test.com', 'users/ogm37qpl9JhZfqpPkxSI12OUnOn7g8NyybL8FsgG.webp', NULL, 1, NULL, '$2y$10$0NFoU1QakJooVQRlYx0rieK8RZ0mTYeGkTQGJBC3GMfYQxGbdcomO', 1, NULL, NULL, 1, 2, NULL, '2024-01-25 06:11:17', '2024-02-21 06:11:17', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses_students`
--
ALTER TABLE `courses_students`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `course_clases`
--
ALTER TABLE `course_clases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `course_clase_files`
--
ALTER TABLE `course_clase_files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `course_sections`
--
ALTER TABLE `course_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `courses_students`
--
ALTER TABLE `courses_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de la tabla `course_clases`
--
ALTER TABLE `course_clases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT de la tabla `course_clase_files`
--
ALTER TABLE `course_clase_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `course_sections`
--
ALTER TABLE `course_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
