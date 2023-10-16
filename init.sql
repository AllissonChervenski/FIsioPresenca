CREATE DATABASE  IF NOT EXISTS `cerestdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cerestdb`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: cerestdb
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `agdanova`
--

DROP TABLE IF EXISTS `agdanova`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agdanova` (
  `cod` int unsigned NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL DEFAULT '0000-00-00',
  `evento` varchar(245) NOT NULL DEFAULT '',
  `hora` varchar(45) NOT NULL DEFAULT '',
  `cor` varchar(45) NOT NULL DEFAULT '',
  `tipo` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agdanova`
--

LOCK TABLES `agdanova` WRITE;
/*!40000 ALTER TABLE `agdanova` DISABLE KEYS */;
/*!40000 ALTER TABLE `agdanova` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agenda` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `EVENTO` varchar(400) NOT NULL,
  `DATA` varchar(50) NOT NULL,
  `HORA` varchar(50) NOT NULL,
  `DESCRICAO` varchar(400) NOT NULL,
  `RESPONSAVEL` varchar(100) NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agendadia`
--

DROP TABLE IF EXISTS `agendadia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agendadia` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `data` varchar(20) NOT NULL,
  `texto` text NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendadia`
--

LOCK TABLES `agendadia` WRITE;
/*!40000 ALTER TABLE `agendadia` DISABLE KEYS */;
/*!40000 ALTER TABLE `agendadia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agendapac`
--

DROP TABLE IF EXISTS `agendapac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agendapac` (
  `codpac` varchar(20) NOT NULL,
  `tipoagd` int NOT NULL,
  `diasem` int NOT NULL,
  `data` varchar(20) NOT NULL,
  `area` int NOT NULL,
  `ativo` int NOT NULL,
  `profissional` varchar(60) NOT NULL,
  `horario` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendapac`
--

LOCK TABLES `agendapac` WRITE;
/*!40000 ALTER TABLE `agendapac` DISABLE KEYS */;
/*!40000 ALTER TABLE `agendapac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agravos`
--

DROP TABLE IF EXISTS `agravos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agravos` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO` text NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=626 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agravos`
--

LOCK TABLES `agravos` WRITE;
/*!40000 ALTER TABLE `agravos` DISABLE KEYS */;
/*!40000 ALTER TABLE `agravos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anual_temp`
--

DROP TABLE IF EXISTS `anual_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anual_temp` (
  `Codigo` varchar(50) NOT NULL,
  `Descricao` varchar(500) NOT NULL,
  `Jan` varchar(50) NOT NULL,
  `Fev` varchar(50) NOT NULL,
  `Mar` varchar(50) NOT NULL,
  `Abr` varchar(50) NOT NULL,
  `Mai` varchar(50) NOT NULL,
  `Jun` varchar(50) NOT NULL,
  `Jul` varchar(50) NOT NULL,
  `Ago` varchar(50) NOT NULL,
  `Set` varchar(50) NOT NULL,
  `Out` varchar(50) NOT NULL,
  `Nov` varchar(50) NOT NULL,
  `Dez` varchar(50) NOT NULL,
  `Total` varchar(50) NOT NULL,
  `ANO` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anual_temp`
--

LOCK TABLES `anual_temp` WRITE;
/*!40000 ALTER TABLE `anual_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `anual_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anualaprovados_temp`
--

DROP TABLE IF EXISTS `anualaprovados_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anualaprovados_temp` (
  `Codigo` varchar(50) NOT NULL,
  `Descricao` varchar(500) NOT NULL,
  `Jan` varchar(50) NOT NULL,
  `Fev` varchar(50) NOT NULL,
  `Mar` varchar(50) NOT NULL,
  `Abr` varchar(50) NOT NULL,
  `Mai` varchar(50) NOT NULL,
  `Jun` varchar(50) NOT NULL,
  `Jul` varchar(50) NOT NULL,
  `Ago` varchar(50) NOT NULL,
  `Set` varchar(50) NOT NULL,
  `Out` varchar(50) NOT NULL,
  `Nov` varchar(50) NOT NULL,
  `Dez` varchar(50) NOT NULL,
  `Total` varchar(50) NOT NULL,
  `ANO` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anualaprovados_temp`
--

LOCK TABLES `anualaprovados_temp` WRITE;
/*!40000 ALTER TABLE `anualaprovados_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `anualaprovados_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anualefetuadosaprovados_temp`
--

DROP TABLE IF EXISTS `anualefetuadosaprovados_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anualefetuadosaprovados_temp` (
  `Codigo` varchar(50) NOT NULL,
  `Descricao` varchar(500) NOT NULL,
  `Jan` varchar(50) NOT NULL,
  `Fev` varchar(50) NOT NULL,
  `Mar` varchar(50) NOT NULL,
  `Abr` varchar(50) NOT NULL,
  `Mai` varchar(50) NOT NULL,
  `Jun` varchar(50) NOT NULL,
  `Jul` varchar(50) NOT NULL,
  `Ago` varchar(50) NOT NULL,
  `Set` varchar(50) NOT NULL,
  `Out` varchar(50) NOT NULL,
  `Nov` varchar(50) NOT NULL,
  `Dez` varchar(50) NOT NULL,
  `Total` varchar(50) NOT NULL,
  `ANO` varchar(11) NOT NULL,
  `efetuados` int NOT NULL,
  `aprovados` int NOT NULL,
  `Diferenca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anualefetuadosaprovados_temp`
--

LOCK TABLES `anualefetuadosaprovados_temp` WRITE;
/*!40000 ALTER TABLE `anualefetuadosaprovados_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `anualefetuadosaprovados_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(40) NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arquivos_backup`
--

DROP TABLE IF EXISTS `arquivos_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arquivos_backup` (
  `codpc` int NOT NULL,
  `hashfile` int NOT NULL,
  `nome` varchar(500) NOT NULL,
  `data` varchar(20) NOT NULL,
  `atual` bigint NOT NULL,
  KEY `codpc` (`codpc`,`hashfile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arquivos_backup`
--

LOCK TABLES `arquivos_backup` WRITE;
/*!40000 ALTER TABLE `arquivos_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `arquivos_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atdporemp_temp`
--

DROP TABLE IF EXISTS `atdporemp_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atdporemp_temp` (
  `Empresa` varchar(200) NOT NULL,
  `Total` int NOT NULL,
  `Ano` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atdporemp_temp`
--

LOCK TABLES `atdporemp_temp` WRITE;
/*!40000 ALTER TABLE `atdporemp_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `atdporemp_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atend_temp`
--

DROP TABLE IF EXISTS `atend_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atend_temp` (
  `Atendimento` varchar(50) NOT NULL,
  `Quantidade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atend_temp`
--

LOCK TABLES `atend_temp` WRITE;
/*!40000 ALTER TABLE `atend_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `atend_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atendimento`
--

DROP TABLE IF EXISTS `atendimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atendimento` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `CODPAC` text NOT NULL,
  `DATA` date NOT NULL,
  `DIAGNOSTICO` int NOT NULL,
  `PROFISSAO` int NOT NULL,
  `EMPRESA` int NOT NULL,
  `DESCRICAO` int NOT NULL,
  `ACIDENTE` int NOT NULL,
  PRIMARY KEY (`COD`),
  KEY `index_codpac` (`CODPAC`(100))
) ENGINE=InnoDB AUTO_INCREMENT=1023 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atendimento`
--

LOCK TABLES `atendimento` WRITE;
/*!40000 ALTER TABLE `atendimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `atendimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atendimento_temp`
--

DROP TABLE IF EXISTS `atendimento_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atendimento_temp` (
  `profissional` varchar(100) NOT NULL DEFAULT '',
  `data` varchar(45) DEFAULT NULL,
  `procedimento` varchar(45) DEFAULT NULL,
  `cns` varchar(45) DEFAULT NULL,
  `paciente` varchar(245) DEFAULT NULL,
  `cid` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atendimento_temp`
--

LOCK TABLES `atendimento_temp` WRITE;
/*!40000 ALTER TABLE `atendimento_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `atendimento_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atestado`
--

DROP TABLE IF EXISTS `atestado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atestado` (
  `COD` int NOT NULL,
  `TEXTO` text NOT NULL,
  `PROFISSIONAL` text NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atestado`
--

LOCK TABLES `atestado` WRITE;
/*!40000 ALTER TABLE `atestado` DISABLE KEYS */;
/*!40000 ALTER TABLE `atestado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atestados`
--

DROP TABLE IF EXISTS `atestados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atestados` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `TEXTO` text NOT NULL,
  `PROFISSIONAL` text NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atestados`
--

LOCK TABLES `atestados` WRITE;
/*!40000 ALTER TABLE `atestados` DISABLE KEYS */;
/*!40000 ALTER TABLE `atestados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autorizacao`
--

DROP TABLE IF EXISTS `autorizacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autorizacao` (
  `numaut` int NOT NULL,
  `numpedido` int NOT NULL,
  `numemp` int NOT NULL,
  `valor` int NOT NULL,
  PRIMARY KEY (`numaut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autorizacao`
--

LOCK TABLES `autorizacao` WRITE;
/*!40000 ALTER TABLE `autorizacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `autorizacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd`
--

DROP TABLE IF EXISTS `cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cd` (
  `COD` varchar(20) NOT NULL,
  `TITULO` varchar(100) NOT NULL,
  `CONTEUDO` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd`
--

LOCK TABLES `cd` WRITE;
/*!40000 ALTER TABLE `cd` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cerest`
--

DROP TABLE IF EXISTS `cerest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cerest` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `telefone` varchar(200) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cerest`
--

LOCK TABLES `cerest` WRITE;
/*!40000 ALTER TABLE `cerest` DISABLE KEYS */;
/*!40000 ALTER TABLE `cerest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificado_temp`
--

DROP TABLE IF EXISTS `certificado_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificado_temp` (
  `nome` varchar(200) NOT NULL DEFAULT '',
  `livro` varchar(45) NOT NULL DEFAULT '',
  `folha` varchar(45) NOT NULL DEFAULT '',
  `porc` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificado_temp`
--

LOCK TABLES `certificado_temp` WRITE;
/*!40000 ALTER TABLE `certificado_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificado_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgsduplicado`
--

DROP TABLE IF EXISTS `cgsduplicado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cgsduplicado` (
  `codpac` varchar(10) NOT NULL,
  `cgs` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgsduplicado`
--

LOCK TABLES `cgsduplicado` WRITE;
/*!40000 ALTER TABLE `cgsduplicado` DISABLE KEYS */;
/*!40000 ALTER TABLE `cgsduplicado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cid`
--

DROP TABLE IF EXISTS `cid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cid` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `CODIGO` text NOT NULL,
  `DESCRICAO` text NOT NULL,
  `PROCEDIMENTO` text NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=15600 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cid`
--

LOCK TABLES `cid` WRITE;
/*!40000 ALTER TABLE `cid` DISABLE KEYS */;
/*!40000 ALTER TABLE `cid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `NOME` text NOT NULL,
  `UF` text NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=468 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidades` (
  `cod` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(245) NOT NULL DEFAULT '',
  `estado` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=10582 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigos`
--

DROP TABLE IF EXISTS `codigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codigos` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `NOME` text NOT NULL,
  `DESCRICAO` text,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigos`
--

LOCK TABLES `codigos` WRITE;
/*!40000 ALTER TABLE `codigos` DISABLE KEYS */;
/*!40000 ALTER TABLE `codigos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigosareas`
--

DROP TABLE IF EXISTS `codigosareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codigosareas` (
  `codigo` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(45) NOT NULL DEFAULT '',
  `nome` varchar(145) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigosareas`
--

LOCK TABLES `codigosareas` WRITE;
/*!40000 ALTER TABLE `codigosareas` DISABLE KEYS */;
/*!40000 ALTER TABLE `codigosareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computadores`
--

DROP TABLE IF EXISTS `computadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computadores` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computadores`
--

LOCK TABLES `computadores` WRITE;
/*!40000 ALTER TABLE `computadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `computadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confirmation`
--

DROP TABLE IF EXISTS `confirmation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `confirmation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `arrival_time` datetime NOT NULL,
  `confirmation_status` tinyint NOT NULL,
  `patientCodigo` varchar(10) DEFAULT NULL,
  `codigo_procedimento` varchar(255) NOT NULL,
  `motivo_atendimento` varchar(255) NOT NULL,
  `tratamento` varchar(255) NOT NULL,
  `carater_atendimento` varchar(255) NOT NULL,
  `cid` varchar(255) NOT NULL,
  `diagnostico` varchar(255) NOT NULL,
  `nome_unidade` varchar(255) NOT NULL,
  `endereco_unidade` varchar(255) NOT NULL,
  `municipio_unidade` varchar(255) NOT NULL,
  `uf_unidade` varchar(255) NOT NULL,
  `professional_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_51cff11a0dbc3b14ec8364a9c87` (`patientCodigo`),
  KEY `FK_ccee1babe74d3aa39911936e029` (`professional_id`),
  CONSTRAINT `FK_51cff11a0dbc3b14ec8364a9c87` FOREIGN KEY (`patientCodigo`) REFERENCES `paciente` (`CODIGO`),
  CONSTRAINT `FK_ccee1babe74d3aa39911936e029` FOREIGN KEY (`professional_id`) REFERENCES `profissional` (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmation`
--

LOCK TABLES `confirmation` WRITE;
/*!40000 ALTER TABLE `confirmation` DISABLE KEYS */;
INSERT INTO `confirmation` VALUES (51,'2023-09-15 14:30:00',1,NULL,'PROC123','Consulta de rotina','Medicação prescrita','Eletivo','A00','Resfriado comum','Hospital ABC','123 Main Street','Cidade','SP',NULL),(52,'2023-10-15 14:30:00',1,NULL,'PROC124','Consulta de rotina','Medicação prescrita','Eletivo','A00','Resfriado comum','Hospital ABC','123 Main Street','Cidade','SP',NULL),(53,'2023-10-15 14:30:00',1,NULL,'PROC124','Consulta de rotina','Medicação prescrita','Eletivo','A00','Resfriado comum','Hospital ABC','123 Main Street','Cidade','SP',NULL),(54,'2023-10-15 14:30:00',1,'123','PROC124','Consulta de rotina','Medicação prescrita','Eletivo','A00','Resfriado comum','Hospital ABC','123 Main Street','Cidade','SP',NULL),(55,'2023-10-15 14:30:00',1,'123','PROC124','Consulta de rotina','Medicação prescrita','Eletivo','A00','Resfriado comum','Hospital ABC','123 Main Street','Cidade','SP',NULL),(56,'2023-10-15 14:30:00',1,'123','PROC124','Consulta de rotina','Medicação prescrita','Eletivo','A00','Resfriado comum','Hospital ABC','123 Main Street','Cidade','SP',22);
/*!40000 ALTER TABLE `confirmation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contabil_temp`
--

DROP TABLE IF EXISTS `contabil_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contabil_temp` (
  `Elemento` varchar(500) NOT NULL,
  `Jan` varchar(50) NOT NULL,
  `Fev` varchar(50) NOT NULL,
  `Mar` varchar(50) NOT NULL,
  `Abr` varchar(50) NOT NULL,
  `Mai` varchar(50) NOT NULL,
  `Jun` varchar(50) NOT NULL,
  `Jul` varchar(50) NOT NULL,
  `Ago` varchar(50) NOT NULL,
  `Set` varchar(50) NOT NULL,
  `Out` varchar(50) NOT NULL,
  `Nov` varchar(50) NOT NULL,
  `Dez` varchar(50) NOT NULL,
  `Total` varchar(50) NOT NULL,
  `ANO` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contabil_temp`
--

LOCK TABLES `contabil_temp` WRITE;
/*!40000 ALTER TABLE `contabil_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `contabil_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatos`
--

DROP TABLE IF EXISTS `contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contatos` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `NOME` text NOT NULL,
  `TELEFONE` text,
  `CELULAR` text,
  `COMERCIAL` text,
  `EMAIL` text,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=2428 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos`
--

LOCK TABLES `contatos` WRITE;
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlecarros`
--

DROP TABLE IF EXISTS `controlecarros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controlecarros` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `DATA` date NOT NULL,
  `DESTINO` varchar(250) NOT NULL,
  `EVENTO` varchar(250) NOT NULL,
  `EQUIPE` varchar(250) NOT NULL,
  `MOTORISTA` varchar(250) NOT NULL,
  `CARRO` varchar(250) NOT NULL,
  `KMSAIDA` int DEFAULT NULL,
  `KMCHEGADA` int DEFAULT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlecarros`
--

LOCK TABLES `controlecarros` WRITE;
/*!40000 ALTER TABLE `controlecarros` DISABLE KEYS */;
/*!40000 ALTER TABLE `controlecarros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diarias`
--

DROP TABLE IF EXISTS `diarias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diarias` (
  `emp` varchar(20) NOT NULL DEFAULT '',
  `nome` varchar(245) NOT NULL DEFAULT '',
  `empenhado` varchar(45) NOT NULL DEFAULT '',
  `saldo` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diarias`
--

LOCK TABLES `diarias` WRITE;
/*!40000 ALTER TABLE `diarias` DISABLE KEYS */;
/*!40000 ALTER TABLE `diarias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elementos`
--

DROP TABLE IF EXISTS `elementos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elementos` (
  `codigo` bigint NOT NULL,
  `descricao` varchar(300) NOT NULL,
  `RECURSO` int NOT NULL,
  PRIMARY KEY (`codigo`,`RECURSO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementos`
--

LOCK TABLES `elementos` WRITE;
/*!40000 ALTER TABLE `elementos` DISABLE KEYS */;
/*!40000 ALTER TABLE `elementos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empenho`
--

DROP TABLE IF EXISTS `empenho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empenho` (
  `numemp` int NOT NULL,
  `razaosocial` varchar(300) NOT NULL,
  `valoremp` float NOT NULL,
  `valorliq` float NOT NULL,
  PRIMARY KEY (`numemp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empenho`
--

LOCK TABLES `empenho` WRITE;
/*!40000 ALTER TABLE `empenho` DISABLE KEYS */;
/*!40000 ALTER TABLE `empenho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(75) NOT NULL,
  `CIDADE` varchar(75) NOT NULL,
  `ENDERECO` varchar(75) NOT NULL,
  `TELEFONE` varchar(75) NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecopac`
--

DROP TABLE IF EXISTS `enderecopac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecopac` (
  `codpac` varchar(20) NOT NULL DEFAULT '',
  `cep` varchar(45) NOT NULL DEFAULT '',
  `numero` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codpac`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecopac`
--

LOCK TABLES `enderecopac` WRITE;
/*!40000 ALTER TABLE `enderecopac` DISABLE KEYS */;
/*!40000 ALTER TABLE `enderecopac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecos` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `TITULO` varchar(400) DEFAULT NULL,
  `NOME` varchar(400) DEFAULT NULL,
  `ENDERECO` varchar(400) DEFAULT NULL,
  `BAIRRO` varchar(400) DEFAULT NULL,
  `CIDADE` varchar(400) DEFAULT NULL,
  `CEP` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enmg`
--

DROP TABLE IF EXISTS `enmg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enmg` (
  `cod` int unsigned NOT NULL AUTO_INCREMENT,
  `paciente` varchar(245) NOT NULL DEFAULT '',
  `datamarcacao` varchar(45) DEFAULT NULL,
  `tipoexame` varchar(45) NOT NULL DEFAULT '',
  `nota` varchar(45) DEFAULT NULL,
  `datapagamento` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enmg`
--

LOCK TABLES `enmg` WRITE;
/*!40000 ALTER TABLE `enmg` DISABLE KEYS */;
/*!40000 ALTER TABLE `enmg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esquema_exames`
--

DROP TABLE IF EXISTS `esquema_exames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esquema_exames` (
  `nome` varchar(200) NOT NULL DEFAULT '',
  `exame` varchar(245) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esquema_exames`
--

LOCK TABLES `esquema_exames` WRITE;
/*!40000 ALTER TABLE `esquema_exames` DISABLE KEYS */;
/*!40000 ALTER TABLE `esquema_exames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `cod` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(145) NOT NULL DEFAULT '',
  `sigla` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiquetas2_temp`
--

DROP TABLE IF EXISTS `etiquetas2_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etiquetas2_temp` (
  `COD` varchar(20) NOT NULL,
  `NOME` varchar(500) NOT NULL,
  `descricao` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiquetas2_temp`
--

LOCK TABLES `etiquetas2_temp` WRITE;
/*!40000 ALTER TABLE `etiquetas2_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `etiquetas2_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiquetas_cartaz`
--

DROP TABLE IF EXISTS `etiquetas_cartaz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etiquetas_cartaz` (
  `TITULO` varchar(400) NOT NULL,
  `NOME` varchar(400) NOT NULL,
  `ENDEREÇO` varchar(400) NOT NULL,
  `BAIRRO` varchar(400) NOT NULL,
  `CIDADE` varchar(400) NOT NULL,
  `ESTADO` varchar(300) NOT NULL,
  `CEP` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiquetas_cartaz`
--

LOCK TABLES `etiquetas_cartaz` WRITE;
/*!40000 ALTER TABLE `etiquetas_cartaz` DISABLE KEYS */;
/*!40000 ALTER TABLE `etiquetas_cartaz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiquetas_envelope`
--

DROP TABLE IF EXISTS `etiquetas_envelope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etiquetas_envelope` (
  `TITULO` varchar(400) NOT NULL,
  `NOME` varchar(400) NOT NULL,
  `ENDEREÇO` varchar(400) NOT NULL,
  `BAIRRO` varchar(400) NOT NULL,
  `CIDADE` varchar(400) NOT NULL,
  `CEP` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiquetas_envelope`
--

LOCK TABLES `etiquetas_envelope` WRITE;
/*!40000 ALTER TABLE `etiquetas_envelope` DISABLE KEYS */;
/*!40000 ALTER TABLE `etiquetas_envelope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiquetas_temp`
--

DROP TABLE IF EXISTS `etiquetas_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etiquetas_temp` (
  `COD` varchar(20) NOT NULL,
  `NOME` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiquetas_temp`
--

LOCK TABLES `etiquetas_temp` WRITE;
/*!40000 ALTER TABLE `etiquetas_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `etiquetas_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `cod` int unsigned NOT NULL AUTO_INCREMENT,
  `nomeevento` varchar(145) NOT NULL DEFAULT '',
  `data` varchar(145) NOT NULL DEFAULT '',
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exame`
--

DROP TABLE IF EXISTS `exame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exame` (
  `nome` varchar(200) NOT NULL DEFAULT '',
  `idade` varchar(45) NOT NULL DEFAULT '',
  `sexo` varchar(45) NOT NULL DEFAULT '',
  `exame1` varchar(245) NOT NULL DEFAULT '',
  `exame2` varchar(245) NOT NULL DEFAULT '',
  `exame3` varchar(245) NOT NULL DEFAULT '',
  `exame4` varchar(245) NOT NULL DEFAULT '',
  `exame5` varchar(245) NOT NULL DEFAULT '',
  `exame6` varchar(245) NOT NULL DEFAULT '',
  `exame7` varchar(245) NOT NULL DEFAULT '',
  `exame8` varchar(245) NOT NULL DEFAULT '',
  `exame9` varchar(245) NOT NULL DEFAULT '',
  `exame10` varchar(245) NOT NULL DEFAULT '',
  `exame11` varchar(245) NOT NULL DEFAULT '',
  `exame12` varchar(245) NOT NULL DEFAULT '',
  `exame13` varchar(245) NOT NULL DEFAULT '',
  `exame14` varchar(245) NOT NULL DEFAULT '',
  `data` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exame`
--

LOCK TABLES `exame` WRITE;
/*!40000 ALTER TABLE `exame` DISABLE KEYS */;
/*!40000 ALTER TABLE `exame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examedesc`
--

DROP TABLE IF EXISTS `examedesc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examedesc` (
  `nome` varchar(245) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examedesc`
--

LOCK TABLES `examedesc` WRITE;
/*!40000 ALTER TABLE `examedesc` DISABLE KEYS */;
/*!40000 ALTER TABLE `examedesc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extintor`
--

DROP TABLE IF EXISTS `extintor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extintor` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `MARCA` varchar(100) NOT NULL,
  `TIPO` varchar(10) NOT NULL,
  `CAPACIDADE` varchar(11) NOT NULL,
  `LOCALIZACAO` varchar(100) NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extintor`
--

LOCK TABLES `extintor` WRITE;
/*!40000 ALTER TABLE `extintor` DISABLE KEYS */;
/*!40000 ALTER TABLE `extintor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faa`
--

DROP TABLE IF EXISTS `faa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faa` (
  `nomePac` varchar(40) NOT NULL DEFAULT '',
  `cartao` varchar(20) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `datanasc` varchar(20) NOT NULL,
  `endereco` varchar(140) NOT NULL DEFAULT '',
  `cidade` varchar(30) NOT NULL,
  `tipo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faa`
--

LOCK TABLES `faa` WRITE;
/*!40000 ALTER TABLE `faa` DISABLE KEYS */;
/*!40000 ALTER TABLE `faa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faacont`
--

DROP TABLE IF EXISTS `faacont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faacont` (
  `nomepac` varchar(100) NOT NULL DEFAULT '',
  `cartao` varchar(45) NOT NULL DEFAULT '',
  `sexo` varchar(45) NOT NULL DEFAULT '',
  `datanasc` varchar(45) NOT NULL DEFAULT '',
  `endereco` varchar(145) NOT NULL DEFAULT '',
  `cidade` varchar(45) NOT NULL DEFAULT '',
  `tipo` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faacont`
--

LOCK TABLES `faacont` WRITE;
/*!40000 ALTER TABLE `faacont` DISABLE KEYS */;
/*!40000 ALTER TABLE `faacont` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faacont_temp`
--

DROP TABLE IF EXISTS `faacont_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faacont_temp` (
  `nomepac` varchar(100) NOT NULL DEFAULT '',
  `cartao` varchar(45) NOT NULL DEFAULT '',
  `sexo` varchar(45) NOT NULL DEFAULT '',
  `datanasc` varchar(45) NOT NULL DEFAULT '',
  `endereco` varchar(145) NOT NULL DEFAULT '',
  `cidade` varchar(45) NOT NULL DEFAULT '',
  `tipo` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faacont_temp`
--

LOCK TABLES `faacont_temp` WRITE;
/*!40000 ALTER TABLE `faacont_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `faacont_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graficoaprovados`
--

DROP TABLE IF EXISTS `graficoaprovados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `graficoaprovados` (
  `Codigo` varchar(20) NOT NULL,
  `Quantidade` int NOT NULL,
  `Tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graficoaprovados`
--

LOCK TABLES `graficoaprovados` WRITE;
/*!40000 ALTER TABLE `graficoaprovados` DISABLE KEYS */;
/*!40000 ALTER TABLE `graficoaprovados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupoave`
--

DROP TABLE IF EXISTS `grupoave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupoave` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(200) NOT NULL,
  `DATANASCIMENTO` varchar(20) NOT NULL,
  `ENDERECO` varchar(200) NOT NULL,
  `TELEFONE` varchar(100) NOT NULL,
  `TELEFONE2` varchar(100) NOT NULL,
  `TELEFONE3` varchar(100) NOT NULL,
  `CARTAOSUS` varchar(20) NOT NULL,
  `CGS` varchar(20) NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupoave`
--

LOCK TABLES `grupoave` WRITE;
/*!40000 ALTER TABLE `grupoave` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupoave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guia`
--

DROP TABLE IF EXISTS `guia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guia` (
  `COD` int NOT NULL,
  `NOME` varchar(500) NOT NULL,
  `RUA` varchar(500) NOT NULL,
  `NUMERO` varchar(500) NOT NULL,
  `COMPL` varchar(500) NOT NULL,
  `BAIRRO` varchar(500) NOT NULL,
  `CEP` varchar(20) NOT NULL,
  `FONE` varchar(30) NOT NULL,
  `FAX` varchar(30) NOT NULL,
  `PESO` varchar(10) NOT NULL,
  `CID` varchar(100) NOT NULL,
  `RAZAO` varchar(500) NOT NULL,
  `TITULO` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia`
--

LOCK TABLES `guia` WRITE;
/*!40000 ALTER TABLE `guia` DISABLE KEYS */;
/*!40000 ALTER TABLE `guia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `codpac` varchar(20) NOT NULL,
  `data` varchar(20) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `Profissional` varchar(100) NOT NULL,
  `texto` longtext NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscricoes`
--

DROP TABLE IF EXISTS `inscricoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscricoes` (
  `cod` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(145) NOT NULL DEFAULT '',
  `endereco` varchar(245) DEFAULT NULL,
  `setor` varchar(145) DEFAULT NULL,
  `email` varchar(145) DEFAULT NULL,
  `telefone` varchar(145) DEFAULT NULL,
  `cidade` varchar(145) DEFAULT NULL,
  `evento` int unsigned NOT NULL DEFAULT '0',
  `comparecimento` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=1348 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscricoes`
--

LOCK TABLES `inscricoes` WRITE;
/*!40000 ALTER TABLE `inscricoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscricoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `num` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(5000) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memorando`
--

DROP TABLE IF EXISTS `memorando`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memorando` (
  `COD` int NOT NULL,
  `DESCRICAO` text,
  `ANO` int NOT NULL,
  `ENDERECO` varchar(400) NOT NULL,
  PRIMARY KEY (`COD`,`ANO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memorando`
--

LOCK TABLES `memorando` WRITE;
/*!40000 ALTER TABLE `memorando` DISABLE KEYS */;
/*!40000 ALTER TABLE `memorando` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensal_temp`
--

DROP TABLE IF EXISTS `mensal_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensal_temp` (
  `Codigo` varchar(20) NOT NULL,
  `Descricao` varchar(200) NOT NULL,
  `01` varchar(11) NOT NULL,
  `02` varchar(11) NOT NULL,
  `03` varchar(11) NOT NULL,
  `04` varchar(11) NOT NULL,
  `05` varchar(11) NOT NULL,
  `06` varchar(11) NOT NULL,
  `07` varchar(11) NOT NULL,
  `08` varchar(11) NOT NULL,
  `09` varchar(11) NOT NULL,
  `10` varchar(11) NOT NULL,
  `11` varchar(11) NOT NULL,
  `12` varchar(11) NOT NULL,
  `13` varchar(11) NOT NULL,
  `14` varchar(11) NOT NULL,
  `15` varchar(11) NOT NULL,
  `16` varchar(11) NOT NULL,
  `17` varchar(11) NOT NULL,
  `18` varchar(11) NOT NULL,
  `19` varchar(11) NOT NULL,
  `20` varchar(11) NOT NULL,
  `21` varchar(11) NOT NULL,
  `22` varchar(11) NOT NULL,
  `23` varchar(11) NOT NULL,
  `24` varchar(11) NOT NULL,
  `25` varchar(11) NOT NULL,
  `26` varchar(11) NOT NULL,
  `27` varchar(11) NOT NULL,
  `28` varchar(11) NOT NULL,
  `29` varchar(11) NOT NULL,
  `30` varchar(11) NOT NULL,
  `31` varchar(11) NOT NULL,
  `Total` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensal_temp`
--

LOCK TABLES `mensal_temp` WRITE;
/*!40000 ALTER TABLE `mensal_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensal_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modeloatest`
--

DROP TABLE IF EXISTS `modeloatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modeloatest` (
  `cod` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL DEFAULT '',
  `texto` varchar(10045) DEFAULT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modeloatest`
--

LOCK TABLES `modeloatest` WRITE;
/*!40000 ALTER TABLE `modeloatest` DISABLE KEYS */;
/*!40000 ALTER TABLE `modeloatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocupacao`
--

DROP TABLE IF EXISTS `ocupacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocupacao` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `NOME` text NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=7494 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocupacao`
--

LOCK TABLES `ocupacao` WRITE;
/*!40000 ALTER TABLE `ocupacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `ocupacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficio`
--

DROP TABLE IF EXISTS `oficio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oficio` (
  `COD` int NOT NULL,
  `DESCRICAO` text,
  `ANO` int NOT NULL,
  `ENDERECO` varchar(400) NOT NULL,
  PRIMARY KEY (`COD`,`ANO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficio`
--

LOCK TABLES `oficio` WRITE;
/*!40000 ALTER TABLE `oficio` DISABLE KEYS */;
/*!40000 ALTER TABLE `oficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orcamento`
--

DROP TABLE IF EXISTS `orcamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orcamento` (
  `num` int NOT NULL AUTO_INCREMENT,
  `descricaoorc` varchar(700) NOT NULL,
  `data` varchar(20) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orcamento`
--

LOCK TABLES `orcamento` WRITE;
/*!40000 ALTER TABLE `orcamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `orcamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orcamentoitens`
--

DROP TABLE IF EXISTS `orcamentoitens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orcamentoitens` (
  `codorc` int NOT NULL,
  `coditem` int NOT NULL,
  `nome` varchar(200) NOT NULL,
  `descricao` varchar(10000) NOT NULL,
  PRIMARY KEY (`codorc`,`coditem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orcamentoitens`
--

LOCK TABLES `orcamentoitens` WRITE;
/*!40000 ALTER TABLE `orcamentoitens` DISABLE KEYS */;
/*!40000 ALTER TABLE `orcamentoitens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `CODIGO` varchar(10) NOT NULL,
  `NOME` text NOT NULL,
  `CARTAOSUS` text NOT NULL,
  `DATANASCIMENTO` text NOT NULL,
  `COR` text NOT NULL,
  `SEXO` text NOT NULL,
  `OCUPACAO` text NOT NULL,
  `CPF` text NOT NULL,
  `NATURALIDADE` text NOT NULL,
  `MAE` text NOT NULL,
  `TELEFONE` varchar(255) NOT NULL,
  `TELEFONE2` varchar(255) DEFAULT NULL,
  `ENDERECO` varchar(255) NOT NULL,
  `TELEFONE3` varchar(255) DEFAULT NULL,
  `CGM` varchar(255) NOT NULL,
  `SIST` varchar(255) NOT NULL,
  `PROFISSAO` varchar(255) NOT NULL,
  `obs` varchar(255) NOT NULL,
  `isActive` tinyint NOT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES ('123','João da Silva','123456789012345','1990-01-01','Branco','Masculino','Engenheiro','123.456.789-00','São Paulo','Maria da Silva','',NULL,'',NULL,'','','','',0),('J0001/23','João da Silva','1234567890123456','1990-05-20','Branca','Masculino','Engenheiro','12345678901','São Paulo','Maria da Silva','',NULL,'',NULL,'','','','',0),('J0002/23','João da Silva','1234567890123456','1990-05-20','Branca','Masculino','Engenheiro','12345678901','São Paulo','Maria da Silva','',NULL,'',NULL,'','','','',0);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `cod` int unsigned NOT NULL AUTO_INCREMENT,
  `recurso` varchar(45) NOT NULL DEFAULT '',
  `valor` decimal(10,2) NOT NULL DEFAULT '0.00',
  `solicitacao` varchar(200) DEFAULT NULL,
  `empenho` varchar(45) DEFAULT NULL,
  `credor` varchar(145) DEFAULT NULL,
  `data` date NOT NULL DEFAULT '0000-00-00',
  `tipo` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=3721 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamentos`
--

DROP TABLE IF EXISTS `pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamentos` (
  `codigo` int NOT NULL,
  `data` varchar(30) NOT NULL,
  `valor` varchar(20) NOT NULL,
  `elemento` varchar(30) NOT NULL,
  `recurso` int NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamentos`
--

LOCK TABLES `pagamentos` WRITE;
/*!40000 ALTER TABLE `pagamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pastas_backup`
--

DROP TABLE IF EXISTS `pastas_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pastas_backup` (
  `cod` int NOT NULL,
  `nome` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pastas_backup`
--

LOCK TABLES `pastas_backup` WRITE;
/*!40000 ALTER TABLE `pastas_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `pastas_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patrimonio`
--

DROP TABLE IF EXISTS `patrimonio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patrimonio` (
  `cod` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(400) NOT NULL DEFAULT '',
  `patrimonio` varchar(300) NOT NULL DEFAULT '',
  `quantidade` varchar(145) NOT NULL DEFAULT '',
  `localizacao` varchar(145) NOT NULL DEFAULT '',
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patrimonio`
--

LOCK TABLES `patrimonio` WRITE;
/*!40000 ALTER TABLE `patrimonio` DISABLE KEYS */;
/*!40000 ALTER TABLE `patrimonio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `num` int NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidomaterial`
--

DROP TABLE IF EXISTS `pedidomaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidomaterial` (
  `codpedido` int NOT NULL,
  `codmaterial` int NOT NULL,
  `numaut` int NOT NULL,
  `dotacao` int NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidomaterial`
--

LOCK TABLES `pedidomaterial` WRITE;
/*!40000 ALTER TABLE `pedidomaterial` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidomaterial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `material` varchar(200) NOT NULL,
  `descricao` varchar(50000) NOT NULL,
  `valor` varchar(100) NOT NULL,
  `pedido` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `tipoMaterial` varchar(200) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producaosus`
--

DROP TABLE IF EXISTS `producaosus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producaosus` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `PROCEDIMENTO` text NOT NULL,
  `MES` int NOT NULL,
  `ANO` int NOT NULL,
  `QUANTIDADE` varchar(10) NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=4603 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producaosus`
--

LOCK TABLES `producaosus` WRITE;
/*!40000 ALTER TABLE `producaosus` DISABLE KEYS */;
/*!40000 ALTER TABLE `producaosus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `codigo` int NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof_temp`
--

DROP TABLE IF EXISTS `prof_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prof_temp` (
  `Profissional` varchar(50) NOT NULL,
  `Quantidade` varchar(50) NOT NULL,
  `Total` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof_temp`
--

LOCK TABLES `prof_temp` WRITE;
/*!40000 ALTER TABLE `prof_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `prof_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profissionais`
--

DROP TABLE IF EXISTS `profissionais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profissionais` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(100) NOT NULL,
  `AREA` int NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=117896 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profissionais`
--

LOCK TABLES `profissionais` WRITE;
/*!40000 ALTER TABLE `profissionais` DISABLE KEYS */;
/*!40000 ALTER TABLE `profissionais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profissional`
--

DROP TABLE IF EXISTS `profissional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profissional` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) NOT NULL,
  `CBO` int NOT NULL,
  `CODIGO` text NOT NULL,
  `DESCRICAO` text NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profissional`
--

LOCK TABLES `profissional` WRITE;
/*!40000 ALTER TABLE `profissional` DISABLE KEYS */;
INSERT INTO `profissional` VALUES (22,'exemplo de nome',123456,'1','exemplo de descrição');
/*!40000 ALTER TABLE `profissional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recado`
--

DROP TABLE IF EXISTS `recado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recado` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `RECADO` varchar(2000) NOT NULL,
  `DATA` date NOT NULL,
  `REPETICAO` int NOT NULL,
  `LOCAL` varchar(20) NOT NULL,
  `TAMANHO` varchar(20) NOT NULL,
  `HOSTNAME` varchar(50) NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recado`
--

LOCK TABLES `recado` WRITE;
/*!40000 ALTER TABLE `recado` DISABLE KEYS */;
/*!40000 ALTER TABLE `recado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recarga`
--

DROP TABLE IF EXISTS `recarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recarga` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `DATA` date NOT NULL,
  `PROXIMA` date NOT NULL,
  `CODEXT` int NOT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recarga`
--

LOCK TABLES `recarga` WRITE;
/*!40000 ALTER TABLE `recarga` DISABLE KEYS */;
/*!40000 ALTER TABLE `recarga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registered_users`
--

DROP TABLE IF EXISTS `registered_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registered_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `funcao_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registered_users`
--

LOCK TABLES `registered_users` WRITE;
/*!40000 ALTER TABLE `registered_users` DISABLE KEYS */;
INSERT INTO `registered_users` VALUES (4,'mactcowski@example.com','$2a$10$xsQrlUVSiz4WbPxIfBCb/uGQeYYi3xledXPKHLNSOVxUGzry4GsoW',NULL),(5,'mactcowski@example.com','$2a$10$K5VC6pAoh.TNukn.q0VFLe2LKtUyX85Zd.mIfW5CQz4DisjXAVtsO','J0001/23');
/*!40000 ALTER TABLE `registered_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatorio_temp`
--

DROP TABLE IF EXISTS `relatorio_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relatorio_temp` (
  `titulo` varchar(100) NOT NULL DEFAULT '',
  `cpf` varchar(45) DEFAULT NULL,
  `nome` varchar(145) DEFAULT NULL,
  `convenio` varchar(45) DEFAULT NULL,
  `agencia` varchar(45) DEFAULT NULL,
  `banco` varchar(45) DEFAULT NULL,
  `conta` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `recibo` varchar(45) DEFAULT NULL,
  `data` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatorio_temp`
--

LOCK TABLES `relatorio_temp` WRITE;
/*!40000 ALTER TABLE `relatorio_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `relatorio_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatoriofaa`
--

DROP TABLE IF EXISTS `relatoriofaa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relatoriofaa` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `PROFISSIONAL` int NOT NULL,
  `PROCEDIMENTO` varchar(100) NOT NULL,
  `FAA` int NOT NULL,
  `DATA` text NOT NULL,
  `CGS` int NOT NULL,
  `PACIENTE` text NOT NULL,
  `MES` int NOT NULL,
  `ANO` int NOT NULL,
  `AREA` int NOT NULL,
  PRIMARY KEY (`COD`),
  KEY `CGS` (`CGS`),
  KEY `MES` (`MES`),
  KEY `ANO` (`ANO`),
  KEY `PROFISSIONAL` (`PROFISSIONAL`),
  KEY `FAA` (`FAA`)
) ENGINE=InnoDB AUTO_INCREMENT=44933 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatoriofaa`
--

LOCK TABLES `relatoriofaa` WRITE;
/*!40000 ALTER TABLE `relatoriofaa` DISABLE KEYS */;
/*!40000 ALTER TABLE `relatoriofaa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rina`
--

DROP TABLE IF EXISTS `rina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rina` (
  `cod` int unsigned NOT NULL AUTO_INCREMENT,
  `rina` int unsigned DEFAULT NULL,
  `nometrab` varchar(100) DEFAULT NULL,
  `datanasc` varchar(45) DEFAULT NULL,
  `idade` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `municipio_residencia` varchar(145) DEFAULT NULL,
  `cbo_pac` varchar(145) DEFAULT NULL,
  `tempo_ocup_anos` varchar(245) DEFAULT NULL,
  `tempo_ocup_meses` varchar(85) DEFAULT NULL,
  `empresa_pac` varchar(200) DEFAULT NULL,
  `municipio_trabalho` varchar(95) DEFAULT NULL,
  `data_atd` varchar(85) DEFAULT NULL,
  `cid` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=4741 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rina`
--

LOCK TABLES `rina` WRITE;
/*!40000 ALTER TABLE `rina` DISABLE KEYS */;
/*!40000 ALTER TABLE `rina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rs`
--

DROP TABLE IF EXISTS `rs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cidade` varchar(150) DEFAULT NULL,
  `logradouro` varchar(170) DEFAULT NULL,
  `bairro` varchar(72) DEFAULT NULL,
  `cep` varchar(9) NOT NULL,
  `tp_logradouro` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_log_loc1` (`cidade`)
) ENGINE=MyISAM AUTO_INCREMENT=47112 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rs`
--

LOCK TABLES `rs` WRITE;
/*!40000 ALTER TABLE `rs` DISABLE KEYS */;
/*!40000 ALTER TABLE `rs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saudenasalturas`
--

DROP TABLE IF EXISTS `saudenasalturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saudenasalturas` (
  `id_participante` int NOT NULL AUTO_INCREMENT,
  `NomeParticipante` varchar(300) NOT NULL,
  `Rg` varchar(300) NOT NULL,
  `Cpf` varchar(300) NOT NULL,
  `Telefone` varchar(14) NOT NULL,
  PRIMARY KEY (`id_participante`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saudenasalturas`
--

LOCK TABLES `saudenasalturas` WRITE;
/*!40000 ALTER TABLE `saudenasalturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `saudenasalturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seminario`
--

DROP TABLE IF EXISTS `seminario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seminario` (
  `COD` int NOT NULL AUTO_INCREMENT,
  `NOME` text,
  `ENDERECO` text,
  `SETOR` text,
  `EMAIL` text,
  `TELEFONE` text,
  `CIDADE` text,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seminario`
--

LOCK TABLES `seminario` WRITE;
/*!40000 ALTER TABLE `seminario` DISABLE KEYS */;
/*!40000 ALTER TABLE `seminario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seminario2014`
--

DROP TABLE IF EXISTS `seminario2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seminario2014` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `nascimento` varchar(50) NOT NULL,
  `profissao` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `local_trabalho` varchar(500) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=287 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seminario2014`
--

LOCK TABLES `seminario2014` WRITE;
/*!40000 ALTER TABLE `seminario2014` DISABLE KEYS */;
/*!40000 ALTER TABLE `seminario2014` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sist`
--

DROP TABLE IF EXISTS `sist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sist` (
  `nome` varchar(300) NOT NULL,
  `notificacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sist`
--

LOCK TABLES `sist` WRITE;
/*!40000 ALTER TABLE `sist` DISABLE KEYS */;
/*!40000 ALTER TABLE `sist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suplementacao`
--

DROP TABLE IF EXISTS `suplementacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suplementacao` (
  `COD` int NOT NULL,
  `DESCRICAO` text,
  `ANO` int NOT NULL,
  `ENDERECO` varchar(400) NOT NULL,
  PRIMARY KEY (`COD`,`ANO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suplementacao`
--

LOCK TABLES `suplementacao` WRITE;
/*!40000 ALTER TABLE `suplementacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `suplementacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suplementacao_relt`
--

DROP TABLE IF EXISTS `suplementacao_relt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suplementacao_relt` (
  `recurso` varchar(30) NOT NULL DEFAULT '',
  `suplementar` varchar(45) NOT NULL DEFAULT '',
  `reduzir` varchar(45) NOT NULL DEFAULT '',
  `valorsupl` varchar(45) NOT NULL DEFAULT '',
  `valorreduz` varchar(45) NOT NULL DEFAULT '',
  `data` varchar(45) NOT NULL DEFAULT '',
  `numero` varchar(45) NOT NULL DEFAULT '',
  `ano` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`recurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suplementacao_relt`
--

LOCK TABLES `suplementacao_relt` WRITE;
/*!40000 ALTER TABLE `suplementacao_relt` DISABLE KEYS */;
/*!40000 ALTER TABLE `suplementacao_relt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarefas`
--

DROP TABLE IF EXISTS `tarefas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarefas` (
  `cod` int unsigned NOT NULL AUTO_INCREMENT,
  `texto` varchar(3045) NOT NULL DEFAULT '',
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefas`
--

LOCK TABLES `tarefas` WRITE;
/*!40000 ALTER TABLE `tarefas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarefas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_produtos`
--

DROP TABLE IF EXISTS `tb_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_produtos` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `preco` double DEFAULT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_produtos`
--

LOCK TABLES `tb_produtos` WRITE;
/*!40000 ALTER TABLE `tb_produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_material`
--

DROP TABLE IF EXISTS `tipo_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_material` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_material`
--

LOCK TABLES `tipo_material` WRITE;
/*!40000 ALTER TABLE `tipo_material` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoenmg`
--

DROP TABLE IF EXISTS `tipoenmg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoenmg` (
  `cod` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL DEFAULT '',
  `valor` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoenmg`
--

LOCK TABLES `tipoenmg` WRITE;
/*!40000 ALTER TABLE `tipoenmg` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoenmg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposatendimento`
--

DROP TABLE IF EXISTS `tiposatendimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiposatendimento` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposatendimento`
--

LOCK TABLES `tiposatendimento` WRITE;
/*!40000 ALTER TABLE `tiposatendimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiposatendimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_confirmation`
--

DROP TABLE IF EXISTS `user_confirmation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_confirmation` (
  `user_id` int NOT NULL,
  `confirmation_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`confirmation_id`),
  KEY `IDX_8414929f93017c747d34ec7069` (`confirmation_id`),
  KEY `IDX_1091d547864d2e38a5387d0994` (`user_id`),
  CONSTRAINT `FK_1091d547864d2e38a5387d09947` FOREIGN KEY (`user_id`) REFERENCES `registered_users` (`id`),
  CONSTRAINT `FK_8414929f93017c747d34ec70691` FOREIGN KEY (`confirmation_id`) REFERENCES `confirmation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_confirmation`
--

LOCK TABLES `user_confirmation` WRITE;
/*!40000 ALTER TABLE `user_confirmation` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_confirmation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `cod` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(145) NOT NULL DEFAULT '',
  `nivel` varchar(45) NOT NULL DEFAULT '',
  `senha` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `Nome` varchar(50) NOT NULL,
  `Nascimento` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `cgm` int DEFAULT NULL,
  `matricula` varchar(25) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `endereco` varchar(300) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `nivel` int NOT NULL,
  `situacao` int DEFAULT NULL,
  `area` int DEFAULT NULL,
  `nascimento` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zelador`
--

DROP TABLE IF EXISTS `zelador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zelador` (
  `cod` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(245) NOT NULL DEFAULT '',
  `idade` varchar(45) NOT NULL DEFAULT '',
  `sexo` varchar(45) NOT NULL DEFAULT '',
  `telefone` varchar(45) NOT NULL DEFAULT '',
  `endereco` varchar(345) NOT NULL DEFAULT '',
  `escolaridade` varchar(145) NOT NULL DEFAULT '',
  `atividades` varchar(445) NOT NULL DEFAULT '',
  `tempo_funcao` varchar(45) NOT NULL DEFAULT '',
  `hipertensao` varchar(45) NOT NULL DEFAULT '',
  `diabetes` varchar(45) NOT NULL DEFAULT '',
  `renal` varchar(45) NOT NULL DEFAULT '',
  `osteomuscular` varchar(45) NOT NULL DEFAULT '',
  `visao` varchar(45) NOT NULL DEFAULT '',
  `audicao` varchar(45) NOT NULL DEFAULT '',
  `medicacao` varchar(45) NOT NULL DEFAULT '',
  `desc_medicacao` varchar(345) DEFAULT NULL,
  `antidepressivo` varchar(45) NOT NULL DEFAULT '',
  `hipertensivo` varchar(45) NOT NULL DEFAULT '',
  `tetano` varchar(45) NOT NULL DEFAULT '',
  `hepatite_a` varchar(45) NOT NULL DEFAULT '',
  `hepatite_b` varchar(45) NOT NULL DEFAULT '',
  `nao_sabe` varchar(45) NOT NULL DEFAULT '',
  `dor` varchar(45) NOT NULL DEFAULT '',
  `local_dor` varchar(245) DEFAULT NULL,
  `tempo_dor_anos` varchar(45) DEFAULT NULL,
  `tempo_dor_meses` varchar(45) DEFAULT NULL,
  `fumante` varchar(45) NOT NULL DEFAULT '',
  `quantos_macos` varchar(45) DEFAULT NULL,
  `bebida` varchar(45) NOT NULL DEFAULT '',
  `quantas_vezes` varchar(45) DEFAULT NULL,
  `satisfacao` varchar(45) NOT NULL DEFAULT '',
  `local_trabalho` varchar(245) NOT NULL DEFAULT '',
  `cardio` varchar(45) NOT NULL DEFAULT '',
  `gravidez` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zelador`
--

LOCK TABLES `zelador` WRITE;
/*!40000 ALTER TABLE `zelador` DISABLE KEYS */;
/*!40000 ALTER TABLE `zelador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-16 10:50:52
