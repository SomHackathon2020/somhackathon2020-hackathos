-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-02-2020 a las 19:45:16
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `getup`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Pel·lícules'),
(2, 'Esports'),
(3, 'Gastronomia'),
(4, 'Activitats grupals'),
(5, 'Animals'),
(6, 'Cultura'),
(7, 'Tecnologia i informàtica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipamientos`
--

CREATE TABLE `equipamientos` (
  `NOM` varchar(150) NOT NULL,
  `ADRECA` varchar(150) DEFAULT NULL,
  `CATEGORIA` varchar(100) DEFAULT NULL,
  `TIPUS` varchar(100) DEFAULT NULL,
  `DESCRIPCIO` varchar(255) DEFAULT NULL,
  `WKT` varchar(50) NOT NULL,
  `LAT` decimal(20,13) NOT NULL,
  `LNG` decimal(20,14) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipamientos`
--

INSERT INTO `equipamientos` (`NOM`, `ADRECA`, `CATEGORIA`, `TIPUS`, `DESCRIPCIO`, `WKT`, `LAT`, `LNG`) VALUES
('Creu Roja Mataró', 'Carrer de l\'Energia, 11. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Creu Roja', 'Institució internacional per al compliment dels principis fonamentals d\'humanitat, imparcialitat, neutralitat, independència, caràcter voluntari, unitat i universalitat.', 'POINT (2.45266658136745 41.5514321363963)', '41.5514321363963', '2.45266658136745'),
('Servei Ordinari d\'Urgències', 'Camí del Mig, 36. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Centres d\'Atenció Primària (CAP)', 'Punt d\'atenció continuada Cap Maresme (PAC)', 'POINT (2.43014567041679 41.5364998295583)', '41.5364998295583', '2.43014567041679'),
('Gestió documental i Arxiu', 'Carrer d\'En Palau, 32. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', 'Arxiu Municipal', 'POINT (2.44607047092417 41.5400209606537)', '41.5400209606537', '2.44607047092417'),
('Servei d\'Atenció Ciutadana', 'La Riera, 48. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', 'Servei d\'Atenció al ciutadà personalment i telefònicament', 'POINT (2.4447776359659 41.539838959823)', '41.5398389598230', '2.44477763596590'),
('Servei d\'Ingressos', 'Carrer El Carreró, 15. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', NULL, 'POINT (2.44522582356204 41.5400580336859)', '41.5400580336859', '2.44522582356204'),
('Arxiu històric Comarcal del Maresme', 'Carrer d\'En Palau, 32. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Arxius i Centres de documentació', 'Arxiu Comarcal', 'POINT (2.44607047092414 41.5400209606581)', '41.5400209606581', '2.44607047092414'),
('Servei de vigilància, salvament i socorrisme', 'Passeig del Callao, 6. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Creu Roja', 'Creu Roja', 'POINT (2.45419919738198 41.5389219740802)', '41.5389219740802', '2.45419919738198'),
('Cinemes Mataró Parc', 'Carrer d\'Estrasburg, 5. 08304 Mataró (BARCELONA)', 'Cultura i Oci', 'Cinemes', 'Cines', 'POINT (2.43444460137446 41.5543028548735)', '41.5543028548735', '2.43444460137446'),
('New Hotel Colón', 'Carrer de Cristòfor Colom, 6. 08301 Mataró (BARCELONA)', 'Allotjament', 'Hotels', 'Hotel', 'POINT (2.44891184021435 41.5376461468051)', '41.5376461468051', '2.44891184021435'),
('Jutjat de primera instància núm. 1', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Primera Instància', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Jutjat de primera instància núm. 3', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Primera Instància', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Jutjat de primera instància núm. 4', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Primera Instància', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Ensenyament concertat GEM (primària)', 'Carrer d\'Àvila, 9. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Segon cicle d\'educació infantil i primària (3-12 anys) i educació secundària obligatòria (12-16 anys)', 'POINT (2.4399032661664 41.5486551050107)', '41.5486551050107', '2.43990326616640'),
('Farmàcia Ruiz-Carrillo', 'Carrer de Pedro Antonio de Alarcón, 41. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h.', 'POINT (2.44866114025662 41.5441636150333)', '41.5441636150333', '2.44866114025662'),
('Farmàcia de l\'Havana', 'Camí Ral, 110. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h.', 'POINT (2.45273290117609 41.5408130426393)', '41.5408130426393', '2.45273290117609'),
('Farmàcia Masjuan', 'Ronda de Jaume Ferran, 28. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.43676584184608 41.5484522150368)', '41.5484522150368', '2.43676584184608'),
('Farmàcia Mancho', 'La Riera, 10. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de 8:00 a 22:00h', 'POINT (2.44499867359543 41.5386216420221)', '41.5386216420221', '2.44499867359543'),
('Farmàcia Majoral', 'Carrer de La Boixa, 1. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.42930581137514 41.547080304132)', '41.5470803041320', '2.42930581137514'),
('Centre Geriàtric Cerdanyola', 'Avinguda de Josep Puig i Cadafalch, 210. 08303 Mataró (BARCELONA)', 'Serveis socials', 'Centres residencials per a gent gran', 'Geriatria Privada Concertada', 'POINT (2.42508309593626 41.5404569097324)', '41.5404569097324', '2.42508309593626'),
('Parafarmàcia - Farmafree II', 'Carrer d\'Estrasburg, 5. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'Parafarmàcia', 'POINT (2.43444460137446 41.5543028548735)', '41.5543028548735', '2.43444460137446'),
('Espai Infant i Família - EB Els Garrofers', 'Carrer de Josep M. de Sagarra, 5. 08304 Mataró (BARCELONA)', 'Educació', 'Espais Infants i Família', 'Espai Infant i Familia', 'POINT (2.44204344914975 41.5534612049431)', '41.5534612049431', '2.44204344914975'),
('Farmàcia Sañez-Pérez', 'Carrer de la Creu Roja, 3. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de 9:00h a 13:30h i de 16:30h a 20:30h.', 'POINT (2.4412321870886 41.5487866418548)', '41.5487866418548', '2.44123218708860'),
('Farmàcia Ruiz-Carrillo Fité', 'Ronda de la Roca Blanca, 1. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.42928416351033 41.5433837143846)', '41.5433837143846', '2.42928416351033'),
('Naturfarma', 'Camí Ral, 123. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'Parafarmàcia', 'POINT (2.45234849110276 41.5406119888088)', '41.5406119888088', '2.45234849110276'),
('Oficina Jove del Maresme', 'Plaça de Miquel Biada, 5. 08301 Mataró (BARCELONA)', 'Serveis per a joves', 'Oficines d\'Atenció i informació per a joves', 'Espai de noves tecnologies adreçat a joves d\'entre 12 i 35 anys', 'POINT (2.44487432289563 41.5334985803693)', '41.5334985803693', '2.44487432289563'),
('Mataró Parc', 'Carrer d\'Estrasburg, 5. 08304 Mataró (BARCELONA)', 'Mercats i Centres comercials', 'Centres comercials', 'Centre Comercial (Gerencia)', 'POINT (2.43444460137446 41.5543028548735)', '41.5543028548735', '2.43444460137446'),
('Consorci Sanitari del Maresme', 'Carretera de Cirera, 230. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Consorci Sanitari del Maresme', 'Encarregat de la gestió de l\'Hospital de Mataró, l\'execució d\'activitats hospitalàries, assistencials, preventives, rehabilitadores, docents i d\'investigació al servei de la població de l\'àmbit sanitari del Maresme i la seva àrea sanitària d\'influència.', 'POINT (2.4290771274211 41.5558472180467)', '41.5558472180467', '2.42907712742110'),
('Centre Geriàtric del Maresme', 'Carrer de Lepant, 13. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Atenció sociosanitària', 'Hestia Maresme', 'POINT (2.4442881090616 41.5359172868374)', '41.5359172868374', '2.44428810906160'),
('El Mirador', 'Carrer del Capcir, 90. 08304 Mataró (BARCELONA)', 'Serveis socials', 'Centres residencials per a gent gran', 'Centre residencial per a gent gran', 'POINT (2.46559633152572 41.5531939809243)', '41.5531939809243', '2.46559633152572'),
('Residència Geriàtrica Laia', 'Carrer de Miquel Biada, 45. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Centres residencials per a gent gran', 'Geriatria', 'POINT (2.43715182829026 41.5377725881664)', '41.5377725881664', '2.43715182829026'),
('Centre de Dia Llar Sant Marc', 'Camí Ral, 357. 08301 Mataró (BARCELONA)', 'Serveis socials', 'Centres de Dia per a la gent gran', 'Residència', 'POINT (2.44540032799841 41.5375133468161)', '41.5375133468161', '2.44540032799841'),
('Registre de la Propietat núm. 2 i 4', 'La Rambla, 34. 08302 Mataró (BARCELONA)', 'Altres organismes', 'Registre de la Propietat', 'Registre Propietat', 'POINT (2.44381046187033 41.536986327268)', '41.5369863272680', '2.44381046187033'),
('Casa de la Música Popular', 'Carrer de Manuel Serra i Moret, 6. 08302 Mataró (BARCELONA)', 'Cultura i Oci', 'Sales de concerts i espectacles', 'Sala de concerts i discoteca', 'POINT (2.43149378398336 41.5335257183919)', '41.5335257183919', '2.43149378398336'),
('Cementiri de les Valls', 'Carrer de Galícia, 207. 08304 Mataró (BARCELONA)', 'Serveis funeraris', 'Cementiris', 'Cementiri municipal', 'POINT (2.42679613807806 41.5572245622245)', '41.5572245622245', '2.42679613807806'),
('Cementiri dels Caputxins', 'Passatge de Josep Samsó, 1. 08304 Mataró (BARCELONA)', 'Serveis funeraris', 'Cementiris', 'Cementiri Municipal', 'POINT (2.44593865792074 41.5484227086816)', '41.5484227086816', '2.44593865792074'),
('Parròquia de la Mare de Déu de l\'Esperança', 'Passeig dels Molins, 67. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Església Catòlica', 'POINT (2.44520771887967 41.5482481657)', '41.5482481657000', '2.44520771887967'),
('Església de Filadèlfia', 'Ronda de Francesc Macià, 103. 08302 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Evangèlica', 'Centre de Culte evangèlic', 'POINT (2.4345190321936 41.5358081090341)', '41.5358081090341', '2.43451903219360'),
('Mesquita Al Ansar', 'Carrer de l\'Energia, 11. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Mesquites', 'Centre de Culte Islàmic', 'POINT (2.45266658136745 41.5514321363963)', '41.5514321363963', '2.45266658136745'),
('Grup ENHER - Servei d\'atenció al públic', 'Carretera de Mata, 89. 08304 Mataró (BARCELONA)', 'Companyies de subministrament', 'Llum', 'Companyia serveis d\'electricitat', 'POINT (2.45317983654373 41.5494821263055)', '41.5494821263055', '2.45317983654373'),
('Centre de Recursos Pedagògics (CRP) del Maresme I', 'Carrer d\'Onofre Arnau, 32. 08301 Mataró (BARCELONA)', 'Educació', 'Altres -oficines d\'educació-', 'Dóna servei al professorat de les escoles i instituts de Mataró, diferents recursos pedagògics per a la seva tasca educativa', 'POINT (2.44497665220719 41.5427254426021)', '41.5427254426021', '2.44497665220719'),
('Centre de Salut Mental i Adiccions', 'Carretera de Cirera, 240. Mataró (BARCELONA)', 'Serveis sanitaris', 'Salut mental i adiccions', 'PASS. Salut Mental d\'Adults.', 'POINT (2.42884630174003 41.5563100261694)', '41.5563100261694', '2.42884630174003'),
('Sala Cabanyes', 'La Riera, 114. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Arts escèniques', 'Secció teatral del Centre Catòlic', 'POINT (2.44359734497201 41.5423377234979)', '41.5423377234979', '2.44359734497201'),
('Residència Torre Llauder (Càritas)', 'Carrer de Sant Valentí, 19. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Centres residencials per a gent gran', 'Centre residencial per a la gent gran', 'POINT (2.43639943151168 41.5318048685207)', '41.5318048685207', '2.43639943151168'),
('Clos arqueològic de Torre Llauder', 'Carrer de Javier Castaños, 175. Mataró (BARCELONA)', 'Cultura i Oci', 'Museus', 'Clos arqueològic de Torre Llauder - Museu de Mataró', 'POINT (2.43404065401684 41.5315834934551)', '41.5315834934551', '2.43404065401684'),
('Registre Civil', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Registre Civil', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Jutjats - Fiscalia d\'Àrea', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Àrea de Mataró-Arenys de Mar', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Museu Arxiu de Santa Maria', 'Carrer de la Beata Maria, 3. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Museus', 'Museu Arxiu - Centre d\'Estudis Locals de Mataró', 'POINT (2.44681355381292 41.5406379411983)', '41.5406379411983', '2.44681355381292'),
('Centre Atlètic Laietàina', 'Torrent de la Llebreta, 21. 08304 Mataró (BARCELONA)', 'Esports', 'Centres esportius', 'Entitat Esportiva', 'POINT (2.43990503369063 41.5716945001824)', '41.5716945001824', '2.43990503369063'),
('Centre de Dia Sant Josep', 'Muralla de Sant Llorenç, 9. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Centres de Dia per a la gent gran', 'Centre residencial per a la gent gran', 'POINT (2.44355670414963 41.5390186909245)', '41.5390186909245', '2.44355670414963'),
('Escola Bressol municipal Cerdanyola', 'Carrer del Pedraforca, 2. Mataró (BARCELONA)', 'Educació', 'Escola Bressol municipal', 'Primer cicle d\'educació infantil (0-3 anys)', 'POINT (2.42808394498501 41.5364142666653)', '41.5364142666653', '2.42808394498501'),
('Farmàcia Parc Central', 'Ronda d\'Alfons X el Savi, 18. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a diumenges de 9:00h a 22:00h', 'POINT (2.4436535103918 41.5451185686418)', '41.5451185686418', '2.44365351039180'),
('Jutjat d\'instrucció núm. 3', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Instrucció', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Ensenyament concertat GEM (infantil)', 'Passeig d\'Antoni Martí Cabanellas, 25. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Centre concertat primer cicle d\'educació infantil (0-3 anys)', 'POINT (2.44501408249535 41.5466123151562)', '41.5466123151562', '2.44501408249535'),
('Llar d\'infants Snoopy', 'Carrer de Sant Joan Bosco, 25. 08303 Mataró (BARCELONA)', 'Educació', 'Llars d\'infants privades', 'Centre d\'educació infantil llar d\'infants', 'POINT (2.4242654733759 41.5394528024521)', '41.5394528024521', '2.42426547337590'),
('Servei d\'Intervenció', 'Carrer El Carreró, 15. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', NULL, 'POINT (2.44522582356204 41.5400580336859)', '41.5400580336859', '2.44522582356204'),
('Servei de la Policia Local', 'Plaça de Granollers, 11. 08304 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Gestió de l\'Espai Públic', NULL, 'POINT (2.43570448507209 41.5408819219977)', '41.5408819219977', '2.43570448507209'),
('Servei de Llicències i Disciplina d\'Obres i Activitats', 'Carrer de Pablo Iglesias, 63. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Desenvolupament Econòmic i Territori', NULL, 'POINT (2.43237131091186 41.5314108109751)', '41.5314108109751', '2.43237131091186'),
('Direcció d\'Ocupació i Promoció Econòmica', 'Carrer de Francisco d\'Herrera, 70. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Desenvolupament Econòmic i Territori', 'Organisme Autònom Municipal per a la promoció  econòmica de la ciutat', 'POINT (2.45346857850506 41.5435980128769)', '41.5435980128769', '2.45346857850506'),
('Casal Municipal de la Gent Gran del Parc', 'Avinguda del Corregiment de Mataró, 28. 08304 Mataró (BARCELONA)', 'Casals', 'Casals per a la gent gran', NULL, 'POINT (2.44020482901614 41.5453677681449)', '41.5453677681449', '2.44020482901614'),
('Casal Municipal de la Gent Gran de Molins', 'Carrer de la Mare de Déu dels Àngels, 16. 08304 Mataró (BARCELONA)', 'Casals', 'Casals per a la gent gran', NULL, 'POINT (2.4423306843322 41.5500765761548)', '41.5500765761548', '2.44233068433220'),
('Casal Municipal de la Gent Gran de Cirera', 'Riera de Cirera, 59. 08304 Mataró (BARCELONA)', 'Casals', 'Casals per a la gent gran', NULL, 'POINT (2.43842575507495 41.5502937035717)', '41.5502937035717', '2.43842575507495'),
('Centre de Formació d\'Adults Tarongers', 'Carrer de la Mare de Déu de La Cisa, 80. 08303 Mataró (BARCELONA)', 'Educació', 'Centres de Formació d\'Adults', 'Centre de Formació d\'Adults', 'POINT (2.42471968698924 41.5362232334007)', '41.5362232334007', '2.42471968698924'),
('Farmàcia Soriano', 'Carrer de Juan Sebastián Elcano, 2. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a diumenges de 9:00h a 22:00h', 'POINT (2.435829801543 41.5360888877241)', '41.5360888877241', '2.43582980154300'),
('Farmàcia de la Peña', 'La Rambla, 16. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a diumenges de 9:00h a 22:00h', 'POINT (2.44418409510273 41.5374354689708)', '41.5374354689708', '2.44418409510273'),
('M|A|C  Mataró Art Contemporani', 'Carrer de Sant Josep, 9. 08302 Mataró (BARCELONA)', 'Cultura i Oci', 'Museus', 'Museus', 'POINT (2.44357677380937 41.539617014118)', '41.5396170141180', '2.44357677380937'),
('Mercat de Cirera - Molins', 'Riera de Cirera, 30. 08304 Mataró (BARCELONA)', 'Mercats i Centres comercials', 'Mercats setmanals', 'Mercat setmanal equipament de la persona i la llar, fruita i verdura.', 'POINT (2.43962342884788 41.5498124144448)', '41.5498124144448', '2.43962342884788'),
('Oficina de Gestió Tributària de la Diputació de Barcelona', 'Ronda de Mossèn Jacint Verdaguer, 77. Mataró (BARCELONA)', 'Altres administracions', 'Gestió Tributària', 'Gestió Tributària de la Diputació de Barcelona', 'POINT (2.43744419208088 41.545133434062)', '41.5451334340620', '2.43744419208088'),
('Llar d\'infants La Fada', 'Ronda d\'Alfons X el Savi, 131. 08304 Mataró (BARCELONA)', 'Educació', 'Llars d\'infants privades', 'Centre d\'educació infantil llar d\'infants', 'POINT (2.4500196942124 41.5458059911817)', '41.5458059911817', '2.45001969421240'),
('Llar d\'infants Petit Príncep', 'Carrer de Llauder, 49. 08302 Mataró (BARCELONA)', 'Educació', 'Llars d\'infants privades', 'Centre d\'educació infantil llar d\'infants', 'POINT (2.4404232944486 41.5350017907492)', '41.5350017907492', '2.44042329444860'),
('Cos Nacional de Policia', 'Avinguda de la Gatassa, 15. 08303 Mataró (BARCELONA)', 'Seguretat', 'Comissaries', 'Policia Nacional', 'POINT (2.4302257801198 41.5370075679383)', '41.5370075679383', '2.43022578011980'),
('REPSOL', 'Carrer de l\'Energia, 2. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de servei', 'POINT (2.45439367993226 41.5508333170565)', '41.5508333170565', '2.45439367993226'),
('Shell', 'Carrer de la Teixidora, 37. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de servei', 'POINT (2.42777521739382 41.5261850022129)', '41.5261850022129', '2.42777521739382'),
('REPSOL - Via Europa', 'Via d\'Europa, 220. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de servei', 'POINT (2.43220589113599 41.551156584912)', '41.5511565849120', '2.43220589113599'),
('Centre de Formació d\'Adults Can Noè', 'Carrer de Josep Punsola, 47. 08304 Mataró (BARCELONA)', 'Educació', 'Centres de Formació d\'Adults', 'Centre de Formació d\'Adults', 'POINT (2.45093178809748 41.5489521736571)', '41.5489521736571', '2.45093178809748'),
('Ermita de Santa Rita', 'Camí de Santa Rita, 11. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Església Catòlica', 'POINT (2.44628847670582 41.5645460884053)', '41.5645460884053', '2.44628847670582'),
('Convent de les Caputxines', 'L\'Esplanada, 59. 08301 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Església Catòlica', 'POINT (2.44489391851335 41.5448367425674)', '41.5448367425674', '2.44489391851335'),
('Ermita de Sant Miquel de Mata', 'Veïnat de Mata, 29. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Església Catòlica', 'POINT (2.46389394418611 41.5690680849828)', '41.5690680849828', '2.46389394418611'),
('Ermita de Sant Simó', 'Camí Ral, 6. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Església Catòlica', 'POINT (2.45760935807416 41.5417998340329)', '41.5417998340329', '2.45760935807416'),
('Bombers', 'Via Sèrgia, 95. 08302 Mataró (BARCELONA)', 'Seguretat', 'Bombers', 'Seguretat ciutadana', 'POINT (2.42268997447916 41.5323254393752)', '41.5323254393752', '2.42268997447916'),
('Pista Poliesportiva Municipal de Casal de Joves', 'Plaça d\'Espanya, 1. 08304 Mataró (BARCELONA)', 'Esports', 'Pistes i Poliesportius', 'Zona Esportiva Municipal', 'POINT (2.44259982930665 41.5450167965494)', '41.5450167965494', '2.44259982930665'),
('Poliesportiu Municipal Eusebi Millán', 'Carrer de Sant Cugat, 146. 08302 Mataró (BARCELONA)', 'Esports', 'Pistes i Poliesportius', 'Activitat física per a centres escolars i per a gent gran. Entrenaments i competicions de bàsquet, futbol sala i aikido. Jocs Escolars.', 'POINT (2.43469517876113 41.5329303907244)', '41.5329303907244', '2.43469517876113'),
('Pista Poliesportiva Municipal de Cirera', 'Avinguda del Corregiment de Mataró, 51. 08304 Mataró (BARCELONA)', 'Esports', 'Pistes i Poliesportius', 'Poliesportiu Municipal.', 'POINT (2.43742949764703 41.5467116601878)', '41.5467116601878', '2.43742949764703'),
('Pista Poliesportiva Municipal La Llàntia', 'Carrer de la Verge de Guadalupe, 20. 08303 Mataró (BARCELONA)', 'Esports', 'Pistes i Poliesportius', 'Entrenaments i competicions de voleibol, futbol sala, bàsquet i handbol.', 'POINT (2.42781543831247 41.5470120539618)', '41.5470120539618', '2.42781543831247'),
('Casal Municipal de la Gent Gran de Cerdanyola', 'Avinguda de la Gatassa, 52. 08303 Mataró (BARCELONA)', 'Casals', 'Casals per a la gent gran', NULL, 'POINT (2.42838842212477 41.5375804396233)', '41.5375804396233', '2.42838842212477'),
('Església de Santa Anna', 'La Rambla, 1. 08302 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Església Catòlica', 'POINT (2.44497956522745 41.5379096703938)', '41.5379096703938', '2.44497956522745'),
('Espai Municipal de Billar', 'Passeig de Carles Padrós, 12. 08304 Mataró (BARCELONA)', 'Esports', 'Altres -instal·lacions esportives-', 'Entitat Esportiva.', 'POINT (2.44252908163378 41.5453271865481)', '41.5453271865481', '2.44252908163378'),
('Centre de Desenvolupament Infantil Atenció Precoç (CDIAP)', 'Carrer d\'Enric Prat de la Riba, 73. 08301 Mataró (BARCELONA)', 'Serveis socials', 'Centres d\'Atenció a la infància', 'Educació especial per a infants de la Fundació Iluro', 'POINT (2.45064576093597 41.5441365708011)', '41.5441365708011', '2.45064576093597'),
('Llar Santa Maria Assumpta', 'Ronda d\'Alfons XII, 127. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Centres per a persones amb discapacitat', 'Educació especial', 'POINT (2.43666688249705 41.537103712195)', '41.5371037121950', '2.43666688249705'),
('Escola Germanes Bertomeu (educació primària)', 'Carrer de Colòmbia, 15. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d\'educació infantil', 'POINT (2.44841688521643 41.5483119416304)', '41.5483119416304', '2.44841688521643'),
('Escola Josep Manuel Peramàs', 'Carrer de Josep Monserrat Cuadrada, 11. 08303 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d¿educació infantil \r\nEducació primària', 'POINT (2.42923662359535 41.5386433260952)', '41.5386433260952', '2.42923662359535'),
('Escola Bressol municipal Les Figueretes', 'Baixada de les Figueretes, 1. 08301 Mataró (BARCELONA)', 'Educació', 'Escola Bressol municipal', 'Primer cicle d\'educació infantil (0-3 anys)', 'POINT (2.44832796708389 41.5404221145739)', '41.5404221145739', '2.44832796708389'),
('Institut Laia L\'Arquera', 'Carrer de Ciutat Freta, 26. 08302 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Secundari', 'Centre públic d\'educació secundària, batxillerat. Institut Pla d\'en Boet', 'POINT (2.43304452616676 41.5339759369433)', '41.5339759369433', '2.43304452616676'),
('Ensenyament concertat Maristes Valldemia', 'La Riera, 124. Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Centre concertat primer cicle d\'esducació infantil (3-12 anys), educació secundària obligatòria (12-16 anys) i batxillerat', 'POINT (2.44344801328552 41.5425938417271)', '41.5425938417271', '2.44344801328552'),
('Institut Alexandre Satorras', 'Avinguda del Velòdrom, 37. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Secundari', 'Centre públic d\'educació secundària, batxillerat i cicles formatius de grau mitjà i superior', 'POINT (2.44003982931787 41.5468140834722)', '41.5468140834722', '2.44003982931787'),
('Centre de Formació d\'Adults Can Marfà', 'Plaça dels Bous, 5. 08301 Mataró (BARCELONA)', 'Educació', 'Centres de Formació d\'Adults', 'Centre de Formació d\'Adults', 'POINT (2.44459364300271 41.5421916817148)', '41.5421916817148', '2.44459364300271'),
('Ensenyament concertat Escola Pia Santa Anna (primària)', 'La Rambla, 1. 08302 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Centre concertat Primària.', 'POINT (2.44497956522745 41.5379096703938)', '41.5379096703938', '2.44497956522745'),
('Servei de Promoció de Ciutat i Comerç', 'Carrer de Francisco d\'Herrera, 70. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Desenvolupament Econòmic i Territori', 'Organització de certamens firals. Desenvolupament d\'accions i programes per a la promoció dels sectors econòmics. Gestió dels mercats municipals', 'POINT (2.4534685785051 41.5435980128725)', '41.5435980128725', '2.45346857850510'),
('Piscina municipal', 'Avinguda del Velòdrom, 25. 08304 Mataró (BARCELONA)', 'Esports', 'Altres -instal·lacions esportives-', 'Cursets de natació i Activitats aquàtiques per a infants, adults i gent gran.', 'POINT (2.44061159030405 41.5465324595831)', '41.5465324595831', '2.44061159030405'),
('Aigües de Mataró, S.A', 'Carrer de Pitàgores, 1. 08304 Mataró (BARCELONA)', 'Administració municipal', 'Aigües de Mataró', 'Empresa Pública Municipal', 'POINT (2.43735615908018 41.5515509445465)', '41.5515509445465', '2.43735615908018'),
('Servei de Benestar Social', 'Avinguda de Josep Puig i Cadafalch, 101. 08303 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', 'Encarregat dels temes de serveis socials de competència municipal', 'POINT (2.42866332668914 41.5400818317203)', '41.5400818317203', '2.42866332668914'),
('Can Serra. Museu de Mataró', 'Carrer El Carreró, 17. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Museus', 'Museus', 'POINT (2.44536357696673 41.5400896632184)', '41.5400896632184', '2.44536357696673'),
('Fundació Tecnocampus Mataró-Maresme', 'Avinguda d\'Ernest Lluch, 32. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Fundació Tecnocampus Mataró-Maresme', 'Emparat en l\'Ajuntament de Mataró, ens dinamitzador i coordinador de les propostes i projectes per al desenvolupament de la transformació de la ciutat vers la ciutat del coneixement.', 'POINT (2.43468298017362 41.5283283221368)', '41.5283283221368', '2.43468298017362'),
('Centre de Formació Prevenció (CFP)', 'Carrer de Sant Antoni, 86. 08301 Mataró (BARCELONA)', 'Serveis socials', 'Centres per a persones amb discapacitat', 'Centre d\'assitència a infants i joves amb dificultats socials, formatives i laborals. Malalties i disminucions, salut mental al maresme.', 'POINT (2.44838861162996 41.5362963613948)', '41.5362963613948', '2.44838861162996'),
('Llar Sant Emili', 'Carrer de Barcelona, 16. 08301 Mataró (BARCELONA)', 'Serveis socials', 'Centres per a persones amb discapacitat', 'Geriatria', 'POINT (2.4454647888248 41.5384337131153)', '41.5384337131153', '2.44546478882480'),
('PASS Serveis de Prevenció, Assistencial i Sociosanitaris', 'Carrer de l\'Hospital, 31. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Altres -serveis sanitaris-', 'Atenció sanitària especial', 'POINT (2.44893079329799 41.5396827222719)', '41.5396827222719', '2.44893079329799'),
('Ensenyament concertat Escola Pia Santa Anna (infantil)', 'El Torrent, 62. 08302 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Centre concertat cicle d\'educació infantil.', 'POINT (2.44186146350633 41.5390225154163)', '41.5390225154163', '2.44186146350633'),
('Ensenyament concertat Mare de Déu de Lourdes', 'Carrer de Ramon Llull, 5. 08302 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Segon cicle d\'educació infantil \r\nEducació primària\r\nEducació Secundària Obligatòria (ESO)', 'POINT (2.43841165248279 41.5398990311203)', '41.5398990311203', '2.43841165248279'),
('Hostal Isla Cristina', 'Plaça d\'Isla Cristina, 1. 08303 Mataró (BARCELONA)', 'Allotjament', 'Hostals', 'Hostal', 'POINT (2.4250222838201 41.5402225248109)', '41.5402225248109', '2.42502228382010'),
('Pensió Sant Antoni', 'Carrer de Sant Antoni, 37. 08301 Mataró (BARCELONA)', 'Allotjament', 'Pensions', 'Pensió', 'POINT (2.44714528693786 41.537080518077)', '41.5370805180770', '2.44714528693786'),
('Hotel Castell de Mata', 'Veïnat de Mata, 165. 08304 Mataró (BARCELONA)', 'Allotjament', 'Hotels', 'Hotel', 'POINT (2.46737420173739 41.5461481080399)', '41.5461481080399', '2.46737420173739'),
('Ensenyament concertat Meritxell', 'Carrer d\'En Passet, 16. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Centre concertat primer cicle d\'esducació infantil (3-12 anys), educació secundària obligatòria (12-16 anys) i batxillerat', 'POINT (2.46417343354802 41.5560338091108)', '41.5560338091108', '2.46417343354802'),
('Sala d\'Exposicions de l\'Associació Sant Lluch per l\'Art Contemporani', 'Carrer de Bonaire, 25. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Sales d\'exposicions i galeries d\'art', 'Associació Cultural', 'POINT (2.4454094940653 41.5415804621029)', '41.5415804621029', '2.44540949406530'),
('Ateneu de la Fundació Iluro', 'La Riera, 92. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Sales d\'exposicions i galeries d\'art', 'Sales d\'Exposicions.', 'POINT (2.44410027520924 41.5413339717504)', '41.5413339717504', '2.44410027520924'),
('Biblioteca Pública Pompeu Fabra', 'Passatge de Can Bonminyó, 6. 08302 Mataró (BARCELONA)', 'Cultura i Oci', 'Biblioteques', 'Accés al seu fons documental (en suport paper, digital, sonor i multimèdia) i múltiples serveis a l\'usuari, a més a més d\'una àmplia programació d\'activitats dins l\'àmbit de la lectura i la cultura.', 'POINT (2.43360036342798 41.538209085763)', '41.5382090857630', '2.43360036342798'),
('Càmping Barcelona', 'Veïnat de Mata, 108. Mataró (BARCELONA)', 'Allotjament', 'Càmpings', 'Càmping', 'POINT (2.48338469171784 41.55045403781)', '41.5504540378100', '2.48338469171784'),
('Casal Municipal de la Gent Gran de la Llàntia', 'Carrer Nou de La Mercè, 60. 08303 Mataró (BARCELONA)', 'Casals', 'Casals per a la gent gran', NULL, 'POINT (2.4283514671966 41.5464555065839)', '41.5464555065839', '2.42835146719660'),
('Gas Natural/ FENER SOLUCIONES S.L', 'El Torrent, 19. 08302 Mataró (BARCELONA)', 'Companyies de subministrament', 'Gas', 'Servei de gas', 'POINT (2.44118970626253 41.5397418260447)', '41.5397418260447', '2.44118970626253'),
('CAP Rocafonda - ICS', 'Ronda de Rafael Estrany, 8. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Centres d\'Atenció Primària (CAP)', 'Centre d\'atenció primària de l\'Institut Català de la Salut.', 'POINT (2.4517099308384 41.5499775794977)', '41.5499775794977', '2.45170993083840'),
('Casal de Gent Gran Jaume Terradas', 'Carrer d\'Argentona, 59. 08302 Mataró (BARCELONA)', 'Casals', 'Casals per a la gent gran', 'Equipament cívic orientat al benestar de la gent gran. Promou el civisme, les relacions personals i intergeneracionals, el creixement de la persona i la seva participació social i comunitària.', 'POINT (2.44119956361732 41.540735944455)', '41.5407359444550', '2.44119956361732'),
('Casal de Gent Gran Mataró', 'Avinguda de la Gatassa, 43. 08303 Mataró (BARCELONA)', 'Casals', 'Casals per a la gent gran', 'Residència. Equipament cívic orientat al benestar de la gent gran. Promou el civisme, les relacions personals i intergeneracionals, el creixement de la persona i la seva participació social i comunitària.', 'POINT (2.42891617818552 41.5372202443217)', '41.5372202443217', '2.42891617818552'),
('Cambra de la Propietat Urbana de Mataró i del Maresme', 'La Riera, 161. 08302 Mataró (BARCELONA)', 'Altres organismes', 'Cambra de la Propietat', 'Cambra de la Propietat Urbana', 'POINT (2.44264458441197 41.5435050772184)', '41.5435050772184', '2.44264458441197'),
('Mercat de Cerdanyola', 'Carrer d\'Atenes, 11. 08303 Mataró (BARCELONA)', 'Mercats i Centres comercials', 'Mercats fixos privats', 'Mercat privat', 'POINT (2.42351484419331 41.5358328642848)', '41.5358328642848', '2.42351484419331'),
('Mercat de l\'Escorxador', 'Carrer d\'Enric Prat de la Riba, 103. 08301 Mataró (BARCELONA)', 'Mercats i Centres comercials', 'Mercats setmanals', 'Mercat setmanal equipament de la persona i la llar, fruita i verdura.', 'POINT (2.45302415213127 41.5451459282114)', '41.5451459282114', '2.45302415213127'),
('Mercat del Pla d\'en Boet (entorns polígon industrial)', 'Carrer de Francesc Layret, 39. 08302 Mataró (BARCELONA)', 'Mercats i Centres comercials', 'Mercats setmanals', 'Mercat setmanal els dissabtes, equipament de la persona i la llar.', 'POINT (2.42952613140308 41.5326794281869)', '41.5326794281869', '2.42952613140308'),
('Jutjat d\'instrucció núm. 1', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Instrucció', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Mataró Bus', 'Carrer de Francesc Layret, 72. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Autobusos urbans', 'Bus urbà', 'POINT (2.43181922211872 41.530285642798)', '41.5302856427980', '2.43181922211872'),
('Centre de Dia Mataró Ferran Cañete', 'Carrer del Tennis, 33. 08304 Mataró (BARCELONA)', 'Serveis socials', 'Centres de Dia per a la gent gran', 'Centre de dia', 'POINT (2.46016138448669 41.5559194256925)', '41.5559194256925', '2.46016138448669'),
('Residència Voramar', 'Carrer de Tordera, 8. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Centres residencials per a gent gran', 'centre de dia, geriàtric', 'POINT (2.43382850721645 41.5273917753807)', '41.5273917753807', '2.43382850721645'),
('Biblioteca Pública Antoni Comas', 'Carrer d\'Enric Prat de la Riba, 110. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Biblioteques', 'Accés al coneixement, la informació i l’oci, pretén ser el nexe d’unió entre els barris i les cultures que es troben al seu entorn (Rocafonda, El Palau, Les Santes-Escorxador i l’Havana)', 'POINT (2.45304406969035 41.5449951118624)', '41.5449951118624', '2.45304406969035'),
('Serveis Funeraris Cabré Junqueras, S.A', 'Carrer d\'Aristòtil, 37. 08304 Mataró (BARCELONA)', 'Serveis funeraris', 'Tanatoris', 'Tanatori de Mataró. Servei permanent', 'POINT (2.43416131905513 41.5517315383118)', '41.5517315383118', '2.43416131905513'),
('Agència d\'Atenció a les Persones amb Dependència', 'Avinguda de Josep Puig i Cadafalch, 101. 08303 Mataró (BARCELONA)', 'Serveis socials', 'Oficines de Serveis socials', 'Depenent del Servei de Sanitat i Serveis Socials', 'POINT (2.42866332668914 41.5400818317203)', '41.5400818317203', '2.42866332668914'),
('Aula de Teatre. Espais del Monumental', 'Carrer de Juan Meléndez Valdés, 2. 08302 Mataró (BARCELONA)', 'Cultura i Oci', 'Arts escèniques', 'Escola d\'ensenyaments teatrals', 'POINT (2.44222341186896 41.5436387704055)', '41.5436387704055', '2.44222341186896'),
('Institut Josep Puig i Cadafalch', 'Carrer de Sant Josep de Calassanç, 16. 08303 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Secundari', 'Centre públic d\'educació secundària, batxillerat i cicles formatius de grau mitjà i superior', 'POINT (2.42611683368701 41.5454291351965)', '41.5454291351965', '2.42611683368701'),
('Testimonis Cristians de Jehovà', 'Camí dels Caputxins, 43. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Testimonis Cristians de Jehovà', 'Centre de Culte Cristians de Jehovà', 'POINT (2.44478963528964 41.5501066494625)', '41.5501066494625', '2.44478963528964'),
('Soleret', 'Ronda dels Països Catalans, 45. 08304 Mataró (BARCELONA)', 'Cultura i Oci', 'Centres comercials', 'Galeries Centre Comercial. Can Soleret', 'POINT (2.44015916732809 41.5542946460627)', '41.5542946460627', '2.44015916732809'),
('PUMSA - Espai Firal - Parc Central', 'Camí de la Geganta, 2. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Aparcament de rotació', NULL, 'POINT (2.44048613397919 41.5443081425718)', '41.5443081425718', '2.44048613397919'),
('Farmàcia Serrano', 'Ronda de Leopoldo O\'donnell, 102. Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de 9:00h a 13:30h i de 16:30h a 20:30h.', 'POINT (2.43521801917037 41.5402923755759)', '41.5402923755759', '2.43521801917037'),
('Farmàcia Roca', 'Carrer Nou, 1. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de 8:30h a 20:30h. Dissabtes alterns de 9:00h a 13:30h i de 17:00h a 20:30h', 'POINT (2.44434364002969 41.5408904048498)', '41.5408904048498', '2.44434364002969'),
('Farmàcia Barberà', 'Carrer de la Gatassa, 10. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de 9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.42545393642396 41.5407187650984)', '41.5407187650984', '2.42545393642396'),
('Farmàcia Nogueras', 'Carrer de las Siete Partidas, 79. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de 9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.45384334480679 41.5459749197476)', '41.5459749197476', '2.45384334480679'),
('CAP II  El Maresme', 'Camí del Mig, 36. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Centres d\'Atenció Primària (CAP)', 'Centre d\'atenció primària de l\'Institut Català de la Salut', 'POINT (2.43014567041679 41.5364998295583)', '41.5364998295583', '2.43014567041679'),
('Servei de Gestió Econòmica i Administrativa', 'Carrer El Carreró, 15. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', NULL, 'POINT (2.44522582356204 41.5400580336859)', '41.5400580336859', '2.44522582356204'),
('Servei de Comunicació', 'La Riera, 48. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Presidència', NULL, 'POINT (2.4447776359659 41.539838959823)', '41.5398389598230', '2.44477763596590'),
('Promocions Urbanístiques Mataró S.A', 'Carrer de Pablo Iglesias, 63. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Promocions Urbanístiques de Mataró (PUMSA)', 'Empresa Municipal', 'POINT (2.43237131091186 41.5314108109751)', '41.5314108109751', '2.43237131091186'),
('Servei d\'Equipaments Municipals', 'Carrer de Comadaran, 1. 08304 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Gestió de l\'Espai Públic', 'Servei encarregat del manteniment de la ciutat', 'POINT (2.44847846536774 41.5630233886384)', '41.5630233886384', '2.44847846536774'),
('Club de Tenis Mataró', 'Carrer del Tennis, 19. 08304 Mataró (BARCELONA)', 'Esports', 'Centres esportius', 'Entitat Esportiva', 'POINT (2.4603012247441 41.5552166956595)', '41.5552166956595', '2.46030122474410'),
('Centre de Dia AFAM', 'Carrer de Carlemany, 10. 08303 Mataró (BARCELONA)', 'Serveis socials', 'Centres de Dia per a la gent gran', 'Centre de dia per a malalts d\'Alzheimer', 'POINT (2.42231597645857 41.5394977331117)', '41.5394977331117', '2.42231597645857'),
('Farmàcia Olivé-Gatassa', 'Avinguda de la Gatassa, 71. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h.', 'POINT (2.42774105874041 41.5377185579744)', '41.5377185579744', '2.42774105874041'),
('Servei d\'Ocupació Jove', 'Plaça de Miquel Biada, 5. 08301 Mataró (BARCELONA)', 'Serveis per a joves', 'Oficines d\'Atenció i informació per a joves', 'Servei adreçat a joves entre 16 i 25 anys que volen formar-se i trobar feina.', 'POINT (2.44487432289563 41.5334985803693)', '41.5334985803693', '2.44487432289563'),
('Centre de Dia Can Clement', 'Carrer de Joaquim Torres-García, 29. 08304 Mataró (BARCELONA)', 'Serveis socials', 'Centres de Dia per a la gent gran', 'Centre de dia', 'POINT (2.44637686562804 41.5532992685018)', '41.5532992685018', '2.44637686562804'),
('Deixalleria d\'en Pla d\'en Boet', 'Carrer de Francesc Layret, 74. 08302 Mataró (BARCELONA)', 'Residus', 'Deixelleries fixes', 'Deixalleria municipal', 'POINT (2.43209983963204 41.5301306806574)', '41.5301306806574', '2.43209983963204'),
('Jutjat de primera instància núm. 7', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Primera Instància', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Farmàcia Via', 'Carrer de Josep Punsola, 16. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de 9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.45105580782419 41.5480507635679)', '41.5480507635679', '2.45105580782419'),
('Farmàcia Romances', 'Ronda de Josep Tarradellas, 32. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de 9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.42144037132076 41.5368126914054)', '41.5368126914054', '2.42144037132076'),
('Centre Geriàtric Can Boada', 'Carrer dels Pirineus, 13. 08303 Mataró (BARCELONA)', 'Serveis socials', 'Centres residencials per a gent gran', 'Geriatria centre de dia', 'POINT (2.43382739192187 41.5410627417063)', '41.5410627417063', '2.43382739192187'),
('Mossos d\'Esquadra', 'Avinguda de Lluís Companys, 87. 08302 Mataró (BARCELONA)', 'Seguretat', 'Comissaries', 'Comissaria de la Policia de la Generalitat', 'POINT (2.43334305027864 41.5319479731172)', '41.5319479731172', '2.43334305027864'),
('Teatre Monumental', 'La Riera, 169. 08302 Mataró (BARCELONA)', 'Cultura i Oci', 'Arts escèniques', 'Equipament municipal per la celebració d\'espectacles de teatre, música i dansa. També hi ha programació estable de cinema en versió original.', 'POINT (2.44251803587888 41.5438125302884)', '41.5438125302884', '2.44251803587888'),
('Oficina Tècnica de Joventut', 'Plaça de Miquel Biada, 5. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', 'Servei encarregat dels temes relacionats amb els joves i les dones a la ciutat', 'POINT (2.44487432289565 41.5334985803649)', '41.5334985803649', '2.44487432289565'),
('EOI del Maresme', 'Carrer d\'Onofre Arnau, 32. 08301 Mataró (BARCELONA)', 'Educació', 'Escola Oficial d\'Idiomes', 'Centre públic d\'ensenyament d\'idiomes moderns a adults a nivell no universitat (EOI)', 'POINT (2.44497665220717 41.5427254426065)', '41.5427254426065', '2.44497665220717'),
('Servei de Protecció Civil', 'Plaça de Granollers, 11. 08304 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Gestió de l\'Espai Públic', NULL, 'POINT (2.43570448507209 41.5408819219977)', '41.5408819219977', '2.43570448507209'),
('Servei de Secretaria General', 'La Riera, 48. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', 'Ajuntament de Mataró', 'POINT (2.4447776359659 41.539838959823)', '41.5398389598230', '2.44477763596590'),
('Jutjat del Penal núm.2', 'Carrer de Casto Méndez Núñez, 30. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Penal', 'POINT (2.44044078589585 41.5329873238481)', '41.5329873238481', '2.44044078589585'),
('Jutjat d\'instrucció núm. 4', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Instrucció', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Palau Municipal d\'Esports Josep Mora', 'Passeig de Carles Padrós, 14. 08304 Mataró (BARCELONA)', 'Esports', 'Pistes i Poliesportius', 'Entrenaments i competició de bàsquet.', 'POINT (2.44248376394851 41.5456690804773)', '41.5456690804773', '2.44248376394851'),
('Camp Municipal de Futbol Camí del Mig', 'Carrer de la Marató, 91. 08303 Mataró (BARCELONA)', 'Esports', 'Camps esportius municipals', NULL, 'POINT (2.42458236421121 41.535473703664)', '41.5354737036640', '2.42458236421121'),
('Zona Esportiva Municipal de Cerdanyola', 'Carrer de la Marató, 91. 08303 Mataró (BARCELONA)', 'Esports', 'Zones esportives i Palaus d\'esport', NULL, 'POINT (2.42458236421121 41.535473703664)', '41.5354737036640', '2.42458236421121'),
('Oficina de Turisme', 'La Riera, 48. 08301 Mataró (BARCELONA)', 'Turisme', 'Oficina de turisme', 'Promoció i suport al sector turístic', 'POINT (2.4447776359659 41.539838959823)', '41.5398389598230', '2.44477763596590'),
('Centre de Dia Sent Actiu', 'Carrer de Roger de Flor, 40. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Centres de Dia per a la gent gran', 'Centre de dia', 'POINT (2.43870220566383 41.541717888286)', '41.5417178882860', '2.43870220566383'),
('Pistes Municipals de Petanca Rocafonda', 'Ronda de Rafael Estrany, 24. 08304 Mataró (BARCELONA)', 'Esports', 'Pistes de petanca', 'Entrenaments i competició de petanca.', 'POINT (2.45034268946787 41.5511311360533)', '41.5511311360533', '2.45034268946787'),
('Centre Residencial d\'Acció Educativa Pere Quart', 'Carrer d\'Antoni de Capmany, 52. 08301 Mataró (BARCELONA)', 'Serveis socials', 'Centres residencials per a gent gran', 'Acollida menors tutelats', 'POINT (2.4528566774944 41.5423198212156)', '41.5423198212156', '2.45285667749440'),
('Tres Roques', 'Plaça del Canigó, 7. 08303 Mataró (BARCELONA)', 'Educació', 'Centres de Formació Permanent', 'Centre de Formació Permanent', 'POINT (2.42808286942019 41.543454316385)', '41.5434543163850', '2.42808286942019'),
('Testimonis Cristians de Jehovà', 'Carrer de Sant Cugat, 97. 08302 Mataró (BARCELONA)', 'Serveis religiosos', 'Testimonis Cristians de Jehovà', 'Testimonis Cristians de Jehovà', 'POINT (2.43737560991895 41.5342561660951)', '41.5342561660951', '2.43737560991895'),
('Correus i Telègrafs (seu nº2)', 'Carrer de Calassanç Marquès, 14. 08303 Mataró (BARCELONA)', 'Administració de l\'Estat', 'Oficines de Correus', 'Sucursal de correus', 'POINT (2.42603844508834 41.5406629691384)', '41.5406629691384', '2.42603844508834'),
('PUMSA - Plaça de les Tereses', 'Plaça de les Tereses, 42. Mataró (BARCELONA)', 'Mobilitat', 'Aparcament de rotació', 'Pàrking municipal de rotació', 'POINT (2.44179859427145 41.5385801305622)', '41.5385801305622', '2.44179859427145'),
('Centre Cívic Cirera', 'Carrer de Cadis, 1. 08304 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Cívics', 'Oficina d\'Atenció Ciutadana (OFIAC)', 'POINT (2.43416154241158 41.5469990835442)', '41.5469990835442', '2.43416154241158'),
('Llar d\'infants Peques', 'Carrer El Rierot, 2. 08301 Mataró (BARCELONA)', 'Educació', 'Llars d\'infants privades', 'Centre d\'educació infantil llar d\'infants', 'POINT (2.44739392250977 41.5437968395679)', '41.5437968395679', '2.44739392250977'),
('Estadi Municipal d\'Atletisme', 'Carretera de Cirera, 250. 08304 Mataró (BARCELONA)', 'Esports', 'Altres -instal·lacions esportives-', 'Entrenaments i competicions d\'atletisme.', 'POINT (2.42876644270197 41.5569627845167)', '41.5569627845167', '2.42876644270197'),
('Convent de les Serventes de Maria', 'Carrer d\'Onofre Arnau, 33. 08301 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Serveis assistencials', 'POINT (2.44470125445889 41.5427504044969)', '41.5427504044969', '2.44470125445889'),
('Complex Esportiu Joan Serra', 'Passeig Marítim, 92. 08302 Mataró (BARCELONA)', 'Esports', 'Centres esportius', 'Complex esportiu Joan Serra', 'POINT (2.45265128956323 41.5378275412627)', '41.5378275412627', '2.45265128956323'),
('Llar d\'infants ANCA', 'Carrer de Créteil, 41. 08304 Mataró (BARCELONA)', 'Educació', 'Llars d\'infants privades', 'Centre d\'educació infantil llar d\'infants (parla en anglès)', 'POINT (2.44737131375901 41.5540624034908)', '41.5540624034908', '2.44737131375901'),
('Can Morros', 'Carrer de l\'Estadi, 40. 08303 Mataró (BARCELONA)', 'Mobilitat', 'Aparcament de rotació', 'Concisa-Font-Leri, S.A.', 'POINT (2.42537015931438 41.5368063619819)', '41.5368063619819', '2.42537015931438'),
('CAP Ronda Joan Prim - ICS', 'Ronda de Joan Prim, 35. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Centres d\'Atenció Primària (CAP)', 'Centre d\'atenció primària de l\'Institut Català de la Salut', 'POINT (2.43588676606596 41.5386732249864)', '41.5386732249864', '2.43588676606596'),
('CAP Mataró Centre - CSdM', 'Camí Ral, 208. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Centres d\'Atenció Primària (CAP)', 'Centre d\'atenció primària del Consorci Sanitari del Maresme.', 'POINT (2.4499391722225 41.5394749549434)', '41.5394749549434', '2.44993917222250'),
('Farmàcia Ferré', 'Ronda de Francesc Macià, 61. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de 9:00h a 13:30h i de 16:30h a 20:30h.', 'POINT (2.43630212205451 41.5343631839818)', '41.5343631839818', '2.43630212205451'),
('GALP', 'Camí del Sant Crist, 63. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de Servei', 'POINT (2.42998952756651 41.5299813224648)', '41.5299813224648', '2.42998952756651'),
('E.S. GALP', 'Carretera de Barcelona, 50. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de Servei', 'POINT (2.43103768980308 41.5268779903589)', '41.5268779903589', '2.43103768980308'),
('REPSOL - Mataró I', 'Avinguda de Josep Puig i Cadafalch, 284. 08303 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de Servei', 'POINT (2.42110245117857 41.5412352695292)', '41.5412352695292', '2.42110245117857'),
('Casal Municipal de la Gent Gran de l\'Havana', 'Camí Ral, 163. 08301 Mataró (BARCELONA)', 'Casals', 'Casals per a la gent gran', NULL, 'POINT (2.45096393198029 41.5397831547868)', '41.5397831547868', '2.45096393198029'),
('Biblioteca Popular de la Fundació Iluro', 'Carrer d\'En Pujol, 19. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Biblioteques', 'Sala de lectura, sala infantil, sala d\'estudi i col·lecció Mataró i El Maresme', 'POINT (2.44573386053012 41.5393162940535)', '41.5393162940535', '2.44573386053012'),
('Llar d\'infants La Caseta', 'Carrer de Bonaire, 14. 08301 Mataró (BARCELONA)', 'Educació', 'Llars d\'infants privades', 'Centre d\'educació infantil llar d\'infants', 'POINT (2.44529154905058 41.5415095077726)', '41.5415095077726', '2.44529154905058');
INSERT INTO `equipamientos` (`NOM`, `ADRECA`, `CATEGORIA`, `TIPUS`, `DESCRIPCIO`, `WKT`, `LAT`, `LNG`) VALUES
('Institut Damià Campeny', 'Plaça dels Bous, 5. 08301 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Secundari', 'Centre públic d\'educació secundària i batxillerat', 'POINT (2.44459364300271 41.5421916817148)', '41.5421916817148', '2.44459364300271'),
('Camp Municipal de Futbol Vista Alegre-Molins', 'Carrer d\'Almeria, 40. 08304 Mataró (BARCELONA)', 'Esports', 'Camps esportius municipals', 'Entrenaments i competició de futbol.', 'POINT (2.44470132381894 41.5537083173931)', '41.5537083173931', '2.44470132381894'),
('Camp Municipal de Futbol Can Xalant', 'Carrer de Pablo Iglesias, 64. 08302 Mataró (BARCELONA)', 'Esports', 'Camps esportius municipals', 'Entrenaments i competició de futbol.', 'POINT (2.43204934849402 41.5315747617127)', '41.5315747617127', '2.43204934849402'),
('Camp Municipal de Hoquei', 'Carrer de Galícia, 180. 08303 Mataró (BARCELONA)', 'Esports', 'Altres -instal·lacions esportives-', 'Entrenaments i competicions de hoquei gespa.', 'POINT (2.42619565459346 41.5557242120185)', '41.5557242120185', '2.42619565459346'),
('PFI Salesians Sant Jordi- Plataforma d\'Educació Social', 'Avinguda de Josep Puig i Cadafalch, 80. 08303 Mataró (BARCELONA)', 'Educació', 'Programes de Formació i Inserció', 'Obra Salesiana de Mataró', 'POINT (2.42976792931822 41.5403106449619)', '41.5403106449619', '2.42976792931822'),
('Residència Taller Pro persones amb disminució psíquica', 'Ronda d\'Alfons XII, 87. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Centres per a persones amb discapacitat', 'Residència per a persones amb discapacitats', 'POINT (2.43779413158661 41.5361978117358)', '41.5361978117358', '2.43779413158661'),
('Centre Obert Municipal Pla d\'en Boet', 'Passeig de Pau Claris, 31. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Oficines de Serveis socials', 'Servei socioeducatiu per a menors d\'entre 6 i 12 anys que presenten dificultats a nivell social i educatiu', 'POINT (2.43214336662548 41.5355821687355)', '41.5355821687355', '2.43214336662548'),
('Grup d\'Invàlids de Mataró i el Maresme', 'Carrer de Josep Monserrat Cuadrada, 37. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Altres -serveis sanitaris-', 'Té com a finalitat promoure la integració de les persones amb disminució física afavorint que gaudeixin d\'una vida el més autònoma i normalitzada possible', 'POINT (2.43027758931741 41.5397653750118)', '41.5397653750118', '2.43027758931741'),
('Club de petanca L\'Esplanada', 'Plaça de la Brisa, 11. 08301 Mataró (BARCELONA)', 'Esports', 'Pistes de petanca', 'Entitat Esportiva', 'POINT (2.44578433818203 41.5448147660814)', '41.5448147660814', '2.44578433818203'),
('Farmàcia Centeno', 'Carrer d\'Almeria, 77. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divednres de  9:00h a 13:30h i de 16:00h a 21:30h. \r\nDissabtes de 8:00h a 16:00h', 'POINT (2.44472260765907 41.554619801483)', '41.5546198014830', '2.44472260765907'),
('Mataró Energia Sostenible, S.A', 'Carretera de Barcelona, 92. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Mataró Energia Sostenible', 'Empresa participada en un 65% per Aigües de Mataró, SA que té per objectiu disminuir l\'impacte ambiental de la generació d\'energia', 'POINT (2.4268901693356 41.5243657919028)', '41.5243657919028', '2.42689016933560'),
('Consell Comarcal del Maresme', 'Plaça de Miquel Biada, 1. 08301 Mataró (BARCELONA)', 'Altres administracions', 'Consell Comarcal', NULL, 'POINT (2.44490190833788 41.5333754466922)', '41.5333754466922', '2.44490190833788'),
('Skate Park', 'Carretera de Barcelona, 2. Mataró (BARCELONA)', 'Esports', 'Altres -instal·lacions esportives-', 'Pista municipal per a la pràctica del Skate.', 'POINT (2.43309415609027 41.5285279017885)', '41.5285279017885', '2.43309415609027'),
('Casal Municipal de la Gent Gran Pla d\'en Boet', 'Carrer de Juan Sebastián Elcano, 6. 08302 Mataró (BARCELONA)', 'Casals', 'Casals per a la gent gran', NULL, 'POINT (2.43552178933492 41.5358533810768)', '41.5358533810768', '2.43552178933492'),
('Oficina d\'Informació a l\'Estranger', 'Avinguda de Josep Puig i Cadafalch, 101. 08303 Mataró (BARCELONA)', 'Serveis socials', 'Oficines de Serveis socials', 'Oficina d\'Informació a l\'Estranger / Arrelament', 'POINT (2.42866332668914 41.5400818317203)', '41.5400818317203', '2.42866332668914'),
('Escola Municipal de Música de Mataró (secretaria)', 'Baixada de les Figueretes, 1. 08301 Mataró (BARCELONA)', 'Educació', 'Escola Municipal de Música', 'Ofereix propostes i espais de formació, producció i difusió en l\'àmbit de la música.', 'POINT (2.44832796708389 41.5404221145739)', '41.5404221145739', '2.44832796708389'),
('Servei Educatiu de Mataró', 'Carrer d\'Onofre Arnau, 32. 08301 Mataró (BARCELONA)', 'Educació', 'Altres -oficines d\'educació-', NULL, 'POINT (2.44497665220717 41.5427254426065)', '41.5427254426065', '2.44497665220717'),
('Espai Jove Pla d\'en Boet', 'Ronda de Francesc Macià, 103. 08302 Mataró (BARCELONA)', 'Serveis per a joves', 'Espai jove', 'Casal per a joves de més de 12 anys.', 'POINT (2.4345190321936 41.5358081090341)', '41.5358081090341', '2.43451903219360'),
('Servei de Rehabilitació Comunitària en Salut Mental (SRC)', 'Camí de la Geganta, 7. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Salut mental i adiccions', 'Servei salut  mental i adiccions', 'POINT (2.44069742962435 41.5441517078858)', '41.5441517078858', '2.44069742962435'),
('Centre Social Carrer de las Siete Partidas', 'Carrer de las Siete Partidas, 2. 08304 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', 'Centre Social', 'POINT (2.45000325127101 41.5461890576458)', '41.5461890576458', '2.45000325127101'),
('Centre Social Carrer de Càceres', 'Carrer de Càceres, 16. 08304 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', 'Equipament municipal seu de l\'Associació de Veïns de Cirera', 'POINT (2.43290705943665 41.5499486945381)', '41.5499486945381', '2.43290705943665'),
('Centre Social Carrer de Josep Monserrat Cuadrada', 'Carrer de Josep Monserrat Cuadrada, 37. 08303 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', 'Equipament municipal seu de l\'Associacions Jama Kafo i Agimm', 'POINT (2.43027758931741 41.5397653750118)', '41.5397653750118', '2.43027758931741'),
('Centre Social Passeig del Callao', 'Passeig del Callao, 1. 08302 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', NULL, 'POINT (2.45400702479392 41.5388318275688)', '41.5388318275688', '2.45400702479392'),
('Aulari de l\'Institut Puig i Cadafalch', 'Carrer de Galícia, 3. 08303 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Secundari', NULL, 'POINT (2.42713007867303 41.5462958483136)', '41.5462958483136', '2.42713007867303'),
('Jutjat de primera instància núm. 8', 'Carrer de Josep Abril, 24. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Primera instància', 'POINT (2.44042579389383 41.5326977351269)', '41.5326977351269', '2.44042579389383'),
('Jutjats - Fiscalia de Violència sobre la Dona', 'Carrer de Casto Méndez Núñez, 30. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', NULL, 'POINT (2.44044078589585 41.5329873238481)', '41.5329873238481', '2.44044078589585'),
('Farmàcia Farré Espar', 'Carrer d\'Esteve Albert, 43. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de 9:00h a 13:30h i de 16:30h a 20:30h.', 'POINT (2.43505965127652 41.5445123558058)', '41.5445123558058', '2.43505965127652'),
('Farmàcia Subirana Calvé', 'Carrer del Rosselló, 43. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.42515959171583 41.5388137413662)', '41.5388137413662', '2.42515959171583'),
('Casal Municipal de la Gent Gran Oriol Batista', 'Carrer del Pla de Bages, 49. Mataró (BARCELONA)', 'Casals', 'Casals per a la gent gran', NULL, 'POINT (2.42398942328958 41.542070988593)', '41.5420709885930', '2.42398942328958'),
('Jutjat d\'instrucció núm. 5', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Instrucció', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Farmàcia Elisa Barreda', 'Carrer d\'Alemanya, 6. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.43133153909947 41.5466680967623)', '41.5466680967623', '2.43133153909947'),
('Mercat de la Plaça de Cuba (entorns de la plaça)', 'Plaça de Cuba, 53. Mataró (BARCELONA)', 'Mercats i Centres comercials', 'Mercats setmanals', 'Dissabtes fruita i verdura. Dijous equipament de la persona i la llar.', 'POINT (2.44130058383169 41.5375124152225)', '41.5375124152225', '2.44130058383169'),
('Deixalleria mòbil del Carrer Irlanda', 'Via d\'Europa, 147. 08303 Mataró (BARCELONA)', 'Residus', 'Deixelleries mòbils', 'Ubicada al lateral de la Via Europa entre C. Dinamarca amb Carrer Alemanya', 'POINT (2.43155237436168 41.5467905333758)', '41.5467905333758', '2.43155237436168'),
('Deixalleria mòbil del Parc de Cerdanyola', 'Avinguda de la Gatassa, 130. 08303 Mataró (BARCELONA)', 'Residus', 'Deixelleries mòbils', NULL, 'POINT (2.42613163822766 41.5394893043275)', '41.5394893043275', '2.42613163822766'),
('Crematori de les Valls', 'Carretera de Cirera, 237. 08304 Mataró (BARCELONA)', 'Serveis funeraris', 'Crematoris', NULL, 'POINT (2.42783915616155 41.5583927375071)', '41.5583927375071', '2.42783915616155'),
('Deixalleria mòbil de l\'Avinguda Amèrica', 'Avinguda d\'Amèrica, 122. 08304 Mataró (BARCELONA)', 'Residus', 'Deixelleries mòbils', 'Av. Amèrica tocant carretera de Mata', 'POINT (2.4510190828 41.5470422334158)', '41.5470422334158', '2.45101908280000'),
('Ermita de Santa Maria de Cirera', 'Carrer del Riu Segre, 1T. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Església Catòlica', 'POINT (2.43146217209044 41.5614549184948)', '41.5614549184948', '2.43146217209044'),
('Centre d\'Atenció a la Infància Punt de trobada', 'Carrer de Sant Josep Oriol, 35. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Centres d\'Atenció a la infància', 'Centre depenent de la Generalitat per a l\'entrega de menors segons sentència del jutge, la EAIA o la DEGAIA', 'POINT (2.44181327675208 41.5364812866021)', '41.5364812866021', '2.44181327675208'),
('Hotel Atenea Port Mataró', 'Passeig Marítim, 324. 08302 Mataró (BARCELONA)', 'Allotjament', 'Hotels', 'Hotel', 'POINT (2.44353967989795 41.5306433976262)', '41.5306433976262', '2.44353967989795'),
('PFI Miquel Biada', 'Avinguda de Josep Puig i Cadafalch, 89. 08303 Mataró (BARCELONA)', 'Educació', 'Programes de Formació i Inserció', 'Programa de Qualificació Professional Inicial. PFI', 'POINT (2.42940185248275 41.5400816370451)', '41.5400816370451', '2.42940185248275'),
('Circuit municipal de BMX', 'Veïnat de Mata, 148. Mataró (BARCELONA)', 'Esports', 'Altres -instal·lacions esportives-', 'Entrenaments i competicions en BMX.', 'POINT (2.46061336946017 41.5439766022098)', '41.5439766022098', '2.46061336946017'),
('Pistes de Petanca Cirera', 'Ronda de Frederic Mistral, 2. 08304 Mataró (BARCELONA)', 'Esports', 'Pistes de petanca', 'Zona Esportiva Municipal de Cirera.', 'POINT (2.437979775215 41.549170436222)', '41.5491704362220', '2.43797977521500'),
('Zona Esportiva Municipal La Llàntia', 'Carrer de Blanes, 70. Mataró (BARCELONA)', 'Esports', 'Zones esportives i Palaus d\'esport', NULL, 'POINT (2.42691076338725 41.5497579753109)', '41.5497579753109', '2.42691076338725'),
('Zona Esportiva Municipal de Cirera', 'Plaça del Voluntariat, 1. 08304 Mataró (BARCELONA)', 'Esports', 'Zones esportives i Palaus d\'esport', NULL, 'POINT (2.43770041342946 41.5472978594663)', '41.5472978594663', '2.43770041342946'),
('Poliesportiu Municipal Teresa Maria Roca i Vallmajor', 'Carrer de Terrassa, 33. 08304 Mataró (BARCELONA)', 'Esports', 'Pistes i Poliesportius', 'Entrenaments i competició d\'handbol.', 'POINT (2.43827453756624 41.5468895053175)', '41.5468895053175', '2.43827453756624'),
('Servei d\'Intervenció Especialitzada (SIE)', 'Carrer de Cosme Churruca, 88. 08301 Mataró (BARCELONA)', 'Serveis socials', 'Oficines de Serveis socials', 'Servei d\'atenció integral i recursos en el procés de recuperació i reparació a les dones que han patit o pateixen situació de violència, i també als seus', 'POINT (2.44470852961255 41.5339304290229)', '41.5339304290229', '2.44470852961255'),
('Servei de Desenvolupament Sostenible', 'Passeig del d l\'Orfeo Mataroní, 15. Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Gestió de l\'Espai Públic', 'Conselleria delegada encarregada de l\'Agencia Local 21,  Medi Ambient i Llicències d\'Activitats', 'POINT (2.43766862908974 41.5449192301177)', '41.5449192301177', '2.43766862908974'),
('Camp Municipal de Futbol Enric Pujol', 'Carrer de la Marató, 91. 08303 Mataró (BARCELONA)', 'Esports', 'Camps esportius municipals', 'Entrenaments i competició de futbol.', 'POINT (2.42458236421121 41.535473703664)', '41.5354737036640', '2.42458236421121'),
('Centre de Promoció Social', 'Carrer de Ciutat Freta, 6. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Oficines de Serveis socials', NULL, 'POINT (2.43480200865605 41.5348474958096)', '41.5348474958096', '2.43480200865605'),
('Oficina de programes de Gent Gran Activa', 'Carrer de Juan Sebastián Elcano, 6. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', 'Programes de Gent Gran Activa', 'POINT (2.43552178933494 41.5358533810723)', '41.5358533810723', '2.43552178933494'),
('Casal Municipal de la Gent Gran de Santes- Escorxador', 'Carrer de Floridablanca, 118. 08301 Mataró (BARCELONA)', 'Casals', 'Casals per a la gent gran', NULL, 'POINT (2.45080174714176 41.5446608525904)', '41.5446608525904', '2.45080174714176'),
('Agència Estatal d\'Administració Tributària de Mataró', 'Carretera de Barcelona, 43. 08302 Mataró (BARCELONA)', 'Administració de l\'Estat', 'Agència Tributària', 'Agència Tributaria de Hisenda', 'POINT (2.43275491957092 41.5273737884116)', '41.5273737884116', '2.43275491957092'),
('CAP El Maresme - ICS', 'Camí del Mig, 36. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Centres d\'Atenció Primària (CAP)', 'CAP El Maresme /Centre d\'especialiats mèdiques del servei Català de la Salut', 'POINT (2.43014567041679 41.5364998295583)', '41.5364998295583', '2.43014567041679'),
('Centre Cívic Cerdanyola', 'Passeig de Ramon Berenguer III, 82. 08303 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Cívics', 'Punt d\'informació- Ordinador per tràmits on-line. Cessió bústies per entitats- wfi gratuït', 'POINT (2.42563111127236 41.5373830605373)', '41.5373830605373', '2.42563111127236'),
('Centre Cívic Molins', 'Carrer de Nicolau Guañabens, 23. 08304 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Cívics', 'Punt d\'informació. \r\nOficina d\'Atenció Ciutadana.\r\nServei gratuït de Wifi. Punt xarxa: el centre cívic disposa de tres ordinadors que permeten l¿accés gratuït a internet, per aquells ciutadans que vulguin connectar-se a la xarxa', 'POINT (2.44232719235017 41.5493866522752)', '41.5493866522752', '2.44232719235017'),
('Casa Capell', 'Passeig del d l\'Orfeo Mataroní, 15. Mataró (BARCELONA)', 'Administració municipal', 'Casa Capell', 'Prototip vivenda sostenible.', 'POINT (2.43766862908974 41.5449192301177)', '41.5449192301177', '2.43766862908974'),
('Ensenyament concertat Divina Providència', 'Carrer de Llauder, 30. 08302 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Segon cicle d\'educació infantil \r\nEducació primària\r\nEducació Secundària Obligatòria (ESO)', 'POINT (2.44046953884171 41.5351709810962)', '41.5351709810962', '2.44046953884171'),
('Can Palauet. Sales d\'exposicions', 'Carrer d\'En Palau, 32. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Sales d\'exposicions i galeries d\'art', 'Sales d\'exposicions, sala d\'actes i arxiu municipal i històric comarcal', 'POINT (2.44607047092414 41.5400209606581)', '41.5400209606581', '2.44607047092414'),
('Centre de Formació d\'Adults Alarona', 'Plaça de la Torre del Cogoll, 1. 08302 Mataró (BARCELONA)', 'Educació', 'Centres de Formació d\'Adults', 'Centre de Formació d\'Adults', 'POINT (2.43386990307877 41.532168936599)', '41.5321689365990', '2.43386990307877'),
('Ensenyament concertat Escola Pia Santa Anna (secundària)', 'Carrer de Sant Agustí, 59. 08301 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Secundària Obligatòria.Centre professional de cicles formatius i programes de garantia social', 'POINT (2.44607345603628 41.5355502900299)', '41.5355502900299', '2.44607345603628'),
('Escola Anxaneta', 'Carrer d\'Antonio de Solís, 2B. Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d\'educació infantil \r\nEducació primària', 'POINT (2.451613197919 41.5410799198184)', '41.5410799198184', '2.45161319791900'),
('Espai Jove Rocafonda-El Palau', 'Carrer de Pablo Ruiz Picasso, 28. 08304 Mataró (BARCELONA)', 'Serveis per a joves', 'Espai jove', 'Casal per a joves de més de 12 anys.', 'POINT (2.44956386014662 41.5488956938084)', '41.5488956938084', '2.44956386014662'),
('Oficina d\'Atenció Ciutadana (OFIAC) - La Riera', 'La Riera, 48. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Oficina d\'Atenció Ciutadana (OFIAC)', 'Servei d\'atenció al ciutadà\r\nde dilluns a dijous de 09:00 a 19:00 h i divendres, de 09:00 a 14:00h.', 'POINT (2.4447776359659 41.539838959823)', '41.5398389598230', '2.44477763596590'),
('Farmàcia El Torrent', 'El Torrent, 7. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a dissabtes de  9:00h a 14:00h i de 16:00h a 21:00h', 'POINT (2.4405992686131 41.5402673251852)', '41.5402673251852', '2.44059926861310'),
('Farmàcia Alfonso-Cos', 'Avinguda d\'Amèrica, 33. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de 9:00h a 22:00h', 'POINT (2.44798985650506 41.5476462417902)', '41.5476462417902', '2.44798985650506'),
('Farmàcia Susana López', 'Ronda de Frederic Mistral, 26. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.43986249132784 41.5516124826069)', '41.5516124826069', '2.43986249132784'),
('Oficina Municipal d\'Escolarització', 'Baixada de les Figueretes, 1. 08301 Mataró (BARCELONA)', 'Educació', 'Altres -oficines d\'educació-', 'Servei de la Generalitat i l\'Ajuntament per garantir la transparència en els processos de matriculació i permetre una més gran proximitat de la informació a les famílies. OME', 'POINT (2.44832796708389 41.5404221145739)', '41.5404221145739', '2.44832796708389'),
('Centre Social La Casa de la Palmera', 'Carrer de Federico Carlo Gravina, 6. 08301 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', 'Centre social', 'POINT (2.44545213478718 41.5352886563716)', '41.5352886563716', '2.44545213478718'),
('Centre Social Carrer de Jaume Ibran', 'Carrer de Jaume Ibran, 1. 08301 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', NULL, 'POINT (2.44660784837086 41.5371446980878)', '41.5371446980878', '2.44660784837086'),
('Centre Social Ronda de Bellavista', 'Ronda de Bellavista, 45. 08303 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', 'Equipament municipal seu de l\'Associació de EPMA', 'POINT (2.42068370625855 41.5420914837331)', '41.5420914837331', '2.42068370625855'),
('Ballenoil', 'Camí del Sant Crist, 32. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de Servei', 'POINT (2.42723481323615 41.5319178806275)', '41.5319178806275', '2.42723481323615'),
('AUTONET&OIL', 'Carrer de Pablo Iglesias, 1. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de Servei', 'POINT (2.42915597107523 41.5357238944195)', '41.5357238944195', '2.42915597107523'),
('Centre Social Plaça de Vista Alegre', 'Plaça de Vista Alegre, 5. 08304 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', 'Equipament municipal seu de l\'Associació de Plaça Vista Alegre', 'POINT (2.44583202875089 41.5520344883984)', '41.5520344883984', '2.44583202875089'),
('Consorci Digital Mataró - Maresme', 'Carrer de Tordera, 37. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Presidència', 'M1TV Televisió de Mataró', 'POINT (2.43456883449354 41.5271565816022)', '41.5271565816022', '2.43456883449354'),
('Jutjat d\'instrucció núm. 2', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Instrucció', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Parafarmàcia - Farmafree I', 'Carrer de Barcelona, 27. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'Parafarmàcia', 'POINT (2.44596315135357 41.5386917533167)', '41.5386917533167', '2.44596315135357'),
('Servei d\'Espais Públics', 'Carrer de Comadaran, 1. 08304 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Gestió de l\'Espai Públic', 'Encarregat de la neteja, recollida d\'escombraries, transport, manteniment i cementiri', 'POINT (2.44847846536774 41.5630233886384)', '41.5630233886384', '2.44847846536774'),
('Parròquia de Sant Pau', 'Carrer de las Siete Partidas, 42. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Església catòlica', 'POINT (2.45159986289263 41.5460700492694)', '41.5460700492694', '2.45159986289263'),
('Agència Tributària de Catalunya', 'Avinguda de Jaume Recoder, 79. 08301 Mataró (BARCELONA)', 'Oficines de la Generalitat de Catalunya', 'Agència Tributària', 'Oficina Territorial Agència Tributària de Catalunya', 'POINT (2.44415581042474 41.5333885823233)', '41.5333885823233', '2.44415581042474'),
('Farmàcia Fité', 'La Riera, 57. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h.', 'POINT (2.44445823631549 41.5400963534006)', '41.5400963534006', '2.44445823631549'),
('Servei de Sistemes d\'Informació i Telecomunicacions', 'Avinguda d\'Ernest Lluch, 32. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', NULL, 'POINT (2.43468298017362 41.5283283221368)', '41.5283283221368', '2.43468298017362'),
('Jutjat del Penal núm.1', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Penal', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Centre Social Carrer de València', 'Carrer de València, 92. 08303 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', 'Equipament municipal seu de l\'Associació de Cerdanyola', 'POINT (2.42334103788389 41.5401176424728)', '41.5401176424728', '2.42334103788389'),
('Ensenyament concertat Salesians de Sant Antoni de Pàdua', 'Avinguda de Josep Puig i Cadafalch, 80. 08303 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Centre concertat primer cicle d\'esducació infantil (3-12 anys), educació secundària obligatòria (12-16 anys) i batxillerat', 'POINT (2.4297679293182 41.5403106449663)', '41.5403106449663', '2.42976792931820'),
('Escola Montserrat Solà', 'Plaça dels Alocs, 1. Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d\'educació infantil \r\nEducació primària', 'POINT (2.45451664711937 41.5418874949685)', '41.5418874949685', '2.45451664711937'),
('Escola Bressol municipal Els Menuts', 'Carrer de Francisco d\'Herrera, 71. Mataró (BARCELONA)', 'Educació', 'Escola Bressol municipal', 'Primer cicle d\'educació infantil (0-3 anys)', 'POINT (2.45380045449833 41.543757244942)', '41.5437572449420', '2.45380045449833'),
('Institut Miquel Biada', 'Avinguda de Josep Puig i Cadafalch, 89. 08303 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Secundari', 'Centre públic d\'educació secundària, batxillerat i cicles formatius de grau mitjà i superior', 'POINT (2.42940185248275 41.5400816370451)', '41.5400816370451', '2.42940185248275'),
('Institut Thos i Codina', 'Riera de Cirera, 57. Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Secundari', 'Centre públic d\'educació secundària, batxillerat i cicles formatius de grau mitjà i superior', 'POINT (2.43921655430347 41.549801440903)', '41.5498014409030', '2.43921655430347'),
('Escola Superior de Ciències de la Salut Tecnocampus (ESCST)', 'Avinguda d\'Ernest Lluch, 32. 08302 Mataró (BARCELONA)', 'Educació', 'Estudis universitaris', 'Centre adscrit a la Universitat Pompeu Fabra', 'POINT (2.43468298017362 41.5283283221368)', '41.5283283221368', '2.43468298017362'),
('Circuit Municipal de Cros', 'Camí dels Contrabandistes, 30. Mataró (BARCELONA)', 'Esports', 'Altres -instal·lacions esportives-', 'Circuit Municipal de Cros.', 'POINT (2.43790394665188 41.5597033351152)', '41.5597033351152', '2.43790394665188'),
('Gimnàs de Boxa del Velòdrom Municipal', 'Avinguda del Velòdrom, 27. 08304 Mataró (BARCELONA)', 'Esports', 'Altres -instal·lacions esportives-', 'Entrenaments de boxa.', 'POINT (2.44022259027142 41.5466802756711)', '41.5466802756711', '2.44022259027142'),
('Centre Social Carrer d\'Alemanya', 'Carrer d\'Alemanya, 27. 08303 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', 'Equipament municipal seu de l\'Associació de Via Europa', 'POINT (2.43068368403904 41.5450335721551)', '41.5450335721551', '2.43068368403904'),
('Centre Social Carrer d\'Enric Prat de la Riba', 'Carrer d\'Enric Prat de la Riba, 110. 08301 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', NULL, 'POINT (2.45304406969035 41.5449951118624)', '41.5449951118624', '2.45304406969035'),
('Església Cristiana Bíblica de Mataró', 'Carrer de Joan Bialet Massé, 8. 08303 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Evangèlica', 'Centre de culte evangelica', 'POINT (2.43218416458394 41.5386536670417)', '41.5386536670417', '2.43218416458394'),
('Mesquita Annour', 'Carrer de Manuel Carrasco i Formiguera, 64. 08302 Mataró (BARCELONA)', 'Serveis religiosos', 'Mesquites', 'Centre de Culte Islàmic', 'POINT (2.42495094358507 41.531399301132)', '41.5313993011320', '2.42495094358507'),
('Església de Jesucrist dels Sants dels Darrers Dies', 'Avinguda del Maresme, 209. 08301 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Mormona', 'Centre de Culte Mormó', 'POINT (2.44579153002261 41.53395169225)', '41.5339516922500', '2.44579153002261'),
('Jutjat de primera instància núm. 2', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Primera Instància', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Jutjat de primera instància núm. 5', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Primera Instància', 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Jutjat del Social núm. 2', 'Carrer de Josep Abril, 33. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Social', 'POINT (2.44094947636129 41.5324139585848)', '41.5324139585848', '2.44094947636129'),
('Llar d\'infants Petit Somni', 'Camí Ral, 371. 08301 Mataró (BARCELONA)', 'Educació', 'Llars d\'infants privades', 'Centre d\'educació infantil llar d\'infants', 'POINT (2.44499718928763 41.5373655405581)', '41.5373655405581', '2.44499718928763'),
('Can Marfà Gènere de Punt', 'Passatge de Can Marfà, 1. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Museus', 'La nau petita de Can Marfà, acollirà la nova extensió del Museu de Mataró dedicada a la conservació, documentació, recerca i difusió del patrimoni cultural relacionat amb la indústria del gènere de punt.', 'POINT (2.45119798353954 41.5394132133765)', '41.5394132133765', '2.45119798353954'),
('CPAN. Centre de Patrimoni Arqueològic i Natural', 'Carrer de Pablo Iglesias, 83. 08302 Mataró (BARCELONA)', 'Cultura i Oci', 'Arxius i Centres de documentació', 'Centre de Creació Pensament Contemporani', 'POINT (2.43285314165926 41.5304288735613)', '41.5304288735613', '2.43285314165926'),
('Llar Residència - La Ronda', 'Ronda d\'Alfons XII, 87. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Centres per a persones amb discapacitat', 'Centre per a persones amb minusvalia', 'POINT (2.43779413158661 41.5361978117358)', '41.5361978117358', '2.43779413158661'),
('Servei de Mediació ciutadana', 'Avinguda de Lluís Companys, 21. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', 'Treballa per fomentar l\'apropament entre persones amb desacord', 'POINT (2.43163904574176 41.5357523829838)', '41.5357523829838', '2.43163904574176'),
('Ca l\'Arenas. Centre d\'art del Museu de Mataró', 'Carrer d\'Argentona, 64. 08302 Mataró (BARCELONA)', 'Cultura i Oci', 'Sales d\'exposicions i galeries d\'art', 'Centre d\'art del Museu de Mataró', 'POINT (2.44157827466898 41.5408689828985)', '41.5408689828985', '2.44157827466898'),
('Escola Vista Alegre', 'Ronda de Sant Oleguer, 91. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d¿educació infantil \r\nEducació primària', 'POINT (2.44669322626621 41.5514984370378)', '41.5514984370378', '2.44669322626621'),
('Ensenyament concertat Sant Josep', 'Ronda de la Cerdanya, 39. 08303 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Segon cicle d¿educació infantil \r\nEducació primària\r\nEducació Secundària Obligatòria (ESO)', 'POINT (2.42231499627229 41.5428921931552)', '41.5428921931552', '2.42231499627229'),
('Mataró Audiovisual. Mataró Ràdio', 'Carrer de Tordera, 37. 08302 Mataró (BARCELONA)', 'Cultura i Oci', 'Mitjans audiovisuals', 'Mataró Radio - Mataró Audiovisual', 'POINT (2.43456883449357 41.5271565815978)', '41.5271565815978', '2.43456883449357'),
('Camp Municipal de Futbol de Rocafonda', 'Ronda de Rafael Estrany, 24. 08304 Mataró (BARCELONA)', 'Esports', 'Camps esportius municipals', 'Entrenaments i competició de futbol.', 'POINT (2.45034268946787 41.5511311360533)', '41.5511311360533', '2.45034268946787'),
('Camp Municipal de Futbol de la Llàntia', 'Carrer de Blanes, 70. Mataró (BARCELONA)', 'Esports', 'Camps esportius municipals', 'Camp de futbol de gespa artificial.', 'POINT (2.42691076338725 41.5497579753109)', '41.5497579753109', '2.42691076338725'),
('Unió Recreativa L.A.R.U', 'Riera de Can Gener, 20. 08304 Mataró (BARCELONA)', 'Esports', 'Centres esportius', NULL, 'POINT (2.43590840123187 41.5657342737459)', '41.5657342737459', '2.43590840123187'),
('Pista Poliesportiva Municipal El Palau', 'Ronda d\'Alfons X el Savi, 163. 08304 Mataró (BARCELONA)', 'Esports', 'Pistes i Poliesportius', 'Activitats esportives de lleure.', 'POINT (2.45158998891315 41.5457244460973)', '41.5457244460973', '2.45158998891315'),
('Pistes Municipals de Petanca de La Llàntia', 'Carrer de Blanes, 70. Mataró (BARCELONA)', 'Esports', 'Pistes de petanca', 'Entrenaments i competició de Petanca.', 'POINT (2.42691076338725 41.5497579753109)', '41.5497579753109', '2.42691076338725'),
('Zona Esportiva Municipal de Rocafonda', 'Ronda de Rafael Estrany, 24. 08304 Mataró (BARCELONA)', 'Esports', 'Zones esportives i Palaus d\'esport', 'Zona esportiva municipal.', 'POINT (2.45034268946787 41.5511311360533)', '41.5511311360533', '2.45034268946787'),
('Jutjat del Social núm. 1', 'Carrer de Josep Abril, 33. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Social', 'POINT (2.44094947636129 41.5324139585848)', '41.5324139585848', '2.44094947636129'),
('Jutjat de Violència sobre la Dona', 'Carrer de Casto Méndez Núñez, 30. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Violència sobre la dona', 'POINT (2.44044078589585 41.5329873238481)', '41.5329873238481', '2.44044078589585'),
('Club de Tenis Les Sureres', 'Carrer del Riu Ter, 6. 08304 Mataró (BARCELONA)', 'Esports', 'Centres esportius', 'Entitat Esportiva', 'POINT (2.43286819203615 41.561389822598)', '41.5613898225980', '2.43286819203615'),
('Pista Poliesportiva del Velòdrom Municipal', 'Avinguda del Velòdrom, 27. 08304 Mataró (BARCELONA)', 'Esports', 'Pistes i Poliesportius', 'Entrenaments i competició d\'esports d\'equip, hoquei, futbol sala i patinatge. Pista de Ciclisme: Entrenaments i competició de ciclisme en pista i activitats escolars. Gimnàs de Boxa: Entrenaments de boxa', 'POINT (2.44022259027142 41.5466802756711)', '41.5466802756711', '2.44022259027142'),
('Mercat de Cerdanyola', 'Passeig de Ramon Berenguer III, 130. 08303 Mataró (BARCELONA)', 'Mercats i Centres comercials', 'Mercats setmanals', 'Mercat setmanal de fruites i verdures', 'POINT (2.42742283280126 41.5390886336681)', '41.5390886336681', '2.42742283280126'),
('Oficina d\'Atenció Ciutadana (OFIAC) - Rocafonda', 'Carrer de Josep Punsola, 47. 08304 Mataró (BARCELONA)', 'Administració municipal', 'Oficina d\'Atenció Ciutadana (OFIAC)', 'Atenció al públic', 'POINT (2.45093178809748 41.5489521736571)', '41.5489521736571', '2.45093178809748'),
('Camp Municipal de futbol A7 de Cirera Francisco Melero Navarro', 'Plaça del Voluntariat, 1. 08304 Mataró (BARCELONA)', 'Esports', 'Camps esportius municipals', 'Entrenaments i competició de futbol A-7 per a esport de base.', 'POINT (2.43770041342946 41.5472978594663)', '41.5472978594663', '2.43770041342946'),
('Deixalleria mòbil de la Plaça de les Tereses', 'Plaça de les Tereses, 42. Mataró (BARCELONA)', 'Residus', 'Deixelleries mòbils', NULL, 'POINT (2.44179859427142 41.5385801305666)', '41.5385801305666', '2.44179859427142'),
('La Destil·leria', 'Camí Ral, 282. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Sales d\'exposicions i galeries d\'art', 'Sala d\'exposicions', 'POINT (2.44781453940352 41.5385779551906)', '41.5385779551906', '2.44781453940352'),
('Escola Angeleta Ferrer', 'Plaça de Ventura Ametller, 1. 08301 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d\'educació infantil i primària (3-12 anys)', 'POINT (2.44316178125401 41.5355638888255)', '41.5355638888255', '2.44316178125401'),
('Escola Antonio Machado', 'Plaça d\'Antonio Machado, 1. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d\'educació infantil\r\nEducació primària', 'POINT (2.43523652942568 41.546869783741)', '41.5468697837410', '2.43523652942568'),
('Escola Camí del Cros', 'Ronda del Cros, 13. 08303 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d¿educació infantil \r\nEducació primària', 'POINT (2.42208898033841 41.5354104485275)', '41.5354104485275', '2.42208898033841'),
('Institut Escola Àngela Bransuela', 'Ronda de Sant Oleguer, 76. 08304 Mataró (BARCELONA)', 'Educació', 'Instituts Escola', 'Segon cicle d¿educació infantil (parvulari)\r\nEducació primària\r\nEducació Secundària Obligatòria (ESO)', 'POINT (2.44578406898219 41.5510182305478)', '41.5510182305478', '2.44578406898219'),
('Institut Escola Mar Mediterrània', 'Passeig de Ramon Berenguer III, 130. 08303 Mataró (BARCELONA)', 'Educació', 'Instituts Escola', 'Segon cicle d¿educació infantil (parvulari)\r\nEducació primària\r\nEducació Secundària Obligatòria (ESO)', 'POINT (2.42742283280126 41.5390886336681)', '41.5390886336681', '2.42742283280126'),
('Tresoreria General de la Seguretat Social', 'Carrer de Jaume Balmes, 34. 08301 Mataró (BARCELONA)', 'Administració de l\'Estat', 'Tresoreria de la Seguretat Social', 'Oficina per a la gestió de filiacions, cotitzacions, recaptacions ,  i pagaments de la Seguretat Social \r\n901 106 570 Cita prèvia', 'POINT (2.44697326186281 41.5358847446364)', '41.5358847446364', '2.44697326186281'),
('ONCE', 'Carrer de Francisco de Goya, 91. 08302 Mataró (BARCELONA)', 'Altres organismes', 'ONCE', 'Centre per a persones amb minusvalia', 'POINT (2.43430611498736 41.5377888525518)', '41.5377888525518', '2.43430611498736'),
('Registre de la Propietat núm.1', 'Plaça de les Tereses, 12. 08302 Mataró (BARCELONA)', 'Altres organismes', 'Registre de la Propietat', 'Registre Propietat', 'POINT (2.44293605647811 41.5385915214249)', '41.5385915214249', '2.44293605647811'),
('Eurecat - Centre Tecnològic de Catalunya', 'Avinguda d\'Ernest Lluch, 36. 08302 Mataró (BARCELONA)', 'Altres organismes', 'Eurecat', 'Assesorament i formació al món empresarial en tot allò que té a veure amb les noves tecnologies', 'POINT (2.43495864408666 41.5281931330643)', '41.5281931330643', '2.43495864408666'),
('Deixalleria mòbil de la Plaça Occitània', 'Plaça d\'Occitània, 1. Mataró (BARCELONA)', 'Residus', 'Deixelleries mòbils', NULL, 'POINT (2.4336647821345 41.5379858708279)', '41.5379858708279', '2.43366478213450'),
('Equip d\'Atenció a l\'Infància i l\'Adolescència de Mataró', 'Passatge de Francesc Ferrer i Guàrdia, 3. Mataró (BARCELONA)', 'Serveis per a joves', 'Oficines d\'Atenció i informació per a joves', 'Equips pluridisciplinars que atenen menors d\'edat que es troben en situació de risc', 'POINT (2.43459293599475 41.5355076417577)', '41.5355076417577', '2.43459293599475'),
('Basílica de Santa Maria', 'Plaça de Santa Maria, 27. Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Església Catòlica. Edifici del 1675 de l\'arquitecte milanès Ercole Turelli', 'POINT (2.4464654507042 41.5408859771724)', '41.5408859771724', '2.44646545070420'),
('Deixalleria mòbil de la Ronda de Sant Oleguer', 'Riera de Figuera Major, 1. 08304 Mataró (BARCELONA)', 'Residus', 'Deixelleries mòbils', NULL, 'POINT (2.44051074835259 41.5502017450704)', '41.5502017450704', '2.44051074835259'),
('Consorci per al Tractament dels Residus Sòlids Urbans', 'Carrer de la Teixidora, 83. 08302 Mataró (BARCELONA)', 'Residus', 'Tractament de residus', 'Encarregat de la construcció, conservació i manteniment de les obres i instal·lacions d\'una planta de tractament i eliminació dels residus i qualsevol altra activitat que puguin derivar-se de l\'esmentat tractament i eliminació.', 'POINT (2.42416494411215 41.5251248019779)', '41.5251248019779', '2.42416494411215'),
('Farmàcia Esteve Albert 43', 'Carrer d\'Esteve Albert, 43. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'de dl. a dv 09:00-13:30, 16:30-20:30', 'POINT (2.43505965127654 41.5445123558014)', '41.5445123558014', '2.43505965127654'),
('Farmàcia Els jutjats', 'Ronda de Francesc Macià, 1. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'de dl. a dv. de 9 a 21h ds. de 9 a 14h', 'POINT (2.43831647128796 41.5326675979185)', '41.5326675979185', '2.43831647128796'),
('Farmàcia Europea', 'Via d\'Europa, 92. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'de dl. a dv. 9:00 a 14:00 horas i de 16:30 a 21:00h ds de 9:00 a 14:00 h.', 'POINT (2.43274825736998 41.5440182053096)', '41.5440182053096', '2.43274825736998'),
('Escola Camí del Mig', 'Camí del Mig, 1. 08302 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d\'educació infantil (parvulari)\r\nEducació primària', 'POINT (2.43243803141823 41.5366707955186)', '41.5366707955186', '2.43243803141823'),
('Escola Cirera', 'Avinguda del Corregiment de Mataró, 59. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Educació Infantil P3,P4 i P5\r\nEducació primària', 'POINT (2.43699163019783 41.547058444847)', '41.5470584448470', '2.43699163019783'),
('Ensenyament concertat Balmes', 'Plaça dels Bous, 1. 08301 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Segon cicle d\'educació infantil \r\nEducació primària\r\nCentre adscrit a l\'escola Freta per l\'ESO,Batxillerat i/o Cicles Formatius', 'POINT (2.44425552682374 41.5421145641253)', '41.5421145641253', '2.44425552682374'),
('Escola Bressol municipal Elna', 'Carrer de Marià Ribas i Bertran, 79. 08304 Mataró (BARCELONA)', 'Educació', 'Escola Bressol municipal', 'Primer cicle d\'educació infantil (0-3 anys)', 'POINT (2.43590018886248 41.5463149253687)', '41.5463149253687', '2.43590018886248'),
('Servei d\'Estratègia i Governança', 'Carrer de Cuba, 47. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Presidència', 'Servei que gestiona informació com a recurs estratègic per a la presa de decisions', 'POINT (2.44177311215092 41.5363696536962)', '41.5363696536962', '2.44177311215092'),
('Llar Pla d\'en Boet', 'Carrer de Sant Valentí, 9. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Centres per a persones amb discapacitat', 'Centre per a persones  amb minusvalia', 'POINT (2.43664545038379 41.5315731373696)', '41.5315731373696', '2.43664545038379'),
('Ensenyament concertat Freta', 'Passeig de Rocafonda, 45. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Centre concertat d\'educació secundària obligatòria (12-16 anys), batxillerat i cicles formatius grau mitjà i superior', 'POINT (2.4473698590461 41.5467579158102)', '41.5467579158102', '2.44736985904610'),
('Jutjat de primera instància núm. 6', 'Carrer de Casto Méndez Núñez, 30. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', 'Primera Instància', 'POINT (2.44044078589585 41.5329873238481)', '41.5329873238481', '2.44044078589585'),
('Farmàcia Vilardell', 'Avinguda de Josep Puig i Cadafalch, 256. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h.', 'POINT (2.42318345628221 41.540683831388)', '41.5406838313880', '2.42318345628221'),
('Espai Jove La Llàntia', 'Carrer de Teià, 7. 08303 Mataró (BARCELONA)', 'Serveis per a joves', 'Espai jove', 'Casal per a joves de més de 12 anys.', 'POINT (2.4271573992281 41.5479135265835)', '41.5479135265835', '2.42715739922810'),
('Parròquia de Maria Auxiliadora', 'Carrer de la Gatassa, 1. 08303 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Església Catòlica', 'POINT (2.42535012489685 41.5406867978226)', '41.5406867978226', '2.42535012489685'),
('CAP Cirera-Molins - CDsM', 'Ronda de Frederic Mistral, 4. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Centres d\'Atenció Primària (CAP)', 'Centre d\'atenció primària del Consorci Sanitari del Maresme', 'POINT (2.43819522584059 41.5494930822358)', '41.5494930822358', '2.43819522584059'),
('Centre de Dia MAP', 'Passatge de Lluís Gallifa, 14. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Centres de Dia per a la gent gran', 'Centre de dia', 'POINT (2.43904282204233 41.5344319755916)', '41.5344319755916', '2.43904282204233'),
('Centre de Dia Mare Nostra', 'L\'Esplanada, 80. 08301 Mataró (BARCELONA)', 'Serveis socials', 'Centres de Dia per a la gent gran', 'Geriatria', 'POINT (2.44524962545719 41.5448378590619)', '41.5448378590619', '2.44524962545719'),
('Residència Municipal Sant Josep', 'Muralla de Sant Llorenç, 9. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Centres residencials per a gent gran', 'Residència i centre del PASS', 'POINT (2.44355670414963 41.5390186909245)', '41.5390186909245', '2.44355670414963'),
('Centre Obert Rocafonda', 'Carrer de Pablo Ruiz Picasso, 28. 08304 Mataró (BARCELONA)', 'Serveis socials', 'Oficines de Serveis socials', 'Servei socioeducatiu per a menors entre 6 i 12 anys que presenten dificultats a nivel social i educatiu', 'POINT (2.44956386014662 41.5488956938084)', '41.5488956938084', '2.44956386014662'),
('Oficina Social d\'Atenció Integral (OSAI)', 'Avinguda de Josep Puig i Cadafalch, 101. 08303 Mataró (BARCELONA)', 'Serveis socials', 'Oficines de Serveis socials', 'Oficina d\'atenció social integral', 'POINT (2.42866332668914 41.5400818317203)', '41.5400818317203', '2.42866332668914'),
('Estació de Servei BP - Mataró II', 'Avinguda del Maresme, 30. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estacio de servei', 'POINT (2.43629838036825 41.5296198577006)', '41.5296198577006', '2.43629838036825'),
('Farmàcia Corona Colldeforn', 'Ronda de Leopoldo O\'donnell, 11. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'Oberta les 24 h.', 'POINT (2.43152957229316 41.5373569495522)', '41.5373569495522', '2.43152957229316'),
('E.S. GALP', 'Camí del Mig, 149. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de Servei', 'POINT (2.42287055784885 41.5329548526811)', '41.5329548526811', '2.42287055784885'),
('Farmàcia SPA', 'Carrer de Santa Maria, 3. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h.', 'POINT (2.44647228030697 41.540671712011)', '41.5406717120110', '2.44647228030697'),
('Farmàcia Plana', 'Plaça de Cuba, 4. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de 8:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.44052462617249 41.5375668133602)', '41.5375668133602', '2.44052462617249'),
('Farmàcia Simón', 'Avinguda de Jaume Recoder, 62. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a dissabtes de  9:00h a 21:00h. Festius de 9:00h a 14:00h', 'POINT (2.44354049146084 41.5337304623718)', '41.5337304623718', '2.44354049146084'),
('Escola Torre Llauder', 'Carrer de Ciutat Freta, 31. 08302 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d¿educació infantil \r\nEducació primària', 'POINT (2.43366037718841 41.5339412427253)', '41.5339412427253', '2.43366037718841'),
('Escola Joan Coromines (educació infantil)', 'Carrer de Pascual Madoz, 22. 08301 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d\'educació infantil', 'POINT (2.44960329023822 41.5406827101748)', '41.5406827101748', '2.44960329023822'),
('Escola Bressol municipal Tabalet', 'Ronda de Francesc Macià, 119. Mataró (BARCELONA)', 'Educació', 'Escola Bressol municipal', 'Primer cicle d\'educació infantil (0-3 anys)', 'POINT (2.43356077776149 41.536572316166)', '41.5365723161660', '2.43356077776149'),
('Parròquia de la Mare de Déu de Montserrat', 'Carrer de Sant Cugat, 141. 08302 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Església Catòlica', 'POINT (2.43584683665193 41.533161121214)', '41.5331611212140', '2.43584683665193'),
('Antic Hospital Sant Jaume i Santa Magdalena', 'Carrer de l\'Hospital, 31. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Atenció sociosanitària', 'Centre d\'assistència sanitària i sociosanitària', 'POINT (2.44893079329799 41.5396827222719)', '41.5396827222719', '2.44893079329799'),
('Sala d\'actes Parròquia Maria Auxiliadora', 'Carrer de la Gatassa, 1. 08303 Mataró (BARCELONA)', 'Cultura i Oci', 'Arts escèniques', 'Sala d\'Actes Església catòlica', 'POINT (2.42535012489685 41.5406867978226)', '41.5406867978226', '2.42535012489685'),
('Centre Cívic Rocafonda - El Palau', 'Carrer de Josep Punsola, 47. 08304 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Cívics', 'Punt d\'informació. Oficina d\'Atenció Ciutadana. Cessió bústies per entitats. Wifi gratuït', 'POINT (2.45093178809748 41.5489521736571)', '41.5489521736571', '2.45093178809748'),
('Farmàcia Coll', 'Carrer de Sant Josep, 30. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.44325319956568 41.539552094577)', '41.5395520945770', '2.44325319956568'),
('Centre cristià evangèlic Betània', 'Ronda de Sant Oleguer, 122. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Evangèlica', 'Centre de culte evangèlica', 'POINT (2.44793524661574 41.5519608339384)', '41.5519608339384', '2.44793524661574'),
('Església Cristiana China a Mataró', 'Avinguda de Jaume Recoder, 71. Mataró (BARCELONA)', 'Serveis religiosos', 'Església Evangèlica', 'Centre de culte evangelica', 'POINT (2.4439620344477 41.533595450286)', '41.5335954502860', '2.44396203444770'),
('Església de Filadèlfia', 'Carrer d\'Avinyó, 6. 08303 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Evangèlica', 'Centre de Culte evangèlic', 'POINT (2.42268258720366 41.5402097488651)', '41.5402097488651', '2.42268258720366'),
('Esglésies Reformades d\'Espanya', 'Carrer de Sant Isidor, 43. 08302 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Evangèlica', 'Centre de Culte evangèlic Presbisteriana', 'POINT (2.43968012996455 41.5422398084315)', '41.5422398084315', '2.43968012996455'),
('Agència de Salut Pública de Catalunya. Servei de Salut Pública al Barcelonés Nord - Maresme', 'Carrer de Joan Arnau Palau, 19. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Altres -serveis sanitaris-', 'Serveis Sanitaris', 'POINT (2.43066614799011 41.5387117261467)', '41.5387117261467', '2.43066614799011'),
('Centre Especial de Treball (CEO) del Maresme', 'Carrer de Galícia, 191. 08304 Mataró (BARCELONA)', 'Serveis socials', 'Centres per a persones amb discapacitat', 'Centre per a persones amb minusvalia', 'POINT (2.42586484903561 41.5568763780935)', '41.5568763780935', '2.42586484903561'),
('Oficina d\'Acció Social i Ciutadania del Maresme-Mataró', 'Carrer de Nàpols, 18. 08303 Mataró (BARCELONA)', 'Serveis socials', 'Oficines de Serveis socials', 'Mataró-Benestar Social Generalitat de Catalunya', 'POINT (2.42523759278374 41.5396758284668)', '41.5396758284668', '2.42523759278374'),
('Camp Municipal de Futbol Cirera', 'Carretera de Cirera, 173. 08304 Mataró (BARCELONA)', 'Esports', 'Camps esportius municipals', 'Camp de futbol de gespa artificial.', 'POINT (2.42992848084068 41.5541616958851)', '41.5541616958851', '2.42992848084068'),
('Camp Municipal d\'Esports del Centenari', 'Passeig de Carles Padrós, 32. 08304 Mataró (BARCELONA)', 'Esports', 'Camps esportius municipals', 'Entrenaments i competició de futbol.', 'POINT (2.44244414198221 41.5459835660169)', '41.5459835660169', '2.44244414198221'),
('Pista Poliesportiva Municipal de Rocafonda', 'Ronda de Rafael Estrany, 24. 08304 Mataró (BARCELONA)', 'Esports', 'Pistes i Poliesportius', 'Entrenaments i activitats d\'esports d\'equip de lleure.', 'POINT (2.45034268946787 41.5511311360533)', '41.5511311360533', '2.45034268946787'),
('Pistes Municipals de Petanca Ramon Berenguer', 'Carrer de la Marató, 117. 08303 Mataró (BARCELONA)', 'Esports', 'Pistes de petanca', 'Entrenaments i competició de petanca.', 'POINT (2.42401238916761 41.5349954151927)', '41.5349954151927', '2.42401238916761'),
('Aigües de Mataró, S.A', 'Carrer de Pitàgores, 1. 08304 Mataró (BARCELONA)', 'Companyies de subministrament', 'Aigua', 'Empresa municipal de subministrament d\'aigua', 'POINT (2.43735615908018 41.5515509445465)', '41.5515509445465', '2.43735615908018');
INSERT INTO `equipamientos` (`NOM`, `ADRECA`, `CATEGORIA`, `TIPUS`, `DESCRIPCIO`, `WKT`, `LAT`, `LNG`) VALUES
('TECNOCAMPUS', 'Avinguda d\'Ernest Lluch, 46. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Aparcament de rotació', 'Gestionat per Gintra', 'POINT (2.43515464142492 41.5280172005927)', '41.5280172005927', '2.43515464142492'),
('Centre de Documentació del Parc del Montnegre-Corredor(CDOC)', 'Carrer de Pablo Iglesias, 83. 08302 Mataró (BARCELONA)', 'Cultura i Oci', 'Arxius i Centres de documentació', 'S\'hi apleguen llibres, articles, revistes, fotografies i dibuixos referits tant als aspectes naturalístics com culturals del massís, especialment en el seu vessant maresmenc.', 'POINT (2.43285314165926 41.5304288735613)', '41.5304288735613', '2.43285314165926'),
('Servei d\'Educació', 'Baixada de les Figueretes, 1. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', 'Gestiona tot el que fa referència a les competències municipals en matèria educativa a la ciutat', 'POINT (2.44832796708392 41.5404221145694)', '41.5404221145694', '2.44832796708392'),
('Centre Social Carrer de Dinamarca', 'Carrer de Dinamarca, 10. 08303 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', 'Equipament municipal seu de l\'Associació de Via Europa', 'POINT (2.43098064882337 41.5468306185836)', '41.5468306185836', '2.43098064882337'),
('Casal de Barri Les Esmendies', 'Ronda de Leopoldo O\'donnell, 94. 08302 Mataró (BARCELONA)', 'Casals', 'Casals de barri', 'Casal de barri', 'POINT (2.43477154441911 41.5400441134614)', '41.5400441134614', '2.43477154441911'),
('E.S. GALP', 'Avinguda de Cabrera, 36. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de Servei', 'POINT (2.42735384921397 41.5240617165145)', '41.5240617165145', '2.42735384921397'),
('Serveis Territorials d\'Ensenyament Maresme-Vallès Oriental', 'Carrer de Cosme Churruca, 90. 08301 Mataró (BARCELONA)', 'Educació', 'Altres -oficines d\'educació-', 'Departament Ensenyament de la Generalitat de Catalunya', 'POINT (2.44482462892116 41.5338382991684)', '41.5338382991684', '2.44482462892116'),
('Oficina d\'Atenció Ciutadana (OFIAC) - Cirera', 'Carrer de Cadis, 1. 08304 Mataró (BARCELONA)', 'Administració municipal', 'Oficina d\'Atenció Ciutadana (OFIAC)', 'Servei d\'atenció al públic', 'POINT (2.43416154241158 41.5469990835442)', '41.5469990835442', '2.43416154241158'),
('Oficina Mataró Empresa', 'Avinguda d\'Ernest Lluch, 32. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Oficina Mataró Empresa', 'Oficina única per tramitar noves empreses', 'POINT (2.43468298017362 41.5283283221368)', '41.5283283221368', '2.43468298017362'),
('Gabinet d\'Alcaldia', 'La Riera, 48. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Presidència', NULL, 'POINT (2.44477763596592 41.5398389598186)', '41.5398389598186', '2.44477763596592'),
('Centre de Dia Mediterrània', 'Carrer del Riu Francolí, 9. 08304 Mataró (BARCELONA)', 'Serveis socials', 'Centres de Dia per a la gent gran', 'Geriatria', 'POINT (2.43430385068059 41.563558998593)', '41.5635589985930', '2.43430385068059'),
('CAP Ronda Cerdanya - ICS', 'Carrer del Vallès, 37. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Centres d\'Atenció Primària (CAP)', 'Centre d\'atenció primària de l\'Institut Català de la Salut.', 'POINT (2.42341828924221 41.5426007311139)', '41.5426007311139', '2.42341828924221'),
('Mercat del Palau', 'Carretera de Mata, 18. 08304 Mataró (BARCELONA)', 'Mercats i Centres comercials', 'Mercats fixos privats', 'Mercat privat', 'POINT (2.45047224496162 41.5463897647377)', '41.5463897647377', '2.45047224496162'),
('Servei de Tresoreria', 'Carrer El Carreró, 15. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', NULL, 'POINT (2.44522582356204 41.5400580336859)', '41.5400580336859', '2.44522582356204'),
('Centre d\'Acollida Municipal', 'Torrent de les Piques, 52. 08304 Mataró (BARCELONA)', 'Serveis socials', 'Centres d\'Acollida', 'Centre d\' acollida  per a transeünts i persones necessitades en cas d\'emergències i d\'Informació a l\'Immigrant', 'POINT (2.43749477219632 41.5545254083161)', '41.5545254083161', '2.43749477219632'),
('Centre Cívic Espai Gatassa', 'Carrer de Josep Monserrat Cuadrada, 1. 08303 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Cívics', 'Punt d¿informació\r\nServei gratuït Wifi\r\nSala Relacional (espai de trobada, exposicions, premsa gratuïta)', 'POINT (2.42869421264868 41.5376467970274)', '41.5376467970274', '2.42869421264868'),
('Centre de Dia Gatassa', 'Avinguda de la Gatassa, 43. 08303 Mataró (BARCELONA)', 'Serveis socials', 'Centres de Dia per a la gent gran', 'Residència i Centre de dia', 'POINT (2.42891617818552 41.5372202443217)', '41.5372202443217', '2.42891617818552'),
('Cambra de Comerç, Indústria i Navegació de Barcelona', 'Avinguda d\'Ernest Lluch, 32. 08302 Mataró (BARCELONA)', 'Altres organismes', 'Cambra de Comerç', 'Cambra de Comerç', 'POINT (2.43468298017365 41.5283283221324)', '41.5283283221324', '2.43468298017365'),
('Deixalleria de Cirera', 'Carrer de Galícia, 140. Mataró (BARCELONA)', 'Residus', 'Deixelleries fixes', 'Deixalleria Municipal', 'POINT (2.42620605451795 41.5528132797154)', '41.5528132797154', '2.42620605451795'),
('Parròquia de la Sagrada Família', 'Ronda de Jaume Ferran, 52. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Església Catòlica', 'POINT (2.43570645029583 41.5478176192524)', '41.5478176192524', '2.43570645029583'),
('Parròquia de Sant Josep', 'Carrer de Sant Josep, 7. 08302 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Església catòlica', 'POINT (2.44385108580989 41.5397310366162)', '41.5397310366162', '2.44385108580989'),
('Mesquita Bilal', 'Carrer de Josep M. Batista i Roca, 5. 08302 Mataró (BARCELONA)', 'Serveis religiosos', 'Mesquites', 'Centre de Culte Islàmic', 'POINT (2.42898479212864 41.5350380550284)', '41.5350380550284', '2.42898479212864'),
('Centre de Normalització Lingüística del Maresme (CNL)', 'Plaça dels Bous, 5. 08301 Mataró (BARCELONA)', 'Altres organismes', 'Centre de Normalització Lingüística del Maresme', 'Ens públic, creat l\'any 1989  per la Generalitat de Catalunya i 19 ajuntaments per fomentar el coneixement i l\'ús de la llengua catalana', 'POINT (2.44457882896851 41.5421872482509)', '41.5421872482509', '2.44457882896851'),
('Assemblea dels Germans de la Comissió Evangèlica Espanyola', 'Avinguda de Jaume Recoder, 71. Mataró (BARCELONA)', 'Serveis religiosos', 'Església Evangèlica', 'Centre de culte evangèlica', 'POINT (2.4439620344477 41.533595450286)', '41.5335954502860', '2.44396203444770'),
('Mercat de la Plaça Gran', 'Plaça Gran, 11. 08301 Mataró (BARCELONA)', 'Mercats i Centres comercials', 'Mercats fixos municipals', 'Mercat fixe de fruites i verdures', 'POINT (2.44682166969606 41.5401991162031)', '41.5401991162031', '2.44682166969606'),
('PUNT 9 - EdRL Aparcament de la Plaça de Cuba (P1)', 'Plaça de Cuba, 53. Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', 'Càrrega de  vehicles ( aparcament Plaça Cuba)', 'POINT (2.44130058383169 41.5375124152225)', '41.5375124152225', '2.44130058383169'),
('PUNT 12 - EdRL Aparcament del TecnoCampus (P8)', 'Avinguda d\'Ernest Lluch, 46. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', 'Càrrega de vehicles (aparcament Tecnocampus)', 'POINT (2.43515464142489 41.5280172005971)', '41.5280172005971', '2.43515464142489'),
('Base Nàutica Municipal', 'Passeig Marítim, 250. 08302 Mataró (BARCELONA)', 'Esports', 'Altres -instal·lacions esportives-', 'Es dedica a promoure la pràctica o aprenentatge de les activitats del mar i les que es realitzin al front martim i platja.', 'POINT (2.44615622879461 41.5332485632208)', '41.5332485632208', '2.44615622879461'),
('Centre Ocupacional Les Sureres', 'Carrer del Riu Segre, 25. 08304 Mataró (BARCELONA)', 'Serveis socials', 'Centres per a persones amb discapacitat', 'Serevi de teràpia ocupacional a persones amb disminució psíquica.', 'POINT (2.43550309073653 41.5626203258171)', '41.5626203258171', '2.43550309073653'),
('Direcció de Cultura', 'Carrer de Sant Josep, 9. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', 'Organisme de l\'Ajuntament que gestiona el patrimoni cultural de la ciutat\r\nNo adaptat', 'POINT (2.44357677380937 41.539617014118)', '41.5396170141180', '2.44357677380937'),
('Estació Depuradora d\'Aigües Residuals (EDAR)', 'Carrer de la Teixidora, 61. 08302 Mataró (BARCELONA)', 'Residus', 'Depuradora', 'Instal·lació destinada a la reducció de la contaminació que contenen les aigües residuals abans que siguin abocades a un medi receptor.', 'POINT (2.42540906101411 41.525303519682)', '41.5253035196820', '2.42540906101411'),
('Centre Social Carretera de Cirera', 'Carretera de Cirera, 33. 08304 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', 'Equipament municipal seu de l\'Associació de Veïns de Cirera', 'POINT (2.43555060887695 41.5497548906508)', '41.5497548906508', '2.43555060887695'),
('Llar d\'infants Sant Jordi', 'Ronda d\'Alfons XII, 25. 08302 Mataró (BARCELONA)', 'Educació', 'Llars d\'infants privades', 'Centre d\'educació infantil llar d\'infants', 'POINT (2.43956599318026 41.5347786171609)', '41.5347786171609', '2.43956599318026'),
('Llar d\'infants GEM', 'Passeig d\'Antoni Martí Cabanellas, 25. 08304 Mataró (BARCELONA)', 'Educació', 'Llars d\'infants privades', 'Llar de infants. Parvulari. Eduació infantil.', 'POINT (2.44501408249535 41.5466123151562)', '41.5466123151562', '2.44501408249535'),
('Pistes per a pràctiques i exàmens de conducció', 'Passeig de Marina, 185. Mataró (BARCELONA)', 'Mobilitat', 'Pistes per a pràctiques i exàmens de conducció', 'Equipament gestionat per Prefectura  General de Tràfic', 'POINT (2.42743793064267 41.521987683034)', '41.5219876830340', '2.42743793064267'),
('La Natura - Centre d\'herbodietètica', 'Plaça de Can Xammar, 2. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'Parafarmàcia', 'POINT (2.44773088426618 41.5394335015204)', '41.5394335015204', '2.44773088426618'),
('Església Adventista del Setè Dia', 'Carrer de la Mare de Déu de Núria, 36. 08303 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Adventista', 'Centre de culte adventista', 'POINT (2.42623216416606 41.5435495569247)', '41.5435495569247', '2.42623216416606'),
('Escola Superior Politècnica del Tecnocampus (ESUPT)', 'Avinguda d\'Ernest Lluch, 32. 08302 Mataró (BARCELONA)', 'Educació', 'Estudis universitaris', 'Centre adscrit a la Universitat Politècnica de Catalunya (UPC)', 'POINT (2.43468298017362 41.5283283221368)', '41.5283283221368', '2.43468298017362'),
('Camp Municipal de Futbol Pla d\'en Boet', 'Avinguda de Lluís Companys, 65. 08302 Mataró (BARCELONA)', 'Esports', 'Camps esportius municipals', 'Entrenaments i competició de futbol.', 'POINT (2.43286990636158 41.5330043134044)', '41.5330043134044', '2.43286990636158'),
('Direcció de Serveis Econòmics', 'Carrer El Carreró, 15. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', NULL, 'POINT (2.44522582356204 41.5400580336859)', '41.5400580336859', '2.44522582356204'),
('Coordinació Grup Ajuntament', 'La Riera, 48. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Presidència', NULL, 'POINT (2.4447776359659 41.539838959823)', '41.5398389598230', '2.44477763596590'),
('Farmàcia SPA', 'Carrer de Sant Valentí, 43. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de 9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.43551785896753 41.5326256637669)', '41.5326256637669', '2.43551785896753'),
('Hospital de Mataró', 'Carretera de Cirera, 230. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Hospital', 'Sanitat Hospitalària', 'POINT (2.4290771274211 41.5558472180467)', '41.5558472180467', '2.42907712742110'),
('Ensenyament concertat Sol-Ixent', 'Avinguda de la Gatassa, 68. 08303 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Segon cicle d\'educació infantil \r\nEducació primària\r\nEducació Secundària Obligatòria (ESO)', 'POINT (2.42776242692166 41.5379300893709)', '41.5379300893709', '2.42776242692166'),
('Direcció d\'Esports', 'Carrer de Sant Cugat, 169. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', 'Organisme  de l\'Ajuntament que gestiona tot el que fa referència als esports', 'POINT (2.43421741768719 41.5323942396143)', '41.5323942396143', '2.43421741768719'),
('Unitat de suport Desenvolupament i Territori', 'Carrer de Pablo Iglesias, 63. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Desenvolupament Econòmic i Territori', 'Encarregat d\'Urbanisme, Obres, Serveis i Manteniment, Ciutat Sostenible i Habitatge', 'POINT (2.43237131091188 41.5314108109707)', '41.5314108109707', '2.43237131091188'),
('Farmàcia Coll-del-Rio', 'Carrer de Sant Cristòfor, 1. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h.', 'POINT (2.44692885851627 41.539684267433)', '41.5396842674330', '2.44692885851627'),
('CAP La Llàntia - ICS', 'Carrer de la Verge de Guadalupe, 2. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Centres d\'Atenció Primària (CAP)', 'Centre d\'Atenció Primària de l\'Institut Català de la Salut', 'POINT (2.42793891830721 41.5464396849819)', '41.5464396849819', '2.42793891830721'),
('Llar Residència - Les Sureres', 'Carrer del Riu Segre, 25. 08304 Mataró (BARCELONA)', 'Serveis socials', 'Centres per a persones amb discapacitat', 'Centre per a persones amb discapacitat', 'POINT (2.43550309073653 41.5626203258171)', '41.5626203258171', '2.43550309073653'),
('PFI Can Noè', 'Carrer de Josep Punsola, 47. 08304 Mataró (BARCELONA)', 'Educació', 'Programes de Formació i Inserció', 'Programa de Qualificació Professional Inicial. PFI', 'POINT (2.45093178809748 41.5489521736571)', '41.5489521736571', '2.45093178809748'),
('Fundació Hospital Sant Jaume i Santa Magdalena', 'Carrer de Sant Pelegrí, 3. 08301 Mataró (BARCELONA)', 'Serveis sanitaris', 'Atenció sociosanitària', 'Sotmesa al Patronat de l\'Ajuntament de Mataró, per a la promoció i protecció de la salut i suport , orientació i gestió de serveis, centres i establiments sanitaris, sociosanitaris i socials, públics o privats de Mataró o del Maresme, entre d\'altres', 'POINT (2.44937732291864 41.5401155652462)', '41.5401155652462', '2.44937732291864'),
('Centre Municipal d\'Esports El Sorrall', 'Ronda de Josep Tarradellas, 103. 08303 Mataró (BARCELONA)', 'Esports', 'Altres -instal·lacions esportives-', 'Complex esportiu amb diferents activitats.', 'POINT (2.42102811518156 41.5403800455562)', '41.5403800455562', '2.42102811518156'),
('Espai Infant i Família - EB Rocafonda', 'Carrer de Santiago Rusiñol, 1. 08304 Mataró (BARCELONA)', 'Educació', 'Espais Infants i Família', 'Espai Infant i Família', 'POINT (2.45004289899086 41.5485416489708)', '41.5485416489708', '2.45004289899086'),
('Espai Infant i Família - EB Tabalet', 'Ronda de Francesc Macià, 119. 08302 Mataró (BARCELONA)', 'Educació', 'Espais Infants i Família', 'Espai Infant i Família', 'POINT (2.43356077776152 41.5365723161616)', '41.5365723161616', '2.43356077776152'),
('Espai Jove Cerdanyola', 'Passeig de Ramon Berenguer III, 82. 08303 Mataró (BARCELONA)', 'Serveis per a joves', 'Espai jove', 'Casal per a joves de més de 12 anys.', 'POINT (2.42563111127236 41.5373830605373)', '41.5373830605373', '2.42563111127236'),
('Farmàcia Corona-Subirana', 'Passeig de Ramon Berenguer III, 75. 08303 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'De dilluns a divendres de  9:00h a 13:30h i de 16:30h a 20:30h. Dissabtes de 9:00h a 13:30h', 'POINT (2.42462887697482 41.5370216739531)', '41.5370216739531', '2.42462887697482'),
('Farmàcia Subirats', 'Ronda de Rafael Estrany, 43. 08304 Mataró (BARCELONA)', 'Serveis sanitaris', 'Farmàcies', 'Oberta les 24 h.', 'POINT (2.45023764290876 41.5509458256867)', '41.5509458256867', '2.45023764290876'),
('Centre Tecnològic del Tèxtil (CETEX)', 'Carrer dels Germans Thos i Codina, 9. 08302 Mataró (BARCELONA)', 'Altres organismes', 'CETEX', 'Centre d\'Assessorament Tèxtil', 'POINT (2.44301863768319 41.5335425129888)', '41.5335425129888', '2.44301863768319'),
('Convent de les Tereses', 'Avinguda de Torner, 67. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', 'Capella de les MM. Carmelites Descalces', 'POINT (2.43968824437868 41.548300497181)', '41.5483004971810', '2.43968824437868'),
('Centre per la Igualtat i Recursos per les Dones (CIRD)', 'Carrer de Cosme Churruca, 88. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', 'Servei de Dona (CIRD-SIAD)', 'POINT (2.44470852961255 41.5339304290229)', '41.5339304290229', '2.44470852961255'),
('Equip d\'Atenció a l\'Infància i l\'Adolescència del Maresme', 'Plaça de Miquel Biada, 1. 08301 Mataró (BARCELONA)', 'Serveis per a joves', 'Oficines d\'Atenció i informació per a joves', 'Equip d\'atenció a la Infància i la Adolescència del Maresme', 'POINT (2.44490190833788 41.5333754466922)', '41.5333754466922', '2.44490190833788'),
('Can Gassol. Centre de Creació d\'Arts Escèniques', 'Plaça de la Pepa Maca, 15. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Arts escèniques', 'Centre de creació d\'arts escèniques', 'POINT (2.45138526784139 41.5445459132735)', '41.5445459132735', '2.45138526784139'),
('Centre Cívic Cabot i Barba', 'Plaça de Miquel Biada, 5. 08301 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Cívics', 'Punt d\'informació - Oficina Jove Maresme Sidral\r\nCessió de bústies per entitats  -  Cessió d\'armaris per entitats\r\nServei gratuït de Wifi\r\nEspai de trobada', 'POINT (2.44487432289563 41.5334985803693)', '41.5334985803693', '2.44487432289563'),
('Centre Social Torrent d\'en Pregària', 'Torrent d\'En Pregària, 6. 08304 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', 'Equipament municipal seu de l\'Associació de Camí de la Serra', 'POINT (2.44058647427564 41.5530479854606)', '41.5530479854606', '2.44058647427564'),
('Centre Social Ronda de Francesc Macià', 'Ronda de Francesc Macià, 103. 08302 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', NULL, 'POINT (2.4345190321936 41.5358081090341)', '41.5358081090341', '2.43451903219360'),
('Estació de Servei BP - Mataró I', 'Avinguda del Maresme, 1. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de servei', 'POINT (2.4360030441997 41.5298711329737)', '41.5298711329737', '2.43600304419970'),
('Escola Superior de Ciències Socials i de l\'Empresa del Tecnocampus (ESCSET)', 'Avinguda d\'Ernest Lluch, 32. 08302 Mataró (BARCELONA)', 'Educació', 'Estudis universitaris', 'Centre adscrit a la Universitat Pompeu Fabra (UPF)', 'POINT (2.43468298017362 41.5283283221368)', '41.5283283221368', '2.43468298017362'),
('Oficina d\'Atenció Ciutadana (OFIAC) - Pla d\'en Boet', 'Carrer de Juan Sebastián Elcano, 6. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Oficina d\'Atenció Ciutadana (OFIAC)', 'Atenció al públic', 'POINT (2.43552178933492 41.5358533810768)', '41.5358533810768', '2.43552178933492'),
('Oficina d\'Atenció Ciutadana (OFIAC) - Molins', 'Carrer de Nicolau Guañabens, 23. 08304 Mataró (BARCELONA)', 'Administració municipal', 'Oficina d\'Atenció Ciutadana (OFIAC)', 'Atenció al públic', 'POINT (2.44232719235017 41.5493866522752)', '41.5493866522752', '2.44232719235017'),
('Oficina d\'Atenció Ciutadana (OFIAC)  - Cerdanyola', 'Passeig de Ramon Berenguer III, 82. 08303 Mataró (BARCELONA)', 'Administració municipal', 'Oficina d\'Atenció Ciutadana (OFIAC)', 'Atenció al públic', 'POINT (2.42563111127236 41.5373830605373)', '41.5373830605373', '2.42563111127236'),
('Dipòsit de vehicles', 'Ronda de Rafael Estrany, 36. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Dipòsit vehicles', 'Dipòsit per els vehicles retirats de la via pública.', 'POINT (2.44976625353907 41.5516144457785)', '41.5516144457785', '2.44976625353907'),
('Servei d\'Urbanisme i Patrimoni', 'Carrer de Pablo Iglesias, 63. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Desenvolupament Econòmic i Territori', NULL, 'POINT (2.43237131091186 41.5314108109751)', '41.5314108109751', '2.43237131091186'),
('OTG - Oficina de Treball - Mataró I -Rondes', 'Carrer de Javier Castaños, 55. 08302 Mataró (BARCELONA)', 'Oficines de la Generalitat de Catalunya', 'Oficines de Treball', 'Oficina de Treball de la Generalitat (abans OTG)', 'POINT (2.43909589262581 41.5348231018327)', '41.5348231018327', '2.43909589262581'),
('Càmping Touring Club Maresme de Catalunya', 'Veïnat de Valldeix, 15. 08304 Mataró (BARCELONA)', 'Allotjament', 'Càmpings', 'Càmping', 'POINT (2.44453318441234 41.5606872909754)', '41.5606872909754', '2.44453318441234'),
('Cepsa', 'Camí Ral, 1. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de Servei', 'POINT (2.45746901771928 41.5416881229075)', '41.5416881229075', '2.45746901771928'),
('Nau Gaudí', 'Carrer de la Cooperativa, 47. 08302 Mataró (BARCELONA)', 'Cultura i Oci', 'Sales d\'exposicions i galeries d\'art', 'Nau Gaudí. Museu Art Contemporari.Exposició pintors catalans del segle XX', 'POINT (2.44248579002049 41.5339140900969)', '41.5339140900969', '2.44248579002049'),
('Poliesportiu Municipal del Carrer d\'Euskadi', 'Plaça de Flandes, 1. 08303 Mataró (BARCELONA)', 'Esports', 'Pistes i Poliesportius', 'Entrenaments i competicions diverses: Bàsquet, voleibol i gimnàstica. Activitats de físiques per a la gent gran i centres escolars. Jocs Escolars.', 'POINT (2.42902950684445 41.5449975525542)', '41.5449975525542', '2.42902950684445'),
('Telecentre', 'Plaça de Miquel Biada, 5. 08301 Mataró (BARCELONA)', 'Serveis per a joves', 'Oficines d\'Atenció i informació per a joves', NULL, 'POINT (2.44487432289563 41.5334985803693)', '41.5334985803693', '2.44487432289563'),
('Escola Germanes Bertomeu (educació infantil)', 'Ronda de Rafael Estrany, 2. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Educació infantil - parvulari', 'POINT (2.45225039495019 41.5495243596879)', '41.5495243596879', '2.45225039495019'),
('Escola La Llàntia', 'Carrer de Sant Josep de Calassanç, 2. 08303 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d\'educació infantil (parvulari)\r\nEducació primària', 'POINT (2.42690562523252 41.5451479115967)', '41.5451479115967', '2.42690562523252'),
('Escola Rocafonda', 'Carrer de Tàrrega, 41. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d\'educació infantil (parvulari)\r\nEducació primària', 'POINT (2.44705751477767 41.5506027626748)', '41.5506027626748', '2.44705751477767'),
('Mercat de la Plaça Gran (entorns del mercat)', 'Plaça Gran, 12. 08301 Mataró (BARCELONA)', 'Mercats i Centres comercials', 'Mercats setmanals', 'Mercat fixe i ambulant de dilluns a dissabte, de fruites i verdures', 'POINT (2.44695634458931 41.5402324126919)', '41.5402324126919', '2.44695634458931'),
('Servei de Relacions Laborals i Assistència Jurídica', 'Carrer El Carreró, 15. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', NULL, 'POINT (2.44522582356204 41.5400580336859)', '41.5400580336859', '2.44522582356204'),
('Servei de Desenvolupament i Organització', 'Carrer El Carreró, 15. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', NULL, 'POINT (2.44522582356204 41.5400580336859)', '41.5400580336859', '2.44522582356204'),
('Servei 010', 'Avinguda d\'Ernest Lluch, 32. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', NULL, 'POINT (2.43468298017362 41.5283283221368)', '41.5283283221368', '2.43468298017362'),
('Refugi d\'Animals domèstics Cal Pilé', 'Veïnat de Mata, 147. Mataró (BARCELONA)', 'Altres organismes', 'Refugis d\'animals', 'Associació de voluntaris per a la protecció d\'animals i refugi per a animals abandonats. Gats i gossos', 'POINT (2.46105082157233 41.5441259922446)', '41.5441259922446', '2.46105082157233'),
('Centre d\'Educació especial Les Aigües', 'Ronda del Cros, 1. 08303 Mataró (BARCELONA)', 'Educació', 'Centres d\'Educació especial', 'Oferta educativa: \r\nEducació especial. \r\nPrograma de transició a la vida adulta.', 'POINT (2.42355343337872 41.5345555136369)', '41.5345555136369', '2.42355343337872'),
('Ensenyament concertat Sagrat Cor de Jesús', 'Carrer de La Coma, 21. 08301 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Segon cicle d\'educació infantil (parvulari)\r\nEducació primària	\r\nEducació Secundària Obligatòria (ESO)', 'POINT (2.44736706759671 41.5416771670476)', '41.5416771670476', '2.44736706759671'),
('Ensenyament concertat El Turó', 'Ronda de la Roca Blanca, 46. 08303 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Segon cicle d¿Educació Infantil \r\nEducació Primària\r\nEducació Secundària Obligatòria (ESO)', 'POINT (2.42754446567118 41.5443974916939)', '41.5443974916939', '2.42754446567118'),
('Poliesportiu Municipal Jaume Parera i León', 'Avinguda del Corregiment de Mataró, 62. 08304 Mataró (BARCELONA)', 'Esports', 'Pistes i Poliesportius', 'Entrenaments i competició de patinatge artístic i hoquei patins.', 'POINT (2.43763525931364 41.5471134945806)', '41.5471134945806', '2.43763525931364'),
('Benzinera Alcampo', 'Carretera de Cirera, 163. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de Servei', 'POINT (2.43003100390187 41.5533408354042)', '41.5533408354042', '2.43003100390187'),
('Gasolineras SARAS', 'Ronda d\'Alfons X el Savi, 112. 08301 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de Servei', 'POINT (2.4494360201257 41.5456574336043)', '41.5456574336043', '2.44943602012570'),
('Diagonal de Áreas (Ballenoil)', 'Ronda dels Països Catalans, 15. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de Servei', 'POINT (2.43789967188093 41.5535838808932)', '41.5535838808932', '2.43789967188093'),
('Red Ahorro', 'Camí Ral, 547. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de Servei', 'POINT (2.44069530806115 41.534314198135)', '41.5343141981350', '2.44069530806115'),
('Red Ahorro', 'Camí del Mig, 113. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Benzineres', 'Estació de Servei', 'POINT (2.42603930620793 41.5345079828999)', '41.5345079828999', '2.42603930620793'),
('Escola Josep Montserrat', 'Carrer de Josep Monserrat Cuadrada, 3. 08303 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d¿educació infantil \r\nEducació primària', 'POINT (2.42885606818821 41.5380211300196)', '41.5380211300196', '2.42885606818821'),
('Escola Maria Mercè Marçal', 'Riera de Figuera Major, 60. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d¿educació infantil \r\nEducació primària', 'POINT (2.44134005190931 41.553025907395)', '41.5530259073950', '2.44134005190931'),
('Escola Marta Mata', 'Carrer d\'Aristòtil, 23. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Segon cicle d¿educació infantil \r\nEducació primària', 'POINT (2.43452818608439 41.5510830830034)', '41.5510830830034', '2.43452818608439'),
('Centre d\'Educació especial L\'Arboç', 'Carrer de la Pagesia, 19. 08304 Mataró (BARCELONA)', 'Educació', 'Centres d\'Educació especial', 'Educació especial (des dels 3 als 20 anys)', 'POINT (2.45318827866769 41.5572870723009)', '41.5572870723009', '2.45318827866769'),
('Ensenyament concertat Cor de Maria', 'La Riera, 58. 08301 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', 'Segon cicle d\'educació infantil \r\nEducació primària\r\nEducació Secundària Obligatòria (ESO)', 'POINT (2.44461391423404 41.5402013571987)', '41.5402013571987', '2.44461391423404'),
('Escola Bressol municipal Rocafonda', 'Carrer de Santiago Rusiñol, 1. 08304 Mataró (BARCELONA)', 'Educació', 'Escola Bressol municipal', 'Primer cicle d\'educació infantil (0-3 anys)', 'POINT (2.45004289899083 41.5485416489752)', '41.5485416489752', '2.45004289899083'),
('Escola Bressol municipal Els Garrofers', 'Carrer de Josep M. de Sagarra, 5. 08304 Mataró (BARCELONA)', 'Educació', 'Escola Bressol municipal', 'Primer cicle d\'educació infantil (0-3 anys)', 'POINT (2.44204344914973 41.5534612049475)', '41.5534612049475', '2.44204344914973'),
('Escola Bressol municipal La Llàntia', 'Carrer de Galícia, 3. 08303 Mataró (BARCELONA)', 'Educació', 'Escola Bressol municipal', 'Primer cicle d\'educació infantil (0-3 anys)', 'POINT (2.42713007867303 41.5462958483136)', '41.5462958483136', '2.42713007867303'),
('Escola Bressol municipal La Riereta', 'Ronda de Frederic Mistral, 8. 08304 Mataró (BARCELONA)', 'Educació', 'Escola Bressol municipal', 'Primer cicle d\'educació infantil (0-3 anys)', 'POINT (2.43844419260611 41.5498664269621)', '41.5498664269621', '2.43844419260611'),
('Clap. Sala de concerts', 'Carrer de Manuel Serra i Moret, 4. 08302 Mataró (BARCELONA)', 'Cultura i Oci', 'Sales de concerts i espectacles', 'Sala Clap, bar,sala de concerts, actuacions, música', 'POINT (2.43162868818281 41.5335723178746)', '41.5335723178746', '2.43162868818281'),
('M1TV - Televisió de Mataró', 'Carrer de Tordera, 37. 08302 Mataró (BARCELONA)', 'Cultura i Oci', 'Mitjans audiovisuals', 'M1TV - Televisió de Mataró', 'POINT (2.43456883449354 41.5271565816022)', '41.5271565816022', '2.43456883449354'),
('Servei Jurídic Administratiu', 'Avinguda de Josep Puig i Cadafalch, 101. 08303 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', NULL, 'POINT (2.42866332668914 41.5400818317203)', '41.5400818317203', '2.42866332668914'),
('Centre Social La Casa de la Palmera', 'Carrer de Federico Carlo Gravina, 6. 08301 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', 'Equipament Municipal', 'POINT (2.44545213478718 41.5352886563716)', '41.5352886563716', '2.44545213478718'),
('Unitat de Gestió Agrícola i Forestal', 'Carrer de Pablo Iglesias, 63. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Desenvolupament Econòmic i Territori', NULL, 'POINT (2.43237131091188 41.5314108109707)', '41.5314108109707', '2.43237131091188'),
('Centre Cívic Pla d\'en Boet', 'Carrer de Juan Sebastián Elcano, 6. 08302 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Cívics', 'Punt d\'informació\r\nOficina d\'Atenció Ciutadana (OFIAC) \r\nOrdinador per tràmits on-line. Sala d\'estudi. -Servei gratuït de wifi', 'POINT (2.43552178933492 41.5358533810768)', '41.5358533810768', '2.43552178933492'),
('Escola Joan Coromines (educació primària)', 'Carrer de Sant Pere, 4. 08301 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', 'Educació primària', 'POINT (2.44937820845895 41.5388249704054)', '41.5388249704054', '2.44937820845895'),
('Ajuntament de Mataró', 'La Riera, 48. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Ajuntament', 'Casa Consistorial', 'POINT (2.4447776359659 41.539838959823)', '41.5398389598230', '2.44477763596590'),
('Servei d\'Ocupació', 'Carrer de Francisco d\'Herrera, 70. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Desenvolupament Econòmic i Territori', 'Proporcionar serveis d\'assistència per a la recerca de feina i de reciclatge professional als treballadors desocupats  i als actius, i sobretot a les persones més amenaçades per la desocupació.', 'POINT (2.45346857850506 41.5435980128769)', '41.5435980128769', '2.45346857850506'),
('Servei de Compres i Contractacions', 'Carrer El Carreró, 15. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', NULL, 'POINT (2.44522582356204 41.5400580336859)', '41.5400580336859', '2.44522582356204'),
('Direcció de Recursos Humans i Organització', 'Carrer El Carreró, 15. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', NULL, 'POINT (2.44522582356204 41.5400580336859)', '41.5400580336859', '2.44522582356204'),
('Direcció d\'Ensenyament', 'Baixada de les Figueretes, 1. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', 'Organisme  de l\'Ajuntament constituït per a la gestió, organització i administració de les competències municipals en matèria d\'educació.', 'POINT (2.44832796708389 41.5404221145739)', '41.5404221145739', '2.44832796708389'),
('Servei de Mobilitat', 'Plaça de Granollers, 11. 08304 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Gestió de l\'Espai Públic', 'Regidoria delegada encarregada dels temes de transports i mobilitat dins la ciutat', 'POINT (2.43570448507209 41.5408819219977)', '41.5408819219977', '2.43570448507209'),
('Servei d\'Assessorament, Gestió i Planificació', 'Plaça de Granollers, 11. 08304 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Gestió de l\'Espai Públic', NULL, 'POINT (2.43570448507209 41.5408819219977)', '41.5408819219977', '2.43570448507209'),
('Oficina del Defensor del Ciutadà de Mataró', 'Carrer de Cuba, 47. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Presidència', 'Institució que vetlla pels drets dels ciutadans en relació a l\'actuació de l\'Administració municipal', 'POINT (2.44177311215095 41.5363696536918)', '41.5363696536918', '2.44177311215095'),
('Hotel URH Mataró', 'Camí Ral, 648. 08302 Mataró (BARCELONA)', 'Allotjament', 'Hotels', 'Hotel', 'POINT (2.43700400405009 41.5315447048103)', '41.5315447048103', '2.43700400405009'),
('Hotel Ibis', 'Carrer de Tordera, 2. 08302 Mataró (BARCELONA)', 'Allotjament', 'Hotels', 'Hotel', 'POINT (2.43348658577915 41.5276987230152)', '41.5276987230152', '2.43348658577915'),
('Casal Municipal de la Gent Gran de Rocafonda - El Palau', 'Carrer de Colòmbia, 59. 08304 Mataró (BARCELONA)', 'Casals', 'Casals per a la gent gran', NULL, 'POINT (2.45085889896757 41.5480689958522)', '41.5480689958522', '2.45085889896757'),
('Butano Maresme, S.A', 'Camí Ral, 347. 08301 Mataró (BARCELONA)', 'Companyies de subministrament', 'Gas', 'Servei de Distribució de Gas Butà', 'POINT (2.44571055531413 41.537639876289)', '41.5376398762890', '2.44571055531413'),
('Correus i Telègrafs (seu nº1)', 'Camí Ral, 614. 08302 Mataró (BARCELONA)', 'Administració de l\'Estat', 'Oficines de Correus', 'Correus', 'POINT (2.43796923137803 41.5322990251016)', '41.5322990251016', '2.43796923137803'),
('Punt d\'informació turística', 'Plaça de Miquel Biada, 5. 08301 Mataró (BARCELONA)', 'Turisme', 'Oficina de turisme', 'Promoció i suport al sector turístic', 'POINT (2.44487432289563 41.5334985803693)', '41.5334985803693', '2.44487432289563'),
('Servei de Terapia Ocupacional Jaume Isern', 'Carrer de Galícia, 191. 08304 Mataró (BARCELONA)', 'Serveis socials', 'Centres per a persones amb discapacitat', 'Fundació Maresme. Servei de Terapia Ocupacional', 'POINT (2.42586484903561 41.5568763780935)', '41.5568763780935', '2.42586484903561'),
('Servei Ocupacional d\'Inserció (SOI)', 'Carrer de Galícia, 191. 08304 Mataró (BARCELONA)', 'Serveis socials', 'Centres per a persones amb discapacitat', 'Fundació Maresme (SOI) Servei Ocupacional d\'Inserció', 'POINT (2.42586484903561 41.5568763780935)', '41.5568763780935', '2.42586484903561'),
('Servei de Formacíó i Inserció (SEFI)', 'Carrer de Galícia, 191. 08304 Mataró (BARCELONA)', 'Serveis socials', 'Centres per a persones amb discapacitat', 'Fundació Maresme (SEFI) Formació i inserció', 'POINT (2.42586484903561 41.5568763780935)', '41.5568763780935', '2.42586484903561'),
('Llar Residència - Carrer Vitòria', 'Carrer de Vitòria, 16. 08303 Mataró (BARCELONA)', 'Serveis socials', 'Centres per a persones amb discapacitat', 'Residència per a persones amb discapacitat.  Fundació Maresme Llar residència Vitòria', 'POINT (2.42521468429238 41.539026356354)', '41.5390263563540', '2.42521468429238'),
('Estació de Rodalies', 'Avinguda del Maresme, 166. 08300 Mataró (BARCELONA)', 'Mobilitat', 'Rodalies de Catalunya', 'Estació de trens', 'POINT (2.44525321514336 41.5332944781928)', '41.5332944781928', '2.44525321514336'),
('Oficina de suport Alcaldia', 'La Riera, 48. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Presidència', 'Alcaldia', 'POINT (2.44477763596592 41.5398389598186)', '41.5398389598186', '2.44477763596592'),
('Atenció a la Salut Sexual i Reproductiva', 'Ronda de Joan Prim, 35. 08302 Mataró (BARCELONA)', 'Serveis sanitaris', 'Centres d\'Atenció Primària (CAP)', 'Servei Dona i Parella', 'POINT (2.43588676606596 41.5386732249864)', '41.5386732249864', '2.43588676606596'),
('Registre de la Propietat núm. 3', 'La Rambla, 40. 08302 Mataró (BARCELONA)', 'Altres organismes', 'Registre de la Propietat', 'Registre Propietat', 'POINT (2.44368273194747 41.5368309478111)', '41.5368309478111', '2.44368273194747'),
('Cinema Foment', 'Carrer Nou, 11. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Cinemes', 'Cinema', 'POINT (2.44477269108586 41.5409476029239)', '41.5409476029239', '2.44477269108586'),
('Assemblea de Germans', 'Carrer de Salvador Llanas, 6. 08303 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Evangèlica', 'Centre de culte evangèlica', 'POINT (2.42594318118626 41.5421843377969)', '41.5421843377969', '2.42594318118626'),
('PUNT 10 - EdRsR Aparcament de la Plaça de Granollers (P5)', 'Camí de la Geganta, 82. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', 'Càrrega de  vehicles ( aparcament Plaça de Granollers)', 'POINT (2.43659647552176 41.5414021293295)', '41.5414021293295', '2.43659647552176'),
('PUNT 11 - EdRsR Aparcament de l\'Espai Firal Parc Central (P6)', 'Camí de la Geganta, 2. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', 'Càrrega de vehicles ( Parc Central)', 'POINT (2.44048613397917 41.5443081425763)', '41.5443081425763', '2.44048613397917'),
('Mercat de la Plaça de Cuba', 'Plaça de Cuba, 47. 08302 Mataró (BARCELONA)', 'Mercats i Centres comercials', 'Mercats fixos municipals', 'Mercat fixe de fruita i verdura i ambulant els dissabtes, de fruites i verdures i els dijous, de roba', 'POINT (2.44106311708938 41.5373290696751)', '41.5373290696751', '2.44106311708938'),
('SABA - Plaça Santa Anna', 'Camí Ral, 382. 08301 Mataró (BARCELONA)', 'Mobilitat', 'Aparcament de rotació', NULL, 'POINT (2.44441648631515 41.5372107862538)', '41.5372107862538', '2.44441648631515'),
('Església de Sant Pau', 'Carrer de las Siete Partidas, 40. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', NULL, 'POINT (2.45150692833708 41.5460768967146)', '41.5460768967146', '2.45150692833708'),
('Llar d\'infants Sol Ixent', 'Avinguda de la Gatassa, 68. 08303 Mataró (BARCELONA)', 'Educació', 'Llars d\'infants privades', NULL, 'POINT (2.42776242692166 41.5379300893709)', '41.5379300893709', '2.42776242692166'),
('Parada de taxi - Parc de Cerdanyola', NULL, 'Mobilitat', 'Parada de taxi', NULL, 'POINT (2.42593070913894 41.5399325008266)', '41.5399325008266', '2.42593070913894'),
('Centre de Dia Mediterrània', 'Carrer del Riu Francolí, 9. 08304 Mataró (BARCELONA)', 'Serveis socials', 'Centres residencials per a gent gran', NULL, 'POINT (2.43430385068059 41.563558998593)', '41.5635589985930', '2.43430385068059'),
('Parada de taxi - Muralla de Sant Llorenç', NULL, 'Mobilitat', 'Parada de taxi', NULL, 'POINT (2.44458013498327 41.5383915186837)', '41.5383915186837', '2.44458013498327'),
('Parada de taxi - Carrer de Josep M. Batista i Roca (dissabtes i festius de 0 a 6h)', 'Carrer de Josep M. Batista i Roca, 54. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Parada de taxi', NULL, 'POINT (2.42388823276101 41.5323277538097)', '41.5323277538097', '2.42388823276101'),
('Gimnàs Municipal del Casal de Joves', 'Plaça d\'Espanya, 1. 08304 Mataró (BARCELONA)', 'Esports', 'Altres -instal·lacions esportives-', NULL, 'POINT (2.44259982930668 41.545016796545)', '41.5450167965450', '2.44259982930668'),
('Plaça de les Tereses', 'Plaça de les Tereses, 42. Mataró (BARCELONA)', NULL, NULL, NULL, 'POINT (2.44179859427142 41.5385801305666)', '41.5385801305666', '2.44179859427142'),
('PUMSA - Plaça de Cuba', 'Plaça de Cuba, 53. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Aparcament de rotació', NULL, 'POINT (2.44130058383172 41.5375124152181)', '41.5375124152181', '2.44130058383172'),
('Centre Social Carrer d\'Almeria', 'Carrer d\'Almeria, 20. 08304 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', NULL, 'POINT (2.44504841462973 41.5527403644853)', '41.5527403644853', '2.44504841462973'),
('Pistes Municipals de Petanca Pla d\'en Boet', NULL, 'Esports', 'Pistes de petanca', NULL, 'POINT (2.43404594830122 41.5325473306019)', '41.5325473306019', '2.43404594830122'),
('Plaça Granollers', 'Camí de la Geganta, 82. 08304 Mataró (BARCELONA)', NULL, NULL, NULL, 'POINT (2.43659647552176 41.5414021293295)', '41.5414021293295', '2.43659647552176'),
('Aparcament lliure - Riera de Figuera Major', NULL, 'Mobilitat', 'Aparcament lliure', NULL, 'POINT (2.44001925183406 41.550144767185)', '41.5501447671850', '2.44001925183406'),
('PUNT 8 - EdRL Aparcament de la Plaça de les Tereses (P2)', 'Plaça de les Tereses, 42. Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', NULL, 'POINT (2.44179859427142 41.5385801305666)', '41.5385801305666', '2.44179859427142'),
('Plaça de Santa Anna', 'Camí Ral, 382. 08302 Mataró (BARCELONA)', NULL, NULL, NULL, 'POINT (2.44441648631513 41.5372107862582)', '41.5372107862582', '2.44441648631513'),
('Parada de taxi - Avinguda del Perú', NULL, 'Mobilitat', 'Parada de taxi', NULL, 'POINT (2.44787822673481 41.5481037068482)', '41.5481037068482', '2.44787822673481'),
('PFI Escola Pia Santa Anna', 'Carrer de Sant Agustí, 59. 08301 Mataró (BARCELONA)', 'Educació', 'Programes de Formació i Inserció', NULL, 'POINT (2.4460734560363 41.5355502900255)', '41.5355502900255', '2.44607345603630'),
('Centre Social Can Marchal', NULL, 'Centres Cívics i Socials', 'Centres Socials', NULL, 'POINT (2.43921473722187 41.5387993257928)', '41.5387993257928', '2.43921473722187'),
('SABA - Casc antic', 'Camí Ral, 264. 08301 Mataró (BARCELONA)', 'Mobilitat', 'Aparcament de rotació', NULL, 'POINT (2.44844377605865 41.538849632219)', '41.5388496322190', '2.44844377605865'),
('Capella de la Fundació Cabanelles', 'Passeig d\'Antoni Martí Cabanellas, 2. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', NULL, 'POINT (2.44519866120909 41.5466585508281)', '41.5466585508281', '2.44519866120909'),
('Centre de Dia Cerdanyola', 'Avinguda de Josep Puig i Cadafalch, 210. 08303 Mataró (BARCELONA)', 'Serveis socials', 'Centres de Dia per a la gent gran', NULL, 'POINT (2.42508309593626 41.5404569097324)', '41.5404569097324', '2.42508309593626'),
('Llar d\'infants El Mallol', 'Carrer de Jaume Isern, 18. 08302 Mataró (BARCELONA)', 'Educació', 'Llars d\'infants privades', NULL, 'POINT (2.43953773077722 41.5407012991002)', '41.5407012991002', '2.43953773077722'),
('Centre Social Camí Ral', 'Camí Ral, 163. 08301 Mataró (BARCELONA)', 'Centres Cívics i Socials', 'Centres Socials', NULL, 'POINT (2.45096393198032 41.5397831547824)', '41.5397831547824', '2.45096393198032'),
('Aparcament lliure - Carrer de Galícia', 'Carrer de Galícia, 220. Mataró (BARCELONA)', 'Mobilitat', 'Aparcament lliure', NULL, 'POINT (2.42657491308289 41.557026140625)', '41.5570261406250', '2.42657491308289'),
('PUNT 5 - EdRsR Muralla de la Presó', 'Muralla de la Presó, 14. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', NULL, 'POINT (2.44301726513218 41.54150925584)', '41.5415092558400', '2.44301726513218'),
('Parada de taxi - Carrer de Tordera', NULL, 'Mobilitat', 'Parada de taxi', NULL, 'POINT (2.43348548868067 41.527770514447)', '41.5277705144470', '2.43348548868067'),
('Aparcament lliure - Carrer del Molí de Vent', 'Carrer del Molí de Vent, 53. 08303 Mataró (BARCELONA)', 'Mobilitat', 'Aparcament lliure', NULL, 'POINT (2.42933800755133 41.5420683279935)', '41.5420683279935', '2.42933800755133'),
('Deganat Jutjats de Mataró', 'Plaça de Francisco Tomás y Valiente, 1. 08302 Mataró (BARCELONA)', 'Justícia', 'Jutjats', NULL, 'POINT (2.43955782513172 41.5327786609702)', '41.5327786609702', '2.43955782513172'),
('Velòdrom Municipal', 'Avinguda del Velòdrom, 27. 08304 Mataró (BARCELONA)', 'Esports', 'Altres -instal·lacions esportives-', NULL, 'POINT (2.44022259027145 41.5466802756667)', '41.5466802756667', '2.44022259027145'),
('Policia Local', 'Plaça de Granollers, 11. 08304 Mataró (BARCELONA)', 'Seguretat', 'Comissaries', NULL, 'POINT (2.43570448507209 41.5408819219977)', '41.5408819219977', '2.43570448507209'),
('Lavabo públic - Platja del Varador', NULL, 'Lavabos públics', 'Lavabo adaptat', NULL, 'POINT (2.45010663411732 41.5360953385549)', '41.5360953385549', '2.45010663411732'),
('Lavabo públic - Platja del Callao', NULL, 'Lavabos públics', 'Lavabo no adaptat', NULL, 'POINT (2.4561422358116 41.5400087934925)', '41.5400087934925', '2.45614223581160'),
('PUNT 8 - EdRsR Aparcament de la Plaça de les Tereses (P2)', 'Plaça de les Tereses, 42. Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', NULL, 'POINT (2.44179859427145 41.5385801305622)', '41.5385801305622', '2.44179859427145'),
('Pista de Ciclisme del Velòdrom municipal', 'Avinguda del Velòdrom, 27. 08304 Mataró (BARCELONA)', 'Esports', 'Altres -instal·lacions esportives-', NULL, 'POINT (2.44022259027145 41.5466802756667)', '41.5466802756667', '2.44022259027145'),
('Direcció d\'Innovació i Qualitat', 'La Riera, 48. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Serveis Centrals', NULL, 'POINT (2.44477763596592 41.5398389598186)', '41.5398389598186', '2.44477763596592'),
('Espai Infant i Família - EB La Llàntia', 'Carrer de Galícia, 3. 08303 Mataró (BARCELONA)', 'Educació', 'Espais Infants i Família', NULL, 'POINT (2.42713007867306 41.5462958483092)', '41.5462958483092', '2.42713007867306'),
('Can Xammar', 'Camí Ral, 264. 08301 Mataró (BARCELONA)', NULL, NULL, NULL, 'POINT (2.44844377605861 41.5388496322234)', '41.5388496322234', '2.44844377605861'),
('Parada de taxi - Hospital de Mataró', NULL, 'Mobilitat', 'Parada de taxi', NULL, 'POINT (2.42948332144851 41.5561857322138)', '41.5561857322138', '2.42948332144851'),
('Lavabo públic - Parc de Cerdanyola', 'Avinguda de la Gatassa, 130. 08303 Mataró (BARCELONA)', 'Lavabos públics', 'Lavabo adaptat', NULL, 'POINT (2.42613163822766 41.5394893043275)', '41.5394893043275', '2.42613163822766'),
('Servei de Salut i Consum', 'Avinguda de Josep Puig i Cadafalch, 101. 08303 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', NULL, 'POINT (2.42866332668916 41.5400818317159)', '41.5400818317159', '2.42866332668916'),
('PUNT 3 - EdRsR Avinguda de la Gatassa', 'Avinguda de la Gatassa, 134. 08303 Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', NULL, 'POINT (2.42602950504867 41.5397029110852)', '41.5397029110852', '2.42602950504867'),
('Plaça de Cuba', 'Plaça de Cuba, 41. 08302 Mataró (BARCELONA)', NULL, NULL, NULL, 'POINT (2.44094902879145 41.5372405902775)', '41.5372405902775', '2.44094902879145'),
('PUNT 11 - EdRL Aparcament de l\'Espai Firal Parc Central (P6)', 'Camí de la Geganta, 2. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', NULL, 'POINT (2.44048613397917 41.5443081425763)', '41.5443081425763', '2.44048613397917'),
('PUNT 14 - EdRL Aparcament del Port de Mataró', NULL, 'Mobilitat', 'Punt de càrrega de vehicles', NULL, 'POINT (2.44352169315651 41.5309935864694)', '41.5309935864694', '2.44352169315651'),
('Aparcament lliure - Ronda de Bellavista', NULL, 'Mobilitat', 'Aparcament lliure', NULL, 'POINT (2.42053795117873 41.5421452205452)', '41.5421452205452', '2.42053795117873'),
('Fundació Hospital Sant Jaume i Santa Magdalena', 'Carrer de Sant Pelegrí, 3. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Presidència', NULL, 'POINT (2.44937732291866 41.5401155652418)', '41.5401155652418', '2.44937732291866'),
('PUNT 4 - EdRsR Carrer de Pablo Ruiz Picasso', 'Carrer de Pablo Ruiz Picasso, 2. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', NULL, 'POINT (2.44845542339048 41.5486874119786)', '41.5486874119786', '2.44845542339048'),
('PUNT 2 - EdRR Carretera de Barcelona, 92 (MESSA)', 'Carretera de Barcelona, 92. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', NULL, 'POINT (2.42689016933563 41.5243657918984)', '41.5243657918984', '2.42689016933563'),
('Parc Central', 'Camí de la Geganta, 2. 08304 Mataró (BARCELONA)', NULL, NULL, NULL, 'POINT (2.44048613397917 41.5443081425763)', '41.5443081425763', '2.44048613397917'),
('Aparcament lliure - Passeig marítim', NULL, 'Mobilitat', 'Aparcament lliure', NULL, 'POINT (2.45317705044705 41.5381922370054)', '41.5381922370054', '2.45317705044705'),
('Lavabo públic - Parc Central', NULL, 'Lavabos públics', 'Lavabo no adaptat', NULL, 'POINT (2.44192101963203 41.5459057122523)', '41.5459057122523', '2.44192101963203'),
('Parada de taxi - Plaça d\'Espanya', NULL, 'Mobilitat', 'Parada de taxi', NULL, 'POINT (2.44190547875557 41.544465221633)', '41.5444652216330', '2.44190547875557'),
('Consorci del Museu d\'Art Contemporani', 'Carrer de Sant Josep, 9. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', NULL, 'POINT (2.44357677380939 41.5396170141136)', '41.5396170141136', '2.44357677380939'),
('Montserrat', 'Carrer de Montserrat, 39. 08302 Mataró (BARCELONA)', NULL, NULL, NULL, 'POINT (2.44305669093751 41.5370727825748)', '41.5370727825748', '2.44305669093751'),
('Parada de taxi - Plaça de les Tereses', NULL, 'Mobilitat', 'Parada de taxi', NULL, 'POINT (2.44267359220889 41.5384385902948)', '41.5384385902948', '2.44267359220889'),
('PARKIA - Tomás y Valiente - Jutjats', 'Carrer de Josep Abril, 4. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Aparcament de rotació', NULL, 'POINT (2.43987166966838 41.533137548996)', '41.5331375489960', '2.43987166966838'),
('Església Reformada Presbiteriana', 'Carrer de Sant Isidor, 43. 08302 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Evangèlica', NULL, 'POINT (2.43968012996458 41.5422398084271)', '41.5422398084271', '2.43968012996458');
INSERT INTO `equipamientos` (`NOM`, `ADRECA`, `CATEGORIA`, `TIPUS`, `DESCRIPCIO`, `WKT`, `LAT`, `LNG`) VALUES
('Institut Les Cinc Sénies', 'Ronda de Rafael Estrany, 60. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Secundari', NULL, 'POINT (2.44921919657009 41.5520751021495)', '41.5520751021495', '2.44921919657009'),
('PUNT 13 - EdRL Aparcament del Port de Mataró', NULL, 'Mobilitat', 'Punt de càrrega de vehicles', NULL, 'POINT (2.44352601503119 41.5309893132448)', '41.5309893132448', '2.44352601503119'),
('Aparcament lliure - Aparcament Ramon Berenguer III', 'Passeig de Ramon Berenguer III, 42. 08303 Mataró (BARCELONA)', 'Mobilitat', 'Aparcament lliure', NULL, 'POINT (2.42436415364669 41.5366167286835)', '41.5366167286835', '2.42436415364669'),
('Aparcament lliure - Riera de Figuera Major', 'Riera de Figuera Major, 76. Mataró (BARCELONA)', 'Mobilitat', 'Aparcament lliure', NULL, 'POINT (2.44248472466104 41.554374513911)', '41.5543745139110', '2.44248472466104'),
('Hospital de Mataró', 'Carretera de Cirera, 230. 08304 Mataró (BARCELONA)', NULL, NULL, NULL, 'POINT (2.4290771274211 41.5558472180467)', '41.5558472180467', '2.42907712742110'),
('Plaça de Francisco Tomás y Valiente', 'Carrer de Josep Abril, 4. 08302 Mataró (BARCELONA)', NULL, NULL, NULL, 'POINT (2.43987166966835 41.5331375490004)', '41.5331375490004', '2.43987166966835'),
('Mesquita Younus', 'Avinguda de Jaume Recoder, 84. 08302 Mataró (BARCELONA)', 'Serveis religiosos', 'Mesquites', NULL, 'POINT (2.44402348995661 41.5332170073138)', '41.5332170073138', '2.44402348995661'),
('Centre Social Casa del Negrito Parc Central', NULL, 'Centres Cívics i Socials', 'Centres Socials', NULL, 'POINT (2.44209948369826 41.5457970911413)', '41.5457970911413', '2.44209948369826'),
('Parada de taxi - Mataró Parc', NULL, 'Mobilitat', 'Parada de taxi', NULL, 'POINT (2.43275737115727 41.5544294820975)', '41.5544294820975', '2.43275737115727'),
('SABA - La Riera', 'La Riera, 69. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Aparcament de rotació', NULL, 'POINT (2.44425346815506 41.5404566576117)', '41.5404566576117', '2.44425346815506'),
('Sala d\'estudi del Centre Cívic Pla d\'en Boet', 'Carrer de Juan Sebastián Elcano, 6. 08302 Mataró (BARCELONA)', 'Serveis per a joves', 'Sales d\'estudi', NULL, 'POINT (2.43552178933494 41.5358533810723)', '41.5358533810723', '2.43552178933494'),
('Aparcament lliure - Ronda de Josep Tarradellas', NULL, 'Mobilitat', 'Aparcament lliure', NULL, 'POINT (2.42096588064072 41.5373925202354)', '41.5373925202354', '2.42096588064072'),
('Parada de taxi - Camí Ral', NULL, 'Mobilitat', 'Parada de taxi', NULL, 'POINT (2.43703232730189 41.5313593840575)', '41.5313593840575', '2.43703232730189'),
('Tecnocampus', 'Avinguda d\'Ernest Lluch, 46. 08302 Mataró (BARCELONA)', NULL, NULL, NULL, 'POINT (2.43515464142489 41.5280172005971)', '41.5280172005971', '2.43515464142489'),
('Església de Sant Joan Bosco', 'Carrer de Sant Pol, 1. 08303 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', NULL, 'POINT (2.42860198825946 41.547736888988)', '41.5477368889880', '2.42860198825946'),
('PUNT 1 - EdRR Carrer de Finlàndia', 'Carrer de Finlàndia, 2. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', NULL, 'POINT (2.43210167299097 41.5493959270867)', '41.5493959270867', '2.43210167299097'),
('Arxiu Municipal de Mataró (Can Palauet)', 'Carrer d\'En Palau, 32. 08301 Mataró (BARCELONA)', 'Cultura i Oci', 'Arxius i Centres de documentació', NULL, 'POINT (2.44607047092414 41.5400209606581)', '41.5400209606581', '2.44607047092414'),
('Capella de les Mares Missioneres Carmelites', 'Avinguda de Torner, 63. 08304 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', NULL, 'POINT (2.43984564689047 41.5481550323117)', '41.5481550323117', '2.43984564689047'),
('PORT DE MATARÓ', NULL, 'Mobilitat', 'Aparcament de rotació', NULL, 'POINT (2.44231264493988 41.5299598969628)', '41.5299598969628', '2.44231264493988'),
('PUNT 6 - EdRsR Passeig Marítim (PROPERAMENT)', 'Passeig Marítim, 91. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', NULL, 'POINT (2.45227593147981 41.538141530782)', '41.5381415307820', '2.45227593147981'),
('Ermita de Sant Martí de Mata', NULL, 'Serveis religiosos', 'Església Catòlica', NULL, 'POINT (2.45898463693962 41.5729205467643)', '41.5729205467643', '2.45898463693962'),
('Servei d\'Igualtat i Ciutadania', 'Carrer de Juan Sebastián Elcano, 6. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', NULL, 'POINT (2.43552183209999 41.5358533691951)', '41.5358533691951', '2.43552183209999'),
('Lavabo públic - Avinguda del Port', NULL, 'Lavabos públics', 'Lavabo adaptat', NULL, 'POINT (2.44089241502418 41.5291479574585)', '41.5291479574585', '2.44089241502418'),
('La Riera', 'La Riera, 69. 08302 Mataró (BARCELONA)', NULL, NULL, NULL, 'POINT (2.44425346815504 41.5404566576161)', '41.5404566576161', '2.44425346815504'),
('Mesquita Nhour', 'Carrer de la Marató, 53. 08303 Mataró (BARCELONA)', 'Serveis religiosos', 'Mesquites', NULL, 'POINT (2.42619493073636 41.5360601018939)', '41.5360601018939', '2.42619493073636'),
('Agència de Suport i Serveis a les Entitats', 'Plaça de Miquel Biada, 5. 08301 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', NULL, 'POINT (2.44487432289565 41.5334985803649)', '41.5334985803649', '2.44487432289565'),
('Centre Residencial d\'Acció Educativa Mataró', 'Carrer de Javier Castaños, 122. 08302 Mataró (BARCELONA)', 'Serveis socials', 'Centres residencials per a gent gran', NULL, 'POINT (2.43620264862863 41.5327526593401)', '41.5327526593401', '2.43620264862863'),
('PUNT 10 - EdRL Aparcament de la Plaça de Granollers (P5)', 'Camí de la Geganta, 82. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', NULL, 'POINT (2.43659647552176 41.5414021293295)', '41.5414021293295', '2.43659647552176'),
('Servei de Primera Acollida', 'Carrer de Juan Sebastián Elcano, 6. 08302 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', NULL, 'POINT (2.43552183209999 41.5358533691951)', '41.5358533691951', '2.43552183209999'),
('Escola Germanes Bertomeu', 'Carrer de la República Dominicana, 15. 08304 Mataró (BARCELONA)', 'Educació', 'Ensenyament públic Infantil i Primària', NULL, 'POINT (2.44879573472523 41.5484424690841)', '41.5484424690841', '2.44879573472523'),
('Aparcament lliure - Parc de Rocafonda', NULL, 'Mobilitat', 'Aparcament lliure', NULL, 'POINT (2.45056606555841 41.5524428768122)', '41.5524428768122', '2.45056606555841'),
('Programa de Suport a les Comunitats de Veïns', 'Carrer de Blai Parera, 8. 08304 Mataró (BARCELONA)', 'Administració municipal', 'Àrea de Drets Socials i Serveis a les Persones', NULL, 'POINT (2.4494276800572 41.5504759139296)', '41.5504759139296', '2.44942768005720'),
('Pistes Municipals de Petanca del Camí de la Serra', NULL, 'Esports', 'Pistes de petanca', NULL, 'POINT (2.44047083274174 41.5552146450724)', '41.5552146450724', '2.44047083274174'),
('PUNT 7 - EdRsR Carrer de Josep C. Serra i Ràfols (PROPERAMENT)', 'Carrer de Josep de C. Serra i Ràfols, 2. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Punt de càrrega de vehicles', NULL, 'POINT (2.43302940102226 41.5313361941424)', '41.5313361941424', '2.43302940102226'),
('Església Divina Providència', 'Carrer de Llauder, 30. 08302 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', NULL, 'POINT (2.44046953884173 41.5351709810918)', '41.5351709810918', '2.44046953884173'),
('Parada de taxi - Carrer de Cosme Churruca', NULL, 'Mobilitat', 'Parada de taxi', NULL, 'POINT (2.44497010631578 41.5337929420686)', '41.5337929420686', '2.44497010631578'),
('PUMSA - Plaça Granollers', 'Camí de la Geganta, 82. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Aparcament de rotació', NULL, 'POINT (2.43659647552179 41.541402129325)', '41.5414021293250', '2.43659647552179'),
('SABA -  Montserrat', 'Carrer de Montserrat, 39. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Aparcament de rotació', NULL, 'POINT (2.44305669093754 41.5370727825703)', '41.5370727825703', '2.44305669093754'),
('Centre de Formació d\'Adults Triangle', 'Carrer de Sant Josep Oriol, 21. 08302 Mataró (BARCELONA)', 'Educació', 'Centres de Formació d\'Adults', NULL, 'POINT (2.44235348399083 41.5368215052823)', '41.5368215052823', '2.44235348399083'),
('Església de l\'Hospital de Sant Jaume i Santa Magdalena', 'Carrer de l\'Hospital, 29. 08301 Mataró (BARCELONA)', 'Serveis religiosos', 'Església Catòlica', NULL, 'POINT (2.44889411967494 41.5397345296055)', '41.5397345296055', '2.44889411967494'),
('Parada de taxi - Camí del Mig', NULL, 'Mobilitat', 'Parada de taxi', NULL, 'POINT (2.43031329135582 41.5362870291296)', '41.5362870291296', '2.43031329135582'),
('Sant Josep', 'Ronda de Bellavista, 27. 08303 Mataró (BARCELONA)', 'Educació', 'Ensenyament concertat', NULL, 'POINT (2.42187401577932 41.5433800206575)', '41.5433800206575', '2.42187401577932'),
('Aparcament lliure - Aparcament de l\'Estació', NULL, 'Mobilitat', 'Aparcament lliure', NULL, 'POINT (2.44307792009019 41.5316471061456)', '41.5316471061456', '2.44307792009019'),
('Parada de taxi - Carrer de Francesc Layret (dissabtes i festius de 0 a 6h)', 'Carrer de Francesc Layret, 34. 08302 Mataró (BARCELONA)', 'Mobilitat', 'Parada de taxi', NULL, 'POINT (2.4291020906598 41.5326831143298)', '41.5326831143298', '2.42910209065980'),
('SABA - Hospital de Mataró', 'Carretera de Cirera, 230. 08304 Mataró (BARCELONA)', 'Mobilitat', 'Aparcament de rotació', NULL, 'POINT (2.42907712742113 41.5558472180422)', '41.5558472180422', '2.42907712742113'),
('Lavabo públic - Platja del Varador', NULL, 'Lavabos públics', 'Lavabo adaptat', NULL, 'POINT (2.4475783875505 41.5340821017173)', '41.5340821017173', '2.44757838755050'),
('Lavabo públic - Nou Parc Central', NULL, 'Lavabos públics', 'Lavabo adaptat', NULL, 'POINT (2.43808207513542 41.5433405908614)', '41.5433405908614', '2.43808207513542');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `horainic` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `lugar` varchar(255) NOT NULL COMMENT 'lugar general',
  `imagen` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parteevento`
--

CREATE TABLE `parteevento` (
  `id` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `horainic` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `lugar` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `puntos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria`
--

CREATE TABLE `subcategoria` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `subcategoria`
--

INSERT INTO `subcategoria` (`id`, `id_categoria`, `nombre`) VALUES
(1, 1, 'Terror'),
(2, 1, 'Comèdia'),
(3, 1, 'Amor'),
(4, 2, 'Curses'),
(5, 2, 'Natació'),
(6, 2, 'Petanca'),
(7, 3, 'Mediterrània'),
(8, 3, 'Japonesa'),
(9, 3, 'Italià'),
(10, 4, 'Poca gent'),
(11, 4, 'Molta gent'),
(12, 5, 'Gossos'),
(13, 5, 'Gats'),
(14, 5, 'Coloms'),
(15, 6, 'Història moderna'),
(16, 6, 'Història antiga'),
(17, 6, 'Poesia'),
(18, 7, 'League of legends'),
(19, 7, 'Pokemón'),
(20, 7, 'Xerrades');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `correo` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fechanac` date NOT NULL,
  `intereses` varchar(255) DEFAULT 'null' COMMENT 'que intereses tiene con la encuesta inicial',
  `icono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parteevento`
--
ALTER TABLE `parteevento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_evento` (`id_evento`),
  ADD KEY `id_subcategoria` (`id_subcategoria`);

--
-- Indices de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `parteevento`
--
ALTER TABLE `parteevento`
  ADD CONSTRAINT `parteevento_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `parteevento_ibfk_2` FOREIGN KEY (`id_subcategoria`) REFERENCES `subcategoria` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD CONSTRAINT `subcategoria_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
