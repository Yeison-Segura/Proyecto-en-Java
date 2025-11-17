-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2025 a las 04:15:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `calzado_la_43`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `c_id_cliente` int(11) NOT NULL,
  `c_nombre_cliente` varchar(30) DEFAULT NULL,
  `c_apellido_cliente` varchar(30) DEFAULT NULL,
  `c_direccion` varchar(30) DEFAULT NULL,
  `c_telefono` varchar(30) DEFAULT NULL,
  `c_correo` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`c_id_cliente`, `c_nombre_cliente`, `c_apellido_cliente`, `c_direccion`, `c_telefono`, `c_correo`) VALUES
(1097669440, 'Carlos', 'Sánchez', 'Calle 25, Bogotá', '3101234567', 'carlos.sanchez@example.com'),
(1097669441, 'María', 'Pérez', 'Carrera 89, Medellín', '3127654321', 'maria.perez@example.com'),
(1097669442, 'José', 'Martínez', 'Avenida 12, Cali', '3159876543', 'jose.martinez@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `dv_id` int(11) NOT NULL,
  `dv_id_venta` int(11) NOT NULL,
  `dv_id_producto` int(11) NOT NULL,
  `dv_cantidad` int(11) NOT NULL,
  `dv_precio_unitario` decimal(10,2) NOT NULL,
  `dv_subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`dv_id`, `dv_id_venta`, `dv_id_producto`, `dv_cantidad`, `dv_precio_unitario`, `dv_subtotal`) VALUES
(1, 1, 1, 4, 50000.00, 200000.00),
(2, 2, 2, 1, 60000.00, 60000.00),
(5, 3, 5, 5, 70.00, 350.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `p_id_producto` int(11) NOT NULL,
  `p_color` varchar(30) DEFAULT NULL,
  `p_id_proveedor` int(11) DEFAULT NULL,
  `p_cantidad` int(11) DEFAULT NULL,
  `p_talla` int(11) DEFAULT NULL,
  `p_marca` varchar(60) DEFAULT NULL,
  `p_descripcion` varchar(200) DEFAULT NULL,
  `p_precio` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`p_id_producto`, `p_color`, `p_id_proveedor`, `p_cantidad`, `p_talla`, `p_marca`, `p_descripcion`, `p_precio`) VALUES
(1, 'Rojo Blanco', 1095910480, 50, 42, 'Nike', 'Air Force', 50),
(2, 'Azul Blanco', 1095910481, 28, 38, 'Adidas', 'Grand Court Alpha', 60),
(5, 'Rojos', 1115723239, 70, 38, 'Jordan', 'Ryan Castro', 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `p_id_proveedor` int(11) NOT NULL,
  `p_nombre_proveedor` varchar(30) DEFAULT NULL,
  `p_apellido_proveedor` varchar(30) DEFAULT NULL,
  `p_empresa` varchar(30) DEFAULT NULL,
  `p_telefono` varchar(60) DEFAULT NULL,
  `p_correo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`p_id_proveedor`, `p_nombre_proveedor`, `p_apellido_proveedor`, `p_empresa`, `p_telefono`, `p_correo`) VALUES
