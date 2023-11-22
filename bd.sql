-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-11-2023 a las 20:09:00
-- Versión del servidor: 10.6.15-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u682471620_pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio1` text NOT NULL,
  `precio2` text NOT NULL,
  `precio3` text NOT NULL,
  `ventas` int(11) NOT NULL DEFAULT 0,
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `descripcion`, `precio1`, `precio2`, `precio3`, `ventas`, `id_categoria`, `estado`) VALUES
(1, 'BLOCK 50X2 QUIMICO A4', '{\"precio\":\"10\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 14, 3, 1),
(2, 'AGENDAS A5 PERSONALIZADA ', '{\"precio\":\"12\",\"iva\":0}', '{\"precio\":\"7.5\",\"iva\":0}', '{\"precio\":\"6.25\",\"iva\":0}', 3, 3, 1),
(3, 'BLOCK 100X2 QUIMICO A4', '{\"precio\":\"20\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(4, 'BLOCK 100X3 QUIMICO A4', '{\"precio\":\"28\",\"iva\":0}', '{\"precio\":\"15\",\"iva\":0}', '{\"precio\":\"13\",\"iva\":0}', 0, 3, 1),
(5, 'BLOCK 100 BOND A4', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"5\",\"iva\":0}', '{\"precio\":\"5\",\"iva\":0}', 0, 3, 1),
(6, 'BLOCK 50X3 QUIMICO A4', '{\"precio\":\"15\",\"iva\":0}', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"7\",\"iva\":0}', 0, 3, 1),
(7, 'BLOCK 100X3 QUIMICO A5', '{\"precio\":\"16\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(8, 'BLOCK 100X2 QUIMICO A5', '{\"precio\":\"12\",\"iva\":0}', '{\"precio\":\"10\",\"iva\":0}', '{\"precio\":\"9\",\"iva\":0}', 1, 3, 1),
(9, 'BLOCK 100 BOND A5', '{\"precio\":\"5\",\"iva\":0}', '{\"precio\":\"3\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(10, 'BLOCK 50X3 QUIMICO A5', '{\"precio\":\"10\",\"iva\":0}', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(11, 'BLOCK 50X2 QUIMICO A5', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"7\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 1, 3, 1),
(12, 'BLOCK 25X3 QUIMICO A5', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(13, 'BLOCK 25X2 QUIMICO A5', '{\"precio\":\"6\",\"iva\":0}', '{\"precio\":\"5\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 1, 3, 1),
(14, 'BLOCK 20X3 QUIMICO A5', '{\"precio\":\"6\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(15, 'BLOCK 20X2 QUIMICO A5', '{\"precio\":\"5\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(16, 'BLOCK 100X3 QUIMICO A6', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"6.75\",\"iva\":0}', 2, 3, 1),
(17, 'BLOCK 100X2 QUIMICO A6', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"6\",\"iva\":0}', '{\"precio\":\"5\",\"iva\":0}', 2, 3, 1),
(18, 'BLOCK 50X3 QUIMICO A6', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"6\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(19, 'BLOCK 50X2 QUIMICO A6', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"7\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(20, 'BLOCK 25X2 QUIMICO A6', '{\"precio\":\"6\",\"iva\":0}', '{\"precio\":\"5\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(21, 'CARPETAS MILLAR EN COUCHE BRILLO UV', '{\"precio\":\"350\",\"iva\":0}', '{\"precio\":\"325\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(22, 'CARPETAS CARTULINA POR UNIDAD', '{\"precio\":\"2\",\"iva\":0}', '{\"precio\":\"1.5\",\"iva\":0}', '{\"precio\":\"1.3\",\"iva\":0}', 0, 3, 1),
(23, 'VOLANTES MILLAR COUCHE FULL COLOR UN LADO A4', '{\"precio\":\"100\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(24, 'VOLANTES MILLAR COUCHE FULL COLOR AMBOS LADOS A4', '{\"precio\":\"130\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(25, 'VOLANTES MILLAR COUCHE FULL COLOR UN LADO A5', '{\"precio\":\"50\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(26, 'VOLANTES MILLAR COUCHE FULL COLOR AMBOS LADO A5', '{\"precio\":\"60\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(27, 'VOLANTES MILLAR COUCHE FULL COLOR UN LADO A6', '{\"precio\":\"40\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(28, 'VOLANTES MILLAR COUCHE FULL COLOR AMBOS LADO A6', '{\"precio\":\"50\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(29, 'VOLANTES MILLAR BONF UN COLOR UN LADO A5', '{\"precio\":\"30\",\"iva\":0}', '{\"precio\":\"25\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(30, 'VOLANTES MILLAR BOND UN COLOR UN LADO A6', '{\"precio\":\"18\",\"iva\":0}', '{\"precio\":\"15\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(31, 'TARJETAS DE PRESENTACION MILLAR EN COUCHE BRILLO', '{\"precio\":\"40\",\"iva\":0}', '{\"precio\":\"35\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(32, 'TARJETAS DE PRESENTACION MILLAR EN COUCHE MATE', '{\"precio\":\"50\",\"iva\":0}', '{\"precio\":\"45\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(33, 'TARJETAS DE PRESENTACION MILLAR EN COUCHE SELECTIVO', '{\"precio\":\"60\",\"iva\":0}', '{\"precio\":\"55\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(34, 'TARJETAS DE PRESENTACION CIENTO CARTULINA UN LADO', '{\"precio\":\"10\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(35, 'TARJETAS DE PRESENTACION CIENTO CARTULINA AMBOS LADOS', '{\"precio\":\"14\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(36, 'TAZA BLANCA SUBLIMADA', '{\"precio\":\"5\",\"iva\":0}', '{\"precio\":\"4\",\"iva\":0}', '{\"precio\":\"3.25\",\"iva\":0}', 0, 3, 1),
(37, 'CREDENCIAL SUBLIMADA', '{\"precio\":\"5\",\"iva\":0}', '{\"precio\":\"4.5\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(38, 'CREDENCIAL EMPLASTICADA', '{\"precio\":\"2\",\"iva\":0}', '{\"precio\":\"1.75\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(39, 'SELLO TINTA NEGRA S722 BOLSILLO', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(40, 'SELLO TINTA NEGRA S844', '{\"precio\":\"15\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(41, 'SELLO TINTA NEGRA 842', '{\"precio\":\"18\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(42, 'SELLO TINTA NEGRA 530 ', '{\"precio\":\"12\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 2, 3, 1),
(43, 'SELLO TINTA NEGRA 827 ', '{\"precio\":\"15\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 1, 3, 1),
(44, 'SELLO TINTA NEGRA 827D FECHERO', '{\"precio\":\"20\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(45, 'SELLO TINTA NEGRA 829', '{\"precio\":\"22\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(46, 'EMPASTADO DE BIBLIA ', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"6\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(47, 'EMPASTADO A4', '{\"precio\":\"10\",\"iva\":0}', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(48, 'EMPASTADO A4', '{\"precio\":\"10\",\"iva\":0}', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(49, 'LAPIDA (PVC + VINIL LAMINADO)', '{\"precio\":\"40\",\"iva\":0}', '{\"precio\":\"35\",\"iva\":0}', '{\"precio\":\"30\",\"iva\":0}', 0, 4, 1),
(50, 'LAPIDA (PVC + VINIL LAMINADO + VIDRIO)', '{\"precio\":\"60\",\"iva\":0}', '{\"precio\":\"55\",\"iva\":0}', '{\"precio\":\"50\",\"iva\":0}', 0, 4, 1),
(51, 'LAPIDA EN LONA', '{\"precio\":\"10\",\"iva\":0}', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 4, 1),
(52, 'MICROPERFORADO METRO CUADRADO', '{\"precio\":\"15\",\"iva\":0}', '{\"precio\":\"12\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 4, 1),
(53, 'MICROPERFORADO METRO CUADRADO', '{\"precio\":\"15\",\"iva\":0}', '{\"precio\":\"12\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 4, 1),
(54, 'SEÑALETICA 30X20 (PVC + VINIL)', '{\"precio\":\"3\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 4, 1),
(55, 'SEÑALETICA 30X12 (PVC+VINIL)', '{\"precio\":\"1.50\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"1\",\"iva\":0}', 24, 4, 1),
(56, 'PVC + VINIL 30X20', '{\"precio\":\"5\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 3, 4, 1),
(57, 'PVC + VINIL 40X50', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 2, 4, 1),
(58, 'PVC + VINIL 70X50', '{\"precio\":\"10\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 4, 4, 1),
(59, 'PVC + BASE DE MADERA UN NIVEL 18X15', '{\"precio\":\"4\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 4, 1),
(60, 'PVC + BASE DE MADERA UN NIVEL 30X20', '{\"precio\":\"6\",\"iva\":0}', '{\"precio\":\"5\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 1, 4, 1),
(61, 'PVC + BASE DE MADERA DOS NIVELES 18X15', '{\"precio\":\"5\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 4, 1),
(62, 'VINIL DECORATIVO', '{\"precio\":\"15\",\"iva\":0}', '{\"precio\":\"1\",\"iva\":0}', '{\"precio\":\"0.75\",\"iva\":0}', 2, 4, 1),
(63, 'LETRERO LUMINOSO UN LADO ESTRUCTURA METALICA', '{\"precio\":\"100\",\"iva\":0}', '{\"precio\":\"90\",\"iva\":0}', '{\"precio\":\"80\",\"iva\":0}', 0, 4, 1),
(64, 'LONA CON MARCO METALICO', '{\"precio\":\"30\",\"iva\":0}', '{\"precio\":\"25\",\"iva\":0}', '{\"precio\":\"20\",\"iva\":0}', 0, 4, 1),
(65, 'LONA IMPRESA MEDIDAS PERSONALIZADA METRO CUADRADO', '{\"precio\":\"12\",\"iva\":0}', '{\"precio\":\"10\",\"iva\":0}', '{\"precio\":\"8\",\"iva\":0}', 33, 4, 1),
(66, 'VINIL IMPRESO MEDIDAS PERSONALIZADAS METROS CUADRADOS', '{\"precio\":\"12\",\"iva\":0}', '{\"precio\":\"10\",\"iva\":0}', '{\"precio\":\"8\",\"iva\":0}', 0, 4, 1),
(67, 'VINIL IMPRESO Y LAMINADO MEDIDA PERSONALIZADA', '{\"precio\":\"16\",\"iva\":0}', '{\"precio\":\"14\",\"iva\":0}', '{\"precio\":\"12\",\"iva\":0}', 0, 4, 1),
(68, 'LONA IMPRESA LAMINADA MEDIDAS PERSONALIZADA METRO CUADRADO', '{\"precio\":\"18\",\"iva\":0}', '{\"precio\":\"16\",\"iva\":0}', '{\"precio\":\"14\",\"iva\":0}', 0, 4, 1),
(69, 'BINGO MILLAR 6 JUGADAS A4', '{\"precio\":\"6\",\"iva\":0}', '{\"precio\":\"5\",\"iva\":0}', '{\"precio\":\"4.50\",\"iva\":0}', 0, 3, 1),
(70, 'DECLARACION SEMESTRAL IVA', '{\"precio\":\"10\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 7, 1),
(71, 'DECLARACION MENSUAL IVA', '{\"precio\":\"5\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 7, 1),
(72, 'DECLARACION RENTA ANUAL', '{\"precio\":\"10\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 7, 1),
(73, 'DEVOLUCION DE IVA', '{\"precio\":\"20\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 7, 1),
(74, 'DEVOLUCION DE RENTA', '{\"precio\":\"20\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 7, 1),
(75, 'TAZA MAGICA SUBLIMADA', '{\"precio\":\"8\",\"iva\":0}', '{\"precio\":\"6\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 6, 1),
(76, 'MILLAR DE SOBRES UN COLOR - CARTA', '{\"precio\":\"45\",\"iva\":0}', '{\"precio\":\"40\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(77, 'MILLAR DE SOBRES UN COLOR - OFICIO', '{\"precio\":\"80\",\"iva\":0}', '{\"precio\":\"75\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(78, 'MILLAR TRIPTICOS COUCHE FULL COLOR', '{\"precio\":\"130\",\"iva\":0}', '{\"precio\":\"120\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 3, 1),
(79, 'STICKER UN METRO CUADRADO', '{\"precio\":\"16\",\"iva\":0}', '{\"precio\":\"15\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 4, 1),
(80, 'STICKER MEDIO METRO', '{\"precio\":\"10\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 1, 4, 1),
(81, 'STICKER CUARTO DE METRO', '{\"precio\":\"6\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', '{\"precio\":\"0\",\"iva\":0}', 0, 4, 1),
(82, 'COPIAS E IMPRESIONES', '{\"precio\":\"0.05\",\"iva\":0}', '{\"precio\":\"0.03\",\"iva\":0}', '{\"precio\":\"0.15\",\"iva\":0}', 70, 3, 1),
(83, 'BLOCK 100 BOND A6', '{\"precio\":\"4\",\"iva\":0}', '{\"precio\":\"3,50\",\"iva\":0}', '{\"precio\":\"3\",\"iva\":0}', 0, 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_id_categoria_foreign` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`idcat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
