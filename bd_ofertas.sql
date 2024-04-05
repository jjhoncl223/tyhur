-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2024 a las 17:33:08
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
-- Base de datos: `bd_ofertas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id_empresas` int(3) NOT NULL,
  `razon_social` varchar(128) NOT NULL DEFAULT '',
  `ruc` varchar(11) NOT NULL DEFAULT '',
  `correo` varchar(64) NOT NULL DEFAULT '',
  `direccion` varchar(128) NOT NULL DEFAULT '',
  `telefono` varchar(10) NOT NULL DEFAULT '',
  `descripcion` varchar(500) NOT NULL DEFAULT '',
  `rubro` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertas`
--

CREATE TABLE `ofertas` (
  `id_ofertas` int(4) NOT NULL,
  `titulo` varchar(128) NOT NULL DEFAULT '',
  `pago` float NOT NULL DEFAULT 0,
  `horario` varchar(20) NOT NULL DEFAULT '',
  `especialidad` varchar(64) NOT NULL DEFAULT '',
  `modalidad` varchar(64) NOT NULL DEFAULT '',
  `fecha_publicacion` date DEFAULT NULL,
  `fecha_cierre` date DEFAULT NULL,
  `maximo_postulantes` int(4) NOT NULL DEFAULT 0,
  `cantidad_postulantes` int(4) NOT NULL DEFAULT 0,
  `estado` varchar(64) NOT NULL DEFAULT '',
  `id_empresas` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulaciones`
--

CREATE TABLE `postulaciones` (
  `id_postulaciones` int(5) NOT NULL,
  `id_postulantes` int(5) DEFAULT NULL,
  `id_oferta` int(4) DEFAULT NULL,
  `fecha_postulacion` date NOT NULL,
  `estado` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulante`
--

CREATE TABLE `postulante` (
  `id_postulante` int(5) NOT NULL,
  `dni` varchar(8) NOT NULL DEFAULT '0',
  `nombres` varchar(32) NOT NULL DEFAULT '',
  `apellidos` varchar(32) NOT NULL DEFAULT '',
  `correo` varchar(64) NOT NULL DEFAULT '',
  `telefono` varchar(10) NOT NULL DEFAULT '',
  `direccion` varchar(64) NOT NULL DEFAULT '',
  `estado_civil` varchar(16) NOT NULL DEFAULT '',
  `especialidad` varchar(64) NOT NULL DEFAULT '',
  `archivo_cv` varchar(5) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id_empresas`);

--
-- Indices de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  ADD PRIMARY KEY (`id_ofertas`);

--
-- Indices de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD PRIMARY KEY (`id_postulaciones`);

--
-- Indices de la tabla `postulante`
--
ALTER TABLE `postulante`
  ADD PRIMARY KEY (`id_postulante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_empresas` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  MODIFY `id_ofertas` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  MODIFY `id_postulaciones` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `postulante`
--
ALTER TABLE `postulante`
  MODIFY `id_postulante` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
