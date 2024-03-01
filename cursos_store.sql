-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2024 a las 16:12:06
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
(12, 4, 11, '2024-02-10 02:27:02', '2024-02-10 02:27:02'),
(13, 5, 17, '2024-02-10 02:56:10', '2024-02-10 02:56:10'),
(14, 2, 17, '2024-02-10 02:59:56', '2024-02-10 02:59:56'),
(15, 4, 17, '2024-02-10 02:59:57', '2024-02-10 02:59:57');

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
(38, 'Almacenes de datos', NULL, 5, 1, '2024-02-21 02:39:01', '2024-02-21 02:39:01', NULL);

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
(1, 'programacion facilñ', 'programacion-faciln', 'DEUHEFWKML', 'courses/Z09Do5SC8zu7WrtTR3NoZvWEokuwfmLaOWiLsJig.jpg', 60, 1, 2, '2', 'Español', NULL, NULL, '<p>Hello, worldrgdg</p>', '[\"\"]', '[\"\"]', 1, '2024-01-27 01:53:28', '2024-01-27 02:01:15', '2024-01-27 02:01:15'),
(2, 'bases de datos', 'bases-de-datos', 'lo basico', 'courses/52LMann0u35UvJFJ80K3R35EUWNnPBnKYnr6n6wi.jpg', 60, 1, 2, '4', 'Español', NULL, NULL, '<p>Hello, world! dfefe</p>', '[\"python\"]', '[\"informatica\"]', 2, '2024-01-27 01:54:39', '2024-02-05 21:05:06', NULL),
(3, 'programacion facil', 'programacion-facil', 'aprende desde cero', 'courses/dgwBIeOE4XbtIujghOdDSD8DTyJDpSVsMTi7YFIh.jpg', 70, 5, 2, '2', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"python\"]', '[\"rdgr\"]', 2, '2024-01-27 02:01:42', '2024-02-10 04:14:37', NULL),
(4, 'Seminario de Solución de problemas de programación', 'seminario-de-solucion-de-problemas-de-programacion', 'Bases de programación', 'courses/dgwBIeOE4XbtIujghOdDSD8DTyJDpSVsMTi7YFIh.jpg', 65, 1, 2, '1', 'Español', NULL, NULL, '<p>El Seminario de Soluci&oacute;n de Problemas de Programaci&oacute;n es un curso dise&ntilde;ado para proporcionar a los estudiantes las habilidades y metodolog&iacute;as necesarias para abordar y resolver problemas de programaci&oacute;n de manera efectiva. En este curso, los participantes explorar&aacute;n diversos enfoques y t&eacute;cnicas que les permitir&aacute;n enfrentarse a desaf&iacute;os computacionales de manera sistem&aacute;tica y eficiente.</p>\r\n\r\n<p>Durante el seminario, los estudiantes se sumergir&aacute;n en la resoluci&oacute;n de problemas pr&aacute;cticos, aplicando conceptos fundamentales de programaci&oacute;n y algoritmos. Se enfocar&aacute;n en el desarrollo de habilidades esenciales, como la capacidad de analizar problemas, dise&ntilde;ar algoritmos eficientes y traducir esos algoritmos en c&oacute;digo ejecutable.</p>\r\n\r\n<p>Los temas del seminario pueden incluir estrategias de resoluci&oacute;n de problemas, estructuras de datos avanzadas, algoritmos eficientes y optimizaci&oacute;n de c&oacute;digo. Adem&aacute;s, se explorar&aacute;n herramientas y recursos que faciliten la resoluci&oacute;n de problemas de programaci&oacute;n, as&iacute; como la colaboraci&oacute;n en equipos de desarrollo.</p>\r\n\r\n<p>A lo largo del curso, los estudiantes no solo mejorar&aacute;n sus habilidades t&eacute;cnicas, sino que tambi&eacute;n fortalecer&aacute;n su capacidad para comunicar soluciones de manera clara y efectiva. Se fomentar&aacute; el pensamiento cr&iacute;tico y la creatividad en la b&uacute;squeda de soluciones innovadoras para desaf&iacute;os computacionales.</p>\r\n\r\n<p>Este seminario proporciona una base s&oacute;lida para aquellos que buscan destacarse en competiciones de programaci&oacute;n, entrevistas t&eacute;cnicas o, simplemente, mejorar sus habilidades en la resoluci&oacute;n de problemas de programaci&oacute;n. Al finalizar, los participantes estar&aacute;n mejor equipados para enfrentar problemas complejos en el &aacute;mbito de la inform&aacute;tica y la programaci&oacute;n.</p>', '[\"ninguno\"]', '[\"estudiantes informatica\"]', 1, '2024-02-05 21:04:42', '2024-02-10 04:06:45', NULL),
(5, 'Métodos matemáticos 1', 'metodos-matematicos-1', 'Calculo,Analisis matematicos,ecuaciones de primer y segundo grado', 'photo1.jpg', 70, 6, 2, '1', 'Español', NULL, NULL, 'Descripcion elaborada', '[\"JAVASCRIPT BASICO\",\"HTML BASICO\",\"CSS BASICO\"]', '[\"DESARROLADORES\",\"PROGRAMADORES\",\"INGENIERO DE SOFTWARE\"]', 2, NULL, '2024-02-14 05:00:50', NULL),
(6, 'Programación en C#', 'programacion-en-c', 'Lo basico y más', 'courses/SbyyTWripcu0Pke2Xid1l3XcQIaimcAM5T8UdN3w.webp', 72, 16, 18, '1', 'Español', NULL, NULL, '<p><strong>&iquest;Por qu&eacute; C#?</strong><br />\r\nC# es un lenguaje de programaci&oacute;n moderno, orientado a objetos y f&aacute;cil de aprender. Desarrollado por Microsoft, C# es ampliamente utilizado para crear aplicaciones de escritorio, aplicaciones web, juegos, servicios en la nube y mucho m&aacute;s. Su sintaxis clara y su capacidad para trabajar con la plataforma .NET hacen que sea una opci&oacute;n ideal para desarrolladores de todos los niveles.</p>\r\n\r\n<p><strong>&iquest;Qu&eacute; aprender&aacute;s?</strong><br />\r\nDurante este curso, exploraremos los conceptos b&aacute;sicos de C# y te proporcionaremos las habilidades necesarias para comenzar a construir tus propias aplicaciones. Cubriremos temas como variables, tipos de datos, estructuras de control, funciones, manejo de excepciones y m&aacute;s. Adem&aacute;s, te sumergir&aacute;s en la programaci&oacute;n orientada a objetos, un paradigma fundamental en el desarrollo de software moderno.</p>', '[\"No se requiere experiencia previa en programaci\\u00f3n. Solo necesitas una computadora y la determinaci\\u00f3n de aprender.\"]', '[\"estudiantes principiantes\",\"Quienes entran a la programaci\\u00f3n\"]', 1, '2024-02-21 02:51:47', '2024-02-21 02:51:47', NULL),
(7, 'Filtro de fotos con Python', 'filtro-de-fotos-con-python', 'Algoritmo de matricez', 'courses/dfMDiGtdj1aD0M7R8ONRcjIpbFPGFAp1JaGMNb1M.png', 60, 16, 19, '3', 'Español', NULL, NULL, '<p><strong>&iquest;Qu&eacute; aprender&aacute;s?</strong> Durante este curso, explorar&aacute;s los fundamentos del procesamiento de datos con Python y aprender&aacute;s a crear filtros personalizados para abordar diversos escenarios. Cubriremos temas como manipulaci&oacute;n de listas, diccionarios y conjuntos, expresiones lambda, comprensi&oacute;n de listas y m&aacute;s. Adem&aacute;s, te introduciremos a bibliotecas populares como NumPy y Pandas, que facilitar&aacute;n enormemente tus tareas de filtrado y manipulaci&oacute;n de datos.</p>\r\n\r\n<p><strong>&iquest;Para qui&eacute;n es este curso?</strong> Este curso est&aacute; dise&ntilde;ado tanto para principiantes que desean iniciarse en el procesamiento de datos con Python como para aquellos que ya tienen conocimientos b&aacute;sicos y desean profundizar en la creaci&oacute;n de filtros personalizados. Si trabajas con datos o simplemente te apasiona la manipulaci&oacute;n de informaci&oacute;n, este curso te proporcionar&aacute; habilidades pr&aacute;cticas y aplicables.</p>', '[\"Conocimientos b\\u00e1sicos de Python\",\"Conocimiento de algoritmos\",\"Conocimiento de matricez\"]', '[\"estudiantes interesados en crear filtros\",\"gente que quiera mejorar sus habilidades en python\"]', 2, '2024-02-21 03:00:31', '2024-02-21 03:00:31', NULL),
(8, 'Data warehouses', 'data-warehouses', 'What are and how to use them', 'courses/idSRdGUZ61gc2iHmRhEMWVjlvMR6LlH2ke4kghEx.png', 13, 5, 38, '6', 'Ingles', NULL, NULL, '<p>Welcome to the Data Warehousing Fundamentals Course! In this comprehensive program, we will delve into the essential concepts and practices of data warehousing, equipping you with the knowledge and skills to harness the power of organized data for effective business intelligence.</p>\r\n\r\n<p><strong>Why Data Warehousing?</strong> In today&#39;s data-driven world, businesses rely on structured and organized information to make informed decisions. Data warehousing provides a centralized repository for collecting, storing, and managing data from various sources, facilitating efficient analysis and reporting. This course will guide you through the fundamentals of data warehousing and its crucial role in modern business intelligence strategies.</p>\r\n\r\n<p><strong>What Will You Learn?</strong> Throughout this course, we will explore key data warehousing concepts, including data modeling, ETL (Extract, Transform, Load) processes, dimensional modeling, and data warehouse architecture. You will gain hands-on experience with popular data warehousing tools and technologies, allowing you to design and implement your own data warehouse solutions.</p>', '[\"fundamentals of data warehousing\",\"fundamentals of data bases\",\"fundamentals of data administration\"]', '[\"IT professionals\",\"business intelligence professionals\",\"database administrators\",\"data analysts\"]', 2, '2024-02-21 03:08:47', '2024-02-21 03:08:47', NULL),
(9, 'Integrating Email Services on a Server Course', 'integrating-email-services-on-a-server-course', 'Using a Linux distribution, Debian', 'courses/at2GufYp1rCziNqAyef7sl7P3hIrM28pBfPsZyV0.png', 78, 7, 9, '4', 'Español', NULL, NULL, '<p>Welcome to the Integrating Email Services on a Server Course! In this hands-on program, you will learn the essential skills to set up and manage email services on a server, ensuring smooth communication for your applications and users.</p>\r\n\r\n<p><strong>Why Email Integration?</strong> Email remains a cornerstone of modern communication, and integrating email services on your server is crucial for various applications, from web hosting to business solutions. This course will guide you through the process of configuring and maintaining a robust email infrastructure, enhancing the reliability and functionality of your server.</p>\r\n\r\n<p><strong>What Will You Learn?</strong> Throughout this course, you will acquire the knowledge and practical experience to integrate email services seamlessly into your server environment. Key topics include setting up mail servers, configuring email clients, implementing security measures, and troubleshooting common issues. You&#39;ll gain insights into popular email protocols, such as SMTP, IMAP, and POP3, and explore best practices for optimal email server performance.</p>', '[\"basic understanding of server administration\",\"networking fundamentals\"]', '[\"system administrators\",\"IT professionals\",\"Informatic Students\"]', 2, '2024-02-21 03:18:29', '2024-02-21 03:18:29', NULL),
(10, 'Curso de Algoritmo de Prim', 'curso-de-algoritmo-de-prim', 'Árboles de Expansión Mínima', 'courses/J7nOlawz1STLHtVyWlrqDtaP9T8gTA9OHXA8AwQv.png', 17, 35, 37, '3', 'Español', NULL, NULL, '<p>&iexcl;Bienvenido al Curso de Algoritmo de Prim para &Aacute;rboles de Expansi&oacute;n M&iacute;nima! En este programa educativo, exploraremos en detalle el algoritmo de Prim, una t&eacute;cnica esencial en teor&iacute;a de grafos utilizada para encontrar el &aacute;rbol de expansi&oacute;n m&iacute;nima en un grafo conexo y ponderado.</p>\r\n\r\n<p><strong>&iquest;Por qu&eacute; el Algoritmo de Prim?</strong> Los &aacute;rboles de expansi&oacute;n m&iacute;nima son fundamentales en diversos campos, como redes de comunicaci&oacute;n, log&iacute;stica y dise&ntilde;o de circuitos. El Algoritmo de Prim ofrece una soluci&oacute;n eficiente para encontrar la estructura de &aacute;rbol que conecta todos los nodos de un grafo con el menor costo total posible. Este curso te guiar&aacute; a trav&eacute;s de los conceptos y t&eacute;cnicas esenciales para aplicar con &eacute;xito el algoritmo de Prim en situaciones del mundo real.</p>\r\n\r\n<p><strong>&iquest;Qu&eacute; Aprender&aacute;s?</strong> Durante este curso, abordaremos los siguientes temas clave:</p>\r\n\r\n<ul>\r\n	<li>Introducci&oacute;n a la teor&iacute;a de grafos y &aacute;rboles de expansi&oacute;n m&iacute;nima.</li>\r\n	<li>Explicaci&oacute;n detallada del algoritmo de Prim y su implementaci&oacute;n.</li>\r\n	<li>Estrategias para manejar grafos ponderados y no dirigidos.</li>\r\n	<li>Casos de estudio y aplicaciones pr&aacute;cticas del algoritmo.</li>\r\n	<li>Optimizaci&oacute;n y an&aacute;lisis del rendimiento del algoritmo de Prim.</li>\r\n	<li>Desarrollo de habilidades de resoluci&oacute;n de problemas en teor&iacute;a de grafos.</li>\r\n</ul>\r\n\r\n<p><strong>Destacados del Curso:</strong></p>\r\n\r\n<ul>\r\n	<li>Lecciones te&oacute;ricas acompa&ntilde;adas de ejemplos pr&aacute;cticos.</li>\r\n	<li>Desaf&iacute;os de programaci&oacute;n para aplicar y fortalecer tus habilidades.</li>\r\n	<li>Proyectos pr&aacute;cticos que simulan escenarios del mundo real.</li>\r\n	<li>Colaboraci&oacute;n con instructores experimentados y una comunidad de aprendices.</li>\r\n	<li>Certificaci&oacute;n al completar con &eacute;xito el curso.</li>\r\n</ul>', '[\"conocimientos b\\u00e1sicos de programaci\\u00f3n\",\"comprensi\\u00f3n de conceptos fundamentales de grafos.\"]', '[\"Estudiantes que quieran conocer sobre los grafos\",\"cualquier persona interesada en aplicar el algoritmo de Prim\"]', 2, '2024-02-21 03:47:57', '2024-02-21 03:47:57', NULL),
(11, 'Curso de Desarrollo Web Full Stack', 'curso-de-desarrollo-web-full-stack', 'con React.js y Node.js', 'courses/VJSm74BdeROCkdpwyT8J36bvOcX0xaHodgWWKCB2.png', 80, 1, 17, '5', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Fundamentos de HTML\",\" CSS y JavaScript.\"]', '[\"principiantes que deseen iniciarse en el desarrollo web\"]', 2, '2024-02-21 04:15:28', '2024-02-21 04:15:28', NULL),
(12, 'Exploits', 'exploits', 'usando VM', 'courses/pB8Q9yZs3hpanqWrGsjDjomgE7Obz1PxVcomJffs.png', 60, 25, 26, '5', 'Español', NULL, NULL, 'null', '[\"Usar VM\"]', '[\"Interesados en conocer vulnerabilidades\"]', 2, '2024-02-21 04:19:29', '2024-02-21 04:55:30', NULL),
(13, 'Programacion orientada a objetos', 'programacion-orientada-a-objetos', 'Arrays', 'courses/7LIuV8xF1B1Xi6cngxci7ElfYuuuhN4nohAGqjsw.png', 13, 21, 22, '2', 'Español', NULL, NULL, '<p>Hello, world!cs</p>', '[\"Programacion basica\",\"Declarar variables\"]', '[\"estudiantes principiantes\"]', 1, '2024-02-21 04:28:03', '2024-02-21 04:28:03', NULL),
(14, 'Metodologia', 'metodologia', 'Cascada', 'courses/Eacn2NYLjnhr3JFyyKtpUvIlyyjmSQL9ZP1JBzbH.webp', 82, 28, 29, '3', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Conocer programacion\",\"Saber leer bien\"]', '[\"Programadores principiantes\",\"Aquellos que quieren vender su trabajo\"]', 2, '2024-02-21 04:37:09', '2024-02-21 04:37:09', NULL),
(15, 'Iot', 'iot', 'en conexion', 'courses/ECY6Jzjr7fT9gDuoF0c8MqWGoXmdQfkLQYdcizGb.png', 71, 33, 34, '3', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Cisco Packet Tracer\"]', '[\"estudiantes interesados en redes\"]', 2, '2024-02-21 04:41:13', '2024-02-21 04:41:13', NULL),
(16, 'Conectar varias compus a traves del pais', 'conectar-varias-compus-a-traves-del-pais', 'usando Cisco Packet tracer', 'courses/3sZ7mhUOfcAak5i6E0cxF1twrTrGm3Fdy11yPH2T.jpg', 72, 33, 34, '3', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Cisco Packet Tracer\"]', '[\"estudiantes principiantes en redes\",\"Interesados en realizar conexiones IP\"]', 1, '2024-02-21 04:42:27', '2024-02-21 04:42:27', NULL),
(17, 'Usar diccionarios', 'usar-diccionarios', 'Para cualquier problema', 'courses/x9fIVdVUEmVSWB7r3a4oIxE2tfTm281XJcgUd1oF.jpg', 80, 21, 22, '3', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Python basico\",\"Hacer arrays\"]', '[\"Estudiantes con mejora en programacion dinamica\"]', 2, '2024-02-21 04:43:45', '2024-02-21 04:43:45', NULL),
(18, 'Usar Orange', 'usar-orange', 'Con Anaconda', 'courses/8kKkrEmlfKS6j8IItoCD7EUsQTUuyWfGbbU38Bfc.jpg', 17, 13, 14, '6', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Anaconda\",\"Conocimientos de Python\",\"Base de datos\",\"Limpieza de la informaci\\u00f3n\"]', '[\"Estudiantes principiantes en datamining\",\"Interesados en usar patrones\",\"Estudiantes que quieren predecir\"]', 2, '2024-02-21 04:45:25', '2024-02-21 04:45:25', NULL),
(19, 'Realiza Derivadas', 'realiza-derivadas', 'Extensas', 'courses/3PCuLc9M9lG6PUyy8sMWlRJ6KNI0rEdAHcckNMLq.png', 80, 6, 11, '2', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"matematicas basicas\",\"Resolver funciones\"]', '[\"Estudiantes que apenas entraron a las ciencias y tecnologias\"]', 2, '2024-02-21 04:47:06', '2024-02-21 04:47:06', NULL),
(20, 'Instala Oracle', 'instala-oracle', 'Y aprende a manejarlo', 'courses/jdO4rfEb9xHnhwyzY5mUqRh5eFNdHJKcWwWhaPKV.png', 60, 5, 8, '3', 'Español', NULL, NULL, 'null', '[\"Ganas de aprender\",\"Principios de bases de datos\"]', '[\"Estudiantes que quieran iniciar en Bases de Datos\"]', 1, '2024-02-21 04:48:19', '2024-02-21 04:48:19', NULL),
(21, 'XAMPP', 'xampp', 'Como nos facilitara la administración', 'courses/dgwBIeOE4XbtIujghOdDSD8DTyJDpSVsMTi7YFIh.jpg', 65, 5, 8, '3', 'Español', NULL, NULL, 'null', '[\"Saber manejar puertos\",\"SQL basico\"]', '[\"Estudiantes que quieran mejorar la administracion de base de datos\"]', 2, '2024-02-21 04:49:31', '2024-02-21 04:49:31', NULL),
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
(33, 'Crea tu landingPage', 'crea-tu-landingpage', 'A partir de plantillas', NULL, 65, 1, 2, '5', 'Español', NULL, NULL, 'null', '[\"\"]', '[\"\"]', 2, '2024-02-22 01:15:40', '2024-02-22 01:15:40', NULL),
(34, 'Crea matrices', 'crea-matrices', 'desde cualquier lenguaje', 'courses/t2iy4VS9CgY7rhohtCGai0htFpKzcVYqh4Wsgx1J.webp', 75, 16, 36, '2', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"\"]', '[\"\"]', 1, '2024-02-22 01:19:01', '2024-02-22 01:19:01', NULL),
(35, 'Inicia a programar', 'inicia-a-programar', 'En Javascript', 'courses/A4uucEyoY5XcPR6fqkKhHV7bsXDelzc3HvWtm8Pv.jpg', 17, 16, 20, '1', 'Español', NULL, NULL, '<p>Hello, world!</p>', '[\"Ganas de aprender\"]', '[\"Todo el mundo\"]', 1, '2024-02-22 01:41:38', '2024-02-22 01:41:38', NULL);

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
(1, 2, 11, 1, '21', '2024-02-08 00:04:06', '2024-02-08 00:04:06'),
(18, 4, 11, 1, NULL, '2023-12-06 02:27:19', '2024-02-10 02:27:19'),
(19, 5, 17, 1, NULL, '2023-12-06 02:56:40', '2024-02-10 02:56:40'),
(22, 2, 17, 1, '21', '2023-12-08 03:00:03', '2024-02-10 03:00:03'),
(23, 4, 17, 1, NULL, '2024-02-10 03:00:03', '2024-02-10 03:00:03'),
(24, 15, 4, 1, '5', '2024-01-19 03:36:35', '2024-02-22 03:36:35'),
(25, 18, 5, 1, '4', '2024-01-11 03:36:35', '2024-02-22 03:36:35'),
(26, 35, 11, 1, '5', '2024-01-17 03:36:35', '2024-02-22 03:36:35'),
(27, 4, 13, 1, '1', '2024-02-01 03:36:35', '2024-02-22 03:36:35'),
(28, 4, 15, 1, '2', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(29, 9, 16, 1, '2', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(30, 13, 17, 1, '1', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(31, 17, 57, 1, '5', '2024-03-09 03:36:35', '2024-02-22 03:36:35'),
(32, 22, 58, 1, '1', '2024-03-23 03:36:35', '2024-02-22 03:36:35'),
(33, 16, 59, 1, '1', '2024-03-13 03:36:35', '2024-02-22 03:36:35'),
(34, 31, 60, 1, '2', '2024-03-09 03:36:35', '2024-02-22 03:36:35'),
(35, 19, 61, 1, '5', '2024-03-10 03:36:35', '2024-02-22 03:36:35'),
(36, 2, 62, 1, '3', '2023-12-07 03:36:35', '2024-02-22 03:36:35'),
(37, 7, 63, 1, '3', '2023-12-14 03:36:35', '2024-02-22 03:36:35'),
(38, 11, 64, 1, '4', '2023-12-16 03:36:35', '2024-02-22 03:36:35'),
(39, 27, 65, 1, '4', '2023-12-09 03:36:35', '2024-02-22 03:36:35'),
(40, 29, 66, 1, '2', '2024-01-17 03:36:35', '2024-02-22 03:36:35'),
(41, 21, 67, 1, '2', '2024-01-12 03:36:35', '2024-02-22 03:36:35'),
(42, 1, 68, 1, '1', '2024-01-20 03:36:35', '2024-02-22 03:36:35'),
(43, 35, 69, 1, '5', '2024-01-06 03:36:35', '2024-02-22 03:36:35'),
(44, 12, 70, 1, '1', '2024-01-13 03:36:35', '2024-02-22 03:36:35'),
(45, 15, 71, 1, '5', '2024-01-22 03:36:35', '2024-02-22 03:36:35'),
(46, 4, 72, 1, '5', '2024-01-17 03:36:35', '2024-02-22 03:36:35'),
(47, 7, 73, 1, '1', '2024-01-14 03:36:35', '2024-02-22 03:36:35'),
(48, 13, 74, 1, '2', '2024-01-13 03:36:35', '2024-02-22 03:36:35'),
(49, 9, 75, 1, '3', '2024-01-05 03:36:35', '2024-02-22 03:36:35'),
(50, 22, 76, 1, '4', '2024-01-06 03:36:35', '2024-02-22 03:36:35'),
(51, 9, 77, 1, '2', '2024-04-12 03:36:35', '2024-02-22 03:36:35'),
(52, 32, 78, 1, '3', '2024-03-09 03:36:35', '2024-02-22 03:36:35'),
(53, 35, 79, 1, '2', '2024-03-09 03:36:35', '2024-02-22 03:36:35'),
(54, 23, 80, 1, '2', '2024-03-08 03:36:35', '2024-02-22 03:36:35'),
(55, 5, 81, 1, '1', '2024-03-02 03:36:35', '2024-02-22 03:36:35'),
(56, 27, 82, 1, '4', '2024-02-22 03:36:35', '2024-02-22 03:36:35'),
(87, 7, 4, 1, '4', '2024-03-02 03:36:50', '2024-02-22 03:36:50'),
(88, 6, 5, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(89, 8, 11, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(90, 29, 13, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(91, 17, 15, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(92, 15, 16, 1, '2', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(93, 24, 17, 1, '2', '2024-01-18 03:36:50', '2024-02-22 03:36:50'),
(94, 8, 57, 1, '2', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(95, 4, 58, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(96, 28, 59, 1, '4', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(97, 11, 60, 1, '2', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(98, 19, 61, 1, '5', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(99, 21, 62, 1, '2', '2024-04-06 03:36:50', '2024-02-22 03:36:50'),
(100, 4, 63, 1, '2', '2024-01-26 03:36:50', '2024-02-22 03:36:50'),
(101, 21, 64, 1, '4', '2024-01-18 03:36:50', '2024-02-22 03:36:50'),
(102, 8, 65, 1, '4', '2024-01-24 03:36:50', '2024-02-22 03:36:50'),
(103, 34, 66, 1, '4', '2024-03-08 03:36:50', '2024-02-22 03:36:50'),
(104, 12, 67, 1, '4', '2024-03-08 03:36:50', '2024-02-22 03:36:50'),
(105, 20, 68, 1, '4', '2024-03-09 03:36:50', '2024-02-22 03:36:50'),
(106, 29, 69, 1, '1', '2023-12-16 03:36:50', '2024-02-22 03:36:50'),
(107, 19, 70, 1, '4', '2024-01-04 03:36:50', '2024-02-22 03:36:50'),
(108, 32, 71, 1, '2', '2023-12-16 03:36:50', '2024-02-22 03:36:50'),
(109, 3, 72, 1, '2', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(110, 18, 73, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(111, 23, 74, 1, '5', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(112, 19, 75, 1, '5', '2024-01-13 03:36:50', '2024-02-22 03:36:50'),
(113, 11, 76, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(114, 34, 77, 1, '1', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(115, 24, 78, 1, '5', '2024-02-22 03:36:50', '2024-02-22 03:36:50'),
(116, 31, 79, 1, '3', '2024-02-22 03:36:50', '2024-02-22 03:36:50');

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
(11, 1, 'clase 1', NULL, 1, NULL, '2024-03-26 06:00:00', '2024-01-27 03:27:44', '2024-01-27 03:27:44'),
(12, 1, 'clase1', 'https://www.youtube.com/watch?v=-kDzafLjUEY&pp=ygUmY29tbyB0ZW5lciBtaSBhZG1pbkxURSBlbiBvdHJvIHB1ZXJ0bz8%3D', 1, NULL, '2024-02-26 06:00:00', '2024-02-26 09:52:41', NULL),
(13, 1, 'clase 2', 'https://www.youtube.com/watch?v=fMP75RIZnE0', 1, NULL, '2024-01-26 06:00:00', '2024-02-26 09:52:54', NULL),
(14, 2, 'clase1', 'https://www.youtube.com/watch?v=NkYSK-_hVDQ', 1, NULL, '2024-03-12 06:00:00', '2024-02-12 10:00:41', NULL),
(15, 2, 'clase2', 'https://www.youtube.com/watch?v=DVO8QrGAPHs', 1, NULL, '2024-04-12 06:00:00', '2024-02-12 10:03:01', NULL),
(16, 28, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '24', '2024-01-21 06:00:00', '2024-02-22 01:51:17', NULL),
(17, 26, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '18', '2024-04-21 06:00:00', '2024-02-22 01:51:17', NULL),
(18, 19, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '15', '2024-04-21 06:00:00', '2024-02-22 01:51:17', NULL),
(19, 21, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '19', '2024-02-21 06:00:00', '2024-02-22 01:51:17', NULL),
(20, 15, 'clase10', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '15', '2024-03-21 06:00:00', '2024-02-22 01:51:17', NULL),
(21, 14, 'clase3', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '33', '2024-01-21 06:00:00', '2024-02-22 01:51:17', NULL),
(22, 24, 'clase3', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-01-21 06:00:00', '2024-02-22 01:51:17', NULL),
(23, 30, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '23', '2024-04-21 06:00:00', '2024-02-22 01:51:17', NULL),
(24, 35, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '11', '2024-01-21 06:00:00', '2024-02-22 01:51:17', NULL),
(25, 12, 'clase3', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '34', '2024-02-21 06:00:00', '2024-02-22 01:51:17', NULL),
(26, 10, 'clase3', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '16', '2024-02-21 06:00:00', '2024-02-22 01:51:17', NULL),
(27, 21, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-01-21 06:00:00', '2024-02-22 01:51:17', NULL),
(28, 34, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '32', '2024-01-21 06:00:00', '2024-02-22 01:51:17', NULL),
(29, 14, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '19', '2024-02-21 06:00:00', '2024-02-22 01:51:17', NULL),
(30, 16, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '15', '2024-02-21 06:00:00', '2024-02-22 01:51:17', NULL),
(31, 22, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-01-21 06:00:00', '2024-02-22 01:51:17', NULL),
(32, 15, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '15', '2024-04-21 06:00:00', '2024-02-22 01:51:17', NULL),
(33, 26, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '25', '2024-04-21 06:00:00', '2024-02-22 01:51:17', NULL),
(34, 24, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '28', '2024-03-21 06:00:00', '2024-02-22 01:51:17', NULL),
(35, 34, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '31', '2024-01-21 06:00:00', '2024-02-22 01:51:17', NULL),
(36, 24, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '13', '2024-02-21 06:00:00', '2024-02-22 01:51:17', NULL),
(37, 23, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '19', '2024-03-21 06:00:00', '2024-02-22 01:51:17', NULL),
(38, 19, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '22', '2024-01-21 06:00:00', '2024-02-22 01:51:17', NULL),
(39, 15, 'clase7', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '28', '2024-04-21 06:00:00', '2024-02-22 01:51:17', NULL),
(40, 23, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '12', '2024-02-21 06:00:00', '2024-02-22 01:51:17', NULL),
(47, 25, 'clase1', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '24', '2024-03-21 06:00:00', '2024-02-22 01:51:34', NULL),
(48, 23, 'clase1', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '22', '2024-01-21 06:00:00', '2024-02-22 01:51:34', NULL),
(49, 20, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '18', '2024-02-21 06:00:00', '2024-02-22 01:51:34', NULL),
(50, 14, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '24', '2024-01-21 06:00:00', '2024-02-22 01:51:34', NULL),
(51, 19, 'clase1', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '20', '2024-02-21 06:00:00', '2024-02-22 01:51:34', NULL),
(52, 28, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '35', '2024-02-21 06:00:00', '2024-02-22 01:51:34', NULL),
(53, 25, 'clase10', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '15', '2024-03-21 06:00:00', '2024-02-22 01:51:34', NULL),
(54, 13, 'clase1', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '27', '2024-02-21 06:00:00', '2024-02-22 01:51:34', NULL),
(55, 19, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '33', '2024-04-21 06:00:00', '2024-02-22 01:51:34', NULL),
(56, 12, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-03-21 06:00:00', '2024-02-22 01:51:34', NULL),
(57, 17, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '11', '2024-04-21 06:00:00', '2024-02-22 01:51:34', NULL),
(58, 23, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '29', '2024-04-21 06:00:00', '2024-02-22 01:51:34', NULL),
(59, 21, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '33', '2024-03-21 06:00:00', '2024-02-22 01:51:34', NULL),
(60, 34, 'clase1', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '25', '2024-01-21 06:00:00', '2024-02-22 01:51:34', NULL),
(61, 26, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '13', '2024-02-21 06:00:00', '2024-02-22 07:52:40', NULL),
(62, 23, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '11', '2024-02-21 06:00:00', '2024-02-22 01:51:34', NULL),
(63, 33, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '14', '2024-01-21 06:00:00', '2024-02-22 01:51:34', NULL),
(64, 29, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '25', '2024-01-21 06:00:00', '2024-02-22 01:51:34', NULL),
(65, 22, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '10', '2024-02-21 06:00:00', '2024-02-22 01:51:34', NULL),
(66, 35, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '34', '2024-04-21 06:00:00', '2024-02-22 01:51:34', NULL),
(67, 22, 'clase6', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '18', '2024-03-21 06:00:00', '2024-02-22 01:51:34', NULL),
(68, 35, 'clase10', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '29', '2024-04-21 06:00:00', '2024-02-22 01:51:34', NULL),
(69, 33, 'clase3', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '20', '2024-02-21 06:00:00', '2024-02-22 01:51:34', NULL),
(70, 18, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '13', '2024-03-21 06:00:00', '2024-02-22 01:51:34', NULL),
(71, 22, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '10', '2024-03-21 06:00:00', '2024-02-22 01:51:34', NULL),
(78, 33, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '35', '2024-02-21 06:00:00', '2024-02-22 01:54:47', NULL),
(79, 25, 'clase10', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '35', '2024-01-21 06:00:00', '2024-02-22 01:54:47', NULL),
(80, 13, 'clase7', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '27', '2024-02-21 06:00:00', '2024-02-22 01:54:47', NULL),
(81, 25, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '27', '2024-04-21 06:00:00', '2024-02-22 01:54:47', NULL),
(82, 29, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-04-21 06:00:00', '2024-02-22 01:54:47', NULL),
(83, 16, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '25', '2024-03-21 06:00:00', '2024-02-22 01:54:47', NULL),
(84, 23, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-01-21 06:00:00', '2024-02-22 01:54:47', NULL),
(85, 16, 'clase3', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '24', '2024-01-21 06:00:00', '2024-02-22 01:54:47', NULL),
(86, 35, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '27', '2024-02-21 06:00:00', '2024-02-22 01:54:47', NULL),
(87, 19, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-01-21 06:00:00', '2024-02-22 01:54:47', NULL),
(88, 30, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '17', '2024-03-21 06:00:00', '2024-02-22 01:54:47', NULL),
(89, 11, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '27', '2024-01-21 06:00:00', '2024-02-22 01:54:47', NULL),
(90, 17, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '35', '2024-03-21 06:00:00', '2024-02-22 01:54:47', NULL),
(91, 29, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '13', '2024-02-21 06:00:00', '2024-02-22 01:54:47', NULL),
(92, 10, 'clase8', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '23', '2024-03-21 06:00:00', '2024-02-22 01:54:47', NULL),
(93, 22, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '33', '2024-02-21 06:00:00', '2024-02-22 01:54:47', NULL),
(94, 32, 'clase7', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '28', '2024-03-21 06:00:00', '2024-02-22 01:54:47', NULL),
(95, 25, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '19', '2024-01-21 06:00:00', '2024-02-22 01:54:47', NULL),
(96, 16, 'clase5', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '22', '2024-01-21 06:00:00', '2024-02-22 07:55:10', NULL),
(97, 28, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '23', '2024-02-21 06:00:00', '2024-02-22 01:54:47', NULL),
(98, 14, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '14', '2024-03-21 06:00:00', '2024-02-22 01:54:47', NULL),
(99, 33, 'clase9', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '28', '2024-01-21 06:00:00', '2024-02-22 01:54:47', NULL),
(100, 32, 'clase4', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '34', '2024-04-21 06:00:00', '2024-02-22 01:54:47', NULL),
(101, 30, 'clase2', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '14', '2024-01-21 06:00:00', '2024-02-22 01:54:47', NULL),
(102, 23, 'clase1', 'https://www.youtube.com/watch?v=DBh_Wf4FCSo&pp=ygUDdWRn', 1, '24', '2024-03-21 06:00:00', '2024-02-22 01:54:47', NULL),
(109, 68, 'Clase 1, Presentacion', 'https://www.youtube.com/watch?v=TvwiD3WiE8A', 1, NULL, '2024-01-22 06:00:00', '2024-02-22 07:59:02', NULL),
(110, 68, 'Clase 2, Descargar Imagen Debian', 'https://www.youtube.com/watch?v=m3BVZyJc5ko', 1, NULL, '2024-04-22 06:00:00', '2024-02-22 07:59:40', NULL),
(111, 69, 'Acede a la terminal', 'https://www.youtube.com/watch?v=NrTMwzP2Y00', 1, NULL, '2024-02-22 06:00:00', '2024-02-22 08:00:42', NULL),
(112, 5, 'Clase1PAUPAUPAUPAU', 'https://www.youtube.com/watch?v=Bd9gCby16bE&pp=ygUmY29tbyB0ZW5lciBtaSBhZG1pbkxURSBlbiBvdHJvIHB1ZXJ0bz8%3D', 1, NULL, '2024-03-26 06:00:00', '2024-02-26 09:53:45', NULL);

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
(12, 12, 'Captura de pantalla 2024-01-13 115522.png', '84053', NULL, '1177 X 795', 'clases_files/7eF4oQZgMnkA0DvWtEZyQmyeyvhqnj1C68qHAjBW.png', 'png', '2024-01-26 22:35:54', '2024-01-26 22:35:54'),
(13, 13, 'comprobanteVigenciaDerechos10190276666 (1).pdf', '53020', NULL, NULL, 'clases_files/5y9jGRpImeCFzwevhdPckfLfPS430YE0JEwgSQpT.pdf', 'pdf', '2024-01-26 22:44:31', '2024-01-26 22:44:31'),
(14, 13, 'Árbol de decisión Orange_Fernando De la Torre.docx', '257483', NULL, NULL, 'clases_files/yarNl1fnL8SFh7syx2oskFexV6xoOyUhUogsGUlF.docx', 'docx', '2024-01-26 22:44:31', '2024-01-26 22:44:31'),
(15, 13, 'comprobanteVigenciaDerechos10190276666 (1).pdf', '53020', NULL, NULL, 'clases_files/07gnXJjZBPa2t2awyoydFhhqPG3W2QEoIOOg5BgZ.pdf', 'pdf', '2024-01-26 22:45:12', '2024-01-26 22:45:12'),
(16, 13, 'cv pau (3).png', '525384', NULL, '1545 X 2000', 'clases_files/4nlHveUYYCgltV3jJFOptiO4RoNU1Avt4uOldJH2.png', 'png', '2024-01-27 02:29:43', '2024-01-27 02:29:43'),
(17, 14, 'H2_Grammar Adjectives.pdf', '60605', NULL, NULL, 'clases_files/rr2HWhbnBIWLVIRIJRBHmEKQMVsga6t0c2296dbG.pdf', 'pdf', '2024-02-12 05:00:42', '2024-02-12 05:00:42'),
(18, 15, 'Resultados SaludDigna.pdf', '181912', NULL, NULL, 'clases_files/C9w7Q1pJ0SJw4hlP8gWu180CW6wtOVUHPyu9PEWw.pdf', 'pdf', '2024-02-12 05:03:01', '2024-02-12 05:03:01'),
(19, 109, 'descarga.jpg', '96104', NULL, '1280 X 720', 'clases_files/P5xFQGy7DsmEWtCmRH6SiZC5nySHXBOAql1oM636.jpg', 'jpg', '2024-02-22 02:59:02', '2024-02-22 02:59:02'),
(20, 110, 'descarga.jpg', '96104', NULL, '1280 X 720', 'clases_files/3qGKqa6xTGWKPendphRKdpxIMTQIA9FpDr4ZXdmQ.jpg', 'jpg', '2024-02-22 02:59:40', '2024-02-22 02:59:40'),
(21, 111, 'descarga.jpg', '96104', NULL, '1280 X 720', 'clases_files/QLuKUyJMNms9Oq3lqIdHTzdULng4aoMJ26pNtoVX.jpg', 'jpg', '2024-02-22 03:00:42', '2024-02-22 03:00:42'),
(22, 112, 'alemania A2.docx', '14891', NULL, NULL, 'clases_files/II16k7vy5sHv6T0FJKb8eneWLKeMQSbndtcSjvyS.docx', 'docx', '2024-02-26 04:53:46', '2024-02-26 04:53:46');

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
(1, 2, 'hola', 1, '2024-01-27 07:24:37', '2024-01-27 07:24:37', NULL),
(2, 3, 'sesion1', 1, '2024-01-27 07:27:38', '2024-01-27 07:27:38', NULL),
(3, 3, 'sesion2', 1, '2024-01-27 07:27:43', '2024-01-27 07:27:43', NULL),
(4, 3, 'sesion3', 1, '2024-01-27 07:27:43', '2024-02-22 06:46:07', NULL),
(5, 2, 'pau', 1, '2024-01-27 07:28:08', '2024-01-27 07:28:08', NULL),
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
(23, 2, 'seccion4', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
(24, 4, 'seccion40', 1, '2024-02-22 00:44:21', '2024-02-22 00:44:21', NULL),
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
(48, 2, 'seccion33', 1, '2024-02-22 00:44:56', '2024-02-22 00:44:56', NULL),
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
(69, 28, 'Seccion 2, como usar la terminal', 1, '2024-02-22 07:58:38', '2024-02-22 07:58:38', NULL);

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
(26, 17, NULL, NULL, NULL, 0, NULL, '1', '2024-02-10 03:00:03', '2024-02-10 03:00:03', NULL);

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
(31, 22, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 02:19:03', '2024-02-10 02:19:03', NULL),
(32, 22, 2, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 02:19:03', '2024-02-10 02:19:03', NULL),
(33, 22, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 02:19:03', '2024-02-10 02:19:03', NULL),
(34, 23, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 02:27:19', '2024-02-10 02:27:19', NULL),
(35, 24, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 02:56:40', '2024-02-10 02:56:40', NULL),
(36, 25, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 02:58:01', '2024-02-10 02:58:01', NULL),
(37, 26, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 03:00:03', '2024-02-10 03:00:03', NULL),
(38, 26, 2, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 03:00:03', '2024-02-10 03:00:03', NULL),
(39, 26, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-02-10 03:00:03', '2024-02-10 03:00:03', NULL);

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
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_instructor` tinyint(1) DEFAULT NULL COMMENT 'si es nulo no es instructor y si es 1, es instructor',
  `profesion` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `type_user` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es cliente, 2 administrador',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `avatar`, `role_id`, `email_verified_at`, `password`, `is_instructor`, `profesion`, `description`, `state`, `type_user`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Paulina Michelle', NULL, 'echodevelopers12@gmail.com', NULL, 1, NULL, '$2y$10$rw2.tc8V4Vrkc7QcTSnTRe.ST1/Hk0JWaSjSGMMPGTpa42eEXZF7a', NULL, NULL, NULL, 1, 1, NULL, '2024-01-12 01:29:02', '2024-01-12 01:29:02'),
(5, 'jose', NULL, 'echodevelopers10@gmail.com', NULL, 1, NULL, '$2y$10$TNhBKfufoiMRs/RpdgL0Fud436MbEgc/1S7JkWph5C4R2AtO2nHE6', NULL, NULL, NULL, 1, 1, NULL, '2024-01-12 01:34:47', '2024-01-12 01:34:47'),
(11, 'pau', 'figueroa xd', 'wswwqs@gmail.com', NULL, 2, NULL, '$2y$10$Zhe40EWaziRiuqAi5jwI9O6p81C0uJLBfAHz///pczDHqlSpe6yG.', NULL, NULL, NULL, 1, 2, NULL, '2024-01-16 09:18:33', '2024-01-17 00:55:29'),
(13, 'Lady', 'Beard', 'hukf@ef.com', 'users/NdSqjjcOAc2CS1rfkuDBCw8HpuADbxO0i7p2kmf4.webp', 2, NULL, '$2y$10$3zDosGmXYPTUMDtKCA4CbOjC65wCbOQfKujUjjf7MqkFaEnfy1R/q', 1, 'estudiante', 'efwwf', 1, 2, NULL, '2024-01-17 00:59:37', '2024-02-20 10:48:45'),
(15, 'Jared', NULL, 'jared.monje5944@alumnos.udg.mx', NULL, 1, NULL, '$2y$10$B/OltUeFOs6TrUGEMyScb.WOaIacYyb8VejjliJg6FtaIaVDR79FG', NULL, NULL, NULL, 1, 1, NULL, '2024-02-08 07:28:15', '2024-02-08 07:28:15'),
(16, 'federico', 'Fernandez', 'fede@gmail.com', 'users/qQmy65UlqxtugJbJNh8EeRxedD5MgtYvh7MAw8vB.png', 2, NULL, '$2y$10$QSH9SnzgEAzAX0Hgkd.HeeyoEbclGwQEV8SQGRbr4vgXFcqsZ.Nwe', NULL, NULL, NULL, 1, 2, NULL, '2024-02-10 07:44:12', '2024-02-10 07:44:12'),
(17, 'Oscar Leonardo', 'Cárdenas Ulloa', 'leo@test.com', 'users/152PGMInCW6nVXFyln6NCe09EvfbVJEp0L5S3ZLB.png', 2, '2024-02-20 03:20:24', '$2y$10$rw2.tc8V4Vrkc7QcTSnTRe.ST1/Hk0JWaSjSGMMPGTpa42eEXZF7a', 1, 'Estudiante', 'null', 1, 2, NULL, '2024-02-10 07:55:44', '2024-02-20 09:33:32'),
(57, 'Jorge', 'Ezpinoa', 'Jorge@test.com', 'users/kVGkex45De1r9y5Iy7Lhgef8U2nCMFVqAmpPHWVd.jpg', 2, NULL, '$2y$10$l9HGiVYign8yH1BzqGtI.e/qqn5oCPJ6O3csZ4Ew7e02d9xCJv3mO', NULL, NULL, NULL, 1, 2, NULL, '2024-02-20 10:31:52', '2024-02-20 10:31:52'),
(58, 'Julion', 'Alvarez', 'Julion@test.com', 'users/HWk9il2cSMtSurIFGpCXRab9cNAsyFO8YcfRnY9I.jpg', 2, NULL, '$2y$10$DsIC1l4m5UPcTDdr58CFUeGgaC.W4wpEHwUoFFuAjiLwIHwl/KOqa', NULL, NULL, NULL, 1, 2, NULL, '2024-02-20 10:33:28', '2024-02-20 10:33:28'),
(59, 'Billie', 'Elish', 'billielish@test.com', 'users/SbqpyuSWdIaLXNwrS6ZsVBCClj2wk1CbIB6Kn185.jpg', 2, NULL, '$2y$10$RF5iikO5ObiJu9d9f6zuQugwk54zDUas6F1KahYURg28gumfyOj.K', NULL, NULL, NULL, 1, 2, NULL, '2024-02-20 10:34:15', '2024-02-20 10:34:15'),
(60, 'Michael', 'Jackson', 'hehe@test.com', 'users/jab1pjFPAi5TuIL7u1aEqhFjUeDjo4dwVHAEIqCU.jpg', 2, NULL, '$2y$10$z8A5UEuNPv/Zof7t3g/lru/3ep0j4ai3/aYgMVpwZ0d1BAGPp6g0u', 1, NULL, NULL, 1, 2, NULL, '2024-02-20 10:34:59', '2024-02-20 10:34:59'),
(61, 'Shrek', 's', 'Shrek@test.com', 'users/S5vG98BdSYrOgjQZc49P7azgRKI9qeJn3piZgCL4.avif', 1, NULL, '$2y$10$/Sqo4KlXLA5qxeiQNNlqiulty98EmmMr8D8IP1bR6Rzqtxztp8bS6', NULL, NULL, NULL, 1, 1, NULL, '2024-02-20 10:40:14', '2024-02-20 10:40:14'),
(62, 'Calamardo', 'Tentaculos', 'calar@test.com', 'users/v6ej7fOR9yi9rQuIQbk1zJoot6fuE7gXLPhkM13R.jpg', 2, NULL, '$2y$10$mDyYHA9DQuWmoz92slmX3e4VnmEIZZfeFfNuk1tU2nYd/ncFcypt2', NULL, NULL, NULL, 1, 2, NULL, '2024-02-20 10:40:50', '2024-02-20 10:40:50'),
(63, 'meme', 'meme', 'meme@test.com', 'users/EMqNMeBUZIUNkmc2BSPKZQdg18PL6eopt1LtvPzH.png', 2, NULL, '$2y$10$.T.x5vBHNHrdXby5eXcn8uQnd2uERhm8Uwilg0z6VP.clGXYtp97W', NULL, NULL, NULL, 1, 2, NULL, '2024-02-20 10:41:23', '2024-02-20 10:41:23'),
(64, 'Vicente', 'Fernandez', 'vicente@test.com', 'users/cXfzkH2khbAosxfXCaVcBiEzI5sfR0LSk7XNqEr0.jpg', 2, NULL, '$2y$10$s/EWuXLd/0sx5.szPk5TJ.rxbJZNOE09vnXezwrBfVkmmpMct0RPi', NULL, NULL, NULL, 1, 2, NULL, '2024-02-20 10:42:00', '2024-02-20 10:42:00'),
(65, 'ASh', 'Ketshup', 'ash@test.com', 'users/rb3Nc1wGhbVuqPYzHjr2Mek5Z8KvKsy9SqtcgYDW.jpg', 1, NULL, '$2y$10$LEToG3WP2Vm8NCf55ldR9uyj8FyhVsIqCP.jIWOmmIyKCCOiEMCSK', 1, NULL, NULL, 1, 1, NULL, '2024-02-20 10:42:33', '2024-02-20 10:42:33'),
(66, 'Fernand', 'Floo', 'floo@test.com', 'users/WlOk7lsc8uDJSwi5u2iPHlQr95dcpmOLovXiZdjY.webp', 1, NULL, '$2y$10$BHH4Ei/m0HMuqDvpn8uKpuFbfgpp1zhqWs4GqU1Ijc0rAC1ySKgG.', NULL, NULL, NULL, 1, 1, NULL, '2024-03-08 10:43:05', '2024-02-20 10:43:05'),
(67, 'Hola', 'SoyGerman', 'GermanGar@test.com', 'users/YGTppQPO007qlqtbiEuMRKI2O5lCvHYDKs1ntyRA.jpg', 2, NULL, '$2y$10$4Cw3anRl6/jmK7CwOv9zuenlMHgbrMPkKfReD97XrvyaXC/PgFnEy', NULL, NULL, NULL, 1, 2, NULL, '2024-02-20 10:43:36', '2024-02-20 10:43:36'),
(68, 'Freedie', 'Kruger', 'kruger@test.com', 'users/mwCvQ2GdBlFOnM8hhF1Qxp7uGpnAE50sqO1UNEwj.webp', 2, NULL, '$2y$10$7kC96AP4/XjknfLZGzqQnO93TNgzsxIJ2J/bojXIiSEUrr6JEqjY6', NULL, NULL, NULL, 1, 2, NULL, '2024-03-13 10:44:13', '2024-02-20 10:44:13'),
(69, 'BRuce', 'Wayne', 'batman@test.com', 'users/O6e8XTJ1dz7ZMO4D8nW0JcWCqMx39f84DobZI8kT.jpg', 2, NULL, '$2y$10$kC/PjBRN60ht96chgIlb9uDSF7D7IpCReKWzzrW0I92Wl2knhOtia', NULL, NULL, NULL, 1, 2, NULL, '2024-03-07 10:45:20', '2024-02-20 10:45:20'),
(70, 'Teemo', 'Scout', 'demonio@test.com', 'users/LujfTGNlXGfdQ93mo8DfWoUMDlvg5ddE1A3nfdhJ.webp', 1, NULL, '$2y$10$Vyxrk57gf5LXmWcK.cBtu.2ufivtciahLr0P9FzQPkES3893eZsYC', NULL, NULL, NULL, 1, 1, NULL, '2024-03-02 10:45:52', '2024-02-20 10:45:52'),
(71, 'Lady', 'Gaga', 'gaga@test.com', 'users/saAlml7uqUlPhSivm9wSxP6wAvud4Su1mmMeslKk.webp', 1, NULL, '$2y$10$8uMzPufe51cUdIe/ARg0heTincin/aEqU5WOgzuSvVip7SH6Z1moK', 1, NULL, NULL, 1, 1, NULL, '2024-03-02 10:46:27', '2024-02-20 10:46:27'),
(72, 'Kayne', 'West', 'kayne@test.com', 'users/vEf2klCCESJFRj8eYg8S7R2MnU2L6W5Po6QESnHr.png', 1, NULL, '$2y$10$C5mvfszyKEk.6viNwhd.h.A3GeQMYayQqfGhH98sd.OA7wjmAO/zW', 1, NULL, NULL, 1, 1, NULL, '2024-02-20 10:48:03', '2024-02-20 10:48:03'),
(73, 'BRuce', 'Lee', 'bruce@test.com', 'users/NTveVDHt22ak69xRsm0ihJLb2Z8zND5ftcvKpD3A.jpg', 1, NULL, '$2y$10$mZK3TspOaWYEeB31VvxP7.bD9skvjUzBRxy0KVvVNCBn2GrfZk9Da', NULL, NULL, NULL, 1, 1, NULL, '2024-03-07 10:49:23', '2024-02-20 10:49:23'),
(74, 'Yakie', 'Chan', 'chan@test.com', 'users/Nfu3fQEFsP6dBWQa0W5dEqAXMjyerDiC9oKETpAU.webp', 1, NULL, '$2y$10$YMg0lt554ZV.0MrTlnWjHuwd8khF70sqE7uJf6cYu7M4eqcf1YMM6', NULL, NULL, NULL, 1, 1, NULL, '2024-03-07 10:49:55', '2024-02-20 10:49:55'),
(75, 'Guillermo', 'Del Toro', 'Toro@test.com', 'users/elXyaxGZN3EQfSjGh9gfviYsyG29IYfTK36aa320.jpg', 1, NULL, '$2y$10$i5x64NztcQkiU8Eb2YiCeuar1QnEG5881or95Y2kbPxhzcF3.6Pz6', 1, NULL, NULL, 1, 1, NULL, '2023-12-07 10:51:10', '2024-02-20 10:51:10'),
(76, 'Pitbull', 'Mr 035', 'pitbull@test.com', 'users/SH55QQiAWeBinIFM1hfzpmphrebFPDj2q7wYmcjH.webp', 1, NULL, '$2y$10$/KP45PEuSTWz9QQU0cyC7ew1p/YX665LeaBuX4t5S3GlOuBiq8l5S', NULL, NULL, NULL, 1, 1, NULL, '2023-12-22 05:57:02', '2024-02-21 05:57:02'),
(77, 'Shakira', 'no llora', 'wakawaka@test.com', 'users/2S8UJWBcyPYXYJcdfSloG206q05fx76hGAZCwvWJ.jpg', 1, NULL, '$2y$10$JEK8FORYTLmq0vDymZWvjONIRwibem036XRCK.7yjU7Rq2HCdrAL2', NULL, NULL, NULL, 1, 1, NULL, '2023-12-15 05:58:20', '2024-02-21 05:58:20'),
(78, 'Miguel', 'Bosé', 'miguebose@test.com', 'users/vmdE4eee2nNGTiS24TXphovObNs66WQN79Zshzxs.jpg', 2, NULL, '$2y$10$Cp02aI.qE04ue2HRYUNqcuDtUGqAut/cX7/H54XfA/zZ.ZtzePv06', 1, NULL, NULL, 1, 2, NULL, '2024-01-10 05:59:16', '2024-02-21 05:59:16'),
(79, 'Eugenioq', 'Derbex', 'derbex@test.com', 'users/9uEPlqj8GLQPJCRPuqSH9CVHMtGkNSdXOXquD9T7.jpg', 1, NULL, '$2y$10$arBo64lqxJs2qQu.ynGHCO6SbR6wU2ScLBxN13D8E/90oQ9Mpb5Vy', NULL, NULL, NULL, 1, 1, NULL, '2024-01-05 06:02:49', '2024-02-21 06:02:49'),
(80, 'Brittney', 'Spears', 'britt@test.com', 'users/CIDJ4eSoHFz8gVFfF2qoggQvcZzJ2pyvdteT4WGS.jpg', 1, NULL, '$2y$10$2P9v/aeXQBJqfhNYk4UfNOxu3p2/bqT70wEUTFObtDUWvvLMavt8m', 1, NULL, NULL, 1, 1, NULL, '2024-01-11 06:04:21', '2024-02-21 06:04:21'),
(81, 'Red', 'Foo', 'redfoo@test.com', 'users/He3aPg17oRsBLZugAHk3PR20Ttyo5n22SkbgwMIb.jpg', 1, NULL, '$2y$10$lMKm78LnQrz3xDGsxbUZeucILq9fdRRkR5hCRA4NlHwlVfxOkf/su', NULL, NULL, NULL, 1, 1, NULL, '2024-01-04 06:06:28', '2024-02-21 06:06:28'),
(82, 'Lana', 'Del Rey', 'LanaRey@test.com', 'users/ogm37qpl9JhZfqpPkxSI12OUnOn7g8NyybL8FsgG.webp', 1, NULL, '$2y$10$0NFoU1QakJooVQRlYx0rieK8RZ0mTYeGkTQGJBC3GMfYQxGbdcomO', 1, NULL, NULL, 1, 1, NULL, '2024-01-25 06:11:17', '2024-02-21 06:11:17'),
(83, 'Ricky', 'Martin', 'ricky@test.com', 'users/ozw7fZgkQHT10lwY6AAtzbrFBsYCvaNhALe51Ear.jpg', 2, NULL, '$2y$10$vcrDvlBX8lw8XUgyMu3FLOP2EW8VKgd8T3BUb6KzagnEGDTPN7jMG', NULL, NULL, NULL, 1, 2, NULL, '2024-02-27 07:59:41', '2024-02-27 08:50:23');

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `courses_students`
--
ALTER TABLE `courses_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `course_clases`
--
ALTER TABLE `course_clases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `course_clase_files`
--
ALTER TABLE `course_clase_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `course_sections`
--
ALTER TABLE `course_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
