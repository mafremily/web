-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2020 a las 19:01:59
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto pcq02`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liquidación_nomina`
--

CREATE TABLE `liquidación_nomina` (
  `documento` varchar(35) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `cargo` int(11) NOT NULL,
  `salario` int(11) NOT NULL,
  `dias_laborados` int(11) NOT NULL,
  `basico` int(11) DEFAULT NULL,
  `subsidio` int(11) DEFAULT NULL,
  `hed` int(11) DEFAULT NULL,
  `hen` int(11) DEFAULT NULL,
  `hedf` int(11) DEFAULT NULL,
  `henf` int(11) DEFAULT NULL,
  `totalextras` int(11) DEFAULT NULL,
  `otrosdevengados` int(11) DEFAULT NULL,
  `totaldevengados` int(11) DEFAULT NULL,
  `eps` int(11) DEFAULT NULL,
  `pension` int(11) DEFAULT NULL,
  `fondo` int(11) DEFAULT NULL,
  `otrosdeducidos` int(11) DEFAULT NULL,
  `totaldeducido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `liquidación_nomina`
--

INSERT INTO `liquidación_nomina` (`documento`, `Nombres`, `apellidos`, `cargo`, `salario`, `dias_laborados`, `basico`, `subsidio`, `hed`, `hen`, `hedf`, `henf`, `totalextras`, `otrosdevengados`, `totaldevengados`, `eps`, `pension`, `fondo`, `otrosdeducidos`, `totaldeducido`) VALUES
('3456789', 'jose fredy ', 'vargas', 0, 666666, 1, 22222, 3428, 1, 1, 1, 1, 20832, 1, 0, NULL, NULL, NULL, NULL, NULL),
('9876543', 'jose fredy ', 'vargas', 0, 1000000, 10, 333333, 34285, 1, 1, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
('9999999', 'incap', 'incap', 999999, 10000000, 20, 6666667, 0, 10, 10, 10, 10, 3124998, 100000, 9891664, NULL, NULL, NULL, NULL, NULL),
('ertyui', 'rtyui', 'ertyu', 0, 100000, 1, 3333, 3428, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `liquidación_nomina`
--
ALTER TABLE `liquidación_nomina`
  ADD PRIMARY KEY (`documento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
