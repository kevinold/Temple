-- MySQL dump 10.13  Distrib 5.5.10, for osx10.6 (i386)
--
-- Host: localhost    Database: temple_rails
-- ------------------------------------------------------
-- Server version	5.5.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `what` varchar(255) DEFAULT NULL,
  `details` text,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ann_date` date DEFAULT NULL,
  `ann_time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Culpa Assumenda Voluptatem','Omnis incidunt suscipit reprehenderit id illum',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','dolores sed exercitationem natus minus','2011-04-25','09:05:36'),(2,'Et Numquam Odit Aut Aut','Nesciunt harum ut voluptatem vel et aliquam perferendis in dolores molestiae tempore explicabo. Occaecati vel nisi et rerum optio laudantium neque debitis alias consequuntur facilis nesciunt eaque. Libero illo soluta asperiores et autem architecto distinctio',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','repellendus','2011-04-08','05:47:14'),(3,'Voluptatem Tempore','Impedit dolorem voluptatem maiores earum voluptatem debitis voluptas autem ullam voluptatem debitis nihil ad soluta. Error maxime odit at autem est molestias deleniti. Consectetur fuga odit quo enim suscipit aliquam reiciendis quisquam perferendis nostrum earum repellendus esse aut voluptas',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','rerum ducimus molestias eos','2011-01-03','04:09:27'),(4,'Quae Ducimus Itaque Ut','Expedita tenetur iure aut ducimus blanditiis ea in voluptatem debitis distinctio sed ut nihil repudiandae',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','rerum','2011-02-12','17:00:13'),(5,'Sed','Ad voluptas repudiandae odio laudantium. Enim eveniet reprehenderit repellendus modi placeat illum voluptatibus. Porro sunt doloremque accusamus suscipit ut a est omnis voluptate modi nisi deleniti libero accusamus explicabo saepe ea incidunt',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','repudiandae voluptatem nihil eos aliquam','2011-05-14','15:52:47'),(6,'Optio A','Modi quaerat hic voluptatem eveniet culpa sunt nisi dolorem ut nihil dolorem. Natus tempore vitae laborum aliquid ducimus molestiae sit minus sint illum perferendis animi. Autem est quos ad in omnis adipisci esse vero nobis officia nesciunt aperiam impedit sed. Mollitia reiciendis fugiat labore officiis alias sapiente ex',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','ea optio','2010-12-18','23:17:05'),(7,'Nostrum Ut Vel Odit','Dicta harum repellat architecto iure ea et ad ea perspiciatis fugiat tenetur sed. Molestiae iusto a ipsum distinctio est voluptatem in id sit fuga ducimus dolorem. Expedita ut natus est veniam aliquam quasi qui quam repellat expedita. Vero consequatur corporis rerum quaerat similique ipsa doloribus voluptatem quibusdam vero aut',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','quis libero officiis','2011-04-17','21:03:08'),(8,'Qui Rerum Qui Voluptatem','Temporibus voluptatem tempora unde quo ipsa accusamus debitis culpa sit quae error. Beatae non distinctio voluptatem ut animi dolores aliquam. Voluptas adipisci dolorum quod aspernatur sit quo saepe eos cupiditate est vel iure rerum aut enim nulla accusamus. Id non aut eum temporibus minima cumque sit non quo rem praesentium iure',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','enim neque','2011-03-25','06:53:51'),(9,'Beatae','In minima harum laborum ea est possimus qui. Dolorum ut eaque nam eum quos suscipit esse assumenda qui libero fugit nisi aspernatur dolores dolores minima quia. Dolorem enim et quos error et id facilis quas molestias architecto sed quaerat ipsam. Quae molestiae natus magnam alias illum facere dolores totam minima enim vel ut',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','ut consequatur explicabo','2011-02-22','05:13:33'),(10,'Qui Repudiandae','Omnis culpa rerum provident illum alias provident debitis',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','iure','2011-03-30','08:34:21'),(11,'Dicta Ut Voluptas','Nam voluptatum eum libero nobis distinctio labore numquam corporis error minima quisquam voluptatem placeat nostrum cupiditate et nulla veniam eligendi. Reprehenderit perspiciatis hic illum excepturi doloribus id et consequatur omnis aperiam omnis nisi est nostrum',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','iure nemo illo velit quaerat','2011-01-13','19:27:39'),(12,'Unde Enim','Veritatis facere et quia modi ut molestiae sequi et consequatur eaque rerum et placeat et porro vel ut. Aliquam id voluptas facere ducimus impedit laborum aut minima illum et rem doloribus laborum unde nobis. Ducimus eos repellendus temporibus eos consequatur incidunt animi quasi rem rerum quisquam quod non accusamus. Quasi iste quo ut numquam et eaque quod qui consequatur rem aspernatur doloremque eum',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','libero unde non','2011-05-17','12:49:36'),(13,'Ullam Dignissimos','Facilis sit temporibus quas molestias et eum quis error praesentium ipsam possimus fugiat quo illum sequi rem qui. Incidunt eligendi magnam dolor culpa pariatur ipsam laudantium eum accusantium perspiciatis. Laborum voluptatem dolorem occaecati quia minus praesentium aperiam ratione perspiciatis eum architecto aut deleniti deserunt sequi dolorem maiores necessitatibus',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','perferendis','2011-02-28','22:07:11'),(14,'Enim Cupiditate Fugit','Minus placeat qui ut quia exercitationem sit omnis est consectetur officia occaecati laborum fuga dicta. Qui inventore sint rerum a quae',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','fugiat qui ex autem','2011-05-05','09:25:54'),(15,'Quibusdam Laudantium Sit','Optio delectus et nesciunt ducimus dolores sit expedita eaque dolor voluptate velit aspernatur fuga veniam voluptate ratione. Maiores expedita dolores distinctio consequatur quos et eaque nemo illo quos odit. Et soluta enim voluptas non blanditiis sint itaque ducimus recusandae maxime nulla vitae est nam',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','quidem','2011-04-11','13:15:16'),(16,'Harum Consequatur Aut Vero','Inventore ipsum molestiae autem voluptas sapiente',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','doloremque commodi et ut','2010-12-24','13:35:33'),(17,'Voluptatem Voluptatem Et Sapiente Odit','Ut occaecati accusamus quas voluptatem voluptas quos et quod asperiores. Totam quas consequatur odit cupiditate ullam et voluptatem quos inventore vel est rerum maxime maiores beatae deserunt sunt. Ut rerum facilis et amet consequatur id ut soluta adipisci qui nesciunt recusandae',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','ipsa id ab laboriosam atque','2011-03-05','05:56:34'),(18,'Unde Ab Illo','Cupiditate voluptate sed tempore qui et eos suscipit unde. Ut delectus ea eum eum id occaecati vero in ut aperiam dolores illum eaque velit et repudiandae aut. Tempora facere possimus earum quam pariatur nostrum et repellendus eos voluptatem',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','officia quo ducimus natus','2011-01-15','23:20:34'),(19,'Vero','Voluptas possimus nihil dolorem distinctio repellendus facilis nemo quasi quo. Sunt iure dolores ut animi et omnis provident quia sit tempore eius illum similique earum nemo placeat accusantium. Voluptatem et molestias doloribus id eum sint porro et non tenetur dolores enim optio saepe aut minima itaque',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','et minus et','2011-02-15','08:15:45'),(20,'Culpa Nisi Maxime Consequatur At','Iure neque et impedit ut atque tenetur cumque rem voluptatem. Dolorum quis quam cum qui sed. Non non unde repudiandae sunt et delectus distinctio quam iusto et hic sint sit quo velit in eligendi dicta earum',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','eligendi tenetur beatae iste sit','2010-12-26','18:11:11'),(21,'Dolores Autem Quae','Ut quibusdam non consequatur et excepturi et id vel non voluptatum distinctio quos perspiciatis ratione non',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','quod facere porro laborum beatae','2010-12-25','16:26:52'),(22,'Quia Aut Qui Labore Perferendis','Est accusamus molestiae cupiditate ut architecto voluptatem assumenda magni at',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','culpa aliquid et vel','2011-03-07','01:33:42'),(23,'Velit','Aliquid eum illo occaecati quos excepturi est accusantium et consequuntur aspernatur occaecati. Voluptatem voluptatem deserunt commodi voluptatibus cumque quod excepturi consequuntur distinctio quia temporibus. Iure voluptatem dignissimos pariatur ipsa facilis est cupiditate. Cum quis quo enim dolores harum veniam vero tempora eius aut aut laudantium quaerat ut',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','consequatur id maxime sint','2011-05-08','09:38:20'),(24,'Consequuntur Asperiores In','Pariatur perspiciatis veniam quae soluta omnis et culpa inventore rerum officiis fugit voluptatum. Explicabo est beatae ut voluptas hic',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','optio velit earum doloremque','2011-04-02','18:45:56'),(25,'Sit','Minima cum ea quaerat praesentium eos. Et reprehenderit dolore doloribus veritatis consequatur dolorem aut totam est vitae molestiae nulla similique ut voluptas. Sit non excepturi odit et repellendus quo distinctio ex at at id aut ab ut eos et beatae aut vel. Inventore vitae nulla optio qui et incidunt labore et dignissimos voluptatem',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','aut','2011-04-04','17:57:55'),(26,'Aut Sunt Non Deserunt','Et doloremque aut maiores et autem quas deserunt. Occaecati culpa explicabo sequi eveniet repellendus quia iste quia ducimus saepe doloremque. Qui accusamus perspiciatis cumque eaque et ea at voluptatibus quia delectus placeat velit delectus rerum accusantium minus ducimus itaque ut. Deleniti tenetur unde reprehenderit vel quo dicta explicabo ea exercitationem aut quod iure eum veritatis earum',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','tempora','2010-12-28','00:29:57'),(27,'Esse Recusandae','Ad qui qui iste et cupiditate voluptate dolores necessitatibus omnis omnis id in ea porro rerum veritatis qui corporis dolorem. Unde hic nulla ipsum et. Porro placeat consequatur minus ipsum cumque quos velit numquam non non quis aliquam sint ipsum velit veritatis totam',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','et ut','2011-01-15','14:53:06'),(28,'Pariatur Animi Itaque Aliquid Nulla','Ad rerum sunt culpa est culpa minima et et',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','est','2010-11-29','12:03:02'),(29,'Tenetur Tempore Tempora','Tenetur sint ut reprehenderit omnis molestiae rerum recusandae quisquam. Nihil ab numquam eius quia voluptatem totam doloribus odio iste aut odio voluptatum consequatur libero tempora. Id dolor quia ea dolore aut et totam impedit vero non',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','voluptate sint aliquam','2011-04-06','09:58:03'),(30,'Unde','Necessitatibus porro voluptatem consequatur fugit repellendus ex sed nesciunt quod accusantium et. Consequatur sint doloremque aspernatur est vero consequatur suscipit quod velit ducimus aperiam sed',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','neque','2011-05-01','18:17:18'),(31,'Ratione','Neque in iste aut odio in quia aliquid eum corporis nulla veniam sunt aut deserunt est exercitationem autem. Alias rerum distinctio eos consequatur. Nihil est excepturi quidem ad sunt non impedit amet sequi reiciendis accusamus et aut esse dolor',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','et temporibus eum','2011-02-06','17:27:39'),(32,'Consectetur At Repellat Quo Ipsam','Sed ea recusandae at et nulla tempore qui sapiente explicabo ut sint tenetur officia tempore dicta aliquam consequuntur delectus. Est dolorum facilis totam enim vel rem occaecati qui consequatur recusandae eaque vel voluptatibus ex. Qui deleniti et aut ducimus explicabo rerum exercitationem neque temporibus rem porro et fuga',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','iure et','2011-04-16','19:40:31'),(33,'Magnam','Dolorem est non magnam sint voluptas repudiandae eum debitis et harum quibusdam quod ipsam est',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','et','2011-03-07','04:31:12'),(34,'Autem Ex Eius Consequatur','Voluptatem explicabo reprehenderit et saepe et aut modi aut beatae vel saepe voluptas exercitationem corrupti id corrupti. Minima doloremque repellat provident sit aut. Consequatur dolores quia quidem consequuntur inventore assumenda et ut aut dicta et qui mollitia. Aut eos harum molestias vel sapiente ea accusantium ab est ea est exercitationem aliquid occaecati aspernatur beatae accusantium saepe',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','fugiat expedita saepe quo','2011-01-30','13:47:41'),(35,'Suscipit Dolor','Nesciunt sed deserunt debitis corporis autem qui soluta eos earum aut at voluptatem inventore fugiat vitae voluptatum',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','ut','2011-03-05','04:44:46'),(36,'Suscipit','Sint architecto illo nostrum aut maxime',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','modi omnis','2011-02-13','05:31:55'),(37,'Porro Tenetur Molestias Laboriosam Consequatur','Nobis quam assumenda provident qui repellendus praesentium magnam adipisci mollitia est minus',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','cupiditate harum est deserunt','2010-12-07','09:17:04'),(38,'Facere Itaque Aut Quo','Porro voluptas magni expedita architecto culpa. Id quis molestias exercitationem enim vel aut esse voluptatum tempora eos quibusdam est asperiores et consequuntur officia molestiae doloremque ducimus. Impedit aspernatur nobis nostrum illum necessitatibus nihil quia vel eum quasi autem modi earum reiciendis occaecati. Earum consequuntur odio est et qui asperiores aliquid magni libero cupiditate',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','sit delectus minima mollitia','2011-04-28','05:10:44'),(39,'Nemo','Est placeat dolorem perferendis maiores. Eos vel exercitationem sed et. Consectetur nobis dolorum voluptates maxime temporibus magnam optio animi voluptatum et quae vero aut sit recusandae eos odio neque nulla',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','tempore sit','2011-01-20','10:09:02'),(40,'Et Distinctio Ipsum','Soluta corrupti eaque at cum perspiciatis. Quasi atque sunt neque incidunt ipsa',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','rem non enim','2011-05-05','18:21:37'),(41,'Soluta Dicta','Repellendus quia nobis repellendus non voluptatum cupiditate quis. Alias et reprehenderit et vel at id unde officia officiis nihil sed adipisci iure omnis sapiente rerum. Dolorum odio vel non veniam qui dolores et nobis sint nostrum neque vitae ex maiores libero aspernatur laboriosam',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','eligendi','2011-03-05','22:38:16'),(42,'Rem Commodi','Voluptate quidem et omnis quia. Sunt consequatur ut est nostrum sunt blanditiis accusamus est et nesciunt laborum ipsum enim non omnis. Quidem eos porro consequatur illum id est ipsam et facere sapiente rerum non',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','est sit voluptatum','2011-01-31','04:00:43'),(43,'Cumque','Ut rerum eos quasi vel consequuntur alias dolore quo asperiores et consequatur sed aut et. Itaque iure aut illo possimus nisi rerum alias ratione qui qui delectus et veritatis. Enim consectetur sunt iusto unde commodi laudantium voluptatibus sit a expedita. Sint quo eveniet provident non non repellat sed doloremque eos officiis beatae assumenda quod vero ducimus',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','nisi beatae et eum delectus','2011-02-10','17:10:29'),(44,'Sed','Aut dolorem veritatis ex hic rem commodi vitae voluptatem molestias veritatis quo. Non dolores vitae nesciunt ut esse odio nihil est expedita. Atque eius accusantium nemo consequuntur delectus rerum ea temporibus sunt veniam laboriosam laudantium aut harum magnam minima et. Quo dolorem laborum iste eum minima mollitia fugit nesciunt sed aut exercitationem voluptate quia qui nemo et occaecati',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','id fugiat est nesciunt nihil','2011-05-05','20:48:21'),(45,'Repudiandae Ratione Temporibus','Ullam nostrum odio iste quos aliquid iusto omnis quasi aut esse beatae cum et dolorem. Aliquid et sed rerum quos magnam suscipit deserunt magni dolorum consequuntur quia',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','aliquam porro','2010-11-30','06:15:11'),(47,'Quia Et Molestiae Et','Dicta quia distinctio at quam omnis quas',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','distinctio','2011-02-03','14:44:01'),(48,'Excepturi','Cupiditate itaque ipsam officiis eum non dolorem nobis voluptatem non et ut quis a. Consequatur corporis et quibusdam quaerat est natus quasi est perferendis consectetur. Sint facere dolorem corrupti et voluptas et nam et sed et vero optio placeat. Non autem excepturi nihil beatae vitae voluptate dolores eveniet repellendus quibusdam deleniti aliquam vero labore nostrum et dicta ipsa',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','quis esse','2011-01-17','13:36:50'),(49,'Incidunt Commodi Ut','Excepturi minus enim in aut voluptates dicta eius est consequatur ut quibusdam ad sit doloribus qui excepturi laborum. Velit enim blanditiis nam voluptate qui quae eos voluptatem ipsum dolores voluptatem magni sunt',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','voluptate','2011-04-17','04:08:45'),(50,'Labore Ea Aperiam','Et dicta quos perferendis perspiciatis optio',1,'2010-11-24 16:28:36','2010-11-24 16:28:36','nostrum','2011-04-16','18:23:08'),(53,'Kevin Test','Test',1,'2010-11-24 23:06:33','2010-11-24 23:20:45','TBC','2010-11-24','18:00:00');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ndx_type_assetable` (`assetable_id`,`assetable_type`,`type`),
  KEY `fk_assets` (`assetable_id`,`assetable_type`),
  KEY `fk_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,'BM-Simulcast-HSweb650.jpg','image/jpeg',44507,NULL,NULL,'Picture',NULL,'2010-02-27 22:13:38','2010-02-27 22:13:38'),(2,'BM-Simulcast-HSweb650.jpg','image/jpeg',44507,NULL,NULL,'Picture',NULL,'2010-02-27 22:26:48','2010-02-27 22:26:48');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckeditor_assets`
--

DROP TABLE IF EXISTS `ckeditor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) NOT NULL,
  `data_content_type` varchar(255) DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `guid` varchar(10) DEFAULT NULL,
  `locale` tinyint(4) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `fk_assetable` (`assetable_type`,`assetable_id`),
  KEY `fk_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckeditor_assets`
--

LOCK TABLES `ckeditor_assets` WRITE;
/*!40000 ALTER TABLE `ckeditor_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ckeditor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `section` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (7,'Kid\'s Quest 2010','kids-quest-2010','\r\n<div class=\"grid_12\" id=\"content\"> <h1>Kid&#39;s Quest 2010 at Temple Baptist Church</h1><p></p><h2>Summer Care Program June 7th-July 30th, 7AM-5PM</h2><h3>Kindergarten - 5th Grade</h3><h4>Cost: $250/child. $50 deposit holds your spot.</h4><a class=\"red_button\" style=\"width:300px\" href=\"/forms/kids_quest_2010.pdf\">Download Kid\'s Quest 2010 Registration Form</a><br clear=\"all\" /><p>Please turn in your paper registration and deposit to Temple Baptist Church. Office hours are Monday thru Friday 8:30 - 4:00 You may also mail in your paper registration to: Temple Baptist Church P.O. Box 762 White House, TN 37188</p> <h5>  Questions should be directed to our Director of Children&#39;s Ministries, <a href=\"mailto:stacy@templetoday.com?subject=Kid\'s%20Quest%202010\">Stacy Spears</a> - (615) 672-5339</h5> </div>',1,'2010-03-24 20:24:23','2010-03-26 18:03:27','children'),(8,'BOX','box','<h1 style=\"text-align: center;\">\r\n	Choir BOX<br /><br>\r\n<center><embed src=\"http://www.box.net//static/flash/box_explorer.swf?widget_hash=gdyk22fzbq&v=0&cl=0\" width=\"700\" height=\"500\" wmode=\"transparent\" type=\"application/x-shockwave-flash\"></embed></center></h1>\r\n<br />\r\n',1,'2010-03-26 05:57:17','2010-03-26 06:00:50',''),(9,'Choir Colors','choir-colors','<h1 style=\"text-align: center;\">\r\n	Choir Colors</h1>\r\n<pre style=\"text-align: center;\">April 18 - Light Blue / Brown / Tan<br>April 25 - Lime Green / White / Navy<br>May 2 - Jewel Tones / Black<br>May 9 - Pink / Gray / Navy (MOTHERS DAY)<br>May 16 - Green (all shades) / Khaki<br>May 23 - Fuschia (bright pink) / Bright Greens / Black<br>May 30 - Turquoise / White / Navy (MEMORIAL DAY)<br>June 6 - Citrus / Black<br>June 13 - Coral / Tan / Brown<br>June 20 - Turquoise / Black (FATHERS DAY)<br>June 27 - Pastels / Khaki</pre><pre style=\"text-align: center;\">Turquoise blue = green/blue color (aka: aquaâ€¦NOT light or medium blue)<br>Citrus colors = tangerine, lemon, lime<br>Jewel tones = emerald, ruby, gold, saphire, etc</pre>',1,'2010-04-03 04:46:27','2010-04-11 16:05:20','Choir'),(10,'Choir','choir','<h1 style=\"text-align: center;\">\r\n	<br />\r\n	Temple Baptist Church Choir</h1>\r\n<h2 style=\"text-align: center;\">\r\n	<a href=\"http://www.templetoday.com/box\">Box</a>	<strong><br />\r\n<a href=\"http://www.templetoday.com/choir-colors\">Choir Colors</a>	<br />\r\n	</strong></h2>\r\n',1,'2010-04-11 16:14:14','2010-04-11 16:16:12',''),(11,'Kid\'s Quest 2011','kids-quest-2011','\r\n<div class=\"grid_12\" id=\"content\"> <h1>Kid&#39;s Quest 2010 at Temple Baptist Church</h1><p></p><h2>Summer Care Program June 7th-July 30th, 7AM-5PM</h2><h3>Kindergarten - 5th Grade</h3><h4>Cost: $250/child. $50 deposit holds your spot.</h4><a class=\"red_button\" style=\"width:300px\" href=\"/forms/kids_quest_2010.pdf\">Download Kid\'s Quest 2010 Registration Form</a><br clear=\"all\" /><p>Please turn in your paper registration and deposit to Temple Baptist Church. Office hours are Monday thru Friday 8:30 - 4:00 You may also mail in your paper registration to: Temple Baptist Church P.O. Box 762 White House, TN 37188</p> <h5>  Questions should be directed to our Director of Children&#39;s Ministries, <a href=\"mailto:stacy@templetoday.com?subject=Kid\'s%20Quest%202010\">Stacy Spears</a> - (615) 672-5339</h5> </div>',NULL,NULL,NULL,'children');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20100203044927'),('20100223200628'),('20100224015857'),('20100225164552'),('20100227155818'),('20100227172252'),('20100317012403'),('20100904184511'),('20100917231609'),('20101020114917'),('20101020115526'),('20101119015214'),('20101124221241'),('20110530232641');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sermons`
--

DROP TABLE IF EXISTS `sermons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sermons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verses` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sermons`
--

LOCK TABLES `sermons` WRITE;
/*!40000 ALTER TABLE `sermons` DISABLE KEYS */;
INSERT INTO `sermons` VALUES (3,'The Armor of God','the-armor-of-god','','Ephesians 6:10-20','This is why you must take up the full armor of God, so that you may be able to resist in the evil day, and having prepared everything, to take your stand.\r\n-Ephesians 6:13 (HCSB)',1,'2010-02-28 19:45:54','2010-03-07 18:31:56','2010-02-28'),(4,'Abel:  The Faithful Giver','abel-the-faithful-giver',NULL,'Genesis 4','By faith Abel offered to God a better sacrifice than Cain [did]. By this he was approved as a righteous man, because God approved his gifts, and even though he is dead, he still speaks through this.\r\n-Hebrews 11:4 (HCSB)',1,'2010-03-07 18:31:00','2010-03-07 18:31:00','2010-03-07'),(5,'The Riches of Christ','the-riches-of-christ',NULL,'Ephesians 1','In Him we have redemption through His blood, the forgiveness of our trespasses, according to the riches of His grace that He lavished on us with all wisdom and understanding.\r\n-Ephesians 1:7-8 (HCSB)',1,'2010-03-07 19:30:54','2010-03-07 19:44:15','2010-01-03'),(6,'By Grace and Grace Alone','by-grace-and-grace-alone',NULL,'Ephesians 2:1-10','For by grace you are saved through faith, and this is not from yourselves; it is God\'s gift--not from works, so that no one can boast.\r\n-Ephesians 2:8-9',1,'2010-03-07 19:32:32','2010-03-07 19:43:23','2010-01-10'),(7,'The Problem, The Plan, The Power','the-problem-the-plan-the-power',NULL,'Ephesians 3:14-19','Now to Him who is able to do above and beyond all that we ask or think--according to the power that works in you--to Him be glory in the church and in Christ Jesus to all generations, forever and ever. Amen.\r\n-Ephesians 3:20-21 (HCSB)',1,'2010-03-07 19:33:59','2010-03-07 19:42:12','2010-01-17'),(8,'Unity in the Body','unity-in-the-body',NULL,'Ephesians 4:1-16','There is one body and one Spirit, just as you were called to one hope at your calling; one Lord, one faith, one baptism, one God and Father of all, who is above all and through all and in all.\r\n-Ephesians 4:4-6 (HCSB)',1,'2010-03-07 19:37:22','2010-03-07 19:40:22','2010-01-24'),(9,'Evangelical Message','evangelical-message',NULL,'Bro. Don Witt','LORD, You are my God; I will exalt You. I will praise Your name, for You have accomplished wonders, plans formed long ago, with perfect faithfulness.\r\n-Isaiah 25:1 (HCSB)',1,'2010-03-07 19:45:23','2010-03-07 19:49:59','2010-01-31'),(10,'He Told Me to Walk This Way','he-told-me-to-walk-this-way',NULL,'Ephesians 5:1-21','And walk in love, as the Messiah also loved us and gave Himself for us, a sacrificial and fragrant offering to God.\r\n-Ephesians 5:2 (HCSB)',1,'2010-03-07 19:46:31','2010-03-07 19:46:31','2010-02-07'),(11,'The Lord\'s Supper','the-lords-supper',NULL,'Lord\'s Supper','Husbands, love your wives, just as also Christ loved the church and gave Himself for her,\r\n-Ephesians 5:25 (HCSB)',1,'2010-03-07 19:47:57','2010-03-07 19:47:57','2010-02-14'),(12,'Title Not Available','title-not-available',NULL,'Pastor HD Jones','',1,'2010-03-07 19:48:17','2010-03-07 19:52:14','2010-02-21'),(13,'Enoch:  The Faithful Walker','enoch-the-faithful-walker',NULL,'Hebrews 11','By faith, Enoch was taken away so that he did not experience death, and he was not to be found because God took him away. For prior to his transformation he was approved, having pleased God.\r\n-Hebrews 11:5 (HCSB)',1,'2010-03-14 15:44:33','2010-03-14 16:54:05','2010-03-14'),(14,'Noah:  The Faithful Builder','noah-the-faithful-builder',NULL,'Hebrews 11','By faith Noah, after being warned about what was not yet seen, in reverence built an ark to deliver his family. By this he condemned the world and became an heir of the righteousness that comes by faith.\r\n-Hebrews 11:7-8',1,'2010-03-21 15:37:57','2010-03-21 17:24:23','2010-03-21'),(15,'Abraham: The Faithful Follower','abraham-the-faithful-follower',NULL,'Hebrews 11:8, Genesis 12:1-4, Genesis 15:1-7, Genesis 22:1-2, Hebrews 11: 8-9, Hebrews 11:11-19','',1,'2010-03-28 16:41:10','2010-04-04 22:17:45','2010-03-28'),(16,'Jesus:  The Greatest Hero','jesus-the-greatest-hero',NULL,'John 9','\"Don\'t be alarmed,\" he told them. \"You are looking for Jesus the Nazarene, who was crucified. He has been resurrected! He is not here! See the place where they put Him.\r\n-Mark 16:6',1,'2010-04-04 14:17:52','2010-04-04 15:51:44','2010-04-04'),(17,'Isaac:  The Faithful Son','isaac-the-faithful-son',NULL,'Genesis 12, 21, 26 & Hebrews 11','By faith Isaac blessed Jacob and Esau concerning things to come. -Hebrews 11:20',1,'2010-04-11 16:08:34','2010-04-11 17:18:54','2010-04-11'),(18,'Jacob:  The Faithful Dreamer','jacob-the-faithful-dreamer',NULL,'Genesis 27, 28, 31, 32','By faith Jacob, when he was dying, blessed each of the sons of Joseph, and, he worshiped, leaning on the top of his staff.\r\n-Hebrews 11:21',1,'2010-04-18 17:14:46','2010-04-18 17:16:25','2010-04-18'),(19,'Joseph:  The Faithful Servant','joseph-the-faithful-servant',NULL,'','By faith Joseph, as he was nearing the end of his life, mentioned the exodus of the sons of Israel and gave instructions concerning his bones.\r\n-Hebrews 11:22',1,'2010-04-25 15:41:01','2010-04-25 21:37:09','2010-04-25'),(20,'Rahab:  The Faithful Mother','rahab-the-faithful-mother',NULL,'Joshua 2 & 6','By faith Rahab the prostitute received the spies in peace and didn\'t perish with those who disobeyed.\r\n-Hebrews 11:31',1,'2010-05-09 16:28:35','2010-05-09 16:50:05','2010-05-09');
/*!40000 ALTER TABLE `sermons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crypted_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_count` int(11) DEFAULT NULL,
  `last_request_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `current_login_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_login_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kevin','80ddc20eb2e29e30156b5acd85d6b66fccf066a3ad99a1874d5330e6d5d7e7cd5a0172e001d6befe6488c5e52eb1ed9ca4713105e88f1516e46a1cb7224bbe39','UcG5lHR4PYIl9UMAN5Gs','f081c30ff3157f679bd6f93ec7349a615ecb33b6d9bbe04f8d1e56b806b7f2602fbb1617ac62d5816c21740128e36978440148e98f86c94872f606911d0f2c44',13,'2011-05-30 14:42:18','2010-11-22 22:29:18','2011-03-27 19:57:26','127.0.0.1','127.0.0.1','2010-02-27 16:37:57','2011-05-30 14:42:18'),(2,'drew','5a1230c8aa97c11fad7e035801b2d02fd72684c8b454364458949d96d5c53c70b0efcd8b2d152e8b852d8f3eb59ffaf78489201b2db7294f01dda8255f4817b5','I03pgG-VhFgywdUBdu-c','1aef0e3a0a40e35eb629dc84ed9e4d7476294384997be4e58ccb5b6557ecf0a942892cf8e20123943b35349863e503771519a6f073854be6e20a5f5c4f3ba0f2',40,'2010-05-09 17:10:53','2010-05-09 16:15:49','2010-05-09 17:10:48','70.155.130.50','70.155.130.50','2010-02-27 20:24:54','2010-05-09 17:10:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versioned_id` int(11) DEFAULT NULL,
  `versioned_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `changes` text COLLATE utf8_unicode_ci,
  `number` int(11) DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_versions_on_versioned_id_and_versioned_type` (`versioned_id`,`versioned_type`),
  KEY `index_versions_on_user_id_and_user_type` (`user_id`,`user_type`),
  KEY `index_versions_on_user_name` (`user_name`),
  KEY `index_versions_on_number` (`number`),
  KEY `index_versions_on_tag` (`tag`),
  KEY `index_versions_on_created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (11,7,'Page',NULL,NULL,NULL,'--- \nbody: \n- \"<div class=\\\"grid_12\\\" id=\\\"content\\\"> <h1>Kid&#39;s Quest 2010 at Temple Baptist Church</h1><p></p><h2>Summer Care Program June 7th-July 30th</h2><h3>Kindergarten - 5th Grade</h3><h4>Cost: $250/child. $50 deposit holds your spot.</h4><a class=\\\"red_button\\\" style=\\\"width:300px\\\" href=\\\"/forms/kids_quest_2010.pdf\\\">Download Kid\'s Quest 2010 Registration Form</a><br clear=\\\"all\\\" /><p>Please complete the online registration or turn in your paper registration and deposit to Temple Baptist Church. Office hours are Monday thru Friday 8:30 - 4:00 You may also mail in your paper registration to: Temple Baptist Church P.O. Box 762 White House, TN 37188</p> <h5>  Questions should be directed to our Director of Children&#39;s Ministries, <a href=\\\"mailto:stacy@templetoday.com?subject=Kid\'s%20Quest%202010\\\">Stacy Spears</a> - (615) 672-5339</h5> </div> \"\n- |-\n  <br />\r\n  <div class=\"grid_12\" id=\"content\"> <h1>Kid&#39;s Quest 2010 at Temple Baptist Church</h1><p></p><h2>Summer Care Program June 7th-July 30th</h2><h3>Kindergarten - 5th Grade</h3><h4>Cost: $250/child. $50 deposit holds your spot.</h4><a class=\"red_button\" style=\"width:300px\" href=\"/forms/kids_quest_2010.pdf\">Download Kid\'s Quest 2010 Registration Form</a><br clear=\"all\" /><p>Please turn in your paper registration and deposit to Temple Baptist Church. Office hours are Monday thru Friday 8:30 - 4:00 You may also mail in your paper registration to: Temple Baptist Church P.O. Box 762 White House, TN 37188</p> <h5>  Questions should be directed to our Director of Children&#39;s Ministries, <a href=\"mailto:stacy@templetoday.com?subject=Kid\'s%20Quest%202010\">Stacy Spears</a> - (615) 672-5339</h5> </div>\n',2,NULL,'2010-03-24 20:27:50','2010-03-24 20:27:50'),(12,8,'Page',NULL,NULL,NULL,'--- \npermalink: \n- choir-box\n- box\ntitle: \n- Choir BOX\n- BOX\n',2,NULL,'2010-03-26 05:57:43','2010-03-26 05:57:43'),(13,8,'Page',NULL,NULL,NULL,'--- \nbody: \n- |\n  <br />\r\n\n- <center><embed src=\"http://www.box.net//static/flash/box_explorer.swf?widget_hash=gdyk22fzbq&v=0&cl=0\" width=\"460\" height=\"345\" wmode=\"transparent\" type=\"application/x-shockwave-flash\"></embed></center>\n',3,NULL,'2010-03-26 05:59:35','2010-03-26 05:59:35'),(14,8,'Page',NULL,NULL,NULL,'--- \nbody: \n- <center><embed src=\"http://www.box.net//static/flash/box_explorer.swf?widget_hash=gdyk22fzbq&v=0&cl=0\" width=\"460\" height=\"345\" wmode=\"transparent\" type=\"application/x-shockwave-flash\"></embed></center>\n- |\n  <h1 style=\"text-align: center;\">\r\n  	Choir BOX<center><embed src=\"http://www.box.net//static/flash/box_explorer.swf?widget_hash=gdyk22fzbq&v=0&cl=0\" width=\"700\" height=\"500\" wmode=\"transparent\" type=\"application/x-shockwave-flash\"></embed></center></h1>\r\n  <br />\r\n\n',4,NULL,'2010-03-26 06:00:16','2010-03-26 06:00:16'),(15,8,'Page',NULL,NULL,NULL,'--- \nbody: \n- |\n  <h1 style=\"text-align: center;\">\r\n  	Choir BOX<center><embed src=\"http://www.box.net//static/flash/box_explorer.swf?widget_hash=gdyk22fzbq&v=0&cl=0\" width=\"700\" height=\"500\" wmode=\"transparent\" type=\"application/x-shockwave-flash\"></embed></center></h1>\r\n  <br />\r\n\n- |\n  <h1 style=\"text-align: center;\">\r\n  	Choir BOX<br><center><embed src=\"http://www.box.net//static/flash/box_explorer.swf?widget_hash=gdyk22fzbq&v=0&cl=0\" width=\"700\" height=\"500\" wmode=\"transparent\" type=\"application/x-shockwave-flash\"></embed></center></h1>\r\n  <br />\r\n\n',5,NULL,'2010-03-26 06:00:36','2010-03-26 06:00:36'),(16,8,'Page',NULL,NULL,NULL,'--- \nbody: \n- |\n  <h1 style=\"text-align: center;\">\r\n  	Choir BOX<br><center><embed src=\"http://www.box.net//static/flash/box_explorer.swf?widget_hash=gdyk22fzbq&v=0&cl=0\" width=\"700\" height=\"500\" wmode=\"transparent\" type=\"application/x-shockwave-flash\"></embed></center></h1>\r\n  <br />\r\n\n- |\n  <h1 style=\"text-align: center;\">\r\n  	Choir BOX<br /><br>\r\n  <center><embed src=\"http://www.box.net//static/flash/box_explorer.swf?widget_hash=gdyk22fzbq&v=0&cl=0\" width=\"700\" height=\"500\" wmode=\"transparent\" type=\"application/x-shockwave-flash\"></embed></center></h1>\r\n  <br />\r\n\n',6,NULL,'2010-03-26 06:00:50','2010-03-26 06:00:50'),(17,7,'Page',NULL,NULL,NULL,'--- \nbody: \n- |-\n  <br />\r\n  <div class=\"grid_12\" id=\"content\"> <h1>Kid&#39;s Quest 2010 at Temple Baptist Church</h1><p></p><h2>Summer Care Program June 7th-July 30th</h2><h3>Kindergarten - 5th Grade</h3><h4>Cost: $250/child. $50 deposit holds your spot.</h4><a class=\"red_button\" style=\"width:300px\" href=\"/forms/kids_quest_2010.pdf\">Download Kid\'s Quest 2010 Registration Form</a><br clear=\"all\" /><p>Please turn in your paper registration and deposit to Temple Baptist Church. Office hours are Monday thru Friday 8:30 - 4:00 You may also mail in your paper registration to: Temple Baptist Church P.O. Box 762 White House, TN 37188</p> <h5>  Questions should be directed to our Director of Children&#39;s Ministries, <a href=\"mailto:stacy@templetoday.com?subject=Kid\'s%20Quest%202010\">Stacy Spears</a> - (615) 672-5339</h5> </div>\n- |-\n  \r\n  <div class=\"grid_12\" id=\"content\"> <h1>Kid&#39;s Quest 2010 at Temple Baptist Church</h1><p></p><h2>Summer Care Program June 7th-July 30th, 7AM-5PM</h2><h3>Kindergarten - 5th Grade</h3><h4>Cost: $250/child. $50 deposit holds your spot.</h4><a class=\"red_button\" style=\"width:300px\" href=\"/forms/kids_quest_2010.pdf\">Download Kid\'s Quest 2010 Registration Form</a><br clear=\"all\" /><p>Please turn in your paper registration and deposit to Temple Baptist Church. Office hours are Monday thru Friday 8:30 - 4:00 You may also mail in your paper registration to: Temple Baptist Church P.O. Box 762 White House, TN 37188</p> <h5>  Questions should be directed to our Director of Children&#39;s Ministries, <a href=\"mailto:stacy@templetoday.com?subject=Kid\'s%20Quest%202010\">Stacy Spears</a> - (615) 672-5339</h5> </div>\n',3,NULL,'2010-03-26 18:03:27','2010-03-26 18:03:27'),(18,9,'Page',NULL,NULL,NULL,'--- \nbody: \n- |\n  <h1 style=\"text-align: center;\">\r\n  	Choir Colors</h1>\r\n  <pre style=\"text-align: center;\">\r\n  <font face=\"Cambria\" size=\"4\">Pastel / Khaki / Tan (EASTER)</font>April 4 - Pastel / Khaki / Tan (EASTER)\r\n  April 11 - Purple / Lavender / Black\r\n  April 18 - <font face=\"Cambria\" size=\"4\">Light Blue / Brown / Tan</font>Light Blue / Brown / Tan\r\n  April 25 - Lime Green / White / Navy\r\n  May 2 - Jewel Tones / Black\r\n  May 9 - Pink / Gray / Navy (MOTHERS DAY)\r\n  May 16 - Green (all shades) / Khaki\r\n  May 23 - Fuschia (bright pink) / Bright Greens / Black\r\n  May 30 - Turquoise / White / Navy (MEMORIAL DAY)\r\n  June 6 - Citrus / Black\r\n  June 13 - Coral / Tan / Brown\r\n  June 20 - Turquoise / Black (FATHERS DAY)\r\n  June 27 - Pastels / Khaki\r\n  \r\n  <font face=\"Arial\" size=\"2\">Citrus colors = tangerine, lemon, lime</font>\r\n  Turquoise blue = green/blue color (aka: aqua&hellip;NOT light or medium blue)\r\n  Citrus colors = tangerine, lemon, lime<font face=\"Arial\" size=\"2\">Jewel tones = emerald, ruby, gold, saphire, etc</font>\r\n  Jewel tones = emerald, ruby, gold, saphire, etc</pre>\r\n  <br />\r\n\n- |\n  <h1 style=\"text-align: center;\">\r\n  	Choir Colors</h1>\r\n  <pre style=\"text-align: center;\">\r\n  <font face=\"Cambria\" size=\"4\">Pastel / Khaki / Tan (EASTER)</font>April 18 - <font face=\"Cambria\" size=\"4\">Light Blue / Brown / Tan</font>Light Blue / Brown / Tan\r\n  April 25 - Lime Green / White / Navy\r\n  May 2 - Jewel Tones / Black\r\n  May 9 - Pink / Gray / Navy (MOTHERS DAY)\r\n  May 16 - Green (all shades) / Khaki\r\n  May 23 - Fuschia (bright pink) / Bright Greens / Black\r\n  May 30 - Turquoise / White / Navy (MEMORIAL DAY)\r\n  June 6 - Citrus / Black\r\n  June 13 - Coral / Tan / Brown\r\n  June 20 - Turquoise / Black (FATHERS DAY)\r\n  June 27 - Pastels / Khaki\r\n  \r\n  <font face=\"Arial\" size=\"2\">Citrus colors = tangerine, lemon, lime</font>\r\n  Turquoise blue = green/blue color (aka: aqua&hellip;NOT light or medium blue)\r\n  Citrus colors = tangerine, lemon, lime<font face=\"Arial\" size=\"2\">Jewel tones = emerald, ruby, gold, saphire, etc</font>\r\n  Jewel tones = emerald, ruby, gold, saphire, etc</pre>\r\n  <br />\r\n\n',2,NULL,'2010-04-11 15:48:48','2010-04-11 15:48:48'),(19,9,'Page',NULL,NULL,NULL,'--- \nbody: \n- |\n  <h1 style=\"text-align: center;\">\r\n  	Choir Colors</h1>\r\n  <pre style=\"text-align: center;\">\r\n  <font face=\"Cambria\" size=\"4\">Pastel / Khaki / Tan (EASTER)</font>April 18 - <font face=\"Cambria\" size=\"4\">Light Blue / Brown / Tan</font>Light Blue / Brown / Tan\r\n  April 25 - Lime Green / White / Navy\r\n  May 2 - Jewel Tones / Black\r\n  May 9 - Pink / Gray / Navy (MOTHERS DAY)\r\n  May 16 - Green (all shades) / Khaki\r\n  May 23 - Fuschia (bright pink) / Bright Greens / Black\r\n  May 30 - Turquoise / White / Navy (MEMORIAL DAY)\r\n  June 6 - Citrus / Black\r\n  June 13 - Coral / Tan / Brown\r\n  June 20 - Turquoise / Black (FATHERS DAY)\r\n  June 27 - Pastels / Khaki\r\n  \r\n  <font face=\"Arial\" size=\"2\">Citrus colors = tangerine, lemon, lime</font>\r\n  Turquoise blue = green/blue color (aka: aqua&hellip;NOT light or medium blue)\r\n  Citrus colors = tangerine, lemon, lime<font face=\"Arial\" size=\"2\">Jewel tones = emerald, ruby, gold, saphire, etc</font>\r\n  Jewel tones = emerald, ruby, gold, saphire, etc</pre>\r\n  <br />\r\n\n- |\n  <h1 style=\"text-align: center;\">\r\n  	Choir Colors</h1>\r\n  <pre style=\"text-align: center;\">\r\n  <font face=\"Cambria\" size=\"4\">Pastel / Khaki / Tan (EASTER)</font>April 18 - <font face=\"Cambria\" size=\"4\">Light Blue / Brown / Tan</font>April 18 - Light Blue / Brown / Tan\r\n  April 25 - Lime Green / White / Navy\r\n  May 2 - Jewel Tones / Black\r\n  May 9 - Pink / Gray / Navy (MOTHERS DAY)\r\n  May 16 - Green (all shades) / Khaki\r\n  May 23 - Fuschia (bright pink) / Bright Greens / Black\r\n  May 30 - Turquoise / White / Navy (MEMORIAL DAY)\r\n  June 6 - Citrus / Black\r\n  June 13 - Coral / Tan / Brown\r\n  June 20 - Turquoise / Black (FATHERS DAY)\r\n  June 27 - Pastels / Khaki\r\n  \r\n  <font face=\"Arial\" size=\"2\">Citrus colors = tangerine, lemon, lime</font>\r\n  Turquoise blue = green/blue color (aka: aqua&hellip;NOT light or medium blue)\r\n  Citrus colors = tangerine, lemon, lime<font face=\"Arial\" size=\"2\">Jewel tones = emerald, ruby, gold, saphire, etc</font>\r\n  Jewel tones = emerald, ruby, gold, saphire, etc</pre>\r\n  <br />\r\n\n',3,NULL,'2010-04-11 15:49:32','2010-04-11 15:49:32'),(20,9,'Page',NULL,NULL,NULL,'--- \nbody: \n- |\n  <h1 style=\"text-align: center;\">\r\n  	Choir Colors</h1>\r\n  <pre style=\"text-align: center;\">\r\n  <font face=\"Cambria\" size=\"4\">Pastel / Khaki / Tan (EASTER)</font>April 18 - <font face=\"Cambria\" size=\"4\">Light Blue / Brown / Tan</font>April 18 - Light Blue / Brown / Tan\r\n  April 25 - Lime Green / White / Navy\r\n  May 2 - Jewel Tones / Black\r\n  May 9 - Pink / Gray / Navy (MOTHERS DAY)\r\n  May 16 - Green (all shades) / Khaki\r\n  May 23 - Fuschia (bright pink) / Bright Greens / Black\r\n  May 30 - Turquoise / White / Navy (MEMORIAL DAY)\r\n  June 6 - Citrus / Black\r\n  June 13 - Coral / Tan / Brown\r\n  June 20 - Turquoise / Black (FATHERS DAY)\r\n  June 27 - Pastels / Khaki\r\n  \r\n  <font face=\"Arial\" size=\"2\">Citrus colors = tangerine, lemon, lime</font>\r\n  Turquoise blue = green/blue color (aka: aqua&hellip;NOT light or medium blue)\r\n  Citrus colors = tangerine, lemon, lime<font face=\"Arial\" size=\"2\">Jewel tones = emerald, ruby, gold, saphire, etc</font>\r\n  Jewel tones = emerald, ruby, gold, saphire, etc</pre>\r\n  <br />\r\n\n- \"<h1 style=\\\"text-align: center;\\\">\\r\\n\\\n  \\tChoir Colors</h1>\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">\\r\\n\\\n  </pre>\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">April 18 - Light Blue / Brown / Tan<br>April 25 - Lime Green / White / Navy<br>May 2 - Jewel Tones / Black<br>May 9 - Pink / Gray / Navy (MOTHERS DAY)<br>May 16 - Green (all shades) / Khaki<br>May 23 - Fuschia (bright pink) / Bright Greens / Black<br>May 30 - Turquoise / White / Navy (MEMORIAL DAY)<br>June 6 - Citrus / Black<br>June 13 - Coral / Tan / Brown<br>June 20 - Turquoise / Black (FATHERS DAY)<br>June 27 - Pastels / Khaki<br><br><font face=\\\"Arial\\\" size=\\\"2\\\">Citrus colors = tangerine, lemon, lime</font><br>Turquoise blue = green/blue color (aka: aqua\\xE2\\x80\\xA6NOT light or medium blue)<br>Citrus colors = tangerine, lemon, lime<font face=\\\"Arial\\\" size=\\\"2\\\">Jewel tones = emerald, ruby, gold, saphire, etc</font><br>Jewel tones = emerald, ruby, gold, saphire, etc</pre>\"\n',4,NULL,'2010-04-11 15:50:21','2010-04-11 15:50:21'),(21,9,'Page',NULL,NULL,NULL,'--- \nbody: \n- \"<h1 style=\\\"text-align: center;\\\">\\r\\n\\\n  \\tChoir Colors</h1>\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">\\r\\n\\\n  </pre>\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">April 18 - Light Blue / Brown / Tan<br>April 25 - Lime Green / White / Navy<br>May 2 - Jewel Tones / Black<br>May 9 - Pink / Gray / Navy (MOTHERS DAY)<br>May 16 - Green (all shades) / Khaki<br>May 23 - Fuschia (bright pink) / Bright Greens / Black<br>May 30 - Turquoise / White / Navy (MEMORIAL DAY)<br>June 6 - Citrus / Black<br>June 13 - Coral / Tan / Brown<br>June 20 - Turquoise / Black (FATHERS DAY)<br>June 27 - Pastels / Khaki<br><br><font face=\\\"Arial\\\" size=\\\"2\\\">Citrus colors = tangerine, lemon, lime</font><br>Turquoise blue = green/blue color (aka: aqua\\xE2\\x80\\xA6NOT light or medium blue)<br>Citrus colors = tangerine, lemon, lime<font face=\\\"Arial\\\" size=\\\"2\\\">Jewel tones = emerald, ruby, gold, saphire, etc</font><br>Jewel tones = emerald, ruby, gold, saphire, etc</pre>\"\n- \"<h1 style=\\\"text-align: center;\\\">\\r\\n\\\n  \\tChoir Colors</h1>\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">\\r\\n\\\n  </pre>\\r\\n\\\n  <p style=\\\"text-align: center;\\\">\\r\\n\\\n  \\t<br />\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">April 18 - Light Blue / Brown / Tan<br>April 25 - Lime Green / White / Navy<br>May 2 - Jewel Tones / Black<br>May 9 - Pink / Gray / Navy (MOTHERS DAY)<br>May 16 - Green (all shades) / Khaki<br>May 23 - Fuschia (bright pink) / Bright Greens / Black<br>May 30 - Turquoise / White / Navy (MEMORIAL DAY)<br>June 6 - Citrus / Black<br>June 13 - Coral / Tan / Brown<br>June 20 - Turquoise / Black (FATHERS DAY)<br>June 27 - Pastels / Khaki</pre><pre style=\\\"text-align: center;\\\">Turquoise blue = green/blue color (aka: aqua\\xE2\\x80\\xA6NOT light or medium blue)<br>Citrus colors = tangerine, lemon, lime</pre><pre style=\\\"text-align: center;\\\">Jewel </pre><pre style=\\\"text-align: center;\\\">tones = emerald, ruby, gold, saphire, etc</pre></p>\\r\\n\"\n',5,NULL,'2010-04-11 16:03:36','2010-04-11 16:03:36'),(22,9,'Page',NULL,NULL,NULL,'--- \nbody: \n- \"<h1 style=\\\"text-align: center;\\\">\\r\\n\\\n  \\tChoir Colors</h1>\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">\\r\\n\\\n  </pre>\\r\\n\\\n  <p style=\\\"text-align: center;\\\">\\r\\n\\\n  \\t<br />\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">April 18 - Light Blue / Brown / Tan<br>April 25 - Lime Green / White / Navy<br>May 2 - Jewel Tones / Black<br>May 9 - Pink / Gray / Navy (MOTHERS DAY)<br>May 16 - Green (all shades) / Khaki<br>May 23 - Fuschia (bright pink) / Bright Greens / Black<br>May 30 - Turquoise / White / Navy (MEMORIAL DAY)<br>June 6 - Citrus / Black<br>June 13 - Coral / Tan / Brown<br>June 20 - Turquoise / Black (FATHERS DAY)<br>June 27 - Pastels / Khaki</pre><pre style=\\\"text-align: center;\\\">Turquoise blue = green/blue color (aka: aqua\\xE2\\x80\\xA6NOT light or medium blue)<br>Citrus colors = tangerine, lemon, lime</pre><pre style=\\\"text-align: center;\\\">Jewel </pre><pre style=\\\"text-align: center;\\\">tones = emerald, ruby, gold, saphire, etc</pre></p>\\r\\n\"\n- \"<h1 style=\\\"text-align: center;\\\">\\r\\n\\\n  \\tChoir Colors</h1>\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">\\r\\n\\\n  </pre>\\r\\n\\\n  <p style=\\\"text-align: center;\\\">\\r\\n\\\n  \\t<br />\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">April 18 - Light Blue / Brown / Tan<br>April 25 - Lime Green / White / Navy<br>May 2 - Jewel Tones / Black<br>May 9 - Pink / Gray / Navy (MOTHERS DAY)<br>May 16 - Green (all shades) / Khaki<br>May 23 - Fuschia (bright pink) / Bright Greens / Black<br>May 30 - Turquoise / White / Navy (MEMORIAL DAY)<br>June 6 - Citrus / Black<br>June 13 - Coral / Tan / Brown<br>June 20 - Turquoise / Black (FATHERS DAY)<br>June 27 - Pastels / Khaki</pre><pre style=\\\"text-align: center;\\\">Turquoise blue = green/blue color (aka: aqua\\xE2\\x80\\xA6NOT light or medium blue)<br>Citrus colors = tangerine, lemon, lime</pre><pre style=\\\"text-align: center;\\\">Jewel tones = emerald, ruby, gold, saphire, etc</pre></p>\\r\\n\"\n',6,NULL,'2010-04-11 16:04:03','2010-04-11 16:04:03'),(23,9,'Page',NULL,NULL,NULL,'--- \nbody: \n- \"<h1 style=\\\"text-align: center;\\\">\\r\\n\\\n  \\tChoir Colors</h1>\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">\\r\\n\\\n  </pre>\\r\\n\\\n  <p style=\\\"text-align: center;\\\">\\r\\n\\\n  \\t<br />\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">April 18 - Light Blue / Brown / Tan<br>April 25 - Lime Green / White / Navy<br>May 2 - Jewel Tones / Black<br>May 9 - Pink / Gray / Navy (MOTHERS DAY)<br>May 16 - Green (all shades) / Khaki<br>May 23 - Fuschia (bright pink) / Bright Greens / Black<br>May 30 - Turquoise / White / Navy (MEMORIAL DAY)<br>June 6 - Citrus / Black<br>June 13 - Coral / Tan / Brown<br>June 20 - Turquoise / Black (FATHERS DAY)<br>June 27 - Pastels / Khaki</pre><pre style=\\\"text-align: center;\\\">Turquoise blue = green/blue color (aka: aqua\\xE2\\x80\\xA6NOT light or medium blue)<br>Citrus colors = tangerine, lemon, lime</pre><pre style=\\\"text-align: center;\\\">Jewel tones = emerald, ruby, gold, saphire, etc</pre></p>\\r\\n\"\n- \"<h1 style=\\\"text-align: center;\\\">\\r\\n\\\n  \\tChoir Colors</h1>\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">April 18 - Light Blue / Brown / Tan<br>April 25 - Lime Green / White / Navy<br>May 2 - Jewel Tones / Black<br>May 9 - Pink / Gray / Navy (MOTHERS DAY)<br>May 16 - Green (all shades) / Khaki<br>May 23 - Fuschia (bright pink) / Bright Greens / Black<br>May 30 - Turquoise / White / Navy (MEMORIAL DAY)<br>June 6 - Citrus / Black<br>June 13 - Coral / Tan / Brown<br>June 20 - Turquoise / Black (FATHERS DAY)<br>June 27 - Pastels / Khaki</pre><pre style=\\\"text-align: center;\\\">Turquoise blue = green/blue color (aka: aqua\\xE2\\x80\\xA6NOT light or medium blue)<br>Citrus colors = tangerine, lemon, lime</pre>Jewel tones = emerald, ruby, gold, saphire, etc</pre></p>\\r\\n\"\n',7,NULL,'2010-04-11 16:04:38','2010-04-11 16:04:38'),(24,9,'Page',NULL,NULL,NULL,'--- \nbody: \n- \"<h1 style=\\\"text-align: center;\\\">\\r\\n\\\n  \\tChoir Colors</h1>\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">April 18 - Light Blue / Brown / Tan<br>April 25 - Lime Green / White / Navy<br>May 2 - Jewel Tones / Black<br>May 9 - Pink / Gray / Navy (MOTHERS DAY)<br>May 16 - Green (all shades) / Khaki<br>May 23 - Fuschia (bright pink) / Bright Greens / Black<br>May 30 - Turquoise / White / Navy (MEMORIAL DAY)<br>June 6 - Citrus / Black<br>June 13 - Coral / Tan / Brown<br>June 20 - Turquoise / Black (FATHERS DAY)<br>June 27 - Pastels / Khaki</pre><pre style=\\\"text-align: center;\\\">Turquoise blue = green/blue color (aka: aqua\\xE2\\x80\\xA6NOT light or medium blue)<br>Citrus colors = tangerine, lemon, lime</pre>Jewel tones = emerald, ruby, gold, saphire, etc</pre></p>\\r\\n\"\n- \"<h1 style=\\\"text-align: center;\\\">\\r\\n\\\n  \\tChoir Colors</h1>\\r\\n\\\n  <pre style=\\\"text-align: center;\\\">April 18 - Light Blue / Brown / Tan<br>April 25 - Lime Green / White / Navy<br>May 2 - Jewel Tones / Black<br>May 9 - Pink / Gray / Navy (MOTHERS DAY)<br>May 16 - Green (all shades) / Khaki<br>May 23 - Fuschia (bright pink) / Bright Greens / Black<br>May 30 - Turquoise / White / Navy (MEMORIAL DAY)<br>June 6 - Citrus / Black<br>June 13 - Coral / Tan / Brown<br>June 20 - Turquoise / Black (FATHERS DAY)<br>June 27 - Pastels / Khaki</pre><pre style=\\\"text-align: center;\\\">Turquoise blue = green/blue color (aka: aqua\\xE2\\x80\\xA6NOT light or medium blue)<br>Citrus colors = tangerine, lemon, lime<br>Jewel tones = emerald, ruby, gold, saphire, etc</pre>\"\n',8,NULL,'2010-04-11 16:05:20','2010-04-11 16:05:20'),(25,10,'Page',NULL,NULL,NULL,'--- \nbody: \n- |\n  <h1 style=\"text-align: center;\">\r\n  	<br />\r\n  	Temple Baptist Church Choir</h1>\r\n  <h2 style=\"text-align: center;\">\r\n  	<br />\r\n  	<strong><a href=\"http://www.templetoday.com/box\">Box</a><br />\r\n  	<a href=\"http://www.templetoday.com/choir-colors\">Choir Colors</a><br />\r\n  	</strong></h2>\r\n\n- |\n  <h1 style=\"text-align: center;\">\r\n  	<br />\r\n  	Temple Baptist Church Choir</h1>\r\n  <h2 style=\"text-align: center;\">\r\n  	<a href=\"http://www.templetoday.com/box\">Box</a>	<strong><br />\r\n  <a href=\"http://www.templetoday.com/choir-colors\">Choir Colors</a>	<br />\r\n  	</strong></h2>\r\n\n',2,NULL,'2010-04-11 16:16:12','2010-04-11 16:16:12');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wysihat_files`
--

DROP TABLE IF EXISTS `wysihat_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wysihat_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_file_name` varchar(255) DEFAULT NULL,
  `file_content_type` varchar(255) DEFAULT NULL,
  `file_file_size` int(11) DEFAULT NULL,
  `file_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wysihat_files`
--

LOCK TABLES `wysihat_files` WRITE;
/*!40000 ALTER TABLE `wysihat_files` DISABLE KEYS */;
INSERT INTO `wysihat_files` VALUES (1,'rails.png','image/png',6646,'2010-09-04 18:51:02','2010-09-04 18:51:02','2010-09-04 18:51:02');
/*!40000 ALTER TABLE `wysihat_files` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-07-21 23:16:16