(1095910480, 'Juan', 'Pérez', 'Empresa A', '123456789', 'juan.perez@example.com.co'),
(1095910481, 'María', 'Gómez', 'Empresa B', '987654321', 'maria.gomez@example.com'),
(1095910482, 'Carlos', 'Rodríguez', 'Empresa C', '555123456', 'carlos.rodriguez@example.com'),
(1115723239, 'Yeison ', 'Segura', 'Empresa A', '3213456775', 'yeison@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `r_id` int(11) NOT NULL,
  `r_nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`r_id`, `r_nombre`) VALUES
(2, 'ADMIN'),
(1, 'USUARIO'),
(3, 'VENTAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `u_id` int(11) NOT NULL,
  `u_nombre` varchar(30) DEFAULT NULL,
  `u_apellido` varchar(30) DEFAULT NULL,
  `u_correo` varchar(30) DEFAULT NULL,
  `u_direccion` varchar(60) DEFAULT NULL,
  `u_usuario` varchar(10) DEFAULT NULL,
  `u_contrasena` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`u_id`, `u_nombre`, `u_apellido`, `u_correo`, `u_direccion`, `u_usuario`, `u_contrasena`) VALUES
(21, 'Kevin Andrey', ' Valbuena Castaño', 'kavalbuena500@uts.edu.co', 'PEATONAL CL 2C # 17 09', 'adminito', '$2a$10$tnn9PyKx2ODbERqUrL0N/eBPGoBeJiuYKq8nB7QXKAVweSnbXCtaG'),
(29, 'Kevin Andrey', ' Valbuena Castaño', 'kavalbuena@uts.edu.co', 'PEATONAL CL 2C # 17 09', 'adminitito', '$2a$10$1tZ0WYBnN.j7x8qvFANmJOskZgYEtwejiGeE4uXQ3D5l4rtoRvloy'),
(31, 'Kevin Andrey', 'Pérez', 'asdasd@gmail.com', 'PEATONAL CL 2C # 17 09', 'admindsad', '$2a$10$GfLtp6hYG9PvB3UGR6zQS.ZVBXvqNmVxdqMXTk2s79E0yqt/UyE1i'),
(33, 'Kevin Andrey', ' Valbuena Castaño', 'kavalbuena06@uts.edu.co', 'PEATONAL CL 2C # 17 09', 'admin', '$2a$10$jvwZ371PMwyRvpKQ8j5vQO7BYSdKkf1eH2y7v0vXRlc9.NZB1N56m'),
(34, 'Juan', 'Pérez', 'kavalbuena2006@uts.edu.co', 'Cerca', 'ventas', '$2a$10$VJf9XHJU1p6flZJRJpyvm.Ed3QMdb7pLBEAj/28ljoewnPyj6xEiy'),
(35, 'Kevin', ' Valbuena', 'juan.perez@example.com.co', 'Cerca', 'usuario', '$2a$10$nYdQVOONr27bkQOEEaaBNuAPcr689tFKukph9lcQQ669ETOPQW2Eq'),
(36, 'Yeison', 'Muchacho', 'yeisonelpro@gmail.com', 'sapo', 'yeison', '$2a$10$6.HGct7haFHH7gytixPRIur9fsfJlDxT6Ebdqveg6j.eg/DD5ARR2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `u_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`u_id`, `r_id`) VALUES
(21, 1),
(29, 1),
(29, 2),
(31, 1),
(31, 2),
(33, 1),
(33, 2),
(34, 3),
(35, 1),
(36, 1),
(36, 2),
(36, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `v_id_venta` int(11) NOT NULL,
  `v_id_producto` int(11) DEFAULT NULL,
  `v_id_cliente` int(11) DEFAULT NULL,
  `v_estado_pago` varchar(30) DEFAULT NULL,
  `v_cantidad` int(11) DEFAULT NULL,
  `v_precio_u` decimal(10,0) DEFAULT NULL,
  `v_ciudad_envio` varchar(60) DEFAULT NULL,
  `v_direccion_envio` varchar(60) DEFAULT NULL,
  `v_Total` decimal(10,0) DEFAULT NULL,
  `v_correo` varchar(30) DEFAULT NULL,
  `v_estado_despacho` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`v_id_venta`, `v_id_producto`, `v_id_cliente`, `v_estado_pago`, `v_cantidad`, `v_precio_u`, `v_ciudad_envio`, `v_direccion_envio`, `v_Total`, `v_correo`, `v_estado_despacho`) VALUES
(1, 1, 1097669440, 'Pagado', 2, 100, 'Bogotá', 'calle 14a-24', 130, 'carlos.sanchez@example.com', 'En proceso'),
(2, 2, 1097669441, 'Pendiente', 1, 60, 'Medellín', 'calle 34a-24', 90, 'maria.perez@example.com', 'Esperando pago'),
(3, 1, 1097669440, 'Pagado', 1, 15000, 'Cali', 'Calle 56', 350, '', 'En tránsito');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`c_id_cliente`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`dv_id`),
  ADD KEY `fk_detalle_venta` (`dv_id_venta`),
  ADD KEY `fk_detalle_producto` (`dv_id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`p_id_producto`),
  ADD KEY `p_id_proveedor` (`p_id_proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`p_id_proveedor`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`r_id`),
  ADD UNIQUE KEY `r_nombre` (`r_nombre`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`u_id`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`u_id`,`r_id`),
  ADD KEY `fk_usuario_rol_rol` (`r_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`v_id_venta`),
  ADD KEY `v_id_producto` (`v_id_producto`),
  ADD KEY `v_id_cliente` (`v_id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `dv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `p_id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `v_id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_detalle_producto` FOREIGN KEY (`dv_id_producto`) REFERENCES `producto` (`p_id_producto`),
  ADD CONSTRAINT `fk_detalle_venta` FOREIGN KEY (`dv_id_venta`) REFERENCES `ventas` (`v_id_venta`) ON DELETE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`p_id_proveedor`) REFERENCES `proveedor` (`p_id_proveedor`);

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `fk_usuario_rol_rol` FOREIGN KEY (`r_id`) REFERENCES `rol` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_rol_usuario` FOREIGN KEY (`u_id`) REFERENCES `usuario` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`v_id_producto`) REFERENCES `producto` (`p_id_producto`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`v_id_cliente`) REFERENCES `clientes` (`c_id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
