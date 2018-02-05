CREATE DATABASE  IF NOT EXISTS `roadcake` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `roadcake`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: roadcake
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

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
-- Table structure for table `classe_projeto`
--

DROP TABLE IF EXISTS `classe_projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classe_projeto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `caracteristicas` varchar(45) NOT NULL,
  `criterio_clas_tecnica` varchar(45) NOT NULL,
  `relevo` varchar(45) NOT NULL,
  `velocidade_projeto` double NOT NULL,
  `velocidade_diretriz_min` double NOT NULL,
  `dist_min_visibilidade_parada_min_d` int(11) NOT NULL,
  `dist_min_visibilidade_parada_min_a` int(11) NOT NULL,
  `dist_min_visibilidade_ultrapassagem` int(11) NOT NULL,
  `raio_minimo_superelevacao_max` int(11) NOT NULL,
  `superelevacao_maxima` int(11) NOT NULL,
  `rampa_maxima` int(11) NOT NULL,
  `k_curva_convexa_min_d` int(11) NOT NULL,
  `k_curva_convexa_min_a` int(11) NOT NULL,
  `k_curva_concava_min_d` int(11) NOT NULL,
  `k_curva_concava_min_a` int(11) NOT NULL,
  `largura_faixa_transito` int(11) NOT NULL,
  `largura_acostamento_externo_min_d` int(11) NOT NULL,
  `largura_acostamento_externo_min_a` int(11) NOT NULL,
  `largura_acostamento_interno_duas_fx_min` int(11) NOT NULL,
  `largura_acostamento_interno_tres_fx_min` int(11) NOT NULL,
  `largura_acostamento_interno_quatro_fx_min` int(11) NOT NULL,
  `largura_acostamento_interno_duas_fx_max` int(11) NOT NULL,
  `largura_acostamento_interno_tres_fx_max` int(11) NOT NULL,
  `largura_acostamento_interno_quatro_fx_max` int(11) NOT NULL,
  `gabarito_vertical_min_d` int(11) NOT NULL,
  `gabarito_vertical_min_a` int(11) NOT NULL,
  `afastamento_min_borda_acost_obstaculos_cont` int(11) NOT NULL,
  `afastamento_min_borda_acost_obstaculos_iso` int(11) NOT NULL,
  `largura_cant_central_min_normal` int(11) NOT NULL,
  `largura_cant_central_min_absoluto` int(11) NOT NULL,
  `largura_cant_central_min_desejavel` int(11) NOT NULL,
  `largura_cant_central_max_desejavel` int(11) NOT NULL,
  `largura_cant_central_max_absoluto` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe_projeto`
--

