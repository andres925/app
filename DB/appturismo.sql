-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2021 a las 15:02:26
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appturismo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(67) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razonsocial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urllogo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitas` int(11) NOT NULL DEFAULT 0,
  `orden` int(11) NOT NULL DEFAULT 0,
  `estado` tinyint(1) NOT NULL DEFAULT 0,
  `publicacion` tinyint(1) NOT NULL DEFAULT 0,
  `ruta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `slug`, `title`, `description`, `razonsocial`, `descripcion`, `urlfoto`, `urllogo`, `visitas`, `orden`, `estado`, `publicacion`, `ruta_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'tour-misti', 'Tour Misti', 'Tour Misti', 'Tour Misti', 'Tour Misti', 'empresa_1616803997.jpg', 'logo_1616803997.jpg', 5, 1, 0, 0, 2, 1, '2021-03-27 05:13:17', '2021-04-21 17:36:15'),
(2, 'empresa-tour-s', 'Empresa  Tour S', 'Empresa  Tour S', 'Empresa  Tour S', 'Empresa  Tour S', 'empresa_1616804139.jpg', 'logo_1616804140.jpg', 2, 2, 0, 0, 1, 1, '2021-03-27 05:15:40', '2021-04-23 18:26:02'),
(20, 'aa', 'aa', 'aa', 'aa', 'aa', 'empresa_1619047967.jpg', 'logo_1619047967.jpg', 0, 2, 1, 0, 1, 7, '2021-04-22 04:32:47', '2021-04-22 04:32:47'),
(22, 'nueva', 'nueva', 'nueva', 'nueva', 'nueva', 'empresa_1619048462.jpg', 'logo_1619048462.jpg', 0, 3, 0, 0, 1, 7, '2021-04-22 04:41:02', '2021-04-22 04:41:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` tinyint(1) NOT NULL DEFAULT 0,
  `orden` int(11) NOT NULL DEFAULT 0,
  `lugar_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `nombre`, `descripcion`, `urlfoto`, `tipo`, `orden`, `lugar_id`, `created_at`, `updated_at`) VALUES
(1, 'Foto 1', 'Foto 1', '1.jpg', 1, 1, 1, '2021-03-28 22:37:28', '2021-03-28 22:37:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugars`
--

CREATE TABLE `lugars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(67) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitud` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitud` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitas` int(11) NOT NULL DEFAULT 0,
  `orden` int(11) NOT NULL DEFAULT 0,
  `estado` tinyint(1) NOT NULL DEFAULT 0,
  `ruta_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lugars`
--

