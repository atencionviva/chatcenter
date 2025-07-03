-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2025 a las 18:09:04
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chatcenter`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `email_admin` text DEFAULT NULL,
  `password_admin` text DEFAULT NULL,
  `rol_admin` text DEFAULT NULL,
  `permissions_admin` text DEFAULT NULL,
  `token_admin` text DEFAULT NULL,
  `token_exp_admin` text DEFAULT NULL,
  `status_admin` int(11) DEFAULT 1,
  `title_admin` text DEFAULT NULL,
  `symbol_admin` text DEFAULT NULL,
  `font_admin` text DEFAULT NULL,
  `color_admin` text DEFAULT NULL,
  `back_admin` text DEFAULT NULL,
  `scode_admin` text DEFAULT NULL,
  `chatgpt_admin` text DEFAULT NULL,
  `date_created_admin` date DEFAULT NULL,
  `date_updated_admin` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id_admin`, `email_admin`, `password_admin`, `rol_admin`, `permissions_admin`, `token_admin`, `token_exp_admin`, `status_admin`, `title_admin`, `symbol_admin`, `font_admin`, `color_admin`, `back_admin`, `scode_admin`, `chatgpt_admin`, `date_created_admin`, `date_updated_admin`) VALUES
(1, 'superadmin@chatcenter.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'superadmin', '{\"todo\":\"on\"}', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDYxMTc4ODksImV4cCI6MTc0NjIwNDI4OSwiZGF0YSI6eyJpZCI6IjEiLCJlbWFpbCI6InN1cGVyYWRtaW5AY2hhdGNlbnRlci5jb20ifX0.XBz3FLdoi3aVLL2Eo0Bxhc5jwP-Nw3s_wkQeuDaZB3k', '1746204289', 1, 'ChatCenter', '<i class=\"fas fa-robot\"></i>', '<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n<link href=\"https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap\" rel=\"stylesheet\">', '#03300c', 'http://cms-chatcenter.com/views/assets/files/68004d2030bd548.jpg', NULL, NULL, '2025-04-16', '2025-05-01 16:44:49'),
(2, 'admin@chatcenter.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'admin', '%7B%22TODO%22%3A%22ON%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDQ4NTA0MjIsImV4cCI6MTc0NDkzNjgyMiwiZGF0YSI6eyJpZCI6IjIiLCJlbWFpbCI6ImFkbWluQGNoYXRjZW50ZXIuY29tIn19.z6OIEirlO6IMxkvsAPd3AyLFsteAQ3OsmUHL69ZJV0k', '1744936822', 1, '', '', '', '', '', '', '%7B%7D', '2025-04-16', '2025-04-17 00:40:22'),
(3, 'editor-archivos@chatcenter.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'editor', '%7B%22archivos%22%3A%22ON%22%7D', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDQ4NTA1NTIsImV4cCI6MTc0NDkzNjk1MiwiZGF0YSI6eyJpZCI6IjMiLCJlbWFpbCI6ImVkaXRvci1hcmNoaXZvc0BjaGF0Y2VudGVyLmNvbSJ9fQ.iEMezbNByxDkoSpbg9AeJ1V7024YpJjyJv2hfpPJ_WY', '1744936952', 1, '', '', '', '', '', '', '%7B%7D', '2025-04-16', '2025-04-17 00:42:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bots`
--

CREATE TABLE `bots` (
  `id_bot` int(11) NOT NULL,
  `title_bot` text DEFAULT NULL,
  `type_bot` text DEFAULT NULL,
  `header_text_bot` text DEFAULT NULL,
  `header_image_bot` text DEFAULT NULL,
  `header_video_bot` text DEFAULT NULL,
  `body_text_bot` text DEFAULT NULL,
  `footer_text_bot` text DEFAULT NULL,
  `interactive_bot` text DEFAULT NULL,
  `buttons_bot` text DEFAULT '{}',
  `list_bot` text DEFAULT '[]',
  `date_created_bot` date DEFAULT NULL,
  `date_updated_bot` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bots`
--

INSERT INTO `bots` (`id_bot`, `title_bot`, `type_bot`, `header_text_bot`, `header_image_bot`, `header_video_bot`, `body_text_bot`, `footer_text_bot`, `interactive_bot`, `buttons_bot`, `list_bot`, `date_created_bot`, `date_updated_bot`) VALUES
(1, 'conversation', 'text', '', '', '', 'En instantes un agente se comunicará para conversar contigo', '', 'none', '{}', '[]', '2025-04-18', '2025-04-18 19:19:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `columns`
--

CREATE TABLE `columns` (
  `id_column` int(11) NOT NULL,
  `id_module_column` int(11) DEFAULT 0,
  `title_column` text DEFAULT NULL,
  `alias_column` text DEFAULT NULL,
  `type_column` text DEFAULT NULL,
  `matrix_column` text DEFAULT NULL,
  `visible_column` int(11) DEFAULT 1,
  `date_created_column` date DEFAULT NULL,
  `date_updated_column` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `columns`
--

INSERT INTO `columns` (`id_column`, `id_module_column`, `title_column`, `alias_column`, `type_column`, `matrix_column`, `visible_column`, `date_created_column`, `date_updated_column`) VALUES
(1, 2, 'rol_admin', 'rol', 'select', 'superadmin,admin,editor', 1, '2025-04-16', '2025-04-17 00:00:11'),
(2, 2, 'permissions_admin', 'permisos', 'object', '', 1, '2025-04-16', '2025-04-17 00:00:11'),
(3, 2, 'email_admin', 'email', 'email', '', 1, '2025-04-16', '2025-04-17 00:00:11'),
(4, 2, 'password_admin', 'pass', 'password', '', 0, '2025-04-16', '2025-04-17 00:00:11'),
(5, 2, 'token_admin', 'token', 'text', '', 0, '2025-04-16', '2025-04-17 00:00:11'),
(6, 2, 'token_exp_admin', 'expiración', 'text', '', 0, '2025-04-16', '2025-04-17 00:00:11'),
(7, 2, 'status_admin', 'estado', 'boolean', '', 1, '2025-04-16', '2025-04-17 00:00:11'),
(8, 2, 'title_admin', 'título', 'text', '', 0, '2025-04-16', '2025-04-17 00:00:11'),
(9, 2, 'symbol_admin', 'simbolo', 'text', '', 0, '2025-04-16', '2025-04-17 00:00:11'),
(10, 2, 'font_admin', 'tipografía', 'text', '', 0, '2025-04-16', '2025-04-17 00:00:12'),
(11, 2, 'color_admin', 'color', 'text', '', 0, '2025-04-16', '2025-04-17 00:00:12'),
(12, 2, 'back_admin', 'fondo', 'text', '', 0, '2025-04-16', '2025-04-17 00:00:12'),
(13, 2, 'scode_admin', 'seguridad', 'text', '', 0, '2025-04-16', '2025-04-17 00:00:12'),
(14, 2, 'chatgpt_admin', 'chatgpt', 'object', '', 0, '2025-04-16', '2025-04-17 00:00:12'),
(17, 6, 'number_whatsapp', 'Número', 'text', NULL, 1, '2025-04-17', '2025-04-17 15:34:43'),
(18, 6, 'id_number_whatsapp', 'Id Número', 'text', NULL, 1, '2025-04-17', '2025-04-17 15:34:43'),
(19, 6, 'id_app_whatsapp', 'Id App', 'text', NULL, 1, '2025-04-17', '2025-04-17 15:34:43'),
(20, 6, 'token_whatsapp', 'Token', 'text', NULL, 1, '2025-04-17', '2025-04-17 15:34:43'),
(21, 6, 'status_whatsapp', 'Estado', 'boolean', NULL, 1, '2025-04-17', '2025-04-17 15:34:43'),
(22, 6, 'ai_whatsapp', 'Asistente IA', 'boolean', NULL, 1, '2025-04-17', '2025-04-17 15:34:44'),
(23, 8, 'id_conversation_message', 'Conversación', 'text', NULL, 1, '2025-04-17', '2025-04-17 19:14:40'),
(24, 8, 'type_message', 'Tipo', 'select', NULL, 1, '2025-04-17', '2025-04-17 19:14:40'),
(25, 8, 'id_whatsapp_message', 'API-WS', 'relations', NULL, 1, '2025-04-17', '2025-04-17 19:14:40'),
(26, 8, 'client_message', 'Cliente', 'code', NULL, 1, '2025-04-17', '2025-04-17 19:14:41'),
(27, 8, 'business_message', 'Negocio', 'code', NULL, 1, '2025-04-17', '2025-04-17 19:14:41'),
(28, 8, 'template_message', 'Plantilla', 'object', NULL, 1, '2025-04-17', '2025-04-17 19:14:41'),
(29, 8, 'expiration_message', 'Expiración', 'datetime', NULL, 1, '2025-04-17', '2025-04-17 19:14:41'),
(30, 8, 'order_message', 'Orden', 'int', NULL, 1, '2025-04-17', '2025-04-17 19:14:41'),
(31, 8, 'initial_message', 'Asistencia Manual', 'int', NULL, 1, '2025-04-17', '2025-04-17 19:14:42'),
(32, 8, 'phone_message', 'Teléfono', 'text', NULL, 1, '2025-04-18', '2025-04-18 16:26:11'),
(33, 10, 'title_bot', 'Título', 'text', NULL, 1, '2025-04-18', '2025-04-18 17:17:28'),
(34, 10, 'type_bot', 'Tipo', 'select', 'text,interactive', 1, '2025-04-18', '2025-04-18 17:19:19'),
(35, 10, 'header_text_bot', 'Header Text', 'text', NULL, 1, '2025-04-18', '2025-04-18 17:17:28'),
(36, 10, 'header_image_bot', 'Header Image', 'image', NULL, 1, '2025-04-18', '2025-04-18 17:17:29'),
(37, 10, 'header_video_bot', 'Header Video', 'video', NULL, 1, '2025-04-18', '2025-04-18 17:17:29'),
(38, 10, 'body_text_bot', 'Body Text', 'textarea', NULL, 1, '2025-04-18', '2025-04-18 17:17:29'),
(39, 10, 'footer_text_bot', 'Footer Text', 'text', NULL, 1, '2025-04-18', '2025-04-18 17:17:30'),
(40, 10, 'interactive_bot', 'Tipo de interacción', 'select', 'none,button,list', 1, '2025-04-18', '2025-04-18 17:21:12'),
(41, 10, 'buttons_bot', 'Botones', 'object', NULL, 1, '2025-04-18', '2025-04-18 17:17:30'),
(42, 10, 'list_bot', 'Lista', 'json', NULL, 1, '2025-04-18', '2025-04-18 17:17:30'),
(43, 12, 'phone_contact', 'Teléfono', 'text', NULL, 1, '2025-04-18', '2025-04-18 17:42:31'),
(44, 12, 'name_contact', 'Nombre', 'text', NULL, 1, '2025-04-18', '2025-04-18 17:42:32'),
(45, 12, 'ai_contact', 'Asistente IA', 'boolean', NULL, 1, '2025-04-18', '2025-04-18 17:42:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id_contact` int(11) NOT NULL,
  `phone_contact` text DEFAULT NULL,
  `name_contact` text DEFAULT NULL,
  `ai_contact` int(11) DEFAULT 1,
  `date_created_contact` date DEFAULT NULL,
  `date_updated_contact` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`id_contact`, `phone_contact`, `name_contact`, `ai_contact`, `date_created_contact`, `date_updated_contact`) VALUES
(1, '573022258002', NULL, 0, '2025-05-01', '2025-05-02 03:58:30'),
(2, '573006180558', NULL, 0, '2025-05-01', '2025-05-02 03:31:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id_file` int(11) NOT NULL,
  `id_folder_file` int(11) DEFAULT 0,
  `name_file` text DEFAULT NULL,
  `extension_file` text DEFAULT NULL,
  `type_file` text DEFAULT NULL,
  `size_file` double DEFAULT 0,
  `link_file` text DEFAULT NULL,
  `thumbnail_vimeo_file` text DEFAULT NULL,
  `id_mailchimp_file` text DEFAULT NULL,
  `date_created_file` date DEFAULT NULL,
  `date_updated_file` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id_file`, `id_folder_file`, `name_file`, `extension_file`, `type_file`, `size_file`, `link_file`, `thumbnail_vimeo_file`, `id_mailchimp_file`, `date_created_file`, `date_updated_file`) VALUES
(1, 1, '67f54beee0e7546', 'jpg', 'image/jpeg', 204485, 'http://cms-chatcenter.com/views/assets/files/68004d2030bd548.jpg', NULL, NULL, '2025-04-17', '2025-04-18 21:39:04'),
(3, 1, '67f557e4564f048', 'png', 'image/png', 544340, 'http://cms-chatcenter.com/views/assets/files/6812890bcf30915.png', NULL, NULL, '2025-04-30', '2025-04-30 20:33:15'),
(4, 1, '67fd7513f335a27', 'mp3', 'audio/mpeg', 10046, 'http://cms-chatcenter.com/views/assets/files/68143a7deacde37.mp3', NULL, NULL, '2025-05-02', '2025-05-02 03:22:37'),
(5, 1, '67fd7513f345f27', 'mp3', 'audio/mpeg', 2126, 'http://cms-chatcenter.com/views/assets/files/68143bbc3cafe56.mp3', NULL, NULL, '2025-05-02', '2025-05-02 03:27:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders`
--

CREATE TABLE `folders` (
  `id_folder` int(11) NOT NULL,
  `name_folder` text DEFAULT NULL,
  `size_folder` text DEFAULT NULL,
  `total_folder` double DEFAULT 0,
  `max_upload_folder` text DEFAULT NULL,
  `url_folder` text DEFAULT NULL,
  `keys_folder` text DEFAULT NULL,
  `date_created_folder` date DEFAULT NULL,
  `date_updated_folder` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `folders`
--

INSERT INTO `folders` (`id_folder`, `name_folder`, `size_folder`, `total_folder`, `max_upload_folder`, `url_folder`, `keys_folder`, `date_created_folder`, `date_updated_folder`) VALUES
(1, 'Server', '200000000000', 760997, '500000000', 'http://cms-chatcenter.com', NULL, '2025-04-16', '2025-05-02 03:27:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id_message` int(11) NOT NULL,
  `id_conversation_message` text DEFAULT NULL,
  `type_message` text DEFAULT NULL,
  `id_whatsapp_message` int(11) DEFAULT 0,
  `client_message` longtext DEFAULT NULL,
  `business_message` longtext DEFAULT NULL,
  `template_message` text DEFAULT '{}',
  `expiration_message` datetime DEFAULT NULL,
  `order_message` int(11) DEFAULT 0,
  `initial_message` int(11) DEFAULT 0,
  `phone_message` text DEFAULT NULL,
  `date_created_message` date DEFAULT NULL,
  `date_updated_message` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`id_message`, `id_conversation_message`, `type_message`, `id_whatsapp_message`, `client_message`, `business_message`, `template_message`, `expiration_message`, `order_message`, `initial_message`, `phone_message`, `date_created_message`, `date_updated_message`) VALUES
(1, NULL, 'client', 1, 'Hola cómo están', NULL, '{}', NULL, 0, 0, '573022258002', '2025-05-01', '2025-05-01 20:11:28'),
(2, 'e2f641c02a3d6a00bb7b15612fcd3065', 'business', 1, NULL, 'En instantes un agente se comunicará para conversar contigo', '{\"type\":\"bot\",\"title\":\"conversation\"}', '2025-05-02 17:27:00', 1, 0, '573022258002', '2025-05-01', '2025-05-01 20:11:30'),
(3, 'e2f641c02a3d6a00bb7b15612fcd3065', 'business', 1, NULL, 'Hola, en qué puedo ayudarte', '{\"type\":\"manual\",\"title\":\"\"}', '2025-05-02 17:27:00', 2, 0, '573022258002', '2025-05-01', '2025-05-01 20:13:03'),
(4, NULL, 'client', 1, 'Quiero información de ustedes', NULL, '{}', NULL, 3, 0, '573022258002', '2025-05-01', '2025-05-01 20:13:21'),
(5, 'e2f641c02a3d6a00bb7b15612fcd3065', 'business', 1, NULL, 'Qué clase de información deseas saber', '{\"type\":\"manual\",\"title\":\"\"}', '2025-05-02 17:27:00', 4, 0, '573022258002', '2025-05-01', '2025-05-01 20:13:41'),
(6, NULL, 'client', 1, 'Hola cómo están', NULL, '{}', NULL, 0, 0, '573006180558', '2025-05-01', '2025-05-01 20:53:45'),
(7, '18941867d2151e32b24e409d9a4d0d04', 'business', 1, NULL, 'En instantes un agente se comunicará para conversar contigo', '{\"type\":\"bot\",\"title\":\"conversation\"}', '2025-05-02 20:54:00', 1, 0, '573006180558', '2025-05-01', '2025-05-01 20:53:50'),
(8, NULL, 'client', 1, 'Quiero saberlo todo', NULL, '{}', NULL, 5, 0, '573022258002', '2025-05-01', '2025-05-01 21:11:00'),
(9, NULL, 'client', 1, 'Acerca de ustedes', NULL, '{}', NULL, 6, 0, '573022258002', '2025-05-01', '2025-05-01 21:14:50'),
(10, NULL, 'client', 1, 'Quiero saberlo todo', NULL, '{}', NULL, 7, 0, '573022258002', '2025-05-01', '2025-05-01 21:17:18'),
(11, NULL, 'client', 1, 'Acerca de ustedes', NULL, '{}', NULL, 8, 0, '573022258002', '2025-05-01', '2025-05-01 21:18:31'),
(12, NULL, 'client', 1, 'Ok voy a esperar', NULL, '{}', NULL, 2, 0, '573006180558', '2025-05-01', '2025-05-01 21:54:18'),
(13, NULL, 'client', 1, 'Que pasa que no responden', NULL, '{}', NULL, 9, 0, '573022258002', '2025-05-01', '2025-05-01 21:57:34'),
(14, NULL, 'client', 1, 'Sigo esperando', NULL, '{}', NULL, 3, 0, '573006180558', '2025-05-01', '2025-05-01 21:58:27'),
(15, NULL, 'client', 1, 'Sigo esperando', NULL, '{}', NULL, 10, 0, '573022258002', '2025-05-01', '2025-05-01 21:59:01'),
(16, NULL, 'client', 1, 'Ok', NULL, '{}', NULL, 11, 0, '573022258002', '2025-05-01', '2025-05-01 22:00:48'),
(17, NULL, 'client', 1, 'Ok', NULL, '{}', NULL, 4, 0, '573006180558', '2025-05-01', '2025-05-01 22:01:20'),
(18, NULL, 'client', 1, 'Ok', NULL, '{}', NULL, 12, 0, '573022258002', '2025-05-01', '2025-05-01 22:02:41'),
(19, NULL, 'client', 1, 'Ok', NULL, '{}', NULL, 5, 0, '573006180558', '2025-05-01', '2025-05-01 22:03:36'),
(20, NULL, 'client', 1, 'Liso', NULL, '{}', NULL, 13, 0, '573022258002', '2025-05-01', '2025-05-01 22:04:33'),
(21, NULL, 'client', 1, 'Listo', NULL, '{}', NULL, 6, 0, '573006180558', '2025-05-01', '2025-05-01 22:06:22'),
(22, NULL, 'client', 1, 'Listo', NULL, '{}', NULL, 14, 0, '573022258002', '2025-05-01', '2025-05-01 22:07:23'),
(23, NULL, 'client', 1, 'Gracias', NULL, '{}', NULL, 7, 0, '573006180558', '2025-05-01', '2025-05-01 22:07:31'),
(24, NULL, 'client', 1, 'Por qué no responden', NULL, '{}', NULL, 15, 0, '573022258002', '2025-05-01', '2025-05-01 22:09:37'),
(25, NULL, 'client', 1, 'Buenas noches', NULL, '{}', NULL, 8, 0, '573006180558', '2025-05-01', '2025-05-02 03:20:42'),
(26, NULL, 'client', 1, 'Buenas noches', NULL, '{}', NULL, 16, 0, '573022258002', '2025-05-01', '2025-05-02 03:25:59'),
(27, NULL, 'client', 1, 'Buenas noches', NULL, '{}', NULL, 9, 0, '573006180558', '2025-05-01', '2025-05-02 03:26:39'),
(28, NULL, 'client', 1, 'Cómo están', NULL, '{}', NULL, 10, 0, '573006180558', '2025-05-01', '2025-05-02 03:31:06'),
(29, NULL, 'client', 1, 'Cualquier cosa', NULL, '{}', NULL, 17, 0, '573022258002', '2025-05-01', '2025-05-02 03:58:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `id_module` int(11) NOT NULL,
  `id_page_module` int(11) DEFAULT 0,
  `type_module` text DEFAULT NULL,
  `title_module` text DEFAULT NULL,
  `suffix_module` text DEFAULT NULL,
  `content_module` text DEFAULT NULL,
  `width_module` int(11) DEFAULT 100,
  `editable_module` int(11) DEFAULT 1,
  `date_created_module` date DEFAULT NULL,
  `date_updated_module` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`id_module`, `id_page_module`, `type_module`, `title_module`, `suffix_module`, `content_module`, `width_module`, `editable_module`, `date_created_module`, `date_updated_module`) VALUES
(1, 2, 'breadcrumbs', 'Administradores', NULL, NULL, 100, 1, '2025-04-16', '2025-04-17 00:00:10'),
(2, 2, 'tables', 'admins', 'admin', NULL, 100, 0, '2025-04-16', '2025-04-17 00:00:10'),
(5, 5, 'breadcrumbs', 'api whatsapp', '', '', 100, 1, '2025-04-17', '2025-04-17 15:31:55'),
(6, 5, 'tables', 'whatsapps', 'whatsapp', '', 100, 1, '2025-04-17', '2025-04-17 15:34:42'),
(7, 6, 'breadcrumbs', 'mensajes', '', '', 100, 1, '2025-04-17', '2025-04-17 19:02:34'),
(8, 6, 'tables', 'messages', 'message', '', 100, 1, '2025-04-17', '2025-04-17 19:14:39'),
(9, 7, 'breadcrumbs', 'bots', '', '', 100, 1, '2025-04-18', '2025-04-18 17:09:57'),
(10, 7, 'tables', 'bots', 'bot', '', 100, 1, '2025-04-18', '2025-04-18 17:17:27'),
(11, 8, 'breadcrumbs', 'contactos', '', '', 100, 1, '2025-04-18', '2025-04-18 17:41:06'),
(12, 8, 'tables', 'contacts', 'contact', '', 100, 1, '2025-04-18', '2025-04-18 17:42:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id_page` int(11) NOT NULL,
  `title_page` text DEFAULT NULL,
  `url_page` text DEFAULT NULL,
  `icon_page` text DEFAULT NULL,
  `type_page` text DEFAULT NULL,
  `order_page` int(11) DEFAULT 1,
  `date_created_page` date DEFAULT NULL,
  `date_updated_page` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id_page`, `title_page`, `url_page`, `icon_page`, `type_page`, `order_page`, `date_created_page`, `date_updated_page`) VALUES
(1, 'Chat', 'chat', 'bi bi-chat-dots-fill', 'custom', 1, '2025-04-16', '2025-04-30 20:30:34'),
(2, 'Admins', 'admins', 'bi bi-person-fill-gear', 'modules', 2, '2025-04-16', '2025-04-17 00:20:36'),
(3, 'Archivos', 'archivos', 'bi bi-file-earmark-image', 'custom', 3, '2025-04-16', '2025-04-17 00:20:36'),
(5, 'API-WS', 'api-ws', 'bi bi-whatsapp', 'modules', 1000, '2025-04-17', '2025-04-17 15:31:13'),
(6, 'Mensajes', 'mensajes', 'bi bi-chat-square-text', 'modules', 1000, '2025-04-17', '2025-04-17 19:02:23'),
(7, 'Bots', 'bots', 'bi bi-three-dots-vertical', 'modules', 1000, '2025-04-18', '2025-04-18 17:09:48'),
(8, 'Contactos', 'contactos', 'bi bi-person-lines-fill', 'modules', 1000, '2025-04-18', '2025-04-18 17:40:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `whatsapps`
--

CREATE TABLE `whatsapps` (
  `id_whatsapp` int(11) NOT NULL,
  `number_whatsapp` text DEFAULT NULL,
  `id_number_whatsapp` text DEFAULT NULL,
  `id_app_whatsapp` text DEFAULT NULL,
  `token_whatsapp` text DEFAULT NULL,
  `status_whatsapp` int(11) DEFAULT 1,
  `ai_whatsapp` int(11) DEFAULT 1,
  `date_created_whatsapp` date DEFAULT NULL,
  `date_updated_whatsapp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `whatsapps`
--

INSERT INTO `whatsapps` (`id_whatsapp`, `number_whatsapp`, `id_number_whatsapp`, `id_app_whatsapp`, `token_whatsapp`, `status_whatsapp`, `ai_whatsapp`, `date_created_whatsapp`, `date_updated_whatsapp`) VALUES
(1, NULL, NULL, NULL, NULL, 1, 1, '2025-04-17', '2025-05-13 19:16:26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `bots`
--
ALTER TABLE `bots`
  ADD PRIMARY KEY (`id_bot`);

--
-- Indices de la tabla `columns`
--
ALTER TABLE `columns`
  ADD PRIMARY KEY (`id_column`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_file`);

--
-- Indices de la tabla `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id_folder`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_message`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id_module`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id_page`);

--
-- Indices de la tabla `whatsapps`
--
ALTER TABLE `whatsapps`
  ADD PRIMARY KEY (`id_whatsapp`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `bots`
--
ALTER TABLE `bots`
  MODIFY `id_bot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `columns`
--
ALTER TABLE `columns`
  MODIFY `id_column` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `folders`
--
ALTER TABLE `folders`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `whatsapps`
--
ALTER TABLE `whatsapps`
  MODIFY `id_whatsapp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
