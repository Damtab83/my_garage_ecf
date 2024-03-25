CREATE DATABASE IF NOT EXISTS z65a2uki62pgxow4 DEFAULT CHARACTER SET utf8;
USE z65a2uki62pgxow4;
-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: z65a2uki62pgxow4
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `phone_number` varchar(12) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Dam Tab','test@test.fr','Bonjour, je souhaiterai avoir des renseignements sur des v├®hicules ├á vendre pour pi├¿ces d├®tach├®es. J\'ai un vieux mod├¿le de Coccinelle. En vous remerciant par avance.','2024-01-11 11:39:24','1234567890','Demande de renseignement'),(2,'zoubida2','zou@bida.com','achat tuture VROUM    VROUM','2023-10-04 17:46:27','2147483647','achat de voiture d\'occaz'),(23,'Damien Tabary','damtab@hotmail.com','zertfygjhkjlkmkljkhjghfg','2023-10-08 17:37:44','606732556',''),(24,'Damien Tabarydfghvn,nb','damtab@hotmail.com',';khjghfdfsqgsdhfhgjkllk','2023-10-08 17:40:17','606732556','subject'),(28,'Damien Tabary','damtab@hotmail.com','qxscxfcghjbnnkjhgfd','2023-10-08 17:51:00','606732556',NULL),(33,'damdam','test@test.fr','dfghjk;:;,nbvcvbn,;','2023-10-15 18:29:40','606732556',NULL),(34,'Damien Tabary','damtab@hotmail.com','qsdfghjkjhgfd','2023-10-24 21:49:14','606732556','Demande de service Ôö£├í l\'atelier'),(35,'doudou','test@test.fr','<script>alert(\'Hello\')</script>','2024-01-15 17:11:46','1234098765','Demande de service ├á l\'atelier'),(36,'coucou','coucou@test.fr','<script>alert(\'Hello World\')</script>','2024-02-29 18:09:18','0123456789','Demande de renseignement');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20230921163906','2024-01-10 19:14:46',346),('DoctrineMigrations\\Version20230921164303','2024-01-10 19:14:47',12),('DoctrineMigrations\\Version20230921164459','2024-01-10 19:14:47',16),('DoctrineMigrations\\Version20230922081105','2024-01-10 19:14:47',36),('DoctrineMigrations\\Version20230922092117','2024-01-10 19:14:47',94),('DoctrineMigrations\\Version20230926105511','2024-01-10 19:14:47',359),('DoctrineMigrations\\Version20230926131048','2024-01-10 19:14:47',9),('DoctrineMigrations\\Version20230928125142','2024-01-10 19:14:47',138),('DoctrineMigrations\\Version20231002093956','2024-01-10 19:14:47',8),('DoctrineMigrations\\Version20231002110534','2024-01-10 19:14:47',8),('DoctrineMigrations\\Version20231011171750','2024-01-10 19:14:47',109),('DoctrineMigrations\\Version20231016141128','2024-01-10 19:14:48',13);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `kilometer` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `release_date` date NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'FORD','Mondeo','MONDEO PHASE 2 1.8 AMBIENTE\r\n\r\nCARACTERISTIQUES:\r\n - Energie: Essence        - Boite de Vitesse: Manuelle\r\n - Couleur: Gris          - Nombre de portes: 5\r\n - Consommation mixte 7,6 L/100 Km\r\n\r\nPUISSANCE DU VEHICULE:\r\n - Puissance fiscale: 7 CV\r\n - Puissances: (DIN) 110 ch\r\n\r\nCONSOMMATION:\r\n- Crit\'Air: Euro 4\r\n- Emission de CO2: 182g/km\r\n\r\nMOTEUR:\r\n - Quatre cylindres en ligne      - Alimentation Atmosph├®rique\r\n - Injection multipoints Cylindre 798 cm3\r\n - Puissance r├®elle maxi110 ch / 81 kW\r\n\r\nTRANSMISSION:\r\n - BoÔö£┬½te de vitessesMÔö£┬«canique 5 rapports\r\n - Mode de transmission : Traction\r\n\r\nTECHNIQUE:\r\n - Direction assistÔö£┬«e      - Type de suspension avantMcPherson\r\n - Type de suspension arriÔö£┬┐reQuadralink\r\n\r\nPERFORMANCES:\r\n - Vitesse maximale193 km/h0 Ôö£├í 100 km/h11,7 s\r\n\r\nCONSOMMATIONS:\r\n - Cycle urbain11,0 L/100km          - Extra urbain5,6 L/100km      - Mixte7,6 L/100km\r\n - Emission de CO2182 g/km\r\n\r\nINTÔö£├½RIEUR:\r\n- Clim manuelle     - Direction assistÔö£┬«e       - Pack Ôö£┬«lectrique\r\n\r\nSÔö£├½CURITÔö£├½:\r\n - ABS      - Airbag conducteur       - Airbags frontaux       - Airbags latÔö£┬«raux avant',200118,900,'2003-06-01','2023-09-26 21:39:53'),(2,'OPEL','ASTRA BREAK','OPEL ASTRA III BREAK 1.7 CDTI 100 ENJOY\r\n\r\nCARACTERISTIQUE:\r\n - Energie : Diesel       - Boite de vitesse : Manuelle\r\n - Couleur :gris verni      - Sellerie :alcantara gris\r\n - Nombre de portes : 5      - Nombre de places : 5\r\n - Longueur : 4,52 m      - Volume de coffre : Moyen Coffre \r\n\r\nEQUIPEMENTS:\r\n - 2 roues motrices       - Lunette arriÔö£┬┐re dÔö£┬«givrante\r\n - 2 airbags      - ABS      - Airbag frontal\r\n - Anti dÔö£┬«rapage      - Anti patinage      - ESP',199800,2900,'2005-03-25','2023-09-26 21:55:00'),(3,'AUDI','A3','SPORTBACK 1.0 30 TFSI 116 8V PHASE 2\r\n\r\nCARACTERISTIQUE:\r\n - Energie: Essence        - Boite de Vitesse: Manuelle\r\n - Couleur: Blanc          - Nombre de portes: 5\r\n\r\nPUISSANCE DU VEHICULE:\r\n - Puissance fiscale: 6 CV\r\n - Puissances: (DIN) 116 ch\r\n\r\nCONSOMMATION:\r\n- Crit\'Air: Euro 1\r\n- Emission de CO2: 110g/km\r\n\r\nEXTERIEUR ET CHASSIS:\r\n - Aide parking                         - Barre de toit              - Frein de parking automatique\r\n - Lave-phares                          - Peinture intÔö£┬«grale      - RÔö£┬«troviseurs dÔö£┬«givrants\r\n - RÔö£┬«troviseurs Ôö£┬«lectriques       - IntÔö£┬«rieur                     - Climatisation automatique multi zone\r\n - Direction assistÔö£┬«e                 - Pack alu                     - SiÔö£┬┐ges chauffants\r\n - Tapis de sol                           - Volant cuir                - Confort\r\n - Bluetooth                              - SÔö£┬«curitÔö£┬«                    - ABS\r\n - AFU                                       - Airbags                     - Airbags frontaux\r\n - Anti patinage                        - ASR                           - DÔö£┬«tecteur de pluie\r\n -EBV                                        - Fixations ISOFIX\r\n\r\nAUTRE:\r\n - 5 places                                 - Adaptive cruise control avec Audi pre sense front\r\n - Appuie-tÔö£┬¼te intÔö£┬«graux Ôö£├í l\'avant et Ôö£├í l\'arriÔö£┬┐re           - Audi pre sense front\r\n - BoÔö£┬½tiers de rÔö£┬«troviseurs extÔö£┬«rieurs dans la teinte du vÔö£┬«hicule\r\n - Casquette de toit                   - Ciel de pavillon en tissu gris roche\r\n - Feux tout-temps                    - Kit de rÔö£┬«paration crevaison\r\n - Pack Eclairage                        - Pack Smartphone    - SystÔö£┬┐me Start & Stop\r\n - SystÔö£┬┐me d\'information du conducteur                     - SÔö£┬«curitÔö£┬« enfants Ôö£┬«lectrique\r\n - Trousse de secours avec triangle de prÔö£┬«signalisation\r\n - Vitres latÔö£┬«rales et arriÔö£┬┐re athermique                       - Accoudoir central\r\n - Clignotants LED                      - ContrÔö£Ôöñle de pression des pneus\r\n - Volant rÔö£┬«glable',29612,21600,'2019-04-12','2023-10-17 14:02:10'),(4,'RANGE ROVER','EVOQUE','HYBRIDE RECHARGEABLE 300 CV\r\n\r\nCARACTERISTIQUE:\r\n - Energie: Hybride      - Boite de vitesse: automatique\r\n - Couleur: blanc      - Nombres de portes: 5      - Crit\'Air: Euro 1\r\n\r\nEXTERIEUR:\r\n - Jantes 20\" 5 branches doubles \"Style 5079\" finition Gloss Black\r\n - Pneus toutes saisons      - Kit anticrevaison      - Configurable Dynamics\r\n - Suspension passive      - Toit couleur carrosserie\r\n - Plaques de seuils en mÔö£┬«tal Ôö£┬«clairÔö£┬«es       - Torque Vectoring\r\n - Pack Design extÔö£┬«rieur R-Dynamic      - PoignÔö£┬«es de portes affleurantes\r\n - Inscription R-DYNAMIC sur la plaques de seuils\r\n - Etriers de frein rouges      - Pack extÔö£┬«rieur Autobiography avec badge Autobiography\r\n - ContrÔö£Ôöñle de progression en Tout-Terrain      - CÔö£├│ble recharge domicile - wall box\r\n - Pack Black      - Peinture mÔö£┬«tallisÔö£┬«e Santorini Black\r\n - Terrain Response 2 avec mode Auto      - Vitre AR teintÔö£┬«es\r\n\r\nINTERIEUR:\r\n - IntÔö£┬«rieur Natural Grey Ash      - Pavillon en suÔö£┬«dine Ebony\r\n - PÔö£┬«dalier en mÔö£┬«tal      - Miroirs de courtoisie Ôö£┬«clairÔö£┬«s dans les pare-soleil AV\r\n - Palettes de changements de vitesses chromÔö£┬«es     - Toit panoramique coulissant\r\n - Ouverture et fermeture Ôö£┬«lectrique du hayon avec fonction \"mains libres\"\r\n - RÔö£┬«troviseurs extÔö£┬«rieurs chauffants photosensibles rabattables Ôö£┬«lectriquement\r\n - IntÔö£┬«rieur Cuir Windsor Ebony      - Colonne de direction ajustable Ôö£┬«lectriquement\r\n - Volant chauffant      - Tapis de sol Premium      - Radio numÔö£┬«rique DAB\r\n - Bluetooth connectivity      - Tableau de bord virtuel avec Ôö£┬«cran TFT 12,3\'\'\r\n - SystÔö£┬┐me d\'entrÔö£┬«e et de fermeture sans clÔö£┬«      - Android Auto\r\n - Apple CarPlay      - Direction Ôö£┬«lectrique Ôö£├í assistance variable (EPAS)\r\n - Banquette AR rabattable 40/20/40 et 3Ôö£┬┐me appui-tÔö£┬¼te AR      - Seuil de coffre chromÔö£┬«\r\n - Pack online      - 2 USB chargeants Ôö£├í l\'AV      - PIVI PRO connectÔö£┬«\r\n - 1 prise 12 V dans console centrale, 1 prise 12 V Ôö£├í l\'AR 1 prise 12 V dans le coffre\r\n- SiÔö£┬┐ges AV chauffants et ventilÔö£┬«s et AR chauffants, rÔö£┬«glables Ôö£┬«lectriquement\r\n - Accoudoir central AR      - Ecran tactile infÔö£┬«rieur    \r\n - Climatisation automatique 2 zones avec ouÔö£┬╗es de ventilation Ôö£├í l\'AR\r\n - Volant TOUT cuir perforÔö£┬« multifonction      - LumiÔö£┬┐re d\'ambiance intÔö£┬«rieure Premium\r\n - SystÔö£┬┐me audio Meridian Surround 650 W, 14 HP dont caisson de graves\r\n - Chargeur Ôö£├í induction      - Pare-brise athermique     - Remote\r\n\r\nSECURITE :\r\n - Aide Ôö£├í la sortie aux places AR      - RÔö£┬«glage automatique de l\'assiette des phares\r\n - Phares LED Matrix adaptatifs avec feux de circulation diurnes (DRL), signature LED\r\n - SystÔö£┬┐me de freinage d\'urgence      - CamÔö£┬«ra de recul           - Antivol\r\n - SystÔö£┬┐me de surveillance des angles morts avec assistance active\r\n - ContrÔö£Ôöñle de la vigilance du conducteur     - Alarme volumÔö£┬«trique\r\n - Assistance au dÔö£┬«marrage en cÔö£Ôöñte        - Fixations ISOFIX\r\n - Frein de stationnement Ôö£┬«lectrique      - DÔö£┬«tection du trafic en marche AR\r\n - Allumage automatique des phares et essuie-glaces automatiques\r\n- CamÔö£┬«ra stÔö£┬«rÔö£┬«oscopique avec freinage d\'urgence      - 6 Airbags\r\n - SystÔö£┬┐me d\'assistance de maintien de voie avec dÔö£┬«tection de somnolence\r\n - Secure Tracker abonnement 1 an        - Alarme pÔö£┬«rimÔö£┬«trique\r\n- RÔö£┬«gulateur de vitesse adaptatif (ACC) avec Stop and Go\r\n - Clignotants Ôö£├í dÔö£┬«filement AV et AR      - Assistance de maintien de file\r\n - ContrÔö£Ôöñle de collision AR      - DÔö£┬«tecteurs d\'obstacles AV et AR',10500,79900,'2022-09-01','2023-10-20 13:39:07'),(5,'RENAULT','CLIO','CLIO PHASE 4 1.5 dCi 90 BVM5\r\n\r\nCARACTERISTIQUE:\r\n - Energie: Diesel      - Consommation: 3,2 L/100km\r\n -BoÔö£┬½te de vitesses: manuelle 5 rapports\r\n - Certificat: Crit\'Air 2      - Ôö£├½mission de CO├ö├®├® (NEDC): 90 g/km - Cat. A\r\n - Couleur: Noir Etoile     - Nombre de portes: 5      - Sellerie: Sellerie Tissu\r\n\r\nMOTORISATION:\r\n - CylindrÔö£┬«e : 1461 cc      - Puissance DIN : 90 ch\r\n - Puissance fiscale : 4 CV\r\n - Transmission : Traction avant\r\n - Conso. urbaine : 3,6 L/100km      - Conso. mixte : 3,2 L/100km\r\n - Conso. extra-urbaine : 3 L/100km\r\n - Ôö£├½mission de CO├ö├®├® (NEDC) (voir dÔö£┬«tails): 90 g/km\r\n\r\nEQUIPEMENTS:\r\n - Aide au parking AR      - Climatisation manuelle      \r\n - Aide au dÔö£┬«marrage en cÔö£Ôöñte      - LÔö£┬┐ve-vitres AV Ôö£┬«lectriques\r\n - Appuis-tÔö£┬¼te AV      - Carte Renault Ôö£├í tÔö£┬«lÔö£┬«commande\r\n - Lunette AR chauffante      - Zone de rangement sous tapis de coffre\r\n - RÔö£┬«troviseurs extÔö£┬«rieurs Ôö£┬«lectriques dÔö£┬«givrants      - Ecomode\r\n - Ecran multimÔö£┬«dia tactile 7\"      - Projecteurs Ôö£├í double optique\r\n - Navigation GPS avec Cartographie Europe      - MultimÔö£┬«dia\r\n - Banquette AR 1/3-2/3      - Sellerie noir/gris       - Enjoliveurs 16\"\r\n -SiÔö£┬┐ge passager fixe avec dossier rabattable      - Volant cuir\r\n - Feux de jour Ôö£├í LED      - Antiblocage des roues ABS\r\n - Assistance au freinage d\'urgence (A.F.U.)      - ESP\r\n - Projecteurs antibrouillard      - Roue de secours normale\r\n - SystÔö£┬┐me ISOFIX aux places latÔö£┬«rales AR et passager AV',66750,11500,'2013-05-15','2023-10-20 14:09:25'),(6,'TESLA','Model 3','TESLA MODEL 3 306 AUTONOMIE STANDARD PLUS RWD 50KWH 7CV\r\n\r\nCARACTERISTIQUES:\r\n - Energie : Electrique rechargeable      - Boite de vitesse : Automatique\r\n - Couleur :gris metalSellerie :cuir noir      - Nombre de portes : 5\r\n - Autonomie batterie : 448 km       - CapacitÔö£┬« batterie : 50 kWh\r\n - Voltage batterie : 360 V      - IntensitÔö£┬« batterie : 138,9 A\r\n - Conso. batterie : 14 kWh/100 km      - Prix inclut batterie : oui\r\n\r\nMOTORISATION  :\r\n - Puissance fiscale : 6 CV       - Crit\'Air : 0\r\n - Puissances :(DIN) 269 ch - (moteur) 225 kW \r\n\r\nEQUIPEMENTS:\r\n - Phares Ôö£├í allumage automatique      - Feux anti-brouillard avant Ôö£├í LED\r\n - Feux  Ôö£├í LED      - Banquette rabattable 2/3       - Peinture MÔö£┬«tallisÔö£┬«\r\n - RÔö£┬«troviseurs extÔö£┬«rieurs indexÔö£┬«s marche arriÔö£┬┐re et Ôö£┬«lectrique\r\n - Feux de croisement Ôö£├í LED automatique      - Boite automatique\r\n- RÔö£┬«troviseurs extÔö£┬«rieurs chauffants rabattables Ôö£┬«lectriquement\r\n - Aide parking av/ar avec camÔö£┬«ra de recul      - Toit panoramique\r\n - Jantes alu 18\"      - Lunette arriÔö£┬┐re dÔö£┬«givrante\r\n - RÔö£┬«gulateur/ limiteur de vitessse      - SystÔö£┬┐me audio Ôö£┬«cran tactile\r\n - SystÔö£┬┐me de navigation info trafic      - Connexion Internet\r\n - Bluetooth inclut musique en streaming      - DÔö£┬«marrage sans clef\r\n - Smart card / Smart key      - Volant cuir synthetique\r\n - Ordinateur de bord     - SiÔö£┬┐ge avant Ôö£┬«lectrique\r\n - Ouverture du coffre Ôö£├í distance      - SiÔö£┬┐ge avant chauffant\r\n - Taille Ôö£┬«cran navigation 15 pouces      - Accoudoir central arriÔö£┬┐re, avant\r\n - RÔö£┬«troviseur jour/nuit      - Volant multi-fonction\r\n - Reconnaissance vocale      - 8 haut-parleurs      - Appuis-tÔö£┬¼tes arriÔö£┬┐re\r\n - Air conditionnÔö£┬« auto 2 zones     - 4 vitres Ôö£┬«lectriques teintÔö£┬«es\r\n - RÔö£┬«glage du volant en hauteur, Ôö£┬«lectrique, en profondeur',26111,34900,'2022-08-19','2023-10-20 15:02:03'),(7,'VOLKSWAGEN','GOLF','GOLF PHASE VII (2) 1.6 TDI 115 BLUEMOTION TECHNOLOGY TRENDLINE BUSINESS 5P\r\n\r\nCARACTERISTIQUES: \r\n - Energie : Diesel      - Boite de vitesse : Manuelle\r\n - Couleur :blanc       - Nombre de portes : 5\r\n\r\nMOTORISATION:\r\n - Puissance fiscale : 6 CV       - Puissances :(DIN) 116 ch \r\n - Norme euro : EURO6       - Crit\'Air : 2\r\n  - Consommation mixte : 4,1 L/100 km\r\n - Emission de CO2 : A 100 g/km\r\n\r\nEQUIPEMENTS:\r\n - Roue de secours      - RÔö£┬«troviseurs Ôö£┬«lectriques et dÔö£┬«givrants\r\n - Ordinateur de bord      - Bluetooth      - Prise audio USB\r\n - RÔö£┬«gulateur/limiteur  de vitesse      - GPS\r\n - RÔö£┬«gulateur limiteur de vitesse      - SÔö£┬«curitÔö£┬«\r\n - Projecteurs antibrouillard      - Feux ar. Ôö£├í LED\r\n - Dispositif d\'attelage retractable      - Accoudoir central\r\n - Front assist avec freinage d?urgence et dÔö£┬«tection de piÔö£┬«tons\r\n - Peinture mÔö£┬«tallisÔö£┬«e       - SystÔö£┬┐me Start & Stop\r\nVolant 3 branches en cuir et pommeau de levier de vitesses en cuir',113009,16900,'2019-10-29','2023-10-20 17:49:00');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_image`
--

DROP TABLE IF EXISTS `notice_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_FD584E07D540AB` (`notice_id`),
  CONSTRAINT `FK_FD584E07D540AB` FOREIGN KEY (`notice_id`) REFERENCES `notice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_image`
--

LOCK TABLES `notice_image` WRITE;
/*!40000 ALTER TABLE `notice_image` DISABLE KEYS */;
INSERT INTO `notice_image` VALUES (4,3,'audi-blanche-face-6530028bccfa7143555772.jpg',65540,'2023-10-18 18:06:35'),(5,3,'audi-blanche-cote-6530028bd136b347919882.jpg',90116,'2023-10-18 18:06:35'),(6,3,'audi-tableau-de-bord-2-6530028bd29a6199549804.jpg',79022,'2023-10-18 18:06:35'),(7,1,'ford-face-65325d095ca3d559038632.jpg',106005,'2023-10-20 12:57:13'),(10,1,'ford-arriere-65325e2c8b8b0249841569.jpg',94449,'2023-10-20 13:02:04'),(11,1,'ford-tableau-de-bord-65325e2c8d71a386879341.jpg',83893,'2023-10-20 13:02:04'),(12,2,'opel-face-2-653265959015d556229593.jpg',89887,'2023-10-20 13:33:41'),(13,2,'opel-ouverte-65326595923d8098074236.jpg',103928,'2023-10-20 13:33:41'),(14,2,'opel-tableau-de-bord-2-653265959325c253611181.jpg',64525,'2023-10-20 13:33:41'),(15,4,'range-rover-face-653266dbca597037138347.jpg',81891,'2023-10-20 13:39:07'),(16,4,'range-rover-arriere-653266dbcbcf5004467498.jpg',71905,'2023-10-20 13:39:07'),(17,4,'range-rover-tableau-de-bord-653266dbce835238143831.jpg',58385,'2023-10-20 13:39:07'),(18,5,'renault-face-65326df64809d327124647.jpg',67596,'2023-10-20 14:09:26'),(19,5,'renault-3-quart-2-65326df649671267135738.jpg',89213,'2023-10-20 14:09:26'),(20,5,'renault-tableau-de-bord-65326df64a547633788612.jpg',97759,'2023-10-20 14:09:26'),(21,6,'tesla-face-65327a4b6229b462777033.jpg',65564,'2023-10-20 15:02:03'),(22,6,'tesla-3-quart-65327a4b63dd8943760424.jpg',61470,'2023-10-20 15:02:03'),(23,6,'tesla-tableau-de-bord-65327a4b64d37361032938.jpg',55653,'2023-10-20 15:02:03'),(30,7,'golf-3-quart-6532a1c871481240381171.jpg',85379,'2023-10-20 17:50:32'),(31,7,'golf-arriere-6532a1c873267525626940.jpg',124831,'2023-10-20 17:50:32'),(32,7,'golf-tableau-de-bord-6532a1c87508d186862221.jpg',43359,'2023-10-20 17:50:32');
/*!40000 ALTER TABLE `notice_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opening_hours`
--

DROP TABLE IF EXISTS `opening_hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opening_hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_of_week` date NOT NULL,
  `open_time` time NOT NULL,
  `close_time` time NOT NULL,
  `open_time_afternoon` time NOT NULL,
  `close_time_afternoon` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opening_hours`
