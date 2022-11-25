-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 24 nov. 2022 à 22:57
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bno_odellya`
--
CREATE DATABASE IF NOT EXISTS `bno_odellya` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bno_odellya`;

-- --------------------------------------------------------

--
-- Structure de la table `actualites`
--

CREATE TABLE `actualites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actualites`
--

INSERT INTO `actualites` (`id`, `title`, `slug`, `content`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Lorem ipsums', 'lorem-ipsums', '<p>Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'actualites/November2022/8cECFaUrGABZ4eYawun0.jpg', '2022-11-23 07:48:00', '2022-11-23 07:58:28'),
(5, 'Why do we use it ?', 'why-do-we-use-it', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'actualites/November2022/UB6hckkURH6M5kDW15pd.jpg', '2022-11-23 07:54:09', '2022-11-23 07:54:09'),
(9, 'Mount Olive Road Two', 'mount-olive-road-two', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Obcaecati, quo fugiat doloribus ab ducimus, corporis nulla architecto quibusdam minus autem suscipit reiciendis incidunt aperiam. Repellendus vel ipsum excepturi cum consequatur.</p>', 'actualites/November2022/LClZ2rh1SeN2hXDtlT4W.jpg', '2022-11-23 08:20:49', '2022-11-23 08:20:49'),
(10, 'Eligendi omnis sunt veritatis.', 'eligendi-omnis-sunt-veritatis', '<p>Fuga in dolorum et iste et culpa. Commodi possimus nesciunt modi voluptatem placeat deleniti adipisci. Cum delectus doloribus non veritatis. Officia temporibus illo magnam. Dolor eos et.</p>', 'actualites/November2022/bb84laTYqY3EDTRhcm9K.jpg', '2022-11-23 15:05:14', '2022-11-23 15:05:14'),
(11, 'Possimus ut sed velit assumenda', 'possimus-ut-sed-velit-assumenda', '<p>Sunt deserunt maiores voluptatem autem est rerum perferendis rerum blanditiis. Est laboriosam qui iste numquam laboriosam voluptatem architecto. Est laudantium sunt at quas aut hic. Eum dignissimos.</p>', 'actualites/November2022/vfwZWFGlZ2SXMBswDiH9.jpg', '2022-11-23 15:07:45', '2022-11-23 15:07:45'),
(12, 'Error beatae dolor inventore aut', 'error-beatae-dolor-inventore-aut', '<p>Dicta porro nobis. Velit cum in. Nesciunt dignissimos enim molestiae facilis numquam quae quaerat ipsam omnis. Neque debitis ipsum at architecto officia laboriosam odit. Ut sunt temporibus nulla culpa.</p>', 'actualites/November2022/oYFknvewymAJjKd1bcBY.jpg', '2022-11-23 15:09:37', '2022-11-23 15:09:37'),
(13, 'Expedita voluptas ut ut nesciunt', 'expedita-voluptas-ut-ut-nesciunt', '<p>Aut est quidem doloremque voluptatem magnam quis excepturi vero quia. Eum eos doloremque architecto illo at beatae dolore. Fugiat suscipit et sint ratione dolores. Aut aliquid ea dolores libero nobis.</p>', 'actualites/November2022/kVfqUYqqanIIXXcydKJm.jpg', '2022-11-23 15:12:13', '2022-11-23 15:12:13');

-- --------------------------------------------------------

--
-- Structure de la table `ateliers`
--

CREATE TABLE `ateliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ateliers`
--

INSERT INTO `ateliers` (`id`, `title`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Javascript', 'https://www.youtube.com/embed/W6NZfCO5SIk', '2022-11-24 19:26:37', '2022-11-24 19:26:37');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs_ouvrages`
--

CREATE TABLE `auteurs_ouvrages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `auteurs_ouvrages`
--

INSERT INTO `auteurs_ouvrages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Marcel', '2022-11-23 16:04:47', '2022-11-23 16:04:47');

-- --------------------------------------------------------

--
-- Structure de la table `categories_ouvrages`
--

CREATE TABLE `categories_ouvrages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories_ouvrages`
--

INSERT INTO `categories_ouvrages` (`id`, `libelle`, `created_at`, `updated_at`) VALUES
(1, 'Roman', '2022-11-23 16:01:11', '2022-11-23 16:01:11'),
(2, 'Manuel', '2022-11-23 16:01:26', '2022-11-23 16:01:26'),
(3, 'Droit', '2022-11-23 16:01:40', '2022-11-23 16:01:40');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Mot de passe', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Token de rappel', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Créé le', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Mis à jour le', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Rôle', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 0, 0, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Créé le', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Mis à jour le', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Nom', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Créé le', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Mis à jour le', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Nom d\'affichage', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Rôle', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'slug', 'hidden', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 3),
(25, 4, 'content', 'rich_text_box', 'Content', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 1, 'sexe', 'text', 'Sexe', 1, 1, 1, 1, 1, 1, '{}', 4),
(30, 1, 'adresse', 'text', 'Adresse', 1, 1, 1, 1, 1, 1, '{}', 5),
(31, 1, 'tel', 'text', 'Tel', 1, 1, 1, 1, 1, 1, '{}', 6),
(32, 1, 'pseudo', 'text', 'Pseudo', 0, 1, 1, 1, 1, 1, '{}', 7),
(33, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 0, 1, 1, 0, '{}', 10),
(34, 1, 'two_factor_secret', 'text', 'Two Factor Secret', 0, 0, 0, 1, 1, 0, '{}', 12),
(35, 1, 'two_factor_recovery_codes', 'text', 'Two Factor Recovery Codes', 0, 0, 0, 0, 0, 0, '{}', 13),
(36, 1, 'two_factor_confirmed_at', 'timestamp', 'Two Factor Confirmed At', 0, 0, 0, 0, 0, 0, '{}', 14),
(37, 1, 'permission', 'text', 'Permission', 1, 0, 0, 0, 0, 0, '{}', 17),
(38, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(39, 5, 'titre', 'text', 'Titre', 1, 1, 1, 1, 1, 1, '{}', 2),
(40, 5, 'auteur', 'text', 'Auteur', 1, 1, 1, 1, 1, 1, '{}', 3),
(41, 5, 'editeur', 'text', 'Editeur', 1, 1, 1, 1, 1, 1, '{}', 4),
(42, 5, 'categorie', 'text', 'Categorie', 1, 1, 1, 1, 1, 1, '{}', 5),
(43, 5, 'langue', 'text', 'Langue', 0, 1, 1, 1, 1, 1, '{}', 6),
(44, 5, 'annee', 'text', 'Annee', 0, 1, 1, 1, 1, 1, '{}', 7),
(45, 5, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 8),
(46, 5, 'nb_pages', 'text', 'Nb Pages', 0, 1, 1, 1, 1, 1, '{}', 9),
(47, 5, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 10),
(48, 5, 'pdf', 'file', 'Pdf', 1, 1, 1, 1, 1, 1, '{}', 11),
(49, 5, 'slug', 'hidden', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"titre\",\"forceUpdate\":true}}', 12),
(50, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(51, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(52, 5, 'ouvrage_belongsto_categories_ouvrage_relationship', 'relationship', 'categories_ouvrages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Categories_ouvrage\",\"table\":\"categories_ouvrages\",\"type\":\"belongsTo\",\"column\":\"categorie\",\"key\":\"id\",\"label\":\"libelle\",\"pivot_table\":\"actualites\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(53, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(54, 8, 'libelle', 'text', 'Libelle', 1, 1, 1, 1, 1, 1, '{}', 2),
(55, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(56, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(62, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 10, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(64, 10, 'link', 'text', 'Link', 1, 1, 1, 1, 1, 1, '{}', 3),
(65, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(66, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'Utilisateur', 'Utilisateurs', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-11-22 20:26:29', '2022-11-23 10:35:21'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-11-22 20:26:29', '2022-11-22 20:26:29'),
(3, 'roles', 'roles', 'Rôle', 'Rôles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-11-22 20:26:29', '2022-11-22 20:26:29'),
(4, 'actualites', 'actualites', 'Actualite', 'Actualites', NULL, 'App\\Models\\Actualite', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-22 21:37:41', '2022-11-23 08:18:16'),
(5, 'ouvrages', 'ouvrages', 'Ouvrage', 'Ouvrages', NULL, 'App\\Models\\Ouvrage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-23 15:46:43', '2022-11-24 19:08:18'),
(8, 'categories_ouvrages', 'categories-ouvrages', 'Categories Ouvrage', 'Categories Ouvrages', NULL, 'App\\Models\\Categories_ouvrage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-23 16:00:38', '2022-11-23 16:00:38'),
(10, 'ateliers', 'ateliers', 'Atelier', 'Ateliers', NULL, 'App\\Models\\Atelier', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-24 19:25:39', '2022-11-24 19:25:39');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `favoris`
--

CREATE TABLE `favoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ouvrage_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ouvrage_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-11-22 20:26:33', '2022-11-22 20:26:33');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Tableau de bord', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-11-22 20:26:33', '2022-11-22 20:26:33', 'voyager.dashboard', NULL),
(2, 1, 'Médiathèque', '', '_self', 'voyager-images', NULL, NULL, 5, '2022-11-22 20:26:33', '2022-11-22 20:26:33', 'voyager.media.index', NULL),
(3, 1, 'Utilisateurs', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-11-22 20:26:34', '2022-11-22 20:26:34', 'voyager.users.index', NULL),
(4, 1, 'Rôles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-11-22 20:26:34', '2022-11-22 20:26:34', 'voyager.roles.index', NULL),
(5, 1, 'Outils', '', '_self', 'voyager-tools', NULL, NULL, 9, '2022-11-22 20:26:34', '2022-11-22 20:26:34', NULL, NULL),
(6, 1, 'Créateur de menus', '', '_self', 'voyager-list', NULL, 5, 10, '2022-11-22 20:26:34', '2022-11-22 20:26:34', 'voyager.menus.index', NULL),
(7, 1, 'Base de données', '', '_self', 'voyager-data', NULL, 5, 11, '2022-11-22 20:26:34', '2022-11-22 20:26:34', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2022-11-22 20:26:34', '2022-11-22 20:26:34', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2022-11-22 20:26:34', '2022-11-22 20:26:34', 'voyager.bread.index', NULL),
(10, 1, 'Paramètres', '', '_self', 'voyager-settings', NULL, NULL, 14, '2022-11-22 20:26:34', '2022-11-22 20:26:34', 'voyager.settings.index', NULL),
(11, 1, 'Actualites', '', '_self', NULL, NULL, NULL, 15, '2022-11-22 21:37:44', '2022-11-22 21:37:44', 'voyager.actualites.index', NULL),
(12, 1, 'Ouvrages', '', '_self', NULL, NULL, NULL, 16, '2022-11-23 15:46:44', '2022-11-23 15:46:44', 'voyager.ouvrages.index', NULL),
(13, 1, 'Categories Ouvrages', '', '_self', NULL, NULL, NULL, 17, '2022-11-23 16:00:38', '2022-11-23 16:00:38', 'voyager.categories-ouvrages.index', NULL),
(15, 1, 'Ateliers', '', '_self', NULL, NULL, NULL, 18, '2022-11-24 19:25:40', '2022-11-24 19:25:40', 'voyager.ateliers.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 1),
(5, '2016_01_01_000000_create_data_types_table', 1),
(6, '2016_05_19_173453_create_menu_table', 1),
(7, '2016_10_21_190000_create_roles_table', 1),
(8, '2016_10_21_190000_create_settings_table', 1),
(9, '2016_11_30_135954_create_permission_table', 1),
(10, '2016_11_30_141208_create_permission_role_table', 1),
(11, '2016_12_26_201236_data_types__add__server_side', 1),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(13, '2017_01_14_005015_create_translations_table', 1),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(18, '2017_08_05_000000_add_group_to_settings_table', 1),
(19, '2017_11_26_013050_add_user_role_relationship', 1),
(20, '2017_11_26_015000_create_user_roles_table', 1),
(21, '2018_03_11_000000_add_user_settings', 1),
(22, '2018_03_14_000000_add_details_to_data_types_table', 1),
(23, '2018_03_16_000000_make_settings_value_nullable', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2022_06_24_161656_create_contacts_table', 1),
(27, '2022_06_24_211702_create_actualites_table', 1),
(28, '2022_06_25_210916_create_ateliers_table', 1),
(29, '2022_06_26_080507_create_auteurs_ouvrages_table', 1),
(30, '2022_06_26_081031_create_categories_ouvrages_table', 1),
(31, '2022_06_26_081447_create_ouvrages_table', 1),
(32, '2022_06_26_094627_set_structure_of_description_on_ouvrages_table', 1),
(33, '2022_11_23_090456_set_structure_of_slug_on_actualites_table', 2),
(34, '2022_11_23_114340_set_structures_columns_on_users_table', 3),
(35, '2022_11_23_161743_set_structures_slug_column_on_ouvrages_table', 4),
(36, '2022_11_23_162821_create_favoris_table', 4),
(38, '2022_11_23_200452_create_ouvrages_vus_table', 5),
(39, '2022_11_24_100635_create_likes_table', 6);

-- --------------------------------------------------------

--
-- Structure de la table `ouvrages`
--

CREATE TABLE `ouvrages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `langue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_pages` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ouvrages`
--

INSERT INTO `ouvrages` (`id`, `titre`, `auteur`, `editeur`, `categorie`, `langue`, `annee`, `description`, `nb_pages`, `image`, `pdf`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Manuel complet du dessinateur', 'Jacob', 'Maison d\'édition Gallimard', '2', 'Français', '2019', 'Aliquam dictum', 155, 'ouvrages/November2022/0FKFh9L1i1GNtQ2u2Os4.jpg', '[{\"download_link\":\"ouvrages\\/November2022\\/7r8ieMmsICgh2QTv77fc.pdf\",\"original_name\":\"liste_css.pdf\"}]', 'manuel-complet-du-dessinateur', '2022-11-23 16:09:00', '2022-11-24 19:09:45'),
(2, 'Apprendre git et github', 'François', 'Code', '2', 'Français', '2017', 'Maecenas quis viverra metus, et efficitur ligula. Nam congue augue et ex congue, sed', 278, 'ouvrages/November2022/p9TXktVTFqNlzJsFpKS4.png', '[{\"download_link\":\"ouvrages\\/November2022\\/L00fVdIB60Uq48iZoNxc.pdf\",\"original_name\":\"Readme.pdf\"}]', 'apprendre-git-et-github', '2022-11-24 18:16:00', '2022-11-24 19:08:55');

-- --------------------------------------------------------

--
-- Structure de la table `ouvrages_vus`
--

CREATE TABLE `ouvrages_vus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ouvrages_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ouvrages_vus`
--

INSERT INTO `ouvrages_vus` (`id`, `users_ip`, `ouvrages_id`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 1, '2022-11-23 19:21:17', '2022-11-23 19:21:17'),
(2, '127.0.0.2', 1, '2022-11-23 21:48:15', '2022-11-23 21:48:15'),
(3, '127.0.0.1', 2, '2022-11-24 18:54:31', '2022-11-24 18:54:31');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-11-22 20:26:35', '2022-11-22 20:26:35'),
(2, 'browse_bread', NULL, '2022-11-22 20:26:35', '2022-11-22 20:26:35'),
(3, 'browse_database', NULL, '2022-11-22 20:26:35', '2022-11-22 20:26:35'),
(4, 'browse_media', NULL, '2022-11-22 20:26:35', '2022-11-22 20:26:35'),
(5, 'browse_compass', NULL, '2022-11-22 20:26:35', '2022-11-22 20:26:35'),
(6, 'browse_menus', 'menus', '2022-11-22 20:26:35', '2022-11-22 20:26:35'),
(7, 'read_menus', 'menus', '2022-11-22 20:26:35', '2022-11-22 20:26:35'),
(8, 'edit_menus', 'menus', '2022-11-22 20:26:36', '2022-11-22 20:26:36'),
(9, 'add_menus', 'menus', '2022-11-22 20:26:36', '2022-11-22 20:26:36'),
(10, 'delete_menus', 'menus', '2022-11-22 20:26:36', '2022-11-22 20:26:36'),
(11, 'browse_roles', 'roles', '2022-11-22 20:26:36', '2022-11-22 20:26:36'),
(12, 'read_roles', 'roles', '2022-11-22 20:26:36', '2022-11-22 20:26:36'),
(13, 'edit_roles', 'roles', '2022-11-22 20:26:36', '2022-11-22 20:26:36'),
(14, 'add_roles', 'roles', '2022-11-22 20:26:36', '2022-11-22 20:26:36'),
(15, 'delete_roles', 'roles', '2022-11-22 20:26:37', '2022-11-22 20:26:37'),
(16, 'browse_users', 'users', '2022-11-22 20:26:38', '2022-11-22 20:26:38'),
(17, 'read_users', 'users', '2022-11-22 20:26:38', '2022-11-22 20:26:38'),
(18, 'edit_users', 'users', '2022-11-22 20:26:38', '2022-11-22 20:26:38'),
(19, 'add_users', 'users', '2022-11-22 20:26:38', '2022-11-22 20:26:38'),
(20, 'delete_users', 'users', '2022-11-22 20:26:38', '2022-11-22 20:26:38'),
(21, 'browse_settings', 'settings', '2022-11-22 20:26:39', '2022-11-22 20:26:39'),
(22, 'read_settings', 'settings', '2022-11-22 20:26:39', '2022-11-22 20:26:39'),
(23, 'edit_settings', 'settings', '2022-11-22 20:26:39', '2022-11-22 20:26:39'),
(24, 'add_settings', 'settings', '2022-11-22 20:26:39', '2022-11-22 20:26:39'),
(25, 'delete_settings', 'settings', '2022-11-22 20:26:39', '2022-11-22 20:26:39'),
(26, 'browse_actualites', 'actualites', '2022-11-22 21:37:43', '2022-11-22 21:37:43'),
(27, 'read_actualites', 'actualites', '2022-11-22 21:37:43', '2022-11-22 21:37:43'),
(28, 'edit_actualites', 'actualites', '2022-11-22 21:37:43', '2022-11-22 21:37:43'),
(29, 'add_actualites', 'actualites', '2022-11-22 21:37:43', '2022-11-22 21:37:43'),
(30, 'delete_actualites', 'actualites', '2022-11-22 21:37:43', '2022-11-22 21:37:43'),
(31, 'browse_ouvrages', 'ouvrages', '2022-11-23 15:46:44', '2022-11-23 15:46:44'),
(32, 'read_ouvrages', 'ouvrages', '2022-11-23 15:46:44', '2022-11-23 15:46:44'),
(33, 'edit_ouvrages', 'ouvrages', '2022-11-23 15:46:44', '2022-11-23 15:46:44'),
(34, 'add_ouvrages', 'ouvrages', '2022-11-23 15:46:44', '2022-11-23 15:46:44'),
(35, 'delete_ouvrages', 'ouvrages', '2022-11-23 15:46:44', '2022-11-23 15:46:44'),
(36, 'browse_categories_ouvrages', 'categories_ouvrages', '2022-11-23 16:00:38', '2022-11-23 16:00:38'),
(37, 'read_categories_ouvrages', 'categories_ouvrages', '2022-11-23 16:00:38', '2022-11-23 16:00:38'),
(38, 'edit_categories_ouvrages', 'categories_ouvrages', '2022-11-23 16:00:38', '2022-11-23 16:00:38'),
(39, 'add_categories_ouvrages', 'categories_ouvrages', '2022-11-23 16:00:38', '2022-11-23 16:00:38'),
(40, 'delete_categories_ouvrages', 'categories_ouvrages', '2022-11-23 16:00:38', '2022-11-23 16:00:38'),
(46, 'browse_ateliers', 'ateliers', '2022-11-24 19:25:40', '2022-11-24 19:25:40'),
(47, 'read_ateliers', 'ateliers', '2022-11-24 19:25:40', '2022-11-24 19:25:40'),
(48, 'edit_ateliers', 'ateliers', '2022-11-24 19:25:40', '2022-11-24 19:25:40'),
(49, 'add_ateliers', 'ateliers', '2022-11-24 19:25:40', '2022-11-24 19:25:40'),
(50, 'delete_ateliers', 'ateliers', '2022-11-24 19:25:40', '2022-11-24 19:25:40');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrateur', '2022-11-22 20:26:34', '2022-11-22 20:26:34'),
(2, 'user', 'Utilisateur standard', '2022-11-22 20:26:34', '2022-11-22 20:26:34'),
(3, 'chef', 'Chef', '2022-11-23 10:17:07', '2022-11-23 10:17:07');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Titre du site', 'Titre du site', '', 'text', 1, 'Site'),
(2, 'site.description', 'Description du site', 'Description du site', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Logo du site', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics ID de Tracking', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Image de fond de l\'espace admin', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Titre de l\'espace admin', 'O\'dellya', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Description de l\'espace admin', 'Bienvenue dans le panneau d\'administration de O\'dellya.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Chargement de l\'espace admin', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Icône de l\'espace admin', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics ID Client (Utilisé pour le panneau d\'administration)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `sexe`, `adresse`, `tel`, `pseudo`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `settings`, `permission`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'M', 'Brazzaville', '060000001', 'admin', 'admin@gmail.com', 'users/default.png', NULL, '$2y$10$lM/trFVCWktMe.LiO29tQOSlb/kj06fOkEfOF00BYaQ0pxjbL6pCK', NULL, NULL, NULL, NULL, '{\"locale\":\"fr\"}', 1, '2022-11-22 21:12:54', '2022-11-23 10:59:53'),
(2, 3, 'Yvon Sita', NULL, NULL, NULL, NULL, 'yvon.sita@odellya.cg', 'users/default.png', NULL, '$2y$10$rajgBZkAzKFodxGj40chQeAM/x1dEj95wWd0hGA0Rnjy57TyqXAj2', NULL, NULL, NULL, NULL, '{\"locale\":\"fr\"}', 1, '2022-11-23 10:58:58', '2022-11-23 11:01:58');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualites`
--
ALTER TABLE `actualites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `actualites_slug_unique` (`slug`);

--
-- Index pour la table `ateliers`
--
ALTER TABLE `ateliers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `auteurs_ouvrages`
--
ALTER TABLE `auteurs_ouvrages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories_ouvrages`
--
ALTER TABLE `categories_ouvrages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_ouvrage_id_foreign` (`ouvrage_id`),
  ADD KEY `likes_user_id_foreign` (`user_id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ouvrages`
--
ALTER TABLE `ouvrages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ouvrages_slug_unique` (`slug`);

--
-- Index pour la table `ouvrages_vus`
--
ALTER TABLE `ouvrages_vus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualites`
--
ALTER TABLE `actualites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `ateliers`
--
ALTER TABLE `ateliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auteurs_ouvrages`
--
ALTER TABLE `auteurs_ouvrages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `categories_ouvrages`
--
ALTER TABLE `categories_ouvrages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `ouvrages`
--
ALTER TABLE `ouvrages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ouvrages_vus`
--
ALTER TABLE `ouvrages_vus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ouvrage_id_foreign` FOREIGN KEY (`ouvrage_id`) REFERENCES `ouvrages` (`id`),
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
