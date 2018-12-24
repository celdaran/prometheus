-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24-0ubuntu0.16.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table sandbox.links
DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sandbox.links: ~6 rows (approximately)
DELETE FROM `links`;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` (`id`, `title`, `url`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Harum quo', 'http://www.bauch.org/blanditiis-quis-sit-nihil-accusantium-saepe-voluptatem-et-est', 'Voluptatibus provident autem dignissimos ea et nihil. Quisquam est quo blanditiis aliquam sint et. Voluptatem voluptatem omnis ex qui qui sint at. Assumenda nemo ut doloremque sed numquam quibusdam.', '2018-12-23 06:00:18', '2018-12-23 06:00:18'),
	(2, 'Rerum quia', 'http://www.anderson.net/', 'Ut occaecati natus optio quibusdam quos itaque quae. Sunt in aliquam aut quo. Et minus eum placeat incidunt enim.', '2018-12-23 06:00:18', '2018-12-23 06:00:18'),
	(3, 'Rerum temporibus', 'http://www.moen.com/ducimus-ut-et-et-voluptatibus-facere', 'Id libero rerum dolor neque dolor consequatur esse modi. Impedit quis mollitia libero quisquam est vitae vel et. Ad dolor sunt ducimus dolores.', '2018-12-23 06:00:18', '2018-12-23 06:00:18'),
	(4, 'Culpa enim ea', 'http://www.upton.biz/dolorem-suscipit-tenetur-ratione-possimus-beatae', 'Consequuntur suscipit error eos rem consequatur id autem. Quam rerum at possimus est commodi quis ut eum. Ut voluptate ad quibusdam qui atque voluptas eum. Cupiditate corporis itaque provident quidem pariatur saepe facilis.', '2018-12-23 06:00:18', '2018-12-23 06:00:18'),
	(5, 'Repellat quo', 'https://klein.com/molestiae-quas-ab-molestiae-cum-at.html', 'Sunt voluptatem odit repellat harum. Omnis eos rerum expedita. Magnam facere explicabo est consequatur aperiam. Autem voluptatem inventore ad ullam et laborum voluptas perspiciatis.', '2018-12-23 06:00:18', '2018-12-23 06:00:18'),
	(6, 'Google', 'https://www.google.com', 'A real link', NULL, NULL);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;

-- Dumping structure for table sandbox.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sandbox.migrations: ~3 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_12_23_055629_create_links_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table sandbox.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sandbox.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table sandbox.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sandbox.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
