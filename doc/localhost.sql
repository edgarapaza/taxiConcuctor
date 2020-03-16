-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-03-2020 a las 11:57:11
-- Versión del servidor: 10.1.44-MariaDB-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `digisjjk_taxi1`
--
CREATE DATABASE IF NOT EXISTS `digisjjk_taxi1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `digisjjk_taxi1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auto`
--

DROP TABLE IF EXISTS `auto`;
CREATE TABLE `auto` (
  `codunidad` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `marca` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `modelo` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `placa` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `color` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `año` char(4) CHARACTER SET utf8mb4 NOT NULL,
  `clasificacoin` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `idchat` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT 'CURRENT_TIMESTAMP',
  `idcliente` int(11) DEFAULT NULL,
  `idconductor` int(20) DEFAULT NULL,
  `idpedidoMov` int(11) DEFAULT NULL,
  `idpedidoDeli` int(11) DEFAULT NULL,
  `idpedidoRes` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`idchat`, `nombre`, `mensaje`, `fecha`, `idcliente`, `idconductor`, `idpedidoMov`, `idpedidoDeli`, `idpedidoRes`, `estado`) VALUES
(1, 'M3', 'Llegamos en 3 Minutos', '2020-02-24 08:35:24', 5, 1, NULL, 1, NULL, 0),
(2, 'Edgar Apaza', 'Gracias', '2020-02-24 08:35:38', 5, 0, 0, 0, 0, 1),
(3, 'M3', 'Llegamos en 3 Minutos', '2020-02-24 08:35:46', 5, 0, NULL, 1, NULL, 0),
(4, 'Edgar Apaza', 'Gracias', '2020-02-24 08:35:57', 5, 0, 0, 0, 0, 1),
(5, 'M3', 'Llegamos en 3 Minutos', '2020-02-24 08:38:39', 6, 0, 3, NULL, NULL, 1),
(6, '', 'Solicita Movilidad:JR MOQUEGUA 648(TELEFONICA)', '2020-03-03 21:49:07', 16, 0, NULL, NULL, NULL, 1),
(7, '', 'Servicio Aceptado', '2020-03-03 21:49:52', 16, 0, 4, NULL, NULL, 1),
(8, '', 'Holas', '2020-03-03 21:51:11', 16, 0, 4, NULL, NULL, 1),
(9, '', 'Hola', '2020-03-03 21:51:16', 16, 0, 4, NULL, NULL, 1),
(10, '', 'Solicita Movilidad:JR MOQUEGUA 6(TELEFóNICA)', '2020-03-03 21:54:33', 16, 0, NULL, NULL, NULL, 1),
(11, '', 'Servicio Aceptado', '2020-03-03 21:55:17', 16, 0, 5, NULL, NULL, 1),
(12, 'Edgar Apaza', 'Hola', '2020-03-04 07:39:49', 5, 0, NULL, 1, NULL, 0),
(13, '', 'Solicita Movilidad:JR. EL PUERTO  123(GUESC)', '2020-03-05 08:17:18', 6, 0, NULL, NULL, NULL, 1),
(14, '', 'Servicio Aceptado', '2020-03-05 16:11:49', 16, 0, NULL, 2, NULL, 1),
(15, '', 'Servicio Aceptado', '2020-03-05 16:11:53', 6, 0, NULL, 6, NULL, 1),
(16, '', 'Servicio Aceptado', '2020-03-05 17:27:21', 16, 0, NULL, NULL, 1, 1),
(17, '', 'Servicio Aceptado', '2020-03-05 17:27:28', 16, 0, NULL, NULL, 2, 1),
(18, '', 'Servicio Aceptado', '2020-03-05 17:27:32', 6, 0, NULL, NULL, 6, 1),
(19, '', 'Solicita Movilidad:JR. CALVARIO 1234(CIRCUNVALACIóN NORTE)', '2020-03-07 19:03:33', 6, 0, NULL, NULL, NULL, 1),
(20, '', 'Servicio Aceptado', '2020-03-07 19:04:01', 6, 0, 7, NULL, NULL, 1),
(21, 'Milagros Apaza', 'Cambio de 50', '2020-03-07 19:06:08', 6, 0, 7, NULL, NULL, 1),
(22, 'Milagros Apaza', 'Cambio de 50', '2020-03-07 19:06:08', 6, 0, 7, NULL, NULL, 1),
(23, 'Milagros Apaza', 'Cambio de 50', '2020-03-07 19:06:08', 6, 0, 7, NULL, NULL, 1),
(24, 'Milagros Apaza', 'Cambio de 50', '2020-03-07 19:06:08', 6, 0, 7, NULL, NULL, 1),
(25, '', 'Solicita Movilidad:AV. ALTO ALIANZA 355(POR LA ESTACIóN DE BOMBEROS)', '2020-03-09 15:56:01', 5, 0, NULL, NULL, NULL, 1),
(26, '', 'Solicita Movilidad:URB. VILLA DEL LAGO 234(ALTURA CIRCON)', '2020-03-09 15:57:55', 5, 0, NULL, NULL, NULL, 1),
(27, 'Edgar Apaza', 'HOLA', '2020-03-09 15:58:20', 5, 0, NULL, 1, NULL, 0),
(28, '', 'Solicita Movilidad:UNO(ALTURA CIRCON)', '2020-03-09 16:07:09', 5, 0, NULL, NULL, NULL, 1),
(29, '', 'Servicio Aceptado', '2020-03-09 16:09:43', 5, 0, 11, NULL, NULL, 1),
(30, 'Edgar Apaza', 'Hola', '2020-03-09 16:09:58', 5, 0, 11, NULL, NULL, 1),
(31, 'Edgar Apaza', 'Hola', '2020-03-09 16:11:21', 5, 0, 11, NULL, NULL, 1),
(32, '', 'Solicita Movilidad:JR AAAAA(RRR)', '2020-03-09 17:14:07', 16, 0, NULL, NULL, NULL, 1),
(33, '', 'Servicio Aceptado', '2020-03-09 17:14:39', 16, 57, 12, NULL, NULL, 1),
(34, '', 'Servicio Aceptado', '2020-03-09 17:49:05', 1, 1, 10, NULL, NULL, 1),
(35, 'Josue Quispe Corahua', 'Hola', '2020-03-09 21:11:30', 1, 1, 10, NULL, NULL, 1),
(36, 'Josue Quispe Corahua', 'Hermosa', '2020-03-09 21:24:31', 1, 1, 11, NULL, NULL, 1),
(37, 'M00', 'Llegamos en 3 Minutos', '2020-03-09 21:58:03', 1, 1, 10, NULL, NULL, 1),
(38, 'M00', 'Llegamos en 3 Minutos', '2020-03-09 22:00:00', 1, 1, 10, NULL, NULL, 1),
(39, 'M00', 'Llegamos en 3 Minutos', '2020-03-09 22:00:24', 1, 1, 10, NULL, NULL, 1),
(40, 'M00', 'Llegamos en 3 Minutos', '2020-03-09 22:01:29', 1, 1, 10, NULL, NULL, 1),
(41, 'M00', 'Servicio Aceptado', '2020-03-09 22:05:44', 5, 1, 9, NULL, NULL, 1),
(42, 'Josue Quispe Corahua', 'Ok', '2020-03-09 23:00:20', 1, 1, 11, NULL, NULL, 1),
(43, 'M00', 'Llegamos en 5 Minutos', '2020-03-09 23:03:18', 5, 1, 9, NULL, NULL, 1),
(44, 'Edgar Apaza', 'Perfecto', '2020-03-09 23:48:32', 5, 1, 9, NULL, NULL, 1),
(45, 'M00', 'Unidad en el Punto', '2020-03-09 23:54:20', 5, 1, 9, NULL, NULL, 1),
(46, 'Edgar Apaza', 'Ya salgo', '2020-03-09 23:55:26', 5, 1, 9, NULL, NULL, 1),
(47, 'Edgar Apaza', 'Hola', '2020-03-10 00:02:11', 5, 1, 9, NULL, NULL, 1),
(48, 'Edgar Apaza', 'Sencillo', '2020-03-10 00:19:26', 5, 1, NULL, 1, NULL, 0),
(49, '1', 'Llegamos en 5 Minutos', '2020-03-10 00:19:45', 5, 1, NULL, 1, NULL, 0),
(50, 'Edgar', 'Hola', '2020-03-10 00:38:41', 5, 1, NULL, 1, NULL, 0),
(51, 'Edgar', 'Hola', '2020-03-10 00:41:34', 5, 1, NULL, 1, NULL, 0),
(52, '1', 'Llegamos en 10 Minutos', '2020-03-10 00:44:39', 5, 1, NULL, 1, NULL, 0),
(53, 'Edgar', 'Hola', '2020-03-10 00:45:12', 5, 1, NULL, 1, NULL, 0),
(54, 'Edgar', 'Dije que te amaba', '2020-03-10 00:45:23', 5, 1, NULL, 1, NULL, 0),
(55, '', 'Servicio Aceptado', '2020-03-10 00:52:34', 5, 1, NULL, NULL, 4, 1),
(56, 'Edgar Apaza', 'Real', '2020-03-10 00:54:13', 5, 1, NULL, NULL, 4, 1),
(57, 'Edgar Apaza', 'Real', '2020-03-10 00:56:40', 5, 1, NULL, NULL, 4, 1),
(58, 'Edgar Apaza', 'Real', '2020-03-10 00:57:03', 5, 1, NULL, NULL, 4, 1),
(59, 'Edgar', 'Estoy pensando', '2020-03-10 01:00:27', 5, 1, NULL, NULL, 4, 1),
(60, 'Edgar', 'Estoy pensando', '2020-03-10 01:01:13', 5, 1, NULL, NULL, 4, 1),
(61, 'Edgar', 'Estoy pensando', '2020-03-10 01:03:13', 5, 1, NULL, NULL, 4, 1),
(62, 'Edgar', 'Yaaa?', '2020-03-10 01:04:35', 5, 1, NULL, NULL, 4, 1),
(63, '', 'Servicio Aceptado', '2020-03-10 01:08:07', 5, 1, NULL, NULL, 3, 1),
(64, '', 'Servicio Aceptado', '2020-03-10 01:08:48', 5, 0, NULL, NULL, 8, 1),
(65, '1', 'Llegamos en 5 Minutos', '2020-03-10 01:26:15', 5, 1, NULL, NULL, 4, 1),
(66, '1', 'Llegamos en 5 Minutos', '2020-03-10 01:27:48', 0, 1, NULL, NULL, 4, 1),
(67, 'Javier Zea Castilla', 'Llegamos en 5 Minutos', '2020-03-10 01:27:54', 0, 1, NULL, NULL, 4, 1),
(68, 'Javier Zea Castilla', 'Llegamos en 5 Minutos', '2020-03-10 01:28:21', 0, 1, NULL, NULL, 4, 1),
(69, 'M00', 'Llegamos en 10 Minutos', '2020-03-10 01:28:27', 0, 1, NULL, NULL, 4, 1),
(70, 'M00', 'Llegamos en 7 Minutos', '2020-03-10 01:37:42', 5, 1, NULL, NULL, 4, 1),
(71, 'M00', 'Llegamos en 3 Minutos', '2020-03-10 01:41:08', 5, 1, NULL, NULL, 3, 1),
(72, 'Edgar', 'Ok', '2020-03-10 01:41:15', 5, 1, NULL, NULL, 3, 1),
(73, 'M00', 'Unidad en el Punto', '2020-03-10 01:41:45', 5, 1, NULL, NULL, 4, 1),
(74, 'M00', 'Unidad en el Punto', '2020-03-10 01:44:35', 5, 1, NULL, NULL, 3, 1),
(75, 'Edgar', 'Mal pago', '2020-03-10 01:59:33', 5, 1, NULL, 1, NULL, 0),
(76, 'M00', 'Unidad en el Punto', '2020-03-10 02:00:05', 5, 1, NULL, 1, NULL, 0),
(77, 'Edgar', 'Ok', '2020-03-10 02:06:09', 5, 1, NULL, 1, NULL, 0),
(78, 'M00', 'Servicio Aceptado', '2020-03-10 02:17:08', 5, 1, 8, NULL, NULL, 1),
(79, '', 'Solicita Movilidad:JULIO ALMENARA(VILLA MILITAR)', '2020-03-10 02:32:16', 5, 0, NULL, NULL, NULL, 1),
(80, 'M00', 'Servicio Aceptado', '2020-03-10 02:32:57', 5, 1, 13, NULL, NULL, 1),
(81, 'M00', 'Llegamos en 5 Minutos', '2020-03-10 02:33:30', 5, 1, 13, NULL, NULL, 1),
(82, 'Edgar Apaza', 'Ok', '2020-03-10 02:33:41', 5, 1, 13, NULL, NULL, 1),
(83, 'M00', 'Unidad en el Punto', '2020-03-10 02:33:46', 5, 1, 13, NULL, NULL, 1),
(84, 'Edgar Apaza', 'Ya salgo', '2020-03-10 02:33:54', 5, 1, 13, NULL, NULL, 1),
(85, '', 'Solicita Movilidad:JR. CALVARIO 167(BARRIO ALIANZA)', '2020-03-14 09:52:43', 16, 0, NULL, NULL, NULL, 1),
(86, 'M00', 'Servicio Aceptado', '2020-03-14 09:53:20', 16, 1, 14, NULL, NULL, 1),
(87, 'M00', 'Llegamos en 3 Minutos', '2020-03-14 09:53:32', 16, 1, 14, NULL, NULL, 1),
(88, '', 'Solicita Movilidad:T(A)', '2020-03-16 09:03:16', 5, 0, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombres` varchar(60) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(160) DEFAULT NULL,
  `dni` char(8) NOT NULL,
  `ciudad` varchar(60) DEFAULT NULL,
  `passwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombres`, `apellidos`, `telefono`, `email`, `dni`, `ciudad`, `passwd`) VALUES
