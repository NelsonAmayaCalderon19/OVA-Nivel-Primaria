-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2020 a las 01:45:04
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

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
('1093798043', 'Nelson Amaya', 2, '2020-04-25 19:33:50'),
('1293934734', 'Andres Rojas', 2, '2020-04-26 09:47:46'),
('21454654854', 'Nelson Amaya', 2, '2020-04-27 16:21:35'),
('23442334', 'Jose Orozco', 1, '2020-04-25 20:19:00'),
('3454365', 'Fercho Ortiz', 1, '2020-04-26 09:51:08'),
('3544326432', 'Pedro Arias', 1, '2020-04-25 20:08:31'),
('4234123324', 'Stella Calderon', 2, '2020-04-25 20:16:05'),
('4362432645', 'Jaider Amaya', 1, '2020-04-26 09:52:57'),
('53532562', 'Adriana Rojas', 2, '2020-04-26 09:49:23'),
('53643643', 'Jose Padilla', 1, '2020-04-26 09:56:03'),
('537374656', 'Carlos Blanco', 1, '2020-04-26 09:54:56'),
('543524534', 'Ana Castillo', 2, '2020-04-26 09:56:58'),
('65465373', 'Geovanny Calderon', 2, '2020-04-26 09:48:32');

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
(13);

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
(1, '1093798043', 2, '2020-04-25'),
(2, '3544326432', 1, '2020-04-25'),
(3, '4234123324', 2, '2020-04-25'),
(4, '23442334', 1, '2020-04-25'),
(5, '1293934734', 2, '2020-04-26'),
(6, '65465373', 2, '2020-04-26'),
(7, '53532562', 2, '2020-04-26'),
(8, '3454365', 1, '2020-04-26'),
(9, '4362432645', 1, '2020-04-26'),
(10, '537374656', 1, '2020-04-26'),
(11, '53643643', 1, '2020-04-26'),
(12, '543524534', 2, '2020-04-26'),
(13, '21454654854', 2, '2020-04-27');

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
(1, 10, '\"Es el uso de un producto más de una vez en su forma original, para el mismo o nuevo propósito. Lo que para unos es basura, para otros es un recurso. Muchos materiales o productos desechados pueden ser reutilizados para su función original o para otros usos\" a cual de las 3R corresponde el texto anterior'),
(2, 1, '¿De los siguientes colores de contenedores cual no corresponde a los vistos anteriormente?'),
(2, 2, '¿Qué es el Medio Ambiente?'),
(2, 3, '¿En Cuál Contenedor se desechan los objetos de Vidrio?'),
(2, 4, 'Algunos materiales reciclables son...'),
(2, 5, 'El color del contenedor establecido para la recolección de residuos sólidos orgánicos es:'),
(2, 6, 'En que Contenedor debes depositar residuos como: medicamentos vencidos, o residuos con el Simbolo de Peligro'),
(2, 7, 'En Contenido propuesto en la OVA, se dice que: \"si separamos adecuadamente los desechos que generamos, nos podremos dar de cuenta que podemos reciclar hasta un ... \"'),
(2, 8, '¿Cuál de los siguientes residuos,no está elaborado a partir de sustancias tóxicas, perjudiciales para el ser humano?'),
(2, 9, 'Según tu Criterio, Por cada tonelada de papel reciclado, estamos salvando hasta ____'),
(2, 10, 'Entre los beneficios que se obtienen al reciclar se dice que: Por cada dos toneladas de plástico que se recicla, se ahorra \"________\" de petróleo.');

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
(1, 10, 'Reciclar', 'Reducir', 'Reparar', 'Reutilizar'),
(2, 1, 'Rojo', 'Blanco', 'Azul', 'Gris'),
(2, 2, 'El Entorno Físico', 'Las Áreas Verdes', 'Todo aquello que nos rodea', 'Ninguna de las Anteriores'),
(2, 3, 'Gris', 'Verde', 'Amarillo', 'Otro'),
(2, 4, 'Papel,Vidrios,Plástico', 'Papel Fotografico,Materia Orgánica,Aluminio', 'Lentes,Pañales,Espejos', 'Todos los Anteriores'),
(2, 5, 'Rojo', 'Azul', 'Verde', 'Gris'),
(2, 6, 'Gris', 'Negro', 'Rojo', 'Blanco'),
(2, 7, '90% de esos desechos', '70% de esos desechos', '20% de esos desechos', '100% de esos desechos'),
(2, 8, 'Pilas y Baterias', 'Papel y Cartón', 'Pinturas y aceites', 'Ninguna de las Anteriores'),
(2, 9, '9 árboles', '12 árboles', '5 árboles', '17 árboles'),
(2, 10, '1 Tonelada', '2 Toneladas', '1,5 Toneladas', 'Menos de 1 Tonelada');

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
(1, 10, 'Reciclar', 0, 'Reducir', 0, 'Reparar', 0, 'Reutilizar', 1),
(2, 1, 'Rojo', 0, 'Blanco', 1, 'Azul', 0, 'Gris', 0),
(2, 2, 'El Entorno Físico', 0, 'Las Áreas Verdes', 0, 'Todo aquello que nos rodea', 1, 'Ninguna de las Anteriores', 0),
(2, 3, 'Gris', 0, 'Verde', 1, 'Amarillo', 0, 'Otro', 0),
(2, 4, 'Papel,Vidrios,Plástico', 1, 'Papel Fotografico,Materia Orgánica,Aluminio', 0, 'Lentes,Pañales,Espejos', 0, 'Todos los Anteriores', 0),
(2, 5, 'Rojo', 0, 'Azul', 0, 'Verde', 0, 'Gris', 1),
(2, 6, 'Gris', 0, 'Negro', 0, 'Rojo', 1, 'Blanco', 0),
(2, 7, '90% de esos desechos', 1, '70% de esos desechos', 0, '20% de esos desechos', 0, '100% de esos desechos', 0),
(2, 8, 'Pilas y Baterias', 0, 'Papel y Cartón', 1, 'Pinturas y aceites', 0, 'Ninguna de las Anteriores', 0),
(2, 9, '9 árboles', 0, '12 árboles', 0, '5 árboles', 0, '17 árboles', 1),
(2, 10, '1 Tonelada', 1, '2 Toneladas', 0, '1,5 Toneladas', 0, 'Menos de 1 Tonelada', 0);

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
  ADD PRIMARY KEY (`identificacion`,`id_tipo`) USING BTREE,
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
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
