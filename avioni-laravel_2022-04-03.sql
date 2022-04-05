# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: mis.arbor.local (MySQL 5.7.34)
# Database: avioni-laravel
# Generation Time: 2022-04-03 08:22:35 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table avioni
# ------------------------------------------------------------

DROP TABLE IF EXISTS `avioni`;

CREATE TABLE `avioni` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipId` int(11) NOT NULL,
  `zemljaId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `avioni` WRITE;
/*!40000 ALTER TABLE `avioni` DISABLE KEYS */;

INSERT INTO `avioni` (`id`, `model`, `opis`, `tipId`, `zemljaId`, `created_at`, `updated_at`)
VALUES
	(1,'Accusantium corporis.','Temporibus atque deserunt similique assumenda perferendis maiores.',2,4,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(2,'Deleniti.','Ratione sequi dolores asperiores occaecati non magnam.',1,5,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(3,'Asperiores soluta.','Soluta vero quos facere illum omnis dolores qui dolorum.',2,6,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(4,'Illo provident.','Voluptas saepe nobis et.',1,1,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(5,'Id.','Iure voluptate soluta vero sed at sunt voluptatem.',1,4,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(6,'Modi.','Neque vitae dolorem veniam quos voluptate inventore.',2,6,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(7,'Consequatur rem.','Voluptatem quia qui nam dolores vitae eveniet ut.',2,4,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(8,'Odio.','Dolores mollitia quibusdam facilis provident inventore cum nihil.',2,2,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(9,'Deleniti ut.','Quibusdam doloremque quam debitis incidunt quis sit sunt.',1,1,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(10,'Maxime.','Vel velit quia fugit et.',1,5,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(11,'Et.','Mollitia similique ad nobis est ut.',2,4,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(12,'Harum a.','Nam consequuntur molestias facilis modi quis aperiam.',1,3,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(13,'Distinctio et.','Dolor dolorum ipsam est quas.',2,4,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(14,'Corporis aut.','Eius quia voluptas doloribus odio distinctio error aut.',1,2,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(15,'Quos.','Amet ipsa officia explicabo quasi.',1,4,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(16,'Qui voluptatem.','Adipisci est consequuntur molestias totam vitae.',2,6,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(17,'Et sit.','Possimus in tempore et sed.',2,1,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(18,'Sed.','Iure dolores ipsam est delectus enim.',2,1,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(19,'Itaque.','Eaque et sed omnis qui.',1,1,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(20,'Sunt eum.','Non dolorem aliquam tempora nemo dolores.',2,2,'2022-04-03 07:39:23','2022-04-03 07:39:23');

/*!40000 ALTER TABLE `avioni` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2019_08_19_000000_create_failed_jobs_table',1),
	(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
	(5,'2022_04_02_164656_create_tipovi_table',1),
	(6,'2022_04_02_164705_create_zemlje',1),
	(7,'2022_04_02_164711_create_avioni',1),
	(8,'2022_04_02_165250_dodaj_opis',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`)
VALUES
	(1,'App\\Models\\User',21,'Token','e658b65da1054c5e01a1f2875bc1183d529f6753ec91cb4472228c4871e2dddc','[\"*\"]',NULL,'2022-04-03 08:19:43','2022-04-03 08:19:43'),
	(2,'App\\Models\\User',21,'Token','73c3290d64938d4c7b32a6364b7c74834f15c1ef4722b32321be10faa8bb19f3','[\"*\"]','2022-04-03 08:21:30','2022-04-03 08:20:03','2022-04-03 08:21:30');

/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tipovi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tipovi`;

CREATE TABLE `tipovi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tipovi` WRITE;
/*!40000 ALTER TABLE `tipovi` DISABLE KEYS */;

INSERT INTO `tipovi` (`id`, `tip`, `created_at`, `updated_at`)
VALUES
	(1,'borbeni','2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(2,'putnicki','2022-04-03 07:39:23','2022-04-03 07:39:23');

/*!40000 ALTER TABLE `tipovi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Ms. Kamille Jones','cnader@gmail.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(2,'Prof. Irwin Zboncak','orval85@boehm.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(3,'Corine Hand V','hhettinger@gmail.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(4,'Macey Botsford','emard.vidal@erdman.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(5,'Mrs. Shannon Wiza','ogleichner@larkin.biz',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(6,'Carmela Heidenreich Sr.','margarita92@hermann.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(7,'Gage Kihn','reichel.lori@gottlieb.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(8,'Tyrel Zulauf','fharber@bartell.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(9,'Stevie Swift II','susanna.price@yahoo.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(10,'Demond Kohler','octavia20@considine.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(11,'Weldon Rodriguez','destiney90@mosciski.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(12,'Willy Hane','bconsidine@moen.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(13,'Krista Beer II','gretchen.donnelly@konopelski.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(14,'Prof. Devan Kris','verlie33@gmail.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(15,'Vivian Weissnat','hadley69@white.net',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(16,'Shea McCullough','felicita64@schoen.org',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(17,'Aglae Spencer','lakin.halle@gmail.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(18,'Keshawn Heaney','halvorson.angelita@yahoo.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(19,'Miss Jessyca Kozey','smosciski@hotmail.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(20,'Evert Effertz','jackeline38@boyer.com',NULL,'$2y$10$RhN29UGzEC301tOmJfizNexsJLz0T0/Gz1wJW0M88sXrk2xkGNesC',NULL,'2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(21,'Admin','admin@avioni.com',NULL,'$2y$10$2cKIK6d1SgamB.kcCHLsIOtJ/YV9jGaJxbX0aoBtckkabtVuJfR6a',NULL,'2022-04-03 08:19:43','2022-04-03 08:19:43');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zemlje
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zemlje`;

CREATE TABLE `zemlje` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zemlja` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `zemlje` WRITE;
/*!40000 ALTER TABLE `zemlje` DISABLE KEYS */;

INSERT INTO `zemlje` (`id`, `zemlja`, `created_at`, `updated_at`)
VALUES
	(1,'SAD','2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(2,'Kina','2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(3,'Francuska','2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(4,'Nemacka','2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(5,'Rusija','2022-04-03 07:39:23','2022-04-03 07:39:23'),
	(6,'Japan','2022-04-03 07:39:23','2022-04-03 07:39:23');

/*!40000 ALTER TABLE `zemlje` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
