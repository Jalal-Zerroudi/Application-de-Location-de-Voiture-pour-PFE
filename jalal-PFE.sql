-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage de la structure de table location_voiture. clients
DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cprenom` varchar(255) DEFAULT NULL,
  `cnom` varchar(255) DEFAULT NULL,
  `cusername` varchar(255) DEFAULT NULL,
  `cgender` varchar(255) DEFAULT NULL,
  `cemail` varchar(255) DEFAULT NULL,
  `cincard` varchar(255) DEFAULT NULL,
  `cadresse` varchar(255) DEFAULT NULL,
  `ctelephone` varchar(255) DEFAULT NULL,
  `cnationale` varchar(255) DEFAULT NULL,
  `cpermis_n` varchar(255) DEFAULT NULL,
  `cdate_expiration_permis` date DEFAULT NULL,
  `cpassport` varchar(255) DEFAULT NULL,
  `cage` int DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `cdate_enregistrement` datetime DEFAULT CURRENT_TIMESTAMP,
  `PhotoPathe` varchar(255) DEFAULT NULL,
  `Permispathe` varchar(255) DEFAULT NULL,
  `CINpathe` varchar(255) DEFAULT NULL,
  `rid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cusername` (`cusername`),
  UNIQUE KEY `cemail` (`cemail`),
  UNIQUE KEY `cincard` (`cincard`),
  UNIQUE KEY `cpermis_n` (`cpermis_n`),
  UNIQUE KEY `cpassport` (`cpassport`),
  CONSTRAINT `clients_chk_1` CHECK ((`cage` >= 18))
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table location_voiture.clients : ~6 rows (environ)
INSERT INTO `clients` (`id`, `cprenom`, `cnom`, `cusername`, `cgender`, `cemail`, `cincard`, `cadresse`, `ctelephone`, `cnationale`, `cpermis_n`, `cdate_expiration_permis`, `cpassport`, `cage`, `password`, `cdate_enregistrement`, `PhotoPathe`, `Permispathe`, `CINpathe`, `rid`) VALUES
	(111, 'Alice', 'Johnson', 'alicej', 'Female', 'alice@example.com', 'A1234567', '789 Elm St, Village', '123-456-7890', 'American', 'P654321', '2025-01-01', 'P123456', 30, 'password789', '2024-05-25 01:52:11', 'path_to_photo.jpg', 'path_to_permis.jpg', 'path_to_CIN.jpg', 14),
	(112, 'Bob', 'Smith', 'bobsmith', 'Male', 'bob@example.com', 'B9876543', '321 Maple Ave, Town', '987-654-3210', 'British', 'P123987', '2024-12-31', 'P987654', 35, 'passwordabc', '2024-05-25 01:52:11', 'path_to_photo.jpg', 'path_to_permis.jpg', 'path_to_CIN.jpg', 14),
	(113, 'Eva', 'Lee', 'evalee', 'Female', 'eva@example.com', 'C6543219', '456 Oak St, City', '456-789-0123', 'Canadian', 'P789654', '2025-03-15', 'P456789', 25, 'passwordeve', '2024-05-25 01:52:11', 'path_to_photo.jpg', 'path_to_permis.jpg', 'path_to_CIN.jpg', 15),
	(114, 'David', 'Wong', 'davidw', 'Male', 'david@example.com', 'D9876541', '123 Pine St, Town', '789-012-3456', 'Chinese', 'P456789', '2024-11-20', 'P987123', 40, 'password123', '2024-05-25 01:52:11', 'path_to_photo.jpg', 'path_to_permis.jpg', 'path_to_CIN.jpg', 14),
	(115, 'Sophie', 'Martin', 'sophiem', 'Female', 'sophie@example.com', 'E6547891', '987 Cedar St, Village', '321-654-0987', 'French', 'P987654', '2025-06-10', 'P654789', 28, 'passwordsophie', '2024-05-25 01:52:11', 'path_to_photo.jpg', 'path_to_permis.jpg', 'path_to_CIN.jpg', 16),
	(116, 'Jack', 'Brown', 'jackb', 'Male', 'jack@example.com', 'F3219876', '654 Elm St, City', '654-321-7890', 'American', 'P456321', '2024-09-30', 'P321987', 32, 'passwordjack', '2024-05-25 01:52:11', 'path_to_photo.jpg', 'path_to_permis.jpg', 'path_to_CIN.jpg', 16);

-- Listage de la structure de table location_voiture. employees
DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `eid` int NOT NULL AUTO_INCREMENT,
  `enom` varchar(255) NOT NULL,
  `eprenom` varchar(255) NOT NULL,
  `enationalite` varchar(255) DEFAULT NULL,
  `ecin` varchar(255) DEFAULT NULL,
  `eadresse` varchar(255) DEFAULT NULL,
  `etel` varchar(255) DEFAULT NULL,
  `eemail` varchar(255) DEFAULT NULL,
  `elogin` varchar(255) DEFAULT NULL,
  `efonction` varchar(255) DEFAULT NULL,
  `esalaire` decimal(10,2) DEFAULT NULL,
  `agenceid` int DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ImagePath` varchar(255) DEFAULT NULL,
  `eadmin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  UNIQUE KEY `ecin` (`ecin`),
  UNIQUE KEY `eemail` (`eemail`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table location_voiture.employees : ~15 rows (environ)
INSERT INTO `employees` (`eid`, `enom`, `eprenom`, `enationalite`, `ecin`, `eadresse`, `etel`, `eemail`, `elogin`, `efonction`, `esalaire`, `agenceid`, `password`, `ImagePath`, `eadmin`) VALUES
	(2, 'Doe', 'Jane', 'Canadian', 'XYZ789', '456 Elm St, Toronto', '555-5678', 'jane.doe@example.com', 'janedoe', 'Developer', 70000.00, 1, 'password456', 'C:\\Data-Location\\EMP\\Doe_Jane-CIN-XYZ789.png', 1),
	(3, 'Brown', 'Charlie', 'British', 'LMN456', '789 Pine St, London', '555-9012', 'charlie.brown@example.com', 'Truecharliebrown', 'Sales', 45000.00, 2, 'password78', 'C:\\Data-Location\\EMP\\IMG_20210212_115952.jpg', 1),
	(15, 'KKK', 'KKKK', 'KKKK', 'jalal', 'KKKKK', '9876545678', '098765TG', 'IUYTRE', 'OIUYT', 330.00, 4, 'jalal', 'C:\\Data-Location\\EMP\\KKK_KKKK-CIN-HHHHHH.png', 1),
	(20, 'Doe', 'John', 'French', 'ABC123456', '1234 Main St', '555-1234', 'john.doe@example.com', 'jdoe', 'Manager', 50000.00, 1, 'pass123', '/path/to/image.jpg', 1),
	(49, 'Smith', 'Jane', 'American', 'XYZ789101', '4321 Side St', '555-5678', 'jane.smith@egxample.com', 'jsmith', 'Engineer', 70000.00, 2, 'pass456', '/path/to/image2.jpg', 0),
	(50, 'Brown', 'Charlie', 'British', 'EFG111213', '987 Down Rd', '555-6789', 'cgharlie.bgrown@example.com', 'cbrown', 'Technician', 48000.00, 1, 'pass789', '/path/to/image3.jpg', 0),
	(53, 'Garcia', 'Carlos', 'Spanish', 'NOP202122', '567 Round Ave', '555-4567', 'carglos.garcia@example.com', 'cgarcia', 'Architect', 65000.00, 2, 'pass303', '/path/to/image6.jpg', 1),
	(59, 'ZERR', 'ZERR', 'ZERR', 'ZERR', 'ZERR', '124', 'ZERR', 'ZERR', 'ZERR', 110.00, 2, 'ZERR', 'C:\\Data-Location\\EMP\\ZERR_ZERR-CIN-ZERR.png', 0),
	(61, 'John', 'Doe', 'American', 'ZERROUDI', '123 Main St, City', '1234567890', 'john@example.com', 'john_doe', 'Manager', 5000.00, 1, 'ZERROUDI', 'path_to_image.jpg', 1),
	(62, 'Jane', 'Smith', 'British', '987654321', '456 Oak St, Town', '9876543210', 'jane@example.com', 'jane_smith', 'Salesperson', 3500.00, 1, 'password456', 'path_to_image.jpg', 0),
	(63, 'Michael', 'Johnson', 'American', '456789123', '789 Elm St, Village', '4567891230', 'michael@example.com', 'michael_johnson', 'Administrator', 6000.00, 2, 'password789', 'path_to_image.jpg', 1),
	(64, 'Emily', 'Brown', 'Canadian', '654321987', '321 Maple Ave, City', '6543219870', 'emily@example.com', 'emily_brown', 'Assistant', 4000.00, 2, 'passwordabc', 'path_to_image.jpg', 0),
	(65, 'William', 'Taylor', 'Australian', '789123456', '987 Pine St, Town', '7891234560', 'william@example.com', 'william_taylor', 'Sales Manager', 5500.00, 3, 'passwordxyz', 'path_to_image.jpg', 1),
	(66, 'Sophia', 'Martinez', 'Mexican', '321987654', '654 Cedar St, City', '3219876540', 'sophia@example.com', 'sophia_martinez', 'Marketing Specialist', 4500.00, 3, 'password123abc', 'path_to_image.jpg', 0);

-- Listage de la structure de table location_voiture. paiements
DROP TABLE IF EXISTS `paiements`;
CREATE TABLE IF NOT EXISTS `paiements` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `pdatedepaiement` date DEFAULT NULL,
  `pmontant` decimal(10,2) DEFAULT NULL,
  `psituation` varchar(255) DEFAULT NULL,
  `rid` int DEFAULT NULL,
  `pmethode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  CONSTRAINT `paiements_chk_1` CHECK ((`pmontant` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table location_voiture.paiements : ~6 rows (environ)
INSERT INTO `paiements` (`pid`, `pdatedepaiement`, `pmontant`, `psituation`, `rid`, `pmethode`) VALUES
	(78, '2024-05-25', 250.00, 'Paid', 1, 'Credit Card'),
	(79, '2024-06-10', 180.00, 'Paid', 2, 'Cash'),
	(80, '2024-07-15', 300.00, 'Paid', 3, 'Credit Card'),
	(81, '2024-08-20', 420.00, 'Paid', 4, 'Cash'),
	(82, '2024-09-25', 120.00, 'Paid', 5, 'Credit Card'),
	(83, '2024-10-30', 360.00, 'Paid', 6, 'Cash'),
	(84, '2024-05-25', 360.00, 'Payé', 19, 'Check'),
	(85, '2024-05-25', 120.00, 'Payé', 18, 'Check'),
	(86, '2024-05-29', 120.00, 'Payé', 18, 'Check'),
	(87, '2024-07-19', 420.00, 'Payé', 17, 'Check');

-- Listage de la structure de table location_voiture. reservations
DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `rduree` int DEFAULT NULL,
  `rprix` decimal(10,2) DEFAULT NULL,
  `rdatedepart` date DEFAULT NULL,
  `rdateretour` date DEFAULT NULL,
  `rheuredepart` time DEFAULT NULL,
  `rheureretour` time DEFAULT NULL,
  `rlieudepart` varchar(255) DEFAULT NULL,
  `rlieuretour` varchar(255) DEFAULT NULL,
  `cid` int DEFAULT NULL,
  `vid` int DEFAULT NULL,
  `pid` int DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `pid` (`pid`),
  CONSTRAINT `reservations_chk_1` CHECK ((`rduree` > 0)),
  CONSTRAINT `reservations_chk_2` CHECK ((`rprix` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table location_voiture.reservations : ~6 rows (environ)
INSERT INTO `reservations` (`rid`, `rduree`, `rprix`, `rdatedepart`, `rdateretour`, `rheuredepart`, `rheureretour`, `rlieudepart`, `rlieuretour`, `cid`, `vid`, `pid`) VALUES
	(14, 5, 250.00, '2024-05-25', '2024-05-30', '08:00:00', '08:00:00', 'City', 'Town', 112, 41, 1),
	(15, 3, 180.00, '2024-06-10', '2024-06-13', '09:00:00', '09:00:00', 'Town', 'Village', 112, 41, 2),
	(16, 4, 300.00, '2024-07-15', '2024-07-19', '10:00:00', '10:00:00', 'Village', 'City', 111, 42, 3),
	(17, 7, 420.00, '2024-08-20', '2024-08-27', '11:00:00', '11:00:00', 'City', 'Town', 114, 42, 4),
	(18, 2, 120.00, '2024-09-25', '2024-09-27', '12:00:00', '12:00:00', 'Town', 'City', 112, 44, 5),
	(19, 6, 360.00, '2024-10-30', '2024-11-05', '13:00:00', '13:00:00', 'City', 'Village', 112, 42, 6);

-- Listage de la structure de table location_voiture. voitures
DROP TABLE IF EXISTS `voitures`;
CREATE TABLE IF NOT EXISTS `voitures` (
  `vid` int NOT NULL AUTO_INCREMENT,
  `vmarque` varchar(255) DEFAULT NULL,
  `vmodel` varchar(255) DEFAULT NULL,
  `vyear` int DEFAULT NULL,
  `vversion` varchar(255) DEFAULT NULL,
  `vfuel` varchar(255) DEFAULT NULL,
  `vgearbox` varchar(255) DEFAULT NULL,
  `vcouleur` varchar(255) DEFAULT NULL,
  `vkilometers` decimal(10,2) DEFAULT NULL,
  `vmatricule` varchar(255) DEFAULT NULL,
  `vprixjour` decimal(10,2) DEFAULT NULL,
  `vprixachat` decimal(10,2) DEFAULT NULL,
  `vequipement` varchar(255) DEFAULT NULL,
  `vgps` tinyint(1) DEFAULT NULL,
  `vassurence` varchar(255) DEFAULT 'Yes',
  `vmaintenance` varchar(255) DEFAULT 'Yes',
  `vdateachat` date DEFAULT NULL,
  `vdatederniermaintenance` date DEFAULT NULL,
  `vdisponibilite` varchar(255) DEFAULT 'Yes',
  `vphotoPath` varchar(255) DEFAULT NULL,
  `vpuissance` int DEFAULT NULL,
  PRIMARY KEY (`vid`),
  UNIQUE KEY `vmatricule` (`vmatricule`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table location_voiture.voitures : ~6 rows (environ)
INSERT INTO `voitures` (`vid`, `vmarque`, `vmodel`, `vyear`, `vversion`, `vfuel`, `vgearbox`, `vcouleur`, `vkilometers`, `vmatricule`, `vprixjour`, `vprixachat`, `vequipement`, `vgps`, `vassurence`, `vmaintenance`, `vdateachat`, `vdatederniermaintenance`, `vdisponibilite`, `vphotoPath`, `vpuissance`) VALUES
	(41, 'Toyota', 'Corolla', 2023, 'XE', 'Petrol', 'Automatic', 'Blue', 15000.00, 'ABC123', 50.00, 15000.00, 'Air Conditioning, Power Steering', 1, 'Yes', 'Regular maintenance', '2023-01-01', '2023-01-15', 'No', 'C:\\Data-Location\\CARS\\Matricule_ABC123_Model_Corolla.png', 150),
	(42, 'Honda', 'Civic', 2022, 'EX', 'Petrol', 'Automatic', 'Red', 20000.00, 'XYZ456', 60.00, 18000.00, 'Air Conditioning, Power Windows', 1, 'Yes', 'Regular maintenance', '2022-01-01', '2022-12-20', 'NON', 'path_to_image.jpg', 170),
	(43, 'Ford', 'Focus', 2023, 'SE', 'Petrol', 'Automatic', 'Black', 18000.00, 'DEF789', 55.00, 16000.00, 'Air Conditioning, Power Locks', 1, 'Yes', 'Regular maintenance', '2023-02-01', '2023-02-10', 'Yes', 'path_to_image.jpg', 160),
	(44, 'Chevrolet', 'Malibu', 2023, 'LT', 'Petrol', 'Automatic', 'Silver', 22000.00, 'GHI012', 65.00, 20000.00, 'Air Conditioning, Power Seats', 1, 'Yes', 'Regular maintenance', '2023-03-01', '2023-03-05', 'NON', 'path_to_image.jpg', 180),
	(45, 'Nissan', 'Altima', 2023, 'S', 'Petrol', 'Automatic', 'White', 19000.00, 'JKL345', 55.00, 17000.00, 'Air Conditioning, Cruise Control', 1, 'Yes', 'Regular maintenance', '2023-04-01', '2023-04-15', 'Yes', 'path_to_image.jpg', 160),
	(46, 'Volkswagen', 'Jetta', 2023, 'SE', 'Petrol', 'Automatic', 'Green', 21000.00, 'MNO678', 60.00, 19000.00, 'Air Conditioning, CD Player', 1, 'Yes', 'Regular maintenance', '2023-05-01', '2023-05-20', 'Yes', 'path_to_image.jpg', 170);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
