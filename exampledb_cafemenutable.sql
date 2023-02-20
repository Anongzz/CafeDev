-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: exampledb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `cafemenutable`
--

DROP TABLE IF EXISTS `cafemenutable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafemenutable` (
  `drinkType` varchar(20) DEFAULT NULL,
  `drinkName` varchar(20) DEFAULT NULL,
  `drinkPrice` int DEFAULT NULL,
  `drinkIMG` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafemenutable`
--

LOCK TABLES `cafemenutable` WRITE;
/*!40000 ALTER TABLE `cafemenutable` DISABLE KEYS */;
INSERT INTO `cafemenutable` VALUES ('coffee','아메리카노',2000,'americano.JPG'),('coffee','카페라떼',2900,'cafelatte.JPG'),('coffee','바닐라라떼',3400,'banillalatte.JPG'),('coffee','카페모카',3900,'cafemoca_ice.JPG'),('coffee','카푸치노',2900,'cappuccino_ice.JPG'),('coffee','카라멜 마끼아또',3700,'caramelmacchiato.JPG'),('coffee','콜드브루라떼',4000,'clodbrewlatte_ice.JPG'),('coffee','민트카페모카',4500,'mintcafemoca.JPG'),('coffee','티라미수라떼',3900,'tiramisulatte.JPG'),('coffee','큐브라떼',4200,'cubelatte.JPG'),('ade','초코바나나주스',4500,'chocobanana_juice.JPG'),('ade','체리콕',4500,'cherry_coke.JPG'),('ade','자몽에이드',4500,'grapefruitade.JPG'),('ade','청포도에이드',4500,'greengrape_ade.JPG'),('ade','레모네이드',4500,'lemonade.JPG'),('ade','딸기바나나주스',4500,'strawberrybanana_juice.JPG'),('smoothie','쿠키프라페',3900,'cookie_frappe.JPG'),('smoothie','그린티프라페',3900,'greentea_frappe.JPG'),('smoothie','망고요거트스무디',3900,'mangoyogurt_smoothie.JPG'),('smoothie','민트프라페',3900,'strawberrycookie_frappe.JPG'),('smoothie','요거트스무디',3900,'choco_frappe.JPG'),('smoothie','쿠키프라페',3900,'plainyogurt_smoothie.JPG'),('latte','그린티라떼',3500,'greentea_latte.JPG'),('latte','밀크티라떼',3700,'milktea_latte.JPG'),('latte','딸기라떼',3700,'strawberry_latte.JPG'),('latte','아이스초코',3200,'icechoco.JPG');
/*!40000 ALTER TABLE `cafemenutable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-20 21:48:56
