-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2022 a las 23:29:11
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `maxi_soft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendamiento`
--

CREATE TABLE `agendamiento` (
  `id_agendamiento` int(10) NOT NULL,
  `id_empleado` int(10) NOT NULL,
  `id_servicio` int(10) NOT NULL,
  `nombre_cliente` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha_de_servicio` date NOT NULL,
  `direccion_cliente` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telefono_cliente` bigint(15) NOT NULL,
  `estado` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `agendamiento`
--

INSERT INTO `agendamiento` (`id_agendamiento`, `id_empleado`, `id_servicio`, `nombre_cliente`, `descripcion`, `fecha_de_servicio`, `direccion_cliente`, `telefono_cliente`, `estado`) VALUES
(1, 5, 1, 'Carlos Zapata Zapata', 'Casa azul, debajo de un puente', '2022-11-15', 'Calle 27 d sur # 27 c 51', 3256132498, 'pendiente'),
(2, 3, 3, 'Katherine Diosa Franco', 'casa de tres pisos, blanca y al lado de una tienda', '2022-11-05', 'Diagonal 40 # 41 61.', 6544345654, 'realizado'),
(3, 4, 2, 'Jose Arturo Carvajal', 'casa negra de dos pisos', '2022-11-05', 'Calle 11 d sur # 12 c 32.', 7364221133, 'pediente'),
(4, 1, 5, 'Piedra Colorado Taborda', 'Al lado de un circo', '2022-11-15', 'Calle 11 d norte # 11 c 11.', 1324132411, 'pendiente'),
(5, 2, 4, 'Ligia Mesa Diosa', 'Casa de un piso y una enorme puerta de color verde', '2022-11-27', 'Calle 99 d sur # 27 c 75.', 3258767689, 'realizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_prestamo`
--

CREATE TABLE `detalle_prestamo` (
  `id_detalle_prestamo` int(10) NOT NULL,
  `id_prestamo` int(10) NOT NULL,
  `id_herramienta_e_insumo` int(10) NOT NULL,
  `cantidad_elemento` int(20) NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_prestamo`
--

INSERT INTO `detalle_prestamo` (`id_detalle_prestamo`, `id_prestamo`, `id_herramienta_e_insumo`, `cantidad_elemento`, `estado`) VALUES
(1, 1, 6, 3, 'en posecion'),
(2, 3, 2, 1, 'dañado'),
(3, 4, 5, 4, 'devuelto'),
(4, 2, 1, 3, 'arreglado'),
(5, 5, 3, 5, 'dañado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(10) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_documento` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `documento` int(15) NOT NULL,
  `telefono` bigint(15) NOT NULL,
  `correo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `nombre`, `apellido`, `tipo_documento`, `documento`, `telefono`, `correo`, `direccion`) VALUES
(1, 'Juan Pablo', 'Franco Faria', 'C.C', 1128, 2147483647, 'trony@gmail.com', 'ayi serquita'),
(2, 'Yenny', 'Durgando', 'T.I', 1128, 3017910078, 'yenny@gmail.com', 'ayi serquita'),
(3, 'David Felipe', 'Diosa Lora', 'Cedula de ciudadania', 1128424175, 3017910078, 'juanpablofrancodaria1128424175', 'crwytdxgasoicf283fu2379ry23pi rf9  988'),
(4, 'Jhonatan Castro', 'Diosa Muñoz', 'cedula de cuidadania', 1932876546, 3225674312, 'jhonatan@gmail.con', 'km7 antigua via guarne'),
(5, 'Brayan David', 'Zapata Taborda', 'cedula de cuidadania', 1482431243, 7489263718, 'brayan@gmail.com', 'km7 antigua via a guarne');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramienta_e_insumo`
--

CREATE TABLE `herramienta_e_insumo` (
  `id_herramienta_e_insumo` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `categoria` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_compra` date NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `herramienta_e_insumo`
--

INSERT INTO `herramienta_e_insumo` (`id_herramienta_e_insumo`, `nombre`, `tipo`, `categoria`, `descripcion`, `color`, `estado`, `fecha_compra`, `cantidad`) VALUES
(1, 'taladro', 'herramienta', 'electrica', 'para taladrar', 'naranja', 'para repara', '2022-11-22', 12),
(2, 'moden 2 antenas', 'insumo', 'router', 'para tener covertura', 'blanco', 'en espera', '2022-11-28', 6),
(3, 'clavos', 'insumo', 'manual', 'para clavar', 'gris', 'en espera', '2022-11-22', 12),
(4, 'grapas', 'insumo', 'manual', 'para pegar cable a la pared', 'gris', 'en espera', '2022-11-22', 12),
(5, 'moden 3 antenas', 'insumo', 'router', 'para tener covertura', 'blanco', 'en espera', '2022-11-04', 6),
(6, 'llave ingresa', 'herramienta', 'manual', 'para desatornillar t', 'rojo', 'buena', '2022-11-16', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumo_agenda`
--

CREATE TABLE `insumo_agenda` (
  `id_insumo_agenda` int(10) NOT NULL,
  `id_herramienta_e_insumo` int(10) NOT NULL,
  `id_agendamiento` int(10) NOT NULL,
  `cantidad_elemento` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `insumo_agenda`
--

INSERT INTO `insumo_agenda` (`id_insumo_agenda`, `id_herramienta_e_insumo`, `id_agendamiento`, `cantidad_elemento`) VALUES
(1, 3, 1, 5),
(2, 2, 3, 2),
(3, 5, 2, 1),
(4, 3, 5, 9),
(5, 5, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedad`
--

CREATE TABLE `novedad` (
  `id_novedad` int(10) NOT NULL,
  `id_empleado` int(10) NOT NULL,
  `peticion` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_de_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `hora_de_inicio` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora_final` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `novedad`
--

INSERT INTO `novedad` (`id_novedad`, `id_empleado`, `peticion`, `descripcion`, `fecha_registro`, `fecha_de_inicio`, `fecha_final`, `hora_de_inicio`, `hora_final`, `estado`) VALUES
(1, 5, 'llegada al trabajo tarde', 'Tengo artritis', '2022-12-12 12:32', '2022-11-01', '2022-11-02', '15:30', '20:00', 'Rechazado'),
(2, 3, 'dia libre', 'Es el funeral de un amigo', '2022-10-21 13:22', '2022-11-05', '2022-11-13', 'No', 'No', 'aceptado'),
(3, 4, 'dia libre', 'Es el funeral de mi madre', '2022-10-25 16:22', '2022-11-08', '2022-11-13', 'No', 'No', 'aceptado'),
(4, 1, 'vacaciones', 'me aburro de tanto trabajar', '2022-10-28 16:22', '2022-11-01', '2022-11-30', 'No', 'No', 'Rechazado'),
(5, 2, 'Salida antes de tiempo', 'quiero ir al cumple de mi hijo', '2022-10-27 16:22', '2022-11-22', '2022-11-30', '12:30', '18:00', 'En espera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `id_permiso` int(10) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`id_permiso`, `nombre`, `descripcion`, `url`) VALUES
(1, 'agregar usuarios', 'agrega usuarios', '../agregarusuarios'),
(2, 'listar usuarios', 'lita usuarios', '../listarusuarios'),
(3, 'eliminar usuarios', 'elimina usuarios', '../eliminausuarios'),
(4, 'agregar herramientas e insumos', 'agrega herramientas e insumos', '../agregarherramientaseinsumos'),
(5, 'agregar novedad', 'agrega novedad', '../agregarnovedad'),
(6, 'modificar usuario', 'modifica usuario', '../modificarusuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id_prestamo` int(10) NOT NULL,
  `id_empleado` int(10) NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `observacion` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id_prestamo`, `id_empleado`, `fecha_prestamo`, `observacion`) VALUES
(1, 4, '2022-11-08', 'aqui estan sus herra'),
(2, 5, '2022-11-01', 'se las presto con gu'),
(3, 3, '2022-11-26', 'no quiero pero toca'),
(4, 2, '2022-11-13', 'para que trabaje'),
(5, 1, '2022-11-27', 'tome las herramienta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(10) NOT NULL,
  `id_permiso` int(10) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `id_permiso`, `nombre`, `estado`) VALUES
(1, 1, 'Owner', 'activo'),
(2, 1, 'Administrador', 'activo'),
(3, 3, 'subadministrador', 'activo'),
(4, 4, 'empleado', 'activo'),
(5, 5, 'empleado nuevo', 'desactivado'),
(6, 6, 'gerente', 'desactivado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicios` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicios`, `nombre`, `estado`) VALUES
(1, 'cambio de antena', 'activo'),
(2, 'cambio de contraseña', 'activo'),
(3, 'cambio de cable', 'activo'),
(4, 'cambio de router', 'desactivado'),
(5, 'cambio de nombre wifi', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL,
  `id_rol` int(10) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_documento` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `documento` int(15) NOT NULL,
  `telefono` bigint(15) NOT NULL,
  `correo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `contrasena` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_rol`, `nombre`, `apellido`, `tipo_documento`, `documento`, `telefono`, `correo`, `contrasena`) VALUES
(1, 2, 'Juan Pablo', 'Franco Faria', 'C.C', 1128424175, 2147483647, 'trony@gmail.com', '1234'),
(2, 2, 'Yenny', 'Durgando', 'T.I', 1128, 3017910078, 'yenny@gmail.com', '1234'),
(3, 6, 'Jhonatan David', 'Castro Muñoz', 'cedula de ciudadania', 1388294738, 3246756473, 'Jhonatan@gmail.com', 'eljhon123'),
(4, 6, 'Petro ', 'Gaviria Zapata', 'cedula de ciudadania', 1011489284, 3054787275, 'elmismisimo@gmail.com', 'petrog53'),
(5, 3, 'Brayan David', 'Zapata Mesa', 'cedula de ciudadania', 1834782765, 3748572391, 'brayanpro123@gmail.com', 'brayanpro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agendamiento`
--
ALTER TABLE `agendamiento`
  ADD PRIMARY KEY (`id_agendamiento`),
  ADD KEY `id_empleado` (`id_empleado`,`id_servicio`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `detalle_prestamo`
--
ALTER TABLE `detalle_prestamo`
  ADD PRIMARY KEY (`id_detalle_prestamo`),
  ADD KEY `id_prestamo` (`id_prestamo`,`id_herramienta_e_insumo`),
  ADD KEY `id_herramienta_e_insumo` (`id_herramienta_e_insumo`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `herramienta_e_insumo`
--
ALTER TABLE `herramienta_e_insumo`
  ADD PRIMARY KEY (`id_herramienta_e_insumo`);

--
-- Indices de la tabla `insumo_agenda`
--
ALTER TABLE `insumo_agenda`
  ADD PRIMARY KEY (`id_insumo_agenda`),
  ADD KEY `id_herramienta_e_insumo` (`id_herramienta_e_insumo`,`id_agendamiento`),
  ADD KEY `id_agendamiento` (`id_agendamiento`);

--
-- Indices de la tabla `novedad`
--
ALTER TABLE `novedad`
  ADD PRIMARY KEY (`id_novedad`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id_permiso`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`),
  ADD KEY `id_permiso` (`id_permiso`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicios`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agendamiento`
--
ALTER TABLE `agendamiento`
  MODIFY `id_agendamiento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `detalle_prestamo`
--
ALTER TABLE `detalle_prestamo`
  MODIFY `id_detalle_prestamo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `herramienta_e_insumo`
--
ALTER TABLE `herramienta_e_insumo`
  MODIFY `id_herramienta_e_insumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `insumo_agenda`
--
ALTER TABLE `insumo_agenda`
  MODIFY `id_insumo_agenda` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `novedad`
--
ALTER TABLE `novedad`
  MODIFY `id_novedad` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `id_permiso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agendamiento`
--
ALTER TABLE `agendamiento`
  ADD CONSTRAINT `agendamiento_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicios`),
  ADD CONSTRAINT `agendamiento_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `detalle_prestamo`
--
ALTER TABLE `detalle_prestamo`
  ADD CONSTRAINT `detalle_prestamo_ibfk_1` FOREIGN KEY (`id_herramienta_e_insumo`) REFERENCES `herramienta_e_insumo` (`id_herramienta_e_insumo`),
  ADD CONSTRAINT `detalle_prestamo_ibfk_2` FOREIGN KEY (`id_prestamo`) REFERENCES `prestamos` (`id_prestamo`);

--
-- Filtros para la tabla `insumo_agenda`
--
ALTER TABLE `insumo_agenda`
  ADD CONSTRAINT `insumo_agenda_ibfk_1` FOREIGN KEY (`id_agendamiento`) REFERENCES `agendamiento` (`id_agendamiento`),
  ADD CONSTRAINT `insumo_agenda_ibfk_2` FOREIGN KEY (`id_herramienta_e_insumo`) REFERENCES `herramienta_e_insumo` (`id_herramienta_e_insumo`);

--
-- Filtros para la tabla `novedad`
--
ALTER TABLE `novedad`
  ADD CONSTRAINT `novedad_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `rol`
--
ALTER TABLE `rol`
  ADD CONSTRAINT `rol_ibfk_1` FOREIGN KEY (`id_permiso`) REFERENCES `permiso` (`id_permiso`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
