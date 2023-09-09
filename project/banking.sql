-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mybank
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `acnumber` varchar(10) NOT NULL,
  `custid` varchar(10) DEFAULT NULL,
  `bid` varchar(6) DEFAULT NULL,
  `opening_balance` decimal(15,2) DEFAULT NULL,
  `aod` date DEFAULT NULL,
  `atype` varchar(10) DEFAULT NULL,
  `astatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`acnumber`),
  KEY `account_custid_fk` (`custid`),
  KEY `account_bid_fk` (`bid`),
  CONSTRAINT `account_bid_fk` FOREIGN KEY (`bid`) REFERENCES `branch` (`bid`),
  CONSTRAINT `account_custid_fk` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('A000000001','c000000001','b00001',1000.00,'2015-01-03','saving','active'),('A000000002','c000000002','b00001',1000.00,'2015-01-04','saving','active'),('A000000003','c000000003','b00009',1000.00,'2015-01-05','saving','active'),('A000000004','c000000004','b00009',1000.00,'2015-01-06','saving','active'),('A000000005','c000000005','b00006',1000.00,'2016-01-07','saving','active'),('A000000006','c000000006','b00002',1000.00,'2016-01-08','saving','active'),('A000000007','c000000007','b00002',1000.00,'2016-01-09','saving','active'),('A000000008','c000000008','b00004',1000.00,'2016-01-10','saving','active'),('A000000009','c000000009','b00005',1000.00,'2011-01-11','saving','active'),('A000000010','c000000010','b00003',1000.00,'2011-01-12','saving','active'),('A000000011','c000000011','b00004',1000.00,'2011-01-13','saving','active'),('A000000012','c000000012','b00004',1000.00,'2011-01-14','saving','active'),('A000000013','c000000013','b00006',1000.00,'2011-01-15','saving','active'),('A000000014','c000000014','b00007',1000.00,'2011-01-16','saving','active'),('A000000015','c000000015','b00007',1000.00,'2019-01-17','saving','active'),('A000000016','c000000016','b00010',1000.00,'2019-01-18','saving','active'),('A000000017','c000000017','b00008',1000.00,'2019-01-19','saving','active'),('A000000018','c000000018','b00008',1000.00,'2019-01-20','saving','inactive'),('A000000019','c000000019','b00008',1000.00,'2019-01-21','saving','inactive'),('A000000020','c000000020','b00008',1000.00,'2015-05-18','saving','inactive'),('A000000021','c000000021','b00008',1000.00,'2015-05-19','saving','inactive'),('A000000022','c000000022','b00010',1000.00,'2015-05-20','saving','inactive'),('A000000023','c000000023','b00010',1000.00,'2015-05-21','saving','inactive'),('A000000024','c000000024','b00004',1000.00,'2015-05-22','saving','inactive'),('A000000025','c000000025','b00004',1000.00,'2015-05-23','saving','inactive'),('A000000026','c000000026','b00010',1000.00,'1998-01-28','saving','active'),('A000000027','c000000027','b00009',1000.00,'1998-01-29','saving','active'),('A000000028','c000000028','b00005',1000.00,'1998-01-30','saving','active'),('A000000029','c000000029','b00005',1000.00,'2015-01-31','saving','active'),('A000000030','c000000030','b00005',1000.00,'2018-04-10','saving','active'),('A000000031','c000000031','b00009',1000.00,'2018-04-11','saving','active'),('A000000032','c000000032','b00006',1000.00,'2018-04-12','saving','active'),('A000000033','c000000033','b00006',1000.00,'2018-04-13','saving','active'),('A000000034','c000000034','b00006',1000.00,'2018-04-14','saving','active'),('A000000035','c000000035','b00006',1000.00,'2018-04-15','saving','active'),('A000000036','c000000036','b00006',1000.00,'2018-04-16','saving','active');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `bid` varchar(6) NOT NULL,
  `bname` varchar(30) DEFAULT NULL,
  `bcity` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('b00001','chennai north','chennai'),('b00002','chennai south','chennai'),('b00003','chennai east','chennai'),('b00004','chennai west','chennai'),('b00005','madurai east','madurai'),('b00006','salem west','salem'),('b00007','palani east','palani'),('b00008','dindigul','dindigul'),('b00009','ramnad','ramnad'),('b00010','kanchipuram','kanchipuram');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `custid` varchar(10) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `ltname` varchar(30) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `mobileno` varchar(10) DEFAULT NULL,
  `occupation` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('c000000001','swaminathan','krishnan','chennai','6543212345','private','1995-01-01'),('c000000002','ramesh','sridhar','chennai','6543212346','private','1995-01-02'),('c000000003','logeshkumar','narayanan','chennai','6543212347','private','2000-05-31'),('c000000004','hariharan','murthy','salem','6543212348','private','1995-01-04'),('c000000005','ganesh','sundaram','palani','6543212349','private','1996-01-05'),('c000000006','lakshmi','srinivasan','palani','6543212350','homemaker','1995-01-06'),('c000000007','gomathy','krishnan','salem','6543212351','homemaker','1995-01-07'),('c000000008','joseph','thomas','dindigul','6543212352','private','1995-01-08'),('c000000009','liju','thomas','madurai','6543212353','private','1995-01-09'),('c000000010','sathiskumar','ds','madurai','6543212354','private','1995-01-10'),('c000000011','sambasivam','gurumurthy','madurai','6543212355','private','1995-01-11'),('c000000012','john','boby','madurai','6543212356','private','1995-01-12'),('c000000013','sathyanarayanan','krishnan','madurai','6543212357','private','1998-01-04'),('c000000014','narayanan','krishnan','madurai','6543212358','private','1998-01-05'),('c000000015','padmavathy','narayanan','madurai','6543212359','teacher','1973-03-08'),('c000000016','saividhya','narayanan','madurai','6543212360','private','2001-03-10'),('c000000017','Harichandran','S','Thirunelveli','6543212361','private','2001-04-11'),('c000000018','Harichopra','v','Thirunelveli','6543212362','government','2001-05-12'),('c000000019','Arun','S','Erode','6543212363','government','2001-03-13'),('c000000020','Aadhi','Narayanan','Porur','6543212364','government','2004-07-07'),('c000000021','Akash','b','Porur','6543212365','government','2004-07-08'),('c000000022','Venkat','g','Delhi','6543212366','government','2004-07-09'),('c000000023','sandhya','s','Mumbai','6543212367','government','2004-07-10'),('c000000024','Divya','M','Bangalore','6543212368','government','2004-07-11'),('c000000025','karim','R','Pune','6543212369','government','1996-09-25'),('c000000026','Surya','v','pune','6543212370','private','1996-09-26'),('c000000027','vijay','f','kolkata','6543212371','private','1996-09-27'),('c000000028','sanjay','g','kerala','6543212372','private','1996-09-28'),('c000000029','Vikram','r','chennai','6543212373','private','1996-09-29'),('c000000030','Vasu','krishnan','Jaipur','6543212374','private','1996-09-30'),('c000000031','Vivek','B','agra','6543212375','private','1995-05-06'),('c000000032','Vadivelu','c','chennai','6543212376','private','1995-05-07'),('c000000033','Sundar','a','Hyderabad','6543212377','private','1995-05-08'),('c000000034','sakshi','M','Nagpur','6543212378','private','1999-11-09'),('c000000035','Sumathra','v','New Delhi','6543212379','private','1999-11-10'),('c000000036','siva','nambuthri','palani','6543212380','private','1999-11-11');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan` (
  `custid` varchar(10) NOT NULL,
  `bid` varchar(6) NOT NULL,
  `loan_amount` int DEFAULT NULL,
  PRIMARY KEY (`custid`,`bid`),
  KEY `loan_bid_fk` (`bid`),
  CONSTRAINT `loan_bid_fk` FOREIGN KEY (`bid`) REFERENCES `branch` (`bid`),
  CONSTRAINT `loan_custid_fk` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES ('c000000001','b00001',100000),('c000000001','b00003',2000000),('c000000001','b00007',3000000),('c000000002','b00001',3500000),('c000000002','b00002',200000),('c000000002','b00009',3000000),('c000000009','b00008',500000),('c000000010','b00009',1000000),('c000000010','b00010',3500000),('c000000015','b00010',2600000),('c000000016','b00004',8000000),('c000000018','b00002',4000000),('c000000019','b00001',4000000),('c000000019','b00009',8000000),('c000000020','b00010',5600000),('c000000021','b00008',7000000),('c000000024','b00007',2500000),('c000000025','b00009',2600000),('c000000030','b00001',2500000),('c000000031','b00003',2700000),('c000000035','b00008',9500000),('c000000036','b00010',9500000);
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trandetails`
--

DROP TABLE IF EXISTS `trandetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trandetails` (
  `tnumber` varchar(6) NOT NULL,
  `acnumber` varchar(10) DEFAULT NULL,
  `dot` date DEFAULT NULL,
  `medium_of_transaction` varchar(20) DEFAULT NULL,
  `transaction_type` varchar(20) DEFAULT NULL,
  `transaction_amount` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`tnumber`),
  KEY `trandetails_acnumber_fk` (`acnumber`),
  CONSTRAINT `trandetails_acnumber_fk` FOREIGN KEY (`acnumber`) REFERENCES `account` (`acnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trandetails`
--

LOCK TABLES `trandetails` WRITE;
/*!40000 ALTER TABLE `trandetails` DISABLE KEYS */;
INSERT INTO `trandetails` VALUES ('t00001','A000000001','2001-01-01','cheque','deposit',12000.00),('t00002','A000000002','2001-01-02','cheque','deposit',111000.00),('t00003','A000000003','2001-01-03','cheque','deposit',12300.00),('t00004','A000000004','2001-01-04','cheque','deposit',10000.00),('t00005','A000000005','2001-01-05','cheque','deposit',1000.00),('t00006','A000000006','2001-01-06','cheque','deposit',2000.00),('t00007','A000000007','2001-01-07','cheque','deposit',5000.00),('t00008','A000000008','2001-01-08','cash','deposit',3000.00),('t00009','A000000009','2001-01-09','cash','deposit',1000.00),('t00010','A000000010','2001-01-10','cash','deposit',10000.00),('t00011','A000000011','2001-01-11','cash','withdrawal',5000.00),('t00012','A000000012','2001-01-12','cash','withdrawal',10000.00),('t00013','A000000013','2001-01-13','cash','withdrawal',20000.00),('t00014','A000000014','2001-01-14','cash','withdrawal',20000.00),('t00015','A000000015','2001-01-15','cash','withdrawal',20000.00),('t00016','A000000016','2001-01-16','cash','withdrawal',10000.00),('t00017','A000000017','2001-01-17','cash','withdrawal',20000.00),('t00018','A000000018','2001-01-18','cash','withdrawal',3000.00),('t00019','A000000019','2001-01-19','cash','withdrawal',20000.00),('t00020','A000000020','2001-01-20','cash','deposit',20000.00),('t00021','A000000021','2001-01-21','cash','deposit',25000.00),('t00022','A000000022','2001-01-22','cash','deposit',20000.00),('t00023','A000000023','2001-01-23','cash','deposit',20000.00),('t00024','A000000024','2001-01-24','cash','deposit',20000.00),('t00025','A000000025','2001-01-25','cash','deposit',14000.00),('t00026','A000000026','2001-01-26','cash','deposit',20000.00),('t00027','A000000027','2001-01-27','cash','withdrawal',20000.00),('t00028','A000000028','2001-01-28','cash','withdrawal',20000.00),('t00029','A000000029','2001-01-29','cash','withdrawal',20000.00),('t00030','A000000030','2001-01-30','cash','withdrawal',20000.00),('t00031','A000000031','2001-01-31','cash','withdrawal',20000.00),('t00032','A000000032','2001-02-01','cash','withdrawal',12500.00),('t00033','A000000033','2001-02-02','cash','deposit',20000.00),('t00034','A000000034','2001-02-03','cash','deposit',20000.00),('t00035','A000000035','2001-02-04','cash','deposit',20000.00),('t00036','A000000036','2001-02-05','cheque','deposit',20000.00),('t00037','A000000001','2002-03-01','cheque','withdrawal',20000.00),('t00038','A000000002','2002-03-02','cheque','withdrawal',20000.00),('t00039','A000000003','2002-03-03','cheque','withdrawal',20000.00),('t00040','A000000004','2002-03-04','cheque','withdrawal',20000.00),('t00041','A000000005','2002-03-05','cheque','deposit',20000.00),('t00042','A000000006','2002-03-06','cheque','deposit',20000.00),('t00043','A000000007','2002-03-07','cheque','deposit',34000.00),('t00044','A000000008','2002-03-08','cheque','deposit',20000.00),('t00045','A000000009','2002-03-09','cheque','deposit',20000.00),('t00046','A000000010','2002-03-10','cheque','deposit',20000.00),('t00047','A000000011','2002-03-11','cash','deposit',20000.00),('t00048','A000000012','2002-03-12','cash','withdrawal',20000.00),('t00049','A000000013','2002-03-13','cash','withdrawal',20000.00),('t00050','A000000014','2002-03-14','cash','withdrawal',20000.00),('t00051','A000000015','2002-03-15','cash','withdrawal',20000.00),('t00052','A000000016','2002-03-16','cash','withdrawal',20000.00),('t00053','A000000017','2002-03-17','cash','withdrawal',20000.00),('t00054','A000000018','2002-03-18','cash','deposit',32000.00),('t00055','A000000019','2002-03-19','cash','deposit',5000.00),('t00056','A000000020','2002-03-20','cash','deposit',20000.00),('t00057','A000000021','2002-03-21','cash','deposit',20000.00),('t00058','A000000022','2002-03-22','cash','deposit',20000.00),('t00059','A000000023','2002-03-23','cash','deposit',20000.00),('t00060','A000000024','2002-03-24','cash','deposit',6500.00),('t00061','A000000025','2002-03-25','cash','deposit',20000.00),('t00062','A000000026','2002-03-26','cash','deposit',20000.00),('t00063','A000000027','2002-03-27','cheque','withdrawal',20000.00),('t00064','A000000028','2002-03-28','cheque','deposit',20000.00),('t00065','A000000029','2002-03-29','cheque','deposit',20000.00),('t00066','A000000030','2002-03-30','cheque','withdrawal',20000.00),('t00067','A000000031','2002-03-31','cheque','withdrawal',20000.00),('t00068','A000000032','2003-04-01','cheque','withdrawal',20000.00),('t00069','A000000033','2003-04-02','cheque','deposit',20000.00),('t00070','A000000034','2003-04-03','cheque','deposit',20000.00),('t00071','A000000035','2003-04-04','cheque','deposit',20000.00),('t00072','A000000036','2003-04-05','cheque','deposit',20000.00),('t00073','A000000001','2004-03-01','cheque','withdrawal',20000.00),('t00074','A000000002','2004-03-02','cheque','withdrawal',20000.00),('t00075','A000000003','2004-03-03','cash','withdrawal',20000.00),('t00076','A000000004','2004-03-04','cash','withdrawal',20000.00),('t00077','A000000005','2004-03-05','cash','withdrawal',20000.00),('t00078','A000000006','2004-03-06','cheque','withdrawal',20000.00),('t00079','A000000007','2004-03-07','cheque','deposit',20000.00),('t00080','A000000008','2004-03-08','cheque','deposit',20000.00),('t00081','A000000009','2004-03-09','cheque','deposit',20000.00),('t00082','A000000010','2004-03-10','cheque','deposit',20000.00),('t00083','A000000011','2004-03-11','cheque','deposit',20000.00),('t00084','A000000012','2005-03-01','cheque','deposit',20000.00),('t00085','A000000013','2005-03-02','cheque','deposit',20000.00),('t00086','A000000014','2005-03-03','cheque','deposit',20000.00),('t00087','A000000015','2005-03-04','cheque','deposit',20000.00),('t00088','A000000016','2005-03-05','cheque','deposit',20000.00),('t00089','A000000017','2005-03-06','cheque','deposit',20000.00),('t00090','A000000018','2005-03-07','cheque','deposit',20000.00),('t00091','A000000019','2006-01-19','cheque','withdrawal',20000.00),('t00092','A000000020','2006-01-20','cash','withdrawal',20000.00),('t00093','A000000021','2006-01-21','cash','withdrawal',20000.00),('t00094','A000000022','2006-01-22','cash','withdrawal',20000.00),('t00095','A000000023','2006-01-23','cash','withdrawal',20000.00),('t00096','A000000024','2006-01-24','cash','withdrawal',20000.00),('t00097','A000000025','2006-01-25','cash','withdrawal',20000.00),('t00098','A000000026','2006-01-26','cash','deposit',20000.00),('t00099','A000000027','2006-01-27','cash','deposit',20000.00),('t00100','A000000028','2006-01-28','cash','deposit',20000.00),('t00101','A000000029','2006-01-29','cash','withdrawal',20000.00),('t00102','A000000030','2006-01-30','cash','withdrawal',20000.00),('t00103','A000000031','2006-01-31','cash','withdrawal',20000.00),('t00104','A000000032','2017-01-03','cash','withdrawal',20000.00),('t00105','A000000033','2017-01-04','cash','deposit',20000.00),('t00106','A000000034','2017-01-05','cash','deposit',20000.00),('t00107','A000000035','2017-01-06','cash','deposit',20000.00),('t00108','A000000036','2017-01-07','cash','deposit',45000.00);
/*!40000 ALTER TABLE `trandetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-08 19:58:01
