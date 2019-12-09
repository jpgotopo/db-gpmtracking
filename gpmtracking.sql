-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2019 a las 13:59:46
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gpmtracking`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordgpm`
--

CREATE TABLE `coordgpm` (
  `idCoordGPM` int(255) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `IdRegion` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coordgpm`
--

INSERT INTO `coordgpm` (`idCoordGPM`, `nombre`, `IdRegion`) VALUES
(1, 'Junior Romero', 15),
(2, 'Ivan Joel Huamacto', 11),
(3, 'Edith Salamanca', 29),
(4, 'Ricardo Veliz', 7),
(5, 'Nasario Callirgos', 6),
(6, 'Josu? Huayra', 16),
(7, 'Esther Balladares', 30),
(8, 'Gerals Flores', 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gpmeros`
--

CREATE TABLE `gpmeros` (
  `idgpm` int(255) NOT NULL,
  `nombres` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `edad` int(255) NOT NULL,
  `telefono` int(20) NOT NULL,
  `IdIglesia` text COLLATE utf8_spanish_ci NOT NULL,
  `IdRegion` int(255) NOT NULL,
  `IdSubRegion` int(255) NOT NULL,
  `Pastor` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `idVice` int(255) NOT NULL,
  `idCoordGPM` int(255) NOT NULL,
  `LugarLlamado` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `MisionLlamado` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `gpmeros`
--

INSERT INTO `gpmeros` (`idgpm`, `nombres`, `edad`, `telefono`, `IdIglesia`, `IdRegion`, `IdSubRegion`, `Pastor`, `idVice`, `idCoordGPM`, `LugarLlamado`, `MisionLlamado`) VALUES
(1, 'Junior Romero', 33, 961089732, 'Mision Primitiva', 15, 0, 'Daniel Romero', 15, 1, 'Cáucaso Central', 'Predicación'),
(2, 'Katherie de Romero', 33, 991557883, 'Mision Primitiva', 15, 0, 'Daniel Romero', 15, 1, 'Cáucaso Central', 'Predicación'),
(3, 'Tracy Rojas', 20, 956719221, 'Oasis de Esperanza', 15, 0, 'Elmer de la Cruz', 15, 1, 'Medio Oriente', 'Medicina'),
(4, 'Max Tejeda', 24, 931870155, 'Cristo Rey de Gloria', 15, 0, 'Jaime Paquiyauri', 15, 1, 'Italia', 'Predicación'),
(5, 'Gina Paola Quispe', 26, 995813080, 'El Redentor', 7, 0, 'Gabriela', 7, 1, 'Africa', 'Enseñanza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `idRegion` int(255) NOT NULL,
  `region` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`idRegion`, `region`) VALUES
(1, 'Amazonas'),
(2, 'Áncash'),
(3, 'Apurímac'),
(4, 'Arequipa'),
(5, 'Ayacucho'),
(6, 'Cajamarca'),
(7, 'Callao'),
(8, 'Cusco'),
(9, 'Huancavelica'),
(10, 'Huánuco'),
(11, 'Ica'),
(12, 'Junín\r\n'),
(13, 'La Libertad'),
(14, 'Lambayeque'),
(15, 'Lima Centro'),
(16, 'Lima Este'),
(17, 'Lima Noreste'),
(18, 'Lima Norte'),
(19, 'Lima Provincias'),
(20, 'Lima Sur'),
(21, 'Loreto'),
(22, 'Madre de Dios'),
(23, 'Moquegua'),
(24, 'Pasco'),
(25, 'Pataz'),
(26, 'Piura'),
(27, 'Puno'),
(28, 'San Mart?n\r'),
(29, 'Tacna'),
(30, 'Tumbes'),
(31, 'Ucayali');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subregiones`
--

CREATE TABLE `subregiones` (
  `idSubRegion` int(255) NOT NULL,
  `nombreSub` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `idRegion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subregiones`
--

INSERT INTO `subregiones` (`idSubRegion`, `nombreSub`, `idRegion`) VALUES
(1, 'SUB REGION CALLEJON DE HUAYLAS', 2),
(2, 'SUB REGION GRAN CHAVÍN', 2),
(3, 'SUB REGION MARAÑON', 2),
(4, 'SUB REGION EL PACIFICO', 2),
(5, 'SIERRA NORTE', 2),
(6, 'SUBREGION HUANTA', 3),
(7, 'SUBREGI?N VRAEM', 3),
(8, 'SUBREGI?N HUAMANGA', 3),
(9, 'SUBREGION CANGALLO', 3),
(10, 'SUBREGIÓN LUCANAS', 3),
(11, 'SUB REGION CAJAMARCA -CELENDIN', 6),
(12, 'SUB REGION CAJABAMBA- SAN MARCOS', 6),
(13, 'SUB REGION BAMBAMARCA - CHOTA SAN MIGUEL', 6),
(14, 'SUBREGION CUTERVO SANTA CRUZ', 6),
(15, 'SUBREGION JAÉN - SAN IGNACIO', 6),
(16, 'SUB REGION ACOBAMBA', 9),
(17, 'SUBREGION ANGARAES  HUAYTARÁ', 9),
(18, 'SUBREGION CHURCAMPA ', 9),
(19, 'SUBREGION HUANVCA Y CASTROVIRREYNA', 9),
(20, 'SUBREGION PAMPAS - TAYACAJA', 9),
(21, 'HUANUCO', 10),
(22, 'SUB REGION LEONCIO PRADO', 10),
(23, 'SUBREGION TOCACHE', 10),
(24, 'SUBREGION LLATA HUAMALIES', 10),
(25, 'LAURICOCHA', 10),
(26, 'DOS DE MAYO', 10),
(27, 'YAROWILCA', 10),
(28, 'AMBO', 10),
(29, 'SUB REGION HUANCAYO', 12),
(30, 'SUB REGION SELVA CENTRAL', 12),
(31, 'SUB REGION JUNÍN', 12),
(32, 'SUB REGION VALLE CHICAMA', 13),
(33, 'SUB REGION TRUJILLO', 13),
(34, 'SUB REGION SANCHEZ CARRION', 13),
(35, 'SUB REGION HUARMACA', 14),
(36, 'SUB REGION CHICLAYO', 14),
(37, 'SUB REGION AYMARA FRONTERA SUR', 27),
(38, 'SUB REGION ILAVE', 27),
(39, 'JULIACA', 27),
(40, 'LAGO AZUL', 27),
(41, 'JOSE DOMINGO CHOQUEHUANCA', 27),
(42, 'SAN ANTON CARABAYA', 27),
(43, 'LACUSTRE PUNO', 27),
(44, 'ALTO AMAZONAS\nY EL DATEM', 21),
(45, 'HUAMCABAMBA', 26),
(46, 'RIOJA NOR ESTE', 28),
(47, 'MOYOBAMBA', 28),
(48, 'LAS PALMERAS', 28),
(49, 'HUALLAGA CENTRAL', 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viceintendentes`
--

CREATE TABLE `viceintendentes` (
  `idVice` int(255) NOT NULL,
  `nombres` text COLLATE utf8_spanish_ci NOT NULL,
  `idRegion` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `viceintendentes`
--

INSERT INTO `viceintendentes` (`idVice`, `nombres`, `idRegion`) VALUES
(1, 'WALTER OLIVEROS PADILLA', 1),
(2, 'TEOFILO PISCO MENDIETA', 2),
(3, 'MATEO ASCUE OSORIO', 3),
(4, 'DIONICIO FRANCISCO MITACC REYES', 4),
(5, 'JOSE HUAMAN MEJIA', 5),
(6, 'JOSE URBANO GUEVARA CORTEZ', 6),
(7, 'MAURO HERMENEGILDO SAUCEDO CASTRO', 7),
(8, 'JOVITA PATI?O DE ESPINOZA', 8),
(9, 'ZOSIMO ARROYO OBREGON', 9),
(10, 'ANTONIO SANCHEZ', 10),
(11, 'DAVID COLCHADO  NONAJULCA', 11),
(12, 'ALFREDO RAFAEL PORTILLA AVELINO', 12),
(13, 'HECTOR ANGEL UCAÑAN URIOL', 13),
(14, 'JORGE LUIS ROMERO BRAVO', 14),
(15, 'PERSI EDWIN CHUNGA BLANCO', 15),
(16, 'CABREJOS  POZO  CESAR AUGUSTO', 16),
(17, 'AURELIO ISAAC HUAMAN NIEVES', 17),
(18, 'PARIASCA  PEREZ  NAVAL DAVID', 18),
(19, 'BAHUMER CARDENAS TREBEJO', 19),
(20, 'ESTUARDO ZEVALLOS VARGAS', 20),
(21, 'WILMER ENRIQUE ARRIAGA AMARINGO', 21),
(22, 'PEDRO PASCUAL HUAMANI ALA', 22),
(23, 'MAGDA E. TAPIA ESQUIAGOLA DE DIAZ', 23),
(24, 'HEDGAR LUIS VIVAR OSORIO', 24),
(25, 'MARCIAL VALENCIA VALDIVIEZO', 25),
(26, 'CARLOS WILFREDO BOGGIANNO PAREDES', 26),
(27, 'EDILBERTO LUCIO PEREZ REVILLA', 27),
(28, 'JOSE DOLORES CORTEZ NU?EZ', 28),
(29, 'HUGO TEODORO HUANCA CHARCA', 29),
(30, 'GILBERTO LOZANO CRUZADO', 30),
(31, 'RICARDO MORI HURTADO', 31);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coordgpm`
--
ALTER TABLE `coordgpm`
  ADD PRIMARY KEY (`idCoordGPM`);

--
-- Indices de la tabla `gpmeros`
--
ALTER TABLE `gpmeros`
  ADD PRIMARY KEY (`idgpm`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`idRegion`);

--
-- Indices de la tabla `subregiones`
--
ALTER TABLE `subregiones`
  ADD PRIMARY KEY (`idSubRegion`);

--
-- Indices de la tabla `viceintendentes`
--
ALTER TABLE `viceintendentes`
  ADD PRIMARY KEY (`idVice`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `gpmeros`
--
ALTER TABLE `gpmeros`
  MODIFY `idgpm` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `idRegion` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
