SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `agendamiento` VALUES(1, 5, 1, 'Carlos Zapata Zapata', 'Casa azul, debajo de un puente', '2022-11-15', 'Calle 27 d sur # 27 c 51', 3256132498, 'pendiente');
INSERT INTO `agendamiento` VALUES(2, 3, 3, 'Katherine Diosa Franco', 'casa de tres pisos, blanca y al lado de una tienda', '2022-11-05', 'Diagonal 40 # 41 61.', 6544345654, 'realizado');
INSERT INTO `agendamiento` VALUES(3, 4, 2, 'Jose Arturo Carvajal', 'casa negra de dos pisos', '2022-11-05', 'Calle 11 d sur # 12 c 32.', 7364221133, 'pediente');
INSERT INTO `agendamiento` VALUES(4, 1, 5, 'Piedra Colorado Taborda', 'Al lado de un circo', '2022-11-15', 'Calle 11 d norte # 11 c 11.', 1324132411, 'pendiente');
INSERT INTO `agendamiento` VALUES(5, 2, 4, 'Ligia Mesa Diosa', 'Casa de un piso y una enorme puerta de color verde', '2022-11-27', 'Calle 99 d sur # 27 c 75.', 3258767689, 'realizado');

CREATE TABLE `detalle_prestamo` (
  `id_detalle_prestamo` int(10) NOT NULL,
  `id_prestamo` int(10) NOT NULL,
  `id_herramienta_e_insumo` int(10) NOT NULL,
  `cantidad_elemento` int(20) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `detalle_prestamo` VALUES(1, 1, 6, 3, 'en posecion');
INSERT INTO `detalle_prestamo` VALUES(2, 3, 2, 1, 'dañado');
INSERT INTO `detalle_prestamo` VALUES(3, 4, 5, 4, 'devuelto');
INSERT INTO `detalle_prestamo` VALUES(4, 2, 1, 3, 'arreglado');
INSERT INTO `detalle_prestamo` VALUES(5, 5, 3, 5, 'dañado');

CREATE TABLE `empleado` (
  `id_empleado` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `tipo_documento` varchar(30) NOT NULL,
  `documento` int(15) NOT NULL,
  `telefono` bigint(15) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `empleado` VALUES(1, 'Juan Pablo', 'Franco Faria', 'C.C', 1128, 2147483647, 'trony@gmail.com', 'ayi serquita');
INSERT INTO `empleado` VALUES(2, 'Yenny', 'Durgando', 'T.I', 1128, 3017910078, 'yenny@gmail.com', 'ayi serquita');
INSERT INTO `empleado` VALUES(3, 'David Felipe', 'Diosa Lora', 'Cedula de ciudadania', 1128424175, 3017910078, 'juanpablofrancodaria1128424175', 'crwytdxgasoicf283fu2379ry23pi rf9  988');
INSERT INTO `empleado` VALUES(4, 'Jhonatan Castro', 'Diosa Muñoz', 'cedula de cuidadania', 1932876546, 3225674312, 'jhonatan@gmail.con', 'km7 antigua via guarne');
INSERT INTO `empleado` VALUES(5, 'Brayan David', 'Zapata Taborda', 'cedula de cuidadania', 1482431243, 7489263718, 'brayan@gmail.com', 'km7 antigua via a guarne');

CREATE TABLE `herramienta_e_insumo` (
  `id_herramienta_e_insumo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `color` varchar(11) NOT NULL,
  `estado` varchar(11) NOT NULL,
  `fecha_compra` date NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `herramienta_e_insumo` VALUES(1, 'taladro', 'herramienta', 'electrica', 'para taladrar', 'naranja', 'para repara', '2022-11-22', 12);
INSERT INTO `herramienta_e_insumo` VALUES(2, 'moden 2 antenas', 'insumo', 'router', 'para tener covertura', 'blanco', 'en espera', '2022-11-28', 6);
INSERT INTO `herramienta_e_insumo` VALUES(3, 'clavos', 'insumo', 'manual', 'para clavar', 'gris', 'en espera', '2022-11-22', 12);
INSERT INTO `herramienta_e_insumo` VALUES(4, 'grapas', 'insumo', 'manual', 'para pegar cable a l', 'gris', 'en espera', '2022-11-22', 12);
INSERT INTO `herramienta_e_insumo` VALUES(5, 'moden 3 antenas', 'insumo', 'router', 'para tener covertura', 'blanco', 'en espera', '2022-11-04', 6);
INSERT INTO `herramienta_e_insumo` VALUES(6, 'llave ingresa', 'herramienta', 'manual', 'para desatornillar t', 'rojo', 'buena', '2022-11-16', 4);

CREATE TABLE `insumo_agenda` (
  `id_insumo_agenda` int(10) NOT NULL,
  `id_herramienta_e_insumo` int(10) NOT NULL,
  `id_agendamiento` int(10) NOT NULL,
  `cantidad_elemento` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `insumo_agenda` VALUES(1, 3, 1, 5);
INSERT INTO `insumo_agenda` VALUES(2, 2, 3, 2);
INSERT INTO `insumo_agenda` VALUES(3, 5, 2, 1);
INSERT INTO `insumo_agenda` VALUES(4, 3, 5, 9);
INSERT INTO `insumo_agenda` VALUES(5, 5, 4, 1);

CREATE TABLE `novedad` (
  `id_novedad` int(10) NOT NULL,
  `id_empleado` int(10) NOT NULL,
  `peticion` varchar(30) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `fecha_registro` varchar(20) NOT NULL,
  `fecha_de_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `hora_de_inicio` varchar(10) NOT NULL,
  `hora_final` varchar(10) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `novedad` VALUES(1, 5, 'llegada al trabajo tarde', 'Tengo artritis', '2022-12-12 12:32', '2022-11-01', '2022-11-02', '15:30', '20:00', 'Rechazado');
INSERT INTO `novedad` VALUES(2, 3, 'dia libre', 'Es el funeral de un amigo', '2022-10-21 13:22', '2022-11-05', '2022-11-13', 'No', 'No', 'aceptado');
INSERT INTO `novedad` VALUES(3, 4, 'dia libre', 'Es el funeral de mi madre', '2022-10-25 16:22', '2022-11-08', '2022-11-13', 'No', 'No', 'aceptado');
INSERT INTO `novedad` VALUES(4, 1, 'vacaciones', 'me aburro de tanto trabajar', '2022-10-28 16:22', '2022-11-01', '2022-11-30', 'No', 'No', 'Rechazado');
INSERT INTO `novedad` VALUES(5, 2, 'Salida antes de tiempo', 'quiero ir al cumple de mi hijo', '2022-10-27 16:22', '2022-11-22', '2022-11-30', '12:30', '18:00', 'En espera');

CREATE TABLE `permiso` (
  `id_permiso` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `url` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `permiso` VALUES(1, 'agregar usuarios', 'agrega usuarios', '../agregarusuarios');
INSERT INTO `permiso` VALUES(2, 'listar usuarios', 'lita usuarios', '../listarusuarios');
INSERT INTO `permiso` VALUES(3, 'eliminar usuarios', 'elimina usuarios', '../eliminausuarios');
INSERT INTO `permiso` VALUES(4, 'agregar herramientas e insumos', 'agrega herramientas e insumos', '../agregarherramientaseinsumos');
INSERT INTO `permiso` VALUES(5, 'agregar novedad', 'agrega novedad', '../agregarnovedad');
INSERT INTO `permiso` VALUES(6, 'modificar usuario', 'modifica usuario', '../modificarusuario');

CREATE TABLE `prestamos` (
  `id_prestamo` int(10) NOT NULL,
  `id_empleado` int(10) NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `observacion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `prestamos` VALUES(1, 4, '2022-11-08', 'aqui estan sus herra');
INSERT INTO `prestamos` VALUES(2, 5, '2022-11-01', 'se las presto con gu');
INSERT INTO `prestamos` VALUES(3, 3, '2022-11-26', 'no quiero pero toca');
INSERT INTO `prestamos` VALUES(4, 2, '2022-11-13', 'para que trabaje');
INSERT INTO `prestamos` VALUES(5, 1, '2022-11-27', 'tome las herramienta');

CREATE TABLE `rol` (
  `id_rol` int(10) NOT NULL,
  `id_permiso` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `rol` VALUES(1, 1, 'Owner', 'activo');
INSERT INTO `rol` VALUES(2, 1, 'Administrador', 'activo');
INSERT INTO `rol` VALUES(3, 3, 'subadministrador', 'activo');
INSERT INTO `rol` VALUES(4, 4, 'empleado', 'activo');
INSERT INTO `rol` VALUES(5, 5, 'empleado nuevo', 'desactivado');
INSERT INTO `rol` VALUES(6, 6, 'gerente', 'desactivado');

CREATE TABLE `servicios` (
  `id_servicios` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `servicios` VALUES(1, 'cambio de antena', 'activo');
INSERT INTO `servicios` VALUES(2, 'cambio de contraseña', 'activo');
INSERT INTO `servicios` VALUES(3, 'cambio de cable', 'activo');
INSERT INTO `servicios` VALUES(4, 'cambio de router', 'desactivado');
INSERT INTO `servicios` VALUES(5, 'cambio de nombre wifi', 'activo');

CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL,
  `id_rol` int(10) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `tipo_documento` varchar(40) NOT NULL,
  `documento` int(15) NOT NULL,
  `telefono` bigint(15) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `contrasena` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `usuario` VALUES(1, 2, 'Juan Pablo', 'Franco Faria', 'C.C', 1128424175, 2147483647, 'trony@gmail.com', '1234');
INSERT INTO `usuario` VALUES(2, 2, 'Yenny', 'Durgando', 'T.I', 1128, 3017910078, 'yenny@gmail.com', '1234');
INSERT INTO `usuario` VALUES(3, 6, 'Jhonatan David', 'Castro Muñoz', 'cedula de ciudadania', 1388294738, 3246756473, 'Jhonatan@gmail.com', 'eljhon123');
INSERT INTO `usuario` VALUES(4, 6, 'Petro ', 'Gaviria Zapata', 'cedula de ciudadania', 1011489284, 3054787275, 'elmismisimo@gmail.com', 'petrog53');
INSERT INTO `usuario` VALUES(5, 3, 'Brayan David', 'Zapata Mesa', 'cedula de ciudadania', 1834782765, 3748572391, 'brayanpro123@gmail.com', 'brayanpro');


ALTER TABLE `agendamiento`
  ADD PRIMARY KEY (`id_agendamiento`),
  ADD KEY `id_empleado` (`id_empleado`,`id_servicio`),
  ADD KEY `id_servicio` (`id_servicio`);

ALTER TABLE `detalle_prestamo`
  ADD PRIMARY KEY (`id_detalle_prestamo`),
  ADD KEY `id_prestamo` (`id_prestamo`,`id_herramienta_e_insumo`),
  ADD KEY `id_herramienta_e_insumo` (`id_herramienta_e_insumo`);

ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

ALTER TABLE `herramienta_e_insumo`
  ADD PRIMARY KEY (`id_herramienta_e_insumo`);

ALTER TABLE `insumo_agenda`
  ADD PRIMARY KEY (`id_insumo_agenda`),
  ADD KEY `id_herramienta_e_insumo` (`id_herramienta_e_insumo`,`id_agendamiento`),
  ADD KEY `id_agendamiento` (`id_agendamiento`);

ALTER TABLE `novedad`
  ADD PRIMARY KEY (`id_novedad`),
  ADD KEY `id_empleado` (`id_empleado`);

ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id_permiso`);

ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `id_empleado` (`id_empleado`);

ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`),
  ADD KEY `id_permiso` (`id_permiso`);

ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicios`);

ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);


ALTER TABLE `agendamiento`
  MODIFY `id_agendamiento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `detalle_prestamo`
  MODIFY `id_detalle_prestamo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `empleado`
  MODIFY `id_empleado` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `herramienta_e_insumo`
  MODIFY `id_herramienta_e_insumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `insumo_agenda`
  MODIFY `id_insumo_agenda` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `novedad`
  MODIFY `id_novedad` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `permiso`
  MODIFY `id_permiso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `rol`
  MODIFY `id_rol` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `servicios`
  MODIFY `id_servicios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `agendamiento`
  ADD CONSTRAINT `agendamiento_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicios`),
  ADD CONSTRAINT `agendamiento_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

ALTER TABLE `detalle_prestamo`
  ADD CONSTRAINT `detalle_prestamo_ibfk_1` FOREIGN KEY (`id_herramienta_e_insumo`) REFERENCES `herramienta_e_insumo` (`id_herramienta_e_insumo`),
  ADD CONSTRAINT `detalle_prestamo_ibfk_2` FOREIGN KEY (`id_prestamo`) REFERENCES `prestamos` (`id_prestamo`);

ALTER TABLE `insumo_agenda`
  ADD CONSTRAINT `insumo_agenda_ibfk_1` FOREIGN KEY (`id_agendamiento`) REFERENCES `agendamiento` (`id_agendamiento`),
  ADD CONSTRAINT `insumo_agenda_ibfk_2` FOREIGN KEY (`id_herramienta_e_insumo`) REFERENCES `herramienta_e_insumo` (`id_herramienta_e_insumo`);

ALTER TABLE `novedad`
  ADD CONSTRAINT `novedad_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

ALTER TABLE `rol`
  ADD CONSTRAINT `rol_ibfk_1` FOREIGN KEY (`id_permiso`) REFERENCES `permiso` (`id_permiso`);

ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