LOCK TABLES `classe_projeto` WRITE;
/*!40000 ALTER TABLE `classe_projeto` DISABLE KEYS */;
INSERT INTO `classe_projeto` VALUES (1,'0','Via Expressa - Controle Total de Acessos','Decisão Administrativa','Plano',120,120,310,205,0,540,10,3,233,102,80,50,4,0,4,1,3,3,1,3,3,0,6,1,2,6,3,10,18,7);
/*!40000 ALTER TABLE `classe_projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordenada`
--

DROP TABLE IF EXISTS `coordenada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coordenada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordenada`
--

LOCK TABLES `coordenada` WRITE;
/*!40000 ALTER TABLE `coordenada` DISABLE KEYS */;
INSERT INTO `coordenada` VALUES (1,35.12676,123.3432,NULL,NULL,NULL),(2,12.35344,115.423432,'2018-02-05 18:57:41','2018-02-05 19:04:44',NULL),(3,36.45565,122.453454,'2018-02-05 18:59:36','2018-02-05 18:59:36',NULL),(4,32.45565,122.73454,'2018-02-05 18:59:50','2018-02-05 18:59:50','2018-02-05 19:07:49');
/*!40000 ALTER TABLE `coordenada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curva_horizontal`
--

DROP TABLE IF EXISTS `curva_horizontal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curva_horizontal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `raio` double DEFAULT NULL,
  `superelevacao` double DEFAULT NULL,
  `lc` double DEFAULT NULL,
  `transicao` tinyint(4) DEFAULT NULL,
  `projeto_id` int(11) NOT NULL,
  `trecho_inicial_id` int(11) NOT NULL,
  `trecho_final_id` int(11) NOT NULL,
  `estaca_pc_id` int(11) DEFAULT NULL,
  `estaca_pt_id` int(11) DEFAULT NULL,
  `estaca_ts_id` int(11) DEFAULT NULL,
  `estaca_sc_id` int(11) DEFAULT NULL,
  `estaca_cs_id` int(11) DEFAULT NULL,
  `estaca_st_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_curva_horizontal_projeto1_idx` (`projeto_id`),
  KEY `fk_curva_horizontal_trecho1_idx` (`trecho_inicial_id`),
  KEY `fk_curva_horizontal_trecho2_idx` (`trecho_final_id`),
  KEY `fk_curva_horizontal_estaca1_idx` (`estaca_pc_id`),
  KEY `fk_curva_horizontal_estaca2_idx` (`estaca_pt_id`),
  KEY `fk_curva_horizontal_estaca3_idx` (`estaca_ts_id`),
  KEY `fk_curva_horizontal_estaca4_idx` (`estaca_sc_id`),
  KEY `fk_curva_horizontal_estaca5_idx` (`estaca_cs_id`),
  KEY `fk_curva_horizontal_estaca6_idx` (`estaca_st_id`),
  CONSTRAINT `fk_curva_horizontal_estaca1` FOREIGN KEY (`estaca_pc_id`) REFERENCES `estaca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curva_horizontal_estaca2` FOREIGN KEY (`estaca_pt_id`) REFERENCES `estaca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curva_horizontal_estaca3` FOREIGN KEY (`estaca_ts_id`) REFERENCES `estaca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curva_horizontal_estaca4` FOREIGN KEY (`estaca_sc_id`) REFERENCES `estaca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curva_horizontal_estaca5` FOREIGN KEY (`estaca_cs_id`) REFERENCES `estaca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curva_horizontal_estaca6` FOREIGN KEY (`estaca_st_id`) REFERENCES `estaca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curva_horizontal_projeto1` FOREIGN KEY (`projeto_id`) REFERENCES `projeto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curva_horizontal_trecho1` FOREIGN KEY (`trecho_inicial_id`) REFERENCES `trecho` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curva_horizontal_trecho2` FOREIGN KEY (`trecho_final_id`) REFERENCES `trecho` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curva_horizontal`
--

LOCK TABLES `curva_horizontal` WRITE;
/*!40000 ALTER TABLE `curva_horizontal` DISABLE KEYS */;
/*!40000 ALTER TABLE `curva_horizontal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curva_vertical`
--

DROP TABLE IF EXISTS `curva_vertical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curva_vertical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `projeto_id` int(11) NOT NULL,
  `ponto_notavel_verical_id` int(11) NOT NULL,
  `estaca_pcv_id` int(11) NOT NULL,
  `estaca_piv_id` int(11) NOT NULL,
  `estaca_ptv_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_curva_vertical_projeto1_idx` (`projeto_id`),
  KEY `fk_curva_vertical_ponto_notavel_verical1_idx` (`ponto_notavel_verical_id`),
  KEY `fk_curva_vertical_estaca1_idx` (`estaca_pcv_id`),
  KEY `fk_curva_vertical_estaca2_idx` (`estaca_piv_id`),
  KEY `fk_curva_vertical_estaca3_idx` (`estaca_ptv_id`),
  CONSTRAINT `fk_curva_vertical_estaca1` FOREIGN KEY (`estaca_pcv_id`) REFERENCES `estaca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curva_vertical_estaca2` FOREIGN KEY (`estaca_piv_id`) REFERENCES `estaca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curva_vertical_estaca3` FOREIGN KEY (`estaca_ptv_id`) REFERENCES `estaca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curva_vertical_ponto_notavel_verical1` FOREIGN KEY (`ponto_notavel_verical_id`) REFERENCES `ponto_notavel_vertical` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curva_vertical_projeto1` FOREIGN KEY (`projeto_id`) REFERENCES `projeto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curva_vertical`
--

LOCK TABLES `curva_vertical` WRITE;
/*!40000 ALTER TABLE `curva_vertical` DISABLE KEYS */;
/*!40000 ALTER TABLE `curva_vertical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estaca`
--

DROP TABLE IF EXISTS `estaca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estaca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `intermediario` double NOT NULL,
  `relatorio` tinyint(4) DEFAULT '0',
  `coordenada_id` int(11) NOT NULL,
  `projeto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_estaca_coordenada1_idx` (`coordenada_id`),
  KEY `fk_estaca_projeto1_idx` (`projeto_id`),
  CONSTRAINT `fk_estaca_coordenada1` FOREIGN KEY (`coordenada_id`) REFERENCES `coordenada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_estaca_projeto1` FOREIGN KEY (`projeto_id`) REFERENCES `projeto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estaca`
--

LOCK TABLES `estaca` WRITE;
/*!40000 ALTER TABLE `estaca` DISABLE KEYS */;
/*!40000 ALTER TABLE `estaca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ponto_notavel_horizontal`
--

DROP TABLE IF EXISTS `ponto_notavel_horizontal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ponto_notavel_horizontal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `coordenada_id` int(11) NOT NULL,
  `projeto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ponto_notavel_horizontal_coordenada_idx` (`coordenada_id`),
  KEY `fk_ponto_notavel_horizontal_projeto1_idx` (`projeto_id`),
  CONSTRAINT `fk_ponto_notavel_horizontal_coordenada` FOREIGN KEY (`coordenada_id`) REFERENCES `coordenada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ponto_notavel_horizontal_projeto1` FOREIGN KEY (`projeto_id`) REFERENCES `projeto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ponto_notavel_horizontal`
--

LOCK TABLES `ponto_notavel_horizontal` WRITE;
/*!40000 ALTER TABLE `ponto_notavel_horizontal` DISABLE KEYS */;
/*!40000 ALTER TABLE `ponto_notavel_horizontal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ponto_notavel_vertical`
--

DROP TABLE IF EXISTS `ponto_notavel_vertical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ponto_notavel_vertical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `coordenada_id` int(11) NOT NULL,
  `estaca_id` int(11) NOT NULL,
  `projeto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ponto_notavel_verical_coordenada1_idx` (`coordenada_id`),
  KEY `fk_ponto_notavel_verical_estaca1_idx` (`estaca_id`),
  KEY `fk_ponto_notavel_verical_projeto1_idx` (`projeto_id`),
  CONSTRAINT `fk_ponto_notavel_verical_coordenada1` FOREIGN KEY (`coordenada_id`) REFERENCES `coordenada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ponto_notavel_verical_estaca1` FOREIGN KEY (`estaca_id`) REFERENCES `estaca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ponto_notavel_verical_projeto1` FOREIGN KEY (`projeto_id`) REFERENCES `projeto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ponto_notavel_vertical`
--

LOCK TABLES `ponto_notavel_vertical` WRITE;
/*!40000 ALTER TABLE `ponto_notavel_vertical` DISABLE KEYS */;
/*!40000 ALTER TABLE `ponto_notavel_vertical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto`
--

DROP TABLE IF EXISTS `projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projeto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `mapa_rederizado` tinyint(4) DEFAULT '0',
  `estacas_geradas` tinyint(4) DEFAULT '0',
  `classe_projeto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_projeto_classe_projeto1_idx` (`classe_projeto_id`),
  CONSTRAINT `fk_projeto_classe_projeto1` FOREIGN KEY (`classe_projeto_id`) REFERENCES `classe_projeto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto`
--

LOCK TABLES `projeto` WRITE;
/*!40000 ALTER TABLE `projeto` DISABLE KEYS */;
INSERT INTO `projeto` VALUES (1,'Projeto de Teste',0,0,1);
/*!40000 ALTER TABLE `projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trecho`
--

DROP TABLE IF EXISTS `trecho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trecho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `ponto_inicial_id` int(11) NOT NULL,
  `ponto_final_id` int(11) NOT NULL,
  `estaca_inicial_id` int(11) NOT NULL,
  `estaca_final_id` int(11) NOT NULL,
  `projeto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_trecho_ponto_notavel_horizontal1_idx` (`ponto_inicial_id`),
  KEY `fk_trecho_ponto_notavel_horizontal2_idx` (`ponto_final_id`),
  KEY `fk_trecho_estaca1_idx` (`estaca_inicial_id`),
  KEY `fk_trecho_estaca2_idx` (`estaca_final_id`),
  KEY `fk_trecho_projeto1_idx` (`projeto_id`),
  CONSTRAINT `fk_trecho_estaca1` FOREIGN KEY (`estaca_inicial_id`) REFERENCES `estaca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trecho_estaca2` FOREIGN KEY (`estaca_final_id`) REFERENCES `estaca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trecho_ponto_notavel_horizontal1` FOREIGN KEY (`ponto_inicial_id`) REFERENCES `ponto_notavel_horizontal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trecho_ponto_notavel_horizontal2` FOREIGN KEY (`ponto_final_id`) REFERENCES `ponto_notavel_horizontal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_trecho_projeto1` FOREIGN KEY (`projeto_id`) REFERENCES `projeto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trecho`
--

LOCK TABLES `trecho` WRITE;
/*!40000 ALTER TABLE `trecho` DISABLE KEYS */;
/*!40000 ALTER TABLE `trecho` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-05 17:22:51
