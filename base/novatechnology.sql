-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-10-2022 a las 13:50:09
-- Versión del servidor: 8.0.28-0ubuntu0.20.04.3
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `novatechnology`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cliente`
--

CREATE TABLE `Cliente` (
  `id_cliente` int NOT NULL COMMENT 'Codigo con el cual se identifica al cliente',
  `mail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Mail del cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Cliente`
--

INSERT INTO `Cliente` (`id_cliente`, `mail`) VALUES
(6, 'axelraccioppe@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_comun`
--

CREATE TABLE `cliente_comun` (
  `nombre_cliente` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Nombre del cliente de la feria'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_empresa`
--

CREATE TABLE `cliente_empresa` (
  `id_cliente` int NOT NULL COMMENT 'Código con el cual se identifica al cliente',
  `Nombre_empresa` varchar(200) NOT NULL,
  `Contrasena_empresa` varchar(30) NOT NULL,
  `Ruc` int NOT NULL COMMENT 'Registro único de contribuyente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cliente_web`
--

CREATE TABLE `Cliente_web` (
  `id_cliente` int NOT NULL COMMENT 'Codigo con el cual se identifica al cliente',
  `Ci` int NOT NULL COMMENT 'Cédula del cliente web',
  `Nombre_web` varchar(200) NOT NULL,
  `Contrasena_web` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Apellido_paterno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Apellido paterno del cliente',
  `Apellido_materno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Apellido materno del cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Cliente_web`
--

INSERT INTO `Cliente_web` (`id_cliente`, `Ci`, `Nombre_web`, `Contrasena_web`, `Apellido_paterno`, `Apellido_materno`) VALUES
(6, 54489165, 'Axel', '642d5a672864cb7b4b3cb809bd11cd16', 'Raccioppe', 'Fabricio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Compra`
--

CREATE TABLE `Compra` (
  `id_feria` int NOT NULL COMMENT 'Código con el cual se identifica al puesto de la feria',
  `id_variedad` int NOT NULL COMMENT 'Código con el cual se identifica a la variedad',
  `nombre_cliente` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Nombre del cliente ',
  `fecha` int NOT NULL COMMENT 'fecha de la compra',
  `importe` int NOT NULL COMMENT 'Valor de la compra',
  `cantidad` int NOT NULL COMMENT 'Cantidad a comprar ',
  `nombre_vendedor` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Nombre del vendedor',
  `Producto` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Producto a comprar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Contiene`
--

CREATE TABLE `Contiene` (
  `id_variedad` int NOT NULL COMMENT 'Código con el cual se identifica a la variedad',
  `Nr°pedido` int NOT NULL COMMENT 'Número del pedido',
  `id_especie` int NOT NULL COMMENT 'Código con el cual se identifica a la especie',
  `fechayhora` int NOT NULL COMMENT 'Fecha y hora del pedido',
  `cantidad_producto` int NOT NULL COMMENT 'Cantidad del producto '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Especie`
--

CREATE TABLE `Especie` (
  `id_especie` int NOT NULL COMMENT 'Código con el cual se identifica a la especie',
  `Nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Nombre de la especie',
  `Stock` int NOT NULL COMMENT 'Cantidad que se posee para vender de esa especie',
  `Asociacion` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Con las que podes plantar cerca'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Especie`
--

INSERT INTO `Especie` (`id_especie`, `Nombre`, `Stock`, `Asociacion`) VALUES
(1, 'Acelga', 20, 'Lechuga y Escarola'),
(2, 'Achicoria de corte o endibias', 20, ''),
(3, 'Apio', 20, 'Puerro y Repollo'),
(4, 'Arveja', 20, 'Repollo, Ajo y Zanahoria'),
(5, 'Albahaca', 20, 'Tomate'),
(6, 'Ajo', 20, 'Lechuga y Remolacha'),
(7, 'Berenjena', 20, 'Poroto y Calendula'),
(8, 'Cebolla', 20, 'Lechuga, Repollo, Remolacha y Coliflor'),
(9, 'Coliflor', 20, 'Lechuga, Apio, Cebolla y Zanahoria'),
(10, 'Escarola', 20, 'Zanahoria, Remolacha y Repollo'),
(11, 'Espinaca', 20, 'Repollo, Remolacha, Coliflor y Brocoli'),
(12, 'Habas', 20, 'Zanahoria, Repollo y Coliflor'),
(13, 'Lechuga', 20, 'Acelga, Remolacha, Zanahoria, Repollo, Puerro y Cebolla'),
(14, 'Maiz_Dulce', 20, 'Acelga, Poroto y Zapallo'),
(15, 'Melon', 20, 'Maiz y Acelga'),
(16, 'Sandia', 20, 'Maiz y Acelga'),
(17, 'Pepino', 20, 'Maiz y Acelga'),
(18, 'Perejil', 20, 'Zanahoria'),
(19, 'Pimiento', 20, 'Zanahoria'),
(20, 'Judias_Verdes', 20, 'Maiz, Zapallo y Tomate'),
(21, 'Puerro', 20, 'Zanahoria, Apio y Lechuga'),
(22, 'Rabanito', 20, 'Zanahoria, Espinaca, Lechuga y Arveja'),
(23, 'Remolacha', 20, 'Repollo, Coliflor, Lechuga, Ajo y Brocoli'),
(24, 'Tomate', 20, 'Albahaca, Zanahoria y Claveles chinos'),
(25, 'Repollo', 20, 'Lechuga, Apio y Zanahoria'),
(26, 'Zanahoria', 20, 'Lechuga, Tomate, Escarola, Rabanito y Repollo'),
(27, 'Zapallo', 20, 'Maiz, Poroto y Acelga'),
(28, 'Zapallito', 20, 'Maiz, Poroto y Acelga'),
(29, 'Anquito', 20, 'Maiz, Poroto y Acelga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Esta`
--

CREATE TABLE `Esta` (
  `id_nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Nombre del estado del pedido',
  `Nr°pedido` int NOT NULL COMMENT 'Número del pedido',
  `fecha_inicio` int NOT NULL COMMENT 'Fecha de inicio del pedido',
  `fecha_fin` int NOT NULL COMMENT 'Fecha de fin del pedido'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estado`
--

CREATE TABLE `Estado` (
  `id_nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Nombre del estado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Huertas`
--

CREATE TABLE `Huertas` (
  `id_huerta` int NOT NULL COMMENT 'Código con el cual se identifica a la huerta',
  `tamaño` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Tamaño de la huerta',
  `metas` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Cantidad que se planea plantar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pedido`
--

CREATE TABLE `Pedido` (
  `Nr°pedido` int NOT NULL,
  `fecha_entrega` int NOT NULL,
  `rango_hora` int NOT NULL,
  `metodo_pago` varchar(200) NOT NULL,
  `id_cliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Plantan`
--

CREATE TABLE `Plantan` (
  `id_Variedad` int NOT NULL,
  `id_Huerta` int NOT NULL,
  `Fecha` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparte`
--

CREATE TABLE `reparte` (
  `Nr°pedidio` int NOT NULL,
  `id_repartidor` int NOT NULL,
  `Fecha` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repartidor`
--

CREATE TABLE `repartidor` (
  `id_repartidor` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Variedad`
--

CREATE TABLE `Variedad` (
  `id_variedad` int NOT NULL,
  `id_especie` int NOT NULL,
  `nombre_variedad` varchar(200) NOT NULL,
  `stock` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Cliente`
--
ALTER TABLE `Cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `cliente_comun`
--
ALTER TABLE `cliente_comun`
  ADD PRIMARY KEY (`nombre_cliente`);

--
-- Indices de la tabla `cliente_empresa`
--
ALTER TABLE `cliente_empresa`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `Cliente_web`
--
ALTER TABLE `Cliente_web`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `FK_ClienteWeb` (`id_cliente`);

--
-- Indices de la tabla `Compra`
--
ALTER TABLE `Compra`
  ADD PRIMARY KEY (`id_feria`,`id_variedad`,`nombre_cliente`),
  ADD KEY `FK_CompraV` (`id_variedad`),
  ADD KEY `FK_CompraNombrecliente` (`nombre_cliente`);

--
-- Indices de la tabla `Contiene`
--
ALTER TABLE `Contiene`
  ADD PRIMARY KEY (`id_variedad`,`Nr°pedido`,`id_especie`),
  ADD KEY `FK_ContieneVariedad` (`id_especie`,`id_variedad`),
  ADD KEY `FK_ContieneNrPedido` (`Nr°pedido`);

--
-- Indices de la tabla `Especie`
--
ALTER TABLE `Especie`
  ADD PRIMARY KEY (`id_especie`);

--
-- Indices de la tabla `Esta`
--
ALTER TABLE `Esta`
  ADD PRIMARY KEY (`id_nombre`,`Nr°pedido`,`fecha_inicio`),
  ADD KEY `FK_EstaNRpedido` (`Nr°pedido`),
  ADD KEY `FK_EstaNombre` (`id_nombre`);

--
-- Indices de la tabla `Estado`
--
ALTER TABLE `Estado`
  ADD PRIMARY KEY (`id_nombre`);

--
-- Indices de la tabla `Huertas`
--
ALTER TABLE `Huertas`
  ADD PRIMARY KEY (`id_huerta`);

--
-- Indices de la tabla `Pedido`
--
ALTER TABLE `Pedido`
  ADD PRIMARY KEY (`Nr°pedido`),
  ADD KEY `FK_PedidoIdCliente` (`id_cliente`);

--
-- Indices de la tabla `Plantan`
--
ALTER TABLE `Plantan`
  ADD PRIMARY KEY (`id_Variedad`,`id_Huerta`),
  ADD KEY `FK_PlantanIdHuerta` (`id_Huerta`);

--
-- Indices de la tabla `reparte`
--
ALTER TABLE `reparte`
  ADD PRIMARY KEY (`Nr°pedidio`),
  ADD KEY `FK_ReparteIdRepartidor` (`id_repartidor`);

--
-- Indices de la tabla `repartidor`
--
ALTER TABLE `repartidor`
  ADD PRIMARY KEY (`id_repartidor`);

--
-- Indices de la tabla `Variedad`
--
ALTER TABLE `Variedad`
  ADD PRIMARY KEY (`id_variedad`,`id_especie`),
  ADD KEY `FK_IdEspecie` (`id_especie`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Cliente`
--
ALTER TABLE `Cliente`
  MODIFY `id_cliente` int NOT NULL AUTO_INCREMENT COMMENT 'Codigo con el cual se identifica al cliente', AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente_empresa`
--
ALTER TABLE `cliente_empresa`
  ADD CONSTRAINT `FK_ClienteEmpresa` FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`id_cliente`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Cliente_web`
--
ALTER TABLE `Cliente_web`
  ADD CONSTRAINT `FK_ClienteWeb` FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`id_cliente`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Compra`
--
ALTER TABLE `Compra`
  ADD CONSTRAINT `FK_CompraNombrecliente` FOREIGN KEY (`nombre_cliente`) REFERENCES `cliente_comun` (`nombre_cliente`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_CompraV` FOREIGN KEY (`id_variedad`) REFERENCES `Variedad` (`id_variedad`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Contiene`
--
ALTER TABLE `Contiene`
  ADD CONSTRAINT `FK_ContieneNrPedido` FOREIGN KEY (`Nr°pedido`) REFERENCES `Pedido` (`Nr°pedido`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_ContieneVariedad` FOREIGN KEY (`id_especie`,`id_variedad`) REFERENCES `Variedad` (`id_especie`, `id_variedad`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Esta`
--
ALTER TABLE `Esta`
  ADD CONSTRAINT `FK_EstaNombre` FOREIGN KEY (`id_nombre`) REFERENCES `Estado` (`id_nombre`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_EstaNRpedido` FOREIGN KEY (`Nr°pedido`) REFERENCES `Pedido` (`Nr°pedido`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Pedido`
--
ALTER TABLE `Pedido`
  ADD CONSTRAINT `FK_PedidoIdCliente` FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`id_cliente`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Plantan`
--
ALTER TABLE `Plantan`
  ADD CONSTRAINT `FK_PlantanIdHuerta` FOREIGN KEY (`id_Huerta`) REFERENCES `Huertas` (`id_huerta`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_PlantanIdVariedad` FOREIGN KEY (`id_Variedad`) REFERENCES `Variedad` (`id_variedad`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `reparte`
--
ALTER TABLE `reparte`
  ADD CONSTRAINT `FK_ReparteIdRepartidor` FOREIGN KEY (`id_repartidor`) REFERENCES `repartidor` (`id_repartidor`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_ReparteNrPedido` FOREIGN KEY (`Nr°pedidio`) REFERENCES `Pedido` (`Nr°pedido`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Variedad`
--
ALTER TABLE `Variedad`
  ADD CONSTRAINT `FK_IdEspecie` FOREIGN KEY (`id_especie`) REFERENCES `Especie` (`id_especie`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
