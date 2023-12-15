SET GLOBAL LOG_BIN_TRUST_FUNCTION_CREATORS = 1;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'hola';
CREATE DATABASE  IF NOT EXISTS `taller_mecanico1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `taller_mecanico1`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: taller_mecanico1
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID_CLI` int NOT NULL AUTO_INCREMENT,
  `NUMRUN` int NOT NULL,
  `DVRUN` varchar(1) DEFAULT NULL,
  `NOMBRES` varchar(50) NOT NULL,
  `APELLIDOS` varchar(50) NOT NULL,
  `NUMFONO` int DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `DIRECCION` varchar(50) DEFAULT NULL,
  `USUARIO` varchar(20) NOT NULL,
  `CONTRASENIA` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_CLI`),
  UNIQUE KEY `NUMRUN` (`NUMRUN`),
  UNIQUE KEY `USUARIO` (`USUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,10199294,'2','Phyllys','M\'Chirrie',934539288,'pmchirrie0@last.fm','1989-11-15','8 Gina Crossing','pmchirrie0','yZ3{~mD?jD8mZu,'),(2,18642135,'3','Eduard','Britzius',961225758,'ebritzius0@imdb.com','1962-03-02','23 Basil Plaza','ebritzius0','gJ0{dV)S<3c5'),(3,6655489,'9','Leonard','Jeaneau',982258218,'ljeaneau1@senate.gov','1994-02-15','40682 Amoth Alley','ljeaneau1','uK9+>m0>|so.'),(4,8538378,'7','Lauri','Booth',952714468,'lbooth2@moonfruit.com','1973-06-29','84566 Cody Plaza','lbooth2','vE2@Da}eCJ_B)52'),(5,22747978,'7','Siusan','Mustill',929454021,'smustill2r@posterous.com','1969-09-29','688 Charing Cross Trail','smustill2r','nG9$8#AFi\"'),(7,13769042,'K','Agnola','Mongan',935436263,'amongan3@sun.com','1973-02-17','28031 Butternut Alley','amongan3','lS7%K)jcV~?U'),(8,5046671,'K','Matti','Simmen',929696573,'msimmen4@ustream.tv','1954-02-07','69782 Rutledge Hill','msimmen4','mO1@,2~gPFE{qr'),(10,15068555,'9','Manfred','Straniero',956270470,'mstraniero5@eventbrite.com','1956-04-18','9 Novick Court','mstraniero5','fJ4*{hIoiZ3'),(11,14150974,'8','Lynne','Houlahan',951065072,'lhoulahan6@apple.com','1981-03-24','53 Pierstorff Circle','lhoulahan6','qZ2\"{uEvd/y<&,E'),(12,12060523,'2','Pet','Markham',996424859,'pmarkham7@shop-pro.jp','1995-08-17','08 Northport Terrace','pmarkham7','tL4uOT)shP'),(13,22830003,'9','Wanda','Aldam',928923012,'waldam8@nps.gov','1965-04-18','150 Fair Oaks Alley','waldam8','pH5=XSi)S'),(14,22596364,'9','Franz','Stealy',977561423,'fstealy9@barnesandnoble.com','1949-02-08','657 Fulton Way','fstealy9','vF7`8ye4{/ew&t0?'),(15,6689170,'4','Hyacinthia','Vasilchikov',999667624,'hvasilchikova@canalblog.com','1983-12-11','9631 Melby Trail','hvasilchikova','gT8!rgZIu'),(16,22388200,'5','Kristina','Kitteridge',931663249,'kkitteridgeb@prweb.com','1947-11-07','12909 Schiller Parkway','kkitteridgeb','hG7.o&?}6av,vP~j'),(17,8493998,'6','Christophorus','Rollings',915115988,'crollingsc@goo.gl','1960-03-09','000 Forest Alley','crollingsc','fZ4~PU>xrZunFd*5'),(18,19415443,'7','Skipper','Arran',979134030,'sarrand@yahoo.com','1954-12-02','0 Jenna Plaza','sarrand','fH8{Za+8SJF#N='),(19,25504886,'4','Brenna','Petegre',956955396,'bpetegree@dmoz.org','1977-12-17','112 Fair Oaks Circle','bpetegree','rH1~CCDbMYAgm'),(20,23422780,'7','Wood','Acey',913456940,'waceyf@upenn.edu','1952-03-26','9313 Canary Circle','waceyf','kK9*j&0?#,)/'),(21,23594918,'0','Kenna','Giroldi',992415251,'kgiroldig@amazon.com','1949-01-27','71815 Blue Bill Park Pass','kgiroldig','rK8\'0KYjQVlZ{'),(22,23394771,'7','Amanda','Alaway',987004546,'aalawayh@hatena.ne.jp','1948-12-19','62617 Amoth Hill','aalawayh','gN4~L1a(_S8T'),(23,14807318,'K','Rollie','Hugnet',940086965,'rhugneti@tmall.com','1953-11-01','77492 Ridgeway Center','rhugneti','dJ1?1Pj<9I,Hx}=L'),(24,21986153,'2','Elberta','Bavister',989448834,'ebavisterj@cbc.ca','1976-11-01','34 Badeau Court','ebavisterj','fJ8akT<sx,}a'),(25,8070001,'6','Tonie','Yea',953215025,'tyeak@ucoz.ru','1989-03-27','46823 Ruskin Pass','tyeak','lU9/VA5`q3'),(26,11528772,'9','Robinia','Cassels',967544444,'rcasselsl@mozilla.com','1962-05-27','4969 Shoshone Drive','rcasselsl','bR0/v_?YR$%@'),(27,8151295,'7','Dede','Illyes',912112112,'dillyesm@redcross.org','1949-03-29','0 Linden Circle','dillyesm','gJ8|~LA.}kHS\'kA'),(28,5431452,'3','Barnabas','Shmyr',967542189,'bshmyrn@macromedia.com','1953-10-10','933 Carberry Point','bshmyrn','kZ6<.5$jdXz'),(29,18225467,'3','Estrella','Pendrid',921881790,'ependrido@uol.com.br','1987-02-17','98 Truax Parkway','ependrido','lD2VR$4YO+`q8w'),(30,23176949,'8','Juli','Trenouth',977520216,'jtrenouthp@nasa.gov','1998-08-06','9289 Burrows Circle','jtrenouthp','pI9+xZWF4+L'),(31,9504817,'K','Boone','Vatcher',986076675,'bvatcherq@hostgator.com','1967-10-04','4 1st Place','bvatcherq','oY6#h*)D'),(32,11838285,'4','Hailee','Presdie',953054111,'hpresdier@devhub.com','1971-06-02','53 Delaware Junction','hpresdier','aA1{W<p>g'),(33,15902861,'5','Tanny','Keston',924650954,'tkestons@vimeo.com','1983-08-18','28 Larry Circle','tkestons','zO3*cl\"fuY'),(34,12318793,'8','Rooney','Tulleth',958692444,'rtulletht@nyu.edu','1948-08-30','43414 Sunnyside Court','rtulletht','hP5&lG6mY'),(35,10372985,'8','Jonie','Clericoates',994238321,'jclericoatesu@ucoz.com','1984-08-21','4 Sherman Point','jclericoatesu','nJ8?/\"I0n'),(36,21905024,'0','Simon','Collomosse',968380519,'scollomossev@nydailynews.com','1947-09-12','15339 Sunbrook Hill','scollomossev','aE1`h\'jrMr9~#0\'S'),(37,19994184,'4','Quinton','Durdy',947520571,'qdurdyw@ihg.com','1988-05-23','22132 Bunting Parkway','qdurdyw','sO2\"\"nkyX$rAq'),(38,6114910,'4','Marlena','McIlhatton',943403172,'mmcilhattonx@nih.gov','1996-04-27','29243 Veith Terrace','mmcilhattonx','sH5)AmshMU\"'),(39,8454186,'9','Vasily','Downham',914590559,'vdownhamy@bbc.co.uk','1975-08-15','006 Homewood Avenue','vdownhamy','gG0%Jbl%T8\"|SC\''),(40,14268507,'8','Augy','Angeli',938515307,'aangeliz@pcworld.com','1997-11-16','87 Welch Hill','aangeliz','vP0|0kOov}(|||@'),(41,6065287,'2','Jeri','Whysall',980870183,'jwhysall10@parallels.com','1953-07-19','0 Beilfuss Place','jwhysall10','sL9>J~/k?nHx9+O'),(42,17024985,'2','Barrie','Softley',913547021,'bsoftley11@fc2.com','1998-07-22','09420 5th Junction','bsoftley11','mJ3_KLCx`|y'),(43,24404538,'3','Vance','Hallahan',975309409,'vhallahan12@technorati.com','1995-08-23','6 Becker Plaza','vhallahan12','gA0.t53\'t\'Hv'),(44,10932847,'2','Berget','Beneyto',936180955,'bbeneyto13@1und1.de','1985-07-01','7120 Steensland Road','bbeneyto13','kR1_TZ{/S~~hhjd'),(45,24450980,'0','Beltran','Tallquist',918097241,'btallquist14@ocn.ne.jp','1988-08-25','89 Rutledge Road','btallquist14','bW8<@g~B\"Ey'),(46,5183624,'3','Dag','MacGinlay',926857742,'dmacginlay15@businesswire.com','1949-09-01','98661 Orin Alley','dmacginlay15','iL8>R|N%'),(47,25764965,'2','Conroy','Parnby',924832481,'cparnby16@usda.gov','2000-12-20','7259 Mariners Cove Road','cparnby16','mS6#/SGe(<{.M'),(48,9480816,'2','Charin','Edinborough',912400174,'cedinborough17@tripod.com','1953-11-15','01073 East Avenue','cedinborough17','yZ9@HSZ9hR9=eR0u'),(49,23483304,'9','Welby','Gidden',997824865,'wgidden18@illinois.edu','1984-07-04','17030 East Point','wgidden18','sF6\'M(b3<IGZF'),(50,24274744,'5','Reeba','Pollicote',958544972,'rpollicote19@mediafire.com','1998-09-18','593 Trailsway Parkway','rpollicote19','kX3=>y|_Mq'),(51,12274857,'K','Olympe','Tremayle',955581051,'otremayle1a@dailymotion.com','1984-03-27','5 Sugar Way','otremayle1a','gB5|xczD7@@'),(52,22424630,'7','Andonis','Palfree',981814839,'apalfree1b@dropbox.com','1963-04-09','7466 Anzinger Terrace','apalfree1b','rD2@\'L`A~m'),(53,10382784,'1','Emelda','Hargie',961825300,'ehargie1c@dell.com','1982-07-16','0315 Leroy Trail','ehargie1c','nI1|?mdB'),(54,11094954,'5','Geno','Hanway',914442233,'ghanway1d@oaic.gov.au','1997-04-26','9 Duke Drive','ghanway1d','lK0\'(6p1Kn>Eo&+'),(55,15318461,'5','Murdoch','Vyvyan',987985664,'mvyvyan1e@dailymotion.com','1982-02-22','08 Stone Corner Way','mvyvyan1e','rR7./.5PR_d'),(56,19118794,'6','Helena','Danieli',993007474,'hdanieli1f@wikipedia.org','1987-04-27','845 Logan Center','hdanieli1f','kC4.kA_g2\",x<N'),(57,20797199,'5','Stafani','Gorbell',996717067,'sgorbell1g@cmu.edu','1969-09-24','237 Artisan Hill','sgorbell1g','pV9,!8|tc\"D8j'),(58,22060893,'K','Halimeda','Theurer',923315332,'htheurer1h@businesswire.com','1987-10-02','8 Raven Terrace','htheurer1h','sX3&zR&Po'),(59,22259993,'8','Erda','Hartzog',957078989,'ehartzog1i@ox.ac.uk','1958-02-23','0214 Menomonie Terrace','ehartzog1i','cF2!SY.(N2mPAzZ'),(60,17347255,'2','Walliw','Swyer',987127790,'wswyer1j@reference.com','1969-01-24','41 Burrows Terrace','wswyer1j','kW8%BYlO*Jib'),(61,18889139,'K','Addie','Kirimaa',954854532,'akirimaa1k@usgs.gov','1969-01-05','26 Westridge Alley','akirimaa1k','jL8#.jm9'),(62,9591404,'7','Inglis','O Mullen',979157597,'iomullen1l@google.com.br','1970-09-25','2 Ridgeview Pass','iomullen1l','yF5/rgXlG3\'&'),(63,7989479,'6','Sondra','Dawidman',943820687,'sdawidman1m@w3.org','1963-04-06','4 Donald Trail','sdawidman1m','bQ5|9XRoX?uI}`CB'),(64,22014420,'8','Lindy','Sans',968644216,'lsans1n@plala.or.jp','1968-08-12','857 Oakridge Road','lsans1n','xL0\'<_Xjni=g9'),(65,9790271,'2','Desiree','MacConneely',956448379,'dmacconneely1o@reddit.com','1995-08-02','6615 Larry Circle','dmacconneely1o','kP6+MPU3Y*'),(66,19420529,'5','Antonino','Paley',990110664,'apaley1p@comcast.net','1952-07-30','9142 Merry Alley','apaley1p','zC0=rUecm4@IMfhp'),(67,12659785,'1','Kirstyn','Admans',964062901,'kadmans1q@ca.gov','1947-05-31','60536 Eastlawn Court','kadmans1q','uE9%}z3$Oyhg_jf'),(68,11668906,'5','Wylie','Nannoni',933784846,'wnannoni1r@ucsd.edu','1998-02-09','9068 Messerschmidt Court','wnannoni1r','nS9%ShS6{>5%'),(69,11347106,'9','Shoshanna','Domotor',949602344,'sdomotor1s@youtu.be','1989-10-17','0 Orin Alley','sdomotor1s','eM9``9V*'),(70,9215212,'K','Donaugh','Stenning',940290786,'dstenning1t@smh.com.au','1993-01-13','9207 Truax Lane','dstenning1t','lX9/Mpjwomf!ytr'),(71,9273349,'1','Piper','Cawcutt',956405420,'pcawcutt1u@gnu.org','1957-12-22','7 Rutledge Avenue','pcawcutt1u','rL5<Hs>G6#B!<'),(72,22401363,'9','Marthe','Caskey',978941157,'mcaskey1v@wisc.edu','1953-12-14','41779 New Castle Drive','mcaskey1v','fH7((be{|S8C'),(73,12006641,'2','Garth','Baumann',921249511,'gbaumann1w@home.pl','1948-01-15','3 Independence Hill','gbaumann1w','aM4%BNYk'),(74,22921426,'8','Fiorenze','Sagerson',926849684,'fsagerson1x@mediafire.com','1986-03-03','494 Golf Course Drive','fsagerson1x','dX3<KH|Kq9OCUK'),(75,7052499,'6','Killy','Nuscha',917525060,'knuscha1y@buzzfeed.com','1954-11-29','299 Ryan Street','knuscha1y','cF1\"M&brD0CWZ=S'),(76,10973576,'0','Nick','Watmough',945664587,'nwatmough1z@booking.com','1987-08-16','6119 Fair Oaks Hill','nwatmough1z','jA8}Pox#\"+y#KR'),(77,20602076,'8','Kristofer','Miskin',998949266,'kmiskin20@vistaprint.com','1984-11-26','4685 Atwood Park','kmiskin20','eQ7@AR.}HATBhL'),(78,8301279,'K','Sheilakathryn','Weddell',997173491,'sweddell21@mtv.com','1946-12-05','7 Browning Terrace','sweddell21','wR8)l3C4?9(@R'),(79,12266241,'1','Bethina','Griston',986341412,'bgriston22@dyndns.org','1945-10-26','96459 Loeprich Center','bgriston22','xP2*+|!ByO2_AZ'),(80,25243440,'2','Dani','Pharoah',950629790,'dpharoah23@utexas.edu','1960-01-30','1 Armistice Hill','dpharoah23','wE1&Mu@HE_H_'),(81,16985594,'3','Tracie','Shorland',962502081,'tshorland24@netscape.com','1995-11-21','00 Jenifer Circle','tshorland24','yO9<_h{qq'),(82,6840464,'9','Antonina','Di Carli',978454640,'adicarli25@naver.com','1962-01-14','4 Butterfield Point','adicarli25','cJ4>ys,\'k'),(83,17557811,'0','Hendrika','Kadwallider',969843129,'hkadwallider26@google.com.br','1991-06-03','7 Darwin Lane','hkadwallider26','mZ7.8k{1,g(g/~'),(84,24329671,'4','Darci','Pecha',992583659,'dpecha27@bizjournals.com','1949-03-01','980 Waxwing Road','dpecha27','bG8|TZyL'),(85,23570116,'2','Gusti','Murrhardt',954419500,'gmurrhardt28@typepad.com','1949-08-27','8 Harper Park','gmurrhardt28','jD6{4y0m0'),(86,9254614,'4','Marcia','Luttgert',918121724,'mluttgert29@kickstarter.com','1997-01-25','7743 Heffernan Road','mluttgert29','xU2*IYDF#YlN'),(87,12655410,'9','Rodolphe','Pankhurst.',991942509,'rpankhurst2a@yellowpages.com','2000-09-20','90639 Mandrake Trail','rpankhurst2a','kJ5@5Kg>?,P\"a(\''),(88,12324185,'1','Curry','Sempill',990515746,'csempill2b@paginegialle.it','1970-12-07','42 Anzinger Place','csempill2b','aZ5/c2,hgWS'),(89,6307425,'K','Vinnie','Sturm',927505973,'vsturm2c@reddit.com','1984-02-24','43778 Forest Run Parkway','vsturm2c','cM1&_VDad5x~j4~'),(90,23454052,'1','Tilly','Tester',997485789,'ttester2d@free.fr','1962-04-06','21642 Towne Parkway','ttester2d','bD4`EtV&*A$ZK'),(91,24471340,'8','Blake','Cleworth',986544872,'bcleworth2e@examiner.com','1980-08-21','4 Namekagon Circle','bcleworth2e','xZ4,Vj1nu5z'),(92,21901874,'6','Godfree','Hubbucks',961430127,'ghubbucks2f@senate.gov','1999-07-26','62215 Farmco Circle','ghubbucks2f','yQ7\'Qa)!n_&vDr'),(93,20861747,'8','Trudie','Ivashechkin',992580637,'tivashechkin2g@sbwire.com','1995-08-08','281 Milwaukee Avenue','tivashechkin2g','uX9!TQ9#3b|Ur'),(94,22204665,'3','Maudie','Cullinan',955814652,'mcullinan2h@sina.com.cn','1947-11-04','72253 Maywood Terrace','mcullinan2h','eR1+_Z%uW(iMM3p'),(95,24051798,'1','Northrop','Cowap',976754369,'ncowap2i@nhs.uk','1952-01-20','0255 Sheridan Road','ncowap2i','zX8.2=Gvtb'),(96,9970059,'9','Leo','Bennie',969240980,'lbennie2j@list-manage.com','1995-08-08','20 Lerdahl Plaza','lbennie2j','hZ3%ycOs'),(97,21750604,'2','Berthe','Whoolehan',936154008,'bwhoolehan2k@angelfire.com','1946-04-24','2 Forster Pass','bwhoolehan2k','cU2$6=7X'),(98,20468367,'0','Kym','Vertigan',980200054,'kvertigan2l@nytimes.com','1962-08-16','6404 Kingsford Road','kvertigan2l','tJ1$GU@m6|hL*'),(99,6336993,'4','Ashly','Heimes',999484208,'aheimes2m@dmoz.org','1989-01-04','6 Bluejay Court','aheimes2m','pF6\"YvucEoi}G'),(100,20981801,'9','Audy','Battisson',961592815,'abattisson2n@chron.com','1963-04-27','3 Dakota Parkway','abattisson2n','yA7.M7~ytT%Q'),(101,11206753,'1','Edgar','Siburn',924362325,'esiburn2o@google.ca','1997-05-19','7 East Lane','esiburn2o','rC0=KqK76|g0t'),(102,18040460,'0','Stephine','MacGill',960216132,'smacgill2p@cnn.com','1945-03-26','9078 Graedel Pass','smacgill2p','sC7{DpS\"\'rx6Se\"T'),(103,18890767,'9','Thelma','Dalgleish',989386448,'tdalgleish2q@paypal.com','1990-12-02','73 Muir Place','tdalgleish2q','mM6=PMZwWe$Cq');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_DV` BEFORE INSERT ON `cliente` FOR EACH ROW BEGIN
    SET NEW.DVRUN = digitoVerificador(NEW.NUMRUN);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pedido` (
  `ID_DET_PED` int NOT NULL AUTO_INCREMENT,
  `ID_PEDIDO` int NOT NULL,
  `ID_PRODUCTO` int NOT NULL,
  `CANTIDAD` int DEFAULT NULL,
  `COSTO` int DEFAULT NULL,
  `TOTAL` int DEFAULT NULL,
  PRIMARY KEY (`ID_DET_PED`),
  KEY `FK_DETALLE_PED` (`ID_PEDIDO`),
  KEY `FK_DETALLE_PROD` (`ID_PRODUCTO`),
  CONSTRAINT `FK_DETALLE_PED` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `pedido` (`ID_PEDIDO`),
  CONSTRAINT `FK_DETALLE_PROD` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `producto` (`ID_PRODUCTO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES (1,4,2,2,114000,228000),(2,4,5,5,4000,20000),(3,5,3,50,3000,150000),(4,6,5,20,4000,80000),(5,6,2,20,114000,2280000);
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `ID_DET_VENTA` int NOT NULL AUTO_INCREMENT,
  `ID_VENTA` int NOT NULL,
  `ID_SERV` int DEFAULT NULL,
  `ID_PRODUCTO` int DEFAULT NULL,
  `CANTIDAD` int DEFAULT NULL,
  `TOTAL` int DEFAULT NULL,
  `ID_TECNICO` int DEFAULT NULL,
  `ID_CAJERO` int DEFAULT NULL,
  PRIMARY KEY (`ID_DET_VENTA`),
  KEY `FK_DET_VENTA_VENTA` (`ID_VENTA`),
  KEY `FK_DET_VENTA_PROD` (`ID_PRODUCTO`),
  KEY `FK_DET_VENTA_SERV` (`ID_SERV`),
  KEY `FK_DET_VENTA_CAJERO_idx` (`ID_CAJERO`),
  KEY `FK_DET_VENTA_TECNICO_idx` (`ID_TECNICO`),
  CONSTRAINT `FK_DET_VENTA_CAJERO` FOREIGN KEY (`ID_CAJERO`) REFERENCES `empleado` (`ID_EMP`),
  CONSTRAINT `FK_DET_VENTA_PROD` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `producto` (`ID_PRODUCTO`),
  CONSTRAINT `FK_DET_VENTA_SERV` FOREIGN KEY (`ID_SERV`) REFERENCES `servicio` (`ID_SERV`),
  CONSTRAINT `FK_DET_VENTA_TECNICO` FOREIGN KEY (`ID_TECNICO`) REFERENCES `empleado` (`ID_EMP`),
  CONSTRAINT `FK_DET_VENTA_VENTA` FOREIGN KEY (`ID_VENTA`) REFERENCES `venta` (`ID_VENTA`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,2,1,NULL,2,100000,NULL,NULL),(2,2,2,NULL,1,4000,41,NULL),(3,3,2,NULL,1,4000,41,NULL),(5,3,1,NULL,1,50000,41,NULL),(6,4,1,NULL,1,50000,4,NULL);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `ID_EMP` int NOT NULL AUTO_INCREMENT,
  `NUMRUN` int NOT NULL,
  `DVRUN` char(1) NOT NULL,
  `NOMBRES` varchar(50) NOT NULL,
  `APELLIDOS` varchar(50) NOT NULL,
  `NUMFONO` int DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `DIRECCION` varchar(50) DEFAULT NULL,
  `ID_TIPO_EMP` int NOT NULL,
  `ID_TIPO_CON` int NOT NULL,
  `FECHA_CONTRATO` date NOT NULL,
  `SUELDO` int NOT NULL,
  `USUARIO` varchar(20) NOT NULL,
  `CONTRASENIA` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_EMP`),
  UNIQUE KEY `NUMRUN` (`NUMRUN`),
  UNIQUE KEY `USUARIO` (`USUARIO`),
  KEY `FK_EMP_TIPO_EMP` (`ID_TIPO_EMP`),
  KEY `FK_EMP_TIPO_CON` (`ID_TIPO_CON`),
  CONSTRAINT `FK_EMP_TIPO_CON` FOREIGN KEY (`ID_TIPO_CON`) REFERENCES `tipo_contrato` (`ID_TIPO_CON`),
  CONSTRAINT `FK_EMP_TIPO_EMP` FOREIGN KEY (`ID_TIPO_EMP`) REFERENCES `tipo_empleado` (`ID_TIPO_EMP`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,20153851,'3','Juan Pedro','Riquelme',912345678,'jpriquelme@serviexpress.cl','1996-06-06','Calle Nueva 123',1,4,'2024-01-05',4000000,'jpriquelme','michaelScott'),(2,10120895,'8','Adair','Petroselli',940262692,'apetroselli0@comcast.net','1985-07-16','123 Morning Park',2,5,'2023-09-18',619823,'apetroselli0','lU3Lvg1}\"H'),(3,10565372,'7','Gilbertina','Erdis',962875527,'gerdis1@ehow.com','1994-07-12','98 Burrows Circle',4,2,'2023-11-28',1675582,'gerdis1','vI4_49V72L'),(4,13168385,'5','Cozmo','Skentelbury',997153805,'cskentelbury2@alexa.com','1984-01-08','2779 Gulseth Trail',3,2,'2023-05-23',1626150,'cskentelbury2','hO4%,oi'),(5,17199108,'0','Denyse','Corkel',995148276,'dcorkel3@ning.com','1981-01-22','1738 Waubesa Hill',4,3,'2023-09-08',475571,'dcorkel3','cG2TM0/R@\"UJ4'),(6,14691197,'8','Tully','Buswell',959444872,'tbuswell4@multiply.com','1990-01-08','441 Dexter Terrace',4,2,'2023-05-27',432199,'tbuswell4','wP2y\'~yzo'),(7,28953716,'3','Ashlan','Lye',913285116,'alye5@accuweather.com','1990-11-24','1 Straubel Junction',2,1,'2023-05-26',669595,'alye5','xW9w|bCU9m0Nu'),(8,11725333,'3','Walsh','Knappett',950939712,'wknappett6@newyorker.com','1992-02-07','7161 Autumn Leaf Avenue',3,3,'2023-06-21',719544,'wknappett6','nV8yz/0%Au<\''),(9,27115827,'0','Rafaelia','Handke',993204576,'rhandke7@furl.net','1985-06-03','09 Burrows Street',3,5,'2023-01-07',1733805,'rhandke7','lS1bU!N$fYnK'),(10,26663336,'K','Ilysa','Toffolo',993086576,'itoffolo8@goo.ne.jp','1995-11-11','9855 Havey Plaza',2,2,'2023-02-27',626649,'itoffolo8','qW9MJmi)n0Pp,('),(11,26253013,'2','Almire','Holsall',981293883,'aholsall9@miibeian.gov.cn','1985-08-31','3335 Oxford Lane',2,2,'2023-05-18',1695414,'aholsall9','aJ1F1h8kL%dzP.'),(12,25357581,'6','Weston','Bursnell',955111863,'wbursnella@discovery.com','1981-11-11','57892 Pine View Drive',2,4,'2023-04-02',837369,'wbursnella','nU5jxlr{FEm='),(13,15183921,'5','Lucilia','Worral',945386759,'lworralb@php.net','2000-05-21','99 Merchant Parkway',2,5,'2023-02-18',1928456,'lworralb','wA6vj&rpO*}36Vj'),(14,17621195,'4','Micheil','Southworth',924767718,'msouthworthc@myspace.com','1983-08-27','031 Bowman Street',2,3,'2023-03-17',1804444,'msouthworthc','bA5|T<+Z\'Zn%7`e'),(15,11634919,'1','Lissi','Durban',944043914,'ldurband@symantec.com','1981-03-24','57 Morningstar Alley',3,5,'2023-02-03',1161980,'ldurband','oM5uAvF78S'),(16,11775174,'0','Kimberley','Lundberg',993842812,'klundberge@dailymail.co.uk','1995-06-12','88912 Carioca Circle',4,3,'2023-03-24',1198182,'klundberge','qS8`24~~'),(17,25093272,'3','Marena','Towler',949550914,'mtowlerf@dmoz.org','1998-10-09','1 Pepper Wood Pass',4,3,'2023-01-31',1815315,'mtowlerf','dX5UE8zg'),(18,23428837,'7','Scarlet','Prettyjohns',966602423,'sprettyjohnsg@ftc.gov','1985-03-05','38 Oak Valley Terrace',2,5,'2023-11-16',1539736,'sprettyjohnsg','aQ2%h3>diU{)FUi'),(19,13844323,'K','Carolann','Feldmark',934187569,'cfeldmarkh@plala.or.jp','1996-01-26','03960 Elka Court',2,2,'2023-01-27',503754,'cfeldmarkh','nI3n`IZ9nsqB~(Sr'),(20,19852003,'9','Niccolo','Axtell',914236528,'naxtelli@bizjournals.com','1981-09-25','1 Golden Leaf Place',3,3,'2023-06-21',1475788,'naxtelli','kW8{\"7Evd>Q/`I'),(21,10179803,'8','Neils','Cridlan',991298755,'ncridlanj@cocolog-nifty.com','1990-05-29','15073 Nelson Circle',3,3,'2023-12-17',1723330,'ncridlanj','iT1e7y|/\"MI)b'),(22,21130845,'1','Esra','Hixson',982400331,'ehixsonk@godaddy.com','1990-05-11','1 Barby Pass',4,1,'2023-01-27',575075,'ehixsonk','sS1TWU<otK'),(23,27962484,'K','Duffy','Millichap',922067551,'dmillichapl@topsy.com','1997-06-18','14 6th Alley',4,4,'2023-01-08',691987,'dmillichapl','wN1tZAuz0s7WXPf'),(24,27980033,'8','Elinor','Grindle',994098020,'egrindlem@chicagotribune.com','1988-07-14','2678 Village Hill',4,2,'2023-03-20',1127031,'egrindlem','jK4.w!=Us89v'),(25,16090765,'7','Hildy','Driutti',981787282,'hdriuttin@dell.com','1995-12-10','7308 Fisk Court',2,2,'2023-01-27',1776114,'hdriuttin','iO91?{v{b!Fy'),(26,25014394,'K','Niki','Blondin',922779712,'nblondino@vinaora.com','1996-03-10','7056 Summer Ridge Alley',3,3,'2023-04-20',427110,'nblondino','kN2.2<(ofkFF'),(27,24162522,'2','Sydelle','Fitzsymonds',934105548,'sfitzsymondsp@elegantthemes.com','1994-09-16','41 Reinke Point',3,2,'2023-11-29',545505,'sfitzsymondsp','sW1EXtTfK#WZf0'),(28,15383585,'3','Smitty','Marks',993655567,'smarksq@altervista.org','1989-06-10','8 Grayhawk Road',2,2,'2023-09-10',1142131,'smarksq','lS4k=Xuv>@Jv'),(29,18297596,'6','Rutherford','Lowings',941951233,'rlowingsr@jigsy.com','1983-05-09','678 Hermina Way',4,4,'2024-01-03',1462451,'rlowingsr','hP1a4llRY\'CPy1\''),(30,18102085,'7','Markos','Simmonds',930978120,'msimmondss@si.edu','1984-12-02','956 Shelley Lane',2,4,'2023-07-14',1396153,'msimmondss','gS0m.Z6S|odl~'),(31,12840255,'1','Lewie','Beincken',946866620,'lbeinckent@icio.us','1993-01-25','8 Roth Circle',2,5,'2023-01-08',1857622,'lbeinckent','jH5@t/KlF%y'),(32,13084005,'1','Simone','Boichat',940586339,'sboichatu@sciencedirect.com','1983-12-12','30448 Sommers Court',2,3,'2023-03-22',633486,'sboichatu','oE7@8$ePPt'),(33,27763111,'3','Aidan','Founds',990768927,'afoundsv@jiathis.com','2000-01-18','40 Granby Circle',4,3,'2023-03-14',1395668,'afoundsv','sI2&p`oiG'),(34,29938951,'0','Bernita','Vial',994063834,'bvialw@cargocollective.com','1989-03-29','5 Merchant Park',2,3,'2023-06-30',1468397,'bvialw','vY9ei<i`$y?R'),(35,29252224,'K','Mordecai','Tourmell',917392498,'mtourmellx@ucoz.com','1989-06-03','94 Anzinger Lane',4,5,'2023-05-25',1711179,'mtourmellx','eF1kLjit?Z'),(36,27108414,'5','Lana','Iohananof',993796083,'liohananofy@imdb.com','1995-01-17','128 Lakewood Gardens Court',3,5,'2023-03-18',908457,'liohananofy','vM3gI~RNj)Cu}BT'),(37,16732532,'7','Raffarty','Lochrie',954851426,'rlochriez@ucoz.com','1992-06-20','461 Eastlawn Circle',4,4,'2023-11-23',1967496,'rlochriez','pZ432NWy5H7,'),(38,10674126,'3','Phillipe','Cradoc',955668333,'pcradoc10@sakura.ne.jp','1999-02-19','23 Gateway Hill',3,3,'2023-05-06',764908,'pcradoc10','nG0(D&7YaLtID'),(39,28960653,'K','Poppy','Dungay',942682990,'pdungay11@cnet.com','1998-08-21','4 Kinsman Parkway',2,1,'2023-02-19',1404320,'pdungay11','mT9HP@lJ'),(40,16351272,'6','Laverna','Habeshaw',973964465,'lhabeshaw12@instagram.com','1982-11-27','4 Jackson Place',2,3,'2023-12-31',515188,'lhabeshaw12','bY1)\rlm<\"mhT'),(41,25518045,'2','Raina','Kasman',980148722,'rkasman13@chicagotribune.com','1987-01-22','46 Oakridge Circle',3,3,'2023-01-23',487277,'rkasman13','wP5Uw}=>'),(42,13063440,'0','Anetta','Finci',991560962,'afinci14@xing.com','1981-02-18','6 Hoard Parkway',4,1,'2023-05-08',1964391,'afinci14','eR5`78jV3>x(<0'),(43,19123456,'1','Dehlia','Wilkin',954306813,'dwilkin15@nytimes.com','1993-06-11','5 Russell Parkway',3,5,'2023-05-24',1040482,'dwilkin15','kZ7=8~\n8QUvNz}'),(44,12657814,'8','Gloriana','Gatlin',971207458,'ggatlin16@amazon.co.uk','1999-05-31','1246 Forest Run Alley',2,2,'2023-07-20',570278,'ggatlin16','gN0F~)uAc'),(45,10918024,'6','Ignaz','Howsley',962359622,'ihowsley17@yolasite.com','1987-05-03','5497 Utah Hill',4,1,'2023-01-05',1256636,'ihowsley17','mW8GF=H\"\"Dg$'),(46,11425223,'9','Johanna','Grimsell',917562826,'jgrimsell18@washingtonpost.com','1986-11-08','016 Dakota Terrace',3,3,'2023-02-17',1435955,'jgrimsell18','zE99Onwl'),(47,25702072,'K','Charmine','Sloyan',968941848,'csloyan19@shareasale.com','1992-05-25','95034 Westerfield Avenue',2,2,'2023-09-21',529075,'csloyan19','qB7M\"HI0Y'),(48,21985456,'0','Anitra','Leggin',980354815,'aleggin1a@de.vu','1993-04-14','96 Manley Junction',2,3,'2023-12-04',1972800,'aleggin1a','eT9X)iIb`J'),(49,21819977,'1','Carol-jean','Dogerty',993767130,'cdogerty1b@auda.org.au','1987-08-29','03 Laurel Junction',3,5,'2023-05-02',1397259,'cdogerty1b','zR3Znni|)bu&Z'),(50,21749790,'6','Malory','Hobell',934994105,'mhobell1c@census.gov','1981-11-25','6 Summit Avenue',3,3,'2023-02-08',571547,'mhobell1c','rH5`UJVsv&YWru'),(51,28059604,'3','Fianna','Bindin',970379092,'fbindin1d@sun.com','1981-03-09','2939 Ohio Center',4,2,'2023-06-16',840321,'fbindin1d','iZ9wVkho7nd_DJ/'),(52,25284086,'9','Ula','Farge',979486967,'ufarge1e@fema.gov','1994-03-24','5 Coleman Way',4,5,'2023-04-06',1260897,'ufarge1e','xX2y|&.Tmw('),(53,13557076,'1','Oralie','Chedzoy',979024834,'ochedzoy1f@google.fr','1989-02-23','38855 Thackeray Parkway',3,2,'2023-01-15',919733,'ochedzoy1f','wI5B~`2<j'),(54,29194857,'K','Roby','Wenderott',913530822,'rwenderott1g@hao123.com','1993-06-22','47 Oneill Way',2,2,'2023-12-31',625221,'rwenderott1g','nK3k+2y(wu}pi'),(55,10264966,'4','Ewart','Cheyenne',992749312,'echeyenne1h@nps.gov','1992-06-03','48 Trailsway Park',4,3,'2023-06-18',1971579,'echeyenne1h','xY1>>5F`{REfB'),(56,19260466,'4','Susanetta','Robertot',965594192,'srobertot1i@reverbnation.com','1996-02-06','5 Heath Pass',4,2,'2023-08-21',838386,'srobertot1i','kH2mms|uHuPjc#H'),(57,15363807,'1','Keven','Siddaley',963442368,'ksiddaley1j@uol.com.br','1991-04-28','646 Clarendon Way',2,5,'2023-01-24',1717448,'ksiddaley1j','uV0VYrhc$J'),(58,11657679,'1','Trumaine','McNeigh',946255899,'tmcneigh1k@4shared.com','1988-03-07','3373 Sheridan Center',3,2,'2023-07-22',784435,'tmcneigh1k','gR8D.*&('),(59,23182760,'9','Garey','Chmarny',999214092,'gchmarny1l@hc360.com','1991-06-12','46 Maywood Park',4,5,'2023-08-14',991610,'gchmarny1l','pA2VF{Eq<,DM~'),(60,22914830,'3','Thorstein','Throughton',938186384,'tthroughton1m@vkontakte.ru','1988-02-17','78957 Anderson Place',4,3,'2023-02-01',1784192,'tthroughton1m','tP72>VWy>,FDfC'),(61,28461360,'0','Alonzo','Braxay',914180218,'abraxay1n@goo.ne.jp','1989-11-04','15 Granby Junction',4,1,'2023-02-24',870754,'abraxay1n','tL4R~<gh'),(62,11286840,'2','Kristoffer','Foggarty',946674402,'kfoggarty1o@opensource.org','1986-03-21','0071 Judy Way',3,5,'2023-04-08',1316334,'kfoggarty1o','oK2e/&$c}'),(63,15589095,'9','Vince','Vardie',922619429,'vvardie1p@vistaprint.com','1992-10-07','9 Kingsford Place',2,3,'2023-12-04',1111885,'vvardie1p','qS5`r55sSq24fC'),(64,12414430,'2','Stephi','O\'Bruen',943099437,'sobruen1q@oakley.com','1981-12-21','42250 Weeping Birch Point',4,3,'2023-07-05',1783847,'sobruen1q','pC1lV{Pu'),(65,26038584,'4','Elsie','Rigate',944012034,'erigate1r@businessweek.com','1993-04-16','613 Roth Circle',3,1,'2023-06-11',1789591,'erigate1r','rU8TE3CAkT'),(66,18931585,'6','Dionne','Eul',925214729,'deul1s@dion.ne.jp','1992-08-04','93 Springview Junction',3,3,'2023-10-17',1356746,'deul1s','kR27Vv0&LI%RG|}'),(67,19015318,'5','Charo','O\'Currine',993048217,'cocurrine1t@redcross.org','1983-09-29','619 Sunbrook Plaza',4,2,'2023-10-13',1365820,'cocurrine1t','jW9HE|!\'FsRs'),(68,13011493,'8','Lisha','Callery',961320258,'lcallery1u@wisc.edu','1984-07-18','92 Holy Cross Trail',4,4,'2023-01-11',1491962,'lcallery1u','dG8*,h#{mFXoCa'),(69,11744765,'0','Anders','Pepperell',984193509,'apepperell1v@alexa.com','1992-03-08','3214 Macpherson Circle',2,4,'2023-05-10',1931777,'apepperell1v','gG1@q+3F'),(70,29383201,'3','Lidia','Corneil',999117178,'lcorneil1w@twitter.com','1998-10-08','0570 Mendota Crossing',3,2,'2023-11-02',1571274,'lcorneil1w','rU2}&&.R@n!5'),(71,21282639,'1','Ernesto','Strasse',935577645,'estrasse1x@uol.com.br','1986-06-09','6491 Paget Lane',3,1,'2023-05-16',604061,'estrasse1x','tT80SZxRuZ?xHm'),(72,24616650,'1','Tabbi','Swyer',918739821,'tswyer1y@jimdo.com','1995-10-23','123 Vidon Point',4,4,'2023-01-30',1931808,'tswyer1y','jE0B)KFoM'),(73,23930524,'5','Ursulina','Wolseley',972622469,'uwolseley1z@forbes.com','1981-09-30','86 Magdeline Avenue',3,5,'2023-06-11',1399418,'uwolseley1z','sT0NvQ+&K'),(74,22026002,'K','Fallon','Khoter',938274721,'fkhoter20@sourceforge.net','1995-05-18','60 Shopko Junction',4,3,'2023-03-17',1690597,'fkhoter20','bT2IY/NH#'),(75,21977308,'0','Mikael','McFeate',959996113,'mmcfeate21@deliciousdays.com','1982-06-30','2 Blaine Way',2,1,'2023-11-11',1043965,'mmcfeate21','eX4*!,Imy'),(76,24166443,'0','Melisande','Raymont',933236848,'mraymont22@ning.com','1987-10-05','1403 Debra Court',4,3,'2023-04-11',517872,'mraymont22','zI3{4%Ru'),(77,23900318,'4','Gabbie','Chattock',949811664,'gchattock23@domainmarket.com','1985-09-12','49056 Raven Street',2,2,'2023-02-03',1957464,'gchattock23','aR6~M\"N@U\"'),(78,12157705,'4','Anitra','Drewell',961569703,'adrewell24@wunderground.com','2000-06-17','71 Caliangt Alley',3,3,'2023-11-11',1338112,'adrewell24','rJ2&,CKL6IWt!E'),(79,14699612,'4','Benton','Levi',942610983,'blevi25@ezinearticles.com','1992-03-01','17238 Merry Junction',4,5,'2023-10-27',787864,'blevi25','sK0o.i,=r1'),(80,20422452,'8','Wilhelmina','Grinyov',981108875,'wgrinyov26@ifeng.com','1998-06-30','301 Red Cloud Circle',2,2,'2023-12-26',1706222,'wgrinyov26','bF3\"um&H'),(81,16328267,'4','Guillema','Vequaud',964939069,'gvequaud27@mashable.com','1982-08-23','022 Park Meadow Point',2,2,'2023-08-16',1980209,'gvequaud27','bD6*(gl+<}V4PBy7'),(82,15002363,'7','Tricia','Treagust',917032751,'ttreagust28@shutterfly.com','1990-12-25','080 Heffernan Place',4,3,'2023-06-15',1901744,'ttreagust28','pG1QBQ(+D$7Y\''),(83,26390642,'K','Vinny','Issacov',911143654,'vissacov29@usgs.gov','1986-10-24','92028 Glendale Street',2,5,'2023-10-24',1659452,'vissacov29','hI8Zw@vY5n4j,O5'),(84,14569818,'9','Megan','O\'Noulane',934012349,'monoulane2a@webs.com','1990-07-05','099 Moland Hill',2,2,'2023-05-10',1785045,'monoulane2a','dB3Rb0D=9\'Y|i'),(85,24700650,'8','Agnella','MacDearmaid',980386731,'amacdearmaid2b@aol.com','1995-05-31','4392 Monterey Parkway',3,2,'2023-04-15',1580193,'amacdearmaid2b','xO8eI#J>Fum3|'),(86,28753874,'K','Brenna','Parkyn',916819140,'bparkyn2c@ovh.net','1987-09-15','0344 Surrey Pass',4,5,'2023-07-24',600720,'bparkyn2c','lV4gv759Xon5+W'),(87,16373785,'K','Ashely','Cubley',938715038,'acubley2d@slideshare.net','1998-08-12','7244 Hauk Plaza',3,4,'2023-03-12',1618880,'acubley2d','tX0)?cB9s?C4kkj~'),(88,23690444,'K','Caron','Arpur',968006817,'carpur2e@imgur.com','1987-09-29','4643 Express Park',3,4,'2023-11-16',1114074,'carpur2e','yB1WuCY_NlFrKu)'),(89,19529455,'0','Lezley','Yuryatin',987702452,'lyuryatin2f@lulu.com','1995-10-24','407 Lukken Drive',4,2,'2023-02-22',1246874,'lyuryatin2f','cJ0Ob$,(ti>$7'),(90,28111725,'4','Tomaso','Birnie',945105076,'tbirnie2g@bloglovin.com','1996-03-30','15227 Sugar Street',4,3,'2023-10-11',799424,'tbirnie2g','pJ22yriWl'),(91,28831086,'6','Boone','Skim',985446086,'bskim2h@friendfeed.com','1993-10-26','479 Nancy Drive',3,5,'2023-07-16',669960,'bskim2h','sF8lM?&*fKN'),(92,25472729,'6','Lane','Kirgan',934191886,'lkirgan2i@is.gd','1999-08-06','0 Vernon Place',4,2,'2023-07-11',1262418,'lkirgan2i','yW0)&T_|wU5z$g'),(93,12032215,'K','Cherilynn','Frascone',981490618,'cfrascone2j@zdnet.com','1998-12-08','0 Pawling Pass',4,3,'2023-03-04',1879651,'cfrascone2j','tM1oSeV|'),(94,12649908,'6','Hersh','Gresty',967288777,'hgresty2k@yellowpages.com','1985-04-07','89525 Dakota Plaza',3,2,'2023-07-21',436524,'hgresty2k','uG5J1?<vAVQR~<`B'),(95,28166070,'5','Joeann','Kiehne',971716037,'jkiehne2l@psu.edu','1999-01-04','80358 Rusk Circle',2,3,'2023-10-25',1681133,'jkiehne2l','iP05X>L$%\'&e'),(96,23781591,'2','Nelly','Thaw',967826281,'nthaw2m@rakuten.co.jp','1984-02-12','0 Stone Corner Place',4,2,'2023-12-14',479501,'nthaw2m','yK6!be1hQh<5/'),(97,12606876,'K','Burg','Brettor',960962605,'bbrettor2n@tmall.com','2000-10-15','14 Nelson Point',4,5,'2023-10-23',1263782,'bbrettor2n','vU1h7v@$T'),(98,14256176,'K','Garland','Widocks',938099313,'gwidocks2o@deliciousdays.com','1999-04-25','47 Oakridge Center',2,4,'2023-02-26',1810420,'gwidocks2o','dZ26c*(}(i<W'),(99,28389940,'3','Daune','Sayles',915924771,'dsayles2p@icio.us','1993-05-09','18 Forster Avenue',4,2,'2023-09-30',1377914,'dsayles2p','tN8Js!d!`n'),(100,26964352,'8','Oliver','Housin',934834820,'ohousin2q@123-reg.co.uk','1984-05-29','415 Golf Course Point',3,4,'2023-06-06',921457,'ohousin2q','pL0XF&t!)~PXH'),(101,21278376,'5','Stanford','Rousell',912804438,'srousell2r@photobucket.com','1995-06-17','92567 Annamark Hill',3,4,'2023-10-29',778180,'srousell2r','pI1*0HqzjbUp');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_DV_EMP` BEFORE INSERT ON `empleado` FOR EACH ROW BEGIN
     SET NEW.DVRUN = digitoVerificador(NEW.NUMRUN);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `forma_pago`
--

DROP TABLE IF EXISTS `forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_pago` (
  `ID_FORMA_PAGO` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_FORMA_PAGO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pago`
--

LOCK TABLES `forma_pago` WRITE;
/*!40000 ALTER TABLE `forma_pago` DISABLE KEYS */;
INSERT INTO `forma_pago` VALUES (1,'Efectivo'),(2,'Débito'),(3,'Crédito'),(4,'Cheque');
/*!40000 ALTER TABLE `forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hora`
--

DROP TABLE IF EXISTS `hora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hora` (
  `ID_HORA` int NOT NULL AUTO_INCREMENT,
  `ID_CLI` int DEFAULT NULL,
  `FECHA_INI` date NOT NULL,
  `FECHA_FIN` date DEFAULT NULL,
  `HORA_INI` time NOT NULL,
  `HORA_FIN` time DEFAULT NULL,
  `ESTADO` tinyint(1) DEFAULT NULL,
  `FINALIZADO` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_HORA`),
  KEY `FK_HORA_CLI` (`ID_CLI`),
  CONSTRAINT `FK_HORA_CLI` FOREIGN KEY (`ID_CLI`) REFERENCES `cliente` (`ID_CLI`)
) ENGINE=InnoDB AUTO_INCREMENT=1244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hora`
--

LOCK TABLES `hora` WRITE;
/*!40000 ALTER TABLE `hora` DISABLE KEYS */;
INSERT INTO `hora` VALUES (900,NULL,'2023-11-01',NULL,'09:00:00',NULL,0,NULL),(901,NULL,'2023-11-01',NULL,'10:00:00',NULL,0,NULL),(902,NULL,'2023-11-01',NULL,'11:00:00',NULL,0,NULL),(903,NULL,'2023-11-01',NULL,'12:00:00',NULL,0,NULL),(904,NULL,'2023-11-01',NULL,'15:00:00',NULL,0,NULL),(905,NULL,'2023-11-01',NULL,'16:00:00',NULL,0,NULL),(906,NULL,'2023-11-01',NULL,'17:00:00',NULL,0,NULL),(907,NULL,'2023-11-02',NULL,'09:00:00',NULL,0,NULL),(908,NULL,'2023-11-02',NULL,'10:00:00',NULL,0,NULL),(909,NULL,'2023-11-02',NULL,'11:00:00',NULL,0,NULL),(910,NULL,'2023-11-02',NULL,'12:00:00',NULL,0,NULL),(911,NULL,'2023-11-02',NULL,'15:00:00',NULL,0,NULL),(912,NULL,'2023-11-02',NULL,'16:00:00',NULL,0,NULL),(913,NULL,'2023-11-02',NULL,'17:00:00',NULL,0,NULL),(914,NULL,'2023-11-03',NULL,'09:00:00',NULL,0,NULL),(915,NULL,'2023-11-03',NULL,'10:00:00',NULL,0,NULL),(916,NULL,'2023-11-03',NULL,'11:00:00',NULL,0,NULL),(917,NULL,'2023-11-03',NULL,'12:00:00',NULL,0,NULL),(918,NULL,'2023-11-03',NULL,'15:00:00',NULL,0,NULL),(919,NULL,'2023-11-03',NULL,'16:00:00',NULL,0,NULL),(920,NULL,'2023-11-03',NULL,'17:00:00',NULL,0,NULL),(921,NULL,'2023-11-04',NULL,'09:00:00',NULL,0,NULL),(922,NULL,'2023-11-04',NULL,'10:00:00',NULL,0,NULL),(923,NULL,'2023-11-04',NULL,'11:00:00',NULL,0,NULL),(924,NULL,'2023-11-04',NULL,'12:00:00',NULL,0,NULL),(925,NULL,'2023-11-06',NULL,'09:00:00',NULL,0,NULL),(926,NULL,'2023-11-06',NULL,'10:00:00',NULL,0,NULL),(927,NULL,'2023-11-06',NULL,'11:00:00',NULL,0,NULL),(928,NULL,'2023-11-06',NULL,'12:00:00',NULL,0,NULL),(929,NULL,'2023-11-06',NULL,'15:00:00',NULL,0,NULL),(930,NULL,'2023-11-06',NULL,'16:00:00',NULL,0,NULL),(931,NULL,'2023-11-06',NULL,'17:00:00',NULL,0,NULL),(932,NULL,'2023-11-07',NULL,'09:00:00',NULL,0,NULL),(933,NULL,'2023-11-07',NULL,'10:00:00',NULL,0,NULL),(934,NULL,'2023-11-07',NULL,'11:00:00',NULL,0,NULL),(935,NULL,'2023-11-07',NULL,'12:00:00',NULL,0,NULL),(936,NULL,'2023-11-07',NULL,'15:00:00',NULL,0,NULL),(937,NULL,'2023-11-07',NULL,'16:00:00',NULL,0,NULL),(938,NULL,'2023-11-07',NULL,'17:00:00',NULL,0,NULL),(939,NULL,'2023-11-08',NULL,'09:00:00',NULL,0,NULL),(940,NULL,'2023-11-08',NULL,'10:00:00',NULL,0,NULL),(941,NULL,'2023-11-08',NULL,'11:00:00',NULL,0,NULL),(942,NULL,'2023-11-08',NULL,'12:00:00',NULL,0,NULL),(943,NULL,'2023-11-08',NULL,'15:00:00',NULL,0,NULL),(944,NULL,'2023-11-08',NULL,'16:00:00',NULL,0,NULL),(945,NULL,'2023-11-08',NULL,'17:00:00',NULL,0,NULL),(946,NULL,'2023-11-09',NULL,'09:00:00',NULL,0,NULL),(947,NULL,'2023-11-09',NULL,'10:00:00',NULL,0,NULL),(948,NULL,'2023-11-09',NULL,'11:00:00',NULL,0,NULL),(949,NULL,'2023-11-09',NULL,'12:00:00',NULL,0,NULL),(950,NULL,'2023-11-09',NULL,'15:00:00',NULL,0,NULL),(951,NULL,'2023-11-09',NULL,'16:00:00',NULL,0,NULL),(952,NULL,'2023-11-09',NULL,'17:00:00',NULL,0,NULL),(953,NULL,'2023-11-10',NULL,'09:00:00',NULL,0,NULL),(954,NULL,'2023-11-10',NULL,'10:00:00',NULL,0,NULL),(955,NULL,'2023-11-10',NULL,'11:00:00',NULL,0,NULL),(956,NULL,'2023-11-10',NULL,'12:00:00',NULL,0,NULL),(957,NULL,'2023-11-10',NULL,'15:00:00',NULL,0,NULL),(958,NULL,'2023-11-10',NULL,'16:00:00',NULL,0,NULL),(959,NULL,'2023-11-10',NULL,'17:00:00',NULL,0,NULL),(960,NULL,'2023-11-11',NULL,'09:00:00',NULL,0,NULL),(961,NULL,'2023-11-11',NULL,'10:00:00',NULL,0,NULL),(962,NULL,'2023-11-11',NULL,'11:00:00',NULL,0,NULL),(963,NULL,'2023-11-11',NULL,'12:00:00',NULL,0,NULL),(964,NULL,'2023-11-13',NULL,'09:00:00',NULL,0,NULL),(965,NULL,'2023-11-13',NULL,'10:00:00',NULL,0,NULL),(966,NULL,'2023-11-13',NULL,'11:00:00',NULL,0,NULL),(967,NULL,'2023-11-13',NULL,'12:00:00',NULL,0,NULL),(968,NULL,'2023-11-13',NULL,'15:00:00',NULL,0,NULL),(969,NULL,'2023-11-13',NULL,'16:00:00',NULL,0,NULL),(970,NULL,'2023-11-13',NULL,'17:00:00',NULL,0,NULL),(971,NULL,'2023-11-14',NULL,'09:00:00',NULL,0,NULL),(972,NULL,'2023-11-14',NULL,'10:00:00',NULL,0,NULL),(973,NULL,'2023-11-14',NULL,'11:00:00',NULL,0,NULL),(974,NULL,'2023-11-14',NULL,'12:00:00',NULL,0,NULL),(975,NULL,'2023-11-14',NULL,'15:00:00',NULL,0,NULL),(976,NULL,'2023-11-14',NULL,'16:00:00',NULL,0,NULL),(977,NULL,'2023-11-14',NULL,'17:00:00',NULL,0,NULL),(978,NULL,'2023-11-15',NULL,'09:00:00',NULL,0,NULL),(979,NULL,'2023-11-15',NULL,'10:00:00',NULL,0,NULL),(980,NULL,'2023-11-15',NULL,'11:00:00',NULL,0,NULL),(981,NULL,'2023-11-15',NULL,'12:00:00',NULL,0,NULL),(982,NULL,'2023-11-15',NULL,'15:00:00',NULL,0,NULL),(983,NULL,'2023-11-15',NULL,'16:00:00',NULL,0,NULL),(984,NULL,'2023-11-15',NULL,'17:00:00',NULL,0,NULL),(985,1,'2023-11-16','2023-11-28','09:00:00','18:26:27',1,1),(986,1,'2023-11-16','2023-11-28','10:00:00','18:28:07',1,1),(987,1,'2023-11-16','2023-12-13','11:00:00','21:08:03',1,1),(988,1,'2023-11-16',NULL,'12:00:00',NULL,0,NULL),(989,1,'2023-11-16','2023-12-04','15:00:00','19:31:42',1,1),(990,1,'2023-11-16',NULL,'16:00:00',NULL,0,NULL),(991,1,'2023-11-16',NULL,'17:00:00',NULL,1,NULL),(992,1,'2023-11-17',NULL,'09:00:00',NULL,1,NULL),(993,1,'2023-11-17',NULL,'10:00:00',NULL,1,NULL),(994,1,'2023-11-17',NULL,'11:00:00',NULL,1,NULL),(995,37,'2023-11-17',NULL,'12:00:00',NULL,1,NULL),(996,95,'2023-11-17',NULL,'15:00:00',NULL,1,NULL),(997,68,'2023-11-17',NULL,'16:00:00',NULL,1,NULL),(998,83,'2023-11-17',NULL,'17:00:00',NULL,1,NULL),(999,1,'2023-11-18',NULL,'09:00:00',NULL,1,NULL),(1000,1,'2023-11-18',NULL,'10:00:00',NULL,1,NULL),(1001,52,'2023-11-18',NULL,'11:00:00',NULL,1,NULL),(1002,31,'2023-11-18',NULL,'12:00:00',NULL,1,NULL),(1003,23,'2023-11-20',NULL,'09:00:00',NULL,1,NULL),(1004,NULL,'2023-11-20',NULL,'10:00:00',NULL,0,NULL),(1005,NULL,'2023-11-20',NULL,'11:00:00',NULL,0,NULL),(1006,NULL,'2023-11-20',NULL,'12:00:00',NULL,0,NULL),(1007,NULL,'2023-11-20',NULL,'15:00:00',NULL,0,NULL),(1008,NULL,'2023-11-20',NULL,'16:00:00',NULL,0,NULL),(1009,NULL,'2023-11-20',NULL,'17:00:00',NULL,0,NULL),(1010,43,'2023-11-21',NULL,'09:00:00',NULL,1,NULL),(1011,NULL,'2023-11-21',NULL,'10:00:00',NULL,0,NULL),(1012,NULL,'2023-11-21',NULL,'11:00:00',NULL,0,NULL),(1013,NULL,'2023-11-21',NULL,'12:00:00',NULL,0,NULL),(1014,NULL,'2023-11-21',NULL,'15:00:00',NULL,0,NULL),(1015,NULL,'2023-11-21',NULL,'16:00:00',NULL,0,NULL),(1016,NULL,'2023-11-21',NULL,'17:00:00',NULL,0,NULL),(1017,NULL,'2023-11-22',NULL,'09:00:00',NULL,0,NULL),(1018,NULL,'2023-11-22',NULL,'10:00:00',NULL,0,NULL),(1019,NULL,'2023-11-22',NULL,'11:00:00',NULL,0,NULL),(1020,NULL,'2023-11-22',NULL,'12:00:00',NULL,0,NULL),(1021,NULL,'2023-11-22',NULL,'15:00:00',NULL,0,NULL),(1022,NULL,'2023-11-22',NULL,'16:00:00',NULL,0,NULL),(1023,NULL,'2023-11-22',NULL,'17:00:00',NULL,0,NULL),(1024,NULL,'2023-11-23',NULL,'09:00:00',NULL,0,NULL),(1025,45,'2023-11-23',NULL,'10:00:00',NULL,1,NULL),(1026,NULL,'2023-11-23',NULL,'11:00:00',NULL,0,NULL),(1027,NULL,'2023-11-23',NULL,'12:00:00',NULL,0,NULL),(1028,NULL,'2023-11-23',NULL,'15:00:00',NULL,0,NULL),(1029,NULL,'2023-11-23',NULL,'16:00:00',NULL,0,NULL),(1030,NULL,'2023-11-23',NULL,'17:00:00',NULL,0,NULL),(1031,NULL,'2023-11-24',NULL,'09:00:00',NULL,0,NULL),(1032,56,'2023-11-24',NULL,'10:00:00',NULL,1,NULL),(1033,NULL,'2023-11-24',NULL,'11:00:00',NULL,0,NULL),(1034,NULL,'2023-11-24',NULL,'12:00:00',NULL,0,NULL),(1035,NULL,'2023-11-24',NULL,'15:00:00',NULL,0,NULL),(1036,NULL,'2023-11-24',NULL,'16:00:00',NULL,0,NULL),(1037,NULL,'2023-11-24',NULL,'17:00:00',NULL,0,NULL),(1038,NULL,'2023-11-25',NULL,'09:00:00',NULL,0,NULL),(1039,NULL,'2023-11-25',NULL,'10:00:00',NULL,0,NULL),(1040,NULL,'2023-11-25',NULL,'11:00:00',NULL,0,NULL),(1041,NULL,'2023-11-25',NULL,'12:00:00',NULL,0,NULL),(1042,NULL,'2023-11-27',NULL,'09:00:00',NULL,0,NULL),(1043,NULL,'2023-11-27',NULL,'10:00:00',NULL,0,NULL),(1044,NULL,'2023-11-27',NULL,'11:00:00',NULL,0,NULL),(1045,NULL,'2023-11-27',NULL,'12:00:00',NULL,0,NULL),(1046,NULL,'2023-11-27',NULL,'15:00:00',NULL,0,NULL),(1047,NULL,'2023-11-27',NULL,'16:00:00',NULL,0,NULL),(1048,NULL,'2023-11-27',NULL,'17:00:00',NULL,0,NULL),(1049,NULL,'2023-11-28',NULL,'09:00:00',NULL,0,NULL),(1050,NULL,'2023-11-28',NULL,'10:00:00',NULL,0,NULL),(1051,NULL,'2023-11-28',NULL,'11:00:00',NULL,0,NULL),(1052,NULL,'2023-11-28',NULL,'12:00:00',NULL,0,NULL),(1053,NULL,'2023-11-28',NULL,'15:00:00',NULL,0,NULL),(1054,NULL,'2023-11-28',NULL,'16:00:00',NULL,0,NULL),(1055,NULL,'2023-11-28',NULL,'17:00:00',NULL,0,NULL),(1056,NULL,'2023-11-29',NULL,'09:00:00',NULL,0,NULL),(1057,NULL,'2023-11-29',NULL,'10:00:00',NULL,0,NULL),(1058,NULL,'2023-11-29',NULL,'11:00:00',NULL,0,NULL),(1059,NULL,'2023-11-29',NULL,'12:00:00',NULL,0,NULL),(1060,NULL,'2023-11-29',NULL,'15:00:00',NULL,0,NULL),(1061,NULL,'2023-11-29',NULL,'16:00:00',NULL,0,NULL),(1062,NULL,'2023-11-29',NULL,'17:00:00',NULL,0,NULL),(1063,NULL,'2023-11-30',NULL,'09:00:00',NULL,0,NULL),(1064,NULL,'2023-11-30',NULL,'10:00:00',NULL,0,NULL),(1065,NULL,'2023-11-30',NULL,'11:00:00',NULL,0,NULL),(1066,NULL,'2023-11-30',NULL,'12:00:00',NULL,0,NULL),(1067,NULL,'2023-11-30',NULL,'15:00:00',NULL,0,NULL),(1068,NULL,'2023-11-30',NULL,'16:00:00',NULL,0,NULL),(1069,NULL,'2023-11-30',NULL,'17:00:00',NULL,0,NULL),(1070,NULL,'2023-12-01',NULL,'09:00:00',NULL,0,NULL),(1071,NULL,'2023-12-01',NULL,'10:00:00',NULL,0,NULL),(1072,NULL,'2023-12-01',NULL,'11:00:00',NULL,0,NULL),(1073,NULL,'2023-12-01',NULL,'12:00:00',NULL,0,NULL),(1074,NULL,'2023-12-01',NULL,'15:00:00',NULL,0,NULL),(1075,NULL,'2023-12-01',NULL,'16:00:00',NULL,0,NULL),(1076,NULL,'2023-12-01',NULL,'17:00:00',NULL,0,NULL),(1077,NULL,'2023-12-02',NULL,'09:00:00',NULL,0,NULL),(1078,NULL,'2023-12-02',NULL,'10:00:00',NULL,0,NULL),(1079,NULL,'2023-12-02',NULL,'11:00:00',NULL,0,NULL),(1080,NULL,'2023-12-02',NULL,'12:00:00',NULL,0,NULL),(1081,NULL,'2023-12-04',NULL,'09:00:00',NULL,0,NULL),(1082,NULL,'2023-12-04',NULL,'10:00:00',NULL,0,NULL),(1083,NULL,'2023-12-04',NULL,'11:00:00',NULL,0,NULL),(1084,NULL,'2023-12-04',NULL,'12:00:00',NULL,0,NULL),(1085,NULL,'2023-12-04',NULL,'15:00:00',NULL,0,NULL),(1086,NULL,'2023-12-04',NULL,'16:00:00',NULL,0,NULL),(1087,NULL,'2023-12-04',NULL,'17:00:00',NULL,0,NULL),(1088,NULL,'2023-12-05',NULL,'09:00:00',NULL,0,NULL),(1089,NULL,'2023-12-05',NULL,'10:00:00',NULL,0,NULL),(1090,NULL,'2023-12-05',NULL,'11:00:00',NULL,0,NULL),(1091,NULL,'2023-12-05',NULL,'12:00:00',NULL,0,NULL),(1092,NULL,'2023-12-05',NULL,'15:00:00',NULL,0,NULL),(1093,NULL,'2023-12-05',NULL,'16:00:00',NULL,0,NULL),(1094,NULL,'2023-12-05',NULL,'17:00:00',NULL,0,NULL),(1095,NULL,'2023-12-06',NULL,'09:00:00',NULL,0,NULL),(1096,NULL,'2023-12-06',NULL,'10:00:00',NULL,0,NULL),(1097,NULL,'2023-12-06',NULL,'11:00:00',NULL,0,NULL),(1098,NULL,'2023-12-06',NULL,'12:00:00',NULL,0,NULL),(1099,NULL,'2023-12-06',NULL,'15:00:00',NULL,0,NULL),(1100,NULL,'2023-12-06',NULL,'16:00:00',NULL,0,NULL),(1101,NULL,'2023-12-06',NULL,'17:00:00',NULL,0,NULL),(1102,NULL,'2023-12-07',NULL,'09:00:00',NULL,0,NULL),(1103,NULL,'2023-12-07',NULL,'10:00:00',NULL,0,NULL),(1104,NULL,'2023-12-07',NULL,'11:00:00',NULL,0,NULL),(1105,NULL,'2023-12-07',NULL,'12:00:00',NULL,0,NULL),(1106,NULL,'2023-12-07',NULL,'15:00:00',NULL,0,NULL),(1107,NULL,'2023-12-07',NULL,'16:00:00',NULL,0,NULL),(1108,NULL,'2023-12-07',NULL,'17:00:00',NULL,0,NULL),(1109,NULL,'2023-12-08',NULL,'09:00:00',NULL,0,NULL),(1110,NULL,'2023-12-08',NULL,'10:00:00',NULL,0,NULL),(1111,NULL,'2023-12-08',NULL,'11:00:00',NULL,0,NULL),(1112,NULL,'2023-12-08',NULL,'12:00:00',NULL,0,NULL),(1113,NULL,'2023-12-08',NULL,'15:00:00',NULL,0,NULL),(1114,NULL,'2023-12-08',NULL,'16:00:00',NULL,0,NULL),(1115,NULL,'2023-12-08',NULL,'17:00:00',NULL,0,NULL),(1116,NULL,'2023-12-09',NULL,'09:00:00',NULL,0,NULL),(1117,NULL,'2023-12-09',NULL,'10:00:00',NULL,0,NULL),(1118,NULL,'2023-12-09',NULL,'11:00:00',NULL,0,NULL),(1119,NULL,'2023-12-09',NULL,'12:00:00',NULL,0,NULL),(1120,NULL,'2023-12-11',NULL,'09:00:00',NULL,0,NULL),(1121,NULL,'2023-12-11',NULL,'10:00:00',NULL,0,NULL),(1122,NULL,'2023-12-11',NULL,'11:00:00',NULL,0,NULL),(1123,NULL,'2023-12-11',NULL,'12:00:00',NULL,0,NULL),(1124,NULL,'2023-12-11',NULL,'15:00:00',NULL,0,NULL),(1125,NULL,'2023-12-11',NULL,'16:00:00',NULL,0,NULL),(1126,NULL,'2023-12-11',NULL,'17:00:00',NULL,0,NULL),(1127,NULL,'2023-12-12',NULL,'09:00:00',NULL,0,NULL),(1128,NULL,'2023-12-12',NULL,'10:00:00',NULL,0,NULL),(1129,NULL,'2023-12-12',NULL,'11:00:00',NULL,0,NULL),(1130,NULL,'2023-12-12',NULL,'12:00:00',NULL,0,NULL),(1131,NULL,'2023-12-12',NULL,'15:00:00',NULL,0,NULL),(1132,NULL,'2023-12-12',NULL,'16:00:00',NULL,0,NULL),(1133,NULL,'2023-12-12',NULL,'17:00:00',NULL,0,NULL),(1134,NULL,'2023-12-13',NULL,'09:00:00',NULL,0,NULL),(1135,NULL,'2023-12-13',NULL,'10:00:00',NULL,0,NULL),(1136,NULL,'2023-12-13',NULL,'11:00:00',NULL,0,NULL),(1137,NULL,'2023-12-13',NULL,'12:00:00',NULL,0,NULL),(1138,NULL,'2023-12-13',NULL,'15:00:00',NULL,0,NULL),(1139,NULL,'2023-12-13',NULL,'16:00:00',NULL,0,NULL),(1140,NULL,'2023-12-13',NULL,'17:00:00',NULL,0,NULL),(1141,NULL,'2023-12-14',NULL,'09:00:00',NULL,0,NULL),(1142,NULL,'2023-12-14',NULL,'10:00:00',NULL,0,NULL),(1143,NULL,'2023-12-14',NULL,'11:00:00',NULL,0,NULL),(1144,NULL,'2023-12-14',NULL,'12:00:00',NULL,0,NULL),(1145,NULL,'2023-12-14',NULL,'15:00:00',NULL,0,NULL),(1146,NULL,'2023-12-14',NULL,'16:00:00',NULL,0,NULL),(1147,NULL,'2023-12-14',NULL,'17:00:00',NULL,0,NULL),(1148,NULL,'2023-12-15',NULL,'09:00:00',NULL,0,NULL),(1149,NULL,'2023-12-15',NULL,'10:00:00',NULL,0,NULL),(1150,NULL,'2023-12-15',NULL,'11:00:00',NULL,0,NULL),(1151,NULL,'2023-12-15',NULL,'12:00:00',NULL,0,NULL),(1152,NULL,'2023-12-15',NULL,'15:00:00',NULL,0,NULL),(1153,NULL,'2023-12-15',NULL,'16:00:00',NULL,0,NULL),(1154,NULL,'2023-12-15',NULL,'17:00:00',NULL,0,NULL),(1155,NULL,'2023-12-16',NULL,'09:00:00',NULL,0,NULL),(1156,NULL,'2023-12-16',NULL,'10:00:00',NULL,0,NULL),(1157,NULL,'2023-12-16',NULL,'11:00:00',NULL,0,NULL),(1158,NULL,'2023-12-16',NULL,'12:00:00',NULL,0,NULL),(1159,NULL,'2023-12-18',NULL,'09:00:00',NULL,0,NULL),(1160,NULL,'2023-12-18',NULL,'10:00:00',NULL,0,NULL),(1161,NULL,'2023-12-18',NULL,'11:00:00',NULL,0,NULL),(1162,NULL,'2023-12-18',NULL,'12:00:00',NULL,0,NULL),(1163,NULL,'2023-12-18',NULL,'15:00:00',NULL,0,NULL),(1164,NULL,'2023-12-18',NULL,'16:00:00',NULL,0,NULL),(1165,NULL,'2023-12-18',NULL,'17:00:00',NULL,0,NULL),(1166,NULL,'2023-12-19',NULL,'09:00:00',NULL,0,NULL),(1167,NULL,'2023-12-19',NULL,'10:00:00',NULL,0,NULL),(1168,NULL,'2023-12-19',NULL,'11:00:00',NULL,0,NULL),(1169,NULL,'2023-12-19',NULL,'12:00:00',NULL,0,NULL),(1170,NULL,'2023-12-19',NULL,'15:00:00',NULL,0,NULL),(1171,NULL,'2023-12-19',NULL,'16:00:00',NULL,0,NULL),(1172,NULL,'2023-12-19',NULL,'17:00:00',NULL,0,NULL),(1173,NULL,'2023-12-20',NULL,'09:00:00',NULL,0,NULL),(1174,NULL,'2023-12-20',NULL,'10:00:00',NULL,0,NULL),(1175,NULL,'2023-12-20',NULL,'11:00:00',NULL,0,NULL),(1176,NULL,'2023-12-20',NULL,'12:00:00',NULL,0,NULL),(1177,NULL,'2023-12-20',NULL,'15:00:00',NULL,0,NULL),(1178,NULL,'2023-12-20',NULL,'16:00:00',NULL,0,NULL),(1179,NULL,'2023-12-20',NULL,'17:00:00',NULL,0,NULL),(1180,NULL,'2023-12-21',NULL,'09:00:00',NULL,0,NULL),(1181,NULL,'2023-12-21',NULL,'10:00:00',NULL,0,NULL),(1182,NULL,'2023-12-21',NULL,'11:00:00',NULL,0,NULL),(1183,NULL,'2023-12-21',NULL,'12:00:00',NULL,0,NULL),(1184,NULL,'2023-12-21',NULL,'15:00:00',NULL,0,NULL),(1185,NULL,'2023-12-21',NULL,'16:00:00',NULL,0,NULL),(1186,NULL,'2023-12-21',NULL,'17:00:00',NULL,0,NULL),(1187,NULL,'2023-12-22',NULL,'09:00:00',NULL,0,NULL),(1188,NULL,'2023-12-22',NULL,'10:00:00',NULL,0,NULL),(1189,NULL,'2023-12-22',NULL,'11:00:00',NULL,0,NULL),(1190,NULL,'2023-12-22',NULL,'12:00:00',NULL,0,NULL),(1191,NULL,'2023-12-22',NULL,'15:00:00',NULL,0,NULL),(1192,NULL,'2023-12-22',NULL,'16:00:00',NULL,0,NULL),(1193,NULL,'2023-12-22',NULL,'17:00:00',NULL,0,NULL),(1194,NULL,'2023-12-23',NULL,'09:00:00',NULL,0,NULL),(1195,NULL,'2023-12-23',NULL,'10:00:00',NULL,0,NULL),(1196,NULL,'2023-12-23',NULL,'11:00:00',NULL,0,NULL),(1197,NULL,'2023-12-23',NULL,'12:00:00',NULL,0,NULL),(1198,NULL,'2023-12-25',NULL,'09:00:00',NULL,0,NULL),(1199,NULL,'2023-12-25',NULL,'10:00:00',NULL,0,NULL),(1200,NULL,'2023-12-25',NULL,'11:00:00',NULL,0,NULL),(1201,NULL,'2023-12-25',NULL,'12:00:00',NULL,0,NULL),(1202,NULL,'2023-12-25',NULL,'15:00:00',NULL,0,NULL),(1203,NULL,'2023-12-25',NULL,'16:00:00',NULL,0,NULL),(1204,NULL,'2023-12-25',NULL,'17:00:00',NULL,0,NULL),(1205,NULL,'2023-12-26',NULL,'09:00:00',NULL,0,NULL),(1206,NULL,'2023-12-26',NULL,'10:00:00',NULL,0,NULL),(1207,NULL,'2023-12-26',NULL,'11:00:00',NULL,0,NULL),(1208,NULL,'2023-12-26',NULL,'12:00:00',NULL,0,NULL),(1209,NULL,'2023-12-26',NULL,'15:00:00',NULL,0,NULL),(1210,NULL,'2023-12-26',NULL,'16:00:00',NULL,0,NULL),(1211,NULL,'2023-12-26',NULL,'17:00:00',NULL,0,NULL),(1212,NULL,'2023-12-27',NULL,'09:00:00',NULL,0,NULL),(1213,NULL,'2023-12-27',NULL,'10:00:00',NULL,0,NULL),(1214,NULL,'2023-12-27',NULL,'11:00:00',NULL,0,NULL),(1215,NULL,'2023-12-27',NULL,'12:00:00',NULL,0,NULL),(1216,NULL,'2023-12-27',NULL,'15:00:00',NULL,0,NULL),(1217,NULL,'2023-12-27',NULL,'16:00:00',NULL,0,NULL),(1218,NULL,'2023-12-27',NULL,'17:00:00',NULL,0,NULL),(1219,NULL,'2023-12-28',NULL,'09:00:00',NULL,0,NULL),(1220,NULL,'2023-12-28',NULL,'10:00:00',NULL,0,NULL),(1221,NULL,'2023-12-28',NULL,'11:00:00',NULL,0,NULL),(1222,NULL,'2023-12-28',NULL,'12:00:00',NULL,0,NULL),(1223,NULL,'2023-12-28',NULL,'15:00:00',NULL,0,NULL),(1224,NULL,'2023-12-28',NULL,'16:00:00',NULL,0,NULL),(1225,NULL,'2023-12-28',NULL,'17:00:00',NULL,0,NULL),(1226,NULL,'2023-12-29',NULL,'09:00:00',NULL,0,NULL),(1227,NULL,'2023-12-29',NULL,'10:00:00',NULL,0,NULL),(1228,NULL,'2023-12-29',NULL,'11:00:00',NULL,0,NULL),(1229,NULL,'2023-12-29',NULL,'12:00:00',NULL,0,NULL),(1230,NULL,'2023-12-29',NULL,'15:00:00',NULL,0,NULL),(1231,NULL,'2023-12-29',NULL,'16:00:00',NULL,0,NULL),(1232,NULL,'2023-12-29',NULL,'17:00:00',NULL,0,NULL),(1233,NULL,'2023-12-30',NULL,'09:00:00',NULL,0,NULL),(1234,NULL,'2023-12-30',NULL,'10:00:00',NULL,0,NULL),(1235,NULL,'2023-12-30',NULL,'11:00:00',NULL,0,NULL),(1236,NULL,'2023-12-30',NULL,'12:00:00',NULL,0,NULL),(1237,NULL,'2024-01-01',NULL,'09:00:00',NULL,0,NULL),(1238,NULL,'2024-01-01',NULL,'10:00:00',NULL,0,NULL),(1239,NULL,'2024-01-01',NULL,'11:00:00',NULL,0,NULL),(1240,NULL,'2024-01-01',NULL,'12:00:00',NULL,0,NULL),(1241,NULL,'2024-01-01',NULL,'15:00:00',NULL,0,NULL),(1242,NULL,'2024-01-01',NULL,'16:00:00',NULL,0,NULL),(1243,NULL,'2024-01-01',NULL,'17:00:00',NULL,0,NULL);
/*!40000 ALTER TABLE `hora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `ID_PEDIDO` int NOT NULL AUTO_INCREMENT,
  `ID_REALIZA` int NOT NULL,
  `FEC_PED` date NOT NULL,
  `COSTO` int NOT NULL,
  `RECEPCIONADO` tinyint(1) DEFAULT NULL,
  `FEC_RECEPCION` date DEFAULT NULL,
  `ID_ACEPTA` int DEFAULT NULL,
  PRIMARY KEY (`ID_PEDIDO`),
  KEY `FK_PEDIDO_REALIZA` (`ID_REALIZA`),
  KEY `FK_PEDIDO_ACEPTA_idx` (`ID_ACEPTA`),
  CONSTRAINT `FK_PEDIDO_ACEPTA` FOREIGN KEY (`ID_ACEPTA`) REFERENCES `empleado` (`ID_EMP`),
  CONSTRAINT `FK_PEDIDO_REALIZA` FOREIGN KEY (`ID_REALIZA`) REFERENCES `empleado` (`ID_EMP`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (4,1,'2023-12-08',248000,1,'2023-12-08',1),(5,3,'2023-12-08',150000,NULL,NULL,NULL),(6,16,'2023-12-08',2360000,1,'2023-12-08',13),(7,1,'2023-12-13',300000,1,'2023-12-13',1);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prods_servs`
--

DROP TABLE IF EXISTS `prods_servs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prods_servs` (
  `ID_PRODS_SERV` int NOT NULL AUTO_INCREMENT,
  `ID_PRODUCTO` int NOT NULL,
  `ID_SERV` int NOT NULL,
  PRIMARY KEY (`ID_PRODS_SERV`),
  KEY `FK_PROD_SERV_PROD` (`ID_PRODUCTO`),
  KEY `FK_PROD_SERV_SERV` (`ID_SERV`),
  CONSTRAINT `FK_PROD_SERV_PROD` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `producto` (`ID_PRODUCTO`),
  CONSTRAINT `FK_PROD_SERV_SERV` FOREIGN KEY (`ID_SERV`) REFERENCES `servicio` (`ID_SERV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prods_servs`
--

LOCK TABLES `prods_servs` WRITE;
/*!40000 ALTER TABLE `prods_servs` DISABLE KEYS */;
/*!40000 ALTER TABLE `prods_servs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `ID_PRODUCTO` int NOT NULL AUTO_INCREMENT,
  `ID_PROV` int NOT NULL,
  `ID_TIPO_PROD` int NOT NULL,
  `NOMPROD` varchar(50) NOT NULL,
  `STOCK` int DEFAULT NULL,
  `COSTO_PROD` int DEFAULT NULL,
  `IMAGEN` varchar(50) DEFAULT NULL,
  `VALOR_VENTA` int NOT NULL,
  PRIMARY KEY (`ID_PRODUCTO`),
  KEY `FK_PROD_TIPO` (`ID_TIPO_PROD`),
  KEY `FK_PROD_PROV` (`ID_PROV`),
  CONSTRAINT `FK_PROD_PROV` FOREIGN KEY (`ID_PROV`) REFERENCES `proveedor` (`ID_PROV`),
  CONSTRAINT `FK_PROD_TIPO` FOREIGN KEY (`ID_TIPO_PROD`) REFERENCES `tipo_prod` (`ID_TIPO_PROD`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (2,10,2,'Neumatico 195/50R16 HANKOOK H426 ARO 16',32,114000,'neumatico.png',117990),(3,11,3,'Filtro de Aire TROOP TFA-2419',10,3000,'filtro.jpg',5590),(5,10,4,'Plumilla',75,4000,'plumilla.jpg',5000);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `ID_PROV` int NOT NULL AUTO_INCREMENT,
  `NOMPROV` varchar(50) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `NUMFONO` int DEFAULT NULL,
  PRIMARY KEY (`ID_PROV`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Salestec','djaram0@dmoz.org',925304091),(2,'Gyza Automotriz','rheighton1@lulu.com',938045824),(3,'Pit Stop','ddean2@uiuc.edu',981061266),(4,'IMSA','dbilbee3@dot.gov',944679418),(5,'Condor - Indumentaria Automotriz','awynn4@bizjournals.com',943551620),(6,'Loyal Centro Automotriz','dmartugin5@ehow.com',991750963),(7,'Autocar','jlillecrap6@sourceforge.net',951878042),(8,'Clínica Automotriz','mwhaymand7@xrea.com',999434975),(9,'Mobiliza Centro Automotriz','riston8@state.gov',915032837),(10,'Auto Prime','ceastbrook9@cbc.ca',996459611),(11,'Auto Aliado','fdavidgea@hao123.com',972409041),(12,'MacGyver and Sons','vgeraldib@reverbnation.com',989663657),(13,'ADN Car','iknowltonc@hao123.com',969181895),(14,'Bins Inc','mballayd@drupal.org',932480643),(15,'CarTime','wallanbye@accuweather.com',924700517),(16,'AutoForce Elite','astrondf@hatena.ne.jp',978285874),(17,'Crona-Rau','fosgarg@jalbum.net',961381020),(18,'Mundo Car','jthorringtonh@nyu.edu',965003721),(19,'Premium Service','pclacksoni@squarespace.com',971998203),(20,'Turbo Cars','jspendlovej@si.edu',969925827);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `ID_SERV` int NOT NULL AUTO_INCREMENT,
  `ID_TIPO_SERV` int NOT NULL,
  `NOMSERV` varchar(50) NOT NULL,
  `VALOR` int NOT NULL,
  `IMAGEN` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_SERV`),
  KEY `FK_SERVICIO_TIPO` (`ID_TIPO_SERV`),
  CONSTRAINT `FK_SERVICIO_TIPO` FOREIGN KEY (`ID_TIPO_SERV`) REFERENCES `tipo_servicio` (`ID_TIPO_SERV`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,5,'Cambio Aceite de Motor',50000,'motor.jpg'),(2,8,'Cambio de Plumilla',4000,'cambio.png');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_comprobante`
--

DROP TABLE IF EXISTS `tipo_comprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_comprobante` (
  `ID_TIPO_COMP` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_TIPO_COMP`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_comprobante`
--

LOCK TABLES `tipo_comprobante` WRITE;
/*!40000 ALTER TABLE `tipo_comprobante` DISABLE KEYS */;
INSERT INTO `tipo_comprobante` VALUES (1,'Boleta'),(2,'Factura');
/*!40000 ALTER TABLE `tipo_comprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_contrato`
--

DROP TABLE IF EXISTS `tipo_contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_contrato` (
  `ID_TIPO_CON` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_TIPO_CON`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_contrato`
--

LOCK TABLES `tipo_contrato` WRITE;
/*!40000 ALTER TABLE `tipo_contrato` DISABLE KEYS */;
INSERT INTO `tipo_contrato` VALUES (1,'Contrato Plazo Fijo Part-Time'),(2,'Contrato Plazo Fijo Full-Time'),(3,'Contrato Indefinido Part-Time'),(4,'Contrato Indefinido Full-Time'),(5,'A Honorario');
/*!40000 ALTER TABLE `tipo_contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_empleado`
--

DROP TABLE IF EXISTS `tipo_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_empleado` (
  `ID_TIPO_EMP` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_TIPO_EMP`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_empleado`
--

LOCK TABLES `tipo_empleado` WRITE;
/*!40000 ALTER TABLE `tipo_empleado` DISABLE KEYS */;
INSERT INTO `tipo_empleado` VALUES (1,'Gerente'),(2,'Cajero/a'),(3,'Técnico/a'),(4,'Administrativo');
/*!40000 ALTER TABLE `tipo_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_prod`
--

DROP TABLE IF EXISTS `tipo_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_prod` (
  `ID_TIPO_PROD` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_TIPO_PROD`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_prod`
--

LOCK TABLES `tipo_prod` WRITE;
/*!40000 ALTER TABLE `tipo_prod` DISABLE KEYS */;
INSERT INTO `tipo_prod` VALUES (1,'Insumo'),(2,'Neumático'),(3,'Repuesto'),(4,'Accesorio'),(5,'Herramienta');
/*!40000 ALTER TABLE `tipo_prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_servicio`
--

DROP TABLE IF EXISTS `tipo_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_servicio` (
  `ID_TIPO_SERV` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_TIPO_SERV`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_servicio`
--

LOCK TABLES `tipo_servicio` WRITE;
/*!40000 ALTER TABLE `tipo_servicio` DISABLE KEYS */;
INSERT INTO `tipo_servicio` VALUES (1,'Alineación'),(2,'Balanceo'),(3,'Frenos'),(4,'Revisión Kilometraje'),(5,'Cambio de Aceite'),(6,'Suspensión y Tren Delantero'),(7,'Cuadratura'),(8,'Otro');
/*!40000 ALTER TABLE `tipo_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `ID_VENTA` int NOT NULL AUTO_INCREMENT,
  `FECHA_VENTA` date NOT NULL,
  `TOTAL` int NOT NULL,
  `ID_HORA` int NOT NULL,
  `ID_TIPO_COMP` int NOT NULL,
  `ID_FORMA_PAGO` int NOT NULL,
  PRIMARY KEY (`ID_VENTA`),
  KEY `FK_VENTA_HORA` (`ID_HORA`),
  KEY `FK_VENTA_COMPROBANTE` (`ID_TIPO_COMP`),
  KEY `FK_VENTA_FORMA_PAGO` (`ID_FORMA_PAGO`),
  CONSTRAINT `FK_VENTA_COMPROBANTE` FOREIGN KEY (`ID_TIPO_COMP`) REFERENCES `tipo_comprobante` (`ID_TIPO_COMP`),
  CONSTRAINT `FK_VENTA_FORMA_PAGO` FOREIGN KEY (`ID_FORMA_PAGO`) REFERENCES `forma_pago` (`ID_FORMA_PAGO`),
  CONSTRAINT `FK_VENTA_HORA` FOREIGN KEY (`ID_HORA`) REFERENCES `hora` (`ID_HORA`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,'2023-11-28',8000,985,1,2),(2,'2023-11-28',100000,986,1,2),(3,'2023-12-04',64000,989,1,3),(4,'2023-12-04',60000,987,2,1),(5,'2023-12-13',60000,987,2,1);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TRG_FIN_HORA` AFTER INSERT ON `venta` FOR EACH ROW BEGIN
     UPDATE HORA 
     SET FINALIZADO = 1, FECHA_FIN = DATE(SYSDATE()), HORA_FIN = TIME(SYSDATE()) 
     WHERE NEW.ID_HORA = ID_HORA;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'taller_mecanico1'
--

--
-- Dumping routines for database 'taller_mecanico1'
--
/*!50003 DROP FUNCTION IF EXISTS `digitoVerificador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `digitoVerificador`(rut INT UNSIGNED) RETURNS varchar(1) CHARSET utf8mb4
BEGIN
DECLARE dv VARCHAR(1);
DECLARE Digito INT;
DECLARE Contador INT;
DECLARE Multiplo INT;
DECLARE Acumulador INT;
DECLARE resto int;

SET Contador = 2;
SET Acumulador = 0;
SET Multiplo = 0;

WHILE(rut!=0) DO
SET Multiplo = (rut%10) * Contador;
SET Acumulador = Acumulador + Multiplo;
SET rut = FLOOR(rut / 10);
SET Contador = Contador + 1;
if(Contador = 8) THEN
SET Contador = 2;
END IF;
END WHILE;

SET resto = TRUNCATE(Acumulador/11,0);
SET resto = resto * 11;

SET Digito = ABS(Acumulador - resto);
SET Digito = 11 - Digito;

IF Digito = 10 THEN SET dv = 'K';
ELSEIF(Digito = 11) THEN SET dv = '0';
ELSE SET dv = LTRIM(RTRIM(CAST(Digito as CHAR(2))));
END IF;

RETURN dv;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_ACEPTA_PED` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_ACEPTA_PED`(IDEMP INT, IDPED INT)
BEGIN
	DECLARE LISTO BOOLEAN DEFAULT FALSE;
    DECLARE ID INT;
    DECLARE CANT INT;
	DECLARE CUR_DET CURSOR FOR 
		SELECT ID_PRODUCTO, CANTIDAD 
        FROM DETALLE_PEDIDO 
        WHERE ID_PEDIDO = IDPED;
        
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET LISTO = TRUE;
    
	UPDATE PEDIDO
    SET RECEPCIONADO = 1, FEC_RECEPCION = DATE(SYSDATE()), ID_ACEPTA = IDEMP
    WHERE ID_PEDIDO = IDPED;
    
    OPEN CUR_DET;
    
    lup:LOOP
		FETCH CUR_DET INTO ID, CANT;
        
        IF LISTO THEN
            LEAVE lup;
        END IF;
        
        UPDATE PRODUCTO
        SET STOCK = STOCK + CANT
        WHERE ID_PRODUCTO = ID;
        
    END LOOP;
    
    CLOSE CUR_DET;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_ADM_HORAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_ADM_HORAS`()
BEGIN
SELECT 
	H.ID_HORA "NUMHORA", 
    H.ID_CLI "NUMCLIENTE", 
    CONCAT(C.NOMBRES,' ',C.APELLIDOS)"NCLI", 
    CONCAT(C.NUMRUN,'-',C.DVRUN)"RCLI", 
    H.FECHA_INI "DINICIO", 
    H.HORA_INI "TINICIO"
FROM HORA H
INNER JOIN CLIENTE C ON C.ID_CLI = H.ID_CLI 
WHERE H.ESTADO = 1 AND H.FINALIZADO IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_AGG_DET_PED` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_AGG_DET_PED`(NUMPROD INT, CANT INT, COST INT, SUM INT)
BEGIN
	DECLARE NUMPED INT;
    SELECT MAX(ID_PEDIDO) INTO NUMPED FROM PEDIDO;
	
	INSERT INTO DETALLE_PEDIDO(ID_PEDIDO,ID_PRODUCTO,CANTIDAD,COSTO,TOTAL)
	VALUES (NUMPED,NUMPROD,CANT,COST,SUM);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_AGG_PED` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_AGG_PED`(IDEMP INT, COST INT)
BEGIN
	INSERT INTO PEDIDO(ID_REALIZA,FEC_PED,COSTO)
	VALUES (IDEMP, DATE(SYSDATE()),COST);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_ANALISIS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_ANALISIS`(FECHA_INICIO DATE, FECHA_FIN DATE)
BEGIN
    SELECT 
        SUM(V.TOTAL) AS INGRESO,COUNT(ID_VENTA) AS NRO_VENTAS,
        (SELECT SUM(P.COSTO) FROM PEDIDO P WHERE FEC_PED BETWEEN FECHA_INICIO AND FECHA_FIN) AS COSTO,
        (SUM(V.TOTAL) - (SELECT SUM(P.COSTO) FROM PEDIDO P WHERE FEC_PED BETWEEN FECHA_INICIO AND FECHA_FIN)) AS TOTAL
    FROM VENTA V 
    WHERE FECHA_VENTA BETWEEN FECHA_INICIO AND FECHA_FIN;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_BUS_PROD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_BUS_PROD`(IDTS INT)
BEGIN
	SELECT * FROM PRODUCTO WHERE ID_PRODUCTO = IDTS;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_BUS_PROV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_BUS_PROV`(IN idProveedor INT)
BEGIN
    SELECT * FROM proveedor WHERE ID_PROV = idProveedor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_BUS_SERV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_BUS_SERV`(IDTS INT)
BEGIN
	SELECT * FROM SERVICIO WHERE ID_SERV = IDTS;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_CAJEROS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_CAJEROS`()
BEGIN
	SELECT E.ID_EMP "NUM", CONCAT(E.NOMBRES,' ',E.APELLIDOS) "PTC"
    FROM EMPLEADO E 
    WHERE E.ID_TIPO_EMP = 2;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_CLIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_CLIENTE`()
BEGIN
	SELECT 
    ID_CLI "NUMERO", 
    NUMRUN "RUT", 
    DVRUN "DIGITO", 
    CONCAT(NOMBRES, ' ',APELLIDOS) "NOMBRE_COMPLETO",
    NUMFONO "TELEFONO",
    EMAIL "CORREO_ELECTRONICO",
    FECHA_NAC "NACIMIENTO",
    DIRECCION "VIVIR",
    USUARIO "US",
    CONTRASENIA "PW"
    FROM CLIENTE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_CREAR_VENTA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_CREAR_VENTA`(TOTAL INT,HORA INT,COMPROBANTE INT,PAGO INT)
BEGIN
	INSERT INTO VENTA(FECHA_VENTA,TOTAL,ID_HORA,ID_TIPO_COMP,ID_FORMA_PAGO) 
    VALUES(SYSDATE(),TOTAL,HORA,COMPROBANTE,PAGO);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_DETALLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_DETALLE`(IDPED INT)
BEGIN
	SELECT 
		DP.ID_PRODUCTO "NUMPROD",
        P.NOMPROD "NOMPROD",
        DP.CANTIDAD "CANT",
        DP.COSTO "VALOR",
        DP.TOTAL "MAXIMO"
	FROM DETALLE_PEDIDO DP
    INNER JOIN PRODUCTO P ON DP.ID_PRODUCTO = P.ID_PRODUCTO
    WHERE ID_PEDIDO = IDPED
    ORDER BY DP.ID_PRODUCTO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_DET_VENTA_PROD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_DET_VENTA_PROD`(SERV INT, CANT INT, TOTAL INT, CAJERO INT)
BEGIN
	DECLARE VENTA INT;
	SELECT MAX(ID_VENTA) INTO VENTA FROM VENTA;
    
    INSERT INTO DETALLE_VENTA(ID_VENTA,ID_PRODUCTO,CANTIDAD,TOTAL, ID_CAJERO)
    VALUES(VENTA,SERV,CANT,TOTAL, CAJERO);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_DET_VENTA_SERV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_DET_VENTA_SERV`(SERV INT, CANT INT, TOTAL INT, TECNICO INT)
BEGIN
	DECLARE VENTA INT;
	SELECT MAX(ID_VENTA) INTO VENTA FROM VENTA;
    
    INSERT INTO DETALLE_VENTA(ID_VENTA,ID_SERV,CANTIDAD,TOTAL, ID_TECNICO)
    VALUES(VENTA,SERV,CANT,TOTAL, TECNICO);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_DIAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_DIAS`(MES INT)
BEGIN
	DECLARE INICIO DATE;
    DECLARE FIN DATE;

    SET INICIO = CONCAT(YEAR(SYSDATE()),'-',MES,'-','01');
    SET FIN = LAST_DAY(INICIO);
    WHILE INICIO<=FIN DO
		IF DAYNAME(INICIO) = 'Saturday' 
			THEN CALL PRC_HORAS_SABADO(INICIO);
			SET INICIO = DATE_ADD(INICIO,INTERVAL 1 DAY);
		END IF;
        IF DAYNAME(INICIO) = 'Sunday' THEN SET INICIO = DATE_ADD(INICIO,INTERVAL 1 DAY);
        END IF;
		IF DAYNAME(INICIO) IN ('Monday','Tuesday','Wednesday','Thursday','Friday') THEN
        CALL PRC_HORAS_SEMANA(INICIO);
        SET INICIO = DATE_ADD(INICIO,INTERVAL 1 DAY);
        END IF;
        
    END WHILE;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_Edi_Proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_Edi_Proveedor`(IN idProveedor INT, IN nombreProveedor VARCHAR(255), IN correoProveedor VARCHAR(255), IN numeroProveedor VARCHAR(20))
BEGIN
    UPDATE proveedor
    SET NOMPROV = nombreProveedor, EMAIL = correoProveedor, NUMFONO = numeroProveedor
    WHERE ID_PROV = idProveedor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_ELI_PRODUCTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_ELI_PRODUCTO`(
  IN p_id_producto INT
)
BEGIN
  DECLARE producto_existente INT;

  -- Verificar si el producto existe
  SELECT COUNT(*) INTO producto_existente FROM Producto WHERE ID_PRODUCTO = p_id_producto;

  IF producto_existente > 0 THEN
    -- El producto existe, proceder con la eliminación
    DELETE FROM Producto WHERE ID_PRODUCTO = p_id_producto;
    SELECT 'Producto eliminado correctamente' AS mensaje;
  ELSE
    -- El producto no existe
    SELECT 'El producto no existe' AS mensaje;
  END IF;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_ELI_PROVEEDOR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_ELI_PROVEEDOR`(IN p_id_proveedor INT)
BEGIN
  DECLARE mensaje VARCHAR(100);

  -- Elimina productos asociados al proveedor
DELETE FROM producto 
WHERE
    ID_PROV = p_id_proveedor;

  -- Elimina el proveedor
DELETE FROM proveedor 
WHERE
    ID_PROV = p_id_proveedor;

  SET mensaje = 'Proveedor eliminado correctamente';

  -- Retorna el mensaje
SELECT mensaje AS mensaje;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_ELI_SERVICIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_ELI_SERVICIO`(IN p_ID_SERVICIO INT)
BEGIN
  IF EXISTS (SELECT * FROM SERVICIO WHERE ID_SERV = p_ID_SERVICIO) THEN
    DELETE FROM SERVICIO WHERE ID_SERV = p_ID_SERVICIO;
    SELECT 'Servicio eliminado correctamente' AS mensaje;
  ELSE
    SELECT 'El servicio no existe' AS mensaje;
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_EMPLEADO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_EMPLEADO`()
BEGIN
    SELECT
        NUMRUN,
        NOMBRES,
        APELLIDOS,
        NUMFONO,
        EMAIL,
        DATE_FORMAT(FECHA_NAC, '%d/%m/%Y') AS FECHA_NAC_FORMAT,
        DIRECCION,
        ID_TIPO_EMP,
        ID_TIPO_CON,
        DATE_FORMAT(FECHA_CONTRATO, '%d/%m/%Y') AS FECHA_CONTRATO_FORMAT,
        SUELDO,
        USUARIO,
        CONTRASENIA
    FROM EMPLEADO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_FORMA_PAGO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_FORMA_PAGO`()
BEGIN
	SELECT ID_FORMA_PAGO "NUM", DESCRIPCION "PTC" FROM FORMA_PAGO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_HORAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_HORAS`(DIA DATE)
BEGIN
	DECLARE HORA TIME;
    DECLARE CONTADOR INT;
    
    SELECT COUNT(*) INTO CONTADOR FROM HORA WHERE FECHA_INI = DIA;
    IF CONTADOR = 0 THEN
		SET HORA = '09:00:00';
		WHILE HORA<'18:00:00' DO
			IF HORA NOT IN ('13:00:00','14:00:00') THEN
				INSERT INTO HORA (FECHA_INI,HORA_INI,ESTADO) VALUES(DIA,HORA,FALSE);
            END IF;
			SET HORA = ADDTIME(HORA,'1:00:00');
		END WHILE;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_HORAS_PENDIENTES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_HORAS_PENDIENTES`()
BEGIN
	SELECT 
		H.ID_HORA "NUM_HORA", 
        H.FECHA_INI "D_INICIO", 
        H.HORA_INI "T_INICIO", 
        H.ID_CLI "NUM_CLIENTE", 
        CONCAT(C.NOMBRES, ' ',C.APELLIDOS) "NOM_CLI",
        CONCAT(C.NUMRUN, '-',C.DVRUN) "RUT_COMPLETO"
    FROM HORA H
    INNER JOIN CLIENTE C ON C.ID_CLI = H.ID_CLI
    WHERE ESTADO = 1 AND FINALIZADO IS NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_HORAS_SABADO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_HORAS_SABADO`(DIA DATE)
BEGIN
	DECLARE HORA TIME;
    DECLARE CONTADOR INT;
    
    SELECT COUNT(*) INTO CONTADOR FROM HORA WHERE FECHA_INI = DIA;
    IF CONTADOR = 0 THEN
		SET HORA = '09:00:00';
		WHILE HORA<='12:00:00' DO
			INSERT INTO HORA (FECHA_INI,HORA_INI,ESTADO) VALUES(DIA,HORA,FALSE);
            SET HORA = ADDTIME(HORA,'1:00:00');
		END WHILE;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_HORAS_SEMANA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_HORAS_SEMANA`(DIA DATE)
BEGIN
	DECLARE HORA TIME;
    DECLARE CONTADOR INT;
    
    SELECT COUNT(*) INTO CONTADOR FROM HORA WHERE FECHA_INI = DIA;
    IF CONTADOR = 0 THEN
		SET HORA = '09:00:00';
		WHILE HORA<'18:00:00' DO
			IF HORA NOT IN ('13:00:00','14:00:00') THEN
				INSERT INTO HORA (FECHA_INI,HORA_INI,ESTADO) VALUES(DIA,HORA,FALSE);
            END IF;
			SET HORA = ADDTIME(HORA,'1:00:00');
		END WHILE;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_INS_EMPLEADO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_INS_EMPLEADO`(
  IN p_numRun INT,
  IN p_nombres VARCHAR(255),
  IN p_apellidos VARCHAR(255),
  IN p_numFono VARCHAR(20),
  IN p_email VARCHAR(255),
  IN p_fechaNac DATE,
  IN p_direccion VARCHAR(255),
  IN p_idTipoEmp INT,
  IN p_idTipoCon INT,
  IN p_fechaContrato DATE,
  IN p_sueldo DECIMAL(10, 2),
  IN p_usuario VARCHAR(50),
  IN p_contrasenia VARCHAR(50)
)
BEGIN
  INSERT INTO EMPLEADO (
    NUMRUN,
    NOMBRES,
    APELLIDOS,
    NUMFONO,
    EMAIL,
    FECHA_NAC,
    DIRECCION,
    ID_TIPO_EMP,
    ID_TIPO_CON,
    FECHA_CONTRATO,
    SUELDO,
    USUARIO,
    CONTRASENIA
  ) VALUES (
    p_numRun,
    p_nombres,
    p_apellidos,
    p_numFono,
    p_email,
    p_fechaNac,
    p_direccion,
    p_idTipoEmp,
    p_idTipoCon,
    p_fechaContrato,
    p_sueldo,
    p_usuario,
    p_contrasenia
  );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_INS_PRODUCTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_INS_PRODUCTO`(
  IN p_idProveedor INT,
  IN p_idTipoProducto INT,
  IN p_nombreProducto VARCHAR(255),
  IN p_stock INT,
  IN p_costoProducto DECIMAL(10, 2),
  IN p_imagen VARCHAR(255)
)
BEGIN
	INSERT INTO PRODUCTO (ID_PROV,ID_TIPO_PROD, NOMPROD,STOCK,COSTO_PROD,IMAGEN) VALUES (p_idProveedor,p_idTipoProducto,p_nombreProducto,p_stock,p_costoProducto,p_imagen);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_INS_PROV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_INS_PROV`(
    IN p_id_prov INT,
    IN p_nomprov VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_numfono VARCHAR(15)
)
BEGIN
    IF NOT EXISTS (SELECT * FROM proveedores WHERE id_prov = p_id_prov) THEN
        INSERT INTO proveedores (id_prov, nomprov, email, numfono)
        VALUES (p_id_prov, p_nomprov, p_email, p_numfono);

        SELECT 'Proveedor agregado correctamente.' AS mensaje;
    ELSE
        SELECT 'El proveedor ya existe.' AS mensaje;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_INS_SERV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_INS_SERV`(
  IN p_ID_TIPO_SERV INT,
  IN p_NOMSERV VARCHAR(255),
  IN p_VALOR INT,
  IN p_IMAGEN VARCHAR(255)
)
BEGIN
  INSERT INTO SERVICIO (ID_TIPO_SERV, NOMSERV, VALOR, IMAGEN)
  VALUES (p_ID_TIPO_SERV, p_NOMSERV, p_VALOR, p_IMAGEN);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_INS_TS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_INS_TS`(DATO VARCHAR(50))
BEGIN
	INSERT INTO TIPO_SERVICIO (DESCRIPCION) VALUES(DATO);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_LIBERAR_HORA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_LIBERAR_HORA`(ID INT)
BEGIN
	UPDATE HORA
    SET ESTADO = 0
    WHERE ID_HORA = ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_LIST_EMP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_LIST_EMP`()
BEGIN
	SELECT ID_EMP "NUMEMP", CONCAT(NOMBRES, ' ',APELLIDOS) "NOMEMP" FROM EMPLEADO WHERE ID_TIPO_EMP IN (1,2,4);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_PRODS_PROV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_PRODS_PROV`(IDPROV INT)
BEGIN
	SELECT
		ID_PRODUCTO "NUM_PROD", NOMPROD "NOMBRE", COSTO_PROD "VALOR_UNITARIO"
	FROM PRODUCTO
	WHERE ID_PROV = IDPROV;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_PRODUCTOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_PRODUCTOS`()
BEGIN
    SELECT * FROM producto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_PROD_SIMPLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_PROD_SIMPLE`()
BEGIN
	SELECT ID_PRODUCTO"NUM_PRODUCTO", NOMPROD "QUEES", VALOR_VENTA "PRECIO" FROM PRODUCTO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_PROVEEDORES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_PROVEEDORES`()
BEGIN
	SELECT * FROM proveedor ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_PROV_DISP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_PROV_DISP`()
BEGIN
SELECT
	P.ID_PROV "NUM_PROV", PR.NOMPROV"NOMBRE_PROV"
FROM PRODUCTO P
INNER JOIN PROVEEDOR PR ON PR.ID_PROV = P.ID_PROV 
GROUP BY P.ID_PROV
HAVING COUNT(P.ID_PROV) > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_SERVICIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_SERVICIO`()
BEGIN
    SELECT * FROM SERVICIO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_SERV_SIMPLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_SERV_SIMPLE`()
BEGIN
	SELECT ID_SERV "NUM_SERVICIO", NOMSERV "QUEES", VALOR "PRECIO" FROM SERVICIO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_TECNICOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_TECNICOS`()
BEGIN
	SELECT E.ID_EMP "NUM", CONCAT(E.NOMBRES,' ',E.APELLIDOS) "PTC"
    FROM EMPLEADO E 
    WHERE E.ID_TIPO_EMP = 3;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_TIPO_COMP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_TIPO_COMP`()
BEGIN
	SELECT ID_TIPO_COMP "NUM", DESCRIPCION "PTC" FROM TIPO_COMPROBANTE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_TOMAR_HORA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_TOMAR_HORA`(IDHORA INT, IDCLI INT)
BEGIN
	UPDATE HORA
    SET ESTADO = 1, ID_CLI = IDCLI
    WHERE ID_HORA = IDHORA;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_TP_PRODUCTOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_TP_PRODUCTOS`()
BEGIN
    SELECT * FROM TIPO_PROD;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_TP_PROVEEDOR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_TP_PROVEEDOR`()
BEGIN
    SELECT * FROM PROVEEDOR;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_TP_SERVICIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_TP_SERVICIO`()
BEGIN
    SELECT * FROM tipo_servicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_UpdatearProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_UpdatearProducto`(IN idProducto INT, IN idProveedor INT, IN idTipoProducto INT, IN nombreProducto VARCHAR(255), IN stock INT, IN costoProducto DECIMAL(10, 2), IN imageName VARCHAR(255))
BEGIN
    UPDATE Producto
    SET ID_PROV = idProveedor,
        ID_TIPO_PROD = idTipoProducto,
        NOMPROD = nombreProducto,
        STOCK = stock,
        COSTO_PROD = costoProducto,
        IMAGEN = imageName
    WHERE ID_PRODUCTO = idProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_UPD_SERV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_UPD_SERV`(IDTS INT, NMS VARCHAR(50), VAL INT, IMG VARCHAR(50),IDS INT)
BEGIN
	UPDATE SERVICIO SET ID_TIPO_SERV = IDTS, NOMSERV = NMS, VALOR = VAL, IMAGEN = IMG WHERE ID_SERV = IDS;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_VER_HORA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_VER_HORA`()
BEGIN
	DECLARE ACTUAL DATE;
    
    SET ACTUAL = DATE(SYSDATE());
    
    SELECT ID_HORA, CONCAT(DAY(FECHA_INI),'/',MONTH(FECHA_INI),'/',YEAR(FECHA_INI)) "FECHA_INI", HORA_INI, ESTADO 
    FROM HORA 
    WHERE FECHA_INI >= ACTUAL AND MONTH(FECHA_INI) = MONTH(SYSDATE()) AND ESTADO = 0
    ORDER BY FECHA_INI,HORA_INI;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_VER_PEDIDOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_VER_PEDIDOS`()
BEGIN
	SELECT 
		ID_PEDIDO "NUM_PEDIDO", 
		ID_REALIZA "HACE_PEDIDO", 
		(SELECT CONCAT(NOMBRES,' ',APELLIDOS) FROM EMPLEADO WHERE ID_EMP = ID_REALIZA) "NOMBRE_REALIZA",
		FEC_PED "FECHA_REALIZA",
		COSTO "VALOR",
		RECEPCIONADO "ENTREGADO",
		FEC_RECEPCION "FECHA_ENTREGA",
		ID_ACEPTA "ACEPTA_PEDIDO",
		(SELECT CONCAT(NOMBRES,' ',APELLIDOS) FROM EMPLEADO WHERE ID_EMP = ID_ACEPTA) "NOMBRE_ACEPTA"
    FROM PEDIDO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_VER_TC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_VER_TC`()
BEGIN
	SELECT * FROM TIPO_CONTRATO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRC_VER_TE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRC_VER_TE`()
BEGIN
	SELECT * FROM TIPO_EMPLEADO WHERE ID_TIPO_EMP != 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-14 21:32:53
