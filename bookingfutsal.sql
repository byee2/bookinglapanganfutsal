-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bookingfutsal
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `lapangan`
--

DROP TABLE IF EXISTS `lapangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lapangan` (
  `idLapangan` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` text DEFAULT NULL,
  `namaLapangan` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idLapangan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lapangan`
--

LOCK TABLES `lapangan` WRITE;
/*!40000 ALTER TABLE `lapangan` DISABLE KEYS */;
INSERT INTO `lapangan` VALUES
(1,'blablabla','lapangan1',120000,'url/to/path.jpg');
/*!40000 ALTER TABLE `lapangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelanggan` (
  `idPelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `noTlfnPelanggan` decimal(10,0) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `loginSession` date DEFAULT NULL,
  `namaPenyewa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
INSERT INTO `pelanggan` VALUES
(1,8912345678,'akbar','zakaria','2024-12-24','akbar zakaria');
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembayaran`
--

DROP TABLE IF EXISTS `pembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembayaran` (
  `idPembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `idLapangan` int(11) NOT NULL,
  `idPelanggan` int(11) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `tujuanRek` decimal(10,0) DEFAULT NULL,
  `buktiTF` varchar(255) DEFAULT NULL,
  `namaPenyewa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPembayaran`),
  KEY `idLapangan` (`idLapangan`),
  KEY `idPelanggan` (`idPelanggan`),
  CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`idLapangan`) REFERENCES `lapangan` (`idLapangan`),
  CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`idPelanggan`) REFERENCES `pelanggan` (`idPelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembayaran`
--

LOCK TABLES `pembayaran` WRITE;
/*!40000 ALTER TABLE `pembayaran` DISABLE KEYS */;
INSERT INTO `pembayaran` VALUES
(1,1,1,120000,123456789,'url/to/path.jpg','akbar zakaria');
/*!40000 ALTER TABLE `pembayaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penyewaan`
--

DROP TABLE IF EXISTS `penyewaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penyewaan` (
  `idPenyewaan` int(11) NOT NULL AUTO_INCREMENT,
  `idLapangan` int(11) NOT NULL,
  `idPelanggan` int(11) NOT NULL,
  `namaLapangan` varchar(255) DEFAULT NULL,
  `waktuMulaiSewa` time DEFAULT NULL,
  `waktuSelesaiSewa` time DEFAULT NULL,
  `waktuSubmit` date DEFAULT NULL,
  `namaPenyewa` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPenyewaan`),
  KEY `idLapangan` (`idLapangan`),
  KEY `idPelanggan` (`idPelanggan`),
  CONSTRAINT `penyewaan_ibfk_1` FOREIGN KEY (`idLapangan`) REFERENCES `lapangan` (`idLapangan`),
  CONSTRAINT `penyewaan_ibfk_2` FOREIGN KEY (`idPelanggan`) REFERENCES `pelanggan` (`idPelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penyewaan`
--

LOCK TABLES `penyewaan` WRITE;
/*!40000 ALTER TABLE `penyewaan` DISABLE KEYS */;
INSERT INTO `penyewaan` VALUES
(1,1,1,'lapangan1','14:00:00','16:00:00','2024-12-11','akbar zakaria'),
(2,1,1,'lapangan1','14:00:00','16:00:00','2024-12-11','akbar zakaria'),
(3,1,1,'lapangan1','17:00:00','18:00:00','2024-12-11','akbar zakaria'),
(4,1,1,'lapangan1','15:00:00','16:00:00','2024-12-11','akbar zakaria');
/*!40000 ALTER TABLE `penyewaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `idStaff` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `namaStaff` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idStaff`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES
(1,'admin','admin','akbar zakaria');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-11 12:02:17
