-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2020 a las 22:42:23
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `da_att`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `ID` int(25) NOT NULL,
  `Curso` varchar(50) NOT NULL,
  `Autor` varchar(50) NOT NULL,
  `Descripcion` varchar(250) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`ID`, `Curso`, `Autor`, `Descripcion`, `link`) VALUES
(1, 'Curso', 'yyo', 'bla bla', '//D:/Landin/Trabajo/Bolivia/Manuales%20de%20los%20equipos%20de%20Bolivia/Estera%20(RUN%207410TJ).pdf'),
(2, 'Curso', 'yyo', 'bla bla', 'D:/Landin/Trabajo/Bolivia/Manuales%20de%20los%20equipos%20de%20Bolivia/Estera%20(RUN%207410TJ).pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equiposinstalados`
--

CREATE TABLE `equiposinstalados` (
  `ID` int(255) NOT NULL,
  `Provincia` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Hospital` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Equipo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `N_Serie` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Ctto_Venta` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Fecha_Instalacion` date DEFAULT NULL,
  `Observaciones` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Ctto_De_ST` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `MP` int(50) NOT NULL,
  `Fecha_Ultimo_MP` date DEFAULT NULL,
  `MC` int(50) NOT NULL,
  `Fecha_Ultimo_MC` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equiposinstalados`
--

INSERT INTO `equiposinstalados` (`ID`, `Provincia`, `Hospital`, `Equipo`, `N_Serie`, `Ctto_Venta`, `Fecha_Instalacion`, `Observaciones`, `Ctto_De_ST`, `MP`, `Fecha_Ultimo_MP`, `MC`, `Fecha_Ultimo_MC`) VALUES
(1, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'N5 MNIO', '17AND001NM13', 'CN.018-012-2017', '1970-01-01', '', '', 0, '1970-01-01', 0, '1970-01-01'),
(2, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'M5 UCI', '17AND001M023', 'CN.018-012-2017', '2018-04-25', '', '018-025-2016 ', 0, '1970-01-01', 0, '1970-01-01'),
(3, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'N5', '08AND001N-01', '', '1970-01-01', '(+ 10 AÃ‘OS)', '', 0, '2018-04-30', 0, '2018-11-21'),
(4, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'N5 MNIO', '13AND1200NM02', '', '2015-07-03', '', '', 0, '1970-01-01', 0, '1970-01-01'),
(5, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'M5', '13AND001M038', '', '2014-11-25', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(6, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'M5', '13AND001M012', '', '2014-02-17', '', '', 0, '2018-11-28', 0, '2018-07-28'),
(7, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'FX', '05ANC00F1-15', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0018-12-22', 0, '2018-07-04'),
(8, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'M5', '04BND001M-32', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-08-20', 0, '0000-00-00'),
(9, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'A5', '04BND001A-09', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-03-27', 0, '2018-11-21'),
(10, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'FX', '07ANC00F1-08', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-11-23', 0, '2018-01-05'),
(11, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'M5', '08AND001M-24', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-11-29', 0, '0000-00-00'),
(12, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'M5', '08AND001M-22', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-11-29', 0, '2018-09-11'),
(13, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'M5', '08AND001M-20', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-11-29', 0, '2018-09-11'),
(14, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'FX', '05ANC00F1-17', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-11-29', 0, '0000-00-00'),
(15, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'N5', '08AND001N-07', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-11-27', 0, '2018-07-03'),
(16, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'N5', '08AND001N-06', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-11-20', 0, '2018-04-18'),
(17, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'N5', '08AND001N-05', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-11-21', 0, '2018-11-29'),
(18, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'N5', '08AND001N-04', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-11-27', 0, '2018-04-18'),
(19, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'N5', '08AND001N-03', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-11-29', 0, '0000-00-00'),
(20, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'M5', '08AND001M-25', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-11-29', 0, '0000-00-00'),
(21, 'La Habana', 'Instituto de NeurologÃ­a y NeurocirugÃ­a (INN)', 'N5', '05AND001N-27', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-11-22', 0, '2018-07-06'),
(22, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'M5 UCI', '18AND001M023', 'CN.018-015-2018', '2019-11-04', '', '', 0, '1970-01-01', 0, '1970-01-01'),
(23, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'M5', '13AND001M035', '', '0000-00-00', 'hacer etiqueta (equipo incluído)', '04/2017', 0, '0000-00-00', 0, '0000-00-00'),
(24, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'M5 UCI', '17AND001M026', 'CN.018-012-2017', '2018-03-12', '', '', 0, '0018-12-22', 0, '2018-06-12'),
(25, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'AC3.2', 'NKT16012', 'CN.018-002-2016 Sup.1', '2017-05-15', '', '', 0, '0018-12-22', 0, '0000-00-00'),
(26, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'N5', '14AND001N024', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0018-12-22', 0, '2018-07-18'),
(27, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'N5', '14AND001N033', 'CN.018-002-2016 Sup.1', '2016-10-31', '', '', 0, '2018-11-22', 0, '2018-11-22'),
(28, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'N5', '14AND001N013', '', '2015-07-29', '', '', 0, '2018-11-22', 0, '2018-11-05'),
(29, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'N5', '14AND001N004', '', '2015-07-06', '', '', 0, '2018-11-22', 0, '2018-04-25'),
(30, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'M5', '13AND001M028', '', '2015-11-24', '', '', 0, '2018-11-26', 0, '2018-11-26'),
(31, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'M5', '13AND001M037', '', '2014-11-24', '', '', 0, '2018-11-22', 0, '2018-06-12'),
(32, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'N5 MNIO', '13AND001NM01', '', '2015-01-20', '', '', 0, '2018-11-23', 0, '2018-04-18'),
(33, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'M5', '13AND001M009', '', '2014-02-15', '', '', 0, '2018-11-26', 0, '2018-03-21'),
(34, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'PANDA', '06ANB00P1-08', '', '2015-01-01', '(+ 10 AÃ‘OS)', '', 0, '2018-11-26', 0, '0000-00-00'),
(35, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'M5', '13AND001M021', '', '2014-02-15', '', '', 0, '2018-11-26', 0, '2018-09-19'),
(36, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'M5', '13AND001M008', '', '2014-02-15', '', '', 0, '2018-11-22', 0, '2018-11-23'),
(37, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'FX', '10ANC00F1008', '', '2013-11-21', '', '', 0, '2018-03-13', 0, '0000-00-00'),
(38, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'N5', '10AND001N012 ', '', '2011-12-08', '10AND001N-012?', '', 0, '2018-11-22', 0, '2018-03-02'),
(39, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'M5', '04BND001M-11', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-11-21', 0, '2018-03-06'),
(40, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'N5', '05AND001N-24', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '2018-03-13', 0, '2018-03-02'),
(41, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'AC3.1', 'AULNE14003', '', '2014-11-10', 'BAJO LLAVE', '', 0, '0000-00-00', 0, '2018-09-20'),
(42, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'A5', '14AND001A022', 'CN.018-032-2016', '2017-03-09', '', '', 0, '2018-03-16', 0, '2018-10-23'),
(43, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'M5 UCI', '17AND001M019', 'CN.018-012-2017', '2018-08-30', '', '01/2017', 0, '1970-01-01', 0, '1970-01-01'),
(44, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'M5', '17AND001M011', 'CN.018-015-2018', '2018-03-27', '', '', 0, '2018-06-14', 0, '1970-01-01'),
(45, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'AC3.2', 'NKT16010', '', '2017-11-29', '', '', 0, '2018-06-19', 0, '2018-11-13'),
(46, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'FX', '16ANC00F1005', 'CN.018-032-2016', '2017-03-02', 'VERIFICAR SI ES UN PRESTAMO', '', 0, '2018-06-14', 0, '1970-01-01'),
(47, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'A5', '16AND001A008', 'CN.018-031-2016', '2017-03-22', '', '', 0, '2018-06-19', 0, '1970-01-01'),
(48, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'N5', '14AND001N031', '', '2017-05-18', '', '', 0, '1970-01-01', 0, '2018-07-31'),
(49, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'PANDA', '06ANB00P1-02', '', '2015-01-01', '2015 (+ 10 Aï¿½OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(50, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'FX', '04BNC00F1-13', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(51, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'AC3.1', 'AULNE15001', 'CN.018-001-2015', '2016-03-11', '', '', 0, '2018-06-19', 0, '2018-09-20'),
(52, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'EOA2.1', 'ECLNE14022', 'CN.018-001-2015', '2015-11-19', '', '', 0, '2018-06-19', 0, '1970-01-01'),
(53, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'N5', '14AND001N016', 'CN.018-001-2015', '0000-00-00', '', '', 0, '2018-06-04', 0, '1970-01-01'),
(54, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'M5 VIDEO', '14AND001M030', 'CN.018-001-2015', '2015-12-22', '', '', 0, '2018-06-18', 0, '1970-01-01'),
(55, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'M5', '13AND001M013', '', '2014-02-17', '', '', 0, '2018-06-18', 0, '1970-01-01'),
(56, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'M5', '10AND001M007', '', '2012-10-19', '', '', 0, '2018-06-14', 0, '1970-01-01'),
(57, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'N5', '05AND001N-22', '', '1970-01-01', 'ultima vez visto en el 2015  (+ 10 AÃ‘OS)', '', 0, '2018-06-18', 0, '2018-06-04'),
(58, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'M5', '14AND001M031', 'CN.018-002-2016 Sup.1', '2017-05-18', 'no aparece documentaciï¿½n en el exp.', '', 0, '2018-06-18', 0, '1970-01-01'),
(59, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Docente Dr. Salvador Allende', 'AC3.2', 'NKT17006', 'CN.018-012-2017', '1970-01-01', '', '', 0, '1970-01-01', 0, '1970-01-01'),
(60, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Docente Dr. Salvador Allende', 'A5', '16AND001A002', 'CN.018-031-2016', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(61, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Docente Dr. Salvador Allende', 'AC3.2', 'NKT18001', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(62, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Docente Dr. Salvador Allende', 'A5', '09AND001A-25', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(63, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Miguel EnrÃ­quez', 'FX', '17ANC00F1006', 'CN.018-012-2017', '1970-01-01', '', '', 0, '1970-01-01', 0, '1970-01-01'),
(64, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Miguel EnrÃ­quez', 'N5', '14AND001N002', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(65, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Miguel EnrÃ­quez', 'M5', '10AND001M013', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(66, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Miguel EnrÃ­quez', 'AC3.2', 'NKT18004', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(67, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Miguel EnrÃ­quez', 'A5', '16AND001A004', 'CN.018-031-2016', '0000-00-00', 'no aparece documentación en el exp. Hacer etiqueta ', '', 0, '0000-00-00', 0, '0000-00-00'),
(68, 'La Habana', 'Hospital Clínico Quirúrgico Provincial Joaquín Alb', 'FX', '16ANC00F1011', 'CN.018-032-2016', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(69, 'La Habana', 'Hospital Clínico Quirúrgico Provincial Joaquín Alb', 'AC3.2', 'NKT18005', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(70, 'La Habana', 'Hospital Clínico Quirúrgico Provincial Joaquín Alb', 'AC3.1', 'AULNE14001', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(71, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico 10 de Octubre', 'M5', '14AND001M037', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(72, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico 10 de Octubre', 'N5', '17AND001N010', 'CN.018-012-2017', '1970-01-01', '', '', 0, '1970-01-01', 0, '1970-01-01'),
(73, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico 10 de Octubre', 'EOA2.2', 'NMX16006', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(74, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico 10 de Octubre', 'AC3.2', 'NKT18007', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(75, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico 10 de Octubre', 'AC3.1', 'AULNE14004', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(76, 'La Habana', 'Hospital Clínico Quirúrgico Julio Trigo', 'FX', '17ANC00F1004', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(77, 'La Habana', 'Balear/ LH', 'A5', '17AND001A019', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(78, 'La Habana', 'Hospital General Docente Enrique Cabrera Cossío', 'AC3.2', 'NKT17009', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(79, 'La Habana', 'Hospital General Docente Enrique Cabrera Cossío', 'A5', '16AND001A011', 'CN.018-031-2016', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(80, 'La Habana', 'Hospital General Docente Enrique Cabrera Cossío', 'M5', '10AND001M006', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(81, 'La Habana', 'Cardiocentro Pediátrico William Soler', 'N5', '18AND001N007', 'CVEM.05-2019', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(82, 'La Habana', 'Cardiocentro Pediátrico William Soler', 'FX', '17ANC00F1013', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(83, 'La Habana', 'Cardiocentro Pediátrico William Soler', 'M5 VIDEO', '17AND001M013', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(84, 'La Habana', 'Cardiocentro Pediátrico William Soler', 'N5', '14AND001N023', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(85, 'La Habana', 'Cardiocentro Pediátrico William Soler', 'AC3.1', 'AUL  10061', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(86, 'La Habana', 'Cardiocentro Pediátrico William Soler', 'AC3.1', 'AULNE100202', '', '0000-00-00', 'VERIFICAR NUMERO DE SERIE', '', 0, '0000-00-00', 0, '0000-00-00'),
(87, 'La Habana', 'Cardiocentro Pediátrico William Soler', 'N5', '17AND001N021', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(88, 'La Habana', 'Cardiocentro Pediátrico William Soler', 'FX', '05ANC00F1-07', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(89, 'La Habana', 'Cardiocentro Pediátrico William Soler', 'A5', '07AND001A-05', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(90, 'La Habana', 'Hospital Pediátrico Docente Juan Manuel Márquez', 'A5', '16AND001A010', 'CVEM.05-2019', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(91, 'La Habana', 'Hospital Pediátrico Docente Juan Manuel Márquez', 'M5', '13AND001M029', '', '0000-00-00', '', '03/2017', 0, '0000-00-00', 0, '0000-00-00'),
(92, 'La Habana', 'Hospital Pediátrico Docente Juan Manuel Márquez', 'M5 VIDEO', '14AND001M023', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(93, 'La Habana', 'Hospital Pediátrico Docente Juan Manuel Márquez', 'M5', '13AND001M010', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(94, 'La Habana', 'Hospital Pediátrico Docente Juan Manuel Márquez', 'A5', '06AND001A-07', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(95, 'La Habana', 'Hospital Pediátrico Docente Juan Manuel Márquez', 'N5', '05AND001N-20', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(96, 'La Habana', 'Hospital Pediï¿½trico Docente Juan Manuel Mï¿½rque', 'FX', '03ANC00F1-73', '', '0000-00-00', '(+ 10 AÃ‘OS)  NO APARECE', '', 0, '0000-00-00', 0, '0000-00-00'),
(97, 'La Habana', 'Hospital Pediátrico Docente Juan Manuel Márquez', 'M5', '04BND001M-08', '', '0000-00-00', '(+ 10 AÃ‘OS) NO APARECE', '', 0, '0000-00-00', 0, '0000-00-00'),
(98, 'La Habana', 'Hospital Pediátrico de Centro Habana', 'M5', '16AND001M006', 'CN.018-012-2017', '0000-00-00', '', '018-047-2016', 0, '0000-00-00', 0, '0000-00-00'),
(99, 'La Habana', 'Hospital Pediátrico de Centro Habana', 'A5', '14AND001A027', 'CN.018-032-2016', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(100, 'La Habana', 'Hospital Pediátrico de Centro Habana', 'A5', '14AND001A015', 'CN.018-001-2015', '0000-00-00', 'NO TIENEN LOCAL', '', 0, '0000-00-00', 0, '0000-00-00'),
(101, 'La Habana', 'Hospital Pediátrico de Centro Habana', 'A5', '07AND001A-12', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(102, 'La Habana', 'Hospital Pediátrico de Centro Habana', 'M5', '06AND001M-04', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(103, 'La Habana', 'Hospital Pediátrico de Centro Habana', 'N5', '06AND001N-08', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(104, 'La Habana', 'Hospital Pediátrico de Centro Habana', 'FX', '06ANC00F1-18', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(105, 'La Habana', 'Hospital Pediátrico Marfán', 'A5', '14AND001A024', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(106, 'La Habana', 'Hospital Pediátrico Marfán', 'M5', '14AND001M018', '', '0000-00-00', 'Bajo llave. ', '', 0, '0000-00-00', 0, '0000-00-00'),
(107, 'La Habana', 'Hospital Pediátrico Marfán', 'EOA2.1', 'ECLNE11001', '', '0000-00-00', 'PRESTAMO ¿de dónde?', '', 0, '0000-00-00', 0, '0000-00-00'),
(108, 'La Habana', 'Hospital Pediátrico Marfán', 'A5', '06AND001A-13', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(109, 'La Habana', 'Hospital Pediátrico Marfán', 'AC3.1', 'AULNE12002', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(110, 'La Habana', 'Hospital Pediátrico Marfán', 'N5', '06AND001N-12', '', '0000-00-00', '(+ 10 AÑOS)Bajo llave. ', '', 0, '0000-00-00', 0, '0000-00-00'),
(111, 'La Habana', 'Policlinico Pedro Borras', 'EOA2.2', 'NMX17012', 'CN.018-012-2017', '0000-00-00', 'Equipo instalado por el cliente', '', 0, '0000-00-00', 0, '0000-00-00'),
(112, 'La Habana', 'Policlinico Pedro Borras', 'FX', '06ANC00F1-08', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(113, 'La Habana', 'Policlinico Pedro Borras', 'N5', '06AND001N-18', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(114, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'EOA2.2', 'NMX18038', 'SN', '0000-00-00', 'Préstamo CNEURO?', '', 0, '0000-00-00', 0, '0000-00-00'),
(115, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'EOA2.2', 'NMX17026', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(116, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'EOA2.2', 'NMX17014', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(117, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'M5', '09AND001M-27', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(118, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'FX', '14ANC00F1021', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(119, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'N5', '14AND001N008', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(120, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'A5', '06AND001A-28', '', '0000-00-00', '13/03/2017 (+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(121, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'EOA2.2', 'NMX16004', 'CN.018-002-2016 Sup.1', '0000-00-00', 'fue instalado por el cliente', '', 0, '0000-00-00', 0, '0000-00-00'),
(122, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'EOA2.2', 'NMX16007', 'CN.018-002-2016 Sup.1', '0000-00-00', 'fue instalado por el cliente', '', 0, '0000-00-00', 0, '0000-00-00'),
(123, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'M5', '04BND001M-12', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(124, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'A5', '06AND001A-10', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(125, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'A5', '05AND001A-10', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(126, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'EOA2.1', 'ECLNE10017', '', '0000-00-00', 'ECL 10017?', '', 0, '0000-00-00', 0, '0000-00-00'),
(127, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'N5', '06AND001N-05', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(128, 'La Habana', 'Hospital Ortopédico Docente Fructuoso Rodríguez', 'N5', '06AND001N-09', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(129, 'La Habana', 'Complejo Científico Ortopédico Internacional Frank', 'M5', '06AND001M-25', '', '0000-00-00', '(+ 10 AÑOS),BAJO LLAVE PC DAÑADA', '018-027-2018', 0, '0000-00-00', 0, '0000-00-00'),
(130, 'La Habana', 'Complejo Científico Ortopédico Internacional Frank', 'N5', '06AND001N-03', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(131, 'La Habana', 'Complejo Científico Ortopédico Internacional Frank', 'N5 MNIO', '17AND001NM18', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(132, 'La Habana', 'Complejo Científico Ortopédico Internacional Frank', 'N5', '03AND001N-44', '', '0000-00-00', '(+ 10 AÃ‘OS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(133, 'La Habana', 'Hospital Julio Díaz', 'N5', '10AND001N020', '', '0000-00-00', '', '018-031-2018', 0, '0000-00-00', 0, '0000-00-00'),
(134, 'La Habana', 'Hospital Julio Díaz', 'M5', '09AND001M-26', '', '2020-11-21', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(135, 'La Habana', 'Centro de Investigaciones Médico Quirúrgicas (CIME', 'N5 MNIO', '18AND001NM012', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(136, 'La Habana', 'Centro de Investigaciones Médico Quirúrgicas (CIME', 'M5 UCI', '18AND001M029', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(137, 'La Habana', 'Centro de Investigaciones Médico Quirúrgicas (CIME', 'N5', '18AND001N004', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(138, 'La Habana', 'Centro de Investigaciones Médico Quirúrgicas (CIME', 'A5', '14AND001A009', 'CVEM.05-2019', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(139, 'La Habana', 'Centro de Investigaciones Médico Quirúrgicas (CIME', 'M5', '04BND001M-14', '', '0000-00-00', '(+ 10 AÑOS) PRESTAMO ¿de dónde?', '834-037-2018', 0, '0000-00-00', 0, '0000-00-00'),
(140, 'La Habana', 'Centro de Investigaciones Médico Quirúrgicas (CIME', 'N5', '03AND001N-42', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(141, 'La Habana', 'Centro de Investigaciones Médico Quirúrgicas (CIME', 'FX', '04BNC00F1-11', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(142, 'La Habana', 'Centro de Investigaciones Médico Quirúrgicas (CIME', 'PANDA', '03ANB00P1-13', '', '0000-00-00', '2015 (+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(143, 'La Habana', 'Centro de Investigaciones sobre Longevidad, Enveje', 'M5', '13AND001M039', '', '0000-00-00', '', '018-043A-2016', 0, '0000-00-00', 0, '0000-00-00'),
(144, 'La Habana', 'Centro de Investigaciones sobre Longevidad, Enveje', 'N5', '06AND001N-07', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(145, 'La Habana', 'Instituto de Medicina Legal', 'M5', '04BND001M-03', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(146, 'La Habana', 'Instituto Nacional de Medicina del Deporte', 'N5', '14AND001N026', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(147, 'La Habana', 'Instituto Nacional de Medicina del Deporte', 'N5', '10AND001N018', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(148, 'La Habana', 'Instituto Nacional de Medicina del Deporte', 'FX', '09ANC00F1-10', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(149, 'La Habana', 'Hospital Psiquiátrico de La Habana Cdte Dr Eduardo', 'M5', '03AND001M-10', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(150, 'La Habana', 'Hospital Psiquiátrico de La Habana Cdte Dr Eduardo', 'M5', '03AND001M-02', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(151, 'La Habana', 'Cesam Marin', 'M5', '04BND001M-01', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(152, 'La Habana', 'Clínica del Adolescente', 'M5', '17AND001M007', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(153, 'La Habana', 'Clínica del Adolescente', 'M5 VIDEO', '06AND001M-13', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(154, 'La Habana', 'Centro Internacional de Restauración Neurológica (', 'N5 MNIO', '18AND001NM008', 'CN.018-015-2018.', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(155, 'La Habana', 'Centro Internacional de Restauración Neurológica (', 'M5 UCI', '17AND001M025', 'CN.018-012-2017', '0000-00-00', '', '018-043-2013', 0, '0000-00-00', 0, '0000-00-00'),
(156, 'La Habana', 'Centro Internacional de Restauración Neurológica (', 'A5', '13AND001A011', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(157, 'La Habana', 'Centro Internacional de Restauración Neurológica (', 'FX', '10ANC00F1010', '', '0000-00-00', 'Pendiente de entregar Laptop para la instalación', '', 0, '0000-00-00', 0, '0000-00-00'),
(158, 'La Habana', 'Centro Internacional de Restauración Neurológica (', 'FX', '10ANC00F1013', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(159, 'La Habana', 'Centro Internacional de Restauración Neurológica (', 'M5', '04BND001M-18', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(160, 'La Habana', 'Centro Internacional de Restauración Neurológica (', 'M5', '06AND001M-17', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(161, 'La Habana', 'Centro Internacional de Restauración Neurológica (', 'N5', '05AND001N-18', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(162, 'La Habana', 'Centro Internacional de Salud Las Praderas', 'A5', '17AND001A006', 'CN.018-012-2017', '0000-00-00', 'Falta HDD', '834-035-2018', 0, '0000-00-00', 0, '0000-00-00'),
(163, 'La Habana', 'Centro Internacional de Salud Las Praderas', 'A5', '05AND001A-11', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(164, 'La Habana', 'Centro Internacional de Salud Las Praderas', 'M5', '13AND001M002', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(165, 'La Habana', 'Centro Internacional de Salud Las Praderas', 'N5', '13AND001N009', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(166, 'La Habana', 'Clínica Internacional Cira García', 'FX', '06ANC00F1-01', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(167, 'La Habana', 'Profilactorio Nacional Obrero', 'AC3.1', 'AULNE10045', '', '0000-00-00', '', '018-048-2016', 0, '0000-00-00', 0, '0000-00-00'),
(168, 'La Habana', 'Profilactorio Nacional Obrero', 'A5', '05AND001A-08', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(169, 'La Habana', 'Medicina del Trabajo INSAT', 'A5', '12BND001A027', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(170, 'La Habana', 'Medicina del Trabajo INSAT', 'N5', '13AND001N005', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(171, 'La Habana', 'Medicina del Trabajo INSAT', 'M5', '08AND001M-21', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(172, 'La Habana', 'Centro Auditivo de La Habana', 'AC3.2', 'NKT16004', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(173, 'La Habana', 'Centro de Ingeniería Genética y Biotecnología (CIG', 'N5', '05AND001N-25', '', '0000-00-00', 'ultima vez visto en el 2010 (+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(174, 'La Habana', 'Centro de Ingeniería Genética y Biotecnología (CIG', 'N5', '07AND001N-06', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(175, 'La Habana', 'Hospital Militar Central Dr Luis Díaz Soto', 'AC3.2', 'NKT16009', 'CN.018-026-2016', '0000-00-00', '', '018-051-2016', 0, '0000-00-00', 0, '0000-00-00'),
(176, 'La Habana', 'Hospital Militar Central Dr Luis Díaz Soto', 'A5', '13AND001A018', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(177, 'La Habana', 'Hospital Militar Central Dr Luis Díaz Soto', 'PANDA', '06ANB00P1-04', '', '0000-00-00', '10/09/2015 (+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(178, 'La Habana', 'Hospital Militar Central Dr Luis Díaz Soto', 'A5', '07AND001A-07', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(179, 'La Habana', 'Hospital Militar Central Dr Luis Díaz Soto', 'N5', '05AND001N-23', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(180, 'La Habana', 'Hospital Militar Central Dr Luis Díaz Soto', 'FX', '06ANC00F1-17', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(181, 'La Habana', 'Centro Medicina Subacuática/LH', 'M5', '18AND001M016', 'CN.834-046-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(182, 'La Habana', 'Hospital Militar Dr. Carlos J. Finlay', 'AC3.2', 'NKT16007', 'CN.018-002-2016 Sup.1', '0000-00-00', 'Identificado en MP', '', 0, '0000-00-00', 0, '0000-00-00'),
(183, 'La Habana', 'Hospital Militar Dr. Carlos J. Finlay', 'M5', '18AND001M010', 'CN.834-046-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(184, 'La Habana', 'Hospital Militar Dr. Carlos J. Finlay', 'A5', '13AND001A015', '', '0000-00-00', '', '02/2017', 0, '0000-00-00', 0, '0000-00-00'),
(185, 'La Habana', 'Hospital Militar Dr. Carlos J. Finlay', 'EOA2.2', 'NMX16017', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(186, 'La Habana', 'Hospital Militar Dr. Carlos J. Finlay', 'AC3.1', 'AULNE10048', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(187, 'La Habana', 'Hospital Militar Dr. Carlos J. Finlay', 'A5', '10AND001A043', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(188, 'La Habana', 'Hospital Militar Dr. Carlos J. Finlay', 'N5', '10AND001N014', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(189, 'La Habana', 'Hospital Militar Dr. Carlos J. Finlay', 'FX', '04BNC00F1-12', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(190, 'La Habana', 'Hospital Militar Dr. Carlos J. Finlay', 'FX', '05ANC00F1-06', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(191, 'La Habana', 'CEDESA MININT', 'A5', '13AND001A013', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(192, 'La Habana', 'CEDESA MININT', 'M5', '13AND001M034', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(193, 'La Habana', 'CEDESA MININT', 'FX', '13ANC00F1012', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(194, 'La Habana', 'CEDESA MININT', 'N5', '14AND001N003', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(195, 'La Habana', 'CEDESA MININT', 'AC3.1', 'AULNE14020', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(196, 'La Habana', 'Clínica Militar no. 43 MININT', 'PANDA', '03ANB00P1-12', '', '0000-00-00', 'hacer etiqueta (equipo incluído)', '', 0, '0000-00-00', 0, '0000-00-00'),
(197, 'La Habana', 'Clínica Militar no. 43 MININT', 'A5', '14AND001A008', 'CN.018-040-2016', '0000-00-00', 'comprobar etiqueta', '', 0, '0000-00-00', 0, '0000-00-00'),
(198, 'La Habana', 'Clínica Militar no. 43 MININT', 'EOA2.2', 'NMX16014', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(199, 'La Habana', 'Clínica Militar no. 43 MININT', 'AC3.1', 'AULNE10047', '', '0000-00-00', 'lo q existe es Acta de Entrega e Instalación a Comercial', '', 0, '0000-00-00', 0, '0000-00-00'),
(200, 'La Habana', 'Clínica Militar no. 43 MININT', 'A5', '10AND001A042', '', '0000-00-00', 'ultima vez visto en el 2012', '', 0, '0000-00-00', 0, '0000-00-00'),
(201, 'La Habana', 'Clínica Militar no. 43 MININT', 'M5', '06BND001M-18', '', '0000-00-00', '(+ 10 AÑOS) ultima vez visto en el 2013', '', 0, '0000-00-00', 0, '0000-00-00'),
(202, 'La Habana', 'IACC (Instituto de Aeronáutica Civil de Cuba)', 'FX', '18ANC00F1005', 'CN.49-2019', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(203, 'La Habana', 'IACC (Instituto de Aeronáutica Civil de Cuba)', 'M5', '04BND001M-15', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(204, 'La Habana', 'Hospital de Emergencia Freyre de Andrade', 'AC3.2', 'NKT17011', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(205, 'La Habana', 'MINED', 'OptimA', '-', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(206, 'La Habana', 'Maternidad de Línea (América Arias)', 'EOA', 'ECLNE14016', 'CN.018-002-2016', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(207, 'P.del  Río', 'Hospital Pediátrico Provincial Pepe Portilla', 'FX', '17ANC00F1002', 'CN.018-012-2017', '0000-00-00', '', '08/2017', 0, '0000-00-00', 0, '0000-00-00'),
(208, 'P.del  Río', 'Hospital Pediátrico Provincial Pepe Portilla', 'AC3.1', 'AULNE15002', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(209, 'P.del  Río', 'Hospital Pediátrico Provincial Pepe Portilla', 'A5', '14AND001A011', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(210, 'P.del  Río', 'Hospital Pediátrico Provincial Pepe Portilla', 'A5', '13AND001A007', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(211, 'P.del  Río', 'Hospital Pediátrico Provincial Pepe Portilla', 'FX', '12BNC00F1002', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(212, 'P.del  Río', 'Hospital Pediátrico Provincial Pepe Portilla', 'EOA2.1', 'ECLNE14017', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(213, 'P.del  Río', 'Hospital Pediátrico Provincial Pepe Portilla', 'A5', '04BND001A-01', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(214, 'P.del  Río', 'Hospital Pediátrico Provincial Pepe Portilla', 'A5', '16AND001A007', 'CN.018-031-2016', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(215, 'P.del  Río', 'Hospital Clínico Quirúrgico Provincial Abel Santam', 'EOA2.2', 'NMX16016', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '07/2017', 0, '0000-00-00', 0, '0000-00-00'),
(216, 'P.del  Río', 'Hospital Clínico Quirúrgico Provincial Abel Santam', 'N5 MNIO', '17AND001NM09', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(217, 'P.del  Río', 'Hospital Clínico Quirúrgico Provincial Abel Santam', 'M5', '14AND001M040', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(218, 'P.del  Río', 'Hospital Clínico Quirúrgico Provincial Abel Santam', 'N5', '17AND001N016', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(219, 'P.del  Río', 'Hospital Clínico Quirúrgico Provincial Abel Santam', 'M5 VIDEO', '14AND001M025', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(220, 'P.del  Río', 'Hospital Clínico Quirúrgico Provincial Abel Santam', 'A5', '06AND001A-18', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(221, 'P.del  Río', 'Hospital Clínico Quirúrgico Provincial Abel Santam', 'FX', '16ANC00F1003', 'CN.018-032-2016', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(222, 'P.del  Río', 'Hospital Comandante Pinares', 'EOA2.1', 'ECLNE14026', 'CN.018-001-2015', '0000-00-00', 'aparece instalado 29/06/2016 en el Centro Auditivo San Antonio de los Baños', '', 0, '0000-00-00', 0, '0000-00-00'),
(223, 'P.del  Río', 'Hospital Comandante Pinares', 'FX', '17ANC00F1007', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(224, 'P.del  Río', 'Hospital Comandante Pinares', 'A5', '13AND001A009', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(225, 'Matanzas', 'Hospital Pediátrico Docente Provincial Eliseo Noel', 'FX', '16ANC00F1006', 'CN.018-002-2016 Sup.1', '0000-00-00', 'Eduardo agramonte piña/CMG???', '', 0, '0000-00-00', 0, '0000-00-00'),
(226, 'Matanzas', 'Hospital Pediátrico Docente Provincial Eliseo Noel', 'M5', '16AND001M007', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(227, 'Matanzas', 'Hospital Pediátrico Docente Provincial Eliseo Noel', 'A5', '14AND001A012', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(228, 'Matanzas', 'Hospital Pediátrico Docente Provincial Eliseo Noel', 'EOA2.1', 'ECLNE14016', 'CN.018-001-2015', '0000-00-00', 'x cliente;Instalado por el Cliente. Sin cargador.', '', 0, '0000-00-00', 0, '0000-00-00'),
(229, 'Matanzas', 'Hospital Pediátrico Docente Provincial Eliseo Noel', 'M5', '14AND001M039', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(230, 'Matanzas', 'Hospital Universitario Clínico Quirúrgico Comandan', 'M5 VIDEO', '14AND001M033', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(231, 'Matanzas', 'Hospital Universitario Clínico Quirúrgico Comandan', 'PANDA', '06ANB00P1-12', '', '0000-00-00', '2015 (+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(232, 'Matanzas', 'Hospital Universitario Clínico Quirúrgico Comandan', 'M5', '13AND001M026', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(233, 'Matanzas', 'Hospital Militar Mario Muñoz Monroy', 'EOA2.1', 'ECLNE15005', 'CN.018-001-2015', '0000-00-00', 'no aparece documentación en el exp.', '', 0, '0000-00-00', 0, '0000-00-00'),
(234, 'Matanzas', 'Hospital Militar Mario Muñoz Monroy', 'AC3.2', 'NKT16001', 'CN.018-026-2016', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(235, 'Matanzas', 'Centro Auditivo Provincial Matanzas', 'AC3.1', 'AULNE14053', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(236, 'Matanzas', 'Centro Auditivo Provincial Matanzas', 'A5', '16AND001A003', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(237, 'Matanzas', 'Centro Auditivo Provincial Matanzas', 'AC3.2', 'NKT16008', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(238, 'Matanzas', 'Hospital Materno Julio Alfonso Medina', 'EOA2.1', 'ECLNE15005', 'CN.018-001-2015', '0000-00-00', 'se instaló dic/2016 y en abril/2017 se instaló en el Centro Auditivo MTZ', '', 0, '0000-00-00', 0, '0000-00-00'),
(239, 'Matanzas', 'Hospital Materno Julio Alfonso Medina', 'EOA2.2', 'NMX16019', 'CN.018-002-2016 Sup.1', '0000-00-00', 'la instalación del equipo se realizó en el Centro Auditivo MTZ, la última vez que se le hizo MC fue en el Centro Auditivo el 11/01/2018', '', 0, '0000-00-00', 0, '0000-00-00'),
(240, 'Matanzas', 'Hospital Territorial Docente Dr. Julio M. Aristegu', 'M5', '16AND001M001', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(241, 'Artemisa', 'Hospital Pediátrico José Ramón Martínez de Guanaja', 'FX', '17ANC00F1009', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(242, 'Artemisa', 'Ciro Redondo', 'FX', '16ANC00F1009', 'CN.018-032-2016', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(243, 'Artemisa', 'Hospital General Docente Intermunicipal Ivan Portu', 'M5', '03AND001M-08', '', '0000-00-00', '  (+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(244, 'Artemisa', 'Hospital General Docente Intermunicipal Ivan Portu', 'A5', '07AND001A-29', '', '0000-00-00', '  (+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(245, 'Artemisa', 'Centro Auditivo Provincial San Antonio de los Baño', 'A5', '14AND001A013', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(246, 'Artemisa', 'Centro Auditivo Provincial San Antonio de los Baño', 'EOA2.1', 'ECLNE14026', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(247, 'Mayabeque', 'Centro Auditivo Provincial Mayabeque (Policlínico ', 'EOA2.1', 'ECLNE11004', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(248, 'Mayabeque', 'Centro Auditivo Provincial Mayabeque (Policlínico ', 'A5', '13AND001A017', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(249, 'Mayabeque', 'Centro Auditivo Provincial Mayabeque (Policlínico ', 'AC3.1', 'AULNE14052', 'CN.018-001-2015', '0000-00-00', 'no aparece documentación en el exp.', '', 0, '0000-00-00', 0, '0000-00-00'),
(250, 'Mayabeque', 'Hospital Materno Infantil Comandante Manuel Piti F', 'A5', '14AND001A018', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(251, 'Mayabeque', 'Hospital Materno Infantil Comandante Manuel Piti F', 'FX', '17ANC00F1016', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(252, 'Mayabeque', 'Hospital Materno Infantil Comandante Manuel Piti F', 'EOA2.1', 'ECLNE14021', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(253, 'Mayabeque', 'Hospital General Docente Leopoldito Martínez', 'M5', '17AND001M003', '', '0000-00-00', '', '06/2017', 0, '0000-00-00', 0, '0000-00-00'),
(254, 'Mayabeque', 'Hospital General Docente Leopoldito Martínez', 'FX', '16ANC00F1012', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(255, 'Mayabeque', 'Hospital General Docente Leopoldito Martínez', 'N5', '16AND001N010', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(256, 'Mayabeque', 'Hospital General Docente Leopoldito Martínez', 'N5', '16AND001N011', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(257, 'Mayabeque', 'Hospital Aleida Fdez/MAY', 'FX', '17ANC00F1001', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(258, 'Isla de la Juventud', 'Hospital General Docente Héroes de Baire', 'EOA2.2', 'NMX16003', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(259, 'Isla de la Juventud', 'Hospital General Docente Héroes de Baire', 'EOA2.1', 'ECLNE15004', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(260, 'Isla de la Juventud', 'Hospital General Docente Héroes de Baire', 'AC3.1', 'AULNE14045', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(261, 'Isla de la Juventud', 'Hospital General Docente Héroes de Baire', 'A5', '14AND001A014', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(262, 'Isla de la Juventud', 'Hospital General Docente Héroes de Baire', 'A5', '07AND001A-30', '', '0000-00-00', ' (+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(263, 'Villa Clara', 'Hospital Pediátrico Universitario José Luis Mirand', 'A5', '17AND001A020', 'CN.018-015-2018 ', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(264, 'Villa Clara', 'Hospital Pediátrico Universitario José Luis Mirand', 'M5', '14AND001M035', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(265, 'Villa Clara', 'Hospital Pediátrico Universitario José Luis Mirand', 'FX', '14ANC00F1017', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(266, 'Villa Clara', 'Hospital Pediátrico Universitario José Luis Mirand', 'M5 VIDEO', '17AND001M014', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(267, 'Villa Clara', 'Hospital Pediátrico Universitario José Luis Mirand', 'M5 UCI', '17AND001M018', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(268, 'Villa Clara', 'Hospital Pediátrico Universitario José Luis Mirand', 'A5', '14AND001A019', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(269, 'Villa Clara', 'Hospital Pediátrico Universitario José Luis Mirand', 'N5', '14AND001N025', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(270, 'Villa Clara', 'Hospital Pediátrico Universitario José Luis Mirand', 'M5', '13AND001M016', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(271, 'Villa Clara', 'Hospital Pediátrico Universitario José Luis Mirand', 'A5', '04BND001A-04', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(272, 'Villa Clara', 'Hospital Clínico Quirúrgico Arnaldo Milián Castro', 'A5', '17AND001A022', 'CVEM.05-2019', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(273, 'Villa Clara', 'Hospital Clínico Quirúrgico Arnaldo Milián Castro', 'FX', '17ANC00F1003', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(274, 'Villa Clara', 'Hospital Clínico Quirúrgico Arnaldo Milián Castro', 'FX', '17ANC00F1007', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(275, 'Villa Clara', 'Hospital Clínico Quirúrgico Arnaldo Milián Castro', 'AC3.1', 'AULNE14037', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(276, 'Villa Clara', 'Hospital Clínico Quirúrgico Arnaldo Milián Castro', 'N5', '13AND001N020', '', '0000-00-00', 'A veces se encuentra en el Pediátrico Joé Luis Miranda VCL', '', 0, '0000-00-00', 0, '0000-00-00'),
(277, 'Villa Clara', 'Hospital Clínico Quirúrgico Arnaldo Milián Castro', 'M5', '13AND001M015', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(278, 'Villa Clara', 'Hospital Militar Comandante Manuel Fajardo', 'FX', '18ANC00F1007', 'CN.834-046-2018 suplement', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(279, 'Villa Clara', 'Hospital Militar Comandante Manuel Fajardo', 'AC3.2', 'NKT16002', 'CN.018-026-2016', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(280, 'Villa Clara', 'Hospital Ginecobstétrico Docente Provincial Marian', 'EOA2.1', 'ECLNE14023', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(281, 'Villa Clara', 'Centro Auditivo Villa Clara', 'AC3.1', 'AULNE12001', '', '0000-00-00', 'en Oct/2016 se le hizo un MP pero se instaló en el Pediátrico  José L. Miranda VCL', '', 0, '0000-00-00', 0, '0000-00-00'),
(282, 'Villa Clara', 'Centro Auditivo Villa Clara', 'AC3.2', 'NKT16003', 'CN.018-002-2016 Sup.1', '0000-00-00', 'A veces se encuentra en el Pediátrico Joé Luis Miranda VCL', '', 0, '0000-00-00', 0, '0000-00-00'),
(283, 'Villa Clara', 'Martires del 9 de abril (Sagua la Grande)', 'FX', '17ANC00F1008', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(284, 'Villa Clara', 'Martires del 9 de abril (Sagua la Grande)', 'A5', '17AND001A014', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(285, 'Villa Clara', 'Hospital de Placetas', 'EOA2.2', 'NMX17017', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(286, 'Villa Clara', 'Hospital de Remedios', 'EOA2.2', 'NMX17019', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(287, 'Cienfuegos', 'Hospital Pediátrico Universitario Paquito González', 'M5', '16AND001M003', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(288, 'Cienfuegos', 'Hospital Pediátrico Universitario Paquito González', 'A5', '14AND001A003', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(289, 'Cienfuegos', 'Hospital Pediátrico Universitario Paquito González', 'N5', '17AND001N011', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(290, 'Cienfuegos', 'Hospital Pediátrico Universitario Paquito González', 'A5', '07AND001A-11', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(291, 'Cienfuegos', 'Hospital General Universitario Dr. Gustavo Aldereg', 'M5 UCI', '16AND001M011', 'CN.018-012-2017', '0000-00-00', '', '018-020-2017', 0, '0000-00-00', 0, '0000-00-00'),
(292, 'Cienfuegos', 'Hospital General Universitario Dr. Gustavo Aldereg', 'M5 VIDEO', '14AND001M026', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(293, 'Cienfuegos', 'Hospital General Universitario Dr. Gustavo Aldereg', 'AC3.1', 'AUL  10059', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(294, 'Cienfuegos', 'Centro Auditivo Provincial Cienfuegos', 'AC3.1', 'AULNE14049', 'CN.018-001-2015', '0000-00-00', '', '834-033-2018', 0, '0000-00-00', 0, '0000-00-00'),
(295, 'Cienfuegos', 'Centro Auditivo Provincial Cienfuegos', 'EOA2.2', 'NMX16010', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(296, 'Cienfuegos', 'Centro Auditivo Provincial Cienfuegos', 'AC3.1', 'AULNE14044', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(297, 'Sancti Spíritus', 'Hospital Provincial de Rehabilitación Dr. Faustino', 'N5', '08AND001N-10', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(298, 'Sancti Spíritus', 'Hospital Provincial Universitario Camilo Cienfuego', 'FX', '17ANC00F1005', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(299, 'Sancti Spíritus', 'Hospital Provincial Universitario Camilo Cienfuego', 'AC3.2', 'NKT17002', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(300, 'Sancti Spíritus', 'Hospital Provincial Universitario Camilo Cienfuego', 'M5', '16AND001M002', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(301, 'Sancti Spíritus', 'Hospital Provincial Universitario Camilo Cienfuego', 'N5', '16AND001N002', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(302, 'Sancti Spíritus', 'Hospital Provincial Universitario Camilo Cienfuego', 'A5', '14AND001A004', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(303, 'Sancti Spíritus', 'Hospital Provincial Universitario Camilo Cienfuego', 'EOA2.2', 'NMX17018', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00');
INSERT INTO `equiposinstalados` (`ID`, `Provincia`, `Hospital`, `Equipo`, `N_Serie`, `Ctto_Venta`, `Fecha_Instalacion`, `Observaciones`, `Ctto_De_ST`, `MP`, `Fecha_Ultimo_MP`, `MC`, `Fecha_Ultimo_MC`) VALUES
(304, 'Sancti Spíritus', 'Hospital Provincial Universitario Camilo Cienfuego', 'EOA2.1', 'ECLNE15001', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(305, 'Sancti Spíritus', 'Hospital Provincial Universitario Camilo Cienfuego', 'M5 VIDEO', '14AND001M028', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(306, 'Sancti Spíritus', 'Hospital Pediátrico Provincial José Martí Pérez', 'AC3.2', 'NKT17007', 'CN.018-012-2017', '0000-00-00', '', '018-042-2016', 0, '0000-00-00', 0, '0000-00-00'),
(307, 'Sancti Spíritus', 'Hospital Pediátrico Provincial José Martí Pérez', 'FX', '17ANC00F1010', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(308, 'Sancti Spíritus', 'Hospital Pediátrico Provincial José Martí Pérez', 'M5', '16AND001M008', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(309, 'Sancti Spíritus', 'Hospital Pediátrico Provincial José Martí Pérez', 'M5', '14AND001M041', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(310, 'Sancti Spíritus', 'Hospital Pediátrico Provincial José Martí Pérez', 'A5', '07AND001A-10', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(311, 'Sancti Spíritus', 'Centro Auditivo Provincial Sancti Spíritus', 'EOA2.2', 'NMX16011', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(312, 'Sancti Spíritus', 'Centro Auditivo Provincial Sancti Spíritus', 'AC3.1', 'AULNE14051', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(313, 'Ciego de Avila', 'Hospital General Docente Provincial Roberto Rodríg', 'FX', '14ANC00F1024', 'CN.018-001-2015', '0000-00-00', '', '05/2017', 0, '0000-00-00', 0, '0000-00-00'),
(314, 'Ciego de Avila', 'Hospital General Docente Provincial Roberto Rodríg', 'M5', '13AND001M031', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(315, 'Ciego de Avila', 'Hospital General Docente Provincial Roberto Rodríg', 'A5', '07AND001A-03', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(316, 'Ciego de Avila', 'Hospital Universitario Dr. Antonio Luaces Iraola', 'M5', '14AND001M042', 'CN.018-002-2016 Sup.1', '0000-00-00', 'Se instaló en el hospital Roberto Rodríguez', '018-043-2016', 0, '0000-00-00', 0, '0000-00-00'),
(317, 'Ciego de Avila', 'Hospital Universitario Dr. Antonio Luaces Iraola', 'EOA2.2', 'NMX16008', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(318, 'Ciego de Avila', 'Hospital Universitario Dr. Antonio Luaces Iraola', 'FX', '14ANC00F1002', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(319, 'Ciego de Avila', 'Centro Auditivo Provincial Ciego de Avila', 'A5', '14AND001A007', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(320, 'Ciego de Avila', 'Centro Auditivo Provincial Ciego de Avila', 'AC3.1', 'AULNE14054', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(321, 'Ciego de Avila', 'Centro Auditivo Provincial Ciego de Avila', 'EOA2.1', 'ECLNE15003', 'CN.018-001-2015', '0000-00-00', 'El equipo se instaló en el hospital Antonio L. Iraola ', '', 0, '0000-00-00', 0, '0000-00-00'),
(322, 'Camagüey', 'Hospital Pediátrico Provincial Docente Dr. Eduardo', 'N5', '14AND001N012', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(323, 'Camagüey', 'Hospital Pediátrico Provincial Docente Dr. Eduardo', 'A5', '17AND001A009', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(324, 'Camagüey', 'Hospital Pediátrico Provincial Docente Dr. Eduardo', 'A5', '16AND001A009', 'CN.018-031-2016', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(325, 'Camagüey', 'Hospital Pediátrico Provincial Docente Dr. Eduardo', 'EOA2.2', 'NMX16002', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(326, 'Camagüey', 'Hospital Pediátrico Provincial Docente Dr. Eduardo', 'FX', '14ANC00F1006', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(327, 'Camagüey', 'Hospital Pediátrico Provincial Docente Dr. Eduardo', 'A5', '07AND001A-09', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(328, 'Camagüey', 'Hospital Pediátrico Provincial Docente Dr. Eduardo', 'M5', '10AND001M003', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(329, 'Camagüey', 'Hospital Psiquiátrico Docente Provincial Dr. René ', 'FX', '17ANC00F1011', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(330, 'Camagüey', 'Hospital Psiquiátrico Docente Provincial Dr. René ', 'FX', '06ANC00F1-10', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(331, 'Camagüey', 'Hospital Provincial Docente Clínico Quirúrgico Man', 'M5', '17AND001M006', 'CN.018-015-2018', '0000-00-00', '', '834-036-2018', 0, '0000-00-00', 0, '0000-00-00'),
(332, 'Camagüey', 'Hospital Provincial Docente Clínico Quirúrgico Man', 'M5', '14AND001M038', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(333, 'Camagüey', 'Hospital Provincial Docente Clínico Quirúrgico Man', 'M5 UCI', '17AND001M021', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(334, 'Camagüey', 'Hospital Provincial Docente Clínico Quirúrgico Man', 'N5 MNIO', '17AND001NM20', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(335, 'Camagüey', 'Hospital Provincial Docente Clínico Quirúrgico Man', 'M5', '14AND001M022', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(336, 'Camagüey', 'Hospital Provincial Docente Clínico Quirúrgico Man', 'N5', '14AND001N021', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(337, 'Camagüey', 'Hospital Docente Ginecobstétrico Provincial Ana Be', 'EOA2.2', 'NMX17025', 'CN.018-012-2017', '0000-00-00', 'Identificado en MC', '', 0, '0000-00-00', 0, '0000-00-00'),
(338, 'Camagüey', 'Hospital Docente Ginecobstétrico Provincial Ana Be', 'A5', '17AND001A007', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(339, 'Camagüey', 'Hospital Docente Ginecobstétrico Provincial Ana Be', 'FX', '17ANC00F1012', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(340, 'Camagüey', 'Hospital Docente Ginecobstétrico Provincial Ana Be', 'EOA2.1', 'ECLNE14018', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(341, 'Camagüey', 'Hospital Militar Dr. Octavio de la Concepción y de', 'AC3.2', 'NKT16013', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(342, 'Las Tunas', 'Hospital General Provincial Dr. Ernesto Che Guevar', 'EOA2.1', 'ECLNE14024', 'CN.018-001-2015', '0000-00-00', '', '018-021-2016', 0, '0000-00-00', 0, '0000-00-00'),
(343, 'Las Tunas', 'Hospital General Provincial Dr. Ernesto Che Guevar', 'N5', '14AND001N027', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(344, 'Las Tunas', 'Hospital General Provincial Dr. Ernesto Che Guevar', 'FX', '17ANC00F1015', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(345, 'Las Tunas', 'Hospital General Provincial Dr. Ernesto Che Guevar', 'A5', '04BND001A-06', '', NULL, 'Centro Auditivo? (+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(346, 'Las Tunas', 'Hospital Pediatrico Provincial Martires de las Tun', 'A5', '16AND001A006', 'CN.018-031-2016', '0000-00-00', '', '018-022-2016', 0, '0000-00-00', 0, '0000-00-00'),
(347, 'Las Tunas', 'Hospital Pediatrico Provincial Martires de las Tun', 'M5', '14AND001M036', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(348, 'Las Tunas', 'Hospital Pediatrico Provincial Martires de las Tun', 'N5', '06AND001N-15', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(349, 'Las Tunas', 'Centro Auditivo Las Tunas', 'AC3.2', 'NKT16006', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(350, 'Las Tunas', 'Centro Auditivo Las Tunas', 'EOA2.2', 'NMX16001', 'CN.018-002-2016 Sup.1', '0000-00-00', 'Ernesto Guevara?', '', 0, '0000-00-00', 0, '0000-00-00'),
(351, 'Las Tunas', 'Centro Auditivo Las Tunas', 'A5', '14AND001A010', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(352, 'Holguín', 'Hospital Militar Dr. Fermín Valdés Domínguez/HOL', 'AC3.2', 'NKT16011', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(353, 'Holguín', 'Hospital General Guillermo Luis (Moa)/HOL', 'FX', '16ANC00F1010', 'CN.018-032-2016', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(354, 'Holguín', 'Clínica para la Investigación y Rehabilitación de ', 'N5', '13AND001N014', '', '0000-00-00', 'ant. el equipo se encontraba ant. en el hospital Lucía Iñiguez que fue donde se instaló ', '', 0, '0000-00-00', 0, '0000-00-00'),
(355, 'Holguín', 'Clínica para la Investigación y Rehabilitación de ', 'M5', '06AND001M-11', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(356, 'Holguín', 'Clínica para la Investigación y Rehabilitación de ', 'N5', '06AND001N-10', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(357, 'Holguín', 'Hospital General Docente Vladimir Ilich Lenin', 'EOA2.1', 'ECLNE14019', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(358, 'Holguín', 'Hospital General Docente Vladimir Ilich Lenin', 'FX', '17ANC00F1014', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(359, 'Holguín', 'Hospital General Docente Vladimir Ilich Lenin', 'AC3.1', 'AULNE14036', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(360, ' Holguín', 'Hospital Clínico Quirúrgico Lucía Iñiguez Landín', 'M5 UCI', '17AND001M020', 'CN.018-012-2017', '0000-00-00', '', '018-016-2016', 0, '0000-00-00', 0, '0000-00-00'),
(361, ' Holguín', 'Hospital Clínico Quirúrgico Lucía Iñiguez Landín', 'M5', '16AND001M010', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(362, ' Holguín', 'Hospital Clínico Quirúrgico Lucía Iñiguez Landín', 'FX', '14ANC00F1026', 'CN.018-001-2015', '0000-00-00', 'El equipo se encuentra ubicado a veces en el Pediátrico Octavio de la Concepción - HOL (Ya se devolvio al Lucia Iñiguez)', '', 0, '0000-00-00', 0, '0000-00-00'),
(364, 'Holguín', 'Hospital Pediátrico Provincial Octavio Concepción ', 'FX', '14ANC00F1015', 'CN.018-001-2015', '0000-00-00', '', '018-015-2016', 0, '0000-00-00', 0, '0000-00-00'),
(365, ' Holguín', 'Hospital Pediátrico Provincial Octavio Concepción ', 'A5', '14AND001A023', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(366, ' Holguín', 'Hospital Pediátrico Provincial Octavio Concepción ', 'A5', '14AND001A006', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(367, ' Holguín', 'Hospital Pediátrico Provincial Octavio Concepción ', 'N5', '10AND001N006', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(368, ' Holguín', 'Hospital Pediátrico Provincial Octavio Concepción ', 'A5', '04AND001A-02', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(369, 'Holguín', 'Centro Auditivo Provincial Holguin', 'EOA2.2', 'NMX16020', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '09/2017', 0, '0000-00-00', 0, '0000-00-00'),
(370, ' Holguín', 'Centro Auditivo Provincial Holguin', 'AC3.1', 'AULNE14046', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(371, ' Holguín', 'Centro Auditivo Provincial Holguin', 'AC3.1', 'AULNE14010', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(372, 'Granma', 'Hospital General Provincial Carlos Manuel de Céspe', 'M5 UCI', '18AND001M031', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(373, 'Granma', 'Hospital General Provincial Carlos Manuel de Céspe', 'EOA2.2', 'NMX17022', 'CN.018-012-2017', '0000-00-00', '', '018-020-2016', 0, '0000-00-00', 0, '0000-00-00'),
(374, 'Granma', 'Hospital General Provincial Carlos Manuel de Céspe', 'A5', '17AND001A018', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(375, 'Granma', 'Hospital General Provincial Carlos Manuel de Céspe', 'EOA2.2', 'NMX17023', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(376, 'Granma', 'Hospital General Provincial Carlos Manuel de Céspe', 'EOA2.1', 'ECLNE14025', 'CN.018-001-2015', '0000-00-00', 'fue instalado en el Centro Auditivo/GRM', '', 0, '0000-00-00', 0, '0000-00-00'),
(377, 'Granma', 'Centro Medico Ambulatorio (Carlos Manuel de Césped', 'M5', '17AND001M004', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(378, 'Granma', 'Centro Medico Ambulatorio (Carlos Manuel de Césped', 'FX', '16ANC00F1001', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(379, 'Granma', 'Centro Medico Ambulatorio (Carlos Manuel de Césped', 'N5', '16AND001N008', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(380, 'Granma', 'Centro Medico Ambulatorio (Carlos Manuel de Césped', 'M5 VIDEO', '14AND001M027', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(381, 'Granma', 'Centro Medico Ambulatorio (Carlos Manuel de Césped', 'M5', '13AND001M025', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(382, 'Granma', 'Centro Medico Ambulatorio (Carlos Manuel de Césped', 'PANDA', '06ANB00P1-07', '', '0000-00-00', '19/06/2015 (+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(383, 'Granma', 'Centro Medico Ambulatorio (Carlos Manuel de Césped', 'A5', '07AND001A-18', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(384, 'Granma', 'Centro Medico Ambulatorio (Carlos Manuel de Césped', 'A5', '14AND001A017', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(385, 'Granma', 'Hospital Clínico Quirúrgico Provincial Celia Sánch', 'A5', '17AND001A008', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(386, 'Granma', 'Hospital Clínico Quirúrgico Provincial Celia Sánch', 'AC3.2', 'NKT17003', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(387, 'Granma', 'Hospital Clínico Quirúrgico Provincial Celia Sánch', 'N5', '16AND001N006', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(388, 'Granma', 'Hospital Clínico Quirúrgico Provincial Celia Sánch', 'FX', '14ANC00F1001', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(389, 'Granma', 'Hospital Clínico Quirúrgico Provincial Celia Sánch', 'M5', '13AND001M024', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(390, 'Granma', 'Centro Auditivo Provincial Bayamo, Granma ', 'AC3.1', 'AULNE14017', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(391, 'Granma', 'Centro Auditivo Provincial Bayamo, Granma ', 'AC3.1', 'AULNE14047', 'CN.018-001-2015', '0000-00-00', 'en Jul/2017 se le dio MC y en Feb/2017 se instaló en el Centro Médico Ambulatorio', '', 0, '0000-00-00', 0, '0000-00-00'),
(392, 'Granma', 'Centro Auditivo Provincial Bayamo, Granma ', 'EOA2.2', 'NMX16005', 'CN.018-002-2016 Sup.1', '0000-00-00', 'Carlos Manuel de Cespedes?', '', 0, '0000-00-00', 0, '0000-00-00'),
(393, 'Granma', 'Hospital Pediátrico Docente General Luis A. Milani', 'M5', '18AND001M001', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(394, 'Granma', 'Hospital Pediátrico Docente General Luis A. Milani', 'FX', '16ANC00F1008', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(395, 'Granma', 'Hospital Hermanos Cordobés/ Manzanillo GRM', 'M5', '16AND001M005', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(396, 'Granma', 'Materno Fe del Valle/GRM', 'EOA2.2', 'NMX17015', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(397, 'Guantánamo', 'Hospital General Docente Dr. Agosthino Neto', 'FX', '16ANC00F1002', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '018-021-2018', 0, '0000-00-00', 0, '0000-00-00'),
(398, 'Guantánamo', 'Hospital General Docente Dr. Agosthino Neto', 'EOA2.2', 'NMX16018', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(399, 'Guantánamo', 'Hospital General Docente Dr. Agosthino Neto', 'M5 VIDEO', '17AND001M015', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(400, 'Guantánamo', 'Hospital General Docente Dr. Agosthino Neto', 'N5', '17AND001N015', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(401, 'Guantánamo', 'Hospital General Docente Dr. Agosthino Neto', 'AC3.1', 'AULNE14035', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(402, 'Guantánamo', 'Hospital General Docente Dr. Agosthino Neto', 'M5', '13AND001M027', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(403, 'Guantánamo', 'Hospital General Docente Dr. Agosthino Neto', 'A5', '04BND001A-05', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(404, 'Guantánamo', 'Hospital Pediátrico Pedro A. Pérez', 'A5', '14AND001A025', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '018-019-2018', 0, '0000-00-00', 0, '0000-00-00'),
(405, 'Guantánamo', 'Hospital Pediátrico Pedro A. Pérez', 'FX', '16ANC00F1007', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(406, 'Guantánamo', 'Centro Auditivo Provincial Guantánamo', 'AC3.1', 'AULNE14005', '', '0000-00-00', '', '018-029-2018', 0, '0000-00-00', 0, '0000-00-00'),
(407, 'Guantánamo', 'Hospital General Docente Dr. Octavio de la Concepc', 'AC3.2', 'NKT16005', '', '0000-00-00', '', '018-020-2018', 0, '0000-00-00', 0, '0000-00-00'),
(408, 'Guantánamo', 'Hospital General Docente Dr. Octavio de la Concepc', 'EOA2.1', 'ECLNE15002', 'CN.018-001-2015', '0000-00-00', 'en Jul/2017 se le hizo un MC y en May/2016 se instaló en el Pediátrico Pedro A. Pérez GTM', '', 0, '0000-00-00', 0, '0000-00-00'),
(409, 'Stgo de Cuba', 'Hospital Docente Pediátrico Sur', 'M5 VIDEO', '18AND001M015', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(410, 'Stgo de Cuba', 'Hospital Docente Pediátrico Sur', 'N5', '14AND001N032', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '018-018-2016', 0, '0000-00-00', 0, '0000-00-00'),
(411, 'Stgo de Cuba', 'Hospital Docente Pediátrico Sur', 'PANDA', '06ANB00P1-11', '', '0000-00-00', '18/11/2015 (+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(412, 'Stgo de Cuba', 'Hospital Docente Pediátrico Sur', 'A5', '14AND001A005', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(413, 'Stgo de Cuba', 'Hospital Docente Pediátrico Sur', 'M5 VIDEO', '14AND001M024', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(414, 'Stgo de Cuba', 'Hospital Docente Pediátrico Sur', 'A5', '13AND001A006', '', '0000-00-00', 'visto el 29/09/2017', '', 0, '0000-00-00', 0, '0000-00-00'),
(415, 'Stgo de Cuba', 'Hospital Docente Pediátrico Sur', 'M5', '13AND001M036', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(416, 'Stgo de Cuba', 'Hospital Docente Pediátrico Sur', 'M5', '13AND001M011', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(417, 'Stgo de Cuba', 'Hospital Docente Pediátrico Sur', 'A5', '07AND001A-04', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(418, 'Stgo de Cuba', 'Hospital Provincial Clínico Quirúrgico Docente Sat', 'FX', '16ANC00F1004', 'CN.018-002-2016 Sup.1', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(419, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'M5 VIDEO', '18AND001M021', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(420, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'M5 UCI', '18AND001M022', 'CN.018-015-2018', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(421, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'N5', '17AND001N012', 'CN.018-012-2017', '0000-00-00', '', '018-019-2016', 0, '0000-00-00', 0, '0000-00-00'),
(422, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'M5 VIDEO', '17AND001M012', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(423, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'M5 UCI', '17AND001M024', 'CN.018-012-2017', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(424, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'FX', '04BNC00F1-12', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(425, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'A5', '07AND001A-31', '', '0000-00-00', '(+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(426, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'M5', '13AND001M040', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(427, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'PANDA', '03ANB00P1-14', '', '0000-00-00', '17/11/2015 (+ 10 AÑOS)', '', 0, '0000-00-00', 0, '0000-00-00'),
(428, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'A5', '13AND001A016', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(429, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'M5', '13AND001M020', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(430, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'M5', '10AND001M012', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(431, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'EOA2.1', 'ECLNE14020', 'CN.018-001-2015', '0000-00-00', 'Fue instalado por el cliente', '', 0, '0000-00-00', 0, '0000-00-00'),
(432, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'N5', '13AND001N015', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(433, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'N5 MNIO', '13AND001NM03', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(434, 'Stgo de Cuba', 'Centro Auditivo Provincial Santiago de Cuba', 'AC3.1', 'AULNE13001', '', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00'),
(435, 'Stgo de Cuba', 'Hospital Orlando Pantoja Contramaestre', 'FX', '14ANC00F1025', 'CN.018-001-2015', '0000-00-00', '', '', 0, '0000-00-00', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hospitales`
--

CREATE TABLE `hospitales` (
  `ID` int(11) NOT NULL,
  `Provincia` varchar(50) COLLATE utf8_bin NOT NULL,
  `Hospital` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Direccion` varchar(250) COLLATE utf8_bin NOT NULL,
  `Responsable` varchar(200) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(50) COLLATE utf8_bin NOT NULL,
  `Correo` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `hospitales`
--

INSERT INTO `hospitales` (`ID`, `Provincia`, `Hospital`, `Direccion`, `Responsable`, `telefono`, `Correo`) VALUES
(2, 'La Habana', 'Instituto de Neurologia y Neurocirugia (INN)', 'Calle D No. 139 esquina 29 CP. 10400, Plaza', '', '', ''),
(3, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Hermanos Ameijeiras', 'San LÃ¡zaro No. 701 esquina a BelascoaÃ­n. CP. 10300, Centro Habana', '', '', ''),
(4, 'La Habana', 'Hospital Universitario ClÃ­nico QuirÃºrgico General Calixto GarcÃ­a', 'Avenida Universidad y J. Vedado. CP. 10400, Plaza', '', '', ''),
(5, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Docente Dr. Salvador Allende', 'Calzada del Cerro 1551 esq. DomÃ­nguez. CP. 12000, Cerro', '', '', ''),
(6, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Miguel EnrÃ­quez', 'RamÃ³n PintÃ³ No. 202 e/. Ensena y Villanueva . CP 10700, 10 de Octubre', '', '', ''),
(7, 'La Habana', 'Hospital ClÃ­nico QuirÃºrgico Provincial JoaquÃ­n AlbarrÃ¡n', 'Avenida 26 y Linea Del Ferrocarril. CP. 10600, Plaza de la Revolucion', '', '', ''),
(8, 'La Habana', 'Hospital Clínico Quirúrgico 10 de Octubre', '10 de octubre 130 entre Alejandro Ramírez y Agua Dulce, Cerro.', '', '', ''),
(9, 'La Habana', 'Hospital Clínico Quirúrgico Julio Trigo', 'Calzada de Bejucal km 7½, Reparto La Esperanza, Arroyo Naranjo.', '', '', ''),
(10, 'La Habana', 'Hospital General Docente Enrique Cabrera Cossío', 'Calzada de Aldabó No.11117 Esquina E, Altahabana. CP. 10800, Boyeros', '', '', ''),
(11, 'La Habana', 'Cardiocentro Pediátrico William Soler', 'Calle 100 y Perla. Altahabana. Boyeros.', '', '', ''),
(12, 'La Habana', 'Hospital Pediátrico Docente Juan Manuel Márquez', 'Avenida 31 e/. 76 y 100 . CP 11400, Marianao', '', '', ''),
(13, 'La Habana', 'Hospital Pediátrico de Centro Habana', 'Benjumeda y Morales, Centro Habana.', '', '', ''),
(14, 'La Habana', 'Hospital Pediátrico Marfán', 'Calle 17 No. 801 esquina a 2, Vedado CP. 10400, Plaza', '', '', ''),
(15, 'La Habana', 'Policlinico Pedro Borras', 'Calle 27 e/ M y N. Plaza de la Revolución,', '', '', ''),
(16, 'La Habana', 'Hospital Ginecobstétrico Ramón González Coro', 'Calle 21 No. 854 e/. 4 y 6 Vedado CP. 10400, Plaza de la Revolución', '', '', ''),
(17, 'La Habana', 'Hospital Ortopédico Docente Fructuoso Rodríguez', 'Calle G y 29 Vedado . CP. 10400, Plaza', '', '', ''),
(18, 'La Habana', 'Complejo Científico Ortopédico Internacional Frank', 'Ave 51, No. 19603 e/ 202 y 196., La Lisa. CP. 17 100', '', '', ''),
(19, 'La Habana', 'Hospital Julio Díaz', 'Avenida 243 #18915, Fontanar, Boyeros', '', '', ''),
(20, 'La Habana', 'Centro de Investigaciones Médico Quirúrgicas (CIME', 'Calle 216 y 11-B, Reparto Siboney, Playa', '', '', ''),
(21, 'La Habana', 'Centro de Investigaciones sobre Longevidad, Enveje', 'Calle G y 27, Vedado CP. 10400, Plaza', '', '', ''),
(22, 'La Habana', 'Instituto de Medicina Legal', 'Avenida Independencia s/n y Hernán Cortés CP. 10400, Plaza', '', '', ''),
(23, 'La Habana', 'Instituto Nacional de Medicina del Deporte', 'Calle 10 entre 100 y 14 Reparto Embil. CP. 10 800, Boyeros', '', '', ''),
(24, 'La Habana', 'Hospital Psiquiátrico de La Habana Cdte Dr Eduardo', 'Ave Independencia No. 26520, Mazorra . CP 19 220, Boyeros', '', '', ''),
(25, 'La Habana', 'Clínica del Adolescente', 'Calle 5ta. Avenida No. 3804 entre 38 y 40, Miramar CP. 11300, Playa', '', '', ''),
(26, 'La Habana', 'Centro Internacional de Restauración Neurológica (', 'Avenida 25, No. 15 805 entre 158 y 160, Playa, CP: 11 300', '', '', ''),
(27, 'La Habana', 'Centro Internacional de Salud Las Praderas', 'Calle 230 entre 15A y 17, Siboney, La Habana', '', '', ''),
(28, 'La Habana', 'Clínica Internacional Cira García', 'Avenida Ramón Mendoza y Calle 17, Miramar, Playa.', '', '', ''),
(29, 'La Habana', 'Profilactorio Nacional Obrero', ' Ave 5ta, esq 500 No 50001, Guanabo, Ciudad Habana', '', '', ''),
(30, 'La Habana', 'Medicina del Trabajo INSAT', 'Calzada de Bejucal Km 7 1/2 No. 3035 entre Heredia y 1ra., Reparto La Esperanza, Arroyo Naranjo', '', '', ''),
(31, 'La Habana', 'Centro Auditivo de La Habana', 'Calle B entre 19 y 21, Vedado, Plaza de la Revolución ', '', '', ''),
(32, 'La Habana', 'Hospital Militar Central Dr Luis Díaz Soto', 'Ave Monumental 2 ½ . CP19130, Habana del Este', '', '', ''),
(33, 'La Habana', 'Hospital Militar Dr. Carlos J. Finlay', 'Avenida 31 y 114 CP 11400, Marianao', '', '', ''),
(34, 'La Habana', 'Aeronautica Civil (Centro Médico de la Aviación Ci', 'Calle Animas y Oquendo, Centro Habana, C.Habana', '', '', ''),
(35, 'La Habana', 'Hospital Pediátrico Intermunicipal San Miguel del ', 'La Balear', '', 'Calzada de San M.del Padrón No. 1615 entre Balear ', ''),
(36, 'La Habana', 'Hospital Clínico Quirúrgico Docente Freyre de Andr', 'Salvador Allende No. 851 e/. Espada y Hospital.,Centro Habana', '', '', ''),
(37, 'Pinar del Rio', 'Hospital Pediï¿½trico Provincial Pepe Portilla', 'Calle Fernando Portilla No. 71. CP. 20 100, Pinar del Rio', 'Dra. Yanny EchevarrÃ­a Cruz', '048 74 1156/57 (directo)', 'yecruz@princesa.pri.sld.cu'),
(38, 'Pinar del Rio', 'Hospital Clï¿½nico Quirï¿½rgico Provincial Abel Santam', 'Carretera Central No.km 3ï¿½, Hermanos Cruz. CP. 20 200', 'Dra. Marlen Cruz Menor, Noelys RodrÃ­guez (MamÃ¡ Juana)', '048 72 6238 (directo),048 77 19 03 (casa)', 'ernestoc@princesa.pri.sld.cu'),
(39, 'Pinar del Rio', 'Hospital General Docente Comandante Pinares', 'Circunvalaciï¿½n s/n Rpto Noel Camaï¿½o,ï¿½San Cristobal, Artemisa', '', '', ''),
(40, 'Matanzas', 'Hospital Pediï¿½trico Docente Provincial Eliseo Noel', 'Santa Isabel s/n e/t Amï¿½rica y Compostela, Ciudad Matanzas. ', 'Dra. Aimee, 53360236;Dra. Mirella;Electromedicina', '45 247012; 45 242277 /  535 3360236; 52165232', ''),
(41, 'Matanzas', 'Hospital Universitario ClÃ­nico QuirÃºrgico Comandante Faustino PÃ©rez HernÃ¡ndez', 'Carretera Central Km. 101. CP. 40 100, Matanzas', '', '(53) (45) 247016, 256001, 256002', ''),
(42, 'Matanzas', 'Hospital Militar Clínico Quirúrgico Doctor Mario M', 'Carretera Central km 109 Gelpy. Reparto 2 de diciembre. Ciudad Matanzas', '', '', ''),
(43, 'Matanzas', ' Centro Auditivo Provincial Doctor René Peña Pérez', 'Calle 137 No. 22608  e/226  y  228  Reparto Cuidamar, Playa, Matanzas', '', '', ''),
(44, 'Matanzas', 'Hospital Docente Ginecobstétrico “Julio Alfonso Me', 'Santa Cristina s/n e/t Unión y Santa Cecilia, Versalles., Matanzas', '', '', ''),
(45, 'Matanzas', 'Hospital Territorial Docente Dr. Julio M. Aristegu', 'Carretera Varadero Cárdenas Km 2, Cárdenas, Matanzas', '', '', ''),
(46, 'Artemisa', 'Hospital General Docente Intermunicipal Ivan Portu', 'Calle 76 No. 4511 entre 45 y 47 CP. 32500. San Antonio de los Baños, Artemisa', '', '', ''),
(47, 'Artemisa', 'Centro Auditivo Provincial Artemisa', ' Ave. 45 #5817  e/. 58 y 60, San Antonio de los Baños. ', '', '', ''),
(48, 'Artemisa', 'Hospital General  Docente Ciro Redondo', 'Carretera Central Km 59 1/2, Artemisa', '', '', ''),
(49, 'Mayabeque', 'Centro Auditivo Provincial Mayabeque', 'Ave. 47 esq. 98, San José de las Lajas, Mayabeque', '', '', ''),
(50, 'Mayabeque', 'Hospital Materno Ginecobstétrico Comandante Manuel', 'Avenida 77 No. 7610 entre 76 y 78, Guines', '', '', ''),
(51, 'Mayabeque', 'Hospital General Docente Leopoldito Martínez', 'Avenida 47 esquina 104, Mayabeque, San josé de las Lajas', '', '', ''),
(52, 'Mayabeque', 'Hospital Clínico Quirúrgico Docente Aleida Fernánd', 'Ave 103 # 7011 / 70 y 75 Güines', '', '', ''),
(53, 'Isla de la Juventud', 'Hospital General Docente Héroes de Baire', 'Calle 39 esquina 41 entre A y 4, Nueva Gerona. CP. 25 100, Mpio Especial Isla de la Juventud', '', '', ''),
(54, 'Villa Clara', 'Hospital Pediátrico Universitario José Luis Mirand', 'Avenida 26 de Julio y 1ra. Reparto Escambray. CP. 50 200, Santa Clara', '', '', ''),
(55, 'Villa Clara', 'Hospital Clínico Quirúrgico Arnaldo Milián Castro', 'Avenida Nuevo Hospital entre Circunvalación y Doble Vía. CP. 50 100, Santa Clara', '', '', ''),
(56, 'Villa Clara', 'Centro Auditivo Provincial Villa Clara', 'Hospital Pediatrico Jose Luis Miranda, Área 4, ave.26 de julio y 1ra Rpto Escambray, Santa Clara.', '', '', ''),
(57, 'Villa Clara', 'Hospital Universitario Gineco-Obstétrico Mariana G', 'Avenida 26 de Julio, Reparto Escambray, Santa Clara', '', '', ''),
(58, 'Villa Clara', 'Hospital Militar Comandante Manuel Fajardo', 'Nueva Abel Santamaria, Villa Clara', '', '', ''),
(59, 'Villa Clara', 'Hospital General Docente Intermunicipal Mártires d', 'Carretera Circuito Norte a Quemado de Güines km 2 1/2, Sagua La Grande', '', '', ''),
(60, 'Villa Clara', 'Hospital General Docente de Placetas', '1era del Sur entre 3ra y 4ta del Oeste, Placetas ', '', '', ''),
(61, 'Villa Clara', 'Hospital General Docente Municipal de Remedios', 'Avenida de los Mártires No. 14 Altos, Remedios', '', '', ''),
(62, 'Cienfuegos', 'Hospital Pediátrico Universitario Paquito González', 'Calle 39 # 3602 e/ 36 y 38. CP. 55100, Cienfuegos', '', '', ''),
(63, 'Cienfuegos', 'Hospital General Universitario Dr. Gustavo Aldereg', 'Calle 51 A y Avenida 5 de Septiembre. CP. 55100, Cienfuegos', '', '', ''),
(64, 'Cienfuegos', 'Centro Auditivo Provincial Cienfuegos', 'Calle 51A esquina 38, Cienfuegos', '', '', ''),
(65, 'Sancti Spíritus', 'Hospital Provincial de Rehabilitación Dr. Faustino', 'Carretera de Sasa Km 2', '', '', ''),
(66, 'Sancti Spíritus', 'Hospital Provincial Universitario Camilo Cienfuego', 'Bartolomé Masó No. 128. Esquina Mirto. ', '', '', ''),
(67, 'Sancti Spíritus', 'Hospital Pediátrico Provincial José Martí Pérez', '5ta del Oeste No. 72, Reparto Colón', '', '', ''),
(68, 'Sancti Spíritus', 'Centro Auditivo Provincial Sancti Spíritus', 'Calle Mariano Hernández No. 56A entre Céspedes y Martí', '', '', ''),
(69, 'Ciego de Avila', 'Hospital General Docente Provincial Roberto Rodríg', 'Zayas s/n esquina Libertad. CP. 67 210, Moron', '', '', ''),
(70, 'Ciego de Avila', 'Hospital Universitario Dr. Antonio Luaces Iraola', 'Calle Máximo Gómez No. 257 entre 4ta y Onelio Hernández. CP. 65200, Ciego de Ávila', '', '', ''),
(71, 'Ciego de Avila', 'Centro Auditivo Provincial Ciego de Avila', 'Celle Joaquín de Agüero No. 822 entre 11 y 12, Ciego de Ávila', '', '', ''),
(72, 'Camagüey', 'Hospital Pediátrico Provincial Docente Dr. Eduardo', 'Dolores Betancourt No 2 entre Domingo Puentes y Carretera de Santa Cruz, Camaguey', '', '', ''),
(73, 'Camagüey', 'Hospital Psiquiátrico Docente Provincial Dr. René ', 'Carretera Central Oeste km 4 1/2. CP. 70 100, Camaguey', '', '', ''),
(74, 'Camagüey', 'Hospital Provincial Docente Clínico Quirúrgico Man', 'Carretera Central Oeste Km 4 1/2, Camaguey', '', '', ''),
(75, 'Camagüey', 'Hospital Docente Ginecobstétrico Provincial Ana Be', 'Carretera Central Oeste Km 4 1/2.', '', '', ''),
(76, 'Camagüey', 'Hospital Militar Dr. Octavio de la Concepción y de', 'C.Porro No. 102, Garrido', '', '', ''),
(77, 'Las Tunas', 'Hospital General Provincial Dr. Ernesto Che Guevar', 'Avenida 2 de Diciembre No. 1. CP. 75 100, Las Tunas', '', '', ''),
(78, 'Las Tunas', 'Hospital Pediatrico Provincial Martires de las Tun', 'Carretera Central Km 2, Reparto Este, Las Tunas', '', '', ''),
(79, 'Las Tunas', 'Centro Auditivo Las Tunas', 'Hospital Docente Ernesto Guevara, Dpto Moldes Auditivos, Ave.2 de diciembre,Las Tunas', '', '', ''),
(80, 'Holguín', 'Clínica para la Investigación y Rehabilitación de ', 'Calle Libertad # 6 entre 12 y 14. Reparto El Llano, Holguin 80100', '', '', ''),
(81, 'Holguín', 'Hospital General Docente Vladimir Ilich Lenin', 'Avenida Lenin No 4 . CP. 80 100, Holguin', '', '', ''),
(82, 'Holguín', 'Hospital Clínico Quirúrgico Lucía Iñiguez Landín', 'Carretera Valle Mayabe y Circunvalación. CP. 80 100, Holguin', '', '', ''),
(83, 'Holguín', 'Hospital Pediátrico Provincial Octavio Concepción ', 'Avenida Libertadores No 91 Reparto Peralta. CP. 80 100, Holguin', '', '', ''),
(84, 'Holguín', 'Centro Auditivo Provincial Holguin', 'Frixes No. 342 entre Carbó y Carretera Central, Holguin', '', '', ''),
(85, 'Holguín', 'Hospital Militar Dr. Fermín Valdés Domínguez/HOL', 'Carretera de Mayari Km 3, Holguin', '', '', ''),
(86, 'Holguín', ' Hospital General Intermunicipal Guillermo Luis Fe', 'Reparto Caribe, s/n, Moa, Holguin', '', '', ''),
(87, 'Granma', 'Hospital General Provincial Carlos Manuel de Céspe', 'Carretera Km 1. Vía Santiago de Cuba. CP. 85 100, Bayamo', '', '', ''),
(88, 'Granma', 'Hospital Clínico Quirúrgico Provincial Celia Sánch', 'Avenida Camilo Cienfuegos Km 1. Vía Campechuela, Manzanillo', '', '', ''),
(89, 'Granma', 'Centro Auditivo Provincial Granma ', 'Amado Estévez No. 86, Reparto Roberto Reyes, Bayamo', '', '', ''),
(90, 'Granma', 'Hospital Pediátrico General Luis Ángel MilanésTama', 'Avenida Francisco Vicente Aguilera No. 505, Bayamo, Granma', '', '', ''),
(91, 'Granma', 'Hospital Infantil Hermanos Cordové (Manzanillo)', 'Calle # 3 % 2 da Ave y 3ra Ave Reparto Caymari, Manzanillo, Granma', '', '', ''),
(92, 'Granma', 'Hospital Ginecobstétrico Fé del Valle Ramos de Man', 'Avenida Marti No. 147 esquina San Fernando, Manzanillo, Granma', '', '', ''),
(93, 'Guantánamo', 'Hospital General Docente Dr. Agosthino Neto', 'Carretera El Salvador Km 1. CP. 95 100, Guantanamo', '', '', ''),
(94, 'Guantánamo', 'Hospital Pediátrico Pedro A. Pérez', 'Calle 8 Oeste entre 4 y 6 Sur, Guantánamo', '', '', ''),
(95, 'Guantánamo', 'Centro Auditivo Provincial Guantánamo', 'Ave. Camilo Cienfuegos No. 663 entre Beneficiencia y San Lino, Guantánamo', '', '', ''),
(96, 'Guantánamo', 'Hospital General Docente Dr. Octavio de la Concepc', 'Bahorque S/N, Baracoa, Guantanamo', '', '', ''),
(97, 'Stgo de Cuba', 'Hospital Docente Pediátrico Sur', 'Calle 24 de Febrero No. 402 CP. 90100, Stgo de Cuba', '', '', ''),
(98, 'Stgo de Cuba', 'Hospital Provincial Clínico Quirúrgico Docente Sat', 'Avenida de Los Libertadores S/n entre 4ta y 6ta Sueño,Stgo de Cuba', '', '', ''),
(99, 'Stgo de Cuba', 'Hospital General Docente Dr. Juan Bruno Zayas de S', 'Carretera del Caney Esq 23 Pastorita Stgo CP. 90100, Stgo de Cuba', '', '', ''),
(100, 'Stgo de Cuba', 'Centro Auditivo Provincial Santiago de Cuba', 'Calle Pinar del Rio entre 8 y 9, Reparto Fomento, Stgo de Cuba', '', '', ''),
(101, 'Stgo de Cuba', 'Hospital General Docente Orlando Pantoja Tamayo', 'Carretera Central S/N La Filomena Contramaestre ', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelis`
--

CREATE TABLE `pelis` (
  `ID` int(25) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pelis`
--

INSERT INTO `pelis` (`ID`, `nombre`) VALUES
(1, 'video00'),
(2, 'Pearl Harbor'),
(3, 'Actualizar BIOS [Placa Base]'),
(4, 'Amazing Inventions You May Not Know Exist');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plandetrabajo`
--

CREATE TABLE `plandetrabajo` (
  `ID` int(11) NOT NULL,
  `Tec` varchar(255) NOT NULL,
  `Equipo` varchar(255) NOT NULL,
  `Reporte` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `terminado` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plandetrabajo`
--

INSERT INTO `plandetrabajo` (`ID`, `Tec`, `Equipo`, `Reporte`, `fecha`, `terminado`) VALUES
(6, 'landin', 'Optima', 'holaaaaaaaaa', '2020-04-15', 'SI'),
(7, 'landin', 'Medicid Panda', 'bbbbbbbbbbbbbbbbbbbb', '2020-04-15', 'Pendiente'),
(10, 'Mesa', 'Audix 5', 'qwe', '2020-04-15', 'Pendiente'),
(11, 'Mesa', 'NMIO', 'bbbbbbbbbbbbbbbbbbbb', '2020-04-14', 'Pendiente'),
(12, 'landin2', '', 'ert', '2020-04-15', 'Pendiente'),
(13, 'landin2', 'Neuronica 5', 'werwer', '2020-04-15', 'Pendiente'),
(14, 'landin', 'Audix 5', 'bbbbbbbbbbbbbbbbbbbb', '2020-04-14', 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportesat`
--

CREATE TABLE `reportesat` (
  `ID` int(11) NOT NULL,
  `Nunm` varchar(50) COLLATE utf8_bin NOT NULL,
  `FechaSolicitud` varchar(25) COLLATE utf8_bin NOT NULL,
  `Equipo` varchar(50) COLLATE utf8_bin NOT NULL,
  `NS` varchar(15) COLLATE utf8_bin NOT NULL,
  `Cliente` varchar(50) COLLATE utf8_bin NOT NULL,
  `Provincia` varchar(25) COLLATE utf8_bin NOT NULL,
  `Solicitadopor` varchar(50) COLLATE utf8_bin NOT NULL,
  `Falloreportado` varchar(250) COLLATE utf8_bin NOT NULL,
  `especialistadeST` varchar(50) COLLATE utf8_bin NOT NULL,
  `FechadeAtencion` date NOT NULL,
  `ECETFechasolucion` date NOT NULL,
  `SolucionadoPor` varchar(25) COLLATE utf8_bin NOT NULL,
  `ECETFechaDevolucion` date NOT NULL,
  `DevueltoPor` varchar(25) COLLATE utf8_bin NOT NULL,
  `EquipoApto` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `reportesat`
--

INSERT INTO `reportesat` (`ID`, `Nunm`, `FechaSolicitud`, `Equipo`, `NS`, `Cliente`, `Provincia`, `Solicitadopor`, `Falloreportado`, `especialistadeST`, `FechadeAtencion`, `ECETFechasolucion`, `SolucionadoPor`, `ECETFechaDevolucion`, `DevueltoPor`, `EquipoApto`) VALUES
(69, 'C200101', '2020-01-06', 'Neuronica 5', '05AND001N-20', 'PediÃ¡trico de Marianao Juan Manuel MÃ¡rquez', 'Habana', 'MarÃ­a del Carmen', 'Fallo de comunicaciÃ³n', 'Mesa    ', '2020-01-09', '2020-01-15', '', '2020-01-16', '', 'SI'),
(70, 'C200102', '2020-01-06', 'Audiometro Clinico', 'NKT17006', 'Salvador Allende', 'Habana', 'Odette', 'Bloqueo del equipo', 'Yusniel  /Lily ', '2020-01-14', '0000-00-00', '', '2020-01-30', '', 'SI'),
(71, 'C200103', '2020-01-06', 'Audiometro Clinico', 'NKT18001', 'Salvador Allende', 'Habana', 'Gustavo', 'Bloqueo del equipo en las pruebas y continuamente hay que resetearlo para poder concluir las pruebas', 'Yusniel  /Lily', '2020-01-14', '2020-02-18', '', '2020-04-27', '', 'Pendiente'),
(72, 'C200104', '2020-01-07', 'EOA 2.1', 'ECLNE14016', 'AmÃ©rica Arias (Maternidad de LÃ­nea)', 'Habana', 'Yisel', 'No cargan las baterÃ­as', 'Mesa  /Gustavo', '2020-01-07', '2020-01-20', '', '2020-04-22', '', 'SI'),
(73, 'C200105', '2020-01-07', 'Medicid 5', '13AND001M021', 'Ameijeiras 9no piso', 'Habana', 'Lic. Carlos', 'Deja de grabar y se pierde el estudio', 'Yusniel  /Lily', '2020-01-15', '2020-01-20', '', '2020-01-24', '', 'SI'),
(74, 'C200106', '2020-01-07', 'Medicid 5', '03AND001M10', 'Hospital PsiquiÃ¡trico de La Habana', 'Habana', 'Dr. Faure', 'Fallo de comunicaciÃ³n', 'Gustavo  ', '2020-01-09', '0000-00-00', '', '0000-00-00', '', 'SI'),
(75, 'C200107', '2020-01-08', 'Medicid 5', '13AND001M029', 'PediÃ¡trico de Marianao Juan Manuel MÃ¡rquez', 'Habana', 'Sedys', 'Problema con el cabezote de electrodos', 'Mesa  ', '2020-01-14', '0000-00-00', '', '0000-00-00', '', 'SI'),
(76, 'C200108', '2020-01-13', 'Medicid 5', '18AND001M016', 'Medicina SubacuÃ¡tica y AviaciÃ³n', 'Habana', 'Dra. Martha', 'No  comunica', 'Gustavo  ', '2020-01-14', '0000-00-00', '', '0000-00-00', '', 'SI'),
(77, 'C200109', '2020-01-13', 'Audiometro Clinico', 'AULNE13002', 'Ameijeiras', 'Habana', 'TÃ©c. Arelys', 'Problemas de calibraciÃ³n y de audÃ­fono (salida izquierda)', 'Lily  /Yusniel', '2020-01-15', '0000-00-00', '', '0000-00-00', '', 'SI'),
(78, 'C200110', '2020-01-13', 'Audiometro Clinico', 'AULNE 14003', 'Ameijeiras', 'Habana', 'TÃ©c. Arelys', 'Descalibrado', 'Lily  /Yusniel', '2020-04-15', '2020-01-17', '', '2020-01-27', '', 'SI'),
(79, 'C200111', '2020-01-14', 'Medicid 5 Video EEG', '13AND001M038', 'INN', 'Habana', 'TÃ©c. Carlos', 'Registro se bloquea', 'Landin  /Landin', '2020-01-15', '0000-00-00', '', '0000-00-00', '', 'SI'),
(80, 'C200112', '2020-01-14', 'Neuronica 5', '10AND001N-012', 'Ameijeiras', 'Habana', 'Eduardo', 'Fallo de comunicaciÃ³n', 'Gustavo  ', '2020-01-16', '0000-00-00', '', '0000-00-00', '', 'SI'),
(81, 'C200113', '2020-01-17', 'Neuronica 5', '13AND001M038', 'PediÃ¡trico Juan Manuel MÃ¡rquez', 'Habana', 'MarÃ­a', 'No comunica', 'Mesa  /Mesa', '2020-01-17', '0000-00-00', '', '0000-00-00', '', 'SI'),
(82, 'C200114', '2020-01-17', 'Audix 5', '06AND001A-07', 'PediÃ¡trico Juan Manuel MÃ¡rquez', 'Habana', 'MarÃ­a', 'No  comunica', 'Mesa  /Mesa', '2020-01-17', '0000-00-00', '', '0000-00-00', '', 'SI'),
(83, 'C200115', '2020-01-17', 'Medicid 5', '13AND001M038', 'INN', 'Habana', 'Carlos', 'El equipo se bloquea despuÃ©s de trabajar un tiempo', 'Mesa  /Mesa', '2020-01-17', '0000-00-00', '', '0000-00-00', '', 'SI'),
(84, 'C200116', '2020-01-17', 'Neuronica 5', '08AND001N-05', 'INN', 'Habana', 'Carlos', 'No hay comunicaciÃ³n', 'Gustavo  ', '2020-01-22', '0000-00-00', '', '0000-00-00', '', 'SI'),
(85, 'C200117', '2020-01-22', 'Fenix', '18ANC00F1007', 'Hosp. Militar Comandante Manuel Fajardo Rivero', 'Villa Clara', 'Jorge', 'No comunica', 'Crespo    ', '2020-01-23', '0000-00-00', '', '2020-01-31', '', 'SI'),
(86, 'C200118', '2020-01-24', 'Medicid 5', '13AND001M038', 'INN', 'Habana', 'Leidy', 'Se congela la imagen, despuÃ©s de trabajar un tiempo', 'Mesa  /Mesa', '2020-01-27', '0000-00-00', '', '0000-00-00', '', 'SI'),
(87, 'C200119', '2020-01-29', 'Neuronica 5', '05AND001N-27', 'INN', 'Habana', 'Yalina', 'POD con problemas', 'Yusniel  ', '2020-01-29', '2020-02-18', '', '2020-04-19', '', 'SI'),
(88, 'C200120', '2020-01-29', 'Neuronica 5', '08AND001N-04', 'INN', 'Habana', 'Yalina', 'POD con problemas y cable adaptador roto', 'Yusniel  ', '2020-01-29', '2020-02-17', '', '2020-02-19', '', 'SI'),
(89, 'C200121', '2020-01-29', 'Audix 5', '07AND001A-05', 'William Soler', 'Habana', 'Ana', 'Fallo de comunicaciÃ³n', 'Mesa  /Lily', '2020-01-29', '2020-01-31', '', '2020-02-04', '', 'SI'),
(90, 'C200122', '2020-01-29', 'Medicid 5', '08AND001M-22', 'INN', 'Habana', 'Carlos', 'No comunica y no trabaja la aplicaciÃ³n de PsicofisiologÃ­a (no sincronismo)', 'Gustavo  /Crespo', '2020-01-29', '2020-02-04', '', '2020-02-11', '', 'SI'),
(91, 'C200123', '2020-01-30', 'Neuronica 5', '14AND001N033', 'Ameijeiras', 'Habana', 'Eduardo', 'Artefacto en el registro que se desplaza. Canales ruidosos', 'Gustavo  ', '2020-01-31', '2020-02-03', '', '2020-04-11', '', 'SI'),
(92, 'C200124', '2020-01-30', 'Audiometro Clinico', 'AULNE14054', 'Centro Auditivo', 'Cienfuegos', 'AdriÃ¡n', 'Fallo en el estÃ­mulo', 'Mesa   ', '2020-01-31', '2020-02-06', '', '2020-04-10', '', 'SI'),
(93, 'C200125', '2020-01-30', 'Fenix', '16ANC00F1006', 'Eliseo Noel CamaÃ±o', 'Matanzas', 'Mirella', 'Fallo de software', 'Guillermo  /Mesa ', '2020-02-07', '2020-02-18', '', '2020-02-12', '', 'Pendiente'),
(94, 'C200126', '2020-01-30', 'Fenix', '', 'Guevara', 'Las Tunas', 'Dra. Belkis', 'DespuÃ©s de 10 EEG no deja grabar', '     ', '2020-02-04', '0000-00-00', '', '2020-02-19', '', 'Pendiente'),
(95, 'C200201', '2020-02-03', 'Audix 5', '14AND001A008', 'ClÃ­nica 43 del Minint', 'Habana', 'MaitÃ©', 'Problemas con el software de transientos', 'Lily  /Mesa', '2020-02-04', '0000-00-00', '', '0000-00-00', '', 'SI'),
(96, 'C200202', '2020-02-10', 'Audix 5', '06AND001A-07 ', 'Juan Manuel MÃ¡rquez', 'Habana', 'MarÃ­a ', 'Fuente de alimentaciÃ³n con problemas', 'Mesa  ', '2020-02-12', '0000-00-00', '', '0000-00-00', '', 'SI'),
(97, 'C200203', '2020-02-12', 'Medicid 5 Video EEG', '13AND001M021', 'Ameijeiras', 'Habana', 'YaimÃ­', 'Fuera de foco la cÃ¡mara, no tiene control de foco', 'Gustavo  ', '2020-02-13', '0000-00-00', '', '0000-00-00', '', 'SI'),
(98, 'C200204', '2020-02-12', 'EOA 2.1', 'NKT18004', 'Miguel Enrique', 'Habana', 'Gabriela', 'No reconoce el dispositivo', 'Gustavo  ', '2020-02-19', '2020-04-21', '', '2020-02-21', '', 'SI'),
(99, 'C200205', '2020-02-12', 'Medicid 5', '03AND001M11', 'CNEURO', 'Habana', 'Antelo', 'Fallo de comunicaciÃ³n', 'Crespo  ', '2020-02-12', '2020-02-13', '', '2020-02-14', '', 'SI'),
(100, 'C200206', '2020-02-18', 'Medicid 5', '04BND001M-14', 'Cimeq', 'Habana', 'BÃ¡rbara', 'Fallo detectado en MP', 'Lily  /Mesa', '2020-02-18', '2020-02-19', '', '2020-02-21', '', 'SI'),
(101, 'C200207', '2020-02-18', 'Neuronica 5', '06AND001N-08', 'Hospital PediÃ¡trico de Centro Habana', 'Habana', 'Zenaida', 'Baja amplitud en la calibraciÃ³n del canal 1', 'Gustavo  ', '2020-02-18', '2020-02-24', '', '2020-02-25', '', 'SI'),
(102, 'C200208', '2020-02-19', 'Neuronica 5', '08AND001N-01', 'INN', 'Habana', 'Yalina', 'Problemas con el POD', 'Yusniel  ', '2020-02-19', '2020-02-25', '', '2020-02-26', '', 'SI'),
(103, 'C200209', '2020-02-25', 'Fenix', '06ANC00F1-18', 'PediÃ¡trico de Centro Habana', 'Habana', 'Marisol', 'No lee impedancia', 'Gustavo  ', '2020-02-25', '0000-00-00', '', '0000-00-00', '', 'Pendiente'),
(104, 'C200210', '2020-02-25', 'Fenix', '16ANC00F1010', 'Hospital Guillermo Luis Fdez Hdez Baquero', 'Holguin', 'Taylor Ma', 'La laptop no estÃ¡ dando video', '    ', '2020-02-29', '0000-00-00', '', '0000-00-00', '', 'SI'),
(105, 'C200211', '2020-02-25', 'EOA 2.1', 'ECLNE14016', 'AmÃ©rica Arias (Maternidad de LÃ­nea)/', 'Habana', 'Yisel', 'No carga', '   ', '2020-02-26', '0000-00-00', '', '0000-00-00', '', 'SI'),
(106, 'C200401212', '2020-02-25', 'Audiometro Clinico', 'NKT17006', 'Salvador Allende', 'Habana', 'Niurka', 'La intensidad de la estimulaciÃ³n estÃ¡ por debajo de los niveles reales. Se bloquea', 'Gustavo  ', '2020-02-27', '0000-00-00', '', '0000-00-00', '', 'SI'),
(107, 'C200213', '2020-02-28', 'EOA 2.1', 'ECLNE14018', 'Materno de CamagÃ¼ey', 'CamagÃ¼ey', 'RubÃ©n Caballero (logÃ­stico', 'Problemas con la sonda', '    ', '2020-03-04', '0000-00-00', '', '0000-00-00', '', 'SI'),
(108, 'C200214', '2020-02-28', 'EOA 2.1', 'NMX17025', 'Materno de CamagÃ¼ey', 'CamagÃ¼ey', 'RubÃ©n Caballero (logÃ­stico)', 'Problemas con la sonda', '    ', '2020-03-19', '0000-00-00', '', '0000-00-00', '', 'Pendiente'),
(109, 'C200215', '2020-02-28', 'EOA 2.1', '', 'Materno de CamagÃ¼ey', 'CamagÃ¼ey', 'RubÃ©n Caballero (logÃ­stico)', 'Problemas con la sonda', '    ', '2020-03-04', '0000-00-00', '', '0000-00-00', '', ''),
(110, 'C200216', '2020-02-28', 'EOA 2.1', '', 'Comandante Pinares', 'CamagÃ¼ey', 'Yaimara GarcÃ­a', 'Se apaga y se bloquea', '    ', '2020-03-11', '0000-00-00', '', '0000-00-00', '', 'SI'),
(111, 'C200217', '2020-02-28', 'EOA 2.1', '', 'Comandante Pinares', 'CamagÃ¼ey', 'Yaimara GarcÃ­a', 'Se apaga y no pasa ninguna prueba', '    ', '2020-03-11', '0000-00-00', '', '0000-00-00', '', 'SI'),
(112, 'C200301', '2020-03-02', 'Medicid 5', '', 'INN/ Dpto NeurofisiologÃ­a, planta baja', 'Habana', 'Zulema', 'Falta de comunicaciÃ³n', '   ', '2020-04-26', '0000-00-00', '', '0000-00-00', '', 'Pendiente'),
(113, 'C200302', '2020-03-02', 'Audiometro Clinico', '', 'Profilactorio de Guanabo', 'Habana', 'Tania Perez', 'Necesidad de sustituir transductor oseo de ', '   ', '2020-03-12', '0000-00-00', '', '0000-00-00', '', ''),
(114, 'C200303', '2020-03-02', 'Medicid 5', '', 'Miguel Enrique', 'Habana', 'Yosbel', 'Fallo de comunicaciÃ³n y se bloquea', '   ', '2020-03-19', '0000-00-00', '', '0000-00-00', '', ''),
(115, 'C200304', '2020-03-06', 'Neuronica 5', '', 'William  Soler', 'Habana', 'Iris', 'Sale mal el estudio', '   ', '2020-03-12', '0000-00-00', '', '0000-00-00', '', ''),
(116, 'C200305', '2020-03-06', 'Medicid 5', '', 'INN', 'Habana', 'Dalia', 'El equipo estÃ¡ roto, sopechan que sea la PC', '   ', '2020-04-07', '0000-00-00', '', '0000-00-00', '', ''),
(118, 'C200401', '2020-04-17', 'Fenix', '13AND001M038', 'Ameijeiras', 'Habana', 'Yalina', 'Problemas con la sonda', 'Guillermo  ', '2020-04-22', '2020-04-20', 'Mesa', '2020-04-21', 'Mesa', 'SI'),
(119, 'C200402', '2020-04-08', 'Medicid 5', '13AND001M038', 'Ameijeiras', 'Habana', '', 'Fallo de comunicaciÃ³n', 'Mesa  ', '2020-04-07', '0000-00-00', '', '0000-00-00', '', 'SI'),
(120, 'C200403', '2020-04-26', 'Medicid 5 Video EEG', '13AND001M038', 'INN', 'Habana', 'Yalina', 'Fallo de comunicaciÃ³n', 'Mesa  ', '2020-04-16', '0000-00-00', '', '0000-00-00', '', 'SI'),
(123, 'C200404', '2020-04-15', 'Fenix', '', '', 'Habana', '', '', '    ', '2020-04-15', '0000-00-00', '', '0000-00-00', '', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(255) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `clave` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `nombre`, `clave`, `Nivel`) VALUES
(5, 'landin', '$2y$10$Xv/kReAqWScT.24W97LYP.Xd0SJTk4HVE4nOFb1AUBVaGAONS6QC.', 1),
(6, 'landin2', '$2y$10$1iTXfpDw9lkhNYaKhs0JauyxXT3xRwDN7nB4xgEJB8avcCrqxtIEG', 2),
(7, 'Mesa', '$2y$10$FdM8HtO1qfBeXndamlpSi.eTHVUM4O.0T7TswmDAqvbyB6W1uRrZm', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `equiposinstalados`
--
ALTER TABLE `equiposinstalados`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `hospitales`
--
ALTER TABLE `hospitales`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `pelis`
--
ALTER TABLE `pelis`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `plandetrabajo`
--
ALTER TABLE `plandetrabajo`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `reportesat`
--
ALTER TABLE `reportesat`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `ID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `equiposinstalados`
--
ALTER TABLE `equiposinstalados`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT de la tabla `hospitales`
--
ALTER TABLE `hospitales`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `pelis`
--
ALTER TABLE `pelis`
  MODIFY `ID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `plandetrabajo`
--
ALTER TABLE `plandetrabajo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `reportesat`
--
ALTER TABLE `reportesat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
