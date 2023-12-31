-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: my_garage_ecf
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Current Database: `my_garage_ecf`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `my_garage_ecf` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `my_garage_ecf`;

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
  `phone_number` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'zoubida','zou@bida.com','achat vente pour une voiture .....VROUM','2023-10-02 16:14:09',123456789,'achat de voiture'),(2,'zoubida2','zou@bida.com','achat tuture VROUM    VROUM','2023-10-04 17:46:27',2147483647,'achat de voiture d\'occaz'),(23,'Damien Tabary','damtab@hotmail.com','zertfygjhkjlkmkljkhjghfg','2023-10-08 17:37:44',606732556,''),(24,'Damien Tabarydfghvn,nb','damtab@hotmail.com',';khjghfdfsqgsdhfhgjkllk','2023-10-08 17:40:17',606732556,'subject'),(28,'Damien Tabary','damtab@hotmail.com','qxscxfcghjbnnkjhgfd','2023-10-08 17:51:00',606732556,NULL),(33,'damdam','test@test.fr','dfghjk;:;,nbvcvbn,;','2023-10-15 18:29:40',606732556,NULL),(34,'Damien Tabary','damtab@hotmail.com','qsdfghjkjhgfd','2023-10-24 21:49:14',606732556,'Demande de service ├á l\'atelier');
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
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20230921163906','2023-09-21 18:39:29',93),('DoctrineMigrations\\Version20230921164303','2023-09-21 18:43:59',18),('DoctrineMigrations\\Version20230921164459','2023-09-21 18:45:26',19),('DoctrineMigrations\\Version20230922081105','2023-09-22 10:11:13',123),('DoctrineMigrations\\Version20230922092117','2023-09-22 11:22:22',157),('DoctrineMigrations\\Version20230926105511','2023-09-26 12:56:08',322),('DoctrineMigrations\\Version20230926131048','2023-09-26 15:11:37',50),('DoctrineMigrations\\Version20230928125142','2023-09-28 14:52:35',213),('DoctrineMigrations\\Version20231002093956','2023-10-02 11:40:47',122),('DoctrineMigrations\\Version20231002110534','2023-10-02 13:06:03',41),('DoctrineMigrations\\Version20231011171750','2023-10-11 19:20:33',410),('DoctrineMigrations\\Version20231016141128','2023-10-16 16:11:53',418);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'FORD','Mondeo','MONDEO PHASE 2 1.8 AMBIENTE\r\n\r\nCARACTERISTIQUES:\r\n - Energie: Essence        - Boite de Vitesse: Manuelle\r\n - Couleur: Gris          - Nombre de portes: 5\r\n - Consommation mixte 7,6 L/100 Km\r\n\r\nPUISSANCE DU VEHICULE:\r\n - Puissance fiscale: 7 CV\r\n - Puissances: (DIN) 110 ch\r\n\r\nCONSOMMATION:\r\n- Crit\'Air: Euro 4\r\n- Emission de CO2: 182g/km\r\n\r\nMOTEUR:\r\n - Quatre cylindres en ligne      - AlimentationAtmosph├®rique\r\n - InjectionInjection multipointsCylindr├®e1 798 cm┬│\r\n - Puissance r├®elle maxi110 ch / 81 kW\r\n\r\nTRANSMISSION:\r\n - Bo├«te de vitessesM├®canique 5 rapports\r\n - Mode de transmission : Traction\r\n\r\nTECHNIQUE:\r\n - Direction assist├®e      - Type de suspension avantMcPherson\r\n - Type de suspension arri├¿reQuadralink\r\n\r\nPERFORMANCES:\r\n - Vitesse maximale193 km/h0 ├á 100 km/h11,7 s\r\n\r\nCONSOMMATIONS:\r\n - Cycle urbain11,0 L/100km          - Extra urbain5,6 L/100km      - Mixte7,6 L/100km\r\n - Emission de CO2182 g/km\r\n\r\nINT├ëRIEUR:\r\n- Clim manuelle     - Direction assist├®e       - Pack ├®lectrique\r\n\r\nS├ëCURIT├ë:\r\n - ABS      - Airbag conducteur       - Airbags frontaux       - Airbags lat├®raux avant',200118,900,'2003-06-01','2023-09-26 21:39:53'),(2,'OPEL','ASTRA BREAK','OPEL ASTRA III BREAK 1.7 CDTI 100 ENJOY\r\n\r\nCARACTERISTIQUE:\r\n - Energie : Diesel       - Boite de vitesse : Manuelle\r\n - Couleur :gris verni      - Sellerie :alcantara gris\r\n - Nombre de portes : 5      - Nombre de places : 5\r\n - Longueur : 4,52 m      - Volume de coffre : Moyen Coffre \r\n\r\nEQUIPEMENTS:\r\n - 2 roues motrices       - Lunette arri├¿re d├®givrante\r\n - 2 airbags      - ABS      - Airbag frontal\r\n - Anti d├®rapage      - Anti patinage      - ESP',199800,2900,'2005-03-25','2023-09-26 21:55:00'),(3,'AUDI','A3','SPORTBACK 1.0 30 TFSI 116 8V PHASE 2\r\n\r\nCARACTERISTIQUE:\r\n - Energie: Essence        - Boite de Vitesse: Manuelle\r\n - Couleur: Blanc          - Nombre de portes: 5\r\n\r\nPUISSANCE DU VEHICULE:\r\n - Puissance fiscale: 6 CV\r\n - Puissances: (DIN) 116 ch\r\n\r\nCONSOMMATION:\r\n- Crit\'Air: Euro 1\r\n- Emission de CO2: 110g/km\r\n\r\nEXTERIEUR ET CHASSIS:\r\n - Aide parking                         - Barre de toit              - Frein de parking automatique\r\n - Lave-phares                          - Peinture int├®grale      - R├®troviseurs d├®givrants\r\n - R├®troviseurs ├®lectriques       - Int├®rieur                     - Climatisation automatique multi zone\r\n - Direction assist├®e                 - Pack alu                     - Si├¿ges chauffants\r\n - Tapis de sol                           - Volant cuir                - Confort\r\n - Bluetooth                              - S├®curit├®                    - ABS\r\n - AFU                                       - Airbags                     - Airbags frontaux\r\n - Anti patinage                        - ASR                           - D├®tecteur de pluie\r\n -EBV                                        - Fixations ISOFIX\r\n\r\nAUTRE:\r\n - 5 places                                 - Adaptive cruise control avec Audi pre sense front\r\n - Appuie-t├¬te int├®graux ├á l\'avant et ├á l\'arri├¿re           - Audi pre sense front\r\n - Bo├«tiers de r├®troviseurs ext├®rieurs dans la teinte du v├®hicule\r\n - Casquette de toit                   - Ciel de pavillon en tissu gris roche\r\n - Feux tout-temps                    - Kit de r├®paration crevaison\r\n - Pack Eclairage                        - Pack Smartphone    - Syst├¿me Start & Stop\r\n - Syst├¿me d\'information du conducteur                     - S├®curit├® enfants ├®lectrique\r\n - Trousse de secours avec triangle de pr├®signalisation\r\n - Vitres lat├®rales et arri├¿re athermique                       - Accoudoir central\r\n - Clignotants LED                      - Contr├┤le de pression des pneus\r\n - Volant r├®glable',29612,21600,'2019-04-12','2023-10-17 14:02:10'),(4,'RANGE ROVER','EVOQUE','HYBRIDE RECHARGEABLE 300 CV\r\n\r\nCARACTERISTIQUE:\r\n - Energie: Hybride      - Boite de vitesse: automatique\r\n - Couleur: blanc      - Nombres de portes: 5      - Crit\'Air: Euro 1\r\n\r\nEXTERIEUR:\r\n - Jantes 20\" 5 branches doubles \"Style 5079\" finition Gloss Black\r\n - Pneus toutes saisons      - Kit anticrevaison      - Configurable Dynamics\r\n - Suspension passive      - Toit couleur carrosserie\r\n - Plaques de seuils en m├®tal ├®clair├®es       - Torque Vectoring\r\n - Pack Design ext├®rieur R-Dynamic      - Poign├®es de portes affleurantes\r\n - Inscription R-DYNAMIC sur la plaques de seuils\r\n - Etriers de frein rouges      - Pack ext├®rieur Autobiography avec badge Autobiography\r\n - Contr├┤le de progression en Tout-Terrain      - C├óble recharge domicile - wall box\r\n - Pack Black      - Peinture m├®tallis├®e Santorini Black\r\n - Terrain Response 2 avec mode Auto      - Vitre AR teint├®es\r\n\r\nINTERIEUR:\r\n - Int├®rieur Natural Grey Ash      - Pavillon en su├®dine Ebony\r\n - P├®dalier en m├®tal      - Miroirs de courtoisie ├®clair├®s dans les pare-soleil AV\r\n - Palettes de changements de vitesses chrom├®es     - Toit panoramique coulissant\r\n - Ouverture et fermeture ├®lectrique du hayon avec fonction \"mains libres\"\r\n - R├®troviseurs ext├®rieurs chauffants photosensibles rabattables ├®lectriquement\r\n - Int├®rieur Cuir Windsor Ebony      - Colonne de direction ajustable ├®lectriquement\r\n - Volant chauffant      - Tapis de sol Premium      - Radio num├®rique DAB\r\n - Bluetooth connectivity      - Tableau de bord virtuel avec ├®cran TFT 12,3\'\'\r\n - Syst├¿me d\'entr├®e et de fermeture sans cl├®      - Android Auto\r\n - Apple CarPlay      - Direction ├®lectrique ├á assistance variable (EPAS)\r\n - Banquette AR rabattable 40/20/40 et 3├¿me appui-t├¬te AR      - Seuil de coffre chrom├®\r\n - Pack online      - 2 USB chargeants ├á l\'AV      - PIVI PRO connect├®\r\n - 1 prise 12 V dans console centrale, 1 prise 12 V ├á l\'AR 1 prise 12 V dans le coffre\r\n- Si├¿ges AV chauffants et ventil├®s et AR chauffants, r├®glables ├®lectriquement\r\n - Accoudoir central AR      - Ecran tactile inf├®rieur    \r\n - Climatisation automatique 2 zones avec ou├»es de ventilation ├á l\'AR\r\n - Volant TOUT cuir perfor├® multifonction      - Lumi├¿re d\'ambiance int├®rieure Premium\r\n - Syst├¿me audio Meridian Surround 650 W, 14 HP dont caisson de graves\r\n - Chargeur ├á induction      - Pare-brise athermique     - Remote\r\n\r\nSECURITE :\r\n - Aide ├á la sortie aux places AR      - R├®glage automatique de l\'assiette des phares\r\n - Phares LED Matrix adaptatifs avec feux de circulation diurnes (DRL), signature LED\r\n - Syst├¿me de freinage d\'urgence      - Cam├®ra de recul           - Antivol\r\n - Syst├¿me de surveillance des angles morts avec assistance active\r\n - Contr├┤le de la vigilance du conducteur     - Alarme volum├®trique\r\n - Assistance au d├®marrage en c├┤te        - Fixations ISOFIX\r\n - Frein de stationnement ├®lectrique      - D├®tection du trafic en marche AR\r\n - Allumage automatique des phares et essuie-glaces automatiques\r\n- Cam├®ra st├®r├®oscopique avec freinage d\'urgence      - 6 Airbags\r\n - Syst├¿me d\'assistance de maintien de voie avec d├®tection de somnolence\r\n - Secure Tracker abonnement 1 an        - Alarme p├®rim├®trique\r\n- R├®gulateur de vitesse adaptatif (ACC) avec Stop and Go\r\n - Clignotants ├á d├®filement AV et AR      - Assistance de maintien de file\r\n - Contr├┤le de collision AR      - D├®tecteurs d\'obstacles AV et AR',10500,79900,'2022-09-01','2023-10-20 13:39:07'),(5,'RENAULT','CLIO','CLIO PHASE 4 1.5 dCi 90 BVM5\r\n\r\nCARACTERISTIQUE:\r\n - Energie: Diesel      - Consommation: 3,2 L/100km\r\n -Bo├«te de vitesses: manuelle 5 rapports\r\n - Certificat: Crit\'Air 2      - ├ëmission de COÔéé (NEDC): 90 g/km - Cat. A\r\n - Couleur: Noir Etoile     - Nombre de portes: 5      - Sellerie: Sellerie Tissu\r\n\r\nMOTORISATION:\r\n - Cylindr├®e : 1461 cc      - Puissance DIN : 90 ch\r\n - Puissance fiscale : 4 CV\r\n - Transmission : Traction avant\r\n - Conso. urbaine : 3,6 L/100km      - Conso. mixte : 3,2 L/100km\r\n - Conso. extra-urbaine : 3 L/100km\r\n - ├ëmission de COÔéé (NEDC) (voir d├®tails): 90 g/km\r\n\r\nEQUIPEMENTS:\r\n - Aide au parking AR      - Climatisation manuelle      \r\n - Aide au d├®marrage en c├┤te      - L├¿ve-vitres AV ├®lectriques\r\n - Appuis-t├¬te AV      - Carte Renault ├á t├®l├®commande\r\n - Lunette AR chauffante      - Zone de rangement sous tapis de coffre\r\n - R├®troviseurs ext├®rieurs ├®lectriques d├®givrants      - Ecomode\r\n - Ecran multim├®dia tactile 7\"      - Projecteurs ├á double optique\r\n - Navigation GPS avec Cartographie Europe      - Multim├®dia\r\n - Banquette AR 1/3-2/3      - Sellerie noir/gris       - Enjoliveurs 16\"\r\n -Si├¿ge passager fixe avec dossier rabattable      - Volant cuir\r\n - Feux de jour ├á LED      - Antiblocage des roues ABS\r\n - Assistance au freinage d\'urgence (A.F.U.)      - ESP\r\n - Projecteurs antibrouillard      - Roue de secours normale\r\n - Syst├¿me ISOFIX aux places lat├®rales AR et passager AV',66750,11500,'2013-05-15','2023-10-20 14:09:25'),(6,'TESLA','Model 3','TESLA MODEL 3 306 AUTONOMIE STANDARD PLUS RWD 50KWH 7CV\r\n\r\nCARACTERISTIQUES:\r\n - Energie : Electrique rechargeable      - Boite de vitesse : Automatique\r\n - Couleur :gris metalSellerie :cuir noir      - Nombre de portes : 5\r\n - Autonomie batterie : 448 km       - Capacit├® batterie : 50 kWh\r\n - Voltage batterie : 360 V      - Intensit├® batterie : 138,9 A\r\n - Conso. batterie : 14 kWh/100 km      - Prix inclut batterie : oui\r\n\r\nMOTORISATION  :\r\n - Puissance fiscale : 6 CV       - Crit\'Air : 0\r\n - Puissances :(DIN) 269 ch - (moteur) 225 kW \r\n\r\nEQUIPEMENTS:\r\n - Phares ├á allumage automatique      - Feux anti-brouillard avant ├á LED\r\n - Feux  ├á LED      - Banquette rabattable 2/3       - Peinture M├®tallis├®\r\n - R├®troviseurs ext├®rieurs index├®s marche arri├¿re et ├®lectrique\r\n - Feux de croisement ├á LED automatique      - Boite automatique\r\n- R├®troviseurs ext├®rieurs chauffants rabattables ├®lectriquement\r\n - Aide parking av/ar avec cam├®ra de recul      - Toit panoramique\r\n - Jantes alu 18\"      - Lunette arri├¿re d├®givrante\r\n - R├®gulateur/ limiteur de vitessse      - Syst├¿me audio ├®cran tactile\r\n - Syst├¿me de navigation info trafic      - Connexion Internet\r\n - Bluetooth inclut musique en streaming      - D├®marrage sans clef\r\n - Smart card / Smart key      - Volant cuir synthetique\r\n - Ordinateur de bord     - Si├¿ge avant ├®lectrique\r\n - Ouverture du coffre ├á distance      - Si├¿ge avant chauffant\r\n - Taille ├®cran navigation 15 pouces      - Accoudoir central arri├¿re, avant\r\n - R├®troviseur jour/nuit      - Volant multi-fonction\r\n - Reconnaissance vocale      - 8 haut-parleurs      - Appuis-t├¬tes arri├¿re\r\n - Air conditionn├® auto 2 zones     - 4 vitres ├®lectriques teint├®es\r\n - R├®glage du volant en hauteur, ├®lectrique, en profondeur',26111,34900,'2022-08-19','2023-10-20 15:02:03'),(7,'VOLKSWAGEN','GOLF','GOLF PHASE VII (2) 1.6 TDI 115 BLUEMOTION TECHNOLOGY TRENDLINE BUSINESS 5P\r\n\r\nCARACTERISTIQUES: \r\n - Energie : Diesel      - Boite de vitesse : Manuelle\r\n - Couleur :blanc       - Nombre de portes : 5\r\n\r\nMOTORISATION:\r\n - Puissance fiscale : 6 CV       - Puissances :(DIN) 116 ch \r\n - Norme euro : EURO6       - Crit\'Air : 2\r\n  - Consommation mixte : 4,1 L/100 km\r\n - Emission de CO2 : A 100 g/km\r\n\r\nEQUIPEMENTS:\r\n - Roue de secours      - R├®troviseurs ├®lectriques et d├®givrants\r\n - Ordinateur de bord      - Bluetooth      - Prise audio USB\r\n - R├®gulateur/limiteur  de vitesse      - GPS\r\n - R├®gulateur limiteur de vitesse      - S├®curit├®\r\n - Projecteurs antibrouillard      - Feux ar. ├á LED\r\n - Dispositif d\'attelage retractable      - Accoudoir central\r\n - Front assist avec freinage d?urgence et d├®tection de pi├®tons\r\n - Peinture m├®tallis├®e       - Syst├¿me Start & Stop\r\nVolant 3 branches en cuir et pommeau de levier de vitesses en cuir',113009,16900,'2019-10-29','2023-10-20 17:49:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
INSERT INTO `opinion` VALUES (1,'damtab','en progression essai encore tu n\'as pas fini',3,0,'2023-10-09 18:09:49'),(2,'damtab2','en progression essai encore tu n\'as pas fini',3,1,'2023-10-09 18:09:58'),(3,'damtab3','essai encore allezzzz',4,0,'2023-10-09 18:10:49'),(4,'damtab4','ALLEZ ALLEZ',5,0,'2023-10-09 18:14:54'),(5,'damdam','dertyuhkm├╣\r\n├╣koihuyftdrseqz',1,0,'2023-10-11 14:49:47'),(6,'damdam22','dfghjklmlkjhgf',4,1,'2023-10-11 14:58:36'),(7,'damien tabary','Ce site a ├®t├® cr├®├® dans le cadre de mon ├®valuation pour l\'ECF de D├®veloppeur Web et Web Mobile. Merci pour votre attention ├á l\'encontre de mon site. A bient├┤t.',5,0,'2023-10-25 21:48:55');
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
INSERT INTO `service` VALUES (2,'Atelier carrosserie','<div>Nous intervenons sur toutes les parties m├®talliques de votre v├®hicule. Nous disposons dÔÇÖun labo peinture et de plusieurs cabines.</div>'),(3,'Atelier m├®canique','<div>Nous vous offrons un service de qualit├® gr├óce ├á la formation r├®guli├¿re de nos techniciens aux nouvelles technologies pour toutes les r├®parations.</div>'),(4,'Atelier entretien','<div>Nous vous offrons un service de qualit├® pour l\'entretien courant et r├®gulier de votre voiture.</div>'),(5,'Pneumatique','<div>Nous vous pr├®sentons un large choix de pneumatique</div>'),(6,'Nettoyage des plastiques','<div>Votre voiture prend de l\'├óge, l\'int├®rieur aussi. Nous vous proposons une r├®novation de vos plastiques pour que votre voiture rajeunisse.</div>');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'vendeur1@garage.fr','[\"ROLE_SELLER\"]','$2y$13$ASQtxq/wkBwwo7GY0HaK1O88wizgR7XQ6W6GuUkFRMBk249m1acUC','Vendeur 1'),(3,'v.parrot@garage.fr','[\"ROLE_SELLER\",\"ROLE_ADMIN\"]','$2y$13$gqyLEESKiWFtwsAUDXZuaOYFcdsreE3OlZEU0PyNybsP6lb.wa2WG','Vincent Parrot');
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

-- Dump completed on 2023-11-23 14:40:40
