-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2020 a las 02:01:12
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ova`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `identificacion` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`identificacion`, `nombre`, `id_tipo`, `fecha`) VALUES
('034823759', 'hdksdj fjhs fjshd', 1, '2020-04-07 15:49:41'),
('1004845648', 'Nelson Amaya Calderon', 1, '2020-04-07 14:45:34'),
('1234567890', 'Pepito Perez', 1, '2020-04-07 15:57:07'),
('233917491', 'Pedro Picapiedra', 1, '2020-04-12 11:32:36'),
('234682658', 'Ana delina', 1, '2020-04-12 11:37:05'),
('268234628', 'Andres Cequeda', 1, '2020-04-11 18:46:34'),
('2893497349', 'Pedro el Escamoso', 1, '2020-04-12 11:30:12'),
('3264634815', 'Jose Arias', 1, '2020-04-11 18:52:00'),
('3328634332', 'Frito', 1, '2020-04-11 18:55:51'),
('34296598932', 'Jose Andres', 1, '2020-04-07 14:53:23'),
('3456426133', 'ruw eyruwey', 1, '2020-04-07 15:50:58'),
('34623846389', 'hdfkhsdfkja', 1, '2020-04-11 18:39:24'),
('348653', 'dsjhfkjsd', 1, '2020-04-07 15:25:40'),
('362836872', 'Antolin', 1, '2020-04-11 18:37:32'),
('38798237984', 'Que mas pues', 1, '2020-04-12 11:53:29'),
('43527614', 'Hola ', 1, '2020-04-11 19:02:22'),
('439846939', 'Ana Gabriel', 1, '2020-04-12 11:46:30'),
('45912375127', 'Francisco', 1, '2020-04-11 18:58:03'),
('479235823', 'Pepito Perez', 1, '2020-04-11 18:27:12'),
('47982379482', 'Radamel Falcao', 1, '2020-04-11 18:35:13'),
('49871471', 'Joselito Carnaval', 1, '2020-04-11 18:28:32'),
('60383019', 'Estela Calderon', 1, '2020-04-07 14:47:43'),
('6483245623', 'Franchesco', 1, '2020-04-11 19:00:53'),
('653453583', 'Pedro Pablo', 1, '2020-04-07 14:58:13'),
('73624826', 'jdjkfsdjhds', 1, '2020-04-07 15:42:25'),
('7628457643', 'Joselito', 1, '2020-04-07 15:24:26'),
('8347938429', 'Esto Fue', 1, '2020-04-12 11:50:13'),
('844638526', 'hjdfgjsd dshfjsdgf', 1, '2020-04-07 15:31:17'),
('897523847', 'Eduardo Arias', 1, '2020-04-07 14:54:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificado`
--

