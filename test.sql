-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Ven 27 Mars 2015 à 00:40
-- Version du serveur: 5.5.40
-- Version de PHP: 5.5.23-1+deb.sury.org~precise+2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `creatoke`
--

-- --------------------------------------------------------

--
-- Structure de la table `Admin`
--

CREATE TABLE IF NOT EXISTS `Admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniqueEntity` int(11) NOT NULL,
  `home_baseline_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_baseline_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `footer_title_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `footer_title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `footer_text_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `footer_text_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_post` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_header` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_header_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_footer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_footer_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_49CF22728ACC69D2` (`uniqueEntity`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- 
-- Contenu de la table `Admin`
--

INSERT INTO `Admin` (`id`, `uniqueEntity`, `home_baseline_fr`, `home_baseline_en`, `footer_title_fr`, `footer_title_en`, `footer_text_fr`, `footer_text_en`, `date_post`, `updated_at`, `image_header`, `image_$
(1, 666, 'Les STARS ont disparu... La Star, c''est vous maintenant ! CREATOKé, l''autre façon de créer la musique...', 'Stars disapear... Star it''s you kflmdskmldf', 'Medecin , musicien', 'titre en angla$

-- --------------------------------------------------------

--
-- Structure de la table `ext_log_entries`
--

CREATE TABLE IF NOT EXISTS `ext_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `log_class_lookup_idx` (`object_class`),
  KEY `log_date_lookup_idx` (`logged_at`),
  KEY `log_user_lookup_idx` (`username`),
  KEY `log_version_lookup_idx` (`object_id`,`object_class`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ext_translations`
--

--
-- Contenu de la table `ext_translations`
--

INSERT INTO `ext_translations` (`id`, `locale`, `object_class`, `field`, `foreign_key`, `content`) VALUES
(1, 'fr', 'Maprog\\CreatokeBundle\\Entity\\Page', 'title', '__id__', 'URL');

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_req$
(1, 'vince', 'vince', 'vince@vince.com', 'vince@vince.com', 1, '3ef8f066b4kk4scc8gwow40cow4c8o8', 'IWJ2U9/100CfHGYig6rxVlZfdqVig+kVz6zgrSGGiz5keI9K1aOLPqyIz7T4bu3TvTbShsNCwJov9YRY0POh5w==', '2014-11-05 12:31$
(3, 'vgross', 'vgross', 'vince@vidnce.com', 'vince@vidnce.com', 1, 'd2fyvm3kn1ckg0wss4o4k8og48w0sgs', 'TZ4L4DK1kFsafMVkAGuqZBlKkiyTKTJoAmHm2ykYpyAdC6I29+tEI4Trx+bXQWSGPKCPxBjeoRmOmyRM9h/siQ==', '2014-06-15 1$
(4, 'gallochio', 'gallochio', 'test@example.com', 'test@example.com', 1, 'quy6dhu86z4cg8ockw8cgc0k04skss4', '0f94NdtWlyZ7XUykaJPPi7JZFcRLWWWADpCJOdYlRUARrXF2LMkDK735+eTWlRQp3DA1Xeawws/c/IcRlDLxVw==', '2015-0$

-- --------------------------------------------------------

--
-- Structure de la table `Page`
--

CREATE TABLE IF NOT EXISTS `Page` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `online` tinyint(1) NOT NULL,
  `title_fr` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_fr` longtext COLLATE utf8_unicode_ci,
  `description_en` longtext COLLATE utf8_unicode_ci,
  `image_page` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_page_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `Page`
--

INSERT INTO `Page` (`id`, `title`, `online`, `title_fr`, `title_en`, `description_fr`, `description_en`, `image_page`, `image_page_key`) VALUES
('url', 'URL', 0, 'le meilleur', 'The best', 'gffgjsfgjsfgj', 'fgjfgjfgjsfgjsfgj', NULL, NULL);

INSERT INTO `PaypalOrder` (`id`, `song_id`, `amount`, `name`, `address`, `email`, `date`, `statut`, `dl_token`, `dl_cpt`, `paypal_params`, `paypal_details`, `paypal_complete`, `type`) VALUES
(1, 28, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-07493913KE468872F","TIMESTAMP":"2013-08-09T19:50:01Z","CORRELATIONID":"1222704597ce","ACK":"Success","VERSION":"93","BUILD":"7161310"}', NULL, $
(2, 31, 3.99, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-0SJ3930923179843N","TIMESTAMP":"2013-08-19T09:23:52Z","CORRELATIONID":"e95ebd7895714","ACK":"Success","VERSION":"93","BUILD":"7319395"}', NU$
(3, 31, 3.99, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-7T522602R6768173X","TIMESTAMP":"2013-08-19T09:23:54Z","CORRELATIONID":"6a576bf88f871","ACK":"Success","VERSION":"93","BUILD":"7319395"}', NU$
(4, 31, 3.99, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-0WM80964L92035258","TIMESTAMP":"2013-08-19T09:24:00Z","CORRELATIONID":"26b0e2807683c","ACK":"Success","VERSION":"93","BUILD":"7319395"}', NU$
(5, 31, 3.99, 'vincent gross', 'Av. de la Pelouse, 87648672 Mayet / Paris / France', 'vince.1382@laposte.net', '2013-08-19 11:55:52', 'Completed', 'c73d9d4285a9abb12fca1882bd767824', 0, '{"TOKEN":"EC-4J56291$
(6, 31, 3.99, 'vincent gross', 'fdsfs / Vitrolles / France', 'zemourgerard@free.fr', '2013-08-19 12:09:58', 'Completed', '6cb3f495f932d09ed7e2dff1f645b9a3', 0, '{"TOKEN":"EC-02S005790N083582G","TIMESTAMP":"2$
(7, 31, 3.99, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-8YN51065JY606453P","TIMESTAMP":"2013-09-06T08:53:57Z","CORRELATIONID":"cd26a93e2d139","ACK":"Success","VERSION":"93","BUILD":"7560199"}', NU$
(8, 31, 3.99, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-74L83076M2144105C","TIMESTAMP":"2013-09-10T02:53:21Z","CORRELATIONID":"e887ca2e8223e","ACK":"Success","VERSION":"93","BUILD":"7560199"}', NU$
(9, 26, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-7TT68420794952221","TIMESTAMP":"2013-09-17T10:50:35Z","CORRELATIONID":"b6258dcf7fa19","ACK":"Success","VERSION":"93","BUILD":"7729086"}', NULL,$
(10, 19, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-60992609GW3747323","TIMESTAMP":"2013-09-17T12:24:48Z","CORRELATIONID":"5308e120723dc","ACK":"Success","VERSION":"93","BUILD":"7729086"}', NULL$
(11, 19, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-68971423HE451445K","TIMESTAMP":"2013-09-17T12:24:52Z","CORRELATIONID":"34ca2a8f3ba9f","ACK":"Success","VERSION":"93","BUILD":"7729086"}', NULL$
(12, 17, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-46708069X0624052K","TIMESTAMP":"2013-10-14T14:25:49Z","CORRELATIONID":"8d35d265aa5a4","ACK":"Success","VERSION":"93","BUILD":"8021845"}', NULL$
(13, 24, 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-73H39273HD225472J","TIMESTAMP":"2013-10-15T10:21:52Z","CORRELATIONID":"cf7dd43642cbe","ACK":"Success","VERSION":"93","BUILD":"8021845"}', NULL$
(14, 24, 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-5X849058JY6333642","TIMESTAMP":"2013-10-15T10:21:55Z","CORRELATIONID":"401e34b8c367","ACK":"Success","VERSION":"93","BUILD":"8021845"}', NULL,$
(15, 31, 3.99, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-92H19390E44364738","TIMESTAMP":"2013-10-16T05:47:42Z","CORRELATIONID":"d68729ccd81","ACK":"Success","VERSION":"93","BUILD":"8021845"}', NUL$
(16, 31, 3.99, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-4LT19644HJ2002114","TIMESTAMP":"2013-12-17T23:46:06Z","CORRELATIONID":"d41a60d65aad0","ACK":"Success","VERSION":"93","BUILD":"8725992"}', N$
(17, 31, 3.99, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-8W625628BG322353D","TIMESTAMP":"2014-01-05T06:52:11Z","CORRELATIONID":"763f826eebff9","ACK":"Success","VERSION":"93","BUILD":"8951431"}', N$
(18, 28, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(19, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(20, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(21, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(22, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(23, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(24, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(25, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(26, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(27, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-0CS77790J6067554R","TIMESTAMP":"2014-05-11T09:56:23Z","CORRELATIONID":"451514818a240","ACK":"Success","VERSION":"93","BUILD":"10952652"}', NUL$
(28, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(29, 2, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(30, 9, 7, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-6Y4300462U447972A","TIMESTAMP":"2014-06-08T08:08:43Z","CORRELATIONID":"94e54724a6272","ACK":"Success","VERSION":"93","BUILD":"11307182"}', NULL$
(31, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-5AT01714U8455313J","TIMESTAMP":"2014-06-15T08:21:43Z","CORRELATIONID":"e39dc5d8b02c9","ACK":"Success","VERSION":"93","BUILD":"11411635"}', NUL$
(32, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-449622868S624723D","TIMESTAMP":"2014-07-22T13:32:34Z","CORRELATIONID":"56f07e2856be3","ACK":"Success","VERSION":"93","BUILD":"11950065"}', NUL$
(33, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-8YR738930U409044T","TIMESTAMP":"2014-07-22T13:32:37Z","CORRELATIONID":"90c31dea7da5c","ACK":"Success","VERSION":"93","BUILD":"11950065"}', NUL$
(34, 24, 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-32044227060961519","TIMESTAMP":"2014-09-07T19:15:28Z","CORRELATIONID":"6c918a0b40657","ACK":"Success","VERSION":"93","BUILD":"12658619"}', NUL$
(35, 24, 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-9KB80930416706240","TIMESTAMP":"2014-09-07T19:15:31Z","CORRELATIONID":"15725fc159d8c","ACK":"Success","VERSION":"93","BUILD":"12658619"}', NUL$
  (9, 26, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-7TT68420794952221","TIMESTAMP":"2013-09-17T10:50:35Z","CORRELATIONID":"b6258dcf7fa19","ACK":"Success","VERSION":"93","BUILD":"7729086"}', NULL,$
  (10, 19, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-60992609GW3747323","TIMESTAMP":"2013-09-17T12:24:48Z","CORRELATIONID":"5308e120723dc","ACK":"Success","VERSION":"93","BUILD":"7729086"}', NULL$
  (11, 19, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-68971423HE451445K","TIMESTAMP":"2013-09-17T12:24:52Z","CORRELATIONID":"34ca2a8f3ba9f","ACK":"Success","VERSION":"93","BUILD":"7729086"}', NULL$
  (12, 17, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-46708069X0624052K","TIMESTAMP":"2013-10-14T14:25:49Z","CORRELATIONID":"8d35d265aa5a4","ACK":"Success","VERSION":"93","BUILD":"8021845"}', NULL$
  (13, 24, 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-73H39273HD225472J","TIMESTAMP":"2013-10-15T10:21:52Z","CORRELATIONID":"cf7dd43642cbe","ACK":"Success","VERSION":"93","BUILD":"8021845"}', NULL$
  (14, 24, 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-5X849058JY6333642","TIMESTAMP":"2013-10-15T10:21:55Z","CORRELATIONID":"401e34b8c367","ACK":"Success","VERSION":"93","BUILD":"8021845"}', NULL,$
  (15, 31, 3.99, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-92H19390E44364738","TIMESTAMP":"2013-10-16T05:47:42Z","CORRELATIONID":"d68729ccd81","ACK":"Success","VERSION":"93","BUILD":"8021845"}', NUL$
  (16, 31, 3.99, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-4LT19644HJ2002114","TIMESTAMP":"2013-12-17T23:46:06Z","CORRELATIONID":"d41a60d65aad0","ACK":"Success","VERSION":"93","BUILD":"8725992"}', N$
  (17, 31, 3.99, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-8W625628BG322353D","TIMESTAMP":"2014-01-05T06:52:11Z","CORRELATIONID":"763f826eebff9","ACK":"Success","VERSION":"93","BUILD":"8951431"}', N$
  (18, 28, 5, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
  (19, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
  (20, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
  (21, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
  (22, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
  (23, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
  (24, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
  (25, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
  (26, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
  (27, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-0CS77790J6067554R","TIMESTAMP":"2014-05-11T09:56:23Z","CORRELATIONID":"451514818a240","ACK":"Success","VERSION":"93","BUILD":"10952652"}', NUL$
  (28, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
  (29, 2, 6, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
  (30, 9, 7, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-6Y4300462U447972A","TIMESTAMP":"2014-06-08T08:08:43Z","CORRELATIONID":"94e54724a6272","ACK":"Success","VERSION":"93","BUILD":"11307182"}', NULL$
  (31, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-5AT01714U8455313J","TIMESTAMP":"2014-06-15T08:21:43Z","CORRELATIONID":"e39dc5d8b02c9","ACK":"Success","VERSION":"93","BUILD":"11411635"}', NUL$
  (32, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-449622868S624723D","TIMESTAMP":"2014-07-22T13:32:34Z","CORRELATIONID":"56f07e2856be3","ACK":"Success","VERSION":"93","BUILD":"11950065"}', NUL$
  (33, 29, 4, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-8YR738930U409044T","TIMESTAMP":"2014-07-22T13:32:37Z","CORRELATIONID":"90c31dea7da5c","ACK":"Success","VERSION":"93","BUILD":"11950065"}', NUL$
  (34, 24, 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-32044227060961519","TIMESTAMP":"2014-09-07T19:15:28Z","CORRELATIONID":"6c918a0b40657","ACK":"Success","VERSION":"93","BUILD":"12658619"}', NUL$
  (35, 24, 9, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{"TOKEN":"EC-9KB80930416706240","TIMESTAMP":"2014-09-07T19:15:31Z","CORRELATIONID":"15725fc159d8c","ACK":"Success","VERSION":"93","BUILD":"12658619"}', NUL$

  -- --------------------------------------------------------

  --
  -- Structure de la table `Song`
  --
  CREATE TABLE IF NOT EXISTS `Song` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `style_id` int(11) DEFAULT NULL,
    `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
    `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
    `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
    `image_song` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
    `image_song_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
    `song_tosell` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
    `song_tosell_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
    `song_creatoke` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
    `song_creatoke_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
    `song_played` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
    `song_played_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
    `date_post` datetime NOT NULL,
    `updated_at` datetime NOT NULL,
    `price` double DEFAULT NULL,
    `description_fr` longtext COLLATE utf8_unicode_ci,
    `description_en` longtext COLLATE utf8_unicode_ci,
    `online` tinyint(1) NOT NULL,
    `cpt_play_creatoke` int(11) NOT NULL,
    `cpt_play_played` int(11) NOT NULL,
    `free` tinyint(1) NOT NULL,
    `song_midi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
    `song_midi_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
    `price_midi` double DEFAULT NULL,
    `lyrics` longtext COLLATE utf8_unicode_ci,
    PRIMARY KEY (`id`),
    KEY `IDX_93DF419FBACD6074` (`style_id`)
  ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

  INSERT INTO `Song` (`id`, `style_id`, `type`, `title`, `video`, `image_song`, `image_song_key`, `song_tosell`, `song_tosell_key`, `song_creatoke`, `song_creatoke_key`, `song_played`, `song_played_key`, `date$
  (1, 1, 'produits.cac.title', 'Possimus.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_1.jpg', 'img_2.jpg', '/uploads/creatoke/songs/tosell/song_3.mpga', 'song_1.mpga', NULL, 'song_3.mpga', '/uploads/cr$
  (2, 4, 'produits.cac.title', 'Unde dolor.', NULL, '/uploads/creatoke/images/song/img_1.jpg', 'img_1.jpg', '/uploads/creatoke/songs/tosell/song_1.mpga', 'song_3.mpga', '/uploads/creatoke/songs/tosell/song_1.m$
  (3, 1, 'produits.lm.title', 'Consequatur.', NULL, '/uploads/creatoke/images/song/img_3.jpg', 'img_2.jpg', '/uploads/creatoke/songs/tosell/song_1.mpga', 'song_3.mpga', '/uploads/creatoke/songs/tosell/song_2.m$
  (4, 2, 'produits.lm.title', 'Odit consequuntur.', NULL, '/uploads/creatoke/images/song/img_1.jpg', 'img_1.jpg', '/uploads/creatoke/songs/tosell/song_2.mpga', 'song_3.mpga', NULL, 'song_3.mpga', '/uploads/cre$
  (5, 2, 'produits.lm.title', 'Esse id sequi eaque.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_3.jpg', 'img_2.jpg', '/uploads/creatoke/songs/tosell/song_1.mpga', 'song_2.mpga', NULL, 'song_2.mpga', '/$
  (6, 3, 'produits.csm.title', 'Provident provident.', NULL, '/uploads/creatoke/images/song/img_1.jpg', 'img_2.jpg', '/uploads/creatoke/songs/tosell/song_1.mpga', 'song_3.mpga', NULL, 'song_2.mpga', NULL, 'son$
  (7, 3, 'produits.ce.title', 'Ipsam voluptatibus.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_1.jpg', 'img_1.jpg', '/uploads/creatoke/songs/tosell/song_3.mpga', 'song_3.mpga', '/uploads/creatoke/songs$
  (8, 3, 'produits.cac.title', 'Dicta consequatur.', NULL, '/uploads/creatoke/images/song/img_2.jpg', 'img_3.jpg', '/uploads/creatoke/songs/tosell/song_1.mpga', 'song_1.mpga', '/uploads/creatoke/songs/creatoke$
  (9, 4, 'produits.oo.title', 'Itaque voluptatem.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_3.jpg', 'img_1.jpg', '/uploads/creatoke/songs/tosell/song_2.mpga', 'song_3.mpga', '/uploads/creatoke/songs/$
  (10, 4, 'produits.lm.title', 'Qui perferendis.', NULL, '/uploads/creatoke/images/song/img_2.jpg', 'img_2.jpg', '/uploads/creatoke/songs/tosell/song_2.mpga', 'song_1.mpga', '/uploads/creatoke/songs/tosell/son$
  (11, 1, 'produits.lm.title', 'Alias illum qui aut.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_1.jpg', 'img_1.jpg', '/uploads/creatoke/songs/tosell/song_2.mpga', 'song_3.mpga', '/uploads/creatoke/son$
  (12, 2, 'produits.vs.title', 'Enim omnis saepe.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_2.jpg', 'img_3.jpg', '/uploads/creatoke/songs/tosell/song_1.mpga', 'song_3.mpga', '/uploads/creatoke/songs/$
  (13, 1, 'produits.st.title', 'Enim esse qui hic.', NULL, '/uploads/creatoke/images/song/img_1.jpg', 'img_3.jpg', '/uploads/creatoke/songs/tosell/song_3.mpga', 'song_2.mpga', '/uploads/creatoke/songs/tosell/s$
  (14, 3, 'produits.lm.title', 'Explicabo in nihil.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_2.jpg', 'img_3.jpg', '/uploads/creatoke/songs/tosell/song_2.mpga', 'song_2.mpga', '/uploads/creatoke/song$
  (15, 4, 'produits.cac.title', 'Voluptate rerum a.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_2.jpg', 'img_1.jpg', '/uploads/creatoke/songs/tosell/song_3.mpga', 'song_2.mpga', '/uploads/creatoke/song$
  (16, 1, 'produits.st.title', 'Libero quis non.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_2.jpg', 'img_2.jpg', '/uploads/creatoke/songs/tosell/song_3.mpga', 'song_2.mpga', '/uploads/creatoke/songs/t$
  (17, 2, 'produits.csp.title', 'Porro delectus id.', NULL, '/uploads/creatoke/images/song/img_2.jpg', 'img_2.jpg', '/uploads/creatoke/songs/tosell/song_3.mpga', 'song_2.mpga', '/uploads/creatoke/songs/tosell/$
  (18, 3, 'produits.vs.title', 'Non et molestias.', 'oaNeosKeSoc', '/uploads/creatoke/images/song/img_1.jpg', 'img_1.jpg', '/uploads/creatoke/songs/tosell/song_1.mpga', 'song_3.mpga', NULL, 'song_2.mpga', '/up$
  (19, 2, 'produits.csm.title', 'Alias perferendis.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_2.jpg', 'img_2.jpg', '/uploads/creatoke/songs/tosell/song_2.mpga', 'song_1.mpga', NULL, 'song_2.mpga', '/$
  (20, 3, 'produits.ce.title', 'Totam quia.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_2.jpg', 'img_2.jpg', '/uploads/creatoke/songs/tosell/song_1.mpga', 'song_1.mpga', NULL, 'song_1.mpga', NULL, 'son$
  (21, 4, 'produits.st.title', 'Enim totam at ut.', 'oaNeosKeSoc', '/uploads/creatoke/images/song/img_1.jpg', 'img_3.jpg', '/uploads/creatoke/songs/tosell/song_2.mpga', 'song_3.mpga', '/uploads/creatoke/songs/$
  (22, 4, 'produits.lm.title', 'Repudiandae totam.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_1.jpg', 'img_2.jpg', '/uploads/creatoke/songs/tosell/song_3.mpga', 'song_2.mpga', '/uploads/creatoke/songs$
  (23, 3, 'produits.st.title', 'Rerum laudantium.', NULL, '/uploads/creatoke/images/song/img_3.jpg', 'img_2.jpg', '/uploads/creatoke/songs/tosell/song_2.mpga', 'song_2.mpga', NULL, 'song_2.mpga', '/uploads/cre$
  (24, 1, 'produits.csp.title', 'Ipsum iusto.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_3.jpg', 'img_3.jpg', '/uploads/creatoke/songs/tosell/song_2.mpga', 'song_1.mpga', '/uploads/creatoke/songs/tose$
  (25, 1, 'produits.cac.title', 'Sit aspernatur.', 'oaNeosKeSoc', '/uploads/creatoke/images/song/img_3.jpg', 'img_1.jpg', '/uploads/creatoke/songs/tosell/song_3.mpga', 'song_3.mpga', NULL, 'song_3.mpga', '/upl$
  (26, 4, 'produits.oo.title', 'Perspiciatis.', NULL, '/uploads/creatoke/images/song/img_1.jpg', 'img_1.jpg', '/uploads/creatoke/songs/tosell/song_1.mpga', 'song_2.mpga', NULL, 'song_2.mpga', '/uploads/creatok$
  (27, 2, 'produits.ce.title', 'Architecto ut.', 'oaNeosKeSoc', '/uploads/creatoke/images/song/img_3.jpg', 'img_3.jpg', '/uploads/creatoke/songs/tosell/song_2.mpga', 'song_3.mpga', '/uploads/creatoke/songs/tos$
  (28, 1, 'produits.oo.title', 'Porro magni.', NULL, '/uploads/creatoke/images/song/img_1.jpg', 'img_1.jpg', '/uploads/creatoke/songs/tosell/song_3.mpga', 'song_1.mpga', '/uploads/creatoke/songs/tosell/song_1.$
  (29, 2, 'produits.cac.title', 'Consequatur.', 'WhbhTQiOkEA', '/uploads/creatoke/images/song/img_1.jpg', 'img_1.jpg', '/uploads/creatoke/songs/tosell/song_3.mpga', 'song_2.mpga', NULL, 'song_1.mpga', '/upload$
  (30, 3, 'produits.vs.title', 'Maxime accusamus.', 'oaNeosKeSoc', '/uploads/creatoke/images/song/img_3.jpg', 'img_1.jpg', '/uploads/creatoke/songs/tosell/song_1.mpga', 'song_2.mpga', NULL, 'song_1.mpga', NULL$
  (31, 7, 'produits.cac.title', 'T''en va pas comme ça !', '1HeNDgiNxQ0', '/uploads/creatoke/images/song/534bbe57356b4.jpg', '534bbe57356b4.jpg', '/uploads/creatoke/songs/tosell/5211ea7dbece8.mpga', '5211ea7d$
  (32, 2, 'produits.cac.title', 'xhkhkghk', NULL, '/uploads/creatoke/images/song/53941b9f0a202.jpeg', '53941b9f0a202.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2013-12-02 15:38:32', '2013-12-02 15:38:32', 0, $

  -- --------------------------------------------------------

  --
  -- Structure de la table `Style`
  --

  --
  -- Structure de la table `Style`
  --

  CREATE TABLE IF NOT EXISTS `Style` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
  ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

  --
  -- Contenu de la table `Style`
  --

  INSERT INTO `Style` (`id`, `name_fr`, `name_en`) VALUES
  (1, 'Rock', 'Rock'),
  (2, 'Rap', 'Rap'),
  (3, 'Classique', 'Classic'),
  (4, 'années 90', '90''s'),
  (7, 'Musique Educative', 'Educative Music');

  --
  -- Contraintes pour les tables exportées
  --

  --
  -- Contraintes pour la table `PaypalOrder`
  --
  ALTER TABLE `PaypalOrder`
    ADD CONSTRAINT `FK_7D712469A0BDB2F3` FOREIGN KEY (`song_id`) REFERENCES `Song` (`id`);

  --
  -- Contraintes pour la table `Song`
  --
  --
  ALTER TABLE `Song`
    ADD CONSTRAINT `FK_93DF419FBACD6074` FOREIGN KEY (`style_id`) REFERENCES `Style` (`id`);

  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;






