-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-11-2020 a las 23:48:30
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `llama_bus`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientos`
--

CREATE TABLE `asientos` (
  `asiento_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `nom_asiento` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 es disponible, 0 es que esta ocupado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asientos`
--

INSERT INTO `asientos` (`asiento_id`, `bus_id`, `clase_id`, `nom_asiento`, `estado`) VALUES
(1, 1, 1, 1, 0),
(2, 1, 1, 2, 0),
(3, 1, 1, 3, 0),
(4, 1, 1, 4, 0),
(5, 1, 1, 5, 0),
(6, 1, 1, 6, 0),
(7, 1, 1, 7, 0),
(8, 1, 1, 8, 0),
(9, 1, 1, 9, 0),
(10, 1, 1, 10, 0),
(11, 1, 1, 11, 0),
(12, 1, 1, 12, 0),
(13, 1, 1, 13, 0),
(14, 1, 1, 14, 0),
(15, 1, 1, 15, 0),
(16, 1, 1, 16, 0),
(17, 1, 1, 17, 0),
(18, 1, 1, 18, 0),
(19, 1, 1, 19, 0),
(20, 1, 1, 20, 0),
(21, 1, 2, 21, 0),
(22, 1, 2, 22, 0),
(23, 1, 2, 23, 0),
(24, 1, 2, 24, 0),
(25, 1, 2, 25, 0),
(26, 1, 2, 26, 0),
(27, 1, 2, 27, 0),
(28, 1, 2, 28, 0),
(29, 1, 2, 29, 0),
(30, 1, 2, 30, 0),
(31, 1, 2, 31, 0),
(32, 1, 2, 32, 0),
(33, 1, 2, 33, 0),
(34, 1, 2, 34, 0),
(35, 1, 2, 35, 0),
(36, 1, 2, 36, 0),
(37, 1, 2, 37, 0),
(38, 1, 2, 38, 0),
(39, 1, 2, 39, 0),
(40, 1, 2, 40, 0),
(41, 2, 1, 1, 1),
(42, 2, 1, 2, 1),
(43, 2, 1, 3, 1),
(44, 2, 1, 4, 1),
(45, 2, 1, 5, 1),
(46, 2, 1, 6, 1),
(47, 2, 1, 7, 1),
(48, 2, 1, 8, 1),
(49, 2, 1, 9, 1),
(50, 2, 1, 10, 1),
(51, 2, 1, 11, 1),
(52, 2, 1, 12, 1),
(53, 2, 1, 13, 1),
(54, 2, 1, 14, 1),
(55, 2, 1, 15, 1),
(56, 2, 1, 16, 1),
(57, 2, 1, 17, 1),
(58, 2, 1, 18, 1),
(59, 2, 1, 19, 1),
(60, 2, 1, 20, 1),
(61, 2, 2, 21, 1),
(62, 2, 2, 22, 1),
(63, 2, 2, 23, 1),
(64, 2, 2, 24, 1),
(65, 2, 2, 25, 1),
(66, 2, 2, 26, 1),
(67, 2, 2, 27, 1),
(68, 2, 2, 28, 1),
(69, 2, 2, 29, 1),
(70, 2, 2, 30, 1),
(71, 2, 2, 31, 1),
(72, 2, 2, 32, 1),
(73, 2, 2, 33, 1),
(74, 2, 2, 34, 1),
(75, 2, 2, 35, 1),
(76, 2, 2, 36, 1),
(77, 2, 2, 37, 1),
(78, 2, 2, 38, 1),
(79, 2, 2, 39, 1),
(80, 2, 2, 40, 1),
(81, 3, 1, 1, 1),
(82, 3, 1, 2, 1),
(83, 3, 1, 3, 1),
(84, 3, 1, 4, 1),
(85, 3, 1, 5, 1),
(86, 3, 1, 6, 1),
(87, 3, 1, 7, 1),
(88, 3, 1, 8, 1),
(89, 3, 1, 9, 1),
(90, 3, 1, 10, 1),
(91, 3, 1, 11, 1),
(92, 3, 1, 12, 1),
(93, 3, 1, 13, 1),
(94, 3, 1, 14, 1),
(95, 3, 1, 15, 1),
(96, 3, 1, 16, 1),
(97, 3, 1, 17, 1),
(98, 3, 1, 18, 1),
(99, 3, 1, 19, 1),
(100, 3, 1, 20, 1),
(101, 3, 2, 21, 1),
(102, 3, 2, 22, 1),
(103, 3, 2, 23, 1),
(104, 3, 2, 24, 1),
(105, 3, 2, 25, 1),
(106, 3, 2, 26, 1),
(107, 3, 2, 27, 1),
(108, 3, 2, 28, 1),
(109, 3, 2, 29, 1),
(110, 3, 2, 30, 1),
(111, 3, 2, 31, 1),
(112, 3, 2, 32, 1),
(113, 3, 2, 33, 1),
(114, 3, 2, 34, 1),
(115, 3, 2, 35, 1),
(116, 3, 2, 36, 1),
(117, 3, 2, 37, 1),
(118, 3, 2, 38, 1),
(119, 3, 2, 39, 1),
(120, 3, 2, 40, 1),
(121, 4, 1, 1, 1),
(122, 4, 1, 2, 1),
(123, 4, 1, 3, 1),
(124, 4, 1, 4, 1),
(125, 4, 1, 5, 1),
(126, 4, 1, 6, 1),
(127, 4, 1, 7, 1),
(128, 4, 1, 8, 1),
(129, 4, 1, 9, 1),
(130, 4, 1, 10, 1),
(131, 4, 1, 11, 1),
(132, 4, 1, 12, 1),
(133, 4, 1, 13, 1),
(134, 4, 1, 14, 1),
(135, 4, 1, 15, 1),
(136, 4, 1, 16, 1),
(137, 4, 1, 17, 1),
(138, 4, 1, 18, 1),
(139, 4, 1, 19, 1),
(140, 4, 1, 20, 1),
(141, 4, 2, 21, 1),
(142, 4, 2, 22, 1),
(143, 4, 2, 23, 1),
(144, 4, 2, 24, 1),
(145, 4, 2, 25, 1),
(146, 4, 2, 26, 1),
(147, 4, 2, 27, 1),
(148, 4, 2, 28, 1),
(149, 4, 2, 29, 1),
(150, 4, 2, 30, 1),
(151, 4, 2, 31, 1),
(152, 4, 2, 32, 1),
(153, 4, 2, 33, 1),
(154, 4, 2, 34, 1),
(155, 4, 2, 35, 1),
(156, 4, 2, 36, 1),
(157, 4, 2, 37, 1),
(158, 4, 2, 38, 1),
(159, 4, 2, 39, 1),
(160, 4, 2, 40, 1),
(161, 5, 1, 1, 1),
(162, 5, 1, 2, 1),
(163, 5, 1, 3, 1),
(164, 5, 1, 4, 1),
(165, 5, 1, 5, 1),
(166, 5, 1, 6, 1),
(167, 5, 1, 7, 1),
(168, 5, 1, 8, 1),
(169, 5, 1, 9, 1),
(170, 5, 1, 10, 1),
(171, 5, 1, 11, 1),
(172, 5, 1, 12, 1),
(173, 5, 1, 13, 1),
(174, 5, 1, 14, 1),
(175, 5, 1, 15, 1),
(176, 5, 1, 16, 1),
(177, 5, 1, 17, 1),
(178, 5, 1, 18, 1),
(179, 5, 1, 19, 1),
(180, 5, 1, 20, 1),
(181, 5, 2, 21, 1),
(182, 5, 2, 22, 1),
(183, 5, 2, 23, 1),
(184, 5, 2, 24, 1),
(185, 5, 2, 25, 1),
(186, 5, 2, 26, 1),
(187, 5, 2, 27, 1),
(188, 5, 2, 28, 1),
(189, 5, 2, 29, 1),
(190, 5, 2, 30, 1),
(191, 5, 2, 31, 1),
(192, 5, 2, 32, 1),
(193, 5, 2, 33, 1),
(194, 5, 2, 34, 1),
(195, 5, 2, 35, 1),
(196, 5, 2, 36, 1),
(197, 5, 2, 37, 1),
(198, 5, 2, 38, 1),
(199, 5, 2, 39, 1),
(200, 5, 2, 40, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atenciones`
--

CREATE TABLE `atenciones` (
  `atencion_id` int(11) NOT NULL,
  `cuenta_id` int(11) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buses`
--

CREATE TABLE `buses` (
  `bus_id` int(11) NOT NULL,
  `matricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `buses`
--

INSERT INTO `buses` (`bus_id`, `matricula`) VALUES
(1, 4888),
(2, 4889),
(3, 4890),
(4, 4891),
(5, 4892);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `clase_id` int(11) NOT NULL,
  `nom_clase` varchar(20) NOT NULL,
  `costo_clase` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`clase_id`, `nom_clase`, `costo_clase`) VALUES
