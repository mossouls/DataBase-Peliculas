-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: practica_pelis
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `id_act` int NOT NULL AUTO_INCREMENT,
  `nom_act` varchar(30) NOT NULL,
  `ap1_act` varchar(30) NOT NULL,
  `ap2_act` varchar(30) NOT NULL,
  `fnac_act` date NOT NULL,
  `fdef_act` date DEFAULT NULL,
  PRIMARY KEY (`id_act`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Leonardo','Willhelm','DiCaprio','1974-11-11',NULL),(2,'Thomas','Jacob','Black','1969-08-28',NULL),(3,'Ben','Edward','Stiller','1965-11-30',NULL),(4,'Robert','John','Downey','1965-04-04',NULL),(5,'Denzel','Hayes','Washington','1954-12-28',NULL),(6,'Willard','Carroll','Smith','1968-09-25',NULL),(7,'Angelina','Pitt','Voight','1975-06-04',NULL),(8,'William','Bradley','Pitt','1963-12-18',NULL),(9,'Marlon','Brando','Jr','1924-04-03','2004-07-01'),(10,'Sacha','Baron','Cohen','1971-10-13',NULL),(11,'Alicia','Christian','Foster','1962-11-19',NULL),(12,'Philip','Anthony','Hopkins','1937-12-31',NULL),(13,'George','Orson','Welles','1915-06-05','1985-10-10'),(14,'Rami','Said','Malek','1981-05-12',NULL),(15,'Alfredo','James','Pacino','1949-04-25',NULL),(16,'Samuel','Leroy','Jackson','1948-12-21',NULL),(17,'Jared','Joseph','Leto','1971-12-26',NULL),(18,'Robert','De','Niro','1943-08-17',NULL),(19,'Spike','Lee','T.','1957-03-22',NULL);
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actua`
--

DROP TABLE IF EXISTS `actua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actua` (
  `id_act` int NOT NULL,
  `id_peli` int NOT NULL,
  PRIMARY KEY (`id_act`,`id_peli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actua`
--

LOCK TABLES `actua` WRITE;
/*!40000 ALTER TABLE `actua` DISABLE KEYS */;
INSERT INTO `actua` VALUES (1,1),(2,2),(3,2),(4,3),(5,10),(5,11),(6,13),(7,12),(7,13),(8,6),(8,12),(9,7),(10,9),(11,4),(12,4),(12,5),(12,6),(13,14),(14,10),(15,7),(15,8),(15,11),(16,11),(17,10),(18,7),(19,11);
/*!40000 ALTER TABLE `actua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alquila`
--

DROP TABLE IF EXISTS `alquila`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alquila` (
  `id_cli` int NOT NULL,
  `id_peli` int NOT NULL,
  `puntos` int NOT NULL,
  `f_alquiler` date NOT NULL,
  `f_devolucion` date NOT NULL,
  `formato` enum('VHS','DVD','Blu-Ray') NOT NULL,
  `devuelta` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_cli`,`id_peli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alquila`
--

LOCK TABLES `alquila` WRITE;
/*!40000 ALTER TABLE `alquila` DISABLE KEYS */;
INSERT INTO `alquila` VALUES (1,3,220,'2004-05-05','2004-06-06','VHS',1),(2,10,270,'2018-07-21','2018-08-21','DVD',1),(3,9,0,'2019-12-22','2020-01-22','Blu-Ray',0),(4,1,0,'2020-01-30','2020-02-12','DVD',1),(5,3,500,'2020-12-03','2021-01-04','Blu-Ray',1),(6,1,450,'2021-07-02','2021-10-03','Blu-Ray',1),(7,13,202,'2021-05-24','2021-06-14','Blu-Ray',1),(8,5,400,'2014-10-06','2014-11-07','DVD',1),(9,7,700,'2017-03-09','2017-04-10','DVD',1),(10,2,570,'2018-08-09','2018-09-09','Blu-Ray',1),(11,12,306,'2012-10-25','2012-11-25','VHS',1),(12,4,735,'2020-01-10','2020-02-10','Blu-Ray',1),(12,6,800,'2021-06-13','2021-07-13','Blu-Ray',1),(13,14,900,'2014-03-27','2014-04-27','VHS',1),(14,6,0,'2012-11-13','2012-12-13','VHS',1),(14,11,400,'2020-02-17','2020-03-17','Blu-Ray',1),(15,8,0,'2014-04-16','2014-05-16','DVD',1),(16,11,520,'2015-09-17','2015-10-17','DVD',1);
/*!40000 ALTER TABLE `alquila` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cli` int NOT NULL AUTO_INCREMENT,
  `DNI_cli` varchar(9) NOT NULL,
  `email_cli` varchar(50) NOT NULL,
  `nom_cli` varchar(30) NOT NULL,
  `ap1_cli` varchar(30) NOT NULL,
  `ap2_cli` varchar(30) NOT NULL,
  `finscrip_cli` date NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `tel_cli` varchar(9) NOT NULL,
  PRIMARY KEY (`id_cli`),
  UNIQUE KEY `DNI_cli` (`DNI_cli`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'13559232L','jessica_biel@gmail.com','Jessica','Biel','Arias','2020-03-29','C/ Francisco, 2, A Coruña','645298086'),(2,'28255625X','che_guevara@outlook.com','María','Soledad','Ordoñez','2007-04-28','C/ Samaniego, 1, Salamanca','668677208'),(3,'47489000A','taylor_mckenzie@gmail.com','Taylor','Mckenzie','Malek','2016-04-16','Av. Escribano, 899, Madrid','629914837'),(4,'74094564H','widukind@yahoo.com','Ibai','Cuadrados','Martos','2003-02-06','C/ Ariadna, 791, Valladolid','608186253'),(5,'77311647E','claire_bowen@yahoo.com','Claire','Bowen','Marty','2002-04-20','C/ Guillem, 700, Alicante','636425495'),(6,'34002349T','nerissa_partridge@aol.com','Nerissa','Partridge','Almeida','2022-03-04','C/ Ainara, 508, Badajoz','629825838'),(7,'54860164N','drew_barrymore@hotmail.com','Drew','Barrymore','Pérez','2021-06-02','C/ Javier, 710, Sevilla','602952884'),(8,'81877690J','willy_mays@mail.com','Willy','Mays','ramírez','2005-04-07','C/ Portillo, 1, Castellón','670835989'),(9,'52131933H','jaimie_bell@gmail.com','Jaimie','Bell','Conde','2017-02-10','C/ San Miguel, 4, Guadalajara','629831370'),(10,'51885399K','nicos_galis@aol.com','Nicos','Galis','Lilo','2012-07-26','C/ Hugo, 8, Jaén','711416751'),(11,'30588499V','julia_both@protonmail.com','Julia','Both','Grau','2001-02-02','C/ Cortés, 115, Ceuta','696216877'),(12,'43683012D','jim_thorpe@aol.com','Jim','Thorpe','Varela','2020-02-08','Pza. Marco, 6, Girona','644827835'),(13,'71162242N','suleyman_the_magnificent@mail.com','Brais','Centeno','Garrido','2005-08-11','C/ Ian, 6, Cáceres','772831069'),(15,'79242238Q','shalonda_murphy@protonmail.com','Sharon','Murphy','Merchan','2009-08-25','C/ Fuentes, 947, Girona','643638545'),(16,'36070654F','imogene_hagan@protonmail.com','Eugene','Hagan','Carbajal','2012-06-26','C/ Elenas, 29, Jaén','637015299');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `id_dir` int NOT NULL AUTO_INCREMENT,
  `id_act` int DEFAULT NULL,
  `nom_dir` varchar(30) NOT NULL,
  `ap1_dir` varchar(30) NOT NULL,
  `ap2_dir` varchar(30) NOT NULL,
  `fnac_dir` date NOT NULL,
  `fdef_dir` date DEFAULT NULL,
  PRIMARY KEY (`id_dir`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,NULL,'Francis','Ford','Coppola','1939-04-07',NULL),(2,NULL,'Martin','Brest','M.','1951-08-08',NULL),(3,NULL,'Ridley','R.','Scott','1937-11-30',NULL),(4,NULL,'Robert','Jonathan','Demme','1944-02-22',NULL),(5,NULL,'Shawn','Adam','Levy','1968-07-23',NULL),(6,NULL,'James','Francis','Cameron','1954-08-16',NULL),(7,NULL,'Larry','Charles','T.','1956-12-01',NULL),(8,NULL,'Brian','De','Palma','1940-09-11',NULL),(9,19,'Spike','Lee','T.','1957-03-22',NULL),(10,3,'Ben','Edward','Stiller','1965-11-30',NULL),(11,13,'George','Orson','Welles','1915-06-05',NULL),(12,NULL,'Douglas','Eric','Liman','1965-07-25',NULL),(13,NULL,'Robert','Thomas','Letterman','1979-10-31',NULL),(14,NULL,'Eric','Bibo','Bergeron','1965-07-14',NULL),(15,NULL,'Victoria','Vicky','Jenson','1969-03-04',NULL),(16,NULL,'John','Lee','Hancock','1957-12-15',NULL);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dirige`
--

DROP TABLE IF EXISTS `dirige`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dirige` (
  `id_dir` int NOT NULL,
  `id_peli` int NOT NULL,
  PRIMARY KEY (`id_dir`,`id_peli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dirige`
--

LOCK TABLES `dirige` WRITE;
/*!40000 ALTER TABLE `dirige` DISABLE KEYS */;
INSERT INTO `dirige` VALUES (1,7),(2,6),(3,5),(4,4),(5,3),(6,1),(7,9),(8,8),(9,11),(10,2),(11,14),(12,12),(13,13),(14,13),(15,13),(16,10);
/*!40000 ALTER TABLE `dirige` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `nom_gen` varchar(30) NOT NULL,
  `descrip_gen` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`nom_gen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES ('accion','Su argumento implica una interacción moral entre el bien y el mal llevada a cabo por medio de la fuerza física'),('animacion','Se caracteriza por filmpelículas compuestas por fotogramas dibujados a mano que, pasados rápidamente, producen ilusión de movimiento gracias al principio de persistencia de la visión.'),('belico','Campos de batalla y posiciones que pertenecen a un tiempo de guerra.'),('ciencia ficcion','Basado en un futuro cercano o lejano, donde se logra ver el avance tecnológico y cómo se ejecuta éste en la historia.'),('comedia','Películas realizadas con la intención de provocar divertimiento o risa en el espectador.'),('documental','Hace referencia a temas de interés científico, social o cultural, entre otros.'),('historico','Película situada en un contexto pasado y aproximado a la realidad que refleja parte de la historia'),('melodrama','películas que se centran principalmente en el desarrollo de una lid entre los protagonistas, o del protagonista con su entorno o consigo mismo'),('musical','Película que contiene o referencia piezas musicales, o biografías de músicos.'),('policiaco','La derrota del «Mal», en el contexto de la actividad criminal.'),('romance','un desenvolvimiento romántico, cariñoso o amoroso entre dos personas.'),('suspense','Películas realizadas con la intención de provocar tensión en el espectador. También suele utilizarse la palabra thriller para designar películas de este tipo.'),('terror','Películas realizadas con la intención de provocar pavor, tensión, miedo y/o el sobresalto en la audiencia.');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `peli_sum`
--

DROP TABLE IF EXISTS `peli_sum`;
/*!50001 DROP VIEW IF EXISTS `peli_sum`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `peli_sum` AS SELECT 
 1 AS `id_peli`,
 1 AS `titulo_peli`,
 1 AS `pais_peli`,
 1 AS `festreno_peli`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelicula` (
  `id_peli` int NOT NULL AUTO_INCREMENT,
  `titulo_peli` varchar(50) NOT NULL,
  `pais_peli` varchar(30) NOT NULL,
  `festreno_peli` date DEFAULT NULL,
  `sinopsis` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id_peli`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES (1,'Titanic','EEUU','1997-12-19','Jack y Rose, pertenecientes a clases sociales diferentes, se enamoran en el Titanic, antes de que al hundimiento les haga enfrentar la famosa tragedia.'),(2,'Tropic Thunder','EEUU','2008-08-13','Unos actores graban una película sobre la guerra de Vietnam cuando el director, para salvar la desastrosa película y hacerla más realista, decide abandonarlos a su suerte en una selva llena de peligros y de traficantes.'),(3,'Noche en el Museo','EEUU','2007-01-26','Un divorciado incapaz de mantener un trabajo estable es contratado como guarda de seguridad en en Museo de Historia Natural. Sin embargo, no todo es lo que parece?'),(4,'El Silencio de los Corderos','EEUU','1991-02-14','Clarice Starling, una joven detective en formación del FBI, debe ayudarse el brilliante psiquiátra, asesino en serie y caníbal Hannibal Lecter para dar con el despiadado asesino Buffalo Bill'),(5,'Hannibal','EEUU','2001-02-23','El dotado criminólogo Will Graham tiene una manera única de pensar que le permite empatizar con todo el mundo, los psicópatas incluidos. Pero mientras ayuda al FBI a perseguir a un asesino en serie especialmente complicado, él decide que podría utilizar un poco de ayuda y alista al brillante psiquiatra Hannibal Lecter.'),(6,'¿Conoces a Joe Black?','EEUU','1999-01-22','William Parris es un magnate cuya vida se ve alterada por la llegada de Joe Black, enamorado de su hija, que es la personificación de la muerte.'),(7,'El Padrino','EEUU','1972-10-20','Don Vito Corleone es el temido jefe de una de las cinco familias más respetada de Nueva York. El hijo menor, Michael, no quiere saber nada de los negocios de su padre.'),(8,'Scarface','EEUU','1984-03-12','Tony Montana es un emigrante cubano frío que se instala en Miami con el propósito de convertirse en un ganster importante.'),(9,'Borat','Kazajistan','2006-11-17','Lecciones culturales de EEUU para beneficio de la gloriosa nación de Kazajistán'),(10,'Pequeños Detalles','EEUU','2021-01-29','Un sheriff y un detective de homicidios colaboran para dar caza a un asesino en Los Ángeles. El pasado de uno de ellos sale a la luz y puede poner en peligro la investigación'),(11,'Mo Better Blues','EEUU','1990-08-03','El estudio de Spike Lee sobre una trompetista de Jazz cuya pasión por la música inundó su vida personal y profesional'),(12,'Sr y Sra Smith','EEUU','2005-06-07','Tras cinco años de idilio conyugal, el matrimonio de John y Jane Smith ha entrado en la rutina. Hasta que ambos descubren la verdad: ambos son fríos, letales y carísimos asesinos a sueldo de organizaciones enfrentadas.'),(13,'El espantatiburones','EEUU','2004-10-01','El hijo de un tiburón mafisoso muere cuando le cae un ancla encima. Un pez con mucha labia y grandes sueños es encontrado en la escena de el crime y para darse importancia se atribuye la muerte. Pero sus sueños le meten en agua estancada cuando una gran mentira le convierte en un improbable héroe'),(14,'Ciudadano Kane','EEUU','1946-02-11','Un periodista se obsesiona con el hecho de comprender el significado de la última palabra que Charles Foster Kane dijo antes de morir : Rosebud.');
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pertenece`
--

DROP TABLE IF EXISTS `pertenece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pertenece` (
  `nom_gen` varchar(30) NOT NULL,
  `id_peli` int NOT NULL,
  PRIMARY KEY (`nom_gen`,`id_peli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pertenece`
--

LOCK TABLES `pertenece` WRITE;
/*!40000 ALTER TABLE `pertenece` DISABLE KEYS */;
INSERT INTO `pertenece` VALUES ('accion',3),('accion',12),('accion',13),('animacion',13),('belico',2),('ciencia ficcion',6),('comedia',2),('comedia',3),('comedia',9),('comedia',12),('comedia',13),('documental',9),('drama',1),('drama',6),('drama',7),('drama',8),('drama',10),('drama',11),('drama',14),('historico',1),('musical',11),('policiaca',8),('policiaco',4),('policiaco',5),('policiaco',10),('policiaco',14),('romance',6),('romance',11),('romance',12),('suspense',4),('suspense',5),('suspense',6),('suspense',7),('suspense',8),('terror',4),('terror',5);
/*!40000 ALTER TABLE `pertenece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `peli_sum`
--

/*!50001 DROP VIEW IF EXISTS `peli_sum`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `peli_sum` AS select `pelicula`.`id_peli` AS `id_peli`,`pelicula`.`titulo_peli` AS `titulo_peli`,`pelicula`.`pais_peli` AS `pais_peli`,`pelicula`.`festreno_peli` AS `festreno_peli` from `pelicula` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-02  0:23:02