CREATE TABLE `certificado` (
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `certificado`
--

INSERT INTO `certificado` (`numero`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cert_desc`
--

CREATE TABLE `cert_desc` (
  `numero_cert` int(11) NOT NULL,
  `id_alumno` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `id_nivel` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cert_desc`
--

INSERT INTO `cert_desc` (`numero_cert`, `id_alumno`, `id_nivel`, `fecha`) VALUES
(1, '1004845648', 1, '2020-04-07'),
(2, '60383019', 1, '2020-04-07'),
(3, '34296598932', 1, '2020-04-07'),
(4, '897523847', 1, '2020-04-07'),
(5, '653453583', 1, '2020-04-07'),
(6, '7628457643', 1, '2020-04-07'),
(7, '348653', 1, '2020-04-07'),
(8, '844638526', 1, '2020-04-07'),
(9, '73624826', 1, '2020-04-07'),
(10, '034823759', 1, '2020-04-07'),
(11, '3456426133', 1, '2020-04-07'),
(12, '1234567890', 1, '2020-04-07'),
(13, '479235823', 1, '2020-04-11'),
(14, '49871471', 1, '2020-04-11'),
(15, '47982379482', 1, '2020-04-11'),
(16, '362836872', 1, '2020-04-11'),
(17, '34623846389', 1, '2020-04-11'),
(18, '268234628', 1, '2020-04-11'),
(19, '3264634815', 1, '2020-04-11'),
(20, '3328634332', 1, '2020-04-11'),
(21, '45912375127', 1, '2020-04-11'),
(22, '6483245623', 1, '2020-04-11'),
(23, '43527614', 1, '2020-04-11'),
(24, '2893497349', 1, '2020-04-12'),
(25, '233917491', 1, '2020-04-12'),
(26, '234682658', 1, '2020-04-12'),
(27, '439846939', 1, '2020-04-12'),
(28, '8347938429', 1, '2020-04-12'),
(29, '38798237984', 1, '2020-04-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionario`
--

CREATE TABLE `cuestionario` (
  `id_cuestionario` int(11) NOT NULL,
  `id_nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cuestionario`
--

INSERT INTO `cuestionario` (`id_cuestionario`, `id_nivel`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id_nivel` int(11) NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id_nivel`, `descripcion`) VALUES
(1, 'Primaria'),
(2, 'Secundaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_cuestionario` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id_cuestionario`, `id`, `descripcion`) VALUES
(1, 1, '¿Cuál de estas acciones no pertenece a la regla de las 3 erres de la sostenibilidad?'),
(1, 2, '¿Cuáles de estos grupos de materiales son Reciclables?'),
(1, 3, '¿Cuál de estos colores no pertenece a un contenedor de reciclaje?'),
(1, 4, '¿Y qué pasa con las latas, sabes qué contenedor les corresponde?'),
(1, 5, '¿De qué manera puedes ayudar a salvar nuestra tierra?'),
(1, 6, '¿Quién Debe y Tiene la Responsabilidad de Reciclar?'),
(1, 7, '¿Cuántas veces se puede reciclar el vidrio?'),
(1, 8, '¿Sabes cuál de estos objetos no deben tirarse en el contenedor de vidrio?'),
(1, 9, '¿De que color es el contenedor para reciclar el papel o cartón?'),
(1, 10, '\"Es el uso de un producto más de una vez en su forma original, para el mismo o nuevo propósito. Lo que para unos es basura, para otros es un recurso. Muchos materiales o productos desechados pueden ser reutilizados para su función original o para otros usos\" a cual de las 3R corresponde el texto anterior');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preg_opc`
--

CREATE TABLE `preg_opc` (
  `id_cuestionario` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `opc1` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `opc2` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `opc3` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `opc4` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `preg_opc`
--

INSERT INTO `preg_opc` (`id_cuestionario`, `id_pregunta`, `opc1`, `opc2`, `opc3`, `opc4`) VALUES
(1, 1, 'Reducir', 'Reutilizar', 'Respetar', 'Reciclar'),
(1, 2, 'Papel, Vidrio, Cartón', 'Espejos, Lentes, Cristales', 'Desechos de Comida', 'Ninguno de los Anteriores'),
(1, 3, 'Amarillo', 'Verde', 'Negro', 'Azul'),
(1, 4, 'Azul', 'Amarillo', 'Verde', 'Otro'),
(1, 5, 'Plantar un Árbol', 'Reciclando', 'Reducir la cantidad de residuos que produces', 'Todo lo Anterior'),
(1, 6, 'Tus Profesores', 'Todas las Personas', 'Tu mejor Amigo', 'Tus Padres'),
(1, 7, 'Diez Veces', 'Una Vez', 'Para Siempre', 'Tres Veces'),
(1, 8, 'Una Bombilla', 'Objetos de Cristal', 'Cerámica o Porcelana', 'Todos los Anteriores'),
(1, 9, 'Azul', 'Amarillo', 'Verde', 'Gris'),
(1, 10, 'Reciclar', 'Reducir', 'Reparar', 'Reutilizar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntuacion`
--

CREATE TABLE `puntuacion` (
  `id_cuestionario` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `opc` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `puntuacion` int(11) NOT NULL,
  `opc2` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `puntuacion2` int(11) NOT NULL,
  `opc3` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `puntuacion3` int(11) NOT NULL,
  `opc4` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `puntuacion4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `puntuacion`
--

INSERT INTO `puntuacion` (`id_cuestionario`, `id_pregunta`, `opc`, `puntuacion`, `opc2`, `puntuacion2`, `opc3`, `puntuacion3`, `opc4`, `puntuacion4`) VALUES
(1, 1, 'Reducir', 0, 'Reutilizar', 0, 'Respetar', 1, 'Reciclar', 0),
(1, 2, 'Papel, Vidrio, Cartón', 1, 'Espejos, Lentes, Cristales', 0, 'Desechos de Comida', 0, 'Ninguno de los Anteriores', 0),
(1, 3, 'Amarillo', 0, 'Verde', 0, 'Negro', 1, 'Azul', 0),
(1, 4, 'Azul', 0, 'Amarillo', 1, 'Verde', 0, 'Otro', 0),
(1, 5, 'Plantar un Árbol', 0, 'Reciclando', 0, 'Reducir la cantidad de residuos que produces', 0, 'Todo lo Anterior', 1),
(1, 6, 'Tus Profesores', 0, 'Todas las Personas', 1, 'Tu mejor Amigo', 0, 'Tus Padres', 0),
(1, 7, 'Diez Veces', 0, 'Una Vez', 0, 'Para Siempre', 1, 'Tres Veces', 0),
(1, 8, 'Una Bombilla', 0, 'Objetos de Cristal', 0, 'Cerámica o Porcelana', 0, 'Todos los Anteriores', 1),
(1, 9, 'Azul', 0, 'Amarillo', 1, 'Verde', 0, 'Gris', 0),
(1, 10, 'Reciclar', 0, 'Reducir', 0, 'Reparar', 0, 'Reutilizar', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id`, `descripcion`) VALUES
(1, 'Tarjeta de Identidad'),
(2, 'Cedula de Ciudadania');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`identificacion`,`fecha`),
  ADD KEY `f_tipo` (`id_tipo`);

--
-- Indices de la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `cert_desc`
--
ALTER TABLE `cert_desc`
  ADD PRIMARY KEY (`numero_cert`,`id_alumno`,`id_nivel`),
  ADD KEY `fke_nivel` (`id_nivel`),
  ADD KEY `fke_alumno` (`id_alumno`);

--
-- Indices de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  ADD PRIMARY KEY (`id_cuestionario`,`id_nivel`),
  ADD KEY `fkey_nivel` (`id_nivel`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id_cuestionario`,`id`);

--
-- Indices de la tabla `preg_opc`
--
ALTER TABLE `preg_opc`
  ADD PRIMARY KEY (`id_cuestionario`,`id_pregunta`);

--
-- Indices de la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  ADD PRIMARY KEY (`id_cuestionario`,`id_pregunta`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `certificado`
--
ALTER TABLE `certificado`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  MODIFY `id_cuestionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `f_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_documento` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cert_desc`
--
ALTER TABLE `cert_desc`
  ADD CONSTRAINT `fje_cuestionario` FOREIGN KEY (`numero_cert`) REFERENCES `certificado` (`numero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fke_alumno` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`identificacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fke_nivel` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id_nivel`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cuestionario`
--
ALTER TABLE `cuestionario`
  ADD CONSTRAINT `fkey_nivel` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id_nivel`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `fk_cuestion` FOREIGN KEY (`id_cuestionario`) REFERENCES `cuestionario` (`id_cuestionario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `preg_opc`
--
ALTER TABLE `preg_opc`
  ADD CONSTRAINT `fkey_cuestionario` FOREIGN KEY (`id_cuestionario`) REFERENCES `pregunta` (`id_cuestionario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  ADD CONSTRAINT `fkey_cuestion` FOREIGN KEY (`id_cuestionario`) REFERENCES `pregunta` (`id_cuestionario`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