INSERT INTO `lugars` (`id`, `slug`, `title`, `description`, `nombre`, `descripcion`, `urlfoto`, `latitud`, `longitud`, `visitas`, `orden`, `estado`, `ruta_id`, `created_at`, `updated_at`) VALUES
(1, 'choqolaca', 'Choqolaca', 'Choqolaca', 'Choqolaca', 'Choqolaca', 'lugar_1616802954.jpg', '-15.15458278', '-71.29761703', 5, 1, 0, 1, '2021-03-27 04:55:55', '2021-04-22 04:56:01'),
(2, 'cataratas-de-pillones', 'Cataratas de Pillones', 'Cataratas de Pillones', 'Cataratas de Pillones', 'Cataratas de Pillones', 'lugar_1616803109.jpg', '-15.87449445', '-71.179456899', 0, 2, 0, 1, '2021-03-27 04:58:30', '2021-03-27 04:58:30'),
(3, 'canteras-de-sillar', 'Canteras de Sillar', 'Canteras de Sillar', 'Canteras de Sillar', 'Canteras de Sillar', 'lugar_1616803242.jpg', '-16.36114652', '-71.61198265', 0, 1, 0, 2, '2021-03-27 05:00:42', '2021-03-27 05:00:42'),
(4, 'santa-catalina', 'Santa Catalina', 'Santa Catalina', 'Santa Catalina', 'Santa Catalina', 'lugar_1616803324.jpg', '-16.3955154', '-71.53630185', 0, 2, 0, 2, '2021-03-27 05:02:04', '2021-03-27 05:02:04'),
(5, 'playas-de-mollendo', 'Playas de Mollendo', 'Playas de Mollendo', 'Playas de Mollendo', 'Playas de Mollendo', 'lugar_1616803674.jpg', '-17.03249336', '-72.013671894', 1, 2, 0, 3, '2021-03-27 05:04:14', '2021-04-21 17:28:35'),
(6, 'el-canon-del-colca', 'El cañon del Colca', 'El cañon del Colca', 'El cañon del Colca', 'El cañon del Colca', 'lugar_1616803537.jpg', '-15.609349955', '-72.08964435', 0, 2, 0, 3, '2021-03-27 05:05:37', '2021-03-27 05:05:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_06_135329_create_permission_tables', 1),
(5, '2020_12_07_125603_create_rutas_table', 1),
(6, '2020_12_08_105810_create_posts_table', 1),
(7, '2020_12_08_115221_create_empresas_table', 1),
(8, '2020_12_09_112527_create_lugars_table', 1),
(9, '2020_12_10_112755_create_fotos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(67) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'foto.jpg',
  `urlvideo` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitas` int(11) NOT NULL DEFAULT 0,
  `orden` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `description`, `nombre`, `descripcion`, `urlfoto`, `urlvideo`, `visitas`, `orden`, `created_at`, `updated_at`) VALUES
(1, '20-cosas-que-no-pueden-faltar-en-tu-maleta-de-viaje', '20 COSAS QUE NO PUEDEN FALTAR EN TU MALETA DE VIAJE', 'Es por eso que he elaborado una lista, según mi experiencia en los viajes, con las cosas que no pueden faltar en tu maleta si quieres tener un viaje sin pr', '20 COSAS QUE NO PUEDEN FALTAR EN TU MALETA DE VIAJE', 'Tienes un viaje y no sabes qué llevar. Esta pregunta es básica y muy común sobre todo entre nosotras las mujeres. Podemos pasar horas pensando cómo meter todo nuestro clóset en la maleta de viaje o cómo elegir todos los pares de zapatos que queremos llevar o incluso llamamos a nuestras compañeras de viaje para ver qué van a llevar ellas y estar segura que no nos olvidamos de nada (debo confesar que yo lo he hecho).\r\n\r\nEn primer lugar debes tener en cuenta algunos aspectos básicos que te van a permitir tomar una mejor decisión:\r\n\r\nDestino de viaje: Esto es  importante sobre todo a la hora de elegir la ropa que vamos a llevar. Si viajas a la selva o alguna zona tropical definitivamente no es buena idea llevar muchas casacas o diez pares de medias; lo que sí deberías llevar es bloqueador, repelente, traje de baño, etc.\r\n\r\nClima de la zona: A mi parecer esto es mucho más importante que el punto anterior, ya que no es lo mismo viajar a la selva en los meses de diciembre a marzo donde normalmente se presentan intensas lluvias, que en los meses de mayo a setiembre donde el calor es sofocante y puede llegar a temperaturas de hasta 42°.\r\n\r\nDías de viaje: Debes tener en cuenta la cantidad de días que vas a estar fuera de casa. Una cosa es hacer un viaje full day y otra cosa es viajar por  un mes o medio año.\r\n\r\nTipo de viaje: Definitivamente no es lo mismo hacer un viaje de turismo que hacer un viaje como mochilero o un viaje de negocios. La diferencia se da principalmente en el tipo y la cantidad de ropa que vas a llevar. Generalmente los mochileros tratan de viajar ligeros y llevan únicamente «lo justo y necesario» ya que les gusta caminar mucho e ir de un lugar a otro, en cambio los turistas prefieren llevar más variedad de ropa (para que salgan chévere las fotos) y por otro lado las personas que hacen viajes de negocios suelen llevar poca ropa debido a que los viajes normalmente son cortos o prefieren comprar nuevos atuendos en el lugar de destino.\r\n\r\nTeniendo en cuenta estos 4 puntos te mostraré lo que yo llevo normalmente en un viaje. Tomaré como ejemplo el viaje que acabo de realizar a Tarapoto para mostrarte todo lo que llevé en mi mochila \r\n\r\nPara empezar suelo llevar una mochila grande de 40 litros, un bolso de mano y una pequeña cartera o un canguro para\r\n\r\ncuando salgo a caminar por la ciudad en el cual llevo mi dinero, celular y otros objetos que no ocupen mucho espacio como repelente, lentes o bloqueador.', 'post_1619008552.jpg', NULL, 0, 1, '2021-04-21 17:35:53', '2021-04-21 17:35:53'),
(2, 'como-elegir-un-buen-hotel-para-hospedarte', 'Una de las partes importantes, si no es que la más, de los viajes', 'Una de las partes importantes, si no es que la más, de los viajes es el hospedaje, normalmente este representa el 50% o más de tu gasto y puede hacer que t', 'Cómo elegir un buen hotel para hospedarte', 'Lo primero para saber cómo elegir un buen hotel es definir: ¿Qué quieres?\r\nLo primero que debes de saber es que en la vida no hay nada gratis, y la mayoría de las cosas que son baratas generalmente el costo lo trasladan a otras cosas. Por ejemplo, los hoteles más económicos normalmente estarán a las afueras de la ciudad, quizás no estén tan limpios o no cuenten con todos los servicios que necesitas.\r\n\r\nDicho lo anterior, tienes que estar consciente de que tanto estás dispuesto a sacrificar en comodidad para encontrar un hotel barato. Esto no quiere decir que en realidad tengas que sacrificarlo, pero al menos estar consciente de que quizás tendrás que hacerlo.\r\nUbicación. Los hoteles más económicos normalmente se encontrarán en los lugares más alejados de la zona turística, en ciudades pequeñas esto puede no marcar una diferencia pero en ciudades grandes, donde trasladarte representa un viaje de ida de 2 o 3 horas más otras 2 o 3 horas de regreso, quizás no sea tan conveniente.\r\nAcceso a transporte público. Antes de empezar a buscar hoteles debes de tener una idea de cual es la forma más eficiente de trasladarse en la ciudad donde estarás, por ejemplo, la forma más eficiente de moverte en Japón es en transporte público mientras que en India es en Taxi o Rickshaw. Si el hotel donde te piensas hospedar no tiene un buen acceso a transporte público entonces lo que te ahorras por noche en el hotel se trasladará automáticamente al gasto del transporte que tendrás que pagar para moverte.\r\nLimpieza. Crecí en una familia en donde la limpieza es vital, cuando era pequeño mi mamá no me dejaba jugar en la tierra o en la calle para no ensuciarme, siempre andaba detrás de mi con un pañuelo húmedo. Mi cuarto y los departamentos donde he vivido siempre están limpios, si no me creen pregunten a mis ex compañeros de departamento. Pero cuando las cosas no están dentro de mi control, como lo sería en una habitación de hotel, la verdad es que soy bastante relajado y no me afecta. Tampoco me he hospedado en lugares en donde las cucarachas merodeen por todos lados, aunque una vez amaneció un grillo muerto en mi cama y eso que era un hotel de cadena reconocida, el punto es que en muchos países la limpieza quizás no es uno de sus fuertes e inclusive en hoteles de categoría media o ejecutivos habrá cosas que no estén a la altura de lo que estás acostumbrado en casa pero eso no quiere decir que no puedas tolerar un par de noches. ¿querías ahorra dinero no? Siempre hay un sacrificio.\r\nDesayuno. Aquí depende de muchos factores a considerar si es que buscas una habitación con desayuno incluido o no. El primero es el país en donde vas a viajar, diferentes países, diferentes comidas y el desayuno es quizá la parte más contrastante de todas ellas. Como mexicano estamos acostumbrados a una mezcla de comida mexicana (chilaquiles, molletes, quesadillas, pozole, etc.,) con comida americana (huevos revueltos, salchichas, cereal, pancakes/hotcakes, etc.) para desayunar, entonces cuando llegas a China y te das cuenta que el desayuno Occidental no es algo que encontrarás en la calle o en los restaurantes y que tan sólo algunos hoteles lo tienen, quizás te convenga si no quieres desayunar comida china todos los días durante tu viaje (esto también es desgastante si no estás acostumbrado). El otro factor es el costo, si ya has viajado un poco por el país tendrás una pequeña noción de cuanto cuesta la comida y en ocasiones los hoteles abusan del desconocimiento de los turistas cargando un sobreprecio en las habitaciones que tienen desayuno incluido. Si ya sabes cuanto cuesta la comida y que otras opciones pudieras encontrar para desayunar, entonces fácilmente puedes omitirlo y ahorrar un poco. Por último, el desayuno es realmente una ruleta rusa. En ocasiones será bufete y otras tan sólo cereal, a veces te tocará un excelente desayuno a la carta y en otras preferirás omitirlo por que no tienes ni idea de que es. Aquí realmente es a tu gusto, si ya lo pagaste pero no te gusta, no tiene caso que lo comas.\r\nRestaurante. Si tu hotel está a las afueras, por que quisiste ahorrarte un poco de dinero, entonces al menos asegúrate que tenga un buen restaurante para cenar o comer. Hay lugares en los que viajarás en donde el mejor restaurante de esa ciudad es el del hotel, en ciudades grandes no le presto mucha atención a este tema. Pero siempre hay que tenerlo a consideración.\r\nWi-Fi Gratis. Mi trabajo requiere que tenga una conexión a internet constante y si un hotel piensa cobrarme la mitad de una noche de hospedaje por 24 horas de internet inalámbrico, inmediatamente ese es un NO. En Europa es común que los hoteles/hostales cobren por el uso del internet, pero en lo personal siempre he preferido pagar un poco más o buscar otro hotel si eso me asegura que voy a tener una conexión constante en mi computadora y celular. Si tan sólo piensas usar el internet para revisar mails y mandar saludos, puedes omitir este punto.\r\nTamaño de la habitación. Son contadas las ocasiones en donde un hotel barato se traduce en una habitación grande, podrá tener una limpieza excepcional, un desayuno increíble, estar en una zona inmejorable pero lo más probable es que si está barato es por que tu habitación va a ser pequeña, muy pequeña.\r\nTrato del personal. Hay hoteles en donde jamás te dirán por favor, gracias o te indicarán donde está el elevador. Para muchas personas esto juega un papel decisivo en si hospedarse ahí o no, en lo personal me da igual.\r\nA grandes rasgos estos son los factores a considerar para encontrar un hotel barato, pero bueno, entonces ahora estarás pensando: “Ya entendí, pero ¿cómo sé si tiene o no tiene esos factores?”\r\n\r\nSencillo, la mejor forma de encontrar un un buen hotel lees las reseñas de otros viajeros.\r\nLa mayoría de mis reservas las hago a través de: Booking.com o Hostelworld.com, siempre intento reservar habitaciones privadas a menos de que la ciudad donde vaya a estar sea realmente cara y la única opción sea compartirla. Pero si ese no es el caso, entonces habitación sola para mi.\r\n\r\nInicio haciendo una búsqueda rápida en Hostelworld, a pesar de que son hostales en ocasiones podrás rentar habitaciones privadas por una fracción del costo de un hotel normal.\r\n\r\nReviso las opciones de hoteles que hay y si tienen o no habitaciones privadas. El precio que te darán normalmente es para una sola persona y si quieres tener la habitación para ti sólo tendrás que pagar la parte de las otras personas, es decir, si la habitación es para 2, aunque viajes sólo el precio que te pondrán es de una persona y terminarás pagando la de 2 personas. Esta nota es tan sólo para que sepas como funciona Hostelworld.\r\n\r\nSi encuentro algo que parece razonable, inmediatamente leo las reseñas.\r\n\r\nSi pienso hacer mi reserva por internet, entonces JAMÁS, pero JAMÁS me hospedo en un hotel/hostal si no tiene reseñas de otros viajeros. Si pienso buscar y reservar un hotel el mismo día que llego a la ciudad, entonces siempre pido que me muestren la habitación antes de aceptar.\r\n\r\nCuando te muestren la habitación lo primero que debes de revisar es el baño, el agua caliente y el aire acondicionado, pregunta como funciona el agua caliente y si está disponible a todas horas. En algunos lugares tan sólo hay agua caliente en la mañana y en otros tendrás que prender el calentador de agua para usarla.', 'post_1619008707.jpg', NULL, 0, 2, '2021-04-21 17:38:27', '2021-04-21 17:38:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-03-27 03:58:02', '2021-03-27 03:58:02'),
(2, 'empresa', 'web', '2021-03-27 03:58:02', '2021-03-27 03:58:02'),
(3, 'cliente', 'web', '2021-03-27 03:58:02', '2021-03-27 03:58:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(67) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'foto.jpg',
  `visitas` int(11) NOT NULL DEFAULT 0,
  `orden` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`id`, `slug`, `title`, `description`, `nombre`, `descripcion`, `urlfoto`, `visitas`, `orden`) VALUES
(1, 'ruta-norte', 'Ruta Norte de Arequipa', 'Ruta Norte de Arequipa Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aliquam officiis et sed perferendis expedita deleniti tempora aliquid, fac', 'Ruta Norte', '<p>Ruta Norte de Arequipa Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aliquam officiis et sed perferendis expedita deleniti tempora aliquid, facere, tempore odio ad quae repellat vero possimus tenetur mollitia architecto natus illo! Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aliquam officiis et sed perferendis expedita deleniti tempora aliquid, facere, tempore odio ad quae repellat vero possimus tenetur mollitia architecto natus illo!Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aliquam officiis et sed perferendis expedita deleniti tempora aliquid, facere, tempore odio ad quae repellat vero possimus tenetur mollitia architecto natus illo!Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aliquam officiis et sed perferendis expedita deleniti tempora aliquid, facere, tempore odio ad quae repellat vero possimus</p>\r\n\r\n<p>tenetur mollitia architecto natus illo!Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aliquam officiis et sed perferendis expedita deleniti tempora aliquid, facere, tempore odio ad quae repellat vero possimus tenetur mollitia architecto natus illo!Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aliquam officiis et sed perferendis expedita deleniti tempora aliquid, facere, tempore odio ad quae repellat vero possimus tenetur mollitia architecto natus illo!Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aliquam officiis et sed perferendis expedita deleniti tempora aliquid, facere, tempore odio ad quae repellat vero possimus tenetur mollitia architecto natus illo!</p>', 'ruta_1616802531.jpg', 7, 1),
(2, 'ruta-centro', 'Ruta Centro de Arequipa', 'Ruta Centro de Arequipa', 'Ruta Centro', 'Ruta Centro de Arequipa', 'ruta_1616802715.jpg', 1, 2),
(3, 'ruta-sur', 'Ruta Sur de Arequipa', 'Ruta Sur de Arequipa', 'Ruta Sur', 'Ruta Sur de Arequipa', 'ruta_1616802657.jpg', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `activo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'admin@gmail.com', NULL, '$2y$10$LmIHCQ4s4Fsq.8Sd2M.PdegFj5Ua9n2Z4KlvX0GbdMP3syarlZIv6', 0, NULL, '2021-03-27 04:00:08', '2021-03-27 04:00:08'),
(2, 'Empresa', 'empresa@gmail.com', NULL, '$2y$10$/B46RFLOng0jLxne0pTc2.t8vmlN1Z4afKcaT8a2AuIhQIgDQryp.', 0, NULL, '2021-03-28 18:07:45', '2021-03-28 18:07:45'),
(3, 'juan', 'juan@gmail.com', NULL, '$2y$10$Zpz10jOU8dOxWw/zYPdliOzB7Fk2pOZyFG9Tq1mZMOZKoDxEW/Qnu', 0, NULL, '2021-04-11 20:16:55', '2021-04-11 20:16:55'),
(7, 'luis', 'luis@correo.com', NULL, '$2y$10$lObT90pWrwxKi/dAx8O92uIQgJdV1WtEGk.b2jKZ1L4nQz9FOecGu', 0, NULL, '2021-04-20 18:26:43', '2021-04-20 18:26:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `empresas_razonsocial_unique` (`razonsocial`),
  ADD UNIQUE KEY `empresas_slug_unique` (`slug`),
  ADD KEY `empresas_ruta_id_foreign` (`ruta_id`),
  ADD KEY `empresas_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fotos_nombre_unique` (`nombre`),
  ADD KEY `fotos_lugar_id_foreign` (`lugar_id`);

--
-- Indices de la tabla `lugars`
--
ALTER TABLE `lugars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lugars_slug_unique` (`slug`),
  ADD UNIQUE KEY `lugars_nombre_unique` (`nombre`),
  ADD KEY `lugars_ruta_id_foreign` (`ruta_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD UNIQUE KEY `posts_nombre_unique` (`nombre`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rutas_slug_unique` (`slug`),
  ADD UNIQUE KEY `rutas_nombre_unique` (`nombre`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lugars`
--
ALTER TABLE `lugars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_ruta_id_foreign` FOREIGN KEY (`ruta_id`) REFERENCES `rutas` (`id`),
  ADD CONSTRAINT `empresas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_lugar_id_foreign` FOREIGN KEY (`lugar_id`) REFERENCES `lugars` (`id`);

--
-- Filtros para la tabla `lugars`
--
ALTER TABLE `lugars`
  ADD CONSTRAINT `lugars_ruta_id_foreign` FOREIGN KEY (`ruta_id`) REFERENCES `rutas` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