(1, 'Josue', 'Quispe Corahua', '955105483', 'jhoshua2011qc@gmail.com', '73669777', 'Puno ', '73669777'),
(2, 'hernan percy ', 'flores ordoñez ', '972766830', 'percyflowers6@gmail.com', '46641440', 'puno', '1414flowers'),
(3, 'Carlos Alberto', 'Saavedra Pinazo', '995515750', 'carsapicancer@gmail.com', '01332032', 'Puno', 'saavedra'),
(5, 'Edgar', 'Apaza', '935017466', 'edgarapaza@digiarch.online', '40023528', 'Puno', '1504'),
(6, 'Milagros', 'Apaza', '918805640', 'ldm2210@gmail.com', '45583772', 'Puno', '2210'),
(7, 'Angel', 'Apaza', '929467455', '', '18780861', 'Puno', '1502'),
(8, 'renzo', 'ortega apaza', '946077144', 'renzito15287@gmail.com', '48377807', 'puno', '15287luigui'),
(9, 'Alberto Scott ', 'Leadbe Montana ', '919061911', 'aleadbe@gmail.com', '29726834', 'Puno ', '29726834'),
(10, 'wilber', 'Sotec salas', '931891262', 'diyeywili-g@hotmail.com', '42549559', 'puno', 'eresparami'),
(11, 'ISAI ', 'QUISPE', '973581732', 'civcons.cont@gmail.com', '43452252', 'puno', 'cometa77'),
(12, 'Reynaldo', 'Gonzales', '992953767', 'rydreg@gmail.com', '41108996', 'Puno', 'yatzil'),
(13, 'Liam Gael', 'Quispe Flores', '959974378', 'jhoshua2011qc@gmail.com', '91367975', 'Puno', 'liamgael'),
(14, 'JOHN CARLOS', 'ILASACA JILAJA', '994611327', 'jocailji@gmail.com', '45441418', 'Puno', 'ILASACA19882711'),
(15, 'Juan  ', 'apomayta marce', '952721171', 'juanapo666@gmail.com', '70496828', 'puno', 'juanapo'),
(16, '', '', '', '', '', '', ''),
(17, 'rigel', 'emc', '977253355', 'grove12@gmail.com', '42572216', 'puno', '123456789'),
(18, 'jorge', 'ramos', '924666323', 'jorge@gmail.com', '12345678', 'puno', 'pollojeje17'),
(87, 'pedro', 'ramazoti', '971111794', 'sherwil.marck.69@gmail.com', '76659238', 'puno', 'sherwil.marck'),
(88, 'pedro', 'apaxa', '934166342', 'sherwil.marck.69@gmail.com', '79465328', 'puno', 'mopospopos'),
(90, 'henry', 'Huarcaya chambilla', '941274456', 'chambillahuarcayahenry@gmail.com', '70606207', 'puno', 'provincia'),
(91, 'julio', 'vilca callata', '951608805', 'juliovilcacallata915@gmail.com', '01340741', 'puno', 'julio7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor`
--

DROP TABLE IF EXISTS `conductor`;
CREATE TABLE `conductor` (
  `idconductor` int(11) NOT NULL,
  `movil` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `nombres` varchar(45) CHARACTER SET utf8 NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8 NOT NULL,
  `dni` char(8) CHARACTER SET utf8 NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `direccion` varchar(200) CHARACTER SET utf8 NOT NULL,
  `numlicencia` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `fecnaci` date NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `conductor`
--

INSERT INTO `conductor` (`idconductor`, `movil`, `nombres`, `apellidos`, `dni`, `telefono`, `email`, `direccion`, `numlicencia`, `fecnaci`, `foto`) VALUES
(1, 'M00', 'Javier', 'Zea Castilla', '12312312', '951515151', 'prueba@p.com', 'direccion', 'a23423423', '1956-05-14', './images/none.jpg'),
(7, 'M01', 'Adrian', 'Mamani Fernandez', '48024182', '934926009', 'adrian_12_a@hotmail.com', 'Psj porteño 150 int 4', 'U48024182', '1993-10-17', '../public/img/none.png'),
(26, 'M02', 'Willy', 'Rodriguez Cuno', '72653190', '923069829', 'mmwrlz@gmail.com', 'Jr Nicaragua 168', 'U72653190', '1992-09-03', '../public/img/none.png'),
(38, 'M03', 'Yosvani Julián', 'Ortega Pachacute', '46562223', '936133250', 'yosvanixz6@gmail.com', 'Av. Alto Alianza 2897', 'A1', '1990-07-30', '../public/img/none.png'),
(39, 'M04', 'Luis', 'Ramos cutipa', '43593982', '953283166', 'larc1718@gmail.com', 'JR espinar', 'U 43593982', '2020-01-17', '../public/img/none.png'),
(50, 'M05', 'PEDRO', 'ZAPANA', '46893937', '982387273', '', 'DIEGO', 'U46893947', '0000-00-00', '../public/img/none.png'),
(54, 'M06', 'Elio luis', 'Wiracocha villalva', '45713791', '918533253', 'elioluis29@gmail.com', 'JR industrias 468', 'U45713791', '0000-00-00', '../public/img/none.png'),
(57, 'M07', 'Hernán', 'Ccoapaza', '45785900', '952086467', 'hernan-7@hotmail.com', 'Av. Circunvalación norte', '322', '1989-05-07', '../public/img/none.png'),
(65, 'M08', 'juan gabriel', 'larijo humpire', '71836329', '938497643', 'juan0_t@hotmail.com', 'lencio prado 581', 'u71846329', '1995-10-17', '../public/img/none.png'),
(66, 'M09', 'Wilber', 'Sotec salas', '42549559', '931891262', 'Diyeywili-g@hotmail.com', 'Jiron pardo 471', 'U42549559', '1982-03-07', '../public/img/none.png'),
(69, 'M10', 'ISAI', 'QUISPE', '43452252', '973581732', 'civcons.cont@gmail.com', 'Jr. La oroya 219', 'U43452252', '2020-01-28', '../public/img/none.png'),
(74, 'M11', 'John Randi', 'Holguin Mamani', '72201381', '953441055', 'jolm.1991@gmail.com', 'Jr. Bartolome Herrera N°265', 'U72201381', '1991-02-26', '../public/img/none.png'),
(111, 'M12', 'Jonny', 'Apaza', '42174456', '920477755', 'jon.nyap@hotmail.com', 'Jose Antonio Encinas, 08', 'U42174456', '1983-11-26', '../public/img/none.png'),
(112, 'M13', 'Elar', 'Bustinza', '45002820', '921055446', 'elar1bustinza@gmail.com', 'Jr. Paseo turístico N° 180', 'U45002820', '1987-11-27', '../public/img/none.png'),
(113, 'M14', 'Eddy', 'Anchapuri Clemente', '44730694', '951883115', 'eddyacse@gmail.com', 'Urb. Tepro mz q 14', 'U 44730694', '1987-11-11', '../public/img/none.png'),
(114, 'M15', 'Renzo', 'Ortega', '48377807', '946077144', 'renzito15287@gmail.com', 'Puno', 'U48377807', '1993-07-27', '../public/img/none.png'),
(115, 'M16', 'Alexander', 'Torres Flores', '41996232', '927386667', 'rain_jtf@hotmail.com', 'Jr. Francisco Paredes 270', 'U41996232', '1980-12-22', '../public/img/none.png'),
(116, 'M17', 'Alberto Scott', 'Leadbe Montana', '29726834', '919061911', 'aleadbe@gmail.com', 'Av. Simón Bolívar 2605', 'H29726834', '1978-03-19', '../public/img/none.png'),
(117, 'M18', 'Rubén', 'Apaza Mamani', '41223213', '932127577', 'zatrarb@gmail.com', 'Av. Bartolina siza', 'U41223213', '1985-05-11', '../public/img/none.png'),
(119, 'M19', 'Carlos Alberto', 'Saavedra Pinazo', '01332032', '995515759', 'carsapicancer@gmail.com', 'Av: Cancharani 311', 'U01332032', '1976-07-14', '../public/img/none.png'),
(121, 'M20', 'Benito', 'Avendaño', '75735827', '917260116', 'shashiromix996@gmail.com', 'Comunidad cancharani', 'U75735827', '1996-04-04', '../public/img/none.png'),
(122, 'M21', 'Howard percy', 'Ccosi mamani', '76801534', '917085224', 'persy_howard_26@hotmail.com', 'Pasaje ejercito 122', 'U76801534', '1995-02-08', '../public/img/none.png'),
(123, 'M22', 'Jesus armando', 'Rios cahuana', '40069763', '940518635', 'yhaircitorioscahuana@gmail.com', 'Av.la torre 786', 'U-46069763', '0000-00-00', '../public/img/none.png'),
(124, 'M23', 'Reynaldo', 'González Gutiérrez', '41108996', '992953767', 'rydreg@gmail.com', 'JR Moquegua', 'U41108996', '1958-06-06', '../public/img/foto.jpg'),
(125, 'M24', 'Josue Deyvi', 'Quispe Corahua', '73669777', '955105483', 'jhoshua2011qc@gmail.com', 'Jr. Alvic', 'U73669777', '1993-07-04', '../public/img/none.png'),
(126, 'M25', 'JHON', 'ALARCON CUTIMBO', '48567291', '926959966', 'jhonac1994mq@gmail.com', 'Jr altiplano 555', 'U 48567291', '1994-08-30', '../public/img/none.png'),
(127, 'M26', 'José luis', 'Vega chambi', '47203447', '913425067', 'jose_luis4181@hotmail.com', 'Jr. 4 noviembre #447', 'U47203447', '1992-07-11', '../public/img/none.png'),
(128, 'M27', 'Henri', 'Acarapi Acero', '47778402', '950479887', 'henry_acarapi@gmail.com', 'Prolong.chejoña B3', 'U47778402', '1993-06-07', '../public/img/none.png'),
(129, 'M28', 'Armando', 'Rios cahuana', '46069763', '940518635', 'yhaircitorioscahuana@gmail.com', 'Avlatorre#786', 'U-46069763', '1989-12-14', '../public/img/none.png'),
(130, 'M29', 'Cristian Americo', 'Vilca Hallasi', '70925869', '921578984', 'khriz.parkur@gmail.com', 'Urb. Aziruni 1ra etapa Mz. 11 Lt. 25', 'U70925869', '1996-09-08', '../public/img/none.png'),
(131, 'M30', 'Eddy', 'Anchapuri Clemente', '44730694', '951883115', 'eddyacse@gmail.com', 'Urb. Tepro mz q 14', 'U 44730694', '1987-11-11', '../public/img/none.png'),
(132, 'M31', 'Alberto Scott', 'Leadbe Montana', '29726834', '919061911', 'aleadbe@gmail.com', 'Av. Simón Bolívar 2605', 'H29726834', '1978-03-19', '../public/img/none.png'),
(133, 'M32', 'Adolfo', 'Coila', '44754395', '950995268', 'adolfo_2000_@hotmail.com', 'Urb. Chanu chanu', '', '1988-01-05', '../public/img/none.png'),
(134, 'M33', 'Angel', 'Apaza', '71350915', '929467455', 'angelapaza@gmail.com', 'psje. manuel a. segura 144', '12345', '2000-02-15', '../public/img/none.png'),
(135, 'M34', 'Percy', 'Luque Garnica', '01318301', '951991973', 'percy.lg2073@gmail.com', 'Jr. Sillustani 136', 'U01318301', '1973-02-20', '../public/img/none.png'),
(136, 'M35', 'Edgar', 'Apaza Choque', '40012345', '935017466', 'edgar@gmail.com', 'Jr. Miraflores 123', 'A2-3213215', '2020-01-01', '../public/img/none.png'),
(137, 'M36', 'Darwin Raúl', 'Choque Caillahua', '72838515', '913389842', 'darwinraul95@gmail.com', 'Av.panamericana sur 524 BARRIO CHEJOÑA', 'U72838515', '2020-01-11', '../public/img/none.png'),
(138, 'M37', 'Milagros', 'apaza', '45583772', '918805640', 'milagrosapaza@digiarch.online', 'Psje. Manuel A. Segura, 144', '1234', '1988-10-22', '../public/img/img2.png'),
(139, 'M38', 'Elvis ciro', 'Damasco Quispe', '70215022', '981670983', 'elviscirodq@gmail.com', 'Av. Revolucion 445', 'U70215022', '1990-01-31', '../public/img/none.png'),
(140, 'M39', 'Helber', 'Apaza', '40538051', '921982144', 'palerito2019@gmail.com', 'psje. manuel a. segura 144', '123345565', '1979-08-28', '../public/img/none.png'),
(141, 'M40', 'Hernan percy', 'Flores ordoñez', '46641440', '972766830', 'percyflowers6@gmail.com', 'Barrio los andes cancharani', 'U46641440', '1989-07-26', '../public/img/none.png'),
(142, 'M41', 'Henry', 'Huarcaya chambilla', '70606207', '935034164', 'chambillahuarcayahenry@gmail.com', 'JR.sandia # 277', 'U70606207', '1990-09-23', '../public/img/none.png'),
(143, 'M42', 'JOSE CARLOS', 'IGNACIOS', '46457175', '943121290', 'carloslove.tkk@gmail.com', 'Jr JAE 124', 'U46457175', '1990-01-09', '../public/img/none.png'),
(144, 'M43', 'Elvis rene', 'Coila balcona', '46693564', '942283057', 'coilaelvis3@gmail.com', 'Panamericana Sur chimu', 'U46693564', '1992-01-03', '../public/img/none.png'),
(145, 'M44', 'Sebastian', 'Zapana', '12345678', '966352215', 'juanzapana@gmail.com', 'av. los procesosre 321', 'A2-3213215', '1958-06-06', '../public/img/foto.jpg'),
(146, 'M45', 'Howard percy', 'Ccosi mamani', '76801534', '917085224', 'persy_howard_26@hotmail.com', 'Pasaje ejercito 122', 'U76801534', '1995-02-08', '../public/img/none.png'),
(147, 'M46', 'ISAI ADONIAS', 'QUISPE QUISPE', '43452252', '973581732', 'civcons.cont@gmail.com', 'AV. EL SOL 1381', 'U43452252', '1986-02-28', '../public/img/none.png'),
(148, 'M47', 'Max adderly', 'Atencio ticona', '46212795', '951346065', 'derlink88@hotmail.com', 'Av. El Ejército # 111', 'B 46212795', '1988-10-08', '../public/img/none.png'),
(149, 'M48', 'Wilber', 'Sotec salas', '42549559', '931891262', 'Diyeywili-g@hotmail.com', 'Jiron pardo 471', 'U42549559', '1982-03-07', '../public/img/none.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

DROP TABLE IF EXISTS `consultas`;
CREATE TABLE `consultas` (
  `idconsulta` int(11) NOT NULL,
  `consulta` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `fecconsulta` datetime DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `fecRespuesta` datetime DEFAULT NULL,
  `idpersonal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `idlogin` int(11) NOT NULL,
  `idconductor` varchar(20) NOT NULL,
  `username` varchar(45) NOT NULL,
  `userpass` varchar(255) NOT NULL,
  `nivel` int(11) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1',
  `fecCreation` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`idlogin`, `idconductor`, `username`, `userpass`, `nivel`, `estado`, `fecCreation`) VALUES
(101, '7', 'seba', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 2, 1, '2019-12-22 00:00:00'),
(102, '1', 'prueba', '711383a59fda05336fd2ccf70c8059d1523eb41a', 2, 1, '2019-12-23 00:00:00'),
(117, '74', 'RANDI H', 'a81e666002d0e2135c248b96119fb0025260828f', 2, 1, '2020-01-30 16:18:43'),
(119, 'M 05', 'RENZO O', 'b9af9ca330fcb52dafb041fe56ce048b77144f8f', 2, 1, '2020-01-30 16:21:51'),
(120, '07', 'ADRIAN M', '9702dbfac192616019477698b4f177ef18d88eb0', 2, 1, '2020-01-30 16:22:52'),
(122, '111', 'JONNY A', 'f94137f4cb57162dbd427af0c3a5adf9da0c9f08', 2, 1, '2020-01-30 16:23:36'),
(125, '54', 'ELIO W', '0e3901e74a279e9bc6734e80b54c4bc0388b8b5e', 2, 1, '2020-01-30 16:27:55'),
(127, 'Z1P 337', 'WILBER S', '8bd31b005f5a69fe706520a9239980115b37b671', 2, 1, '2020-01-30 16:31:27'),
(129, 'M71', 'HERNAN F', '0e19684f26d450092fe74eb68dc2ce832877cfe6', 2, 1, '2020-01-30 16:32:11'),
(131, 'M33', 'DARWIN C', '7486588de4ad8652734b6faa8409bcb95663b6f6', 2, 1, '2020-01-30 16:33:59'),
(133, 'M15', 'ADOLFO C', '2dc73442062eb09c9e110bf86448645ab4ad2d1e', 2, 1, '2020-01-30 16:34:46'),
(135, 'C4O-525', 'ELAR B', 'ed3c98404e131b720e7caec95f709da0e79244b8', 2, 1, '2020-01-30 16:36:02'),
(137, 'Mavf-662', 'HOWARD C', 'f895c44b8b2c60177eafa51a28fd9285b9120dd1', 2, 1, '2020-01-30 16:38:49'),
(138, 'M - 114', 'EDDY A', 'd0a121d54f99b87429189fb4ee9dcd00a53f51e0', 2, 1, '2020-01-30 16:39:26'),
(141, 'M 115', 'ALBERTO L', 'db58b3cc19a78ce87e148a82e6264a50f889f049', 2, 1, '2020-01-30 16:41:18'),
(143, 'M78', 'JOSE I', '61e33120368c9e7e6b8323c4ff16b2e3d57de626', 2, 1, '2020-01-30 16:42:19'),
(145, 'M-107', 'JESUS R', '1f76045bcda0a9838317fb03b002be74ae68ede1', 2, 1, '2020-01-30 16:43:19'),
(147, 'M73', 'HENRY H', 'c142d5ca134dcac3169cfa674a4ff4afa0b59c89', 2, 1, '2020-01-30 16:44:05'),
(149, '26', 'WILLY R', '047bf3094a22ccb739cb169c54ef1682d042d826', 2, 1, '2020-01-30 16:45:26'),
(151, 'M105', 'JOSE V', 'bf18d3dc59a39f2251a530a6eb1953d76ee82692', 2, 1, '2020-01-30 16:46:04'),
(152, 'M115', 'ALBERTO L', 'db58b3cc19a78ce87e148a82e6264a50f889f049', 2, 1, '2020-01-30 16:46:48'),
(155, 'M112', 'CRISTIAN V', '32bd86662b319b673a2399ddfc72ad405437fe44', 2, 1, '2020-01-30 16:47:41'),
(157, 'M81', 'ELVIS C', '121d4cc0c39add913c857e8f7d33752706a7756e', 2, 1, '2020-01-30 17:00:17'),
(159, '50', 'PEDRO Z', 'f6b326ed3a5ae8723882e08ba67f93231b4a0e99', 2, 1, '2020-01-30 17:01:17'),
(161, '50', 'PEDRO Z', 'f6b326ed3a5ae8723882e08ba67f93231b4a0e99', 2, 1, '2020-01-30 17:01:17'),
(162, '57', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, '2020-01-30 17:01:54'),
(163, '57', 'HERNAN C', '6b486069b6cc8cef7ba8051fd2263174089ac98a', 2, 1, '2020-01-30 17:01:54'),
(164, 'M114', 'EDDY A', 'd0a121d54f99b87429189fb4ee9dcd00a53f51e0', 2, 1, '2020-01-30 17:02:49'),
(165, 'M114', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, '2020-01-30 17:02:49'),
(166, 'M42', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, '2020-01-30 17:03:27'),
(167, 'M42', 'ELVIS D', '4db3bd7cf0ebab0a51666955db4c39ad6e0358aa', 2, 1, '2020-01-30 17:03:27'),
(168, '69', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, '2020-01-30 17:18:48'),
(169, '69', 'ISAI Q', '78ad87ad975698339f7feffbbed5785f620d5ab4', 2, 1, '2020-01-30 17:18:48'),
(170, 'M 51', 'CARLOS S', '07e4944d50ab6fee5f8738d18937fcc8b69ee8df', 2, 1, '2020-01-30 17:19:18'),
(171, 'M 51', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, '2020-01-30 17:19:18'),
(172, 'M03', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, '2020-01-30 17:19:51'),
(173, 'M03', 'JOSUE Q', 'bac2746fa9da7f1b67f1880122c5f279f4328ffe', 2, 1, '2020-01-30 17:19:51'),
(174, 'M106', 'HENRI A', 'aef3d59823eec56ca305da5c005268a8f4897576', 2, 1, '2020-01-30 17:20:22'),
(175, 'M106', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, '2020-01-30 17:20:22'),
(176, 'M107', 'AMANDO R', 'dac26c6615542c354f3ce79fe96b0e07dcb36e8f', 2, 1, '2020-01-30 17:20:57'),
(177, 'M107', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, '2020-01-30 17:20:57'),
(178, 'M10', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, '2020-01-30 17:21:27'),
(179, 'M10', 'JHON A', '20c5a5b72f23435a27c1c69fb8ee56579a34fd38', 2, 1, '2020-01-30 17:21:27'),
(180, 'M01', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, '2020-01-30 17:25:53'),
(181, 'M01', 'REYNALDO G', '3135acb71f49694e8a2d8dd3f8a082396bf3c61b', 2, 1, '2020-01-30 17:25:53'),
(182, '38', 'YOSVANI O', 'a2ebdd0fc4d955e66ef6cbf31f985a5f6df0772e', 2, 1, '2020-01-30 18:10:49'),
(183, '38', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, '2020-01-30 18:10:49'),
(184, '65', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, '2020-01-30 18:11:16'),
(185, '65', 'JUAN L', 'ee99fe11626d02dbd567f0941d57213f760ac929', 2, 1, '2020-01-30 18:11:16'),
(186, 'M 110', 'ALEXANDER T', 'e55aa43696335b3d5bd52b8a5c64be4acae9e485', 2, 1, '2020-01-30 18:11:42'),
(193, 'X4b 669', 'MAX A', '7c356aedc522d5486bb5fb03bd785e49b8056261', 2, 1, '2020-01-30 18:12:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
CREATE TABLE `notificaciones` (
  `idnotificaciones` int(11) NOT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `delivery` varchar(255) DEFAULT NULL,
  `otro` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`idnotificaciones`, `idcliente`, `direccion`, `referencia`, `tipo`, `delivery`, `otro`, `fecha`, `estado`) VALUES
(1, 1, 'Alvic 636', 'Barrio Ricardo palma', 'Mov', 'Ejecutivo', '', '2020-01-22 04:00:28', 0),
(2, 1, 'Alvic 626', 'Barrio Ricardo palma', 'Mov', 'Ejecutivo', '', '2020-01-22 04:01:33', 0),
(3, 1, 'Laykatoi', 'Lakbs', 'Mov', 'Ejecutivo', '', '2020-01-22 04:01:57', 0),
(4, 1, 'Plaza vea  ', 'Puerta Jr ilo', 'Mov', 'Ejecutivo', '', '2020-01-23 02:39:46', 0),
(5, 4, '', '', 'Res', '', '', '2020-01-25 07:30:48', 0),
(6, 4, '', '', 'Mov', 'Ejecutivo', '', '2020-01-25 07:30:56', 0),
(7, 4, '', '', 'Del', '', '', '2020-01-25 07:31:00', 0),
(8, 4, '', '', 'Del', '', '', '2020-01-25 07:31:08', 0),
(9, 4, 'Alto alianza 123', '', 'Mov', 'Normal', '', '2020-01-28 07:04:12', 0),
(10, 4, 'Jr. Piura', '', 'Mov', 'Ejecutivo', '', '2020-01-28 08:58:22', 0),
(11, 4, 'Jr. Calvario 123', '', 'Mov', 'Unidad de carga', '', '2020-01-28 09:01:33', 0),
(12, 4, 'Jr. Calvario 123', '', 'Mov', 'Unidad de carga', '', '2020-01-28 09:01:34', 0),
(13, 5, 'Av. Alto alianza 144', '', 'Mov', 'Normal', '', '2020-01-28 09:03:15', 0),
(14, 5, 'Av. Alto alianza 144', '', 'Mov', 'Normal', '', '2020-01-28 09:03:15', 0),
(15, 5, 'Av. Alto alianza 144', '', 'Mov', 'Normal', '', '2020-01-28 09:03:15', 0),
(16, 5, 'Av. Alto alianza 144', '', 'Mov', 'Normal', '', '2020-01-28 09:03:15', 0),
(17, 5, 'Av. Alto alianza 144', '', 'Mov', 'Normal', 'N', '2020-01-28 09:03:15', 0),
(18, 5, 'Av. Alto alianza 144', '', 'Mov', 'Normal', '', '2020-01-28 09:03:16', 0),
(19, 5, 'Av. Alto alianza 144', '', 'Mov', 'Normal', 'N', '2020-01-28 09:03:16', 0),
(20, 5, 'Av. Alto alianza 144', '', 'Mov', 'Normal', 'N', '2020-01-28 09:03:16', 0),
(21, 5, 'Av. Alto alianza 144', '', 'Mov', 'Normal', '', '2020-01-28 09:03:17', 0),
(22, 5, 'Av. Alto alianza 144', '', 'Mov', 'Normal', 'N', '2020-01-28 09:03:17', 0),
(23, 5, 'Av. Alto alianza 144', '', 'Mov', 'Normal', 'N', '2020-01-28 09:03:18', 0),
(24, 6, 'Jr. Piura 4321', '', 'Mov', 'Ejecutivo', '', '2020-01-28 09:42:36', 0),
(25, 5, 'Av. Próceres 267', '', 'Mov', 'Ejecutivo', '', '2020-01-28 09:42:42', 0),
(26, 6, 'Jr. Piura468', '', 'Mov', 'Ejecutivo', '', '2020-01-28 09:47:33', 0),
(27, 6, 'Jr. Piura468', '', 'Mov', 'Ejecutivo', '', '2020-01-28 09:47:35', 0),
(28, 6, 'Jr. Piura468', '', 'Mov', 'Ejecutivo', '', '2020-01-28 09:47:36', 0),
(29, 6, 'Jr. Piura468', '', 'Mov', 'Ejecutivo', '', '2020-01-28 09:47:36', 0),
(30, 5, 'jr. carlos zambrano 3132', '', 'Mov', 'Normal', '', '2020-01-28 10:06:10', 0),
(31, 6, 'Jr. Leonidas 123', '', 'Mov', 'Ejecutivo', '', '2020-01-28 10:07:03', 0),
(32, 6, 'Jr. Deustua 123', '', 'Mov', 'Ejecutivo', '', '2020-01-29 12:55:31', 0),
(33, 6, 'Jr. Calvario 987', 'Circunvalacion ', 'Del', 'Pizza familiar ', '', '2020-01-29 12:56:04', 0),
(34, 6, 'Jr. Huancayo 123', '2da Cuadra', 'Res', '7am', '', '2020-01-29 12:56:29', 0),
(35, 6, 'Av. Simon bolivar 578', '', 'Mov', 'Ejecutivo', '', '2020-01-29 04:48:45', 0),
(36, 8, 'aprovi', 'camal', 'Mov', 'Normal', '', '2020-01-30 01:20:12', 0),
(37, 10, 'jiron pardo 471', '', 'Mov', 'Normal', '', '2020-01-30 05:03:31', 0),
(38, 12, 'JR Moquegua 648', '', 'Mov', 'Normal', '2 taxis', '2020-01-30 05:29:57', 0),
(39, 12, 'JR Moquegua 44r', '', 'Mov', 'Ejecutivo', '2', '2020-01-30 05:31:33', 0),
(40, 12, 'JR Moquegua 44r', '', 'Mov', 'Ejecutivo', '2', '2020-01-30 05:31:34', 0),
(41, 12, 'JR Moquegua 333', '', 'Del', 'dos cervezas', '', '2020-01-30 05:34:26', 0),
(42, 12, 'Huaraz rrr', '', 'Mov', 'Normal', '', '2020-01-30 05:39:56', 0),
(43, 13, 'tiahuanaco 777 ', '', 'Mov', 'Ejecutivo', '', '2020-01-30 06:02:47', 0),
(44, 6, 'Circunvalación norte con calvario ', '', 'Mov', 'Ejecutivo', '', '2020-02-08 07:52:57', 0),
(45, 6, 'Psje manuel a segura 122', '', 'Mov', 'Ejecutivo', '', '2020-02-20 07:56:11', 0),
(46, 6, 'Jr. Huancayo 248', '', 'Mov', 'Normal', '', '2020-02-20 07:58:51', 0),
(47, 6, 'Jr. Aymaraes 123', '', 'Mov', 'Unidad de carga', '', '2020-02-20 08:02:06', 0),
(48, 16, '', '', 'Res', '', '', '2020-03-03 11:40:47', 0),
(49, 16, '', '', 'Res', '', '', '2020-03-03 11:41:21', 0),
(50, 16, '', '', 'Del', '', '', '2020-03-03 11:41:53', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedirdelivery`
--

DROP TABLE IF EXISTS `pedirdelivery`;
CREATE TABLE `pedirdelivery` (
  `iddelivery` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idconductor` int(11) NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `referencia` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `delivery` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `otro` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `fecPedido` datetime DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `fecTermino` datetime DEFAULT NULL,
  `calificacion` int(11) DEFAULT NULL,
  `aceptado` tinyint(4) DEFAULT '0',
  `fecAceptado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `pedirdelivery`
--

INSERT INTO `pedirdelivery` (`iddelivery`, `idcliente`, `idconductor`, `direccion`, `referencia`, `delivery`, `otro`, `fecPedido`, `estado`, `fecTermino`, `calificacion`, `aceptado`, `fecAceptado`) VALUES
(1, 5, 1, 'AV. EL EJERCITO 345', 'ARCHIVO REGIONAL', 'VASOS', '', '2020-02-24 08:34:02', 0, '2020-03-10 02:34:24', 0, 1, '2020-02-24 08:35:04'),
(2, 5, 0, 'Y', 'A', 'PP', 'H', '2020-03-16 09:05:43', 1, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedirmovilidad`
--

DROP TABLE IF EXISTS `pedirmovilidad`;
CREATE TABLE `pedirmovilidad` (
  `idpedirmovilidad` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idconductor` int(11) DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `referencia` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `otro` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `tipouni` varchar(40) CHARACTER SET utf8mb4 DEFAULT NULL,
  `fecPedido` datetime DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `fecTermino` datetime DEFAULT NULL,
  `calificacion` int(11) DEFAULT NULL,
  `aceptado` tinyint(4) DEFAULT '0',
  `fecAceptado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `pedirmovilidad`
--

INSERT INTO `pedirmovilidad` (`idpedirmovilidad`, `idcliente`, `idconductor`, `direccion`, `referencia`, `otro`, `tipouni`, `fecPedido`, `estado`, `fecTermino`, `calificacion`, `aceptado`, `fecAceptado`) VALUES
(1, 6, 0, 'Psje manuel a segura 122', '', '', 'Ejecutivo', '2020-02-20 07:56:11', 0, '2020-02-20 19:58:06', 0, 0, NULL),
(2, 6, 0, 'Jr. Huancayo 248', '', '', 'Normal', '2020-02-20 07:58:51', 0, '2020-02-20 20:03:14', 0, 0, NULL),
(3, 6, 0, 'Jr. Aymaraes 123', '', '', 'Unidad de carga', '2020-02-20 08:02:06', 0, '2020-03-07 19:01:59', 0, 1, '2020-02-22 12:44:58'),
(4, 16, 0, 'JR MOQUEGUA 648', 'TELEFONICA', '', 'NORMAL', '2020-03-03 21:49:07', 0, '2020-03-07 19:02:01', 0, 1, '2020-03-03 21:49:52'),
(5, 16, 0, 'JR MOQUEGUA 6', 'TELEFóNICA', '', 'EJECUTIVO', '2020-03-03 21:54:33', 0, '2020-03-07 19:02:02', 0, 1, '2020-03-03 21:55:17'),
(6, 6, 0, 'JR. EL PUERTO  123', 'GUESC', '', 'NORMAL', '2020-03-05 08:17:18', 0, '2020-03-07 19:02:04', 0, 0, NULL),
(7, 6, 0, 'JR. CALVARIO 1234', 'CIRCUNVALACIóN NORTE', '', 'NORMAL', '2020-03-07 19:03:33', 0, '2020-03-07 19:07:36', 0, 1, '2020-03-07 19:04:01'),
(8, 5, 1, 'AV. ALTO ALIANZA 355', 'POR LA ESTACIóN DE BOMBEROS', '', 'NORMAL', '2020-03-09 15:56:01', 0, '2020-03-10 02:34:11', 0, 1, '2020-03-10 02:17:08'),
(9, 5, 1, 'URB. VILLA DEL LAGO 234', 'ALTURA CIRCON', '', 'NORMAL', '2020-03-09 15:57:55', 0, '2020-03-10 02:34:16', 0, 1, '2020-03-09 22:05:44'),
(10, 1, 1, 'direccion', 'referencia', 'otro', 'tipounidad', '2020-03-09 16:01:31', 0, '2020-03-10 02:34:10', 0, 1, '2020-03-09 17:49:05'),
(11, 5, 0, 'UNO', 'ALTURA CIRCON', 'TRES', 'EJECUTIVO', '2020-03-09 16:07:09', 1, NULL, 0, 1, '2020-03-09 16:09:43'),
(12, 16, 57, 'JR AAAAA', 'RRR', '', 'NORMAL', '2020-03-09 17:14:07', 1, NULL, 0, 1, '2020-03-09 17:14:39'),
(13, 5, 1, 'JULIO ALMENARA', 'VILLA MILITAR', '2 UNIDADES', 'UNIDAD DE CARGA', '2020-03-10 02:32:16', 0, '2020-03-14 09:51:46', 0, 1, '2020-03-10 02:32:57'),
(14, 16, 1, 'JR. CALVARIO 167', 'BARRIO ALIANZA', '', 'EJECUTIVO', '2020-03-14 09:52:43', 1, NULL, 0, 1, '2020-03-14 09:53:20'),
(15, 5, 0, 'T', 'A', '', 'EJECUTIVO', '2020-03-16 09:03:16', 1, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservar`
--

DROP TABLE IF EXISTS `reservar`;
CREATE TABLE `reservar` (
  `idreserva` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idconductor` int(11) NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `referencia` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `hora` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `otro` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `fecPedido` datetime DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `fecTermino` datetime DEFAULT NULL,
  `calificacion` int(11) DEFAULT NULL,
  `aceptado` tinyint(4) DEFAULT NULL,
  `fecAceptado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `reservar`
--

INSERT INTO `reservar` (`idreserva`, `idcliente`, `idconductor`, `direccion`, `referencia`, `hora`, `otro`, `fecPedido`, `estado`, `fecTermino`, `calificacion`, `aceptado`, `fecAceptado`) VALUES
(1, 16, 0, '', '', '', '', '2020-03-03 11:40:47', 1, NULL, 0, 1, '2020-03-05 17:27:21'),
(2, 16, 0, '', '', '', '', '2020-03-03 11:41:21', 1, NULL, 0, 1, '2020-03-05 17:27:28'),
(3, 5, 1, 'MALL AVENTURA PLAZA', 'DENTRO DEL MALL', '15:00', 'GRANDE', '2020-03-10 00:49:36', 0, '2020-03-10 02:34:33', 0, 1, '2020-03-10 01:08:07'),
(4, 5, 1, 'AV. GIRASOLES', 'POR CHANU CHANU', '07:45', 'NINGUNO', '2020-03-10 00:50:55', 0, '2020-03-10 02:34:31', 0, 1, '2020-03-10 00:52:34');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`codunidad`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`idchat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`),
  ADD UNIQUE KEY `dnicli_UNIQUE` (`dni`),
  ADD UNIQUE KEY `telefono_UNIQUE` (`telefono`);

--
-- Indices de la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`idconductor`);

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`idconsulta`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`idlogin`),
  ADD KEY `fk_login_conductor` (`idconductor`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`idnotificaciones`);

--
-- Indices de la tabla `pedirdelivery`
--
ALTER TABLE `pedirdelivery`
  ADD PRIMARY KEY (`iddelivery`);

--
-- Indices de la tabla `pedirmovilidad`
--
ALTER TABLE `pedirmovilidad`
  ADD PRIMARY KEY (`idpedirmovilidad`);

--
-- Indices de la tabla `reservar`
--
ALTER TABLE `reservar`
  ADD PRIMARY KEY (`idreserva`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `idchat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `conductor`
--
ALTER TABLE `conductor`
  MODIFY `idconductor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `idconsulta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `idlogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `idnotificaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `pedirdelivery`
--
ALTER TABLE `pedirdelivery`
  MODIFY `iddelivery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pedirmovilidad`
--
ALTER TABLE `pedirmovilidad`
  MODIFY `idpedirmovilidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `reservar`
--
ALTER TABLE `reservar`
  MODIFY `idreserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
