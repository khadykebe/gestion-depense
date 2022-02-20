-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 22 sep. 2021 à 12:50
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionDepense`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartenirs`
--

CREATE TABLE `appartenirs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categorie2_id` bigint(20) UNSIGNED DEFAULT NULL,
  `categorie1_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeCategorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `typeCategorie`, `created_at`, `updated_at`) VALUES
(1, 'fixes connue d\'avance', 'depense', '2021-09-07 21:06:31', '2021-09-07 21:06:31'),
(3, 'spontanées', 'depense', '2021-09-07 21:12:16', '2021-09-07 21:12:16'),
(4, 'salaire', 'revenue', '2021-09-07 21:13:06', '2021-09-07 21:13:06'),
(5, 'primes', 'revenue', '2021-09-07 21:13:30', '2021-09-07 21:13:30'),
(6, 'fixes à fréquence variable', 'depense', '2021-09-07 21:49:30', '2021-09-07 21:49:30');

-- --------------------------------------------------------

--
-- Structure de la table `depenses`
--

CREATE TABLE `depenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `montant` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `depenses`
--

INSERT INTO `depenses` (`id`, `nom`, `date`, `montant`, `description`, `categorie_id`, `user_id`, `created_at`, `updated_at`) VALUES
(25, 'achat de fruit', '2021-09-05', 2000, 'la depense est fait', 1, 12, '2021-09-13 12:26:27', '2021-09-13 12:26:27'),
(26, 'shoping', '2021-09-02', 50000, 'ooroorororo', 3, 13, '2021-09-15 12:26:52', '2021-09-15 12:26:52'),
(34, 'paiement de location', '2021-09-05', 5000, 'jfspsẑ', 1, 10, '2021-09-17 13:29:42', '2021-09-17 13:29:42'),
(43, 'legume', '2021-09-01', 454, 'oddxldqslmdqm', 3, 9, '2021-09-18 21:23:58', '2021-09-20 15:14:05'),
(44, 'fruit', '2021-09-18', 78, 'qeee', 3, 9, '2021-09-18 21:25:18', '2021-09-18 21:25:18'),
(47, 'règlement de facture d’électricité', '2021-09-19', 6000, 'mqptqtmlqkgp', 6, 13, '2021-09-19 12:41:30', '2021-09-19 12:41:30'),
(51, 'jgkdh', '2021-09-19', 500, 'ouerpitrptprpo', 1, 9, '2021-09-19 23:06:15', '2021-09-19 23:06:15'),
(53, 'irpepep', '2021-09-19', 1230, 'ŝozprperoeo', 1, 9, '2021-09-20 00:16:55', '2021-09-20 00:16:55'),
(54, 'hfueo', '2021-09-20', 789, 'lodidk', 3, 13, '2021-09-20 00:23:27', '2021-09-20 00:23:27'),
(56, 'klsfdro', '2021-09-20', 12230, 'pozrkjdf,ksl', 1, 13, '2021-09-20 00:25:49', '2021-09-20 00:25:49'),
(57, 'jdksopzor', '2021-09-20', 7890, 'odfmsFpesp', 3, 16, '2021-09-20 00:59:07', '2021-09-20 00:59:07'),
(58, 'uiodfk', '2021-09-20', 100, 'psosfezo', 6, 5, '2021-09-20 01:04:57', '2021-09-20 01:04:57'),
(65, 'achat legume', '2021-09-20', 1000, 'onkfdlfsmofkzme', 3, 19, '2021-09-20 15:00:33', '2021-09-20 15:00:33'),
(66, 'facture d\'éléctricite', '2021-09-09', 456, 'ihzeùpzrpzerpe', 6, 19, '2021-09-20 15:01:38', '2021-09-20 15:01:38'),
(69, 'carburant', '2021-09-21', 5000, 'orflsmdfms', 3, 20, '2021-09-21 11:35:01', '2021-09-21 11:35:01'),
(70, 'ecole', '2021-09-21', 4560, 'iljqpzpaâẑeeoor', 3, 20, '2021-09-21 11:48:46', '2021-09-21 11:48:46'),
(71, 'nvvnvn', '2021-09-21', 78, 'mldscl,smdcpcdsp', 6, 20, '2021-09-21 12:06:47', '2021-09-21 12:06:47'),
(72, 'gerprpe', '2021-09-21', 7, 'plfefze', 3, 20, '2021-09-21 12:08:24', '2021-09-21 12:08:24');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_09_07_023313_create_categories_table', 1),
(11, '2021_09_07_023436_create_appartenirs_table', 1),
(12, '2021_09_07_023504_create_revenues_table', 1),
(13, '2021_09_07_023530_create_depenses_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('017c17e050b169e4d3e552b24f91c22ea0cef25f973ed869e94a40b04e0c5eb82aa4cd6f6fb6fbd6', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 13:44:48', '2021-09-12 13:44:48', '2022-09-12 13:44:48'),
('02c52971da344b1f6f3d09ea95a282ede1219800dfaef109396c0e05ed7ef40fa8b901880eca0053', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-18 18:04:27', '2021-09-18 18:04:27', '2022-09-18 18:04:27'),
('0351e36bd9a01b5a8d296ce02db8eaecf4fd8ae052d39370eb0a382ae25e00de244eff89947b6fae', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 02:32:13', '2021-09-10 02:32:13', '2022-09-10 02:32:13'),
('03a9ccf61cd02970965383af8eaed237976a1746cc0e1851e683cb36decadcd7548c7fba0f0814ba', 14, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 13:43:34', '2021-09-17 13:43:34', '2022-09-17 13:43:34'),
('0437b2c03e2ed45deb2a6ec6d0d778543d190933b0f6b2f8d78b35cef3b5873b530b6c65fe92102c', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-14 19:56:57', '2021-09-14 19:56:57', '2022-09-14 19:56:57'),
('05bd354f2606a895ee23d99143bc238ec044151c3cf14f9a92e4cfe8e8c995cd31a47b57304d5875', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-19 16:31:47', '2021-09-19 16:31:47', '2022-09-19 16:31:47'),
('05e51504389e8e89b14e1103edeb1b488dd5293670e9ea18edc2d6d6633fcdce4c647afb04e0090f', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-11 00:22:01', '2021-09-11 00:22:01', '2022-09-11 00:22:01'),
('06428d6061be8b6bb1e42669f4e1b66bb740a8fb97632d8c886d5927919e6647f061af27837c9f68', 1, 1, 'user Password Grand Client', '[]', 0, '2021-09-07 21:00:56', '2021-09-07 21:00:56', '2022-09-07 21:00:56'),
('06cd12b1088b58cb05983f455a7b820b0c557aa96f6b62586f66c0a44ac7d44291cad890e89a980d', 12, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 12:25:17', '2021-09-13 12:25:17', '2022-09-13 12:25:17'),
('06dd3fa86c77b932ce53b70daa387460e56743bdfcce6278cf1f9a05a69dc55bf10b061ea5dda4f2', 6, 1, 'user Password Grand Client', '[]', 0, '2021-09-09 22:19:47', '2021-09-09 22:19:47', '2022-09-09 22:19:47'),
('077529777fe1be6ee80332e24c135f0d222a28e44d6b5142aecd1813465de5410a154e21a80e1359', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-15 11:42:12', '2021-09-15 11:42:12', '2022-09-15 11:42:12'),
('098c051b8e3a4f06c081327d1d2bc06508b9e0bc8e67f3ce3e4b470549255ee3059e6e7fa046d21e', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 14:56:46', '2021-09-10 14:56:46', '2022-09-10 14:56:46'),
('09e33d69d1f4e8818970a883f597c6c5b145891db96cecb5e50ef054eaa913bffb949e0f504a9e60', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 14:10:19', '2021-09-12 14:10:19', '2022-09-12 14:10:19'),
('0a996c74001f8285cc9f6724de09cb659ee377cd9d2757f059c42c1f904cebb4a3f8f0b468c728c3', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 20:35:01', '2021-09-10 20:35:01', '2022-09-10 20:35:01'),
('0b7e2fd04e93930626e0d62e34299bd1ce02744f5aa6849986d2536add8f60e7caf009fb0d14baf1', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 01:01:01', '2021-09-13 01:01:01', '2022-09-13 01:01:01'),
('0c1494989d7db2d7f939ecdae426323b45cc094b71fc8d2ed8a813b91ef1bf083d9cd2129e79897f', 11, 1, 'user Password Grand Client', '[]', 0, '2021-09-11 22:33:07', '2021-09-11 22:33:07', '2022-09-11 22:33:07'),
('0c56b278c7cc7d05c3f7862962d6ea371b493aff18298d8eca3d80a8ab593c6d32f1e65507e79f4d', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-09 23:51:24', '2021-09-09 23:51:24', '2022-09-09 23:51:24'),
('0dc74a8431682b714983a498500fc226af1dd1013a097c4e189ea8785836bd4b2ed8577e0cd7652a', 10, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 15:08:01', '2021-09-17 15:08:01', '2022-09-17 15:08:01'),
('0ed323c1d9d13438e7509caaf07bc2e4bd593e9d56d18e8b2ad0b038ad94206ef4ca72383e38d9dc', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-19 10:54:20', '2021-09-19 10:54:20', '2022-09-19 10:54:20'),
('0f2548489278a65d8a082fd54768801b8ce07c1ba84be1156415fe7ccb281270089bf07e722aa212', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 01:19:09', '2021-09-10 01:19:09', '2022-09-10 01:19:09'),
('10f36c25c3767ac496de05cda96530a431f140bdf58916b6442f6feb9323b87d6db6cb9064fab04d', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 20:00:23', '2021-09-10 20:00:23', '2022-09-10 20:00:23'),
('11ceb489a60bdee2e55aafce5edabe3c74cc44f67d44a1b94054ee4efdcbb0302a80c22fbdd213d3', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 23:39:20', '2021-09-10 23:39:20', '2022-09-10 23:39:20'),
('13485093f41c2e45e3a7fe142885c0a04dc573b866852d5f19b093f64055c09505ddf60021880227', 28, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:36:40', '2021-09-21 13:36:40', '2022-09-21 13:36:40'),
('1429c19e7cdaecd2a424f698fba26529525445b218b5ca226f94ad935690994b3b1032aba0c196c5', 26, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:26:17', '2021-09-21 13:26:17', '2022-09-21 13:26:17'),
('1638194342b76de9470c451918cb911ab4a997d6004aedbed41c1dff93766f7bcbcb99a44dfabb72', 1, 1, 'user Password Grand Client', '[]', 0, '2021-09-07 21:04:11', '2021-09-07 21:04:11', '2022-09-07 21:04:11'),
('16ff67536cc01ff0b67736855a89de214294a5754c084a4dcb0d7d9b32bfd1a363a7f1f5d674df70', 36, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:52:43', '2021-09-21 13:52:43', '2022-09-21 13:52:43'),
('18a1fa6d2deb53de5750ed27aa95da8fbe07841d63bab8b6f2c39b8eb80dd2798a4f4c034e670f5c', 17, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 01:32:45', '2021-09-20 01:32:45', '2022-09-20 01:32:45'),
('19378ef6c9f449be030d2510406fd8416cdd850eb178d79ca90cdfb2c3a0a1291d1152a8d41495e0', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 12:41:48', '2021-09-13 12:41:48', '2022-09-13 12:41:48'),
('199d9279c3a80b278c82ed66f4d6ef2100149295a53113936cc8b1529259ca746f87979d701d54d6', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 20:13:38', '2021-09-12 20:13:38', '2022-09-12 20:13:38'),
('19efafcfc8b9dcdaa6508217f56520305d1e9ff5d55b2e7c9758e1767d2db7a4680f61e031a7ebd9', 4, 1, 'user Password Grand Client', '[]', 0, '2021-09-09 18:51:01', '2021-09-09 18:51:01', '2022-09-09 18:51:01'),
('1b19ae678bb0132fc8148d20220b2483ae5e7a4f03ed964cb455838b9ba949d92b44919d2c24e0ad', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 01:37:54', '2021-09-10 01:37:54', '2022-09-10 01:37:54'),
('1bdb81eb2352dd80d4203cbf815a7b7d908e1486dc56fbc208a828a4ea9ec7b92bb83a0931e93896', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 14:32:18', '2021-09-10 14:32:18', '2022-09-10 14:32:18'),
('1cb06e3fbc42a227fc9a5545d7a4d35771003c08d1f99e762482ad182ac235ea2b2142eab1761c2c', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 13:33:14', '2021-09-12 13:33:14', '2022-09-12 13:33:14'),
('1d57296648c3c45f5b4507232f911aa20e259ca6482ede0a1427f43905aa16bae7087d27afdaec4c', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 14:57:52', '2021-09-12 14:57:52', '2022-09-12 14:57:52'),
('1d5ba5f149f54995cf4823dc5111c000258a2fcc04f99ff26acdf36cc15d5d490238038a94e18cee', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 13:42:08', '2021-09-12 13:42:08', '2022-09-12 13:42:08'),
('1dd9d7645c34faeecb57f15d27a595dad62835935ddf138d4c8abe56b4b4d7632e6723cb947a1f15', 30, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:42:17', '2021-09-21 13:42:17', '2022-09-21 13:42:17'),
('1ddac27a93a8a4d4249514208e49a54d441aa98573c83520d54eee4eab6517607d5a2de1b89d661b', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 18:04:16', '2021-09-17 18:04:16', '2022-09-17 18:04:16'),
('208e782f050da8c214260f4ac8e5404cb51474444177297ed9dce7ac229660a7e653608815ce2d6e', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 23:39:40', '2021-09-12 23:39:40', '2022-09-12 23:39:40'),
('223dd608ab2b64e078f3877d09a7733f3e1ca3b72613d31a4928d113b617b48bc16a8a218ac555fc', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 19:19:23', '2021-09-12 19:19:23', '2022-09-12 19:19:23'),
('226fa327d8c11a5ddbbbbadb857cf77d7408d2f9c11d13df597c8445c9f3d1a1149f4854783d6e58', 11, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 21:56:47', '2021-09-10 21:56:47', '2022-09-10 21:56:47'),
('234bdf3496b380545c75578a209e82fa64cec95b4da951cc4c32ebec9414fb318eb244bec71f7dc1', 4, 1, 'user Password Grand Client', '[]', 0, '2021-09-08 13:39:50', '2021-09-08 13:39:50', '2022-09-08 13:39:50'),
('24d4bff17592e45be672fbe1988b9f0f0ad29d1b96643f957c799f1bce0075b4832e62aa17d7c0a8', 10, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 12:54:48', '2021-09-17 12:54:48', '2022-09-17 12:54:48'),
('24d814d10ffb437af32caabad3d229474aad4127e5958230d46acf09bdb754e8925ae14c1b33c3b5', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 02:06:54', '2021-09-10 02:06:54', '2022-09-10 02:06:54'),
('25805b1ad0a4a47a35e80c65cab04bcc5c42b8212c6f22a9480d95012d0c873b3d6fad57af7f3c33', 10, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 13:04:52', '2021-09-13 13:04:52', '2022-09-13 13:04:52'),
('259df5732183fcd76b3bc397e0122212028ca461ce9146c48bb729cc5d184525c1a8b3c5ffbe1040', 5, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 01:03:13', '2021-09-20 01:03:13', '2022-09-20 01:03:13'),
('25afdd5e3fecf9af8018de120a7fd506312f81fa5d23ad7f21693f896c9ff8080c196eb8e7dc4566', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 11:17:40', '2021-09-13 11:17:40', '2022-09-13 11:17:40'),
('26566b6c4bedb4da5c21d8cdaac7f65e9db9ba60df5e2ff0c739dad5917dfb028ef6938e86372c38', 10, 1, 'user Password Grand Client', '[]', 0, '2021-09-16 14:30:07', '2021-09-16 14:30:07', '2022-09-16 14:30:07'),
('266b58b55cfee899767021c3297a495784f58f306826ab128f5a5ff7106df178b69e30c9db0aa976', 3, 1, 'user Password Grand Client', '[]', 0, '2021-09-07 21:02:15', '2021-09-07 21:02:15', '2022-09-07 21:02:15'),
('269ac246d4be765c93600760d34f5742fdb80ea0051d7558458053c96f06852800b7ca7ef8ae1dd0', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 12:03:11', '2021-09-20 12:03:11', '2022-09-20 12:03:11'),
('26d1174360c998a0f98d877d8782f853f9722d0ef1dfbb1abd15174a4cb9870472f62ba0dfe74eb3', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 00:45:57', '2021-09-17 00:45:57', '2022-09-17 00:45:57'),
('27ea72049f4f5a5d68707696590cd582ad7d538a7b87ea660312164c073324bdba572a7b7d4b34dc', 31, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:44:46', '2021-09-21 13:44:46', '2022-09-21 13:44:46'),
('286d996f1298cfe5bff279c03486a903dee204023877105a939bcd4eb54da0d9667ca3ea4966b098', 14, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 13:47:50', '2021-09-17 13:47:50', '2022-09-17 13:47:50'),
('28be26daf106df00daced01c8120d3d43cdd6255e8a11176bc04bd1b17f1b41ba7bc1b87595e9968', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-11 00:30:08', '2021-09-11 00:30:08', '2022-09-11 00:30:08'),
('28ef5105b255533a807398ab4eb553d385172ab92fe31d8683435becbfeb01538906bbfd18ad00ff', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 00:49:46', '2021-09-17 00:49:46', '2022-09-17 00:49:46'),
('2a0160fdf38620ad1c3b4d2d93d7bcee5e937356e587b191d5eb86878ecfb2f6cc87540bab141d89', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 10:11:05', '2021-09-13 10:11:05', '2022-09-13 10:11:05'),
('2c7285491998da1b63419e60feb362b5a57e9fda89aaf16d7d6d3470120673dc79d825d81a87c2a1', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 23:23:58', '2021-09-10 23:23:58', '2022-09-10 23:23:58'),
('2d7ec6827eeca4ce75bccb25d9e0a1f2218d97c238608e2b7b7a3471453ea0bbd098e44b3fb6c164', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 13:32:53', '2021-09-12 13:32:53', '2022-09-12 13:32:53'),
('3081f5f470e320ee291f63fb4012f313b83ccb8eacbda09c04366d3a6c2952df383693e34e529beb', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 02:06:55', '2021-09-10 02:06:55', '2022-09-10 02:06:55'),
('35e9a4b38d7b1e3514593ed3eb751d1aa882757f37f5b5b509467ccaea69f9934c17acfda71f4923', 30, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:42:34', '2021-09-21 13:42:34', '2022-09-21 13:42:34'),
('364264f45e00dd8116eac262d8903bc923c3f63ce6edf0ce1c6b866df7132b63d0523ab8e10ae429', 12, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 12:25:42', '2021-09-13 12:25:42', '2022-09-13 12:25:42'),
('371c820c54b8167c19f9b39a2a35ef4fe96664968c17f84752512a5c03859c39347b587345859175', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 15:20:48', '2021-09-10 15:20:48', '2022-09-10 15:20:48'),
('3b231fa6a1a3e060865983473c866c406ec6802a45e04b8a260342a2059c907bcaf5e8a17be277cc', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 14:31:22', '2021-09-12 14:31:22', '2022-09-12 14:31:22'),
('3c861eaca3471b86489b8bac64ab79ee5b6e9e41731bf73ef777f09e208d20a17e2d7c38c04c635a', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-19 22:31:15', '2021-09-19 22:31:15', '2022-09-19 22:31:15'),
('3cee53d408bab9d76231e04e52e8f185f6c32fb644bafcbee6d4b58ba88228e68aa0bad501e61385', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-11 22:36:16', '2021-09-11 22:36:16', '2022-09-11 22:36:16'),
('3df6121897983616c3105f699ab1d83837db233f850db0233774ab9b3629cbe96b4b19bba8bca996', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 20:03:19', '2021-09-10 20:03:19', '2022-09-10 20:03:19'),
('3e45ebedf1c67acfd4e76e18f61dc44180e0ef2668276c67dc366a159029091e4af03bb8c5ce1c18', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 18:31:06', '2021-09-12 18:31:06', '2022-09-12 18:31:06'),
('3f4cfe069058ff74274660b782e0176c58c6bab347637fcfee3a8700995c9b86a8eb418e8f1c1a3f', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 01:59:28', '2021-09-10 01:59:28', '2022-09-10 01:59:28'),
('408fad72656fe9f331046fddd7649b31fbe87e0fdeeb38657c677d9f94d0bf895a72155fd09ac4d4', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 13:42:41', '2021-09-12 13:42:41', '2022-09-12 13:42:41'),
('40fbb82dd8237f3bb534aa753735b730e43e2198b1578db9beef27bd4ba10bb3536bae1cfddc4c1a', 29, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:40:51', '2021-09-21 13:40:51', '2022-09-21 13:40:51'),
('4263246e942710f0a3284182071b5ee273bfe3532cbcdc67a5f4aa64d2fc0d76769660112b1d2d27', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 10:12:35', '2021-09-13 10:12:35', '2022-09-13 10:12:35'),
('43383fb2cceac3447b6b8d1f81c8cc1131abca22aa647739187deae34dac835156fc21fbf3d1bbb1', 1, 1, 'user Password Grand Client', '[]', 0, '2021-09-07 23:03:32', '2021-09-07 23:03:32', '2022-09-07 23:03:32'),
('443a14c5c31e5ceb5835bb18c2a7099551e930225ee435fe72c085200db936f642e9ca73c858777e', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 14:04:37', '2021-09-13 14:04:37', '2022-09-13 14:04:37'),
('4498d1e66e6ccd906cdf066fad027724c690db88154a7ee4bbfdb2570a1ff11c2a9a4d8e7830aca2', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 14:04:37', '2021-09-13 14:04:37', '2022-09-13 14:04:37'),
('44eff4e09572b29642217305da09866a8f023218bc73e0a7f9a6f943978a2ca7cccae6addf00fbb1', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-18 21:22:37', '2021-09-18 21:22:37', '2022-09-18 21:22:37'),
('45a9a7fe9472f39c546d8825f73cb869f6da83967e7b10f53553c4d82ae74fbf608176968233418c', 16, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 00:58:16', '2021-09-20 00:58:16', '2022-09-20 00:58:16'),
('484beeccf71754df66b2554dd5a596c5b7697c4ee58f458570a80e5c10a5bdbe3a9b345038ed7a87', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 14:11:54', '2021-09-21 14:11:54', '2022-09-21 14:11:54'),
('4a7dbdd7c99ab50ba74b828d05b3f292fffb85cd6b56b9b225f23aeb3a8d4aaeb798dbb0d16d23ab', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 00:40:06', '2021-09-21 00:40:06', '2022-09-21 00:40:06'),
('4ab4b7122a4cfde32a31ee0f765b1b780be08c23dd0f13cc01ce622902ec18326e9fe63f0dda5dd9', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 00:21:22', '2021-09-10 00:21:22', '2022-09-10 00:21:22'),
('4ac094c2fc432d9d2a4e0f68865967d47d4061b682fae6e980b3741f49b62df188674124cf5be641', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 15:03:59', '2021-09-10 15:03:59', '2022-09-10 15:03:59'),
('4b2bd458011af6dad4e52ff24946a23dc966b22d9b76a0e1a4fa8c73879e788c674ff057a4707b41', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 20:14:16', '2021-09-12 20:14:16', '2022-09-12 20:14:16'),
('4be0b05c2197fdcf9d552692450016b0235aff86cdad0e0c1fb807d98a3c7a7b30ac9314ab37c70c', 5, 1, 'user Password Grand Client', '[]', 0, '2021-09-08 13:46:17', '2021-09-08 13:46:17', '2022-09-08 13:46:17'),
('4c41f2a6d89336e4a25b1d39393406ea95d99340f5505fdf142a5265fb2f46eea8a0b02e73a42f77', 37, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 14:01:09', '2021-09-21 14:01:09', '2022-09-21 14:01:09'),
('505811dde3ceade6c75d8ffea67b08865052059d56bccb215da2b98cd66ba1c9ba65ba476f2c9a31', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 00:22:17', '2021-09-20 00:22:17', '2022-09-20 00:22:17'),
('507193433f7a4fb5de30df3ed86e0f38823a2ac7f0f48c27792dc2078551735ff5b9a681e0183c93', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 23:44:28', '2021-09-17 23:44:28', '2022-09-17 23:44:28'),
('509683e171f63b21b3d0b951251899cb7dcdfe1c7381d5c1f6a50d6686f50a123ecab78dd56bbed5', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 22:07:16', '2021-09-10 22:07:16', '2022-09-10 22:07:16'),
('5238c850e61da4e299a0d89578d68b33c6285316222b60488b3979c87d8099aaf8d64211a09f7aad', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 14:37:42', '2021-09-12 14:37:42', '2022-09-12 14:37:42'),
('52421de15b3f01d6d1252d8fcdbbb722d04d31db7292eca26697ea2a36bdf634c0a3c2f6abd4ef82', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-19 12:46:38', '2021-09-19 12:46:38', '2022-09-19 12:46:38'),
('54f15f37ec34392f59bde2d29d06b3d1ae8f10913e70aff7b2ddd63679e917e2ade3c0633ade11bc', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 18:33:14', '2021-09-12 18:33:14', '2022-09-12 18:33:14'),
('5507658338870e2afa1aec8a55c20a59dd091ba5d9f5aa285c15ba2be399d651265ca2d206ca4e54', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 00:49:59', '2021-09-10 00:49:59', '2022-09-10 00:49:59'),
('551eb48caa80eddf0fb5dd3974a7cdff03fa617270a4a5bddc6429c0bbdc31a5542a6ff3202ee6aa', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 00:48:49', '2021-09-10 00:48:49', '2022-09-10 00:48:49'),
('595e0a07b6a0d983110797cccf2f16e7e8fb4c2430e81cd634160be7fd0d2490742911af285ffb05', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 21:08:54', '2021-09-10 21:08:54', '2022-09-10 21:08:54'),
('5a8be24d6a9209edd29fd86d884ae59c15476ab93ca88ac014bf6683cbdaf150f18439e8e565dd46', 25, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:22:43', '2021-09-21 13:22:43', '2022-09-21 13:22:43'),
('5e03b946d6a26f37ceff518af31071e910beabed9dfa35b6d7dcdd1010637575d15f6e077aedfce8', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-19 22:50:15', '2021-09-19 22:50:15', '2022-09-19 22:50:15'),
('5e955b7adb7a569a3ec272f5de0a3f86249aa9db67e3a05014f0d8fff2a4a41ed7213d57961643e2', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 13:28:42', '2021-09-12 13:28:42', '2022-09-12 13:28:42'),
('5ee58f65bb290c4aff8cd190794d2e1d161ae9dbd792a40afe3bdcfff64542d9b7c919f82cab84e4', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 13:34:57', '2021-09-12 13:34:57', '2022-09-12 13:34:57'),
('5fc47963ed4ac825f4d43031a9a9d26f11a0aed701d0053e885a2c888b21c2df7832756577cc3c04', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 14:11:46', '2021-09-13 14:11:46', '2022-09-13 14:11:46'),
('600956b0fb69845133127f474a7fa7376560f3c9051baafded52047c7de26c32ef3481c05d918477', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-14 21:32:56', '2021-09-14 21:32:56', '2022-09-14 21:32:56'),
('61a833b6e896549db68dd4ef81e1a754ab225244c779158affc3a002718df771c7d7e16bb6bff2ae', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 01:02:16', '2021-09-17 01:02:16', '2022-09-17 01:02:16'),
('61ec5a10f02f27e751851736fb1d2eb91569e75b2cb4d48232c40fcaa97a0b1155137039e29ba2d3', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 16:02:10', '2021-09-20 16:02:10', '2022-09-20 16:02:10'),
('63b071e5c4de45831d47801852f64c1bc403579c6fcbcd72fb85f24bffe4c98998414e068163b63d', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 11:28:03', '2021-09-21 11:28:03', '2022-09-21 11:28:03'),
('6545a8648ea6ce91c28a7cc2c77a5ea1fbdcf013e88e80e91b7ec124c53a6a904091598def0610c9', 20, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 11:34:17', '2021-09-21 11:34:17', '2022-09-21 11:34:17'),
('654863fdf6b8c353113dc904f66058d7af458e7c0e2e3e4ce244bd842c7f9943818687d4083bf485', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 01:55:19', '2021-09-10 01:55:19', '2022-09-10 01:55:19'),
('662b19a16a9ec05dbb04f7c7f5b367d02e58aeff34f1a8625ac63cfa98c84fc6825c6448b216028a', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 12:59:49', '2021-09-21 12:59:49', '2022-09-21 12:59:49'),
('6645b28ea13e5a810316ffb62fb04ae51e1eb4aaebc37b2e43b9e9ba323055bdeeec62498b5604ec', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 12:59:25', '2021-09-13 12:59:25', '2022-09-13 12:59:25'),
('669a0a517bfe39e00fb4fb7e199389f53b5cb928cc99b36110049d5d63f7cc4b015e2a5cb04e903a', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 13:17:09', '2021-09-12 13:17:09', '2022-09-12 13:17:09'),
('699e1956c6d202c410b1e3f90d62c1fe3d7abad58ce7dfb6c1d11c9439839aae4d039991a63fb597', 4, 1, 'user Password Grand Client', '[]', 0, '2021-09-09 18:42:07', '2021-09-09 18:42:07', '2022-09-09 18:42:07'),
('6c31a3a01978c2abd1eb010245137f96a7a8f79da9263368d8a74cf47f6e4dc02bdf4777c31bdc1a', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-09 22:23:50', '2021-09-09 22:23:50', '2022-09-09 22:23:50'),
('6d7a3dad8da406081310fdf7199d0ba99bbc2b2d9b426a5c0bce7e9fa6ab621a8b1f0052b1e4a019', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 14:04:36', '2021-09-13 14:04:36', '2022-09-13 14:04:36'),
('6f1811c3b4d83e8d15af4c2b0cdfb073f300bd255701803d36f228b894d71392bcef5ac00b3e568c', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-14 21:48:00', '2021-09-14 21:48:00', '2022-09-14 21:48:00'),
('709bccddec9e0fdd28f140b4649e75267bd3a84bdcac193ba65dabfdba71400fc848db81efd377c0', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 10:10:02', '2021-09-13 10:10:02', '2022-09-13 10:10:02'),
('70b713c765b8f22d6284af98cba922915be6fb62361775b22214d5c6ebdab6479c92d3d180ec7058', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 13:31:32', '2021-09-12 13:31:32', '2022-09-12 13:31:32'),
('710d49741d1b9f9636dd96b8021b6d646b67ea2e8bc14f9abed5a1644289b4fa0445e4a81d8ae0d0', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-09 23:38:01', '2021-09-09 23:38:01', '2022-09-09 23:38:01'),
('71c86127d6b30951fcd407a27b920ac9ca0081f12cef3723f3e83d30e50ef2241e8fa8b13916da01', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-16 15:26:14', '2021-09-16 15:26:14', '2022-09-16 15:26:14'),
('726bade5e6b0b1fde8adf0306fbf72bc70e3ebefc41bc31730232be2fea06f9c5a21c3ad36f35d87', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 14:25:20', '2021-09-12 14:25:20', '2022-09-12 14:25:20'),
('72a9afb0787a6a5a52c2ffa51d4efa02304d13035073c1a366241906120bad48692bc1d8b09af85f', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-19 10:59:15', '2021-09-19 10:59:15', '2022-09-19 10:59:15'),
('72eccda8d66eec06b4659d43ac8ea5d630025cef0b808d93f94aaa59c88e1ae7e5fcc628fb7e5dc0', 6, 1, 'user Password Grand Client', '[]', 0, '2021-09-09 22:20:27', '2021-09-09 22:20:27', '2022-09-09 22:20:27'),
('74ac9d4e626f25bd0ae2fa9ccde5b07c8f6db58e7dda81ae688c1a48c5720dbee1822eea37788c09', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 13:08:08', '2021-09-20 13:08:08', '2022-09-20 13:08:08'),
('754cf412634040ccce05e6f461a4766b5264ce627250753c7ed5ddb631c4eb080523b7c5b64edfef', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-18 18:04:58', '2021-09-18 18:04:58', '2022-09-18 18:04:58'),
('76a35a7ff9c693ba8a28ee8cd6d270bdebaf9f31309536234bf5ec841e5f2b1883b3b97e50f72b8c', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 18:31:04', '2021-09-12 18:31:04', '2022-09-12 18:31:04'),
('78203c5481204c8ee7a794124223de8f7f5c8bf0ea7cd9d3088a0c69cc8b45dca3677d77898ea092', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-11 22:28:42', '2021-09-11 22:28:42', '2022-09-11 22:28:42'),
('78544f8b3f03fa2471371fa0a4386616198bce637f66231d0ec62dd2b3d31a8d2b7e6c82f381139a', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 22:43:29', '2021-09-10 22:43:29', '2022-09-10 22:43:29'),
('78dfcc5d7856d56c62ca6aad24ec74139c194b22135efac1462de93ac385bd27f36f053df883a026', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 21:36:28', '2021-09-10 21:36:28', '2022-09-10 21:36:28'),
('79265152b71b193a5ddd4f8c5e1e550d7411bd800f138051ad0bb6a08d4720ad52934f7e45a6a15f', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 12:43:45', '2021-09-13 12:43:45', '2022-09-13 12:43:45'),
('7a6091be35ebb5cd0580882a8d5386843af01de7da61223ecbfac68bf8b36c9f881bfeec5832f5ca', 10, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 14:38:06', '2021-09-13 14:38:06', '2022-09-13 14:38:06'),
('7a7dd0735f8c3aac174bea62b41fa398e83f2c802315cbfee57646111bca2b9fcf5766b16bbd907f', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 02:06:29', '2021-09-10 02:06:29', '2022-09-10 02:06:29'),
('7af989f2298d54230d7b1f70c602fea1f9646fb06850da5d926864104881a6740fecff6e956e5ffd', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 02:06:00', '2021-09-10 02:06:00', '2022-09-10 02:06:00'),
('7b980fbdf806876c559cf0825576eaa1096d51457939975c4e56aadaef8f7537ceea64188ff9e225', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 14:02:06', '2021-09-21 14:02:06', '2022-09-21 14:02:06'),
('7c30371461e7bbfc6f91ff4e133862e89098db79e778bf1f39b4d75ea2764ab81766f1fab8669dc2', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 19:32:30', '2021-09-12 19:32:30', '2022-09-12 19:32:30'),
('7e11d4ca0910a57cf533479541f97988731a34cf768a81f386a8c84d4b82f0043de8c9fe4ed2f527', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 23:42:16', '2021-09-10 23:42:16', '2022-09-10 23:42:16'),
('7ecc2fa655aaf8acb78f8eccb20241b79f75f6997a3e63c1a5069b3de1d4e396bfdcc9959fcebf9a', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 20:41:47', '2021-09-10 20:41:47', '2022-09-10 20:41:47'),
('7fb81f0d7a97372f2f1cba3ff463e67a43a9a57dc75685851b7974d54f5df07f93585ea634ee7920', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 12:00:58', '2021-09-20 12:00:58', '2022-09-20 12:00:58'),
('7fdf833afdbb4b3fada57fa601cd35d45ee9f27fcc5e6d41b786cf6960cb57eeae2f8df9309d571b', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 16:11:53', '2021-09-12 16:11:53', '2022-09-12 16:11:53'),
('81c2d22f1db40dc2432a7672ea4bef777ac5080b0cd2d9a4392e255faf4f83276f9076c6781d471c', 11, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 21:56:35', '2021-09-10 21:56:35', '2022-09-10 21:56:35'),
('84d0ba5c3e2c0b44837607d8a6af0593be1c123a57d81b838142c3de68882a7d0b04c571f4d9a78f', 19, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 14:56:00', '2021-09-20 14:56:00', '2022-09-20 14:56:00'),
('872d75cb2d0ac3fe1be31926868de89693c082ee423265956abeb1e6c9aa3150a3912bb51e36fe31', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 22:39:12', '2021-09-10 22:39:12', '2022-09-10 22:39:12'),
('8736fc9a1b022cae5e592edfc3e48763ed45f1a4c4ce22036ef296c451bea3511d92c8d4553746bb', 22, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:15:16', '2021-09-21 13:15:16', '2022-09-21 13:15:16'),
('874329c0ad4be68ec5a4bcc9330393ab4cc10856c0d84791f774ff4c4c4598ab379a82989d91f216', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 14:41:17', '2021-09-10 14:41:17', '2022-09-10 14:41:17'),
('87f211f5ac4631ea98780cc7eadc86ddbbda8f183ebea12ea90c31875d2edd21ba80df3703bd9e0c', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-11 00:16:38', '2021-09-11 00:16:38', '2022-09-11 00:16:38'),
('8eeb140be6e05bb74d817426585408a92a49d007df76070064f0350092fd98f5cc60dd616226296c', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 21:29:23', '2021-09-10 21:29:23', '2022-09-10 21:29:23'),
('91636dda27584d21d2319d77a9750afdc738dd44cf5f5b987c6d7e69e79ea02cb047a4b2676e8524', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 14:04:35', '2021-09-13 14:04:35', '2022-09-13 14:04:35'),
('9180881a75bede60ecb843515a2d634fc9e995d10f360b6e9ac419410f36b67700a997898a84e531', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 13:46:00', '2021-09-13 13:46:00', '2022-09-13 13:46:00'),
('924d4ea29626d0cb6456e7550f066cd033d9170b0c06dac58fb7903f446866d45e8a3a022951f68a', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-09 23:56:47', '2021-09-09 23:56:47', '2022-09-09 23:56:47'),
('9288b3bf7bd9b2e7c86d0a962dd29bce5eed3aefea94049f218e09f1289a249dccdc282c1ffb1d72', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 14:23:34', '2021-09-12 14:23:34', '2022-09-12 14:23:34'),
('93cd7704d24be4988c0024139c82db80dcc3bc39aaadc194462d27f319b6aa49027f4420e79165c1', 14, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 13:43:13', '2021-09-17 13:43:13', '2022-09-17 13:43:13'),
('946a2415162171c48fb828c81e97e5b3b69885720edcde108de5c0bf4837dd9b5d4c75db3e81d021', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 01:05:09', '2021-09-10 01:05:09', '2022-09-10 01:05:09'),
('9571cb09325ddd060ad254fc30d768cc00e78fbed380e75cd09cb331c15958785087a46b49238f75', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 01:46:00', '2021-09-10 01:46:00', '2022-09-10 01:46:00'),
('95cd02c1b7867bacf82f94e67637b70cfc98696f2d1edccccb74fd637c01ee1c744adbdcacb4b549', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 17:53:23', '2021-09-12 17:53:23', '2022-09-12 17:53:23'),
('96b4bdb94fbf28af6cdc7f79412530e8becd3602230167a633c26481a08e6e6a4a7047c5eb4ceaea', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 12:43:40', '2021-09-17 12:43:40', '2022-09-17 12:43:40'),
('96dca3c45c868fc2054ffaad9b8b42d036705fd0d5ba12f4a42efc69ab2a06697a1b4a49e17c3e6a', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 02:06:55', '2021-09-10 02:06:55', '2022-09-10 02:06:55'),
('976b8f5596ed9257bc0a6ead2a44a4a4c533c5995bfe3c020d89fecb9a0ab365b24668e8ee8ad007', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 16:36:40', '2021-09-17 16:36:40', '2022-09-17 16:36:40'),
('985700617889fd7cbf53add185bc761f8c296ad82dcca2b2fc6b4109062d7b06cba8b7c4df96a79f', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 12:03:52', '2021-09-17 12:03:52', '2022-09-17 12:03:52'),
('99455ecbf2cd593a1c36e7d168e4d757395200b914f587ee015e5a9f2dec99066c6c57fbae96d837', 19, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 14:55:41', '2021-09-20 14:55:41', '2022-09-20 14:55:41'),
('9984b18c5d1a5ad620bb7e3972fe548132b0e4784887cb50daa74d3bb6558ce474e62a85dc5be13b', 33, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:45:24', '2021-09-21 13:45:24', '2022-09-21 13:45:24'),
('9b2df8f75454cadadc105fd7d68a98569acccb9ed6217fcd3ee7ebe9b58f5e8ef73835ad3710895d', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 14:00:37', '2021-09-20 14:00:37', '2022-09-20 14:00:37'),
('9d30273fd5e716f19808778b94655f23ddd6719fb27745e451e0d1bd53d7238ed2b45b26e6b57101', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-14 21:49:26', '2021-09-14 21:49:26', '2022-09-14 21:49:26'),
('a04b0290c9a4ed00f819d11c3e7ecca59a4d692055367373b2d87819d5afa4c169de628e07e48cb4', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 18:31:06', '2021-09-12 18:31:06', '2022-09-12 18:31:06'),
('a18034b4e10ef1d2c21560abf4544dcb628228258a408ed76e87a39db8e73bb118ded8adfa9518ad', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-19 22:41:28', '2021-09-19 22:41:28', '2022-09-19 22:41:28'),
('a1d92f2e9b99497aa93a81917066fd5ad61fc716d1b453fbff755055745847a89ca67afe32901670', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 11:50:40', '2021-09-17 11:50:40', '2022-09-17 11:50:40'),
('a2da8a0f53bcc78f7ac4ec539e85348504d84bc3a0f762df5206d724127cb2a54393aabb89684b77', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 16:16:31', '2021-09-12 16:16:31', '2022-09-12 16:16:31'),
('a308b218d41a7782cf24327fee415b07060c40245c14a5fc107fcf17f19342a9605fde50732963cb', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-11 22:34:27', '2021-09-11 22:34:27', '2022-09-11 22:34:27'),
('a3360d3e5d092aa497d5a26b55c86573eda9523bdfb6960bf72525aefbc4403d8d2418b1ec491605', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 13:36:27', '2021-09-12 13:36:27', '2022-09-12 13:36:27'),
('a5d742a6802e791578d026acd886809f6d21919a8c52ffac1148609cd736f4f54b932640c53bad8c', 2, 1, 'user Password Grand Client', '[]', 0, '2021-09-07 21:01:18', '2021-09-07 21:01:18', '2022-09-07 21:01:18'),
('a6c342abb65574a624c38181086e0a61f7a39eeba50b5077341b2951e383a6fbe46973020fc43d27', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 10:08:19', '2021-09-13 10:08:19', '2022-09-13 10:08:19'),
('aa050e3a508f0532f2c9cdeb77635e39c6655d928700d6420f8854e91ad93df4ba189f1f05f750ea', 18, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 13:36:56', '2021-09-20 13:36:56', '2022-09-20 13:36:56'),
('ad0e830e6e00d6c4b9444dd80159b975e46e08c67841f83d14a8865712911aaed44fd4057018e845', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 10:46:10', '2021-09-13 10:46:10', '2022-09-13 10:46:10'),
('ad46bbed45934ec315f64e0240ed66db3d5aff7872c03f36de56e37dedfac30c52af6c8c7dca85aa', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 21:04:52', '2021-09-10 21:04:52', '2022-09-10 21:04:52'),
('ae5939dfbe3df79373ba7ad17267648c7ca379e0023ca708ccdd52d6afa415e6c2b2a103cca48cc2', 15, 1, 'user Password Grand Client', '[]', 0, '2021-09-18 18:08:55', '2021-09-18 18:08:55', '2022-09-18 18:08:55'),
('af76a28257b952dbdbe8e7a8523d633e0f37930c8d991bd3320730779d0a3ae35f895155f4720ca7', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 11:49:49', '2021-09-17 11:49:49', '2022-09-17 11:49:49'),
('af7c347a2a68735a88f782e81bec56b94907d45b1a431d3e6c68344e0465b4db3b0cbb595da66c7b', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-14 20:39:03', '2021-09-14 20:39:03', '2022-09-14 20:39:03'),
('b277497ec1a79fd83e03abce5dd99afe8e587eb8087ad7c31bc7015240f490413bc0b21268c95b2b', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 02:28:23', '2021-09-10 02:28:23', '2022-09-10 02:28:23'),
('b552dcec77def38b0960a416fdccfd4eb71fc41b0fee50d9daf0db3c253337412a7ee7ef2b85c26a', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 00:55:46', '2021-09-10 00:55:46', '2022-09-10 00:55:46'),
('b70d946569926c0be01d8b1bb8c332aa26b8bbbc9801e638fd24b3ae0f1abbaee6fe3190dbdb8252', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-11 00:32:09', '2021-09-11 00:32:09', '2022-09-11 00:32:09'),
('b722ac92e44ca2736cebd55ab0d351f52b172218647ba1ef832966cfab1f363292353724cea91acf', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 21:27:58', '2021-09-10 21:27:58', '2022-09-10 21:27:58'),
('b7b0277a87b783c795ad7c1e14f4513a2e06a6a34ca8e15cef9ae46a1eacebc4c71c608a363d0565', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 15:24:11', '2021-09-10 15:24:11', '2022-09-10 15:24:11'),
('b7d476c7ca6d3672d6fc595cd5004577fc75a773c5a3bd6a9059e33d77660e88fc89da2617fda055', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-11 00:26:25', '2021-09-11 00:26:25', '2022-09-11 00:26:25'),
('b9ba8f898821b495abe3baf68aab924f242c53e28643cad5d8345aa185531ba5d566b2762de3cbc3', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 13:54:18', '2021-09-20 13:54:18', '2022-09-20 13:54:18'),
('bafe902ae331b3b297902acf7f3566731477f157ef5fa968abbca1f8829697f0abc97941efb63a9d', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 15:04:11', '2021-09-20 15:04:11', '2022-09-20 15:04:11'),
('bb4e2498913759b6a89149e3b06a618103cee9528d4dd6f4e6aaeeaff44988042b575faef83ed295', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 00:57:53', '2021-09-10 00:57:53', '2022-09-10 00:57:53'),
('bbb13f33be1d5f6da0e78ad4109c94891dcdf31bbf1ec31c57901d897793b163e011fd8b9e640dda', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 18:05:47', '2021-09-17 18:05:47', '2022-09-17 18:05:47'),
('bdeb58519c9d5edfc0e7abd18c09c7db547905de7bae3510cbab7648967ea366130a827823928747', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 00:05:52', '2021-09-10 00:05:52', '2022-09-10 00:05:52'),
('bf2283435b829eb133fbce4c0ff423c7d45970f9d92f07e40d908cc6ad824718be72ee8443c63aa5', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-16 11:54:10', '2021-09-16 11:54:10', '2022-09-16 11:54:10'),
('c4380ce1310c35eb66f96c6d295769f5e980b91d1943f6e6a74a2ffbb21c8d360d86e17df15d7c11', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 13:29:14', '2021-09-12 13:29:14', '2022-09-12 13:29:14'),
('c47b0b0dac99b0377a63fd44d7e4f5403995af9c5c9a39b92bc2699c2755755471ec19748da8dc90', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-11 00:52:25', '2021-09-11 00:52:25', '2022-09-11 00:52:25'),
('c494bc04c5804b932e79240021c1c4052d25ed8faec7d3c4a61bfdb4b1da1ba1837bfb77d1b58e1a', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 14:12:29', '2021-09-12 14:12:29', '2022-09-12 14:12:29'),
('c4ff9d9fa0b576b674abcee088a1c61f9cb256ab4943c153b18c917e5857ddb8cc62b3d67b05ff49', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 12:40:57', '2021-09-13 12:40:57', '2022-09-13 12:40:57'),
('c5223c6ac491c4103eaab124c46204742f5419ec09ade1f5ed68ba31cd18ac90369121c85bea1dc8', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 17:55:22', '2021-09-12 17:55:22', '2022-09-12 17:55:22'),
('c575eb562e9ac37d65c40c3a61e770e9237778d2f9e460592541c3939d69c411d6ac7a8a5c5f5cee', 35, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:51:47', '2021-09-21 13:51:47', '2022-09-21 13:51:47'),
('c5c4c4d5dd673fa973f61c817277a38bc797b395743dd2cf343225891f50be3d3fe496fea92f75fe', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-15 22:22:02', '2021-09-15 22:22:02', '2022-09-15 22:22:02'),
('c600a6cf182883d89cc7c1c9658828cbe1ba3b80ab1965c18dfcfc85f635c95274abe31fb741b317', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-19 09:40:23', '2021-09-19 09:40:23', '2022-09-19 09:40:23'),
('c69813d06380546f1ff3f4601f940b1d9f845492ade251ee23bdf951f733c09104921e5b1d33cf1f', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 01:40:53', '2021-09-10 01:40:53', '2022-09-10 01:40:53'),
('c6ace551d1ef1d69c5e6877229512d406c8911669d3b98b05541839cfa2e7c29753d9655b7094eb4', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-15 21:30:59', '2021-09-15 21:30:59', '2022-09-15 21:30:59'),
('c6f9d4875f2bc3452b97eb0b3991f8de32e7179a2ffa2757d7ca0c65473fb21d7067c7c13bb70d4f', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 01:41:43', '2021-09-10 01:41:43', '2022-09-10 01:41:43'),
('cb35dd2b2299856ee07147cb2c4009fee956e6c7e8b99787e92f5faefd8b4bc803f566c45292bee4', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 13:30:21', '2021-09-17 13:30:21', '2022-09-17 13:30:21'),
('ce5cf18ba811e84418f102eb74fd4bdcdf786671bbb2f8adec2e14e0cd7273551ebc200c0c767653', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-09 22:59:12', '2021-09-09 22:59:12', '2022-09-09 22:59:12'),
('cec95437e3d84dad5c600686b2a0b3390f79229defa82bf8a95b52b4e8468a3fcf45008cac459222', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 17:21:24', '2021-09-17 17:21:24', '2022-09-17 17:21:24'),
('cef9d5dda3fa9bc190999612809ffd57862cbc6cbb90128a7fcf716c48ccb19ca3aee259acefc84c', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 00:08:37', '2021-09-10 00:08:37', '2022-09-10 00:08:37'),
('cfaba4f13098eb72c535e1c6f00ff756266f6a67255342f44942ec6b9b72dc5b806c1b95b53a4fcd', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-09 22:22:42', '2021-09-09 22:22:42', '2022-09-09 22:22:42'),
('d3eb900ef5a8b68f7a57989822eaef894e84353d059f2f485f82bee686e5de1637aaa71d45aceb8c', 20, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 11:34:02', '2021-09-21 11:34:02', '2022-09-21 11:34:02'),
('d442f67465948d95da4bd65d39dcff97e995ca099ade676f833bf291403db9194d70f28acd35e721', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 14:51:33', '2021-09-10 14:51:33', '2022-09-10 14:51:33'),
('d451bac963b6875c59c89fe87604524da9e037452308ecee0cfbbbb2341b088c019961b05aea1e59', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 19:19:36', '2021-09-10 19:19:36', '2022-09-10 19:19:36'),
('d4a4a859a6f160adb2fcc4ba06c573f4dffe1c886fb85e686a39d9618048abbb95f3f2544511a092', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 23:41:46', '2021-09-10 23:41:46', '2022-09-10 23:41:46'),
('d56ca2d8c3751e74d5ff49407096ed00866ca3a59fdf256efc3d49e3b868c6a6a052893c0f4491d9', 23, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:20:49', '2021-09-21 13:20:49', '2022-09-21 13:20:49'),
('d752eac68c7321bc757e1b2808e648e001aff11f6cf64ee58b52984d3e4b1ff36a77a7684831ca7c', 10, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 20:21:56', '2021-09-10 20:21:56', '2022-09-10 20:21:56'),
('d898eaf18fd371e9ab99fc64d24f0a1e8907d3fdca51efefa50608c769bbe3e31260a52c73067a2b', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 17:48:58', '2021-09-17 17:48:58', '2022-09-17 17:48:58'),
('d941965f919742b31c64a5d3ac4a1ea3eec569b9ff33101611e6d4b5e8d48644f12d37a9da1c5c68', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 23:57:09', '2021-09-20 23:57:09', '2022-09-20 23:57:09'),
('da97a0c3bb23f5d290b60fd1b10f5df8eb011e2df2920256516f68d2c27faf25f9cb9d8561198d88', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 21:09:17', '2021-09-12 21:09:17', '2022-09-12 21:09:17'),
('dd28f47c1fb69f41b7d7bbc00079802c50b4877be2e54ae9f9e6b66a900ae712ef840194add55105', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-11 22:29:34', '2021-09-11 22:29:34', '2022-09-11 22:29:34'),
('dda8d0508c48c534445f30bb82108346839039d3540f019b220d54e9ac7b0ade6385a0ce28b1ec1b', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 02:07:33', '2021-09-10 02:07:33', '2022-09-10 02:07:33'),
('de1394407e9e3ead3a7bdaab2774f15d3bd6bc0dbaff8daafd97cf1bae98ad9f436cd89a61a3d175', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-18 18:59:58', '2021-09-18 18:59:58', '2022-09-18 18:59:58'),
('de37206aa00c00eeabdf8884fffe9ba60a1f9dec02c4f6e062aa4fa2c19daae8267b351778ab8d81', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 19:24:24', '2021-09-12 19:24:24', '2022-09-12 19:24:24'),
('ded256e3594349c8a3cdb7e6e204aaaa1e52a6d3d32b1ca2878effdbf25517f729e0f894cb385b79', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-16 12:39:46', '2021-09-16 12:39:46', '2022-09-16 12:39:46'),
('e177d5ef8d1fbdbaab1d77a0ddc0310b7cff06e8c4188a6cb7e39beafb4fe8e9b5bad4ab1dc2186e', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 01:07:14', '2021-09-20 01:07:14', '2022-09-20 01:07:14'),
('e2abf128cb3549dcab5357ae790f7af45efeb8ea465e4a1aa7b9d0e68a5d4350d67507f8a12263f9', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 12:45:48', '2021-09-13 12:45:48', '2022-09-13 12:45:48'),
('e46c91042467bf0bf8d17c7158da42009e3d04fcda8a7fda4cd0e2a990a0f8365514acf6a12fe634', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-14 20:31:34', '2021-09-14 20:31:34', '2022-09-14 20:31:34'),
('e567c7c593b124de9a83c7df89d8660643e418155208e0fb196d1f4e4657e00808274f17d56a71ba', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 14:48:17', '2021-09-10 14:48:17', '2022-09-10 14:48:17'),
('e61d7d39b706755e684cdccde05c33dd1d1b72b0b0d490a84c2ce832ef05d659029edb9207ee5e92', 37, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 14:01:30', '2021-09-21 14:01:30', '2022-09-21 14:01:30'),
('e6afe015edc1216a53c29ae32c741c0d9ffe9e1418619c9f3b8dd210811e22e6f71736d61a026057', 10, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 11:39:13', '2021-09-13 11:39:13', '2022-09-13 11:39:13'),
('e767a8dbf6406eb0d2502b10850c52c4d86637bc3214bc0ff8b22327e92515f4b52ed62f695aa8a8', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 23:40:51', '2021-09-10 23:40:51', '2022-09-10 23:40:51'),
('e7a059a0740f7394b282f13ab3488ccf5948f670894692fdd726afd2bfdeb0573206a05297270a88', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-15 12:19:59', '2021-09-15 12:19:59', '2022-09-15 12:19:59'),
('e9a6a18949a7c4fa6f3ee76c7e4698ec63425729211230512a6fdff322f271d2df69d1b09d7211a6', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-15 12:20:23', '2021-09-15 12:20:23', '2022-09-15 12:20:23'),
('e9bb1450bbda29ee9e521bc6f25ad4283b12cbb591381732d3a079cb90d138d2371192678e7acbad', 15, 1, 'user Password Grand Client', '[]', 0, '2021-09-18 18:08:15', '2021-09-18 18:08:15', '2022-09-18 18:08:15'),
('e9d23d2cffb51d60078ae9c69b5ed20432a409792edc4401d395947de1125ddcdfe28ff14c40111d', 29, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:41:09', '2021-09-21 13:41:09', '2022-09-21 13:41:09'),
('ea0edb9fded55afe313af78b131e14ca4bf29fdefacbe61e02e130f27bbe5562fc218dd63eb63c5b', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-12 14:14:26', '2021-09-12 14:14:26', '2022-09-12 14:14:26'),
('eb7f2d9d2925f7efaefafc44068f2fdefd837fed6e59f10269a7fdbd1b4f2ac28727c30bef7d7096', 16, 1, 'user Password Grand Client', '[]', 0, '2021-09-20 00:58:05', '2021-09-20 00:58:05', '2022-09-20 00:58:05'),
('ec3ed46f1442762eb49e310a06ae541f58a271d05208fc50a78929d7178d4a11b1a6c63981b2bc3e', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 11:35:32', '2021-09-13 11:35:32', '2022-09-13 11:35:32'),
('ec5c4b10758f7e349f9956acc749c491520ce18b120cb97cb3825d1986c096a7c7e4bac7de146943', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 14:46:47', '2021-09-10 14:46:47', '2022-09-10 14:46:47'),
('ecb9ab107fba37fbec4820e2590a413bb71aa356f46a61b99caf3e486a275d21896be092053fe7de', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-11 00:23:51', '2021-09-11 00:23:51', '2022-09-11 00:23:51'),
('ecf8429150c95432a108b67bf8c52a8b5a4a343f055bb662676a9fce778e328f6a318015b7453fe3', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 22:05:48', '2021-09-10 22:05:48', '2022-09-10 22:05:48'),
('eda8f2125da1ebe20ab1760aad11e698d3b54ad21d7a4913b5a47a6ba5ffb64cf49c268e32fa382c', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 02:01:41', '2021-09-10 02:01:41', '2022-09-10 02:01:41'),
('ee60d906ffffad84fda22af024f7fc413e897024637926fca38f2a83209541246a255978ff67d468', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 01:09:36', '2021-09-10 01:09:36', '2022-09-10 01:09:36'),
('ef446002475f35fc9956160923b9efd285d7f2ae64402304e0ea6ad59401382997bb782d35114042', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 17:22:31', '2021-09-17 17:22:31', '2022-09-17 17:22:31'),
('f06cf54b1a8e0318061fadf9d93342ebbcab3377116d9d6b6319f14ef53049a20dcf1f9868f1a2f6', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 00:45:45', '2021-09-10 00:45:45', '2022-09-10 00:45:45'),
('f0d33bfd03f75c50f0a1c83fdd8ad1b4947dca451f3a601c3eeaad902442446d3de10553af25e8aa', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 00:39:27', '2021-09-10 00:39:27', '2022-09-10 00:39:27'),
('f2173d8ab602fad76fa578f7e870da057138e42ff4e507c44a32d67670f454cc1f0b37ab760f6278', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 14:54:50', '2021-09-10 14:54:50', '2022-09-10 14:54:50'),
('f2561b8c829dc10a82c553eede12761237b5cb5f9572d9a1fe0e026bd334666e8e06fcca3f90a5f7', 3, 1, 'user Password Grand Client', '[]', 0, '2021-09-07 21:03:18', '2021-09-07 21:03:18', '2022-09-07 21:03:18'),
('f33e146523cf5633f3d00645264fa158b0321ca73dcf609830a8f895a32696de3b07182cef6441b3', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 21:26:31', '2021-09-10 21:26:31', '2022-09-10 21:26:31'),
('f3702994d020bc91139b6291e50747f0d31e7bc0ab270282b7fbe4cfae64f45f0e16c700cfbb92c7', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-13 01:04:04', '2021-09-13 01:04:04', '2022-09-13 01:04:04'),
('f37c542ddbb9da3546a964e70510e339ee71393339a6d312c9edb900b409a95bb69b31faf2bbd063', 27, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 13:35:58', '2021-09-21 13:35:58', '2022-09-21 13:35:58'),
('f3db25c0d445c81a89d43c379354114d3f486af01e7cee647909d303f1a9272f04fb162eaf21dd5d', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-17 16:36:24', '2021-09-17 16:36:24', '2022-09-17 16:36:24'),
('f41b2b8efafde913e5c06a65427c04e23392e4f0d88f5f2e2ab68006249269804ebf6cb61cb4394d', 8, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 00:26:32', '2021-09-10 00:26:32', '2022-09-10 00:26:32'),
('f4c8ac69c568bf1394e0ce7c085abc78a355f696f58f56c2ee0aad7c65b867460687079c9f34c5f1', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 20:10:59', '2021-09-10 20:10:59', '2022-09-10 20:10:59'),
('f7f5d67ccdc8e579445ce2dff069171d337b340c123b238837328edbbd29a507b13fc8dd495c992b', 9, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 14:36:44', '2021-09-10 14:36:44', '2022-09-10 14:36:44'),
('f90d49ae492729d4cd1d9836af0981c66fa6de01c13ee6f87db34d7dfff5f74fda8ebbe93355f79f', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-21 19:57:32', '2021-09-21 19:57:32', '2022-09-21 19:57:32'),
('fa77c2fa8e5e334a454a4b9b6b1ebc7a4d72c6e278601738e875d876bcf8f6f5fc2208717a5528d6', 10, 1, 'user Password Grand Client', '[]', 0, '2021-09-10 20:25:42', '2021-09-10 20:25:42', '2022-09-10 20:25:42'),
('ff2726952c6b9666ce3c4651f3dc1b00b710a9b8cba12d1bd0809712e5b5aa2469c1540e44f26906', 13, 1, 'user Password Grand Client', '[]', 0, '2021-09-18 18:58:45', '2021-09-18 18:58:45', '2022-09-18 18:58:45');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'fcmP6mw8yDwkVkWoC6Tg1UFw3qHZFe0Ivw0updgw', NULL, 'http://localhost', 1, 0, 0, '2021-09-07 20:57:14', '2021-09-07 20:57:14'),
(2, NULL, 'Laravel Password Grant Client', 'ik069UdBTqi5ZqkRkXZ17pen4gUGCNJSwvpC9Z8U', 'users', 'http://localhost', 0, 1, 0, '2021-09-07 20:57:14', '2021-09-07 20:57:14');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-09-07 20:57:14', '2021-09-07 20:57:14');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Structure de la table `revenues`
--

CREATE TABLE `revenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `solde` int(10) UNSIGNED NOT NULL,
  `categorie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `revenues`
--

INSERT INTO `revenues` (`id`, `solde`, `categorie_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 421000, 1, 9, '2021-09-10 20:04:47', '2021-09-10 20:04:47'),
(4, 145, 4, 9, '2021-09-15 12:16:14', '2021-09-15 12:16:14'),
(5, 145, 4, 9, '2021-09-15 12:16:15', '2021-09-15 12:16:15'),
(6, 2000, 5, 9, '2021-09-15 12:17:03', '2021-09-15 12:17:03'),
(7, 5000, 4, 13, '2021-09-15 12:20:35', '2021-09-15 12:20:35'),
(9, 78, 3, 9, '2021-09-16 15:26:26', '2021-09-16 15:26:26'),
(10, 789, 4, 13, '2021-09-20 13:09:20', '2021-09-20 13:09:20'),
(11, 789, 4, 13, '2021-09-20 13:12:13', '2021-09-20 13:12:13'),
(12, 8999, 5, 13, '2021-09-20 13:19:33', '2021-09-20 13:19:33'),
(13, 45, 1, 9, '2021-09-20 16:02:28', '2021-09-20 16:02:28'),
(24, 282006, 5, 5, '2021-09-21 19:54:45', '2021-09-21 19:54:45'),
(25, 420961, 3, 1, '2021-09-21 19:54:45', '2021-09-21 19:54:45'),
(26, 476466, 1, 1, '2021-09-21 19:54:45', '2021-09-21 19:54:45'),
(27, 499996, 5, 2, '2021-09-21 19:54:45', '2021-09-21 19:54:45'),
(28, 394561, 1, 2, '2021-09-21 19:54:45', '2021-09-21 19:54:45');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateNaissance` date NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `dateNaissance`, `telephone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kebe', 'Khady', '2000-05-12', '78 485 96 32', 'kabe@gmail.com', NULL, '$2y$10$XocMteP0b/EiLhLQ8WtHeuxljU6K.bphW2vX1xxPQGUPvuxo3JxxW', NULL, '2021-09-07 21:00:56', '2021-09-07 21:00:56'),
(2, 'Kane', 'nafi', '2000-05-12', '78 485 96 32', 'Kane@gmail.com', NULL, '$2y$10$2SqTZP7BqPEmxv2zwH.w3eTwklaEtf8YhKtz1FdXLG84Mtfc5R60S', NULL, '2021-09-07 21:01:18', '2021-09-07 21:01:18'),
(4, 'ba', 'oumy', '2021-09-09', '784 7142 86', 'kl@g.com', NULL, '$2y$10$0rukoyOSLDz1BWZ0OCecCe1Om1XUsqraqW2eNjdjxky35VLQ9NIaO', NULL, '2021-09-08 13:39:50', '2021-09-08 13:39:50'),
(5, 'wada', 'awa', '2021-09-10', '795 4125', 'awa@gmail.com', NULL, '$2y$10$QnotCTB8GtOsx1izeEu9seJjnAoVazPpK28dZn5oYceIxPkv0.P06', NULL, '2021-09-08 13:46:17', '2021-09-08 13:46:17'),
(6, 'diop', 'ourou', '2021-08-31', '78 4714286', 'diop@gmail.com', NULL, '$2y$10$w7Sz4L1mdHdMr9CLZfNrCeeRlYOzr1AHUDERV9xFsrDXnUTK/3Sny', NULL, '2021-09-09 22:19:47', '2021-09-09 22:19:47'),
(8, 'mere', 'fall', '2021-09-03', '78 95 66 1', 'fall@gmail.com', NULL, '$2y$10$sQBqIyUGo241xzEl.JhDyeqx7BSae0.AknSHJ6ft5AUHyAZyHuZDG', NULL, '2021-09-09 22:22:42', '2021-09-09 22:22:42'),
(9, 'kebe', 'gane', '2021-09-01', '78 4714286', 'gane@gmail.com', NULL, '$2y$10$WJ9zRPZZPVMrjazj7WrRuusKpSj9f/n4HWg.S7GFzN1EnZsmC2RAW', NULL, '2021-09-10 02:06:00', '2021-09-10 02:06:00'),
(10, 'kebe', 'ngoné', '2021-09-03', '78 95 466 1', 'ngoné@gmail.com', NULL, '$2y$10$AZRrnYS6OXjKugXd3ghtZukov7ncDX6Yh8xydsfWT1mcySvnT6spW', NULL, '2021-09-10 20:21:56', '2021-09-10 20:21:56'),
(11, 'ljgdfp', 'lngmro', '2021-09-01', '78 95 66 1', 'm@gamil', NULL, '$2y$10$Wqc1EEDZkgXzl1eJfW6KS.L/OOU2PGwFx0xCia5yjKOXu3PxGUk1m', NULL, '2021-09-10 21:56:35', '2021-09-10 21:56:35'),
(12, 'kebe', 'alia', '2021-09-01', '47 85 96 63', 'alia@gmail.com', NULL, '$2y$10$s1E/3DAXhrmrGnsh0Z5/juFDbNj0VzW5c77XEw.TJuU5JIh130UMm', NULL, '2021-09-13 12:25:17', '2021-09-13 12:25:17'),
(13, 'allia', 'kebe', '2021-09-02', '78 4714286', 'allia@gmail.com', NULL, '$2y$10$q9FaUTPEJ.9/y6UDGAwPuO3xHdobGluS0/74T2ikW5vMGOKDJky5u', NULL, '2021-09-15 12:19:59', '2021-09-15 12:19:59'),
(14, 'ka', 'bb fatima', '2021-09-01', '78 4714286', 'ka@gmail.com', NULL, '$2y$10$d3oTSNBXGjyoYvoMeYllRe9o6AmFC.uZaKKZkJen49DlbcBNa9vwq', NULL, '2021-09-17 13:43:12', '2021-09-17 13:43:12'),
(15, 'kebe', 'ndeyeDiakhou', '2021-09-03', '78 4714286', 'ndeye@gmail.com', NULL, '$2y$10$cTMGgUXS5Zh9XiUPRSp0FuwsOAvIAKQzcsgOfOuwUaJ.1JFotjy1y', NULL, '2021-09-18 18:08:15', '2021-09-18 18:08:15'),
(16, 'ba', 'binta', '2021-09-02', '78 4714286', 'ba@gmail.com', NULL, '$2y$10$hXm68vz/aOae1wfMUUPFHenC/bfmGF.CG3p6BgAxoGxmAcwHVzNT.', NULL, '2021-09-20 00:58:05', '2021-09-20 00:58:05'),
(17, 'kane', 'ibou', '2021-09-01', '78 4714286', 'eer@gmail.com', NULL, '$2y$10$wyzB0CKl1BI92PUsT2iXjetqgY9X14Htbb2A64SCHtC9gn5ckNQqC', NULL, '2021-09-20 01:32:45', '2021-09-20 01:32:45'),
(19, 'faye', 'assane', '2021-09-24', '784 7142 86', 'faye@gmail', NULL, '$2y$10$Dw0lhvuoRS7nVXm43YfVD.k9a3h3Bz.mILg0rFt/mIwi0gZLMqxkq', NULL, '2021-09-20 14:55:41', '2021-09-20 14:55:41'),
(20, 'gaye', 'oumy', '2021-09-02', '784 7142 86', 'gaye@gmail.com', NULL, '$2y$10$Ai4xDwNS25BVXhBJlUHsIuHxZN3k7RO6fvUZSmPhTw2XXAqM37vCi', NULL, '2021-09-21 11:34:02', '2021-09-21 11:34:02'),
(29, 'k,hjn', 'mlk,', '2021-09-02', '78 4714286', 'm@m.com', NULL, '$2y$10$GgduLsJHvWWY15cXAQreVuG161w47hHALyFsOPro20KA.gB5Xe2OS', NULL, '2021-09-21 13:40:51', '2021-09-21 13:40:51'),
(37, 'rrroro', 'lrelee', '2021-09-02', '78 4714286', 's@s.com', NULL, '$2y$10$bBuS.D1gV0dheebK1zYDVeGD2dfdm.ccvXkcPb/bfkjHJllowyh42', NULL, '2021-09-21 14:01:09', '2021-09-21 14:01:09'),
(44, 'Bailey', 'Casimir', '1991-06-20', '+1.681.923.5717', 'sonya21@gmail.com', NULL, '$2y$10$.CoveS.a9UpNNUhrTyByYOnXbzS9YRpTKur90iaadLtFC/V/rwmYi', 'QRicJgTyZZ', '2021-09-21 19:40:47', '2021-09-21 19:40:47'),
(45, 'Wiza', 'Lavina', '1980-09-14', '+1-804-516-8819', 'stanton95@kerluke.com', NULL, '$2y$10$1B5Qpgd/eDlRfmpD4l.GkeCunFPHbcyghOb0reRoxcZEq5Kjijw8i', '5IM67E1PrE', '2021-09-21 19:40:47', '2021-09-21 19:40:47'),
(46, 'Fay', 'Elyse', '1972-11-26', '+1 (385) 267-4590', 'kiehn.margot@stamm.info', NULL, '$2y$10$jcY8LzqMhIySKShOK/jVMuJg9UHMgTTizqUCzCUHTW2t5HsIetnGm', 'uZqlspDvbn', '2021-09-21 19:40:47', '2021-09-21 19:40:47'),
(47, 'Wuckert', 'Max', '1977-08-12', '+1-628-990-7430', 'ayana.swaniawski@hotmail.com', NULL, '$2y$10$GIj2sToxIBzK7eWlzVxEZuwwDCIgNVhgXzQhdt7nYU8NEgCLiEb2i', '8raq7TRbSG', '2021-09-21 19:40:47', '2021-09-21 19:40:47'),
(48, 'O\'Reilly', 'Maryse', '1972-09-29', '470-335-4667', 'ulubowitz@hotmail.com', NULL, '$2y$10$/4oTI/mc9u/w0DOrFujXUeRB8KOw9yBQtWw5hA1yk27oLQ/GA4XPS', 'AeMOdPHJDz', '2021-09-21 19:42:40', '2021-09-21 19:42:40'),
(49, 'Balistreri', 'Lionel', '1984-09-11', '1-980-596-3359', 'vernie08@hotmail.com', NULL, '$2y$10$FYUIIGcvx5YvtUyOwYT6L.2DeBxm.XDkG.8tP4cXCE.QFuNl.l6oi', 'Gzonu0Ox33', '2021-09-21 19:42:40', '2021-09-21 19:42:40'),
(50, 'Abernathy', 'Enid', '2008-12-03', '+1-838-431-0408', 'wstracke@schinner.com', NULL, '$2y$10$wRhGJ18yDwzObfWzAC01leXl98hG97TYm8eyfynSndrlsqbbjIUo6', 'j9pcxwbk3J', '2021-09-21 19:42:40', '2021-09-21 19:42:40'),
(51, 'Morar', 'Sharon', '2001-11-07', '+1-619-620-1360', 'elvera99@gmail.com', NULL, '$2y$10$1KrXjK3Gbc84QgQB0vM9JOrDg/xFr6elbFTGZYruXQHB83ABQLCV.', 'ZX0sm99GMi', '2021-09-21 19:42:41', '2021-09-21 19:42:41'),
(52, 'Borer', 'Janessa', '1991-06-01', '+1.702.723.4752', 'elza58@dietrich.com', NULL, '$2y$10$0VYP2DNjah5NGlNmX76eyuhHKFCe0xPQoYNSyxQdRO6T1g7r7fNfe', 'pGsVnrQq6T', '2021-09-21 19:42:41', '2021-09-21 19:42:41'),
(53, 'Kiehn', 'Allison', '1998-06-25', '1-531-553-0605', 'magnus.mayert@hotmail.com', NULL, '$2y$10$nD2HidFG3rM7W6I0Nr7F9epfz93cdXChbJWvB/s6U7Vl7JtSuVYk.', 'daxfPbL47E', '2021-09-21 19:49:41', '2021-09-21 19:49:41'),
(54, 'Kshlerin', 'Jerald', '2014-09-24', '757.514.0828', 'andrew.wuckert@schimmel.com', NULL, '$2y$10$GzdE7DGIXyItQnlv4dVcl.ZvLJNwg.X81VWPMwdXgZQ4AlRxeicH6', 'SINfdVtXFM', '2021-09-21 19:49:41', '2021-09-21 19:49:41'),
(55, 'Beer', 'Titus', '2014-07-09', '(904) 276-3425', 'xkris@gmail.com', NULL, '$2y$10$5kk0T/J5xrnedzh56C3DpOE./507eavvFUDkTumPta3uzQ3lZr1Jq', 'xMREWvIymR', '2021-09-21 19:49:41', '2021-09-21 19:49:41'),
(56, 'Marquardt', 'Earlene', '1993-07-04', '+1-228-832-1518', 'weimann.joana@gmail.com', NULL, '$2y$10$XbRdplYJvFcziDx.UxkwHuhJio/RWqHplay3gcHZWpfSa7DU6ID0G', 'SnRPsswcFb', '2021-09-21 19:49:41', '2021-09-21 19:49:41'),
(57, 'Wunsch', 'Luis', '1983-08-05', '+1.346.576.1167', 'dratke@hotmail.com', NULL, '$2y$10$6t4zlPRX9PkEy.4TauUYFOeMwZ0oh.UN9CBmg53JbpRDr3uD7dQ.K', 'PIoXxpH3yL', '2021-09-21 19:49:42', '2021-09-21 19:49:42'),
(58, 'Aufderhar', 'Joyce', '2001-07-29', '934.925.4893', 'khermann@jones.com', NULL, '$2y$10$.nTt4IMVHXtm1PHrKlM32eWLPIeqyFg/NKniDCdPQBtqiQ44r497K', 'LO8zcKa65Y', '2021-09-21 19:51:25', '2021-09-21 19:51:25'),
(59, 'Aufderhar', 'Laurine', '2006-10-12', '(361) 230-9296', 'terry.reagan@oberbrunner.com', NULL, '$2y$10$9OZTyKkntnFBtADA2dcW2OLJILqedEmT8gwdr0SiRk6R6fn2sV5xi', 'YrgztL889W', '2021-09-21 19:51:25', '2021-09-21 19:51:25'),
(60, 'Kassulke', 'Audra', '1991-04-29', '+1-828-759-8405', 'cassin.claud@pfannerstill.com', NULL, '$2y$10$IX9EGkyUnjZ/ZpcNtsGMOuz0dr045qQKQ/45qdwgO7ckWJDduhBwS', 'LZ25pQd8xg', '2021-09-21 19:51:25', '2021-09-21 19:51:25'),
(61, 'Mraz', 'Dianna', '2001-06-27', '731-956-4444', 'ahessel@collier.com', NULL, '$2y$10$iTGsxhiVlj/TqKBF.9WIdObufAubzgGXfvaWmHkUmA.q88BZzIyIW', 'JQmOmrzLJ3', '2021-09-21 19:51:25', '2021-09-21 19:51:25'),
(62, 'Waters', 'Amos', '1986-07-20', '984.512.9277', 'kennedi.anderson@yahoo.com', NULL, '$2y$10$kcesb5RUkiADICZxPw9DXuDWUjsPNE4tqouGSR5KqgWTXkL.YLIXi', 'hFJeWRByYA', '2021-09-21 19:51:25', '2021-09-21 19:51:25'),
(63, 'Turcotte', 'Kiara', '1983-11-03', '520-935-6294', 'kris.santos@yahoo.com', NULL, '$2y$10$.6HK/NInotehaxirlIA44uZV3oG1F9f20LdWM4vSpCojdCw8cZsu2', 'LNkQZeVMf1', '2021-09-21 19:54:45', '2021-09-21 19:54:45'),
(64, 'Schaefer', 'Clare', '2013-12-29', '+1-325-935-6257', 'rubie98@yahoo.com', NULL, '$2y$10$QPFLwwLgLFADYxEtTI6UUubT9qx/lzsB43T3sF/hH7piZU/StYW8K', 'ICwJzRiiGp', '2021-09-21 19:54:45', '2021-09-21 19:54:45'),
(65, 'Schuppe', 'Wilber', '2006-02-08', '+19417541180', 'nratke@prosacco.com', NULL, '$2y$10$XhxK7zvdvbUKyFZrdTP0nOsB5jCq.6/4n2hZbGOTyHdWyyJbt8BZy', 'BfcGFq0Eez', '2021-09-21 19:54:45', '2021-09-21 19:54:45'),
(66, 'Schmidt', 'Omari', '1978-03-27', '1-276-437-1244', 'boyer.maymie@grant.com', NULL, '$2y$10$K10OvAJ59hNLMqF9zH/oJeWpCtvG1SjShQvf9qgmsTDPwR1lt2Kra', '8VL6BiKopA', '2021-09-21 19:54:45', '2021-09-21 19:54:45'),
(67, 'Turner', 'Oren', '2008-03-25', '585.404.5946', 'madyson.bednar@feeney.com', NULL, '$2y$10$g8addnWCUzRjz/ntI3sGUeTwFpKy2TNnxUvf19Zgga2U0Qi0Tz4XO', 'T53hAbCPsE', '2021-09-21 19:54:45', '2021-09-21 19:54:45');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appartenirs`
--
ALTER TABLE `appartenirs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appartenirs_categorie2_id_foreign` (`categorie2_id`),
  ADD KEY `appartenirs_categorie1_id_foreign` (`categorie1_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `depenses`
--
ALTER TABLE `depenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `depenses_categorie_id_foreign` (`categorie_id`),
  ADD KEY `depenses_user_id_foreign` (`user_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `revenues`
--
ALTER TABLE `revenues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revenues_categorie_id_foreign` (`categorie_id`),
  ADD KEY `revenues_user_id_foreign` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appartenirs`
--
ALTER TABLE `appartenirs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `depenses`
--
ALTER TABLE `depenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `revenues`
--
ALTER TABLE `revenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartenirs`
--
ALTER TABLE `appartenirs`
  ADD CONSTRAINT `appartenirs_categorie1_id_foreign` FOREIGN KEY (`categorie1_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `appartenirs_categorie2_id_foreign` FOREIGN KEY (`categorie2_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `depenses`
--
ALTER TABLE `depenses`
  ADD CONSTRAINT `depenses_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `depenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `revenues`
--
ALTER TABLE `revenues`
  ADD CONSTRAINT `revenues_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `revenues_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