(1, 'vip', '25.50'),
(2, 'economico', '15.50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobantes`
--

CREATE TABLE `comprobantes` (
  `comprobante_id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  `cuenta_id` int(11) NOT NULL,
  `itinerario_id` int(11) NOT NULL,
  `asiento_id` int(11) NOT NULL,
  `monto` decimal(5,2) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 es pagado, 0 es que esta pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `comprobantes`
--

INSERT INTO `comprobantes` (`comprobante_id`, `persona_id`, `cuenta_id`, `itinerario_id`, `asiento_id`, `monto`, `estado`) VALUES
(1, 1, 1, 1, 1, '86.00', 1),
(2, 2, 2, 1, 2, '86.00', 1),
(3, 3, 3, 1, 3, '86.00', 1),
(4, 4, 4, 1, 4, '86.00', 1),
(5, 5, 5, 1, 5, '86.00', 1),
(6, 6, 6, 1, 6, '86.00', 1),
(7, 7, 7, 1, 7, '86.00', 1),
(8, 8, 8, 1, 8, '86.00', 1),
(9, 9, 9, 1, 9, '86.00', 1),
(10, 10, 10, 1, 10, '86.00', 1),
(11, 11, 11, 1, 11, '86.00', 1),
(12, 12, 12, 1, 12, '86.00', 1),
(13, 13, 13, 1, 13, '86.00', 1),
(14, 14, 14, 1, 14, '86.00', 1),
(15, 15, 15, 1, 15, '86.00', 1),
(16, 16, 16, 1, 16, '86.00', 1),
(17, 17, 17, 1, 17, '86.00', 1),
(18, 18, 18, 1, 18, '86.00', 1),
(19, 19, 19, 1, 19, '86.00', 1),
(20, 20, 20, 1, 20, '86.00', 1),
(21, 21, 21, 1, 21, '96.00', 1),
(22, 22, 22, 1, 22, '96.00', 1),
(23, 23, 23, 1, 23, '96.00', 1),
(24, 24, 24, 1, 24, '96.00', 1),
(25, 25, 25, 1, 25, '96.00', 1),
(26, 26, 26, 1, 26, '96.00', 1),
(27, 27, 27, 1, 27, '96.00', 1),
(28, 28, 28, 1, 28, '96.00', 1),
(29, 29, 29, 1, 29, '96.00', 1),
(30, 30, 30, 1, 30, '96.00', 1),
(31, 31, 31, 1, 31, '96.00', 1),
(32, 32, 32, 1, 32, '96.00', 1),
(33, 33, 33, 1, 33, '96.00', 1),
(34, 34, 34, 1, 34, '96.00', 1),
(35, 35, 35, 1, 35, '96.00', 1),
(36, 36, 36, 1, 36, '96.00', 1),
(37, 37, 37, 1, 37, '96.00', 1),
(38, 38, 38, 1, 38, '96.00', 1),
(39, 39, 39, 1, 39, '96.00', 1),
(40, 40, 40, 1, 40, '96.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `cuenta_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL DEFAULT '1',
  `usuario` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`cuenta_id`, `rol_id`, `usuario`, `contraseña`, `email`) VALUES
(1, 1, 'cmateo0', 'yVL3RZe', 'melverston0@pagesperso-orange.fr'),
(2, 1, 'tfilippone1', 'v2BFG1mJ4b7L', 'mdomenget1@wisc.edu'),
(3, 1, 'zbrikner2', 'stIl3etDe0F', 'dbendtsen2@flickr.com'),
(4, 1, 'amckeefry3', 'vmhJn9P', 'dlivens3@taobao.com'),
(5, 1, 'jfranek4', 'FYmmNb', 'nthorn4@ebay.com'),
(6, 1, 'awisden5', 'ZIsgxXxDAFW', 'mamthor5@unesco.org'),
(7, 1, 'mvickerman6', '9qDgEFcnK', 'awybern6@google.it'),
(8, 1, 'slyard7', 'C4R8ho', 'rhearson7@soup.io'),
(9, 1, 'ccarberry8', 'NoitTe', 'afabry8@bloglovin.com'),
(10, 1, 'cjephcott9', 'VuhRlT', 'alindenfeld9@smugmug.com'),
(11, 1, 'espurritta', 'kes6B771', 'jwelfaira@prlog.org'),
(12, 1, 'dtrinemanb', 'o2UqfPWbBH', 'lrobertetb@va.gov'),
(13, 1, 'epienc', 'ICqnEphoG0', 'lcoleshillc@yolasite.com'),
(14, 1, 'ewollersd', 'V30kNzI', 'amaciad@telegraph.co.uk'),
(15, 1, 'kwidockse', 'hEY1oFqIv', 'dpaschoe@goo.ne.jp'),
(16, 1, 'tgibbettsf', 'MaSkXevp19', 'zelsmorf@mozilla.com'),
(17, 1, 'lwillmerg', '8Cutnm5Oh', 'nmartig@mayoclinic.com'),
(18, 1, 'sduggaryh', '1OsNgfsEK0w', 'efrunksh@virginia.edu'),
(19, 1, 'sbowshirei', 'N8N2z9Elhj1t', 'kbeadelli@elpais.com'),
(20, 1, 'chousinj', 'LetNQCeKE5ZP', 'pliveingj@hc360.com'),
(21, 1, 'lcatlingk', 'EmeN7XWINQ', 'fbrunelk@mysql.com'),
(22, 1, 'binglestonl', 'teGzmUk', 'mmacparlanl@google.co.uk'),
(23, 1, 'fsellm', 'u0m90e', 'sticehurstm@weebly.com'),
(24, 1, 'dwordingtonn', 'uI4JZW', 'hburnsidesn@noaa.gov'),
(25, 1, 'sgeorgiadeso', 'UQxt4iH', 'ccaveneyo@sciencedaily.com'),
(26, 1, 'eclowleyp', 'FM54zSESu5L', 'cquantrellp@senate.gov'),
(27, 1, 'lmothq', 'CmCE1RdK', 'jgiraudatq@webs.com'),
(28, 1, 'jschankelr', '0qPKxCTfB4', 'fgallantr@intel.com'),
(29, 1, 'hivanyushkins', 'F5BjvO7vXTj', 'bwellwoods@canalblog.com'),
(30, 1, 'wconet', 'TqRDqyL', 'tkaufmant@canalblog.com'),
(31, 1, 'tpraundlinu', 'H1qCpiJfYFWx', 'jcornhillu@oaic.gov.au'),
(32, 1, 'icaldicottv', '5BX5enVo6', 'fhornigv@alibaba.com'),
(33, 1, 'kslatefordw', 'uwLQFQhkcs', 'iskitteralw@narod.ru'),
(34, 1, 'dcornellx', 'JspisROwswI', 'kwendoverx@ycombinator.com'),
(35, 1, 'slanfranchiy', 'gzzjv5w9', 'blorentzeny@shutterfly.com'),
(36, 1, 'bjavesz', 'OIycbjBooG', 'adockerz@netscape.com'),
(37, 1, 'cbenck10', 'gyXI2RYR', 'araynor10@friendfeed.com'),
(38, 1, 'fpurveys11', 'tr4NQuI', 'bstratton11@nhs.uk'),
(39, 1, 'dclerke12', 'KILpsh5Ezim', 'sreburn12@alexa.com'),
(40, 1, 'gcrofthwaite13', 'IaDkpZBq87', 'sdriuzzi13@yahoo.com'),
(41, 1, 'rgunthorpe14', 'o66jzk', 'galcott14@chron.com'),
(42, 1, 'akarppi15', 'NeUz76202', 'bterbeek15@shop-pro.jp'),
(43, 1, 'mmogford16', 'HIQY2AG', 'sbagley16@behance.net'),
(44, 1, 'icrichley17', 'neRMYYetNaqN', 'rmusselwhite17@ow.ly'),
(45, 1, 'bogden18', 'R315LBxObTu', 'atolcharde18@mapy.cz'),
(46, 1, 'jbyer19', 'tnXtKD68p', 'glaverock19@ifeng.com'),
(47, 1, 'kstolberger1a', 'pjIWaIqH219', 'ksargood1a@zimbio.com'),
(48, 1, 'pbassingden1b', '2OnEzBV', 'hkleinsinger1b@wsj.com'),
(49, 1, 'rplak1c', 'pJ8Ezs', 'bnotman1c@seattletimes.com'),
(50, 1, 'vchesterton1d', 'K8llc4sw0', 'wmarte1d@illinois.edu'),
(51, 1, 'fspira1e', 'BQcQnw', 'sstummeyer1e@tuttocitta.it'),
(52, 1, 'gcrotty1f', '940B69aAG', 'jhedderly1f@bandcamp.com'),
(53, 1, 'dduplain1g', 'Cid9IaR', 'abertl1g@auda.org.au'),
(54, 1, 'kmelland1h', 'sqQ8x08Tw', 'gmcsaul1h@scientificamerican.com'),
(55, 1, 'kfireman1i', 'M9GiIic', 'jdenisot1i@vistaprint.com'),
(56, 1, 'ahaquin1j', 'ER4h2oc5', 'fballham1j@sciencedirect.com'),
(57, 1, 'oskitterel1k', 'BTC446TR', 'ljoan1k@msn.com'),
(58, 1, 'bmcasparan1l', 'TRbMGKnKP', 'mgoldsbrough1l@wikia.com'),
(59, 1, 'agarvin1m', '36n9DCBIdxv', 'sstocking1m@msu.edu'),
(60, 1, 'bgiron1n', '6P8lAcgPUz', 'rbritten1n@wired.com'),
(61, 1, 'ldobbie1o', 'tO5cJf', 'freedick1o@scientificamerican.com'),
(62, 1, 'bpykerman1p', 'XWmRsE', 'jelfleet1p@weebly.com'),
(63, 1, 'hdobbyn1q', 'PUwUgVLS', 'pdibb1q@washington.edu'),
(64, 1, 'kham1r', 'tnU6wa9u12F', 'charring1r@nymag.com'),
(65, 1, 'mpeascod1s', 'ye6tZZWMbla', 'lthecham1s@google.ru'),
(66, 1, 'hthomesson1t', 'XoAJUUWOK', 'astolte1t@imageshack.us'),
(67, 1, 'ejonas1u', 'LwTiN1CRmJ', 'iolagene1u@va.gov'),
(68, 1, 'vtaylor1v', 'AhC8KUe5OC1', 'lrye1v@china.com.cn'),
(69, 1, 'nricardon1w', 'I3HLDEAKdfnr', 'gjewel1w@prweb.com'),
(70, 1, 'cprawle1x', '1HQ1QiOOrQi', 'kmordaunt1x@va.gov'),
(71, 1, 'fmckean1y', '1JpfZeX3eO', 'atroni1y@rediff.com'),
(72, 1, 'rcumberledge1z', 'xX8jtStv3', 'mjaffa1z@slideshare.net'),
(73, 1, 'bsole20', 'HwLbAKjWqhE', 'nbattelle20@ustream.tv'),
(74, 1, 'hmanion21', 'w7XHAb', 'ecatherall21@java.com'),
(75, 1, 'karntzen22', '6DPJyGO0QRj', 'sbrightling22@amazonaws.com'),
(76, 1, 'mblakeney23', 'H1hjoeH', 'kmcguinness23@angelfire.com'),
(77, 1, 'asummerfield24', 'yQAO5nowyByx', 'rstrafen24@list-manage.com'),
(78, 1, 'featock25', 'L8qlrrti8BGt', 'rpattinson25@free.fr'),
(79, 1, 'hshearmur26', 'TT0iDM0V8M', 'cwoodhams26@simplemachines.org'),
(80, 1, 'ebache27', 'DRGlC9a', 'mdelboux27@com.com'),
(81, 1, 'gdumphrey28', 'CySLcOBNKHK', 'gfeldfisher28@bravesites.com'),
(82, 1, 'bgeipel29', 'KSZfLefqNupz', 'wlocket29@virginia.edu'),
(83, 1, 'sdobeson2a', 'qrzhxMs', 'mlilbourne2a@bravesites.com'),
(84, 1, 'mheephy2b', 'UV17YR7wIYXw', 'labbie2b@github.com'),
(85, 1, 'pellicott2c', 'pCNiYabO9WM', 'ibasset2c@google.co.uk'),
(86, 1, 'tpoxton2d', 'rKQIuQuxVA2', 'adimatteo2d@1688.com'),
(87, 1, 'rmackeague2e', 'RUqvxiXs', 'rruggs2e@arstechnica.com'),
(88, 1, 'mboothe2f', 'N8IeiFP0c', 'ckeattch2f@exblog.jp'),
(89, 1, 'dnorval2g', 'Mwzv7Jev5I', 'ylombardo2g@ox.ac.uk'),
(90, 1, 'lflukes2h', 'YTBbBMl2vZUx', 'hmarsden2h@google.it'),
(91, 1, 'spickle2i', 'LO1aBn', 'csobieski2i@sun.com'),
(92, 1, 'tbayne2j', 'NJEmH7n1', 'mwiltshire2j@skype.com'),
(93, 1, 'nmarvel2k', 'eBfmjx', 'mspikings2k@squarespace.com'),
(94, 1, 'tcameron2l', 'Yhqv45kX', 'bpellamont2l@plala.or.jp'),
(95, 1, 'dfeild2m', 'vjyMzob', 'mville2m@squarespace.com'),
(96, 1, 'hgroombridge2n', 'BK28KEb1Ds', 'wspadari2n@lycos.com'),
(97, 1, 'pmilan2o', 'BoQbh7', 'jcoase2o@un.org'),
(98, 1, 'bolkowicz2p', 'aKyKd4wRh5', 'ezute2p@baidu.com'),
(99, 1, 'tpetrushkevich2q', 'FihFDAhv5u95', 'dpagett2q@google.co.jp'),
(100, 1, 'gstrewther2r', '122sc19By', 'selsby2r@alexa.com'),
(101, 1, 'tcianni2s', '7hYOEafh', 'hgallemore2s@boston.com'),
(102, 1, 'zforman2t', 'ImgeCgI', 'darundel2t@alibaba.com'),
(103, 1, 'kmarvin2u', 'u0Ytxj4j', 'khaglinton2u@wisc.edu'),
(104, 1, 'nrolfe2v', '35GZIj', 'jalliot2v@amazon.co.jp'),
(105, 1, 'rritmeyer2w', '2fouvhy5zxK', 'gchung2w@over-blog.com'),
(106, 1, 'eeatock2x', 'JK8l63Q', 'asheldrick2x@house.gov'),
(107, 1, 'jcastanares2y', 'Ug9WJz', 'sluckwell2y@people.com.cn'),
(108, 1, 'bradcliffe2z', 'dqUm4CUT', 'dnewham2z@issuu.com'),
(109, 1, 'fgrayson30', 'VYOig4w6EHp', 'cbusse30@cnet.com'),
(110, 1, 'pcahillane31', 'pZXcu3iuzKnU', 'bmccard31@ox.ac.uk'),
(111, 1, 'slimrick32', 'j0bSemY6KSgG', 'ttattoo32@oaic.gov.au'),
(112, 1, 'mmcvicar33', 'qTzzpgcrHw', 'isarath33@theguardian.com'),
(113, 1, 'lgriffithe34', 'GnE7GC9', 'esprake34@examiner.com'),
(114, 1, 'rfrench35', 'qQTmumO9', 'wjenks35@comsenz.com'),
(115, 1, 'jpartleton36', 'y6TIlYGTnj', 'dslaughter36@ft.com'),
(116, 1, 'lduchant37', 'aVyXu2lh6', 'tsoppit37@google.fr'),
(117, 1, 'jleupold38', 'LxbM2EGKEog0', 'elambshine38@a8.net'),
(118, 1, 'kfenix39', 'IiFzx08omN', 'tgammell39@sciencedirect.com'),
(119, 1, 'bgibberd3a', 'iqP1Y2U', 'mmcgeachy3a@wsj.com'),
(120, 1, 'wcristofori3b', 'YO3ZWY4M8', 'fcordes3b@guardian.co.uk'),
(121, 1, 'delijahu3c', 'k76DWJpaZMb', 'gnewick3c@google.pl'),
(122, 1, 'rtinston3d', 'GStHer', 'kbattany3d@instagram.com'),
(123, 1, 'nhalworth3e', 'S2FU33IT', 'folenechan3e@blogger.com'),
(124, 1, 'tosselton3f', 'BEf458', 'wblaxton3f@fotki.com'),
(125, 1, 'jcurcher3g', 'G8MFJBKP', 'rstell3g@blinklist.com'),
(126, 1, 'ycoles3h', 'vfDW6seM', 'rjudson3h@cyberchimps.com'),
(127, 1, 'kkimm3i', '9j5NA8', 'remmens3i@arizona.edu'),
(128, 1, 'aolynn3j', 'bGHRFumxJne', 'cmcilwrick3j@imgur.com'),
(129, 1, 'uhumphrey3k', 'q9hETo1ZQ9', 'dstarcks3k@digg.com'),
(130, 1, 'rscheffel3l', 'aAgkPj5qgs', 'rfendlen3l@cdbaby.com'),
(131, 1, 'mcraighead3m', 'maWlYE79n', 'rmachon3m@upenn.edu'),
(132, 1, 'dpaaso3n', 'ev6krEqmCdM', 'hwickardt3n@over-blog.com'),
(133, 1, 'tmix3o', 'tHYPetrRA4A', 'kdonisi3o@infoseek.co.jp'),
(134, 1, 'hklarzynski3p', 'WnKBtSKEqbT', 'sserraillier3p@skyrock.com'),
(135, 1, 'arooper3q', 'ydBCrQDZU8', 'lclayborn3q@sitemeter.com'),
(136, 1, 'dlayne3r', 'eQQpdK', 'kbraddick3r@xing.com'),
(137, 1, 'bwhitland3s', '64aJbcH6EMZ', 'slouisot3s@yale.edu'),
(138, 1, 'rputley3t', 'SFhBouJ', 'esandyfirth3t@g.co'),
(139, 1, 'acushion3u', 'K2Nk5Ikj0f', 'iallibone3u@dell.com'),
(140, 1, 'rashmole3v', 'pTFhU1', 'poguz3v@spotify.com'),
(141, 1, 'mdenniss3w', 'YBZ1CAVO', 'dskarman3w@ebay.co.uk'),
(142, 1, 'bmaginot3x', 'vsIl9zA8tqG', 'mthews3x@baidu.com'),
(143, 1, 'hchisholm3y', 'IBSIVSymuqpr', 'aattiwill3y@sogou.com'),
(144, 1, 'nfewster3z', 'E5SPn4NHM3l', 'nweatherdon3z@purevolume.com'),
(145, 1, 'asydes40', '4YgQEtRJUr', 'drimington40@sciencedirect.com'),
(146, 1, 'babeles41', 'NrlHQHOG', 'prazzell41@spotify.com'),
(147, 1, 'rdavidovic42', 'soHSHkGzB9iN', 'gglauber42@washington.edu'),
(148, 1, 'gburr43', 'lCceFqDjc', 'tbassano43@creativecommons.org'),
(149, 1, 'lfawcett44', 'bovPnLfQhYzf', 'drigate44@jimdo.com'),
(150, 1, 'pbrushfield45', 'ZeWeirxqt', 'istorck45@ycombinator.com'),
(151, 1, 'nstopp46', 'H8kmZjL', 'hcast46@seattletimes.com'),
(152, 1, 'glamyman47', 'MRyvvqs85I0', 'sbrendeke47@shop-pro.jp'),
(153, 1, 'gslany48', 'QofXEftaWr', 'dtrowill48@patch.com'),
(154, 1, 'jwarkup49', '44zkBjIrnO', 'zskettles49@woothemes.com'),
(155, 1, 'rroyste4a', '3LWqUgMniwG', 'aoseman4a@is.gd'),
(156, 1, 'alamdin4b', 'jT9kmz0hap', 'lmccreery4b@census.gov'),
(157, 1, 'brobjohns4c', 'F5ywBbCTuG', 'haskey4c@photobucket.com'),
(158, 1, 'vkirstein4d', 'krP3zRrgvD', 'tzannelli4d@archive.org'),
(159, 1, 'wmcpeeters4e', 'WpRPEmi', 'kebbutt4e@booking.com'),
(160, 1, 'tcosin4f', 'RXhFrksH', 'sdeboo4f@jiathis.com'),
(161, 1, 'fisitt4g', '977rUu', 'dnovik4g@oaic.gov.au'),
(162, 1, 'hgiles4h', 'qi2Y6TJ', 'smaccoughen4h@reddit.com'),
(163, 1, 'cjahnel4i', 'aeqjJ8e', 'kpengelley4i@bigcartel.com'),
(164, 1, 'pcullerne4j', 'C7e6Muofr6DA', 'gbockmann4j@altervista.org'),
(165, 1, 'kworsfield4k', 'qrd76pzl24', 'iurpeth4k@jalbum.net'),
(166, 1, 'fludye4l', 'IDHhvnxuJlv0', 'econnar4l@mashable.com'),
(167, 1, 'cdurrad4m', 'AmgEFg', 'dthewles4m@cyberchimps.com'),
(168, 1, 'pfilippone4n', 'iphrZM', 'kparish4n@prlog.org'),
(169, 1, 'tlabastida4o', '6Bzvm6J', 'shatrey4o@51.la'),
(170, 1, 'rderisley4p', 'v4ocRY9E', 'tboliver4p@dropbox.com'),
(171, 1, 'ismorthit4q', 'DddpTQi', 'gmacnair4q@rediff.com'),
(172, 1, 'amargetts4r', 'faGMvlreBHxH', 'hmahmood4r@soundcloud.com'),
(173, 1, 'briddler4s', '3ODFoz88ge', 'fesgate4s@blogger.com'),
(174, 1, 'tdebney4t', 'W3B1obqHg', 'kthomasset4t@nature.com'),
(175, 1, 'ipollitt4u', 'JMQ6XYa', 'cquare4u@hhs.gov'),
(176, 1, 'mlugg4v', 'JW6194Ll7cr', 'shaggett4v@cbslocal.com'),
(177, 1, 'sdabney4w', 'MvuxyfTowv', 'gcarthew4w@indiatimes.com'),
(178, 1, 'prisebarer4x', 'KmWJUikq3O9', 'dusborn4x@phoca.cz'),
(179, 1, 'gheater4y', '3VRgOKIwjAK', 'ukinrade4y@princeton.edu'),
(180, 1, 'skopps4z', 'l0gYZ0w0', 'kvowells4z@opera.com'),
(181, 1, 'wperrington50', 'CZa8zom3Do', 'jskirling50@paginegialle.it'),
(182, 1, 'nblockey51', 'lwLmByVTVe', 'rpresslie51@google.ru'),
(183, 1, 'aharrower52', 'NF6hOBRuQXC', 'bdelafield52@jigsy.com'),
(184, 1, 'rheymann53', 'D0rf6GHlDxk7', 'dbackler53@aboutads.info'),
(185, 1, 'bdenajera54', 'K9makaocS0L', 'vcottem54@studiopress.com'),
(186, 1, 'sbecerra55', 'UY8Qhqx', 'depton55@mozilla.org'),
(187, 1, 'creedy56', 'hNrAqMO6d', 'maucutt56@hao123.com'),
(188, 1, 'gdumper57', '5mCnxOoSi', 'tmacfadden57@army.mil'),
(189, 1, 'lforrestill58', 'vffXiTESa', 'lduns58@unc.edu'),
(190, 1, 'gtunaclift59', '2ZvZox6oBc', 'ibasnall59@mayoclinic.com'),
(191, 1, 'gdiggins5a', 'bJNh3aqU8r7', 'fgutans5a@google.ca'),
(192, 1, 'ajaulme5b', 'NadYi2x', 'aklus5b@gizmodo.com'),
(193, 1, 'lfratczak5c', 'bvBDkXaH', 'nkobisch5c@umich.edu'),
(194, 1, 'rcammidge5d', 'VnYla3hjo', 'mdenington5d@baidu.com'),
(195, 1, 'rdavoren5e', 'kq9qp1p', 'nputtock5e@nymag.com'),
(196, 1, 'cyves5f', 'SB9vMPKvMG', 'pblaxter5f@berkeley.edu'),
(197, 1, 'mmallion5g', '4WTpDuf', 'hkalkhoven5g@privacy.gov.au'),
(198, 1, 'lmcdonand5h', '7yoFKcOn8', 'abrogini5h@omniture.com'),
(199, 1, 'mattestone5i', 'NJGKVs', 'aaronowicz5i@mashable.com'),
(200, 1, 'vpoyzer5j', 'IicEEwkUW', 'jpowelee5j@google.de'),
(201, 1, 'sgauge5k', 'TPECqM', 'kinnott5k@google.com.br'),
(202, 1, 'chuxtable5l', 'srJWjgIyBK', 'jkarpman5l@cmu.edu'),
(203, 1, 'npremble5m', 'kCImt4S0', 'lmcginnell5m@free.fr'),
(204, 1, 'langliss5n', 'q01EjZd', 'hpedley5n@imageshack.us'),
(205, 1, 'traden5o', 'mzeMd7', 'yconan5o@princeton.edu'),
(206, 1, 'mnewham5p', '1GPbafSnYR', 'teisikowitch5p@networkadvertising.org'),
(207, 1, 'vmaxsted5q', '71o72s', 'mdicarli5q@pcworld.com'),
(208, 1, 'pnettles5r', '2t0cb9JtkXrp', 'gree5r@hc360.com'),
(209, 1, 'ghaggar5s', 'KejayqRmBkS', 'wkayzer5s@chron.com'),
(210, 1, 'lgilbey5t', 'WXurpQd0OR', 'ciacabucci5t@tumblr.com'),
(211, 1, 'hschirach5u', 'j5CRUxN', 'lmotherwell5u@wisc.edu'),
(212, 1, 'aace5v', 'haxNQfvun', 'jchallender5v@walmart.com'),
(213, 1, 'dkachel5w', '06a69a0JOX', 'fschuck5w@ebay.co.uk'),
(214, 1, 'msheeres5x', 'hRrCf3d04IIX', 'ehaggerty5x@squarespace.com'),
(215, 1, 'rbiasotti5y', '3C7ZtpOckMTe', 'lclinkard5y@nyu.edu'),
(216, 1, 'nwhitcomb5z', 'twKg9KLzO1m', 'bcoolbear5z@goodreads.com'),
(217, 1, 'camoss60', 'gRF5te', 'mreynoldson60@pen.io'),
(218, 1, 'elamanby61', 'AhAhbJlQUBcF', 'kbedell61@bravesites.com'),
(219, 1, 'njaze62', 'HRxUrVFetR5u', 'ipichan62@buzzfeed.com'),
(220, 1, 'kmoodie63', 'vNRh224vn', 'eduddridge63@washingtonpost.com'),
(221, 1, 'jcoppins64', '9LYJdj1A', 'ltrelease64@ox.ac.uk'),
(222, 1, 'lstebbing65', 'UjSAXrvs9diI', 'mmalin65@meetup.com'),
(223, 1, 'lspargo66', 'lLIWtVo', 'bvotier66@sitemeter.com'),
(224, 1, 'jdaine67', 'RDzSHW8PqS', 'mhagard67@arizona.edu'),
(225, 1, 'etapin68', 'i9LAdcn', 'ecushelly68@ucoz.com'),
(226, 1, 'lsyder69', 'kWAXQ32DfM', 'vlamp69@google.co.jp'),
(227, 1, 'gfeatherstonhaugh6a', 'jVIYxLzDvp', 'jkinzel6a@nhs.uk'),
(228, 1, 'santoniutti6b', 'OfqL1fq0dYTR', 'bcomport6b@technorati.com'),
(229, 1, 'smakepeace6c', 'bHMdNI', 'hpieters6c@vinaora.com'),
(230, 1, 'adesantos6d', '6uYjmspFb', 'bsyred6d@ucsd.edu'),
(231, 1, 'lmcbryde6e', 'HK59ypAQBbm', 'ccorr6e@usa.gov'),
(232, 1, 'greeder6f', 'hSDoqUEcb', 'hbrewitt6f@china.com.cn'),
(233, 1, 'mpickrill6g', 'sUG09uixQ', 'jpealing6g@weather.com'),
(234, 1, 'sturban6h', 'NKj62eheK', 'rmessom6h@simplemachines.org'),
(235, 1, 'bmurt6i', 'RR6HoVyTRm2O', 'emidghall6i@w3.org'),
(236, 1, 'ntitcombe6j', '3zcCh3e5G8', 'aivy6j@fastcompany.com'),
(237, 1, 'dplowes6k', 'pnUtfSWx', 'twandless6k@psu.edu'),
(238, 1, 'bselesnick6l', 'oxINV0MJull5', 'rnorcross6l@spotify.com'),
(239, 1, 'hbarbrick6m', '59q30S', 'ryushmanov6m@omniture.com'),
(240, 1, 'rezzle6n', 'UqJ4Cn0', 'mhakey6n@soundcloud.com'),
(241, 1, 'baleksankov6o', 'pU1p8pUDct', 'nfitzsimons6o@themeforest.net'),
(242, 1, 'rgareisr6p', 'S1RvCAmoI', 'cmalser6p@shareasale.com'),
(243, 1, 'tteliga6q', 'cKMgmEubH', 'ekures6q@twitpic.com'),
(244, 1, 'areed6r', 'kIPkpdFRUGf9', 'bwholesworth6r@yellowpages.com'),
(245, 1, 'rdare6s', 'tftPWucjqD', 'lhitcham6s@delicious.com'),
(246, 1, 'lmaidens6t', 'BvYd96jAG', 'ldulwitch6t@va.gov'),
(247, 1, 'achallicombe6u', 'ngYwv92', 'chugli6u@who.int'),
(248, 1, 'mterran6v', 'vWicHX4', 'golden6v@unesco.org'),
(249, 1, 'bpendrid6w', 'dHG0Ea', 'smorrel6w@51.la'),
(250, 1, 'gmersh6x', 'wkNuMsw7', 'vwhichelow6x@ted.com'),
(251, 2, 'admi1', 'admi1', 'admi1@gmail.com'),
(252, 2, 'admi2', 'admi2', 'admi2@gmail.com'),
(253, 2, 'admi3', 'admi3', 'admi3@gmail.com'),
(254, 2, 'admi4', 'admi4', 'admi4@gmail.com'),
(255, 3, 'gerente1', 'gerente1', 'gerente1@gmail.com'),
(256, 2, 'admi6', 'admi666', 'admi6@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `embarques`
--

CREATE TABLE `embarques` (
  `embarque_id` int(11) NOT NULL,
  `puerta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `embarques`
--

INSERT INTO `embarques` (`embarque_id`, `puerta_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encomiendas`
--

CREATE TABLE `encomiendas` (
  `id` int(11) NOT NULL,
  `envia_nombre` varchar(50) NOT NULL,
  `envia_apellido` varchar(50) NOT NULL,
  `envia_dni` int(8) NOT NULL,
  `recoge_nombre` varchar(50) NOT NULL,
  `recoge_apellido` varchar(50) NOT NULL,
  `recoge_dni` int(8) NOT NULL,
  `lugar_recojo` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `encomiendas`
--

INSERT INTO `encomiendas` (`id`, `envia_nombre`, `envia_apellido`, `envia_dni`, `recoge_nombre`, `recoge_apellido`, `recoge_dni`, `lugar_recojo`) VALUES
(24, 'cv', 'c', 4, 'cv', 'c', 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itinerarios`
--

CREATE TABLE `itinerarios` (
  `itinerario_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `ruta_id` int(11) NOT NULL,
  `fecha_salida` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `itinerarios`
--

INSERT INTO `itinerarios` (`itinerario_id`, `bus_id`, `ruta_id`, `fecha_salida`) VALUES
(1, 1, 7, '2020-10-10 12:30:00'),
(2, 2, 9, '2020-10-10 12:30:00'),
(3, 3, 48, '2020-10-11 08:30:00'),
(4, 4, 29, '2020-10-11 20:30:00'),
(5, 5, 39, '2020-10-11 15:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llegadas`
--

CREATE TABLE `llegadas` (
  `llegada_id` int(11) NOT NULL,
  `puerta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `llegadas`
--

INSERT INTO `llegadas` (`llegada_id`, `puerta_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logeos`
--

CREATE TABLE `logeos` (
  `log_id` int(11) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL COMMENT '1 es conectado , 0 es datos incorrectos',
  `intento_fallido` int(11) NOT NULL DEFAULT '0' COMMENT 'numero de intentos por cuenta',
  `tiempo_inicio` datetime NOT NULL,
  `tiempo_fin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `logeos`
--

INSERT INTO `logeos` (`log_id`, `usuario`, `contraseña`, `estado`, `intento_fallido`, `tiempo_inicio`, `tiempo_fin`) VALUES
(1, 'admi1', 'asdasdasd', 0, 1, '2020-11-08 18:44:33', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `persona_id` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `sexo` char(1) NOT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `edad` int(11) NOT NULL,
  `documento_id` int(11) NOT NULL DEFAULT '1',
  `cod_documento` varchar(8) NOT NULL,
  `cuenta_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`persona_id`, `nombres`, `apellido_paterno`, `apellido_materno`, `sexo`, `telefono`, `edad`, `documento_id`, `cod_documento`, `cuenta_id`) VALUES
(1, 'Gabi', 'De Blasi', 'Rutgers', 'F', '048795870', 60, 1, '37912581', 1),
(2, 'Shanda', 'Cayley', 'Lapworth', 'F', '199397888', 21, 1, '33684888', 2),
(3, 'Anette', 'Hainning', 'Tolle', 'F', '767285956', 56, 1, '00734683', 3),
(4, 'Sutherland', 'Render', 'Murdy', 'M', '450728450', 57, 1, '75668059', 4),
(5, 'Isidoro', 'Doubleday', 'Benzing', 'M', '359257894', 63, 1, '80505552', 5),
(6, 'Monro', 'Bridgeland', 'Gaiford', 'M', '710066760', 44, 1, '12126126', 6),
(7, 'Crysta', 'Rosenblad', 'Derrett', 'F', '558247301', 57, 1, '19125789', 7),
(8, 'Mathias', 'Haxby', 'Sealand', 'M', '040464521', 53, 1, '11083231', 8),
(9, 'Woodie', 'Burchatt', 'Posner', 'M', '852904609', 46, 1, '65952751', 9),
(10, 'Danielle', 'Nibloe', 'Brawn', 'F', '794761711', 56, 1, '89333959', 10),
(11, 'Florence', 'Itzakson', 'Burnsall', 'F', '103309036', 20, 1, '11992196', 11),
(12, 'Herschel', 'Berresford', 'Deppe', 'M', '568024611', 36, 1, '75709545', 12),
(13, 'Ricky', 'Soreau', 'Bednell', 'M', '462373040', 54, 1, '03045435', 13),
(14, 'Gawain', 'McClary', 'Sparshatt', 'M', '220069610', 29, 1, '78945015', 14),
(15, 'Quinlan', 'Easter', 'Sibbering', 'M', '672367821', 34, 1, '44290694', 15),
(16, 'Maegan', 'Danzey', 'Fancott', 'F', '645754633', 25, 1, '38459223', 16),
(17, 'Karlens', 'Duplain', 'Toffts', 'M', '569545537', 53, 1, '14706755', 17),
(18, 'Zacherie', 'Vineall', 'Farris', 'M', '236982412', 43, 1, '81010138', 18),
(19, 'Alene', 'Sumnall', 'Spritt', 'F', '994132059', 62, 1, '09478188', 19),
(20, 'Arie', 'Swanbourne', 'Kirrens', 'M', '398356405', 58, 1, '05359779', 20),
(21, 'Tobie', 'Gabbatt', 'Olphert', 'M', '113901478', 40, 1, '07902407', 21),
(22, 'Courtnay', 'Sawden', 'Nary', 'M', '252789215', 63, 1, '27984338', 22),
(23, 'Vevay', 'Ruckledge', 'Lisett', 'F', '277317398', 56, 1, '76415545', 23),
(24, 'Arv', 'Leyland', 'Wilmot', 'M', '195674766', 64, 1, '29399353', 24),
(25, 'Candy', 'Bernhart', 'Scoone', 'F', '494329613', 41, 1, '73333790', 25),
(26, 'Edithe', 'Kadwallider', 'Marjanovic', 'F', '036464780', 64, 1, '56125965', 26),
(27, 'Virge', 'Sabban', 'Loadman', 'M', '379263362', 59, 1, '61010993', 27),
(28, 'Gusty', 'Blenkensop', 'Domenico', 'F', '724726409', 28, 1, '07713339', 28),
(29, 'Vere', 'Fowgies', 'Caps', 'F', '505070768', 57, 1, '19186986', 29),
(30, 'Berke', 'Dickie', 'Berthel', 'M', '458123568', 56, 1, '37326086', 30),
(31, 'Nedda', 'Maylam', 'Walczak', 'F', '826801784', 20, 1, '78686005', 31),
(32, 'Al', 'Halsworth', 'Collaton', 'M', '162498744', 40, 1, '78631267', 32),
(33, 'Caresse', 'Ravillas', 'Merton', 'F', '538055875', 18, 1, '06363646', 33),
(34, 'Carmelita', 'Arents', 'Salkild', 'F', '097987498', 18, 1, '41174721', 34),
(35, 'Emlen', 'Griswood', 'Bozier', 'M', '244514711', 49, 1, '16961218', 35),
(36, 'Brocky', 'Groven', 'Girk', 'M', '134737366', 39, 1, '06687801', 36),
(37, 'Harold', 'Toupe', 'Strewther', 'M', '939773173', 24, 1, '47671166', 37),
(38, 'Maren', 'Clotworthy', 'Yushkin', 'F', '376889342', 28, 1, '74704876', 38),
(39, 'Monica', 'Tew', 'Dunaway', 'F', '355676986', 44, 1, '58741814', 39),
(40, 'Gerri', 'Erasmus', 'Parsand', 'M', '527936961', 60, 1, '55590136', 40),
(41, 'Stephan', 'Brammall', 'Valero', 'M', '808644204', 64, 1, '93044169', 41),
(42, 'Kliment', 'Rugieri', 'Offiler', 'M', '359404430', 55, 1, '78171110', 42),
(43, 'Lynelle', 'Ogles', 'Buckie', 'F', '013350930', 50, 1, '12806298', 43),
(44, 'Jarret', 'Hurles', 'Brownbridge', 'M', '884631708', 47, 1, '44525368', 44),
(45, 'Maryanne', 'Morsey', 'Babin', 'F', '889089906', 47, 1, '17130102', 45),
(46, 'Cassandre', 'Greason', 'Izod', 'F', '959832944', 18, 1, '76800374', 46),
(47, 'Daune', 'Dunkerley', 'Suffield', 'F', '978139199', 32, 1, '93680927', 47),
(48, 'Mada', 'Scholcroft', 'McDill', 'F', '459851726', 63, 1, '39695813', 48),
(49, 'Mindy', 'Atterbury', 'Smeuin', 'F', '509277878', 63, 1, '09454914', 49),
(50, 'Evaleen', 'McArd', 'Matteris', 'F', '726671731', 27, 1, '75496664', 50),
(51, 'Gianina', 'Le feuvre', 'Doward', 'F', '543024232', 59, 1, '75153526', 51),
(52, 'Arman', 'Placidi', 'Donwell', 'M', '867631864', 28, 1, '45970241', 52),
(53, 'Norah', 'Sultan', 'California', 'F', '549155737', 41, 1, '50821393', 53),
(54, 'Giraldo', 'Bethel', 'Ringham', 'M', '956568491', 49, 1, '39495122', 54),
(55, 'Tymothy', 'Alven', 'Hasson', 'M', '548138224', 33, 1, '11003321', 55),
(56, 'Sara-ann', 'Lanney', 'Kohrding', 'F', '933336630', 44, 1, '52240499', 56),
(57, 'Shep', 'Strotone', 'Pragnell', 'M', '818201209', 58, 1, '46902977', 57),
(58, 'Vonni', 'Munday', 'Arnau', 'F', '194807299', 26, 1, '51509831', 58),
(59, 'Juli', 'Gatfield', 'Gomersal', 'F', '735587868', 48, 1, '22972857', 59),
(60, 'Timoteo', 'Haslegrave', 'Goodale', 'M', '607412639', 59, 1, '51681798', 60),
(61, 'Kizzee', 'Le Breton De La Vieuville', 'Wallman', 'F', '310831667', 35, 1, '40743428', 61),
(62, 'Babs', 'Yea', 'Bedell', 'F', '036361059', 65, 1, '63882688', 62),
(63, 'Beitris', 'Arnaudon', 'Van Leijs', 'F', '032864537', 61, 1, '22151051', 63),
(64, 'Woody', 'Filkov', 'Fowgies', 'M', '677099112', 46, 1, '21232458', 64),
(65, 'Zenia', 'Yakubowicz', 'Gallety', 'F', '477566241', 63, 1, '41707103', 65),
(66, 'Karola', 'Larmour', 'Chedzoy', 'F', '041467612', 61, 1, '90027807', 66),
(67, 'Kiley', 'Frotton', 'Nelius', 'M', '559882459', 28, 1, '94123774', 67),
(68, 'Jannel', 'Lydiatt', 'Eubank', 'F', '528050504', 30, 1, '99765407', 68),
(69, 'Carmelina', 'Patel', 'Aronin', 'F', '419300427', 28, 1, '16562851', 69),
(70, 'Rosamond', 'Lundbeck', 'McNay', 'F', '928633283', 38, 1, '74500135', 70),
(71, 'Donavon', 'Madge', 'Happer', 'M', '902215607', 35, 1, '20308734', 71),
(72, 'Simona', 'Kattenhorn', 'Lahiff', 'F', '975495573', 65, 1, '68225162', 72),
(73, 'Huntlee', 'Auger', 'Raiston', 'M', '053360979', 64, 1, '34945351', 73),
(74, 'Joyan', 'Gobel', 'Pennycuick', 'F', '370773896', 25, 1, '84116767', 74),
(75, 'Edin', 'Peto', 'Josowitz', 'F', '462780843', 42, 1, '63884490', 75),
(76, 'Scarlet', 'Sharphouse', 'Poundesford', 'F', '028672335', 33, 1, '18563262', 76),
(77, 'Clemmie', 'Danbrook', 'Alibone', 'M', '724050916', 18, 1, '20633289', 77),
(78, 'Lishe', 'Bursnall', 'Trudgeon', 'F', '365698304', 62, 1, '12902866', 78),
(79, 'Avery', 'Frankham', 'Dransfield', 'M', '125399806', 59, 1, '62169905', 79),
(80, 'Nedda', 'Pietsma', 'Stitle', 'F', '985251018', 36, 1, '48275732', 80),
(81, 'Ashlen', 'Jefferys', 'Duckels', 'F', '651843851', 54, 1, '41583635', 81),
(82, 'Pyotr', 'Moggle', 'Crossfield', 'M', '501074915', 49, 1, '45541930', 82),
(83, 'Demetra', 'Eady', 'Sully', 'F', '826701378', 48, 1, '29958851', 83),
(84, 'Gregorius', 'Wombwell', 'Weich', 'M', '313969458', 51, 1, '00936837', 84),
(85, 'Cal', 'Burkitt', 'Thornthwaite', 'M', '937757640', 25, 1, '27176498', 85),
(86, 'Ibrahim', 'Baford', 'Durdle', 'M', '625397517', 39, 1, '29514746', 86),
(87, 'Gasper', 'Wimmer', 'Hamil', 'M', '370684538', 56, 1, '06639407', 87),
(88, 'Evangeline', 'Gomersal', 'Milbank', 'F', '725489680', 65, 1, '55387000', 88),
(89, 'Judi', 'Sand', 'Gelderd', 'F', '805782855', 47, 1, '07210910', 89),
(90, 'Clemens', 'Danneil', 'Serle', 'M', '784286433', 64, 1, '71978295', 90),
(91, 'Nathanil', 'Binley', 'Boerder', 'M', '910447598', 28, 1, '86424787', 91),
(92, 'Babara', 'Jurgen', 'Joselovitch', 'F', '451393036', 21, 1, '79647031', 92),
(93, 'Merla', 'Dohrmann', 'Blackbrough', 'F', '930090373', 37, 1, '11300641', 93),
(94, 'Sidnee', 'Brickwood', 'Durrand', 'M', '051456355', 31, 1, '21166342', 94),
(95, 'Jorry', 'Blodgetts', 'Verlinde', 'F', '467504965', 52, 1, '43136493', 95),
(96, 'Friedrick', 'Sumers', 'Legg', 'M', '158104127', 36, 1, '89925641', 96),
(97, 'Wayland', 'Severwright', 'Huckerby', 'M', '675807648', 46, 1, '68024910', 97),
(98, 'Laureen', 'Margrem', 'Howsley', 'F', '570842039', 46, 1, '85994545', 98),
(99, 'Timmi', 'Cabel', 'Coverly', 'F', '574157394', 59, 1, '49387495', 99),
(100, 'Annabella', 'Vitler', 'Willavoys', 'F', '132525199', 23, 1, '52043730', 100),
(101, 'Mitzi', 'Groundwater', 'Launder', 'F', '888675302', 24, 1, '05732201', 101),
(102, 'Opaline', 'Blondell', 'Verny', 'F', '250986082', 54, 1, '55089398', 102),
(103, 'Nichole', 'Raggles', 'Alyoshin', 'M', '977360080', 46, 1, '74599280', 103),
(104, 'Archer', 'Garz', 'Eburne', 'M', '138225324', 48, 1, '24786371', 104),
(105, 'Rowney', 'Thurber', 'Canaan', 'M', '556152420', 33, 1, '88868856', 105),
(106, 'Maryl', 'Jarvis', 'Laverty', 'F', '902555921', 34, 1, '13987766', 106),
(107, 'Elberta', 'Shankster', 'Roache', 'F', '513689005', 59, 1, '20049339', 107),
(108, 'Aloin', 'Serjent', 'Esom', 'M', '250559366', 46, 1, '89125878', 108),
(109, 'Radcliffe', 'Lathleiffure', 'Oty', 'M', '918517026', 62, 1, '58840385', 109),
(110, 'Timmie', 'Braffington', 'Babbe', 'M', '784193101', 56, 1, '47438738', 110),
(111, 'Korella', 'Cozens', 'Jayme', 'F', '627906281', 32, 1, '28882835', 111),
(112, 'Esther', 'Uccelli', 'Lernihan', 'F', '472167836', 44, 1, '05135778', 112),
(113, 'Eugine', 'Backes', 'Ayton', 'F', '089150166', 49, 1, '77298332', 113),
(114, 'Easter', 'Kersaw', 'Sang', 'F', '800630220', 26, 1, '76456555', 114),
(115, 'Babb', 'Wicklin', 'Tibols', 'F', '642532067', 26, 1, '71210443', 115),
(116, 'Vikky', 'Dolan', 'Emer', 'F', '719260754', 59, 1, '74498511', 116),
(117, 'Raddie', 'Kesper', 'Cariss', 'M', '323948168', 30, 1, '47567750', 117),
(118, 'Nomi', 'Vell', 'Collington', 'F', '617155274', 20, 1, '48710286', 118),
(119, 'Darin', 'Dorkens', 'Bleesing', 'M', '852413715', 41, 1, '84951768', 119),
(120, 'Janis', 'Stennes', 'Goracci', 'F', '616286415', 25, 1, '69804003', 120),
(121, 'Wilton', 'Decreuze', 'Jordon', 'M', '635068879', 44, 1, '08733106', 121),
(122, 'Skelly', 'Cutbush', 'Redfern', 'M', '232747051', 40, 1, '00134631', 122),
(123, 'Constantin', 'Roath', 'Ethington', 'M', '780162825', 37, 1, '40381896', 123),
(124, 'Marlo', 'Cockin', 'Duckwith', 'F', '932313360', 38, 1, '74074469', 124),
(125, 'Tony', 'Kliemchen', 'Tamblyn', 'M', '595097145', 53, 1, '53423003', 125),
(126, 'Lulu', 'Winspar', 'Ivanyukov', 'F', '923032927', 65, 1, '35921701', 126),
(127, 'Vitoria', 'Haddock', 'Berndsen', 'F', '802910361', 61, 1, '91509640', 127),
(128, 'Bartholomew', 'Spores', 'Yesenev', 'M', '027612828', 28, 1, '03539262', 128),
(129, 'Lelah', 'Kytter', 'De Morena', 'F', '556241251', 57, 1, '78017837', 129),
(130, 'Bonnee', 'Mildenhall', 'Salzen', 'F', '339003208', 48, 1, '74026209', 130),
(131, 'Merill', 'Archard', 'Monahan', 'M', '606113108', 47, 1, '11433025', 131),
(132, 'Janos', 'Drinkel', 'Yushin', 'M', '289455606', 44, 1, '27386990', 132),
(133, 'Roxine', 'Cresswell', 'Steffens', 'F', '684573639', 39, 1, '96396337', 133),
(134, 'Betteann', 'Semmence', 'Glenny', 'F', '461951512', 63, 1, '60285590', 134),
(135, 'Coreen', 'Tighe', 'Buyers', 'F', '281966397', 43, 1, '34544914', 135),
(136, 'Winnifred', 'Creaney', 'Kenryd', 'F', '004235316', 55, 1, '18726844', 136),
(137, 'Merwin', 'Alpes', 'Duncanson', 'M', '285372044', 56, 1, '15838133', 137),
(138, 'Cally', 'Schenkel', 'Bagehot', 'F', '903634309', 64, 1, '26413051', 138),
(139, 'Toddie', 'Mitchelhill', 'Notton', 'M', '852933406', 21, 1, '49539872', 139),
(140, 'Brita', 'Reddington', 'Ivan', 'F', '814713196', 19, 1, '58630472', 140),
(141, 'Demetria', 'Byforth', 'Greenwell', 'F', '506367552', 63, 1, '79803648', 141),
(142, 'Crista', 'McCrone', 'Alldre', 'F', '539139226', 65, 1, '38583490', 142),
(143, 'Obidiah', 'Goosnell', 'Crat', 'M', '431602068', 18, 1, '25972363', 143),
(144, 'Anna-diane', 'Upham', 'Peschka', 'F', '826082636', 27, 1, '25938067', 144),
(145, 'Giselle', 'Gislebert', 'O\'Dyvoy', 'F', '630380621', 62, 1, '81654491', 145),
(146, 'Janey', 'Ferrillo', 'Bownd', 'F', '577050615', 54, 1, '31893908', 146),
(147, 'Hayley', 'McGlashan', 'Fosdyke', 'F', '063966001', 34, 1, '50439397', 147),
(148, 'Gerrard', 'Colliford', 'Pucker', 'M', '600310851', 40, 1, '59086359', 148),
(149, 'Vasilis', 'Kubach', 'Sails', 'M', '956986840', 20, 1, '27215124', 149),
(150, 'Rasia', 'Hardisty', 'Hanaby', 'F', '018361548', 46, 1, '60101344', 150),
(151, 'Joscelin', 'Rouf', 'Ower', 'F', '920219399', 42, 1, '63484203', 151),
(152, 'Salim', 'Edwicke', 'Bouller', 'M', '365451029', 49, 1, '70349131', 152),
(153, 'Harbert', 'Meus', 'Behrendsen', 'M', '943860441', 51, 1, '59440127', 153),
(154, 'Laurie', 'Showen', 'Kinglake', 'M', '825872192', 47, 1, '45344514', 154),
(155, 'Janel', 'McCarver', 'Rawne', 'F', '801443789', 46, 1, '33563204', 155),
(156, 'Fair', 'Le Fevre', 'Saice', 'M', '797216514', 44, 1, '95729487', 156),
(157, 'Catharine', 'Snoddon', 'Bedboro', 'F', '505948719', 51, 1, '42078463', 157),
(158, 'Bil', 'Guiden', 'Chadwyck', 'M', '929644805', 52, 1, '41260921', 158),
(159, 'Vanya', 'Gabotti', 'Rennox', 'F', '511696380', 55, 1, '77707169', 159),
(160, 'Yank', 'Aleksidze', 'Lyman', 'M', '856481419', 22, 1, '78784637', 160),
(161, 'Byrom', 'Statton', 'Jouannisson', 'M', '643761721', 28, 1, '02272237', 161),
(162, 'Merci', 'Smeed', 'Dollimore', 'F', '879390077', 32, 1, '11987355', 162),
(163, 'Sophey', 'Firpi', 'Gowanson', 'F', '935916152', 28, 1, '29905038', 163),
(164, 'Randy', 'Drugan', 'McCurrie', 'F', '069273958', 21, 1, '85722294', 164),
(165, 'Phylis', 'De Biasi', 'Busain', 'F', '087150184', 59, 1, '76127698', 165),
(166, 'Sarajane', 'Raith', 'Bagge', 'F', '235108002', 24, 1, '47931232', 166),
(167, 'Hewie', 'Jobern', 'Brumpton', 'M', '359127337', 48, 1, '59238431', 167),
(168, 'Danya', 'Varden', 'McCuis', 'F', '959812407', 33, 1, '48221364', 168),
(169, 'Bren', 'Bindon', 'Rodolf', 'M', '063682260', 30, 1, '78417896', 169),
(170, 'Correy', 'Blader', 'Rylance', 'F', '883049629', 45, 1, '72686567', 170),
(171, 'Dodi', 'Tolossi', 'Ference', 'F', '970681483', 20, 1, '88476924', 171),
(172, 'Fredericka', 'Durnford', 'Gumme', 'F', '382188818', 58, 1, '67941792', 172),
(173, 'Rennie', 'Batham', 'Cherrington', 'F', '006744008', 57, 1, '83461995', 173),
(174, 'Karalynn', 'Leacock', 'Dossettor', 'F', '549061093', 51, 1, '10680264', 174),
(175, 'Reyna', 'Timby', 'Jays', 'F', '117449763', 56, 1, '13260397', 175),
(176, 'Peggy', 'Caslin', 'Turton', 'F', '775093329', 55, 1, '80401301', 176),
(177, 'Shae', 'Cruikshanks', 'Frogley', 'F', '324629923', 49, 1, '77591264', 177),
(178, 'Kira', 'Huggill', 'Wayon', 'F', '972272914', 64, 1, '32919566', 178),
(179, 'Drucill', 'Chaddock', 'Arbor', 'F', '774800407', 32, 1, '87881747', 179),
(180, 'Webster', 'Scintsbury', 'Licari', 'M', '056548736', 44, 1, '19214962', 180),
(181, 'Wiley', 'Gilhooly', 'Wildgoose', 'M', '745394499', 47, 1, '68908241', 181),
(182, 'Blair', 'Davydoch', 'Janak', 'F', '981624841', 55, 1, '52442560', 182),
(183, 'Pepito', 'Jennins', 'Shillitto', 'M', '148352222', 25, 1, '95320979', 183),
(184, 'Meir', 'Suggett', 'Seckom', 'M', '883510328', 22, 1, '06126901', 184),
(185, 'Hashim', 'Grahlman', 'Roskilly', 'M', '822368075', 60, 1, '18590390', 185),
(186, 'Garald', 'Dobell', 'McGilleghole', 'M', '017037411', 52, 1, '75520541', 186),
(187, 'Chastity', 'Sexcey', 'Ambler', 'F', '896910275', 19, 1, '59772882', 187),
(188, 'Steffen', 'Broxholme', 'Ditchett', 'M', '532976811', 40, 1, '58200997', 188),
(189, 'Tatiania', 'Ewer', 'Mandel', 'F', '060092258', 36, 1, '57758471', 189),
(190, 'Tyrus', 'Meachem', 'Elks', 'M', '870054167', 34, 1, '79049930', 190),
(191, 'Robenia', 'Reef', 'Mallabund', 'F', '734923981', 59, 1, '88655729', 191),
(192, 'Tawsha', 'Gulberg', 'Prin', 'F', '339443878', 22, 1, '54581881', 192),
(193, 'Bryon', 'Sorey', 'Cator', 'M', '456305249', 31, 1, '20588052', 193),
(194, 'Gonzales', 'Davson', 'Allcoat', 'M', '271967092', 20, 1, '44832639', 194),
(195, 'Cole', 'Vedyashkin', 'Provest', 'M', '004213457', 24, 1, '44104499', 195),
(196, 'Minnnie', 'Dufour', 'Grimbaldeston', 'F', '687917697', 29, 1, '72499036', 196),
(197, 'Kira', 'Celes', 'Gerding', 'F', '334460912', 41, 1, '82039341', 197),
(198, 'Wayne', 'Bateman', 'Hamnet', 'M', '270988020', 64, 1, '76865397', 198),
(199, 'Gertrude', 'Derill', 'Bosanko', 'F', '594848003', 37, 1, '98337417', 199),
(200, 'Archy', 'Bowgen', 'Redsell', 'M', '385096128', 39, 1, '42207120', 200),
(201, 'Yoshiko', 'Hammand', 'Radclyffe', 'F', '149263307', 58, 1, '64051774', 201),
(202, 'Donnie', 'Bulford', 'MacFarlane', 'M', '688761860', 54, 1, '50191917', 202),
(203, 'Oswald', 'Moriarty', 'Matashkin', 'M', '074864355', 27, 1, '00748231', 203),
(204, 'Chet', 'Kingsford', 'Tettley', 'M', '399655564', 49, 1, '43071468', 204),
(205, 'Alberto', 'Calam', 'Caseborne', 'M', '331847818', 33, 1, '02681948', 205),
(206, 'Doralia', 'Behan', 'Warmisham', 'F', '295438159', 47, 1, '88009487', 206),
(207, 'Merlina', 'Costi', 'Pestell', 'F', '930577177', 20, 1, '89825672', 207),
(208, 'Tommie', 'Asty', 'Ackrill', 'F', '721195234', 56, 1, '94543632', 208),
(209, 'Gayler', 'Lawerence', 'Rubberts', 'M', '602358161', 53, 1, '26089671', 209),
(210, 'Guglielma', 'Chapleo', 'Early', 'F', '293584885', 57, 1, '25599505', 210),
(211, 'Rockwell', 'Sidery', 'Dyball', 'M', '749069375', 63, 1, '20729079', 211),
(212, 'Meagan', 'Hancock', 'Jasik', 'F', '630496357', 26, 1, '47255504', 212),
(213, 'Ruddy', 'Thunder', 'Menchenton', 'M', '838326493', 63, 1, '49454173', 213),
(214, 'Heidie', 'Cullum', 'Alyokhin', 'F', '839338313', 30, 1, '73993162', 214),
(215, 'Helenka', 'Iiannoni', 'Antoniottii', 'F', '488263385', 63, 1, '16144905', 215),
(216, 'Gideon', 'Ledson', 'Reinard', 'M', '005387407', 20, 1, '88243295', 216),
(217, 'Marthena', 'McCambrois', 'Teodoro', 'F', '500228587', 64, 1, '77803441', 217),
(218, 'Jerrylee', 'Bleackly', 'Alban', 'F', '503193053', 56, 1, '33417597', 218),
(219, 'Joby', 'Iredale', 'Gilliard', 'F', '815467202', 44, 1, '67848451', 219),
(220, 'Lanita', 'Schaumaker', 'Robinet', 'F', '200509609', 36, 1, '11792772', 220),
(221, 'Pansie', 'Ridgeway', 'Cottrill', 'F', '919241467', 41, 1, '99902679', 221),
(222, 'Shirleen', 'Messitt', 'Nicklinson', 'F', '538143926', 27, 1, '63025946', 222),
(223, 'Adelheid', 'Haselup', 'Elleray', 'F', '389295023', 38, 1, '40537844', 223),
(224, 'Brenn', 'Raphael', 'Renne', 'F', '057304272', 45, 1, '06985334', 224),
(225, 'Vince', 'Offer', 'Burt', 'M', '460754844', 54, 1, '41172178', 225),
(226, 'Mayne', 'Bechley', 'Cordoba', 'M', '222232683', 38, 1, '76411308', 226),
(227, 'Kirstyn', 'Taill', 'DelaField', 'F', '003452527', 32, 1, '17145455', 227),
(228, 'Bartel', 'Ainslie', 'Pollicott', 'M', '193551945', 27, 1, '04008556', 228),
(229, 'Pierson', 'Barrus', 'Mattiussi', 'M', '419808434', 51, 1, '62821996', 229),
(230, 'Anthe', 'O\'Moylan', 'Wenman', 'F', '383938872', 60, 1, '26490030', 230),
(231, 'Myrwyn', 'Jarnell', 'Normand', 'M', '235161429', 56, 1, '02206863', 231),
(232, 'Zollie', 'Ferris', 'Osborn', 'M', '758194501', 33, 1, '25940031', 232),
(233, 'Ileana', 'Wooster', 'Kilcullen', 'F', '634850682', 31, 1, '42289730', 233),
(234, 'Lem', 'Purry', 'Brockie', 'M', '480896183', 31, 1, '33426270', 234),
(235, 'Gib', 'Watchorn', 'Roddell', 'M', '680507400', 49, 1, '03423476', 235),
(236, 'Othelia', 'Smuth', 'Dennitts', 'F', '064221823', 54, 1, '29041964', 236),
(237, 'Lucinda', 'Endean', 'Brenneke', 'F', '842993200', 55, 1, '85341783', 237),
(238, 'Glad', 'Scarsbrook', 'Joffe', 'F', '745475052', 25, 1, '72929223', 238),
(239, 'Ron', 'Curner', 'Plaschke', 'M', '590790561', 43, 1, '66805538', 239),
(240, 'Paul', 'Brobak', 'Rowlstone', 'M', '655805957', 50, 1, '52378735', 240),
(241, 'Rainer', 'Ekell', 'Joost', 'M', '052342675', 31, 1, '37205124', 241),
(242, 'Allard', 'Mullin', 'Rosgen', 'M', '516865130', 39, 1, '87773213', 242),
(243, 'Leila', 'Drance', 'Gumby', 'F', '441338240', 62, 1, '52891561', 243),
(244, 'Raphaela', 'Corneck', 'Archer', 'F', '523421488', 40, 1, '34964542', 244),
(245, 'Virgil', 'Gorman', 'Tezure', 'M', '840889918', 22, 1, '44048596', 245),
(246, 'Babita', 'Quinion', 'Breazeall', 'F', '832807625', 21, 1, '20509122', 246),
(247, 'Micah', 'Jeness', 'Echlin', 'M', '864242716', 64, 1, '52334228', 247),
(248, 'Micah', 'Gowrich', 'Elsworth', 'M', '072382656', 44, 1, '19614276', 248),
(249, 'Hermon', 'Boriston', 'Gisbey', 'M', '084864514', 28, 1, '82263757', 249),
(250, 'Stacia', 'Coope', 'Hamlet', 'F', '829416531', 49, 1, '07126423', 250),
(251, 'Claudette', 'Smethurst', 'De la Yglesia', 'F', '514481760', 24, 1, '51158286', NULL),
(252, 'Alasteir', 'Rouge', 'Boddy', 'M', '279110160', 48, 1, '53408452', NULL),
(253, 'Linnell', 'Bradforth', 'Deares', 'F', '016894747', 51, 1, '60387195', NULL),
(254, 'Juliette', 'Ruffey', 'Kenwyn', 'F', '280032229', 20, 1, '93140151', NULL),
(255, 'Emmerich', 'Scrine', 'Luckie', 'M', '481882809', 32, 1, '25813859', NULL),
(256, 'Joey', 'Naptin', 'Zanuciolii', 'F', '431342493', 42, 1, '11301123', NULL),
(257, 'Maren', 'Horsted', 'McIlvaney', 'F', '696152686', 37, 1, '70134017', NULL),
(258, 'Dulci', 'Skurm', 'Averay', 'F', '276421290', 41, 1, '00450267', NULL),
(259, 'Jose', 'MacNeillie', 'Reidie', 'M', '386588055', 57, 1, '82025292', NULL),
(260, 'Natalee', 'Husthwaite', 'Brignell', 'F', '842505408', 40, 1, '73828256', NULL),
(261, 'Tedi', 'Edgecombe', 'Jaye', 'F', '059965004', 34, 1, '27229909', NULL),
(262, 'Lorri', 'Thomton', 'Snar', 'F', '585911609', 29, 1, '80518030', NULL),
(263, 'Kenon', 'Gosswell', 'Tregido', 'M', '458019933', 53, 1, '80187337', NULL),
(264, 'Robby', 'Brinkworth', 'cornhill', 'M', '357034812', 44, 1, '24057193', NULL),
(265, 'Leila', 'D\'Aguanno', 'Pach', 'F', '201952560', 49, 1, '07724549', NULL),
(266, 'Melony', 'Garrish', 'Sever', 'F', '703882415', 47, 1, '76709993', NULL),
(267, 'Curt', 'Grishechkin', 'Beese', 'M', '961455280', 57, 1, '88002505', NULL),
(268, 'Rolando', 'Mundee', 'Kenrick', 'M', '271476754', 45, 1, '11301738', NULL),
(269, 'Crin', 'Syalvester', 'Larkby', 'F', '537654837', 56, 1, '62352493', NULL),
(270, 'Kienan', 'Walburn', 'Skingley', 'M', '238354240', 32, 1, '69367189', NULL),
(271, 'Alexandrina', 'Clutton', 'Dugan', 'F', '644389747', 23, 1, '60573458', NULL),
(272, 'Griz', 'Harryman', 'De Beauchemp', 'M', '638093489', 59, 1, '01024935', NULL),
(273, 'Jens', 'Leadbeatter', 'Austing', 'M', '820868706', 53, 1, '31282083', NULL),
(274, 'Irene', 'Brugemann', 'Redford', 'F', '513595323', 62, 1, '74766613', NULL),
(275, 'Reinaldos', 'Newling', 'Chung', 'M', '748180560', 60, 1, '33827505', NULL),
(276, 'Brennen', 'Macilhench', 'Forward', 'M', '350082261', 23, 1, '46938147', NULL),
(277, 'Danielle', 'Slocomb', 'Ende', 'F', '328820792', 52, 1, '40332573', NULL),
(278, 'Barb', 'Rennix', 'Nann', 'F', '145284607', 46, 1, '61959821', NULL),
(279, 'Annabella', 'Mazey', 'Kaesmans', 'F', '572067731', 36, 1, '75340488', NULL),
(280, 'Farrel', 'Machent', 'Shorbrook', 'M', '231513330', 42, 1, '91005709', NULL),
(281, 'Brandice', 'Maycock', 'MacLise', 'F', '612474379', 50, 1, '15957925', NULL),
(282, 'Thaine', 'Cuppitt', 'Woodman', 'M', '790542630', 63, 1, '12758706', NULL),
(283, 'Nelly', 'Aprahamian', 'Ainslie', 'F', '969562695', 25, 1, '95499701', NULL),
(284, 'Annalee', 'Catherall', 'Castanos', 'F', '208565466', 50, 1, '04456922', NULL),
(285, 'Evangelin', 'Schirak', 'Yegorov', 'F', '598959420', 30, 1, '18208662', NULL),
(286, 'Hilly', 'Loghan', 'Mayer', 'M', '196499030', 51, 1, '12903004', NULL),
(287, 'Mariellen', 'Bettaney', 'Basile', 'F', '169403147', 21, 1, '66746481', NULL),
(288, 'Cariotta', 'Bushell', 'Shone', 'F', '492392342', 41, 1, '60776353', NULL),
(289, 'Devinne', 'Hargate', 'Hagergham', 'F', '522135362', 28, 1, '09445163', NULL),
(290, 'Fleurette', 'MacGillespie', 'McCahill', 'F', '482524239', 52, 1, '67389986', NULL),
(291, 'Alayne', 'Stallard', 'Tonnesen', 'F', '695150956', 64, 1, '99466442', NULL),
(292, 'Lorettalorna', 'Pibsworth', 'Dearn', 'F', '930396720', 25, 1, '19244387', NULL),
(293, 'Caleb', 'Hamflett', 'Garmanson', 'M', '645999530', 40, 1, '75852344', NULL),
(294, 'Lars', 'Coston', 'Stangoe', 'M', '414716645', 41, 1, '45053038', NULL),
(295, 'Gino', 'Shewen', 'Orlton', 'M', '736207432', 33, 1, '78212706', NULL),
(296, 'Willy', 'Hellings', 'Wilman', 'M', '252804677', 40, 1, '94045265', NULL),
(297, 'Ellette', 'Patifield', 'Gerhartz', 'F', '521055767', 52, 1, '34210656', NULL),
(298, 'Andrea', 'Kingswood', 'Gorcke', 'F', '562009637', 55, 1, '34818574', NULL),
(299, 'Flore', 'Neubigging', 'Wilmington', 'F', '644332005', 34, 1, '45870466', NULL),
(300, 'Cassie', 'Benjamin', 'Carratt', 'M', '765359484', 64, 1, '63524522', NULL),
(301, 'Manuel', 'Hamley', 'Ryott', 'M', '456215181', 21, 1, '99626097', NULL),
(302, 'Mordy', 'Merring', 'Mephan', 'M', '521084667', 47, 1, '07281634', NULL),
(303, 'Emmit', 'Astle', 'Pegden', 'M', '026746983', 58, 1, '30284397', NULL),
(304, 'Siward', 'Hearmon', 'Dutteridge', 'M', '822580837', 30, 1, '91689743', NULL),
(305, 'Elise', 'Kilbride', 'Skein', 'F', '508564733', 19, 1, '43727927', NULL),
(306, 'Chickie', 'Grote', 'Deme', 'M', '277484419', 64, 1, '23197454', NULL),
(307, 'Kizzie', 'Wadhams', 'Mengue', 'F', '122988636', 38, 1, '33537083', NULL),
(308, 'Micki', 'Clyne', 'Labone', 'F', '809171852', 65, 1, '36039274', NULL),
(309, 'Lek', 'Yegorev', 'Ible', 'M', '444668925', 28, 1, '73173563', NULL),
(310, 'Maxine', 'Humpherson', 'Monroe', 'F', '220808192', 23, 1, '52787106', NULL),
(311, 'Goldie', 'Venart', 'Klosa', 'F', '981439936', 57, 1, '46774670', NULL),
(312, 'Adda', 'Twigley', 'Egan', 'F', '626667162', 27, 1, '53274917', NULL),
(313, 'Regen', 'Spreag', 'Tysack', 'M', '577946751', 30, 1, '88561010', NULL),
(314, 'Dagny', 'Duinbleton', 'Heyworth', 'M', '401767675', 31, 1, '83605031', NULL),
(315, 'Den', 'Linford', 'Premble', 'M', '527616751', 48, 1, '20741697', NULL),
(316, 'Marcellus', 'Arthars', 'Galfour', 'M', '078154607', 40, 1, '86806317', NULL),
(317, 'Valentine', 'Tapin', 'Tiplady', 'F', '892491065', 32, 1, '78717615', NULL),
(318, 'Lindsay', 'Collick', 'McGeagh', 'F', '680529182', 34, 1, '62958953', NULL),
(319, 'Mayne', 'MacParlan', 'Sedgemore', 'M', '102989915', 41, 1, '17330063', NULL),
(320, 'Susanna', 'Petruskevich', 'Jerams', 'F', '629399263', 57, 1, '04342566', NULL),
(321, 'Andree', 'Persian', 'Lakenton', 'F', '230881588', 21, 1, '64091747', NULL),
(322, 'Elisa', 'Leebeter', 'Hearon', 'F', '421387227', 48, 1, '88478962', NULL),
(323, 'Dan', 'Lanmeid', 'Slorach', 'M', '187129272', 54, 1, '86175120', NULL),
(324, 'Dwayne', 'Gorling', 'Oldershaw', 'M', '774051281', 50, 1, '05262581', NULL),
(325, 'Oswell', 'Behnke', 'Arrington', 'M', '416306222', 52, 1, '22018049', NULL),
(326, 'Rosemonde', 'Martini', 'Lytell', 'F', '706316237', 38, 1, '33455015', NULL),
(327, 'Colman', 'Neissen', 'Trimming', 'M', '631594895', 50, 1, '88139496', NULL),
(328, 'Arne', 'Seer', 'Pascow', 'M', '908475959', 57, 1, '39371806', NULL),
(329, 'Nerissa', 'Unworth', 'Grimley', 'F', '782379278', 26, 1, '18568856', NULL),
(330, 'Austina', 'Farran', 'Covolini', 'F', '532341345', 34, 1, '45984453', NULL),
(331, 'Osbourne', 'Fridlington', 'Yakob', 'M', '202636616', 35, 1, '03809632', NULL),
(332, 'Ardath', 'Joire', 'Cufley', 'F', '123977982', 53, 1, '92733768', NULL),
(333, 'Tatiana', 'Bougen', 'Walder', 'F', '839446441', 18, 1, '08914271', NULL),
(334, 'Allister', 'Duckers', 'Brouwer', 'M', '191148925', 32, 1, '63010263', NULL),
(335, 'Ingram', 'Escalero', 'Tooth', 'M', '778433955', 56, 1, '22809681', NULL),
(336, 'Dagmar', 'Staner', 'Clell', 'F', '094698553', 29, 1, '97251813', NULL),
(337, 'Kylynn', 'Boland', 'Goodhall', 'F', '036387013', 64, 1, '26171013', NULL),
(338, 'Harmony', 'Eblein', 'Sargood', 'F', '902094600', 53, 1, '98506024', NULL),
(339, 'Artair', 'Ciobotaro', 'Tollemache', 'M', '364129697', 53, 1, '31112757', NULL),
(340, 'Eugenius', 'Rains', 'Willishire', 'M', '393766743', 51, 1, '55148902', NULL),
(341, 'Noella', 'Suttill', 'Wapple', 'F', '602550449', 35, 1, '27030758', NULL),
(342, 'Ashlee', 'Drinkall', 'Farlane', 'F', '864971817', 28, 1, '30572509', NULL),
(343, 'Spenser', 'Crayker', 'Rabbe', 'M', '215343256', 59, 1, '67844359', NULL),
(344, 'Sherri', 'Valentino', 'Gabbat', 'F', '075399464', 48, 1, '27428254', NULL),
(345, 'Levin', 'Cheetam', 'Oldknow', 'M', '486562453', 46, 1, '08039386', NULL),
(346, 'Chas', 'Ockland', 'Lomansey', 'M', '992061735', 52, 1, '78687733', NULL),
(347, 'Granny', 'Boate', 'Loughren', 'M', '242671570', 46, 1, '85420402', NULL),
(348, 'Niels', 'Fowler', 'Alyoshin', 'M', '954913952', 34, 1, '02379580', NULL),
(349, 'Maureen', 'Marven', 'Reekie', 'F', '245533751', 43, 1, '57232528', NULL),
(350, 'Amye', 'Finn', 'McNeice', 'F', '682744306', 27, 1, '47739374', NULL),
(351, 'Noll', 'McMorland', 'Kirkhouse', 'M', '218474217', 42, 1, '79136266', NULL),
(352, 'Lorraine', 'Edgworth', 'Lande', 'F', '193570046', 27, 1, '47185420', NULL),
(353, 'Flori', 'Badham', 'Baillie', 'F', '362914954', 21, 1, '52658452', NULL),
(354, 'Janina', 'Tumilty', 'Summerrell', 'F', '969762538', 20, 1, '15776452', NULL),
(355, 'Colas', 'Lorey', 'Tillot', 'M', '461143618', 30, 1, '07793448', NULL),
(356, 'Bernice', 'Grigorini', 'Kolakowski', 'F', '419914414', 38, 1, '15802812', NULL),
(357, 'Eberhard', 'Galia', 'Narramor', 'M', '011813434', 43, 1, '40428394', NULL),
(358, 'Jesus', 'Timoney', 'Moret', 'M', '369118884', 36, 1, '02825870', NULL),
(359, 'Gabi', 'Yelden', 'MacNeachtain', 'M', '182636015', 42, 1, '30382741', NULL),
(360, 'Warner', 'Garahan', 'MacLure', 'M', '315242480', 32, 1, '61087808', NULL),
(361, 'Nathanial', 'Claibourn', 'Wemyss', 'M', '280560714', 42, 1, '81420686', NULL),
(362, 'Joshua', 'Baddoe', 'Longhorne', 'M', '347976071', 57, 1, '13977170', NULL),
(363, 'Bram', 'Rawlence', 'Gullifant', 'M', '569670990', 47, 1, '99481238', NULL),
(364, 'Ainsley', 'Lennard', 'McAleese', 'F', '315694783', 57, 1, '66995018', NULL),
(365, 'Dalt', 'Nassie', 'Foulks', 'M', '260087240', 39, 1, '51009124', NULL),
(366, 'Yanaton', 'Disney', 'Palay', 'M', '911075023', 20, 1, '17301532', NULL),
(367, 'Veda', 'Gotthard', 'Bulluck', 'F', '431254388', 30, 1, '17998004', NULL),
(368, 'Tyson', 'Dawks', 'Searson', 'M', '072211785', 48, 1, '19492702', NULL),
(369, 'Polly', 'Maskall', 'Lattos', 'F', '505686916', 41, 1, '53164677', NULL),
(370, 'Sloane', 'Maytom', 'Orrill', 'M', '404496263', 48, 1, '29978790', NULL),
(371, 'Russell', 'Leckie', 'Crooks', 'M', '132688287', 40, 1, '92193606', NULL),
(372, 'Taddeo', 'O\'Clery', 'Childe', 'M', '776022183', 35, 1, '00281483', NULL),
(373, 'Adolf', 'Murtimer', 'Hane', 'M', '361408276', 41, 1, '10497886', NULL),
(374, 'Adelaida', 'Orgee', 'Grosvenor', 'F', '560824056', 53, 1, '38309340', NULL),
(375, 'Artemas', 'Coulman', 'Labrom', 'M', '861707848', 50, 1, '21589545', NULL),
(376, 'Alyosha', 'Devonshire', 'Verity', 'M', '713103503', 29, 1, '78526489', NULL),
(377, 'Janek', 'Linsay', 'Maxworthy', 'M', '350715833', 22, 1, '05749696', NULL),
(378, 'Anatol', 'Carlisle', 'Rekes', 'M', '422658540', 19, 1, '63659361', NULL),
(379, 'Else', 'Diggins', 'Housecraft', 'F', '171457241', 45, 1, '07566025', NULL),
(380, 'Laryssa', 'Guierre', 'McLanaghan', 'F', '941341581', 46, 1, '63648598', NULL),
(381, 'Dennie', 'Weall', 'Aspenlon', 'M', '987986042', 44, 1, '33933121', NULL),
(382, 'Maggie', 'Klaiser', 'Escala', 'F', '017118099', 18, 1, '30937683', NULL),
(383, 'Reid', 'Rosas', 'Wigin', 'M', '210479203', 60, 1, '62965290', NULL),
(384, 'Jorie', 'Hambers', 'Scothern', 'F', '445077116', 25, 1, '87398063', NULL),
(385, 'Lombard', 'Ebbings', 'Caughte', 'M', '092545741', 21, 1, '78643337', NULL),
(386, 'Emlyn', 'Kuschke', 'Brusby', 'M', '917740952', 27, 1, '19433986', NULL),
(387, 'Kipp', 'Thirtle', 'Child', 'F', '783037815', 64, 1, '96666288', NULL),
(388, 'Dorothee', 'Bosward', 'Linklater', 'F', '022932624', 57, 1, '13151739', NULL),
(389, 'Boone', 'Stonhard', 'Curteis', 'M', '627381443', 21, 1, '54609162', NULL),
(390, 'Harland', 'Semrad', 'Ronnay', 'M', '182281394', 53, 1, '83884781', NULL),
(391, 'Emelen', 'Velti', 'Beadles', 'M', '684148787', 41, 1, '96380838', NULL),
(392, 'Mordy', 'Stuttman', 'Kehir', 'M', '435987803', 46, 1, '35250662', NULL),
(393, 'Abigale', 'Danzelman', 'Redhouse', 'F', '588584125', 57, 1, '19499889', NULL),
(394, 'Hubey', 'Fursse', 'Rowling', 'M', '581382651', 59, 1, '08349130', NULL),
(395, 'Mabelle', 'Sinney', 'Carlucci', 'F', '077328445', 48, 1, '09556202', NULL),
(396, 'Hasheem', 'Mattschas', 'Connold', 'M', '100555677', 51, 1, '55105466', NULL),
(397, 'Gilli', 'McDonell', 'Allaker', 'F', '503783069', 40, 1, '97636396', NULL),
(398, 'Judy', 'Ricardet', 'MacPaden', 'F', '574820204', 59, 1, '81805690', NULL),
(399, 'Sawyer', 'Codd', 'Prester', 'M', '557456889', 32, 1, '79993422', NULL),
(400, 'Jacintha', 'Tilbey', 'Raffeorty', 'F', '162735413', 24, 1, '02083449', NULL),
(401, 'Ursula', 'Kirkby', 'Wingate', 'F', '763071025', 59, 1, '11872509', NULL),
(402, 'Halie', 'MacNeilly', 'McQuarter', 'F', '030311962', 18, 1, '08301589', NULL),
(403, 'Edie', 'Ayris', 'Seeborne', 'F', '407269268', 35, 1, '20041751', NULL),
(404, 'Grantley', 'Moring', 'Paschek', 'M', '342530732', 22, 1, '87894978', NULL),
(405, 'Earl', 'Penley', 'Cockin', 'M', '820671242', 21, 1, '58812692', NULL),
(406, 'John', 'Oglesbee', 'Moloney', 'M', '107910396', 57, 1, '67364753', NULL),
(407, 'Augusto', 'Songhurst', 'Subhan', 'M', '338183989', 63, 1, '79628038', NULL),
(408, 'Yard', 'Tupling', 'McKitterick', 'M', '816135646', 43, 1, '11775090', NULL),
(409, 'Crawford', 'Burrells', 'Fones', 'M', '233677223', 37, 1, '53736905', NULL),
(410, 'Roscoe', 'Towse', 'Hanbury-Brown', 'M', '627273120', 35, 1, '51202876', NULL),
(411, 'Vernon', 'Purtell', 'McSwan', 'M', '432812219', 35, 1, '29609921', NULL),
(412, 'Geri', 'Castangia', 'Eveque', 'M', '472117626', 35, 1, '87272346', NULL),
(413, 'Reggis', 'Pleasants', 'McCourt', 'M', '599473415', 50, 1, '27132404', NULL),
(414, 'Land', 'Stangoe', 'Leadstone', 'M', '396407085', 51, 1, '20235759', NULL),
(415, 'Sara-ann', 'Sultana', 'Hrishanok', 'F', '518003100', 28, 1, '78587977', NULL),
(416, 'Reynolds', 'Jurczak', 'Siburn', 'M', '961830523', 40, 1, '24539154', NULL),
(417, 'Rhodie', 'Vere', 'Koschek', 'F', '316993933', 19, 1, '61896625', NULL),
(418, 'Verge', 'Fenelow', 'Sheards', 'M', '519876746', 33, 1, '88731856', NULL),
(419, 'Ambrosi', 'Branchett', 'Bonham', 'M', '427661419', 41, 1, '15169919', NULL),
(420, 'Lefty', 'Sirey', 'Cassey', 'M', '925118285', 18, 1, '29872590', NULL),
(421, 'Noell', 'Tremblet', 'Harms', 'F', '298207874', 45, 1, '83660938', NULL),
(422, 'Harbert', 'Alejandre', 'Treasure', 'M', '112006928', 56, 1, '52187984', NULL),
(423, 'Angie', 'Summerton', 'Hunsworth', 'F', '664380048', 36, 1, '54229563', NULL),
(424, 'Cairistiona', 'Danilovitch', 'Menico', 'F', '872101870', 37, 1, '35617804', NULL),
(425, 'Margalo', 'Bessant', 'Gostall', 'F', '115629067', 21, 1, '61944910', NULL),
(426, 'Georges', 'Denington', 'Spurett', 'M', '583469990', 24, 1, '29264332', NULL),
(427, 'Jyoti', 'Snoxill', 'Persitt', 'F', '297545933', 33, 1, '55309769', NULL),
(428, 'Anett', 'Howley', 'Walthall', 'F', '363897750', 40, 1, '94144331', NULL),
(429, 'Debbi', 'McKeefry', 'Wessing', 'F', '936459118', 45, 1, '53035281', NULL),
(430, 'Margot', 'Vogelein', 'Kassel', 'F', '591822950', 45, 1, '81779937', NULL),
(431, 'Henka', 'Mairs', 'Wood', 'F', '915129677', 39, 1, '52596037', NULL),
(432, 'Shae', 'Windmill', 'Gatman', 'M', '456488201', 48, 1, '78481902', NULL),
(433, 'Letizia', 'Luna', 'Belf', 'F', '851763444', 60, 1, '47621928', NULL),
(434, 'Millicent', 'Mahedy', 'Godain', 'F', '241735382', 24, 1, '64080409', NULL),
(435, 'Marten', 'Dominighi', 'Haggerston', 'M', '968012161', 35, 1, '76849851', NULL),
(436, 'Goldy', 'Vasler', 'McHenry', 'F', '428498388', 33, 1, '98084129', NULL),
(437, 'Starlene', 'Boullin', 'Lithcow', 'F', '458138686', 40, 1, '86849679', NULL),
(438, 'Aurlie', 'Newstead', 'Dannehl', 'F', '217342367', 35, 1, '11572596', NULL),
(439, 'Arlene', 'Fairney', 'Grealish', 'F', '737255651', 34, 1, '67874515', NULL),
(440, 'Bar', 'Asel', 'Garley', 'M', '655686088', 52, 1, '77867399', NULL),
(441, 'Margot', 'Halpen', 'Walkinshaw', 'F', '563176917', 19, 1, '06747972', NULL),
(442, 'Ray', 'MacGaughey', 'Rapelli', 'F', '572718793', 34, 1, '58620987', NULL),
(443, 'Maure', 'Altham', 'Anderer', 'F', '844028553', 35, 1, '66693172', NULL),
(444, 'Niels', 'Joutapavicius', 'Glynn', 'M', '589430715', 28, 1, '01471198', NULL),
(445, 'Hanny', 'Proswell', 'Lummus', 'F', '192298258', 58, 1, '52834127', NULL),
(446, 'Orelia', 'Grigs', 'Queree', 'F', '601397043', 33, 1, '20220867', NULL),
(447, 'Berrie', 'Malpass', 'Hurdman', 'F', '803282967', 48, 1, '56360319', NULL),
(448, 'Benetta', 'Rugge', 'Penk', 'F', '379957486', 19, 1, '82302539', NULL),
(449, 'Fifine', 'McWhinnie', 'Collis', 'F', '720020588', 27, 1, '63942670', NULL),
(450, 'Haley', 'Scarfe', 'Novotne', 'M', '030032778', 21, 1, '68078949', NULL),
(451, 'Virgil', 'Basden', 'Grigorio', 'M', '185537815', 46, 1, '63207170', NULL),
(452, 'Saxe', 'Kuhnt', 'Bachs', 'M', '578983052', 42, 1, '77589769', NULL),
(453, 'Godfree', 'Pattini', 'Vickers', 'M', '243992484', 64, 1, '18165632', NULL),
(454, 'Clair', 'Ginnane', 'Tomaschke', 'M', '323090201', 32, 1, '61251951', NULL),
(455, 'Ariel', 'McIlmorie', 'Jouhandeau', 'M', '566305029', 44, 1, '61517777', NULL),
(456, 'Sibley', 'McSharry', 'Matteuzzi', 'F', '582921540', 41, 1, '65209874', NULL),
(457, 'Emmalyn', 'Taye', 'MacConchie', 'F', '591176130', 60, 1, '09840580', NULL),
(458, 'Edwina', 'Derham', 'O\' Concannon', 'F', '330029524', 49, 1, '85236917', NULL),
(459, 'Kira', 'Currom', 'Dimond', 'F', '401921800', 18, 1, '96656806', NULL),
(460, 'Fairfax', 'Hylands', 'Escalero', 'M', '792851445', 52, 1, '68994504', NULL),
(461, 'Clementius', 'Feld', 'Polin', 'M', '342641653', 36, 1, '77300867', NULL),
(462, 'Malissa', 'Fice', 'Marie', 'F', '623443771', 65, 1, '52335694', NULL),
(463, 'Verile', 'McGragh', 'Cluett', 'F', '136919215', 35, 1, '86348155', NULL),
(464, 'Elga', 'Stronghill', 'Pernell', 'F', '873291549', 22, 1, '57233530', NULL),
(465, 'Jacquenetta', 'Lapley', 'Alleburton', 'F', '902921821', 31, 1, '06236548', NULL),
(466, 'Rennie', 'Pretsell', 'Sate', 'F', '554517300', 63, 1, '16446550', NULL),
(467, 'Chauncey', 'Hurne', 'Davidge', 'M', '523015768', 54, 1, '96477455', NULL),
(468, 'Fawn', 'Uwins', 'Miguet', 'F', '826007029', 30, 1, '40677258', NULL),
(469, 'Aurel', 'Kingsnod', 'Sands-Allan', 'F', '462185730', 45, 1, '17963437', NULL),
(470, 'Kerwin', 'Yurlov', 'Bolver', 'M', '033109709', 37, 1, '78197624', NULL),
(471, 'Thornie', 'Broadbridge', 'Lemmens', 'M', '368810206', 65, 1, '21023907', NULL),
(472, 'Faustine', 'Tilmouth', 'Bursnoll', 'F', '226869421', 48, 1, '01154629', NULL),
(473, 'Jacquelyn', 'Pylkynyton', 'Goodsell', 'F', '256769185', 20, 1, '45209478', NULL),
(474, 'Mahmoud', 'Ellice', 'Szreter', 'M', '768362864', 62, 1, '01360807', NULL),
(475, 'Elianore', 'Wilmut', 'Kachel', 'F', '547104871', 32, 1, '49366161', NULL),
(476, 'Grantley', 'Blackley', 'Ketcher', 'M', '918068349', 63, 1, '07691677', NULL),
(477, 'Rois', 'Culp', 'Pottage', 'F', '692202212', 38, 1, '32194891', NULL),
(478, 'Maurine', 'Burchill', 'Muriel', 'F', '873170357', 27, 1, '50270774', NULL),
(479, 'Avrit', 'Weinmann', 'Hastler', 'F', '064699506', 30, 1, '18639807', NULL),
(480, 'Almeta', 'Longfield', 'Cirlos', 'F', '631619875', 35, 1, '16948848', NULL),
(481, 'Hayyim', 'Garnul', 'Fealty', 'M', '656979316', 42, 1, '74690644', NULL),
(482, 'Shelley', 'Ruddoch', 'Sarginson', 'M', '347264942', 49, 1, '73916160', NULL),
(483, 'Bobbye', 'Van den Hof', 'Steuart', 'F', '598030593', 62, 1, '16768180', NULL),
(484, 'Obed', 'Guiso', 'Beaconsall', 'M', '194989617', 25, 1, '60053476', NULL),
(485, 'Rosanne', 'Schurcke', 'Bim', 'F', '995000206', 51, 1, '51725570', NULL),
(486, 'Modestia', 'Fellows', 'Skillanders', 'F', '872064372', 19, 1, '11880520', NULL),
(487, 'Kore', 'Dawley', 'Yarker', 'F', '014288695', 62, 1, '55813114', NULL),
(488, 'Alvie', 'Garvagh', 'Melloi', 'M', '737002349', 56, 1, '23653091', NULL),
(489, 'Bridie', 'Wooldridge', 'Lope', 'F', '049828976', 42, 1, '06808706', NULL),
(490, 'Ruby', 'Shemming', 'Dobinson', 'F', '851292631', 54, 1, '69625565', NULL),
(491, 'Tamera', 'Lepick', 'Simenot', 'F', '469408510', 43, 1, '16675164', NULL),
(492, 'Lloyd', 'Rudeforth', 'Knewstubb', 'M', '175230400', 37, 1, '60887131', NULL),
(493, 'Yvonne', 'Goodsal', 'Glencross', 'F', '184639012', 31, 1, '93742515', NULL),
(494, 'Roarke', 'Sirrell', 'Knevet', 'M', '110050921', 48, 1, '17955571', NULL),
(495, 'Deina', 'Bertie', 'Frichley', 'F', '630154931', 28, 1, '70075745', NULL),
(496, 'Valaree', 'Attawell', 'Steade', 'F', '096791718', 45, 1, '78205674', NULL),
(497, 'Honor', 'Nacci', 'Eberle', 'F', '157158651', 28, 1, '30089564', NULL),
(498, 'Sonia', 'Pancoust', 'Tejero', 'F', '494702823', 60, 1, '27327915', NULL),
(499, 'Lion', 'Shewsmith', 'Brixey', 'M', '178142079', 59, 1, '64823470', NULL),
(500, 'Harold', 'Gillatt', 'O Mullen', 'M', '939325093', 56, 1, '07137488', NULL),
(501, 'Julio', 'Morales', 'Ipanaque', 'M', '123456789', 40, 1, '12345678', 251),
(502, 'Juan', 'Perez', 'Rodriguez', 'M', '122456789', 45, 1, '12325678', 252),
(503, 'Estela', 'Huamani', 'Huaytalla', 'F', '152456789', 35, 1, '12525678', 253),
(504, 'Juana', 'Romani', 'Valdivia', 'F', '156456789', 41, 1, '12385655', 254),
(505, 'Eder', 'Fernandez', 'Martinez', 'M', '956956789', 41, 1, '92985655', 255),
(506, 'AlexXX', 'Carrion', 'Chavez', 'M', '999111000', 50, 1, '87654321', 256);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puertas`
--

CREATE TABLE `puertas` (
  `puerta_id` int(11) NOT NULL,
  `terminal_id` int(11) NOT NULL,
  `nom_puerta` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `puertas`
--

INSERT INTO `puertas` (`puerta_id`, `terminal_id`, `nom_puerta`) VALUES
(1, 1, 'Puerta 1'),
(2, 1, 'Puerta 2'),
(3, 2, 'Puerta 1'),
(4, 2, 'Puerta 2'),
(5, 3, 'Puerta 1'),
(6, 3, 'Puerta 2'),
(7, 4, 'Puerta 1'),
(8, 4, 'Puerta 2'),
(9, 5, 'Puerta 1'),
(10, 5, 'Puerta 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rol_id` int(11) NOT NULL,
  `nom_rol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rol_id`, `nom_rol`) VALUES
(1, 'cliente'),
(2, 'administrador'),
(3, 'gerente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `ruta_id` int(11) NOT NULL,
  `embarque_id` int(11) NOT NULL,
  `llegada_id` int(11) NOT NULL,
  `costo_ruta` decimal(5,2) NOT NULL,
  `duracion` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`ruta_id`, `embarque_id`, `llegada_id`, `costo_ruta`, `duracion`, `descripcion`) VALUES
(1, 1, 3, '40.50', 6, 'lima1-ica1'),
(2, 1, 4, '40.50', 6, 'lima1-ica2'),
(3, 1, 5, '80.50', 16, 'lima1-arequipa1'),
(4, 1, 6, '80.50', 16, 'lima1-arequipa2'),
(5, 1, 7, '120.50', 23, 'lima1-cusco1'),
(6, 1, 8, '120.50', 23, 'lima1-cusco2'),
(7, 1, 9, '70.50', 8, 'lima1-huancayo1'),
(8, 1, 10, '70.50', 8, 'lima1-huancayo2'),
(9, 2, 3, '40.50', 6, 'lima2-ica1'),
(10, 2, 4, '40.50', 6, 'lima2-ica2'),
(11, 2, 5, '80.50', 16, 'lima2-arequipa1'),
(12, 2, 6, '80.50', 16, 'lima2-arequipa2'),
(13, 2, 7, '120.50', 23, 'lima2-cusco1'),
(14, 2, 8, '120.50', 23, 'lima2-cusco2'),
(15, 2, 9, '70.50', 8, 'lima2-huancayo1'),
(16, 2, 10, '70.50', 8, 'lima2-huancayo2'),
(17, 3, 1, '40.50', 6, 'ica1-lima1'),
(18, 3, 2, '40.50', 6, 'ica1-lima2'),
(19, 3, 5, '70.50', 8, 'ica1-arequipa1'),
(20, 3, 6, '70.50', 8, 'ica1-arequipa2'),
(21, 3, 7, '100.50', 15, 'ica1-cusco1'),
(22, 3, 8, '100.50', 15, 'ica1-cusco2'),
(23, 4, 1, '40.50', 6, 'ica2-lima1'),
(24, 4, 2, '40.50', 6, 'ica2-lima2'),
(25, 4, 5, '70.50', 8, 'ica2-arequipa1'),
(26, 4, 6, '70.50', 8, 'ica2-arequipa2'),
(27, 4, 7, '100.50', 15, 'ica2-cusco1'),
(28, 4, 8, '100.50', 15, 'ica2-cusco2'),
(29, 5, 1, '80.50', 16, 'arequipa1-lima1'),
(30, 5, 2, '80.50', 16, 'arequipa1-lima2'),
(31, 5, 3, '70.50', 8, 'arequipa1-ica1'),
(32, 5, 4, '70.50', 8, 'arequipa1-ica2'),
(33, 5, 7, '80.50', 8, 'arequipa1-cusco1'),
(34, 5, 8, '80.50', 8, 'arequipa1-cusco2'),
(35, 6, 1, '80.50', 16, 'arequipa2-lima1'),
(36, 6, 2, '80.50', 16, 'arequipa2-lima2'),
(37, 6, 3, '70.50', 8, 'arequipa2-ica1'),
(38, 6, 4, '70.50', 8, 'arequipa2-ica2'),
(39, 6, 7, '80.50', 8, 'arequipa2-cusco1'),
(40, 6, 8, '80.50', 8, 'arequipa2-cusco2'),
(41, 7, 1, '120.50', 23, 'cusco1-lima1'),
(42, 7, 2, '120.50', 23, 'cusco1-lima2'),
(43, 7, 3, '100.50', 15, 'cusco1-ica1'),
(44, 7, 4, '100.50', 15, 'cusco1-ica2'),
(45, 7, 5, '80.50', 8, 'cusco1-arequipa1'),
(46, 7, 6, '80.50', 8, 'cusco1-arequipa2'),
(47, 8, 1, '120.50', 23, 'cusco2-lima1'),
(48, 8, 2, '120.50', 23, 'cusco2-lima2'),
(49, 8, 3, '100.50', 15, 'cusco2-ica1'),
(50, 8, 4, '100.50', 15, 'cusco2-ica2'),
(51, 8, 5, '80.50', 8, 'cusco2-arequipa1'),
(52, 8, 6, '80.50', 8, 'cusco2-arequipa2'),
(53, 9, 1, '70.50', 8, 'huancayo1-lima1'),
(54, 9, 2, '70.50', 8, 'huancayo1-lima2'),
(55, 10, 1, '70.50', 8, 'huancayo2-lima1'),
(56, 10, 2, '70.50', 8, 'huancayo2-lima2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terminales`
--

CREATE TABLE `terminales` (
  `terminal_id` int(11) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `terminales`
--

INSERT INTO `terminales` (`terminal_id`, `direccion`, `ciudad`) VALUES
(1, 'Av. Javier Prado Este # 1109', 'Lima'),
(2, 'Cal. Fray Ramon Rojas #189', 'Ica'),
(3, 'Av. El Ejército 1013 Cayma ', 'Arequipa'),
(4, 'T.Terrestre Municipal Stand A-3', 'Cusco'),
(5, 'Jr. Ayacucho # 281', 'Huancayo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documentos`
--

CREATE TABLE `tipo_documentos` (
  `documento_id` int(11) NOT NULL,
  `nom_documento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tipo_documentos`
--

INSERT INTO `tipo_documentos` (`documento_id`, `nom_documento`) VALUES
(1, 'dni'),
(2, 'pasaporte'),
(3, 'carnet de extranjeria');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asientos`
--
ALTER TABLE `asientos`
  ADD PRIMARY KEY (`asiento_id`),
  ADD KEY `clases_asientos_idx` (`clase_id`),
  ADD KEY `buses_asientos_idx` (`bus_id`);

--
-- Indices de la tabla `atenciones`
--
ALTER TABLE `atenciones`
  ADD PRIMARY KEY (`atencion_id`),
  ADD KEY `cuentas_mensajes` (`cuenta_id`);

--
-- Indices de la tabla `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`bus_id`),
  ADD UNIQUE KEY `matricula_UNIQUE` (`matricula`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`clase_id`);

--
-- Indices de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`comprobante_id`),
  ADD KEY `usuarios_comprobantes_idx` (`persona_id`),
  ADD KEY `itinerarios_comprobantes_idx` (`itinerario_id`),
  ADD KEY `asientos_comprobantes_idx` (`asiento_id`),
  ADD KEY `cuentas_comprobantes` (`cuenta_id`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`cuenta_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `usuario_uq` (`usuario`),
  ADD KEY `roles_cuentas` (`rol_id`);

--
-- Indices de la tabla `embarques`
--
ALTER TABLE `embarques`
  ADD PRIMARY KEY (`embarque_id`),
  ADD KEY `puertas_embarques_idx` (`puerta_id`);

--
-- Indices de la tabla `encomiendas`
--
ALTER TABLE `encomiendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `encomiendas_terminales` (`lugar_recojo`);

--
-- Indices de la tabla `itinerarios`
--
ALTER TABLE `itinerarios`
  ADD PRIMARY KEY (`itinerario_id`),
  ADD KEY `buses_itinerarios_idx` (`bus_id`),
  ADD KEY `rutas_itinerarios` (`ruta_id`);

--
-- Indices de la tabla `llegadas`
--
ALTER TABLE `llegadas`
  ADD PRIMARY KEY (`llegada_id`),
  ADD KEY `puertas_llegadas_idx` (`puerta_id`);

--
-- Indices de la tabla `logeos`
--
ALTER TABLE `logeos`
  ADD PRIMARY KEY (`log_id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`persona_id`),
  ADD UNIQUE KEY `uq_dni` (`cod_documento`) USING BTREE,
  ADD KEY `documentos_personas` (`documento_id`),
  ADD KEY `cuentas_personas` (`cuenta_id`);

--
-- Indices de la tabla `puertas`
--
ALTER TABLE `puertas`
  ADD PRIMARY KEY (`puerta_id`),
  ADD KEY `terminales_puertas_idx` (`terminal_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`ruta_id`),
  ADD KEY `embarques_rutas` (`embarque_id`),
  ADD KEY `llegadas_rutas` (`llegada_id`);

--
-- Indices de la tabla `terminales`
--
ALTER TABLE `terminales`
  ADD PRIMARY KEY (`terminal_id`),
  ADD UNIQUE KEY `direccion_UNIQUE` (`direccion`);

--
-- Indices de la tabla `tipo_documentos`
--
ALTER TABLE `tipo_documentos`
  ADD PRIMARY KEY (`documento_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asientos`
--
ALTER TABLE `asientos`
  MODIFY `asiento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `atenciones`
--
ALTER TABLE `atenciones`
  MODIFY `atencion_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `buses`
--
ALTER TABLE `buses`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `clase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  MODIFY `comprobante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `cuenta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT de la tabla `embarques`
--
ALTER TABLE `embarques`
  MODIFY `embarque_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `encomiendas`
--
ALTER TABLE `encomiendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `itinerarios`
--
ALTER TABLE `itinerarios`
  MODIFY `itinerario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `llegadas`
--
ALTER TABLE `llegadas`
  MODIFY `llegada_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `logeos`
--
ALTER TABLE `logeos`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `persona_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT de la tabla `puertas`
--
ALTER TABLE `puertas`
  MODIFY `puerta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `ruta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `terminales`
--
ALTER TABLE `terminales`
  MODIFY `terminal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asientos`
--
ALTER TABLE `asientos`
  ADD CONSTRAINT `buses_asientos` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`),
  ADD CONSTRAINT `clases_asientos` FOREIGN KEY (`clase_id`) REFERENCES `clases` (`clase_id`);

--
-- Filtros para la tabla `atenciones`
--
ALTER TABLE `atenciones`
  ADD CONSTRAINT `cuentas_mensajes` FOREIGN KEY (`cuenta_id`) REFERENCES `cuentas` (`cuenta_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD CONSTRAINT `asientos_comprobantes` FOREIGN KEY (`asiento_id`) REFERENCES `asientos` (`asiento_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `cuentas_comprobantes` FOREIGN KEY (`cuenta_id`) REFERENCES `cuentas` (`cuenta_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `itinerarios_comprobantes` FOREIGN KEY (`itinerario_id`) REFERENCES `itinerarios` (`itinerario_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `personas_comprobantes` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`persona_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD CONSTRAINT `roles_cuentas` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`rol_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `embarques`
--
ALTER TABLE `embarques`
  ADD CONSTRAINT `puertas_embarques` FOREIGN KEY (`puerta_id`) REFERENCES `puertas` (`puerta_id`);

--
-- Filtros para la tabla `encomiendas`
--
ALTER TABLE `encomiendas`
  ADD CONSTRAINT `encomiendas_terminales` FOREIGN KEY (`lugar_recojo`) REFERENCES `terminales` (`terminal_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `itinerarios`
--
ALTER TABLE `itinerarios`
  ADD CONSTRAINT `buses_itinerarios` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`bus_id`),
  ADD CONSTRAINT `rutas_itinerarios` FOREIGN KEY (`ruta_id`) REFERENCES `rutas` (`ruta_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `llegadas`
--
ALTER TABLE `llegadas`
  ADD CONSTRAINT `puertas_llegadas` FOREIGN KEY (`puerta_id`) REFERENCES `puertas` (`puerta_id`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `cuentas_personas` FOREIGN KEY (`cuenta_id`) REFERENCES `cuentas` (`cuenta_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `documentos_personas` FOREIGN KEY (`documento_id`) REFERENCES `tipo_documentos` (`documento_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `puertas`
--
ALTER TABLE `puertas`
  ADD CONSTRAINT `terminales_puertas` FOREIGN KEY (`terminal_id`) REFERENCES `terminales` (`terminal_id`);

--
-- Filtros para la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD CONSTRAINT `embarques_rutas` FOREIGN KEY (`embarque_id`) REFERENCES `embarques` (`embarque_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `llegadas_rutas` FOREIGN KEY (`llegada_id`) REFERENCES `llegadas` (`llegada_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
