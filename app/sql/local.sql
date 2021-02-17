-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-02-10 18:37:52','2021-02-10 18:37:52','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://misrecetaswp.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://misrecetaswp.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Mis Recetas','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Colección de mis mejores recetas','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','jfgm24@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:3:{i:0;s:98:\"C:\\Users\\JFGM\\Desktop\\CursoVirenses\\misrecetaswp\\app\\public/wp-content/themes/misrecetas/style.css\";i:2;s:103:\"C:\\Users\\JFGM\\Desktop\\CursoVirenses\\misrecetaswp\\app\\public/wp-content/themes/twentytwentyone/style.css\";i:3;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','misrecetas','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','misrecetas','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','26','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1628534270','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:7:{i:1613583474;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1613587073;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613587074;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1613590463;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613590464;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613673473;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','y6X+Y+WzN8 ><3Y6B-g(G$!9|KX%y*-w$T}Q<Od4u<c;P]*?:d#x3*v)-;Q=loC0','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','+RJ0diwcN^cGmY]ink4(Q6v:;^JDGL8:?@WWPYTgTAaVGr)1.W+Nd!(;Qe#`Wkwb','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1613582050;s:15:\"version_checked\";s:5:\"5.6.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (127,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1613057952;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (128,'_site_transient_timeout_browser_54855be98a049915c6fe552dcf945444','1613590464','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_browser_54855be98a049915c6fe552dcf945444','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"88.0.4324.150\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1613590464','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (145,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (150,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (152,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613582051;s:7:\"checked\";a:4:{s:10:\"misrecetas\";s:5:\"0.0.1\";s:14:\"twentynineteen\";s:3:\"1.9\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (172,'current_theme','Mis Recetas','yes');
INSERT INTO `wp_options` VALUES (173,'theme_mods_misrecetas','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (174,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (179,'_transient_health-check-site-status-result','{\"good\":\"12\",\"recommended\":\"6\",\"critical\":\"1\"}','yes');
INSERT INTO `wp_options` VALUES (181,'recovery_mode_email_last_sent','1613070072','yes');
INSERT INTO `wp_options` VALUES (184,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (185,'new_admin_email','jfgm24@gmail.com','yes');
INSERT INTO `wp_options` VALUES (188,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (201,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1613618157','no');
INSERT INTO `wp_options` VALUES (202,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:55:\"Watch Party + Discussion group: Intro to Block Patterns\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/276244371/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-02-18 20:00:00\";s:8:\"end_date\";s:19:\"2021-02-18 21:00:00\";s:20:\"start_unix_timestamp\";i:1613707200;s:18:\"end_unix_timestamp\";i:1613710800;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297003;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Prague\";s:3:\"url\";s:33:\"https://prague.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-02-27 10:00:00\";s:8:\"end_date\";s:19:\"2021-02-27 10:00:00\";s:20:\"start_unix_timestamp\";i:1614416400;s:18:\"end_unix_timestamp\";i:1614416400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"CZ\";s:8:\"latitude\";d:50.075538100000003;s:9:\"longitude\";d:14.4378005;}}}}','no');
INSERT INTO `wp_options` VALUES (212,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (222,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (229,'acf_version','5.9.5','yes');
INSERT INTO `wp_options` VALUES (240,'_site_transient_timeout_browser_1a2dc04bb795f060fbb9a0d4921dd3e5','1614179755','no');
INSERT INTO `wp_options` VALUES (241,'_site_transient_browser_1a2dc04bb795f060fbb9a0d4921dd3e5','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"88.0.4324.182\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (244,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1613592821','no');
INSERT INTO `wp_options` VALUES (245,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4748;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4702;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2710;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2579;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1990;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1843;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1825;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1502;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1501;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1496;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1476;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1472;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1464;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1310;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1245;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1218;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1213;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1150;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1117;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1039;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:932;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:919;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:896;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:884;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:857;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:816;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:807;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:795;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:794;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:772;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:757;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:734;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:724;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:716;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:708;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:699;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:672;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:664;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:660;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:656;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:648;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:647;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:644;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:643;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:604;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:595;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:593;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:586;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:586;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:577;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:570;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:564;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:561;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:560;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:556;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:551;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:540;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:540;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:538;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:535;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:529;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:513;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:501;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:497;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:493;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:490;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:484;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:476;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:470;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:470;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:468;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:454;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:451;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:448;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:444;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:441;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:439;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:435;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:433;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:431;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:424;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:418;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:414;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:404;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:404;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:403;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:402;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:400;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:390;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:390;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:384;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:381;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:379;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:368;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:363;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:362;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:359;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:355;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:350;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:346;}}','no');
INSERT INTO `wp_options` VALUES (247,'_site_transient_timeout_theme_roots','1613583850','no');
INSERT INTO `wp_options` VALUES (248,'_site_transient_theme_roots','a:4:{s:10:\"misrecetas\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (249,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613582054;s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.3.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.3.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.3.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (250,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.3.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1613582055;s:7:\"version\";s:5:\"5.3.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_customize_draft_post_name','create-your-website-with-blocks');
INSERT INTO `wp_postmeta` VALUES (4,5,'_customize_changeset_uuid','74169037-ff83-4df1-8d17-075d66ddb521');
INSERT INTO `wp_postmeta` VALUES (5,6,'_customize_draft_post_name','about');
INSERT INTO `wp_postmeta` VALUES (6,6,'_customize_changeset_uuid','74169037-ff83-4df1-8d17-075d66ddb521');
INSERT INTO `wp_postmeta` VALUES (7,7,'_customize_draft_post_name','contact');
INSERT INTO `wp_postmeta` VALUES (8,7,'_customize_changeset_uuid','74169037-ff83-4df1-8d17-075d66ddb521');
INSERT INTO `wp_postmeta` VALUES (9,8,'_customize_draft_post_name','blog');
INSERT INTO `wp_postmeta` VALUES (10,8,'_customize_changeset_uuid','74169037-ff83-4df1-8d17-075d66ddb521');
INSERT INTO `wp_postmeta` VALUES (11,10,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (12,10,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (13,10,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (14,10,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (15,10,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (16,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (17,10,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (18,10,'_menu_item_url','http://misrecetaswp.local/');
INSERT INTO `wp_postmeta` VALUES (19,10,'_menu_item_orphaned','1613071590');
INSERT INTO `wp_postmeta` VALUES (20,11,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (21,11,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (22,11,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (23,11,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (24,11,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (25,11,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (26,11,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (27,11,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (28,11,'_menu_item_orphaned','1613071590');
INSERT INTO `wp_postmeta` VALUES (29,12,'_edit_lock','1613575460:1');
INSERT INTO `wp_postmeta` VALUES (30,14,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (31,14,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (32,14,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (33,14,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (34,14,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (35,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (36,14,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (37,14,'_menu_item_url','http://misrecetaswp.local/');
INSERT INTO `wp_postmeta` VALUES (39,15,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (40,15,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (41,15,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (42,15,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (43,15,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (44,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (45,15,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (46,15,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (57,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (58,2,'_wp_trash_meta_time','1613072075');
INSERT INTO `wp_postmeta` VALUES (59,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (60,18,'_edit_lock','1613582200:1');
INSERT INTO `wp_postmeta` VALUES (61,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (62,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (63,20,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (64,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (65,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (66,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (67,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (68,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (70,21,'_wp_attached_file','2021/02/copyright.png');
INSERT INTO `wp_postmeta` VALUES (71,21,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:588;s:6:\"height\";i:590;s:4:\"file\";s:21:\"2021/02/copyright.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"copyright-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"copyright-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (72,22,'_wp_attached_file','2021/02/ico_Food.png');
INSERT INTO `wp_postmeta` VALUES (73,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1488;s:6:\"height\";i:493;s:4:\"file\";s:20:\"2021/02/ico_Food.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"ico_Food-300x99.png\";s:5:\"width\";i:300;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"ico_Food-1024x339.png\";s:5:\"width\";i:1024;s:6:\"height\";i:339;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"ico_Food-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"ico_Food-768x254.png\";s:5:\"width\";i:768;s:6:\"height\";i:254;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (74,23,'_wp_attached_file','2021/02/MisRecetas.png');
INSERT INTO `wp_postmeta` VALUES (75,23,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1488;s:6:\"height\";i:493;s:4:\"file\";s:22:\"2021/02/MisRecetas.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"MisRecetas-300x99.png\";s:5:\"width\";i:300;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"MisRecetas-1024x339.png\";s:5:\"width\";i:1024;s:6:\"height\";i:339;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"MisRecetas-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"MisRecetas-768x254.png\";s:5:\"width\";i:768;s:6:\"height\";i:254;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (76,24,'_wp_attached_file','2021/02/cropped-ico_Food.png');
INSERT INTO `wp_postmeta` VALUES (77,24,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (78,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:28:\"2021/02/cropped-ico_Food.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-ico_Food-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-ico_Food-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:28:\"cropped-ico_Food-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:28:\"cropped-ico_Food-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:28:\"cropped-ico_Food-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:26:\"cropped-ico_Food-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (79,9,'_customize_restore_dismissed','1');
INSERT INTO `wp_postmeta` VALUES (80,25,'_edit_lock','1613075563:1');
INSERT INTO `wp_postmeta` VALUES (81,26,'_wp_attached_file','2021/02/cropped-MisRecetas.png');
INSERT INTO `wp_postmeta` VALUES (82,26,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (83,26,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:30:\"2021/02/cropped-MisRecetas.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-MisRecetas-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-MisRecetas-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:30:\"cropped-MisRecetas-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:30:\"cropped-MisRecetas-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:30:\"cropped-MisRecetas-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:28:\"cropped-MisRecetas-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (84,25,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (85,25,'_wp_trash_meta_time','1613075567');
INSERT INTO `wp_postmeta` VALUES (86,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (87,1,'_wp_trash_meta_time','1613487803');
INSERT INTO `wp_postmeta` VALUES (88,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (89,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (90,28,'_wp_attached_file','2021/02/crema-catalana-01.jpg');
INSERT INTO `wp_postmeta` VALUES (91,28,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:868;s:4:\"file\";s:29:\"2021/02/crema-catalana-01.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"crema-catalana-01-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"crema-catalana-01-1024x593.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:593;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"crema-catalana-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"crema-catalana-01-768x444.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (92,29,'_wp_attached_file','2021/02/crema-de-setas-y-avellanas-01.jpg');
INSERT INTO `wp_postmeta` VALUES (93,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:868;s:4:\"file\";s:41:\"2021/02/crema-de-setas-y-avellanas-01.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"crema-de-setas-y-avellanas-01-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"crema-de-setas-y-avellanas-01-1024x593.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:593;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"crema-de-setas-y-avellanas-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"crema-de-setas-y-avellanas-01-768x444.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (94,30,'_wp_attached_file','2021/02/ensalada-de-boletus-paleta-iberica-y-mayonesa-de-almendras-01.jpg');
INSERT INTO `wp_postmeta` VALUES (95,30,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:868;s:4:\"file\";s:73:\"2021/02/ensalada-de-boletus-paleta-iberica-y-mayonesa-de-almendras-01.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:73:\"ensalada-de-boletus-paleta-iberica-y-mayonesa-de-almendras-01-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:74:\"ensalada-de-boletus-paleta-iberica-y-mayonesa-de-almendras-01-1024x593.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:593;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:73:\"ensalada-de-boletus-paleta-iberica-y-mayonesa-de-almendras-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:73:\"ensalada-de-boletus-paleta-iberica-y-mayonesa-de-almendras-01-768x444.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1446333642\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"32\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (96,31,'_wp_attached_file','2021/02/ensalada-de-jamon-de-pato-aguacate-aceitunas-y-queso-feta-01.jpg');
INSERT INTO `wp_postmeta` VALUES (97,31,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:868;s:4:\"file\";s:72:\"2021/02/ensalada-de-jamon-de-pato-aguacate-aceitunas-y-queso-feta-01.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:72:\"ensalada-de-jamon-de-pato-aguacate-aceitunas-y-queso-feta-01-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:73:\"ensalada-de-jamon-de-pato-aguacate-aceitunas-y-queso-feta-01-1024x593.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:593;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:72:\"ensalada-de-jamon-de-pato-aguacate-aceitunas-y-queso-feta-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:72:\"ensalada-de-jamon-de-pato-aguacate-aceitunas-y-queso-feta-01-768x444.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1460762360\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"33\";s:3:\"iso\";s:4:\"1000\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (98,32,'_wp_attached_file','2021/02/lasana-a-la-putanesca-01.jpg');
INSERT INTO `wp_postmeta` VALUES (99,32,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:868;s:4:\"file\";s:36:\"2021/02/lasana-a-la-putanesca-01.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"lasana-a-la-putanesca-01-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"lasana-a-la-putanesca-01-1024x593.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:593;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"lasana-a-la-putanesca-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"lasana-a-la-putanesca-01-768x444.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1451958417\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (100,33,'_wp_attached_file','2021/02/mejillones-con-curry-verde-tailandes-01.jpg');
INSERT INTO `wp_postmeta` VALUES (101,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:868;s:4:\"file\";s:51:\"2021/02/mejillones-con-curry-verde-tailandes-01.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"mejillones-con-curry-verde-tailandes-01-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:52:\"mejillones-con-curry-verde-tailandes-01-1024x593.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:593;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"mejillones-con-curry-verde-tailandes-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"mejillones-con-curry-verde-tailandes-01-768x444.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1459715658\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"33\";s:3:\"iso\";s:4:\"2000\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (102,34,'_wp_attached_file','2021/02/vichyssoise-de-esparragos-blancos-01.jpg');
INSERT INTO `wp_postmeta` VALUES (103,34,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:868;s:4:\"file\";s:48:\"2021/02/vichyssoise-de-esparragos-blancos-01.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"vichyssoise-de-esparragos-blancos-01-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"vichyssoise-de-esparragos-blancos-01-1024x593.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:593;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"vichyssoise-de-esparragos-blancos-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"vichyssoise-de-esparragos-blancos-01-768x444.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (104,35,'_edit_lock','1613488965:1');
INSERT INTO `wp_postmeta` VALUES (107,35,'_thumbnail_id','29');
INSERT INTO `wp_postmeta` VALUES (108,37,'_edit_lock','1613489154:1');
INSERT INTO `wp_postmeta` VALUES (109,37,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (110,37,'_wp_trash_meta_time','1613489309');
INSERT INTO `wp_postmeta` VALUES (111,37,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (112,39,'_edit_lock','1613489373:1');
INSERT INTO `wp_postmeta` VALUES (115,39,'_thumbnail_id','34');
INSERT INTO `wp_postmeta` VALUES (116,41,'_edit_lock','1613489494:1');
INSERT INTO `wp_postmeta` VALUES (119,41,'_thumbnail_id','31');
INSERT INTO `wp_postmeta` VALUES (120,43,'_edit_lock','1613489716:1');
INSERT INTO `wp_postmeta` VALUES (123,43,'_thumbnail_id','32');
INSERT INTO `wp_postmeta` VALUES (124,45,'_edit_lock','1613489635:1');
INSERT INTO `wp_postmeta` VALUES (127,45,'_thumbnail_id','30');
INSERT INTO `wp_postmeta` VALUES (128,47,'_edit_lock','1613489695:1');
INSERT INTO `wp_postmeta` VALUES (131,47,'_thumbnail_id','33');
INSERT INTO `wp_postmeta` VALUES (132,49,'_edit_lock','1613576328:1');
INSERT INTO `wp_postmeta` VALUES (135,49,'_thumbnail_id','28');
INSERT INTO `wp_postmeta` VALUES (136,52,'_edit_lock','1613506608:1');
INSERT INTO `wp_postmeta` VALUES (137,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (138,54,'_edit_lock','1613492513:1');
INSERT INTO `wp_postmeta` VALUES (139,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (140,52,'menu_del_dia','a:3:{i:0;s:2:\"45\";i:1;s:2:\"43\";i:2;s:2:\"49\";}');
INSERT INTO `wp_postmeta` VALUES (141,52,'_menu_del_dia','field_602befe104911');
INSERT INTO `wp_postmeta` VALUES (142,56,'menu_del_dia','a:3:{i:0;s:2:\"45\";i:1;s:2:\"43\";i:2;s:2:\"49\";}');
INSERT INTO `wp_postmeta` VALUES (143,56,'_menu_del_dia','field_602befe104911');
INSERT INTO `wp_postmeta` VALUES (144,12,'_wp_page_template','recetas.php');
INSERT INTO `wp_postmeta` VALUES (145,18,'_wp_page_template','recetas.php');
INSERT INTO `wp_postmeta` VALUES (146,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (147,3,'_wp_trash_meta_time','1613582000');
INSERT INTO `wp_postmeta` VALUES (148,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (149,58,'_form','<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]');
INSERT INTO `wp_postmeta` VALUES (150,58,'_mail','a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:44:\"[_site_title] <wordpress@misrecetaswp.local>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (151,58,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:44:\"[_site_title] <wordpress@misrecetaswp.local>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (152,58,'_messages','a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}');
INSERT INTO `wp_postmeta` VALUES (153,58,'_additional_settings',NULL);
INSERT INTO `wp_postmeta` VALUES (154,58,'_locale','en_US');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-02-10 18:37:52','2021-02-10 18:37:52','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2021-02-16 15:03:23','2021-02-16 15:03:23','',0,'http://misrecetaswp.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-02-10 18:37:52','2021-02-10 18:37:52','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://misrecetaswp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2021-02-11 19:34:35','2021-02-11 19:34:35','',0,'http://misrecetaswp.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-02-10 18:37:52','2021-02-10 18:37:52','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://misrecetaswp.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2021-02-17 17:13:20','2021-02-17 17:13:20','',0,'http://misrecetaswp.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2021-02-10 19:34:24','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-02-10 19:34:24','0000-00-00 00:00:00','',0,'http://misrecetaswp.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-02-10 19:50:36','0000-00-00 00:00:00','\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Create your website with blocks</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://misrecetaswp.local/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Tremieres&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://misrecetaswp.local/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;In the Bois de Boulogne&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://misrecetaswp.local/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Young Woman in Mauve&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Add block patterns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Frame your images</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Select the &quot;Frame&quot; block style to activate it.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Overlap columns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Choose the &quot;Overlap&quot; block style to try it out.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Need help?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->','Create your website with blocks','','auto-draft','closed','closed','','','','','2021-02-10 19:50:36','0000-00-00 00:00:00','',0,'http://misrecetaswp.local/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-02-10 19:50:36','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->','About','','auto-draft','closed','closed','','','','','2021-02-10 19:50:36','0000-00-00 00:00:00','',0,'http://misrecetaswp.local/?page_id=6',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-02-10 19:50:36','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->','Contact','','auto-draft','closed','closed','','','','','2021-02-10 19:50:36','0000-00-00 00:00:00','',0,'http://misrecetaswp.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-02-10 19:50:36','0000-00-00 00:00:00','','Blog','','auto-draft','closed','closed','','','','','2021-02-10 19:50:36','0000-00-00 00:00:00','',0,'http://misrecetaswp.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-02-10 19:50:36','0000-00-00 00:00:00','{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://misrecetaswp.local/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 6,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Secondary menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-10 19:50:36\"\n    }\n}','','','auto-draft','closed','closed','','74169037-ff83-4df1-8d17-075d66ddb521','','','2021-02-10 19:50:36','0000-00-00 00:00:00','',0,'http://misrecetaswp.local/?p=9',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-02-11 19:26:30','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2021-02-11 19:26:30','0000-00-00 00:00:00','',0,'http://misrecetaswp.local/?p=10',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-02-11 19:26:30','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-02-11 19:26:30','0000-00-00 00:00:00','',0,'http://misrecetaswp.local/?p=11',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-02-11 19:27:21','2021-02-11 19:27:21','<!-- wp:paragraph -->\n<p>Aqui se guardaran mis recetas</p>\n<!-- /wp:paragraph -->','Recetas','','publish','closed','closed','','recetas','','','2021-02-17 15:17:49','2021-02-17 15:17:49','',0,'http://misrecetaswp.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-02-11 19:27:21','2021-02-11 19:27:21','<!-- wp:paragraph -->\n<p>Aqui se guardaran mis recetas</p>\n<!-- /wp:paragraph -->','Recetas','','inherit','closed','closed','','12-revision-v1','','','2021-02-11 19:27:21','2021-02-11 19:27:21','',12,'http://misrecetaswp.local/12-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-02-11 19:29:15','2021-02-11 19:29:15','','Inicio','','publish','closed','closed','','home','','','2021-02-11 19:37:26','2021-02-11 19:37:26','',0,'http://misrecetaswp.local/?p=14',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-02-11 19:29:15','2021-02-11 19:29:15',' ','','','publish','closed','closed','','15','','','2021-02-11 19:37:26','2021-02-11 19:37:26','',0,'http://misrecetaswp.local/?p=15',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-02-11 19:34:35','2021-02-11 19:34:35','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://misrecetaswp.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-02-11 19:34:35','2021-02-11 19:34:35','',2,'http://misrecetaswp.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-02-11 19:35:38','2021-02-11 19:35:38','<!-- wp:contact-form-7/contact-form-selector {\"id\":58,\"title\":\"Contact form 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"58\" title=\"Contact form 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->','Contactar','','publish','closed','closed','','contactar','','','2021-02-17 17:18:45','2021-02-17 17:18:45','',0,'http://misrecetaswp.local/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-02-11 19:35:38','2021-02-11 19:35:38','<!-- wp:paragraph -->\n<p>Formulario de contactar</p>\n<!-- /wp:paragraph -->','Contactar','','inherit','closed','closed','','18-revision-v1','','','2021-02-11 19:35:38','2021-02-11 19:35:38','',18,'http://misrecetaswp.local/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-02-11 19:36:44','2021-02-11 19:36:44',' ','','','publish','closed','closed','','20','','','2021-02-11 19:37:26','2021-02-11 19:37:26','',0,'http://misrecetaswp.local/?p=20',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-02-11 20:28:29','2021-02-11 20:28:29','','copyright','','inherit','open','closed','','copyright','','','2021-02-11 20:28:29','2021-02-11 20:28:29','',0,'http://misrecetaswp.local/wp-content/uploads/2021/02/copyright.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-02-11 20:28:29','2021-02-11 20:28:29','','ico_Food','','inherit','open','closed','','ico_food','','','2021-02-11 20:28:29','2021-02-11 20:28:29','',0,'http://misrecetaswp.local/wp-content/uploads/2021/02/ico_Food.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-02-11 20:28:29','2021-02-11 20:28:29','','MisRecetas','','inherit','open','closed','','misrecetas','','','2021-02-11 20:28:29','2021-02-11 20:28:29','',0,'http://misrecetaswp.local/wp-content/uploads/2021/02/MisRecetas.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-02-11 20:30:17','2021-02-11 20:30:17','http://misrecetaswp.local/wp-content/uploads/2021/02/cropped-ico_Food.png','cropped-ico_Food.png','','inherit','open','closed','','cropped-ico_food-png','','','2021-02-11 20:30:17','2021-02-11 20:30:17','',0,'http://misrecetaswp.local/wp-content/uploads/2021/02/cropped-ico_Food.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-02-11 20:32:47','2021-02-11 20:32:47','{\n    \"site_icon\": {\n        \"value\": 26,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-11 20:32:17\"\n    }\n}','','','trash','closed','closed','','0b09ca46-3c52-40c1-a59b-bfecd46c5aff','','','2021-02-11 20:32:47','2021-02-11 20:32:47','',0,'http://misrecetaswp.local/?p=25',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-02-11 20:31:47','2021-02-11 20:31:47','http://misrecetaswp.local/wp-content/uploads/2021/02/cropped-MisRecetas.png','cropped-MisRecetas.png','','inherit','open','closed','','cropped-misrecetas-png','','','2021-02-11 20:31:47','2021-02-11 20:31:47','',0,'http://misrecetaswp.local/wp-content/uploads/2021/02/cropped-MisRecetas.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-02-16 15:03:23','2021-02-16 15:03:23','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2021-02-16 15:03:23','2021-02-16 15:03:23','',1,'http://misrecetaswp.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-02-16 15:05:49','2021-02-16 15:05:49','','crema-catalana-01','','inherit','open','closed','','crema-catalana-01','','','2021-02-16 15:05:49','2021-02-16 15:05:49','',0,'http://misrecetaswp.local/wp-content/uploads/2021/02/crema-catalana-01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-02-16 15:05:49','2021-02-16 15:05:49','','crema-de-setas-y-avellanas-01','','inherit','open','closed','','crema-de-setas-y-avellanas-01','','','2021-02-16 15:05:49','2021-02-16 15:05:49','',0,'http://misrecetaswp.local/wp-content/uploads/2021/02/crema-de-setas-y-avellanas-01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-02-16 15:05:50','2021-02-16 15:05:50','','ensalada-de-boletus-paleta-iberica-y-mayonesa-de-almendras-01','','inherit','open','closed','','ensalada-de-boletus-paleta-iberica-y-mayonesa-de-almendras-01','','','2021-02-16 15:05:50','2021-02-16 15:05:50','',0,'http://misrecetaswp.local/wp-content/uploads/2021/02/ensalada-de-boletus-paleta-iberica-y-mayonesa-de-almendras-01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-02-16 15:05:50','2021-02-16 15:05:50','','ensalada-de-jamon-de-pato-aguacate-aceitunas-y-queso-feta-01','','inherit','open','closed','','ensalada-de-jamon-de-pato-aguacate-aceitunas-y-queso-feta-01','','','2021-02-16 15:05:50','2021-02-16 15:05:50','',0,'http://misrecetaswp.local/wp-content/uploads/2021/02/ensalada-de-jamon-de-pato-aguacate-aceitunas-y-queso-feta-01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-02-16 15:05:51','2021-02-16 15:05:51','','lasana-a-la-putanesca-01','','inherit','open','closed','','lasana-a-la-putanesca-01','','','2021-02-16 15:05:51','2021-02-16 15:05:51','',0,'http://misrecetaswp.local/wp-content/uploads/2021/02/lasana-a-la-putanesca-01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-02-16 15:05:51','2021-02-16 15:05:51','','mejillones-con-curry-verde-tailandes-01','','inherit','open','closed','','mejillones-con-curry-verde-tailandes-01','','','2021-02-16 15:05:51','2021-02-16 15:05:51','',0,'http://misrecetaswp.local/wp-content/uploads/2021/02/mejillones-con-curry-verde-tailandes-01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-02-16 15:05:52','2021-02-16 15:05:52','','vichyssoise-de-esparragos-blancos-01','','inherit','open','closed','','vichyssoise-de-esparragos-blancos-01','','','2021-02-16 15:05:52','2021-02-16 15:05:52','',0,'http://misrecetaswp.local/wp-content/uploads/2021/02/vichyssoise-de-esparragos-blancos-01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-02-16 15:24:11','2021-02-16 15:24:11','<!-- wp:list {\"ordered\":true} -->\n<ol><li>En una cazuela ponemos un poco de aceite y a fuego medio pochamos la cebolla cortada en juliana hasta que esté transparente.</li><li>Las setas las limpiamos bien de restos de tierra y las cortamos en trozos pequeños, las echamos en la cazuela y las cocinamos unos 5 minutos junto con la cebolla.</li><li>Echamos las avellanas y si queremos potenciar el sabor de la crema le podemos añadir 2 cucharadas de harina de boletus o boletus secos.</li><li>Añadimos el caldo de pollo y cocinamos todo a fuego medio durante 15 minutos.</li><li>Retiramos del fuego y en caliente trituramos bien junto con la nata y el aceite de trufa hasta conseguir una crema fina, el aceite de trufa nos ayudará a potenciar más aún el sabor de la crema pero si no tenemos lo podemos omitir. Ponemos a punto de sal. Si queremos la crema más fina aún podemos pasarla por un colador.</li><li>Presentamos y decoramos con unas avellanas partidas por la mitad y un chorrito de aceite de trufa.</li></ol>\n<!-- /wp:list -->','CREMA DE SETAS Y AVELLANAS','','publish','open','open','','crema-de-setas-y-avellanas','','','2021-02-16 15:24:11','2021-02-16 15:24:11','',0,'http://misrecetaswp.local/?p=35',0,'post','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-02-16 15:19:29','2021-02-16 15:19:29','<!-- wp:list {\"ordered\":true} -->\n<ol><li>En una cazuela ponemos un poco de aceite y a fuego medio pochamos la cebolla cortada en juliana hasta que esté transparente.</li><li>Las setas las limpiamos bien de restos de tierra y las cortamos en trozos pequeños, las echamos en la cazuela y las cocinamos unos 5 minutos junto con la cebolla.</li><li>Echamos las avellanas y si queremos potenciar el sabor de la crema le podemos añadir 2 cucharadas de harina de boletus o boletus secos.</li><li>Añadimos el caldo de pollo y cocinamos todo a fuego medio durante 15 minutos.</li><li>Retiramos del fuego y en caliente trituramos bien junto con la nata y el aceite de trufa hasta conseguir una crema fina, el aceite de trufa nos ayudará a potenciar más aún el sabor de la crema pero si no tenemos lo podemos omitir. Ponemos a punto de sal. Si queremos la crema más fina aún podemos pasarla por un colador.</li><li>Presentamos y decoramos con unas avellanas partidas por la mitad y un chorrito de aceite de trufa.</li></ol>\n<!-- /wp:list -->','CREMA DE SETAS Y AVELLANAS','','inherit','closed','closed','','35-revision-v1','','','2021-02-16 15:19:29','2021-02-16 15:19:29','',35,'http://misrecetaswp.local/35-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-02-16 15:28:29','2021-02-16 15:28:29','<!-- wp:list {\"ordered\":true} -->\n<ol><li>Lavamos y pelamos las patatas. Los espárragos blancos los lavamos bien y pelamos el tallo con un pelapatatas, si usamos espárragos en conserva los añadiremos al final del proceso, justo cuando vayamos a triturar la vichysoisse. Cortamos las patatas, los espárragos blancos y la cebolla tierna en cubos medianos.</li><li>En un cazo echamos un buen chorro de aceite y una cucharada de mantequilla, pochamos todas las verduras a fuego lento sin que</li></ol>\n<!-- /wp:list -->','VICHYSSOISE DE ESPÁRRAGOS BLANCOS','','trash','open','open','','__trashed','','','2021-02-16 15:28:29','2021-02-16 15:28:29','',0,'http://misrecetaswp.local/?p=37',0,'post','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-02-16 15:28:29','2021-02-16 15:28:29','<!-- wp:list {\"ordered\":true} -->\n<ol><li>Lavamos y pelamos las patatas. Los espárragos blancos los lavamos bien y pelamos el tallo con un pelapatatas, si usamos espárragos en conserva los añadiremos al final del proceso, justo cuando vayamos a triturar la vichysoisse. Cortamos las patatas, los espárragos blancos y la cebolla tierna en cubos medianos.</li><li>En un cazo echamos un buen chorro de aceite y una cucharada de mantequilla, pochamos todas las verduras a fuego lento sin que</li></ol>\n<!-- /wp:list -->','VICHYSSOISE DE ESPÁRRAGOS BLANCOS','','inherit','closed','closed','','37-revision-v1','','','2021-02-16 15:28:29','2021-02-16 15:28:29','',37,'http://misrecetaswp.local/37-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-02-16 15:31:09','2021-02-16 15:31:09','<!-- wp:list {\"ordered\":true} -->\n<ol><li>Lavamos y pelamos las patatas. Los espárragos blancos los lavamos bien y pelamos el tallo con un pelapatatas, si usamos espárragos en conserva los añadiremos al final del proceso, justo cuando vayamos a triturar la vichysoisse. Cortamos las patatas, los espárragos blancos y la cebolla tierna en cubos medianos.</li><li>En un cazo echamos un buen chorro de aceite y una cucharada de mantequilla, pochamos todas las verduras a fuego lento sin que se doren excesivamente durante 8-12 minutos.</li><li>Cubrimos con el caldo o agua y cocemos 30 minutos a fuego medio sin tapar.</li><li>Apartamos del fuego y añadimos la nata y el resto de mantequilla, trituramos con una batidora. Ponemos a punto de sal y echamos un chorrito de limón. Podemos colar si se desea obtener una textura más fina. Dejamos enfriar en la nevera al menos un par de horas antes de consumirlo.</li><li>Podemos acompañarlo con unas setas salteadas, un poco de jamón cortado en virutas y un chorrito de aceite de oliva virgen extra.</li></ol>\n<!-- /wp:list -->','VICHYSSOISE DE ESPÁRRAGOS BLANCOS','','publish','open','open','','vichyssoise-de-esparragos-blancos','','','2021-02-16 15:31:09','2021-02-16 15:31:09','',0,'http://misrecetaswp.local/?p=39',0,'post','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-02-16 15:31:09','2021-02-16 15:31:09','<!-- wp:list {\"ordered\":true} -->\n<ol><li>Lavamos y pelamos las patatas. Los espárragos blancos los lavamos bien y pelamos el tallo con un pelapatatas, si usamos espárragos en conserva los añadiremos al final del proceso, justo cuando vayamos a triturar la vichysoisse. Cortamos las patatas, los espárragos blancos y la cebolla tierna en cubos medianos.</li><li>En un cazo echamos un buen chorro de aceite y una cucharada de mantequilla, pochamos todas las verduras a fuego lento sin que se doren excesivamente durante 8-12 minutos.</li><li>Cubrimos con el caldo o agua y cocemos 30 minutos a fuego medio sin tapar.</li><li>Apartamos del fuego y añadimos la nata y el resto de mantequilla, trituramos con una batidora. Ponemos a punto de sal y echamos un chorrito de limón. Podemos colar si se desea obtener una textura más fina. Dejamos enfriar en la nevera al menos un par de horas antes de consumirlo.</li><li>Podemos acompañarlo con unas setas salteadas, un poco de jamón cortado en virutas y un chorrito de aceite de oliva virgen extra.</li></ol>\n<!-- /wp:list -->','VICHYSSOISE DE ESPÁRRAGOS BLANCOS','','inherit','closed','closed','','39-revision-v1','','','2021-02-16 15:31:09','2021-02-16 15:31:09','',39,'http://misrecetaswp.local/39-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-02-16 15:33:38','2021-02-16 15:33:38','<!-- wp:paragraph -->\n<p>Para la vinagreta griega</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Mezclamos todos los ingredientes en un bol con la ayuda de una varilla de batir. Ponemos a punto de sal y pimienta.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Para la ensalada de jamón de pato, aguacate, aceitunas y queso feta</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Cortamos el queso feta en cubos. Pelamos el aguacate, le quitamos el hueso y los cortamos también en cubos.</li><li>En un bol añadimos todos los ingredientes menos el jamón de pato y mezclamos bien para integrar la vinagreta.</li><li>Servimos la ensalada y acabamos con unas lonchas de jamón de pato.</li></ol>\n<!-- /wp:list -->','ENSALADA DE JAMÓN DE PATO, AGUACATE, ACEITUNAS Y QUESO FETA','','publish','open','open','','ensalada-de-jamon-de-pato-aguacate-aceitunas-y-queso-feta','','','2021-02-16 15:33:38','2021-02-16 15:33:38','',0,'http://misrecetaswp.local/?p=41',0,'post','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-02-16 15:33:38','2021-02-16 15:33:38','<!-- wp:paragraph -->\n<p>Para la vinagreta griega</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Mezclamos todos los ingredientes en un bol con la ayuda de una varilla de batir. Ponemos a punto de sal y pimienta.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Para la ensalada de jamón de pato, aguacate, aceitunas y queso feta</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Cortamos el queso feta en cubos. Pelamos el aguacate, le quitamos el hueso y los cortamos también en cubos.</li><li>En un bol añadimos todos los ingredientes menos el jamón de pato y mezclamos bien para integrar la vinagreta.</li><li>Servimos la ensalada y acabamos con unas lonchas de jamón de pato.</li></ol>\n<!-- /wp:list -->','ENSALADA DE JAMÓN DE PATO, AGUACATE, ACEITUNAS Y QUESO FETA','','inherit','closed','closed','','41-revision-v1','','','2021-02-16 15:33:38','2021-02-16 15:33:38','',41,'http://misrecetaswp.local/41-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-02-16 15:35:14','2021-02-16 15:35:14','<!-- wp:paragraph -->\n<p>Para la salsa putanesca</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Picamos muy finos los dientes de ajo, cortamos la cebolla en juliana fina y cortamos cada aceitunas en cuatro trozos.</li><li>Echamos un buen chorro de aceite de oliva en una cazuela y cocinamos a fuego medio la cebolla y el ajo unos 5 minutos.</li><li>Echamos las anchoas con el aceite de la lata, las aceitunas, las alcaparras y la guindilla cayena partida por la mitad, cocinamos el conjunto un par de minutos más.</li><li>Echamos el tomate triturado, tapamos la cazuela y cocinamos 30 minutos a fuego lento, removiendo de vez en cuando. Destapamos la cazuela y cocinamos 15-20 minutos más hasta que la salsa haya espesado y esté sabrosa.</li><li>Probamos y ponemos a punto de sal si fuego necesario, ya que las anchoas y las aceitunas negras son saladas. Podemos conservar esta salsa perfectamente en el frigorífico 5-6 días o congelarla.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Para la salsa bechamel</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Lo más importante para una bechamel rica y de textura suave es usar una varilla de batir y trabajar mucho la salsa. Tendremos los ingredientes bien pesados y la leche caliente.</li><li>Ponemos en una cazuela (mejor antiadherente) la mantequilla a fuego medio hasta que se derrita, entonces echamos la harina y cocinamos un par de minutos a fuego suave, entonces vamos echando toda la leche poco a poco mientras batimos con la varilla. Cocinamos la bechamel a fuego suave al menos 30 minutos siempre sin dejar de batir con la varilla. Cuanto más dejemos la bechamel en el fuego mejor textura y sabor conseguiremos. Si nos queda muy espesa podemos echar un poco más de leche extra. Es mejor que nos quede más líquida que espesa ya que cuando enfría espesa mucho.</li><li>Retiramos del fuego y ponemos a punto de sal y nuez moscada. Tapamos con papel film a piel (es decir tocando la bechamel con el papel film) para evitar que nos haga costra.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Para la lasaña a la putanesca</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Pasamos la mantequilla por todo el molde que queramos usar para hacer la lasaña, así evitaremos que se nos pegue y podamos sacarla con más facilidad.</li><li>Cocinamos las láminas de pasta siguiendo las instrucciones del fabricante. En la mayoría de ocasiones dejándolas en remojo en agua caliente unos minutos. Secamos las láminas de pasta.</li><li>Ponemos una capa de láminas de pasta para cubrir el fondo del molde, encima colocamos un 2 o 3 cucharadas de salsa putanesca (dependiendo del tamaño del molde, debe quedar una capa generosa y uniforme de salsa) y una cucharada de bechamel bien repartida, cubrimos con otra capa de láminas de pasta y encima hacemos lo mismo que antes, es decir 2 o 3 cucharadas de putanesca y una de bechamel. Si el tamaño del molde nos lo permite repetimos el proceso una o dos veces más. Acabamos con bechamel para ello ponemos una capa de láminas de pasta y 2 o 3 cucharadas de salsa bechamel y finalmente espolvoreamos con parmesano.</li><li>El resumen es: pasta → salsa + bechamel → pasta → salsa + bechamel → pasta → bechamel + parmesano</li><li>Podemos guardar la lasaña bien tapada en el frigorífico incluso un 2-3 de días sin problemas.</li><li>En el momento de servir horneamos a 200º grados durante 15-20 minutos o hasta que la parte de arriba esté ligeramente dorada. Podemos acabar dándole un golpe de gratinado en la parte superior.</li></ol>\n<!-- /wp:list -->','LASAÑA A LA PUTANESCA','','publish','open','open','','lasana-a-la-putanesca','','','2021-02-16 15:35:14','2021-02-16 15:35:14','',0,'http://misrecetaswp.local/?p=43',0,'post','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-02-16 15:35:14','2021-02-16 15:35:14','<!-- wp:paragraph -->\n<p>Para la salsa putanesca</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Picamos muy finos los dientes de ajo, cortamos la cebolla en juliana fina y cortamos cada aceitunas en cuatro trozos.</li><li>Echamos un buen chorro de aceite de oliva en una cazuela y cocinamos a fuego medio la cebolla y el ajo unos 5 minutos.</li><li>Echamos las anchoas con el aceite de la lata, las aceitunas, las alcaparras y la guindilla cayena partida por la mitad, cocinamos el conjunto un par de minutos más.</li><li>Echamos el tomate triturado, tapamos la cazuela y cocinamos 30 minutos a fuego lento, removiendo de vez en cuando. Destapamos la cazuela y cocinamos 15-20 minutos más hasta que la salsa haya espesado y esté sabrosa.</li><li>Probamos y ponemos a punto de sal si fuego necesario, ya que las anchoas y las aceitunas negras son saladas. Podemos conservar esta salsa perfectamente en el frigorífico 5-6 días o congelarla.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Para la salsa bechamel</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Lo más importante para una bechamel rica y de textura suave es usar una varilla de batir y trabajar mucho la salsa. Tendremos los ingredientes bien pesados y la leche caliente.</li><li>Ponemos en una cazuela (mejor antiadherente) la mantequilla a fuego medio hasta que se derrita, entonces echamos la harina y cocinamos un par de minutos a fuego suave, entonces vamos echando toda la leche poco a poco mientras batimos con la varilla. Cocinamos la bechamel a fuego suave al menos 30 minutos siempre sin dejar de batir con la varilla. Cuanto más dejemos la bechamel en el fuego mejor textura y sabor conseguiremos. Si nos queda muy espesa podemos echar un poco más de leche extra. Es mejor que nos quede más líquida que espesa ya que cuando enfría espesa mucho.</li><li>Retiramos del fuego y ponemos a punto de sal y nuez moscada. Tapamos con papel film a piel (es decir tocando la bechamel con el papel film) para evitar que nos haga costra.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Para la lasaña a la putanesca</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Pasamos la mantequilla por todo el molde que queramos usar para hacer la lasaña, así evitaremos que se nos pegue y podamos sacarla con más facilidad.</li><li>Cocinamos las láminas de pasta siguiendo las instrucciones del fabricante. En la mayoría de ocasiones dejándolas en remojo en agua caliente unos minutos. Secamos las láminas de pasta.</li><li>Ponemos una capa de láminas de pasta para cubrir el fondo del molde, encima colocamos un 2 o 3 cucharadas de salsa putanesca (dependiendo del tamaño del molde, debe quedar una capa generosa y uniforme de salsa) y una cucharada de bechamel bien repartida, cubrimos con otra capa de láminas de pasta y encima hacemos lo mismo que antes, es decir 2 o 3 cucharadas de putanesca y una de bechamel. Si el tamaño del molde nos lo permite repetimos el proceso una o dos veces más. Acabamos con bechamel para ello ponemos una capa de láminas de pasta y 2 o 3 cucharadas de salsa bechamel y finalmente espolvoreamos con parmesano.</li><li>El resumen es: pasta → salsa + bechamel → pasta → salsa + bechamel → pasta → bechamel + parmesano</li><li>Podemos guardar la lasaña bien tapada en el frigorífico incluso un 2-3 de días sin problemas.</li><li>En el momento de servir horneamos a 200º grados durante 15-20 minutos o hasta que la parte de arriba esté ligeramente dorada. Podemos acabar dándole un golpe de gratinado en la parte superior.</li></ol>\n<!-- /wp:list -->','LASAÑA A LA PUTANESCA','','inherit','closed','closed','','43-revision-v1','','','2021-02-16 15:35:14','2021-02-16 15:35:14','',43,'http://misrecetaswp.local/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-02-16 15:36:17','2021-02-16 15:36:17','<!-- wp:paragraph -->\n<p>Para la mayonesa de almendras</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Dejamos las almendras cubiertas con agua la noche anterior. Pasado el tiempo escurrimos las almendras.</li><li>Trituramos mucho las almendras hidratadas junto a los 50 ml de agua hasta conseguir una pasta fina.</li><li>Echamos el aceite de oliva poco a poco mientras seguimos triturando. Podemos echar más o menos aceite para conseguir el espesor deseado, cuanto más aceite, más espesa nos quedará la mayonesa. Ponemos a punto de sal. Nos aguantará en el frigorífico una semana.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Para la ensalada de boletus, paleta ibérica y mayonesa de almendras</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Aliñamos las hojas de lechuga con sal y aceite de oliva virgen extra.</li><li>Los boletus edulis los cortamos en cubos grandes y los salteamos a fuego fuerte en una sartén con aceite y sal.</li><li>En un plato colocamos en el fondo la mayonesa de almendra, encima las paleta de cerdo ibérica, los boletus edulis y la rúcula aliñada.</li></ol>\n<!-- /wp:list -->','ENSALADA DE BOLETUS, PALETA IBÉRICA Y MAYONESA DE ALMENDRAS','','publish','open','open','','ensalada-de-boletus-paleta-iberica-y-mayonesa-de-almendras','','','2021-02-16 15:36:17','2021-02-16 15:36:17','',0,'http://misrecetaswp.local/?p=45',0,'post','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-02-16 15:36:17','2021-02-16 15:36:17','<!-- wp:paragraph -->\n<p>Para la mayonesa de almendras</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Dejamos las almendras cubiertas con agua la noche anterior. Pasado el tiempo escurrimos las almendras.</li><li>Trituramos mucho las almendras hidratadas junto a los 50 ml de agua hasta conseguir una pasta fina.</li><li>Echamos el aceite de oliva poco a poco mientras seguimos triturando. Podemos echar más o menos aceite para conseguir el espesor deseado, cuanto más aceite, más espesa nos quedará la mayonesa. Ponemos a punto de sal. Nos aguantará en el frigorífico una semana.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Para la ensalada de boletus, paleta ibérica y mayonesa de almendras</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Aliñamos las hojas de lechuga con sal y aceite de oliva virgen extra.</li><li>Los boletus edulis los cortamos en cubos grandes y los salteamos a fuego fuerte en una sartén con aceite y sal.</li><li>En un plato colocamos en el fondo la mayonesa de almendra, encima las paleta de cerdo ibérica, los boletus edulis y la rúcula aliñada.</li></ol>\n<!-- /wp:list -->','ENSALADA DE BOLETUS, PALETA IBÉRICA Y MAYONESA DE ALMENDRAS','','inherit','closed','closed','','45-revision-v1','','','2021-02-16 15:36:17','2021-02-16 15:36:17','',45,'http://misrecetaswp.local/45-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-02-16 15:37:12','2021-02-16 15:37:12','<!-- wp:list {\"ordered\":true} -->\n<ol><li>Normalmente los mejillones o clóchinas suelen venir muy limpios cuando los compramos en la pescadería pero nos podemos asegurar poniendo los mejillones en agua con hielo y sal durante un par de horas para suelten los restos de arena que puedan tener. Quitamos las barbas de los mejillones tirando suavemente hacia fuera.</li><li>En una cazuela grande y con tapa echamos un chorrito de aceite de oliva y la pasta de curry verde, cocinamos a fuego medio un minuto para que el curry verde desprenda todo su aroma, echamos la leche de coco y dejamos cocinar un minuto más. Subimos el fuego al máximo y echamos los mejillones, seguidamente ponemos la tapa a la cazuela y dejamos a fuego máximo durante 1 minuto, si nos gustan más hechos podemos dejarlos un par de minutos pero no mucho más porque el mejillón pierde mucho sabor, tamaño y textura.</li><li>Servimos acompañando del caldo que ha soltado.</li></ol>\n<!-- /wp:list -->','MEJILLONES CON CURRY VERDE TAILANDÉS','','publish','open','open','','mejillones-con-curry-verde-tailandes','','','2021-02-16 15:37:12','2021-02-16 15:37:12','',0,'http://misrecetaswp.local/?p=47',0,'post','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-02-16 15:37:12','2021-02-16 15:37:12','<!-- wp:list {\"ordered\":true} -->\n<ol><li>Normalmente los mejillones o clóchinas suelen venir muy limpios cuando los compramos en la pescadería pero nos podemos asegurar poniendo los mejillones en agua con hielo y sal durante un par de horas para suelten los restos de arena que puedan tener. Quitamos las barbas de los mejillones tirando suavemente hacia fuera.</li><li>En una cazuela grande y con tapa echamos un chorrito de aceite de oliva y la pasta de curry verde, cocinamos a fuego medio un minuto para que el curry verde desprenda todo su aroma, echamos la leche de coco y dejamos cocinar un minuto más. Subimos el fuego al máximo y echamos los mejillones, seguidamente ponemos la tapa a la cazuela y dejamos a fuego máximo durante 1 minuto, si nos gustan más hechos podemos dejarlos un par de minutos pero no mucho más porque el mejillón pierde mucho sabor, tamaño y textura.</li><li>Servimos acompañando del caldo que ha soltado.</li></ol>\n<!-- /wp:list -->','MEJILLONES CON CURRY VERDE TAILANDÉS','','inherit','closed','closed','','47-revision-v1','','','2021-02-16 15:37:12','2021-02-16 15:37:12','',47,'http://misrecetaswp.local/47-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-02-16 15:38:24','2021-02-16 15:38:24','<!-- wp:list {\"ordered\":true} -->\n<ol><li>Juntamos en un cazo la leche, la nata, la rama de canela y la corteza de limón. Llevamos a ebullición y retiramos del fuego. Tapamos con papel film y dejamos infusionar 15 minutos. Colamos.</li><li>Juntamos en un bol las yemas primero con la maicena y con una varilla removemos hasta disolver bien la maicena. Seguidamente echamos el azúcar y removemos nuevamente con una varilla hasta disolver el azúcar.</li><li>Echamos una pequeña parte de la infusión de leche y nata, que estará tibia, sobre la mezcla de yemas (con medio vaso es suficiente), removemos bien con la varilla hasta que no quede ningún grumo. Entonces ya podemos juntar todo en el cazo.</li><li>Cocinamos la mezcla a fuego medio sin dejar de remover con una varilla, pasando la varilla por todas las zonas del cazo para evitar que se nos pegue en el fondo. Justo cuando alcance el hervor y veamos las primeras burbujas retiramos del fuego pero seguimos removiendo un minuto más ya que el cazo sigue teniendo mucha temperatura.</li><li>En caliente repartimos la crema catalana en cazuelitas de barro o donde queramos. Las tapamos con papel film y dejamos enfriar en la nevera.</li><li>En el momento de servir echamos azúcar y quemamos con una pala o un soplete. Si queremos una capa más gruesa de caramelo, echamos azúcar una segunda vez y quemamos nuevamente.</li></ol>\n<!-- /wp:list -->','CREMA CATALANA','','publish','open','open','','crema-catalana','','','2021-02-16 15:38:24','2021-02-16 15:38:24','',0,'http://misrecetaswp.local/?p=49',0,'post','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-02-16 15:38:24','2021-02-16 15:38:24','<!-- wp:list {\"ordered\":true} -->\n<ol><li>Juntamos en un cazo la leche, la nata, la rama de canela y la corteza de limón. Llevamos a ebullición y retiramos del fuego. Tapamos con papel film y dejamos infusionar 15 minutos. Colamos.</li><li>Juntamos en un bol las yemas primero con la maicena y con una varilla removemos hasta disolver bien la maicena. Seguidamente echamos el azúcar y removemos nuevamente con una varilla hasta disolver el azúcar.</li><li>Echamos una pequeña parte de la infusión de leche y nata, que estará tibia, sobre la mezcla de yemas (con medio vaso es suficiente), removemos bien con la varilla hasta que no quede ningún grumo. Entonces ya podemos juntar todo en el cazo.</li><li>Cocinamos la mezcla a fuego medio sin dejar de remover con una varilla, pasando la varilla por todas las zonas del cazo para evitar que se nos pegue en el fondo. Justo cuando alcance el hervor y veamos las primeras burbujas retiramos del fuego pero seguimos removiendo un minuto más ya que el cazo sigue teniendo mucha temperatura.</li><li>En caliente repartimos la crema catalana en cazuelitas de barro o donde queramos. Las tapamos con papel film y dejamos enfriar en la nevera.</li><li>En el momento de servir echamos azúcar y quemamos con una pala o un soplete. Si queremos una capa más gruesa de caramelo, echamos azúcar una segunda vez y quemamos nuevamente.</li></ol>\n<!-- /wp:list -->','CREMA CATALANA','','inherit','closed','closed','','49-revision-v1','','','2021-02-16 15:38:24','2021-02-16 15:38:24','',49,'http://misrecetaswp.local/49-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-02-16 16:07:35','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-02-16 16:07:35','0000-00-00 00:00:00','',0,'http://misrecetaswp.local/?post_type=acf-field-group&p=51',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-02-16 16:15:31','2021-02-16 16:15:31','','Menu del dia','','publish','closed','closed','','menu-del-dia','','','2021-02-16 16:24:41','2021-02-16 16:24:41','',0,'http://misrecetaswp.local/?page_id=52',0,'page','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-02-16 16:15:31','2021-02-16 16:15:31','','Menu del dia','','inherit','closed','closed','','52-revision-v1','','','2021-02-16 16:15:31','2021-02-16 16:15:31','',52,'http://misrecetaswp.local/52-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-02-16 16:20:36','2021-02-16 16:20:36','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"52\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Menú del día','menu-del-dia','publish','closed','closed','','group_602befaf1d07b','','','2021-02-16 16:24:14','2021-02-16 16:24:14','',0,'http://misrecetaswp.local/?post_type=acf-field-group&#038;p=54',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-02-16 16:20:36','2021-02-16 16:20:36','a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}','Menu del dia','menu_del_dia','publish','closed','closed','','field_602befe104911','','','2021-02-16 16:24:14','2021-02-16 16:24:14','',54,'http://misrecetaswp.local/?post_type=acf-field&#038;p=55',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-02-16 16:24:41','2021-02-16 16:24:41','','Menu del dia','','inherit','closed','closed','','52-revision-v1','','','2021-02-16 16:24:41','2021-02-16 16:24:41','',52,'http://misrecetaswp.local/52-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-02-17 17:13:20','2021-02-17 17:13:20','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://misrecetaswp.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2021-02-17 17:13:20','2021-02-17 17:13:20','',3,'http://misrecetaswp.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-02-17 17:14:14','2021-02-17 17:14:14','<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@misrecetaswp.local>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@misrecetaswp.local>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2021-02-17 17:14:14','2021-02-17 17:14:14','',0,'http://misrecetaswp.local/?post_type=wpcf7_contact_form&p=58',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-02-17 17:15:17','2021-02-17 17:15:17','','Contactar','','inherit','closed','closed','','18-revision-v1','','','2021-02-17 17:15:17','2021-02-17 17:15:17','',18,'http://misrecetaswp.local/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-02-17 17:15:27','2021-02-17 17:15:27','<!-- wp:contact-form-7/contact-form-selector {\"id\":58,\"title\":\"Contact form 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"58\" title=\"Contact form 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->','Contactar','','inherit','closed','closed','','18-revision-v1','','','2021-02-17 17:15:27','2021-02-17 17:15:27','',18,'http://misrecetaswp.local/18-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (14,2,0);
INSERT INTO `wp_term_relationships` VALUES (15,2,0);
INSERT INTO `wp_term_relationships` VALUES (20,2,0);
INSERT INTO `wp_term_relationships` VALUES (35,3,0);
INSERT INTO `wp_term_relationships` VALUES (37,1,0);
INSERT INTO `wp_term_relationships` VALUES (39,3,0);
INSERT INTO `wp_term_relationships` VALUES (41,3,0);
INSERT INTO `wp_term_relationships` VALUES (43,4,0);
INSERT INTO `wp_term_relationships` VALUES (45,3,0);
INSERT INTO `wp_term_relationships` VALUES (47,4,0);
INSERT INTO `wp_term_relationships` VALUES (49,5,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Menu 1','menu-1',0);
INSERT INTO `wp_terms` VALUES (3,'Entrante','entrante',0);
INSERT INTO `wp_terms` VALUES (4,'Principal','principal',0);
INSERT INTO `wp_terms` VALUES (5,'Postre','postre',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'session_tokens','a:2:{s:64:\"c412be817fc4ac3e8251d681f67d4d5f9b37a4de2e5e3732c577313aefea86b9\";a:4:{s:10:\"expiration\";i:1614267524;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36\";s:5:\"login\";i:1613057924;}s:64:\"ad75d566ae9314661024cb8f701a16261c2d7bdde7f9d69c11b2866508d5ca20\";a:4:{s:10:\"expiration\";i:1614677068;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36\";s:5:\"login\";i:1613467468;}}');
INSERT INTO `wp_usermeta` VALUES (19,1,'closedpostboxes_dashboard','a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (21,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (25,1,'wp_user-settings-time','1613075565');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BkJlW2o3oRXas5/8hhwMwg1nAjDjFs/','admin','jfgm24@gmail.com','http://misrecetaswp.local','2021-02-10 18:37:52','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-17 18:37:20
