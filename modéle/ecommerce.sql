-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 09 fév. 2025 à 19:17
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `client` varchar(256) NOT NULL,
  `nbporduit` int(11) NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id` int(11) NOT NULL,
  `libelle` varchar(2565) NOT NULL,
  `prix` float NOT NULL,
  `qtite` int(11) NOT NULL,
  `des` text NOT NULL,
  `image` varchar(256) NOT NULL,
  `promo` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id`, `libelle`, `prix`, `qtite`, `des`, `image`, `promo`) VALUES
(11, 'produit NÂ° 4', 4231, 94, 'https://picsum.photos/400/400/?random=4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 1),
(12, 'produit NÂ° 4', 4231, 94, 'https://picsum.photos/400/400/?random=4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 1),
(13, 'produit NÂ° 6', 4560, 671, 'https://picsum.photos/400/400/?random=6', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 1);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `libelle` varchar(2565) NOT NULL,
  `prix` float NOT NULL,
  `qtite` int(11) NOT NULL,
  `des` text NOT NULL,
  `image` varchar(256) NOT NULL,
  `promo` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `libelle`, `prix`, `qtite`, `des`, `image`, `promo`) VALUES
(4, 'produit NÂ° 4', 4231, 94, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=4', 1),
(5, 'produit NÂ° 5', 2697, 864, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=5', 0),
(6, 'produit NÂ° 6', 4560, 671, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=6', 1),
(7, 'produit NÂ° 7', 4503, 457, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=7', 1),
(8, 'produit NÂ° 8', 4816, 920, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=8', 1),
(9, 'produit NÂ° 9', 1825, 148, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=9', 0),
(10, 'produit NÂ° 10', 3390, 461, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=10', 1),
(11, 'produit NÂ° 11', 4693, 181, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=11', 1),
(12, 'produit NÂ° 12', 477, 98, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=12', 1),
(13, 'produit NÂ° 13', 3574, 871, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=13', 0),
(14, 'produit NÂ° 14', 151, 898, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=14', 0),
(15, 'produit NÂ° 15', 4667, 405, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=15', 1),
(16, 'produit NÂ° 16', 2488, 766, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=16', 0),
(17, 'produit NÂ° 17', 1598, 164, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=17', 1),
(18, 'produit NÂ° 18', 4521, 386, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=18', 1),
(19, 'produit NÂ° 19', 2283, 876, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=19', 1),
(20, 'produit NÂ° 20', 1218, 99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=20', 1),
(21, 'produit NÂ° 21', 303, 513, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=21', 1),
(22, 'produit NÂ° 22', 344, 850, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=22', 1),
(23, 'produit NÂ° 23', 2698, 107, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=23', 0),
(24, 'produit NÂ° 24', 728, 506, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=24', 0),
(25, 'produit NÂ° 25', 4052, 686, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=25', 1),
(26, 'produit NÂ° 26', 2877, 527, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=26', 1),
(27, 'produit NÂ° 27', 2492, 518, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=27', 1),
(28, 'produit NÂ° 28', 1981, 542, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=28', 1),
(29, 'produit NÂ° 29', 3057, 837, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=29', 0),
(30, 'produit NÂ° 30', 3103, 305, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=30', 0),
(31, 'produit NÂ° 31', 3321, 304, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=31', 0),
(32, 'produit NÂ° 32', 188, 580, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=32', 1),
(33, 'produit NÂ° 33', 4216, 634, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=33', 0),
(34, 'produit NÂ° 34', 3576, 901, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=34', 0),
(35, 'produit NÂ° 35', 2062, 261, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=35', 1),
(36, 'produit NÂ° 36', 1389, 535, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=36', 0),
(37, 'produit NÂ° 37', 4041, 68, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=37', 0),
(38, 'produit NÂ° 38', 4881, 606, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=38', 0),
(39, 'produit NÂ° 39', 2246, 961, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=39', 0),
(40, 'produit NÂ° 40', 4361, 265, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=40', 0),
(41, 'produit NÂ° 41', 3349, 939, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=41', 0),
(42, 'produit NÂ° 42', 3565, 168, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=42', 1),
(43, 'produit NÂ° 43', 545, 61, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=43', 1),
(44, 'produit NÂ° 44', 4786, 551, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=44', 1),
(45, 'produit NÂ° 45', 3712, 900, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=45', 0),
(46, 'produit NÂ° 46', 1257, 452, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=46', 0),
(47, 'produit NÂ° 47', 4096, 568, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=47', 1),
(48, 'produit NÂ° 48', 4190, 433, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=48', 1),
(49, 'produit NÂ° 49', 3495, 768, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=49', 1),
(50, 'produit NÂ° 50', 2571, 717, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=50', 0),
(51, 'produit NÂ° 51', 596, 487, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=51', 0),
(52, 'produit NÂ° 52', 4277, 297, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=52', 1),
(53, 'produit NÂ° 53', 1738, 635, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=53', 0),
(54, 'produit NÂ° 54', 1752, 138, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=54', 1),
(55, 'produit NÂ° 55', 4483, 303, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=55', 1),
(56, 'produit NÂ° 56', 3489, 386, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=56', 0),
(57, 'produit NÂ° 57', 3739, 462, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=57', 1),
(58, 'produit NÂ° 58', 2135, 476, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=58', 1),
(59, 'produit NÂ° 59', 1082, 995, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=59', 1),
(60, 'produit NÂ° 60', 1474, 616, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=60', 1),
(61, 'produit NÂ° 61', 4515, 525, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=61', 0),
(62, 'produit NÂ° 62', 560, 798, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=62', 0),
(63, 'produit NÂ° 63', 483, 154, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=63', 0),
(64, 'produit NÂ° 64', 2064, 411, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=64', 0),
(65, 'produit NÂ° 65', 2616, 995, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=65', 1),
(66, 'produit NÂ° 66', 2157, 933, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=66', 1),
(67, 'produit NÂ° 67', 881, 632, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=67', 1),
(68, 'produit NÂ° 68', 2662, 250, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=68', 1),
(69, 'produit NÂ° 69', 3695, 272, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=69', 0),
(70, 'produit NÂ° 70', 2930, 112, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=70', 0),
(71, 'produit NÂ° 71', 3847, 733, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=71', 1),
(72, 'produit NÂ° 72', 1867, 55, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=72', 1),
(73, 'produit NÂ° 73', 2237, 442, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=73', 0),
(74, 'produit NÂ° 74', 3254, 422, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=74', 1),
(75, 'produit NÂ° 75', 290, 828, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=75', 1),
(76, 'produit NÂ° 76', 490, 390, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=76', 1),
(77, 'produit NÂ° 77', 26, 886, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=77', 0),
(78, 'produit NÂ° 78', 4305, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=78', 1),
(79, 'produit NÂ° 79', 3059, 578, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=79', 1),
(80, 'produit NÂ° 80', 1878, 505, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=80', 0),
(81, 'produit NÂ° 81', 770, 311, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=81', 0),
(82, 'produit NÂ° 82', 4722, 218, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=82', 1),
(83, 'produit NÂ° 83', 2663, 754, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=83', 1),
(84, 'produit NÂ° 84', 1498, 262, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=84', 1),
(85, 'produit NÂ° 85', 2220, 903, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=85', 0),
(86, 'produit NÂ° 86', 1808, 368, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=86', 0),
(87, 'produit NÂ° 87', 2667, 701, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=87', 1),
(88, 'produit NÂ° 88', 3620, 908, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=88', 1),
(89, 'produit NÂ° 89', 866, 546, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=89', 0),
(90, 'produit NÂ° 90', 3152, 997, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=90', 1),
(91, 'produit NÂ° 91', 602, 274, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=91', 0),
(92, 'produit NÂ° 92', 3212, 592, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=92', 1),
(93, 'produit NÂ° 93', 3415, 741, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=93', 1),
(94, 'produit NÂ° 94', 3991, 366, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=94', 0),
(95, 'produit NÂ° 95', 4800, 146, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=95', 1),
(96, 'produit NÂ° 96', 3466, 466, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=96', 1),
(97, 'produit NÂ° 97', 1644, 512, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=97', 0),
(98, 'produit NÂ° 98', 1942, 982, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=98', 1),
(99, 'produit NÂ° 99', 1773, 743, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=99', 0),
(100, 'produit NÂ° 100', 879, 231, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt libero harum eaque magni perspiciatis quibusdam animi. Eveniet quibusdam ratione temporibus laboriosam quos laudantium natus exercitationem. Ipsum error nobis nulla dolores', 'https://picsum.photos/400/400/?random=100', 1),
(209, 'test', 5, 20, 'hg', 'jjjjjjjjjjjj', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `privilege` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `privilege`) VALUES
(1, 'bayoulimohamed1945@gmail.com', 'fffffff1', 'user'),
(888, 'admin2@gmail.com', 'admin123', 'admin'),
(999, 'admin1@gmail.com', 'admin123', 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
