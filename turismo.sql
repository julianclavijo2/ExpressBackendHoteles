-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2020 a las 21:02:05
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `turismo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoteles`
--

CREATE TABLE `hoteles` (
  `idhotel` int(11) NOT NULL,
  `nombrehotel` varchar(45) DEFAULT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `estrellas` int(11) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `hoteles`
--

INSERT INTO `hoteles` (`idhotel`, `nombrehotel`, `ubicacion`, `estrellas`, `img`) VALUES
(1, 'Hilton Garden Inn', 'Bogota', 4, 'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&a'),
(2, 'Courtyard by Marriott', 'Cancun', 4, 'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd'),
(3, 'TRYP By Wyndham', 'Jamainca', 4, 'https://images.unsplash.com/photo-1571896349842-33c89424de2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd'),
(4, 'Sonesta Hotel', 'Miami', 5, 'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-1.2.1&auto=format&fit=crop&w=1'),
(5, 'GHL Hotel Capital', 'Santa Marta', 5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTYXje6-_GElzk1UaSilHAtzEbQiUnsJnaCag&usqp=CA'),
(6, 'Casa Dann Carlton Hotel & SPA', 'Cartagena', 5, 'https://www.tecnohotelnews.com/wp-content/uploads/2019/04/Concept-Hotel-Group-zero-suite-664x443.jpg'),
(7, 'CGH Candelaria Boutique', 'Bogota', 3, 'https://images.unsplash.com/photo-1549294413-26f195200c16?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&a'),
(8, 'Hotel Bicentenario', 'Brasil', 3, 'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&a'),
(9, 'HGL Collection 93', 'Bogota', 4, 'https://www.tecnohotelnews.com/wp-content/uploads/2019/04/Concept-Hotel-Group-cubanito-664x443.jpg'),
(10, 'Hotel Lagun', 'Cuba', 4, 'https://tecnohotelnews.com/wp-content/uploads/2019/04/Concept-Hotel-Group-paradiso-696x464.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  ADD PRIMARY KEY (`idhotel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
