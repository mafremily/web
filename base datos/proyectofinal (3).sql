-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 01-12-2020 a las 20:09:40
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyectofinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `ID_CONTACTO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE_APELLIDO` varchar(150) NOT NULL,
  `TELEFONO` int(11) NOT NULL,
  `CORREO` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_CONTACTO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `contacto`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

DROP TABLE IF EXISTS `nomina`;
CREATE TABLE IF NOT EXISTS `nomina` (
  `id-nomina` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) NOT NULL,
  `APELLIDO` varchar(100) NOT NULL,
  `DOCUMENTO` int(11) NOT NULL,
  `CARGO` varchar(100) NOT NULL,
  `SALARIO` float NOT NULL,
  `DIAS_LABORADOS` float NOT NULL,
  `SUELDO-BASICO` float NOT NULL,
  `SUBSIDIO_TRANPORTE` float NOT NULL,
  `HED` float NOT NULL,
  `HEN` float NOT NULL,
  `HEDF` float NOT NULL,
  `HENF` float NOT NULL,
  `THE` float NOT NULL,
  `OTROS_DEVENGADOS` float NOT NULL,
  `TOTAL_DEVENGADOS` float NOT NULL,
  `EPS` float NOT NULL,
  `PENSION` float NOT NULL,
  `FONDO_SOLIDARIDAD` float NOT NULL,
  `OTROS_DEDUCIDOS` float NOT NULL,
  `TOTAL_DEDUCIDOS` float NOT NULL,
  `NETO_PAGAR` float NOT NULL,
  PRIMARY KEY (`id-nomina`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `nomina`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parafiscales`
--

DROP TABLE IF EXISTS `parafiscales`;
CREATE TABLE IF NOT EXISTS `parafiscales` (
  `ID_PARAFISCALES` int(11) NOT NULL AUTO_INCREMENT,
  `SALARIO` int(11) NOT NULL,
  `SENA` float NOT NULL,
  `I.C.B.F.` float NOT NULL,
  `CAJA_COMPENSACION` float NOT NULL,
  `NETO_PAGAR` float NOT NULL,
  PRIMARY KEY (`ID_PARAFISCALES`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `parafiscales`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestaciones`
--

DROP TABLE IF EXISTS `prestaciones`;
CREATE TABLE IF NOT EXISTS `prestaciones` (
  `SALARIO` int(11) NOT NULL,
  `FECHA_INICIO_CONTRATO` date NOT NULL,
  `FECHA_FINAL_CONTRATO` date NOT NULL,
  `RESULTADO` int(11) NOT NULL,
  `ID_PRESTACIONES` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID_PRESTACIONES`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `prestaciones`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
