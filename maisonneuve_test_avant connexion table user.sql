-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 08, 2023 at 02:46 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maisonneuve_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateNaissance` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `etudiants_ville_id_foreign` (`ville_id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `adresse`, `phone`, `email`, `dateNaissance`, `ville_id`, `created_at`, `updated_at`) VALUES
(1, 'Alessandro Schumm', '878 Laurel Throughway\nSengertown, CO 17676', '443-943-4504', 'monique.ledner@yahoo.com', '25/12/1970', 6, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(2, 'Willard Beer', '864 Jake Ports\nWest Hymanchester, SD 10586-1902', '1-320-681-2620', 'considine.allison@yahoo.com', '29/12/1996', 5, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(105, 'lili', '78933 nuhb', '55555555555555', 'liliygu@yg.gc', '1976-07-04', 9, '2023-09-20 08:07:31', '2023-09-20 08:07:31'),
(4, 'Tremayne Hegmann', '4424 Homenick Groves\nNorth Violaville, ND 39090', '518-214-1344', 'hlabadie@gmail.com', '01/06/1960', 12, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(5, 'Miss Annamarie Swift DVM', '166 Tillman Loop Apt. 906\nNew Oren, AL 03940-7159', '+1.608.866.0671', 'thettinger@hansen.biz', '07/05/1981', 1, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(6, 'Destiny Reichert', '159 Providenci Divide\nPort Alessiachester, NY 70220', '(586) 779-6665', 'carmen57@gmail.com', '04/01/1975', 5, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(7, 'Zora Kunze', '429 Bernard Station Apt. 210\nPort Marcelino, UT 59859-4776', '+18706588907', 'grant66@tremblay.com', '19/09/1966', 8, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(106, 'pape saliou', '4545 rue des comtes', '514999666', 'saliou.fr@gmail.com', '1995-08-15', 2, '2023-10-08 05:07:30', '2023-10-08 06:02:59'),
(9, 'Dr. Willy Kulas V', '20377 Deckow Vista Suite 195\nNorth Mark, UT 23000-4071', '+1.312.479.0460', 'heather.krajcik@kerluke.com', '25/06/1991', 1, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(10, 'Ms. anta khouma', '9946 Wolff GardensFlossiemouth, OK 00499', '1-267-664-0109', 'ozella77@homenick.info', '13/02/2000', 1, '2023-09-19 08:25:47', '2023-09-19 08:57:46'),
(11, 'Miss Lillie Davis V', '552 Carolyne ShoalNew Dustin, AK 58890-9043', '1-256-909-6666', 'jay.mills@yahoo.com', '25/04/1960', 1, '2023-09-19 08:25:47', '2023-09-20 06:03:59'),
(12, 'Ursula Borer', '64867 Emory Springs Suite 797\nEast Wellington, WI 79904-5338', '323.773.5237', 'edwin.gaylord@cole.com', '01/04/1992', 4, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(13, 'Lavern Deckow', '695 Enid Corners\nDaughertyfurt, MS 62976', '(980) 748-1955', 'maximillian52@yahoo.com', '02/02/1999', 2, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(107, 'seyda fatou binetou', '8585 rue des comtes', '51420062006', 'fatou@gmail.com', '1990-12-13', 2, '2023-10-08 06:04:34', '2023-10-08 06:05:18'),
(15, 'Frederick Mills', '19759 Wyman Well Suite 826\nPort Vicenta, WA 83110', '+1-562-407-2391', 'aliza.senger@hudson.com', '18/06/1978', 4, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(16, 'Mr. Willis Weber', '638 Lillie Stravenue\nCristhaven, OK 00114', '458.646.6372', 'ucormier@yahoo.com', '03/06/1996', 8, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(17, 'Trevor Pollich', '38463 Gia Streets\nSchmelermouth, FL 71769', '1-407-827-8264', 'sipes.kareem@hotmail.com', '17/10/2001', 14, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(18, 'Mr. Tyler Feest', '487 Hagenes Freeway\nSanfordburgh, FL 12003-4018', '(954) 454-1549', 'keeley54@yahoo.com', '26/05/1992', 6, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(19, 'Albert Trantow Jr.', '903 Lamar Cliffs Apt. 528\nRobinport, ND 11152', '1-607-665-9558', 'adonis90@hotmail.com', '21/07/1984', 9, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(20, 'Jaida Medhurst', '268 Rhiannon Skyway Suite 065\nSimstad, VA 89662-4048', '272.936.2835', 'davis.roxane@hotmail.com', '21/02/1960', 7, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(21, 'Ms. Otha Upton', '852 Windler Turnpike\nWintheiserville, MD 54346', '+1-386-286-3031', 'zieme.nikki@fritsch.info', '30/10/2002', 10, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(22, 'Dr. Verona Koepp III', '2302 Mann Manors\nNorth Lamar, PA 75466-8882', '(316) 870-1693', 'cristal.rath@medhurst.net', '10/10/1983', 9, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(23, 'Mrs. Christina Spencer PhD', '3646 Fadel Prairie\nAshleefurt, HI 41240-4955', '(239) 894-0514', 'twiegand@hotmail.com', '17/10/1966', 15, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(24, 'Dr. Jaylan Halvorson I', '39060 Westley Plains Suite 893\nNorth Arnaldo, NC 63157-3237', '+15409429341', 'cummings.coleman@rau.org', '29/11/1968', 12, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(25, 'Camylle Lemke', '996 Lang Expressway Suite 377\nSouth Jacklynbury, ND 13296', '951-666-2827', 'bianka25@boehm.com', '26/06/1973', 3, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(26, 'Carmine Stark', '955 Felicity Ramp Apt. 017\nPort Holdenton, WY 04121', '1-580-863-8818', 'connie.mosciski@bauch.info', '19/11/1980', 12, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(27, 'Delilah Kuhlman', '991 Paucek Expressway\nWest Anthony, SD 51687-6981', '(929) 486-4432', 'jayson92@hotmail.com', '30/06/1996', 2, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(28, 'Maximo Kshlerin', '6902 Myrna Camp Apt. 320\nWest Robyn, NE 71878-0801', '364-805-5063', 'crooks.misty@hotmail.com', '23/10/1981', 13, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(29, 'Lia Hartmann', '823 Queen Way\nChamplinland, AR 17647-5783', '929-697-9419', 'kennith14@gmail.com', '05/10/1961', 2, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(30, 'Randall Paucek V', '53553 Corkery Neck\nNorth Gustaveside, MT 52277', '+1-830-995-0540', 'trever.hane@feeney.com', '21/05/1963', 8, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(31, 'Rigoberto Huel', '988 Joyce Roads\nTiannaton, NE 87868-7647', '+14638368430', 'gnicolas@collier.com', '31/07/1999', 13, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(32, 'Alexandro Schiller', '35320 Alexandra Neck\nWest Corrine, CA 82565', '+1.754.392.1856', 'schmitt.ena@krajcik.com', '11/09/1987', 14, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(33, 'Nora Schmeler', '94770 Eichmann Plaza\nFriedahaven, VA 09422-4504', '(920) 465-6650', 'medhurst.tamara@gmail.com', '29/09/1976', 6, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(34, 'Elisa Hagenes', '8366 Christiansen Turnpike\nSouth Gilda, WY 72808', '+1-904-745-2969', 'keara36@gmail.com', '18/04/1987', 1, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(35, 'Kirsten Walter', '7624 Myrna Ridge\nKarianeton, WA 94799', '502-998-8866', 'znader@gmail.com', '20/06/1982', 12, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(36, 'Liliana Hammes', '1369 Gusikowski Greens Apt. 039\nLake Bessie, AZ 48997-9391', '1-812-762-6596', 'daniel.dereck@gmail.com', '06/07/1991', 7, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(37, 'Shakira Rogahn', '91841 Laney Fields Apt. 283\nSchowalterbury, NJ 40428', '+1.325.234.4073', 'lyundt@jakubowski.com', '30/05/1988', 1, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(38, 'Dewitt Hermiston', '7995 Marvin Plains\nNorth Teresaville, WA 05521-9472', '678-515-3403', 'pleffler@pacocha.com', '21/02/1966', 6, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(39, 'Gilbert Kuhn I', '1863 Hickle Trail Apt. 888\nSpencerborough, ID 11099', '+17202086127', 'heloise.rohan@lubowitz.net', '24/03/1961', 13, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(40, 'Prof. Caleb Metz', '77325 Dickens Meadow Suite 512\nEast Concepcion, TN 65001', '947.776.1942', 'gkirlin@deckow.net', '01/06/1989', 14, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(41, 'Mrs. Ova Bode I', '30932 Dickinson Crescent\nColefort, OR 89842-9608', '937.398.5333', 'ssimonis@yahoo.com', '18/07/1969', 7, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(42, 'Keon Abbott', '43924 Hand Cove Suite 053\nNew Cesarmouth, IA 46090-9882', '979.640.0520', 'karina.donnelly@yahoo.com', '29/02/1972', 12, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(43, 'Jalon Stehr', '261 Sylvia Ferry Apt. 024\nPort Miloburgh, ME 41554-1965', '(763) 904-9280', 'rbins@hamill.net', '11/01/1964', 6, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(44, 'Yvette Rodriguez Sr.', '9912 Jaron Lodge\nWest Louiemouth, NH 98927', '657.886.8484', 'yschneider@farrell.com', '27/07/1967', 5, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(45, 'Geo Christiansen', '7524 Jailyn Roads Apt. 455\nNorth Kavonmouth, KY 06254-0486', '+1-323-271-3397', 'jacobi.moises@gmail.com', '10/03/1977', 5, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(46, 'Joanne Ward', '664 Cruickshank Inlet\nSouth Amaya, MT 53382-7907', '+1-947-583-2536', 'rosenbaum.raoul@hotmail.com', '21/05/1960', 11, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(47, 'Freeda Wunsch DDS', '642 Dario Rapids Suite 275\nNew Elinoremouth, WA 44860-9265', '+18625331935', 'wiegand.shayna@wyman.info', '20/03/1964', 13, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(48, 'Giuseppe Connelly', '5248 Muller Junctions\nLake Florence, ID 63619', '786-352-2150', 'tremblay.marcel@stracke.com', '25/06/1978', 15, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(49, 'Angelica Conroy', '211 Liam Extension Apt. 199\nRennerborough, CO 68418-9303', '+1-251-817-7462', 'soledad86@yahoo.com', '22/08/1985', 11, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(50, 'Kelton Glover I', '452 Senger Lake\nEast Kaceymouth, CT 72704-4946', '+1-878-733-6187', 'trogahn@hotmail.com', '16/01/1960', 6, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(51, 'Mohammad Gerhold', '5894 Vita Ridge\nStromanton, NV 66817', '(386) 384-7545', 'ntromp@hotmail.com', '28/02/1977', 9, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(52, 'Emilio Greenholt', '432 Kenyon Freeway\nLake Tomas, MT 14472-9263', '936.587.0555', 'maybell.hickle@yahoo.com', '07/08/1972', 14, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(53, 'Miss Fatima Kessler III', '172 Walker Lane Suite 132\nWest Holly, NM 94025-0811', '+1-424-861-8184', 'margarete81@yahoo.com', '05/06/1969', 12, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(54, 'Elias Rowe', '34215 Judson Crossroad Suite 787\nMcCulloughport, RI 28081', '828-759-3422', 'abbott.alek@hills.com', '26/05/1985', 9, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(55, 'Mrs. Maggie Bode', '30760 Cassin Viaduct\nKonopelskimouth, AZ 60707-0427', '+1 (941) 232-6787', 'bryon.hauck@stiedemann.info', '18/11/1999', 7, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(56, 'Rollin Monahan', '665 Pouros Mission\nAbdulmouth, IL 73908-9085', '+1 (586) 435-2700', 'betty09@bernhard.com', '07/03/1968', 7, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(57, 'Bart Predovic', '23539 Baumbach Lake Suite 732\nNorth Clintonville, WY 18278', '+1 (775) 554-3936', 'bashirian.woodrow@okon.com', '11/12/1978', 5, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(58, 'Lonny Schuster', '45958 Funk Burgs Suite 581\nSouth Kaylin, NY 23386', '1-320-595-3756', 'cody92@littel.biz', '26/04/1978', 3, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(59, 'Charles McLaughlin', '7324 Elinor Loaf Apt. 762\nSvenmouth, AK 93888-6673', '1-770-631-2973', 'heaney.wallace@yahoo.com', '05/07/1998', 5, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(60, 'Vallie Zulauf', '38283 McClure Parkways\nEmeryfort, MT 93393-5319', '1-380-734-0463', 'von.kaden@reinger.info', '22/03/1961', 8, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(61, 'Santos Harber', '37494 Crystal Ranch Apt. 601\nWest Evangeline, DE 63956-7395', '+1-469-785-8825', 'jaylan.fay@hotmail.com', '02/07/1960', 12, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(62, 'Freddy Kris', '886 Laurie Circles\nShanahanfort, WY 11517-4365', '(757) 770-8233', 'hdoyle@yahoo.com', '20/03/1989', 4, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(63, 'Morgan Kling', '564 Cleora Lakes Suite 994\nNorth Kristopher, HI 01712', '1-872-487-1999', 'tina.rowe@dickens.org', '05/08/1993', 15, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(64, 'Amya Hickle MD', '52212 Wilkinson Fields Apt. 953\nPort Tatumside, OH 92137', '(207) 361-2687', 'hoppe.makenna@reichel.org', '22/12/1979', 8, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(65, 'Sheila Franecki', '544 Cruickshank Road\nNorth Shyannmouth, UT 13263', '352-977-9646', 'macejkovic.danial@ratke.com', '22/11/2001', 4, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(66, 'Ewald Bailey', '692 O\'Kon Key Suite 669\nMillston, IL 36134-2249', '678.573.3165', 'betty36@homenick.net', '10/10/1992', 3, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(67, 'Kiera Kunze', '202 Abshire Plaza Suite 400\nEast Lamontmouth, AK 78869-2125', '+1 (678) 422-1320', 'stephen.orn@lehner.net', '27/02/1991', 14, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(68, 'Ms. Delores Kassulke II', '54223 Avery Gateway\nBridgetfort, LA 95376-2413', '(540) 528-7680', 'grant31@hotmail.com', '17/04/1975', 13, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(69, 'Audra Hirthe', '344 Hickle Manor Apt. 469\nRatkeshire, IA 03639-5871', '+1 (513) 552-9372', 'dfranecki@bruen.com', '29/01/1996', 7, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(70, 'Autumn Crona III', '127 Elsie Parks\nHudsonview, MI 85782', '203.940.4663', 'ohoeger@yahoo.com', '25/06/1981', 2, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(71, 'Anjali Hoeger', '6459 Kuvalis Islands\nWest Wavaland, OH 16757', '+1-769-670-8225', 'angie86@gutmann.info', '28/05/1980', 2, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(72, 'Viviane Wolf', '137 Purdy Circle Apt. 811\nBrookestad, ID 86069-7971', '(820) 451-9323', 'gibson.kurtis@rempel.org', '25/11/1981', 4, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(73, 'Prof. Deja Thiel', '529 Newton Meadow Suite 276\nWest Blancheshire, NM 68453', '+1-754-349-3361', 'kyleigh.jaskolski@dach.net', '26/07/1960', 8, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(74, 'Lavonne Nolan', '435 Randall Extension\nNapoleonmouth, MD 64836-9903', '1-985-326-2799', 'khalil.zboncak@smitham.com', '17/10/1973', 3, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(75, 'Prof. Myrtle Von PhD', '477 Champlin Stream\nNew Wyattton, TX 99729', '1-316-725-1858', 'kunze.sam@gmail.com', '30/05/1979', 9, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(76, 'Adonis Kris', '188 Stroman Islands Suite 455\nLake Kaitlin, UT 37907', '364-515-5410', 'zemlak.layne@gerlach.biz', '15/06/2002', 13, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(77, 'Haven Johnston MD', '8594 Armando Circles Apt. 381\nJammieburgh, MA 47076-8623', '1-240-968-5180', 'doyle.heaney@gmail.com', '15/07/1995', 8, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(78, 'Weston Gutmann', '35649 Abbie Lodge Apt. 460\nKohlerland, HI 76284', '434.910.0432', 'amir.hagenes@gmail.com', '07/09/1963', 9, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(79, 'Ms. Jayda Watsica', '411 Darron Shoal\nChristinachester, OK 33958', '689-588-0587', 'vmedhurst@funk.com', '23/04/2001', 5, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(80, 'Toni Torp', '507 Hahn Mountain Apt. 921\nSouth Spencer, IN 88389', '(938) 334-9060', 'amann@hotmail.com', '08/12/1975', 7, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(81, 'Edmond Pacocha', '71719 Celia Landing Suite 542\nWest Leonestad, LA 77691-9631', '1-512-745-5982', 'rosalind02@gmail.com', '12/10/1968', 3, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(82, 'Elva Abbott', '5348 Lonzo Tunnel\nEast Bettychester, IA 48369', '+1.816.499.4505', 'dlowe@huel.com', '16/08/1981', 7, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(83, 'Jaunita Kerluke', '4513 Littel Crossroad Apt. 060\nIrvington, PA 58499-3412', '+1.701.827.8382', 'soreilly@weimann.com', '03/12/1975', 4, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(84, 'Nina Sawayn PhD', '1991 Adrienne Point Suite 454\nNorth Daphnee, AR 77365-4685', '+1 (323) 839-2884', 'erin.gulgowski@hotmail.com', '19/06/1989', 15, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(85, 'Beth Kiehn', '38935 Lora Coves Apt. 691\nAmeliefurt, NH 74564-7879', '534-377-2841', 'mortimer87@leannon.net', '12/03/1992', 7, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(86, 'Miss Jenifer Terry PhD', '3230 Hickle Oval Apt. 552\nSouth Modesto, IL 77161', '1-234-461-0143', 'jacobs.jo@yahoo.com', '09/02/1974', 9, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(87, 'Felicia Ondricka', '918 Stanton Path\nBaileeberg, MS 02278', '1-408-944-8408', 'raynor.unique@hotmail.com', '19/02/2001', 14, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(88, 'Rylan Murazik III', '32606 Jaquan Rapid\nEast Dustymouth, UT 19293', '1-754-702-2336', 'gleichner.marjolaine@gmail.com', '03/09/2001', 7, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(89, 'Monroe Stamm', '35865 Pagac Motorway Apt. 109\nSydniefurt, NJ 62470-4129', '276.434.3827', 'genoveva.purdy@carter.com', '23/07/1974', 10, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(90, 'Eula Howe', '183 Ferry Plain Suite 813\nPort Hazle, MA 74467', '769-548-9642', 'gunner73@yahoo.com', '17/02/1974', 8, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(91, 'Mrs. Anais Beier IV', '1858 Rosemary Fort\nPort Tanya, VT 23476-1619', '1-231-972-1786', 'caterina22@yahoo.com', '16/05/1978', 5, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(92, 'Ahmad Harris Jr.', '15296 Max Expressway\nPort Chloe, FL 23793-3854', '+1 (380) 499-1822', 'francisca69@wyman.net', '23/10/1989', 4, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(93, 'Kaylie Borer', '93818 Bogan Fields\nNorth Bettyeberg, AK 92719', '1-938-865-5856', 'daron92@vonrueden.biz', '11/08/1976', 4, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(94, 'Mr. Erling Denesik Sr.', '3062 Blaze Points Suite 944\nLefflerland, MD 00895-5750', '+1-442-201-8967', 'bethel44@yahoo.com', '21/12/1972', 15, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(95, 'Isaias Bartell', '7991 Champlin Rest Suite 708\nPort Jaquelinstad, CA 92220', '772-938-4964', 'sallie97@gerlach.com', '24/08/1963', 9, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(96, 'Dax Considine', '83367 Predovic Creek\nWest Demetris, SD 32912', '678-537-8112', 'becker.shanel@yahoo.com', '19/01/1986', 14, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(97, 'Lelia Zulauf Sr.', '1329 Grady Port Suite 006\nMitchellfurt, VT 60863-2451', '+1-650-660-6591', 'sfunk@gmail.com', '08/01/1980', 12, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(98, 'Joy Weimann', '469 Zetta Cape Suite 669\nElveramouth, SC 97606', '312-399-2887', 'murphy92@yahoo.com', '27/06/1983', 11, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(99, 'Ms. Alanna Leffler', '3569 Koepp Wells\nJuliochester, TX 66495', '+1.985.790.7028', 'josiah30@hotmail.com', '15/12/1970', 10, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(100, 'Vinnie Huels', '693 Freida Mills Apt. 516\nAltheaport, OK 76680-8535', '+1-360-520-2309', 'vonrueden.kennedy@howell.biz', '11/04/1995', 13, '2023-09-19 08:25:47', '2023-09-19 08:25:47'),
(101, 'sisi', 'lala', '854854854854', 'sisilala@gmail.com', '1999-09-14', 2, '2023-09-19 09:01:50', '2023-09-19 09:01:50'),
(103, 'nini', 'NONO', '8787878787', 'nini@gmail.com', '1991-08-22', 2, '2023-09-20 06:11:52', '2023-09-20 06:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_19_022056_create_etudiants_table', 1),
(6, '2023_09_19_022147_create_villes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

DROP TABLE IF EXISTS `villes`;
CREATE TABLE IF NOT EXISTS `villes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Blickburgh', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(2, 'Flaviechester', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(3, 'Bergnaumville', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(4, 'Rexfort', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(5, 'Gabriellechester', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(6, 'Littlehaven', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(7, 'Langoshfurt', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(8, 'Chanelleburgh', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(9, 'Lake Valentin', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(10, 'New Santosstad', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(11, 'North Nyahhaven', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(12, 'Feiltown', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(13, 'Quitzonview', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(14, 'Hildafort', '2023-09-19 08:25:02', '2023-09-19 08:25:02'),
(15, 'North Alexmouth', '2023-09-19 08:25:02', '2023-09-19 08:25:02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
