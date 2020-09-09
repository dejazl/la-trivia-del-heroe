-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-09-2020 a las 03:08:59
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trivia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `ID` int(11) NOT NULL,
  `Pregunta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`ID`, `Pregunta`) VALUES
(1, '¿Cual fue el primer videojuego de la historia?\r\n'),
(2, '¿Cual es el videojuego con más copias vendidas hasta la fecha?'),
(3, '¿Cual es la consola con más copias vendidas hasta la fecha?'),
(4, '¿Que videojuego fue conocido por causar vómitos, pesadillas, nauseas y alucinaciones?\r\n'),
(5, '¿Cual es el juego movil más descargado hasta la fecha?'),
(6, '¿Quien es la el presidente actual de la compañía XBOX?'),
(7, '¿Qué juego ganó el goty a juego del año en 2017?'),
(8, '¿Cuantas entregas hay de la saga de videojuegos God of War?'),
(9, '¿Cuantos pokémon existen actualmente?'),
(10, '¿Cual es el videojuego con mas espectadores activos en twitch?'),
(11, '¿Que pueblo tiene una canción conocida por causar el suicidio de cientos de niños?'),
(12, '¿Cuantas entregas tiene super mario galaxy?'),
(13, 'En pokémon, ¿El tipo bicho contra que tipo es supereficaz?'),
(14, '¿En que juego de zelda puedes tocar una ocarina y viajar en el tiempo?'),
(15, '¿Que juego de zelda fue el primero en introducir totalmente la mecánica de mundo abierto?'),
(16, '¿Como se llaman las pistolas de Dante en Devil May Cry?'),
(17, '¿Cual de estos es conocido por su extrema dificultad?'),
(18, '¿Que juego se trata de partidos de futbol americano?'),
(19, '¿En que año la saga de videojuegos de fifa intrudujo el modo de juego \"El Camino\"?'),
(20, 'Mario y ________ en los juegos olímpicos.\r\nEl nombre que llena el espacio es:');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntajes`
--

CREATE TABLE `puntajes` (
  `ID` int(100) NOT NULL,
  `Nombre` text NOT NULL,
  `Score` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `puntajes`
--

INSERT INTO `puntajes` (`ID`, `Nombre`, `Score`) VALUES
(2, 'Juanito Alimaña', 0),
(3, 'Pedro el escamozo', 50),
(4, 'Rosario Tijeras', 100),
(5, 'James Rozdriguez', 150),
(11, 'Laura Bozo', 200),
(12, 'Juan Manuel', 50),
(13, 'Saque 0 :c', 0),
(14, 'Otro 0:c', 0),
(15, 'Ricardo Restrepo', 500),
(16, 'David Lopera', 150),
(17, 'Dein17', 300),
(18, 'Dairon', 200),
(19, 'Un manco ahí', 100),
(20, 'Deivid', 200),
(21, 'Juan José Lopera', 400),
(23, 'Usuga', 150),
(24, 'Trabi', 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `NPregunta` int(11) NOT NULL,
  `Respuesta` text NOT NULL,
  `Estado` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`NPregunta`, `Respuesta`, `Estado`, `ID`) VALUES
(1, 'Tetris', 0, 1),
(1, 'Pong', 1, 2),
(1, 'Pac-Man', 0, 3),
(1, 'Super Mario Brod', 0, 4),
(2, 'Grand Theft Auto V', 0, 5),
(2, 'Tetris', 0, 6),
(2, 'Minecraft', 1, 7),
(2, 'Wii Sports', 0, 8),
(3, 'Game Boy', 0, 9),
(3, 'Nintendo DS', 0, 10),
(3, 'Play Station 1', 0, 11),
(3, 'Play Station 2', 1, 12),
(4, 'Polybius', 1, 13),
(4, 'Animal Crossing', 0, 14),
(4, 'PickMin', 0, 15),
(4, 'Silent Hills', 0, 16),
(5, 'Angry Birds', 0, 17),
(5, 'Candy Crush', 0, 18),
(5, 'Subway Surfers', 1, 19),
(5, 'Free Fire', 0, 20),
(6, 'Mark Zuckerberg', 0, 21),
(6, 'Phil Spencer', 1, 22),
(6, 'Daniel Quintero', 0, 23),
(6, 'Hideo Kojima', 0, 24),
(7, 'The Legend Of Zelda Breath of the wild', 1, 25),
(7, 'Fortnite', 0, 26),
(7, 'Clash Royale', 0, 27),
(7, 'Cuphead', 0, 28),
(8, '3', 0, 29),
(8, '4', 1, 30),
(8, '5', 0, 31),
(8, '2', 0, 32),
(9, '807', 0, 33),
(9, '793', 0, 34),
(9, '1000', 0, 35),
(9, '890', 1, 36),
(10, 'Fortnite', 0, 37),
(10, 'Among us', 1, 38),
(10, 'League of legends', 0, 39),
(10, 'Fall guys', 0, 40),
(11, 'Pueblo laverde', 0, 41),
(11, 'Pueblo lavacalda', 0, 42),
(11, 'Pueblo lavanda', 1, 43),
(11, 'Girardota', 0, 44),
(12, 'Ninguna', 0, 45),
(12, '1', 0, 46),
(12, '2', 1, 47),
(12, '3', 0, 48),
(13, 'Planta, Psíquico, Siniestro', 1, 49),
(13, 'Veneno, Hada, Flor', 0, 50),
(13, 'Roca, Magico, Natural', 0, 51),
(13, 'Agua, Noche, Día', 0, 52),
(14, 'Ocaria of Time', 0, 53),
(14, 'Breath of the Wild', 0, 54),
(14, 'A link to the past', 0, 55),
(14, 'Majora´s mask', 1, 56),
(15, 'Breath of the wild', 1, 57),
(15, 'Wind waker', 0, 58),
(15, 'Twilight Princess', 0, 59),
(15, 'Ocarina of time', 0, 60),
(16, 'Ebony e Ivory', 1, 61),
(16, 'Tola y maruja', 0, 62),
(16, 'Matadora y Asesinadora', 0, 63),
(16, 'Cronos y Tempo', 0, 64),
(17, 'Metal Slug', 0, 65),
(17, 'Pokémon Escudo', 0, 66),
(17, 'Just Dance', 0, 67),
(17, 'Dark Souls', 1, 68),
(18, 'FIFA', 0, 69),
(18, 'MLB', 0, 70),
(18, 'NBA 2k', 0, 71),
(18, 'MADEN', 1, 72),
(19, '2016', 1, 73),
(19, '2017', 0, 74),
(19, '2018', 0, 75),
(19, '2015', 0, 76),
(20, 'Luigi', 0, 77),
(20, 'Wario', 0, 78),
(20, 'Megaman', 0, 79),
(20, 'Sonic', 1, 80);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `puntajes`
--
ALTER TABLE `puntajes`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `puntajes`
--
ALTER TABLE `puntajes`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