--

LOCK TABLES `opening_hours` WRITE;
/*!40000 ALTER TABLE `opening_hours` DISABLE KEYS */;
INSERT INTO `opening_hours` VALUES (1,'2023-10-16','08:00:00','12:00:00','14:00:00','18:50:00');
/*!40000 ALTER TABLE `opening_hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opinion`
--

DROP TABLE IF EXISTS `opinion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opinion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `comment` longtext NOT NULL,
  `ranking` int(11) NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opinion`
--

LOCK TABLES `opinion` WRITE;
/*!40000 ALTER TABLE `opinion` DISABLE KEYS */;
INSERT INTO `opinion` VALUES (1,'Damien Tabary','Merci d\'avoir regarder mon application. En esp├®rant qu\'elle a r├®pondu ├á vos attentes.',4,1,'2024-01-11 16:43:46'),(2,'damtab2','en progression essai encore tu n\'as pas fini',3,1,'2023-10-09 18:09:58'),(3,'damtab3','essai encore allezzzz',4,0,'2023-10-09 18:10:49'),(4,'damtab4','ALLEZ ALLEZ',5,0,'2023-10-09 18:14:54'),(5,'damdam','dertyuhkmÔö£Ôòú\r\nÔö£Ôòúkoihuyftdrseqz',1,0,'2023-10-11 14:49:47'),(6,'damdam22','dfghjklmlkjhgf',4,1,'2023-10-11 14:58:36'),(7,'damien tabary','Ce site a Ôö£┬«tÔö£┬« crÔö£┬«Ôö£┬« dans le cadre de mon Ôö£┬«valuation pour l\'ECF de DÔö£┬«veloppeur Web et Web Mobile. Merci pour votre attention Ôö£├í l\'encontre de mon site. A bientÔö£Ôöñt.',5,0,'2023-10-25 21:48:55');
/*!40000 ALTER TABLE `opinion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (2,'Atelier carrosserie','<div>Nous intervenons sur toutes les parties mÔö£┬«talliques de votre vÔö£┬«hicule. Nous disposons d├ö├ç├ûun labo peinture et de plusieurs cabines.</div>'),(3,'Atelier m├®canique','<div>Nous vous offrons un service de qualit├® gr├óce ├í la formation continue de nos techniciens aux nouvelles technologies pour toutes les r├®parations.</div>'),(4,'Atelier entretien','<div>Nous vous offrons un service de qualitÔö£┬« pour l\'entretien courant et rÔö£┬«gulier de votre voiture.</div>'),(5,'Pneumatique','<div>Nous vous prÔö£┬«sentons un large choix de pneumatique</div>'),(6,'Nettoyage des plastiques','<div>Votre voiture prend de l\'Ôö£├│ge, l\'intÔö£┬«rieur aussi. Nous vous proposons une rÔö£┬«novation de vos plastiques pour que votre voiture rajeunisse.</div>');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_image`
--

DROP TABLE IF EXISTS `service_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_6C4FE9B8ED5CA9E6` (`service_id`),
  CONSTRAINT `FK_6C4FE9B8ED5CA9E6` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_image`
--

LOCK TABLES `service_image` WRITE;
/*!40000 ALTER TABLE `service_image` DISABLE KEYS */;
INSERT INTO `service_image` VALUES (2,2,'carrosserie-652bf8f45b240887621799.jpg',351843,'2023-10-15 16:36:36'),(3,3,'mecanique-652bf970260d9098321258.jpg',351642,'2023-10-15 16:38:40'),(4,4,'vidange-652bf9e0c0735167898270.jpg',312655,'2023-10-15 16:40:32'),(5,5,'pneumatique-652bfa2b2e694859926698.jpg',335867,'2023-10-15 16:41:47'),(6,6,'entretien-plastique-652bfa9c4fe5e064648344.jpg',240712,'2023-10-15 16:43:40');
/*!40000 ALTER TABLE `service_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'v.parrot@garage.fr','[\"ROLE_ADMIN\"]','$2y$13$yPBy.6YOsU2kA9AJBlP4WOObZiUPMJxmaRQMm7Drh5yWxKVwtmTDy','Vincent Parrot'),(3,'vendeur1@garage.fr','[\"ROLE_SELLER\"]','$2y$13$eSf1oPQc839z64c4gICocOj9ZnMsVVGFPGeoH4BnOikBm5sKBZz4i','Vendeur 1'),(4,'damtab@hotmail.com','[\"ROLE_ADMIN\"]','$2y$13$6gw.IR/2KYip6EDf.aiAS.QG3ZVcNsRSwi9WiIt0dWzhz0yURCfgO','damtab');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-25 10:19:39
