-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 13 août 2023 à 23:54
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `joblinkedin`
--

-- --------------------------------------------------------

--
-- Structure de la table `application`
--

DROP TABLE IF EXISTS `application`;
CREATE TABLE IF NOT EXISTS `application` (
  `id` varchar(255) NOT NULL,
  `application_date` datetime DEFAULT NULL,
  `application_status` varchar(255) DEFAULT NULL,
  `linked_in_id` varchar(255) DEFAULT NULL,
  `job_post_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhtvdquahe4gs3how6toa27s5q` (`linked_in_id`),
  KEY `FKqhppc6ebpi0j94530ftuuyldn` (`job_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
CREATE TABLE IF NOT EXISTS `blacklist` (
  `reason` varchar(255) DEFAULT NULL,
  `candidate_linked_in_id` varchar(255) NOT NULL,
  PRIMARY KEY (`candidate_linked_in_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `candidate_linked_in`
--

DROP TABLE IF EXISTS `candidate_linked_in`;
CREATE TABLE IF NOT EXISTS `candidate_linked_in` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4arvgei1aft114ndb37lqjebs` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `has_linked_in_skill`
--

DROP TABLE IF EXISTS `has_linked_in_skill`;
CREATE TABLE IF NOT EXISTS `has_linked_in_skill` (
  `linked_in_id` varchar(255) NOT NULL,
  `linked_in_skill_id` varchar(255) NOT NULL,
  PRIMARY KEY (`linked_in_id`,`linked_in_skill_id`),
  KEY `FKodqyr8l62in3s6adiplcllbtu` (`linked_in_skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_post`
--

DROP TABLE IF EXISTS `job_post`;
CREATE TABLE IF NOT EXISTS `job_post` (
  `id` varchar(255) NOT NULL,
  `activation_date` date NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `expiration_date` date NOT NULL,
  `image_src` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `job_description` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_requirement`
--

DROP TABLE IF EXISTS `job_requirement`;
CREATE TABLE IF NOT EXISTS `job_requirement` (
  `id` varchar(255) NOT NULL,
  `requirement` varchar(255) NOT NULL,
  `job_post_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3qog8fjtsctg7kd6814y7sk8u` (`requirement`),
  KEY `FK65bfbe3ju4xhwoq3rutiaymp1` (`job_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `linked_in_skill`
--

DROP TABLE IF EXISTS `linked_in_skill`;
CREATE TABLE IF NOT EXISTS `linked_in_skill` (
  `id` varchar(255) NOT NULL,
  `skill` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3u1uajab6mfn5e0awgh14ffbl` (`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `linkprofile`
--

DROP TABLE IF EXISTS `linkprofile`;
CREATE TABLE IF NOT EXISTS `linkprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link` varchar(250) NOT NULL,
  `profile` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `linkprofile`
--

INSERT INTO `linkprofile` (`id`, `link`, `profile`) VALUES
(1, '| ', '| '),
(2, '| ', '| '),
(3, '| ', '| '),
(4, '| ', '| '),
(5, 'Hamza Arfaoui ', 'Hamza Arfaoui '),
(6, '| ', '| '),
(7, 'Mohamed Romdhane - Laravel Developer ', 'Mohamed Romdhane - Laravel Developer '),
(8, 'Mohamed Rejab ', 'Mohamed Rejab '),
(9, 'Nesma Z.Sadeq - Laravel Developer ', 'Nesma Z.Sadeq - Laravel Developer '),
(10, '| ', '| '),
(11, 'PHP Laravel Developer. GGateway. Mar 2021 - Oct 2021 8 months. - Develop WMS system with Laravel framework ', 'PHP Laravel Developer. GGateway. Mar 2021 - Oct 2021 8 months. - Develop WMS system with Laravel framework '),
(12, 'Amany Khalid - Laravel Developer ', 'Amany Khalid - Laravel Developer '),
(13, '| ', '| '),
(14, 'Ardavan Shamroshan - Faraz electronic e-commerce ', 'Ardavan Shamroshan - Faraz electronic e-commerce '),
(15, 'Laravel Developer in Rest Architecture at Faraz electronic commerce. Faraz electronic e-commerce. Jan 2023 ', 'Laravel Developer in Rest Architecture at Faraz electronic commerce. Faraz electronic e-commerce. Jan 2023 '),
(16, 'Nikola Cirkovic - Laravel Developer - Wowflow ', 'Nikola Cirkovic - Laravel Developer - Wowflow '),
(17, 'Mahmoud Ben Azouz - Laravel Developer ', 'Mahmoud Ben Azouz - Laravel Developer '),
(18, 'CHIPPY MOHAN - Laravel Developer ', 'CHIPPY MOHAN - Laravel Developer '),
(19, '| ', '| '),
(20, 'Asma Gharbi - Developer Framework Laravel 8 ', 'Asma Gharbi - Developer Framework Laravel 8 '),
(21, 'Moauya Meghari - Laravel Developer ', 'Moauya Meghari - Laravel Developer '),
(22, '| ', '| '),
(23, 'Laravel Developer ', 'Laravel Developer '),
(24, '| ', '| '),
(25, 'Kouceyla Hadji - Sr. PHP Laravel and VueJs developer ', 'Kouceyla Hadji - Sr. PHP Laravel and VueJs developer '),
(26, 'Wesley Martin - Senior Full Stack Laravel Developer ', 'Wesley Martin - Senior Full Stack Laravel Developer '),
(27, 'Ehsan Ebdali ', 'Ehsan Ebdali '),
(28, 'Muhammad Akram - Laravel Developer ', 'Muhammad Akram - Laravel Developer '),
(29, 'sanjay bareth - Laravel Developer ', 'sanjay bareth - Laravel Developer '),
(30, '| ', '| '),
(31, 'Mohammadreza Naderi - Laravel Developer ', 'Mohammadreza Naderi - Laravel Developer '),
(32, '| ', '| '),
(33, 'Riddhi Agravat - Laravel ', 'Riddhi Agravat - Laravel '),
(34, 'Issam Babchia ', 'Issam Babchia '),
(35, 'Mostakim Billah Emon ', 'Mostakim Billah Emon '),
(36, 'Ali Ahmad ', 'Ali Ahmad '),
(37, 'waqar khan - Laravel Developer - Skyline4digital ', 'waqar khan - Laravel Developer - Skyline4digital '),
(38, 'Razi FERTANI ', 'Razi FERTANI '),
(39, 'Amir Shokoohi - PHP laravel Web Developer ', 'Amir Shokoohi - PHP laravel Web Developer '),
(40, 'Soha Msallam - Laravel trainee ', 'Soha Msallam - Laravel trainee '),
(41, '| ', '| '),
(42, 'Reem AlDali - php laravel developer ', 'Reem AlDali - php laravel developer '),
(43, '| ', '| '),
(44, 'Ahmed Hasnain - Mid Level Laravel Developer ', 'Ahmed Hasnain - Mid Level Laravel Developer '),
(45, 'Affaf Farooq - PHP Laravel Developer - Cartlow ', 'Affaf Farooq - PHP Laravel Developer - Cartlow '),
(46, 'Hasnain Abbas - Laravel Developer - Upwork ', 'Hasnain Abbas - Laravel Developer - Upwork '),
(47, 'Uvais Kt - Laravel Developer - Toolyt ', 'Uvais Kt - Laravel Developer - Toolyt '),
(48, 'Kalpesh Desai ', 'Kalpesh Desai '),
(49, 'Tarun Kumar Devan ', 'Tarun Kumar Devan '),
(50, '| ', '| '),
(51, 'Usama Bin Siddique ', 'Usama Bin Siddique '),
(52, 'Basharat Nazeer - Laravel Developer - Swift Solutions ', 'Basharat Nazeer - Laravel Developer - Swift Solutions '),
(53, 'Dipesh Kumar - Laravel Developer ', 'Dipesh Kumar - Laravel Developer '),
(54, 'Mohamed Aboualama ', 'Mohamed Aboualama '),
(55, 'Hamid Mottaghi Pishe - Laravel Developer ', 'Hamid Mottaghi Pishe - Laravel Developer '),
(56, '| ', '| '),
(57, 'tamer alyazory - Laravel Developer - Upwork ', 'tamer alyazory - Laravel Developer - Upwork '),
(58, 'Aqil Salahov - Fullstack Laravel Developer ', 'Aqil Salahov - Fullstack Laravel Developer '),
(59, '| ', '| '),
(60, 'Ali Azgor Hridoy - Laravel Developer - Upwork ', 'Ali Azgor Hridoy - Laravel Developer - Upwork '),
(61, 'Jalal Khan ', 'Jalal Khan '),
(62, 'Rizwan Akram - Laravel Developer ', 'Rizwan Akram - Laravel Developer '),
(63, '| ', '| '),
(64, 'Ezz Arqan - PHP Laravel Developer ', 'Ezz Arqan - PHP Laravel Developer '),
(65, '| ', '| '),
(66, 'Saba Pervaz - Laravel Developer - ISKAAN ', 'Saba Pervaz - Laravel Developer - ISKAAN '),
(67, 'Wissam M. Badwan - Back End Developer - Laravel ', 'Wissam M. Badwan - Back End Developer - Laravel '),
(68, 'Djery DIETCHI ', 'Djery DIETCHI '),
(69, '| ', '| '),
(70, 'Laravel Tutorial - Video Producer ', 'Laravel Tutorial - Video Producer '),
(71, '| ', '| '),
(72, 'Yarline C. - Web Developer ', 'Yarline C. - Web Developer '),
(73, '| ', '| '),
(74, 'Reza Asgharzadeh - Laravel Developer - Freelance ', 'Reza Asgharzadeh - Laravel Developer - Freelance '),
(75, 'Mian Ali ', 'Mian Ali '),
(76, '| ', '| '),
(77, 'Nuno Maduro - Software Engineer - Laravel ', 'Nuno Maduro - Software Engineer - Laravel '),
(78, 'James Brooks - Laravel ', 'James Brooks - Laravel '),
(79, 'Fabrice Gole ', 'Fabrice Gole '),
(80, '| ', '| '),
(81, 'Laravel Punjab   ', 'Laravel Punjab   '),
(82, 'Taylor Otwell ', 'Taylor Otwell '),
(83, 'Youness chakir - Laravel Developer ', 'Youness chakir - Laravel Developer '),
(84, 'Pierre Lusignan - Programmeur PHP Laravel ', 'Pierre Lusignan - Programmeur PHP Laravel '),
(85, 'Parisa Maraghi - Laravel Developer ', 'Parisa Maraghi - Laravel Developer '),
(86, '| ', '| '),
(87, 'laramotely remote Laravel jobs ', 'laramotely remote Laravel jobs '),
(88, 'Muhammad Sadeeq - PHP Laravel Developer ', 'Muhammad Sadeeq - PHP Laravel Developer '),
(89, 'Jess Archer - Core team ', 'Jess Archer - Core team '),
(90, '| ', '| '),
(91, 'Mior Muhammad Zaki Mior Khairuddin ', 'Mior Muhammad Zaki Mior Khairuddin '),
(92, 'Laravel Mumbai - Laravel Community - Laravel India ', 'Laravel Mumbai - Laravel Community - Laravel India '),
(93, 'Mahdi Beyki - Developer - Laravel ', 'Mahdi Beyki - Developer - Laravel '),
(94, 'Mejdi Provolija ', 'Mejdi Provolija '),
(95, 'Eric Barnes - Owner - Laravel News ', 'Eric Barnes - Owner - Laravel News '),
(96, 'Mehran Khani ', 'Mehran Khani '),
(97, 'Amany Abotalib ', 'Amany Abotalib '),
(98, 'Laravel devloper - test ', 'Laravel devloper - test '),
(99, 'aya php laravel developer ', 'aya php laravel developer '),
(100, 'Laravel Tarun - Laravel Developer ', 'Laravel Tarun - Laravel Developer '),
(101, '| ', '| '),
(102, 'Ali Mohammadi ', 'Ali Mohammadi '),
(103, 'Waseem Ali - Laravel Developer - United soft labs ', 'Waseem Ali - Laravel Developer - United soft labs '),
(104, 'Muhammad Abubakar - Laravel Developer ', 'Muhammad Abubakar - Laravel Developer '),
(105, 'Abdul Haseeb - Laravel Developer - CodesOrbit ', 'Abdul Haseeb - Laravel Developer - CodesOrbit '),
(106, 'Laravel Developer ', 'Laravel Developer '),
(107, '| ', '| '),
(108, 'Mohammad Umar - Laravel Developer ', 'Mohammad Umar - Laravel Developer '),
(109, 'Eric Yonathan ', 'Eric Yonathan '),
(110, '| ', '| '),
(111, 'Arslan Anjum - Laravel Developer ', 'Arslan Anjum - Laravel Developer '),
(112, 'hassan mahmmud ', 'hassan mahmmud '),
(113, 'Laravel Experts Dhaka ', 'Laravel Experts Dhaka '),
(114, 'Parsa Khaleghi - Laravel Developer - Freelance ', 'Parsa Khaleghi - Laravel Developer - Freelance '),
(115, 'Hala Lubbad - Laravel Developer ', 'Hala Lubbad - Laravel Developer '),
(116, '| ', '| '),
(117, 'Sandip Andani - PHP Laravel Developer ', 'Sandip Andani - PHP Laravel Developer '),
(118, 'Abu Nayem - Laravel Developer - Spondon ', 'Abu Nayem - Laravel Developer - Spondon '),
(119, 'Aamir Kamal - Php laravel developer - TRZ Technologies ', 'Aamir Kamal - Php laravel developer - TRZ Technologies '),
(120, 'Laravel Developer - Web Developer - CGIT ', 'Laravel Developer - Web Developer - CGIT '),
(121, 'Hamza Mughal - Laravel Developer ', 'Hamza Mughal - Laravel Developer '),
(122, 'Laravel Developer - PHP Developer - wibs.nl ', 'Laravel Developer - PHP Developer - wibs.nl '),
(123, 'Siddique Akbar - Laravel Developer - Mashkraft ', 'Siddique Akbar - Laravel Developer - Mashkraft '),
(124, 'muhammad usman - Laravel Developer ', 'muhammad usman - Laravel Developer '),
(125, '| ', '| '),
(126, 'Hafiz Usman - Laravel Developer ', 'Hafiz Usman - Laravel Developer '),
(127, '| ', '| '),
(128, 'Bita Daghestani - Laravel Developer ', 'Bita Daghestani - Laravel Developer '),
(129, 'Abdul Hanan - Laravel Developer - My Technology ', 'Abdul Hanan - Laravel Developer - My Technology '),
(130, 'narges moghaddasi - Laravel Developer - Azma Group ', 'narges moghaddasi - Laravel Developer - Azma Group '),
(131, '| ', '| '),
(132, '| ', '| '),
(133, '| ', '| '),
(134, '| ', '| '),
(135, 'Hamza Arfaoui ', 'Hamza Arfaoui '),
(136, '| ', '| '),
(137, 'Mohamed Romdhane - Laravel Developer ', 'Mohamed Romdhane - Laravel Developer '),
(138, 'Mohamed Rejab ', 'Mohamed Rejab '),
(139, 'Nesma Z.Sadeq - Laravel Developer ', 'Nesma Z.Sadeq - Laravel Developer '),
(140, '| ', '| '),
(141, 'PHP Laravel Developer. GGateway. Mar 2021 - Oct 2021 8 months. - Develop WMS system with Laravel framework ', 'PHP Laravel Developer. GGateway. Mar 2021 - Oct 2021 8 months. - Develop WMS system with Laravel framework '),
(142, 'Ardavan Shamroshan - Faraz electronic e-commerce ', 'Ardavan Shamroshan - Faraz electronic e-commerce '),
(143, 'Laravel Developer in Rest Architecture at Faraz electronic commerce. Faraz electronic e-commerce. Jan 2023 ', 'Laravel Developer in Rest Architecture at Faraz electronic commerce. Faraz electronic e-commerce. Jan 2023 '),
(144, 'Nikola Cirkovic - Laravel Developer - Wowflow ', 'Nikola Cirkovic - Laravel Developer - Wowflow '),
(145, 'CHIPPY MOHAN - Laravel Developer ', 'CHIPPY MOHAN - Laravel Developer '),
(146, '| ', '| '),
(147, 'Moauya Meghari - Laravel Developer ', 'Moauya Meghari - Laravel Developer '),
(148, '| ', '| '),
(149, 'Laravel Developer ', 'Laravel Developer '),
(150, '| ', '| '),
(151, 'Wesley Martin - Senior Full Stack Laravel Developer ', 'Wesley Martin - Senior Full Stack Laravel Developer '),
(152, 'Ehsan Ebdali ', 'Ehsan Ebdali '),
(153, 'Muhammad Akram - Laravel Developer ', 'Muhammad Akram - Laravel Developer '),
(154, 'Asma Gharbi - Developer Framework Laravel 8 ', 'Asma Gharbi - Developer Framework Laravel 8 '),
(155, 'sanjay bareth - Laravel Developer ', 'sanjay bareth - Laravel Developer '),
(156, '| ', '| '),
(157, 'Mohammadreza Naderi - Laravel Developer ', 'Mohammadreza Naderi - Laravel Developer '),
(158, '| ', '| '),
(159, 'Razi FERTANI ', 'Razi FERTANI '),
(160, 'Riddhi Agravat - Laravel ', 'Riddhi Agravat - Laravel '),
(161, 'Mahmoud Ben Azouz - Laravel Developer ', 'Mahmoud Ben Azouz - Laravel Developer '),
(162, 'Mostakim Billah Emon ', 'Mostakim Billah Emon '),
(163, 'Kouceyla Hadji - Sr. PHP Laravel and VueJs developer ', 'Kouceyla Hadji - Sr. PHP Laravel and VueJs developer '),
(164, 'Issam Babchia ', 'Issam Babchia '),
(165, 'Soha Msallam - Laravel trainee ', 'Soha Msallam - Laravel trainee '),
(166, 'Reem AlDali - php laravel developer ', 'Reem AlDali - php laravel developer '),
(167, '| ', '| '),
(168, '| ', '| '),
(169, 'Affaf Farooq - PHP Laravel Developer - Cartlow ', 'Affaf Farooq - PHP Laravel Developer - Cartlow '),
(170, 'Ahmed Hasnain - Mid Level Laravel Developer ', 'Ahmed Hasnain - Mid Level Laravel Developer '),
(171, 'Amany Khalid - Laravel Developer ', 'Amany Khalid - Laravel Developer '),
(172, '| ', '| '),
(173, 'Uvais Kt - Laravel Developer - Toolyt ', 'Uvais Kt - Laravel Developer - Toolyt '),
(174, 'Tarun Kumar Devan ', 'Tarun Kumar Devan '),
(175, '| ', '| '),
(176, 'Kalpesh Desai ', 'Kalpesh Desai '),
(177, 'Basharat Nazeer - Laravel Developer - Swift Solutions ', 'Basharat Nazeer - Laravel Developer - Swift Solutions '),
(178, 'Hamid Mottaghi Pishe - Laravel Developer ', 'Hamid Mottaghi Pishe - Laravel Developer '),
(179, '| ', '| '),
(180, 'Mohamed Aboualama ', 'Mohamed Aboualama '),
(181, 'Usama Bin Siddique ', 'Usama Bin Siddique '),
(182, 'Dipesh Kumar - Laravel Developer ', 'Dipesh Kumar - Laravel Developer '),
(183, 'Aqil Salahov - Fullstack Laravel Developer ', 'Aqil Salahov - Fullstack Laravel Developer '),
(184, '| ', '| '),
(185, 'Ali Azgor Hridoy - Laravel Developer - Upwork ', 'Ali Azgor Hridoy - Laravel Developer - Upwork '),
(186, 'Jalal Khan ', 'Jalal Khan '),
(187, 'Rizwan Akram - Laravel Developer ', 'Rizwan Akram - Laravel Developer '),
(188, '| ', '| '),
(189, 'Saba Pervaz - Laravel Developer - ISKAAN ', 'Saba Pervaz - Laravel Developer - ISKAAN '),
(190, 'Laravel Tutorial - Video Producer ', 'Laravel Tutorial - Video Producer '),
(191, '| ', '| '),
(192, 'Hasnain Abbas - Laravel Developer - Upwork ', 'Hasnain Abbas - Laravel Developer - Upwork '),
(193, 'Mian Ali ', 'Mian Ali '),
(194, '| ', '| '),
(195, 'Ezz Arqan - PHP Laravel Developer ', 'Ezz Arqan - PHP Laravel Developer '),
(196, '| ', '| '),
(197, 'Reza Asgharzadeh - Laravel Developer - Freelance ', 'Reza Asgharzadeh - Laravel Developer - Freelance '),
(198, 'Nuno Maduro - Software Engineer - Laravel ', 'Nuno Maduro - Software Engineer - Laravel '),
(199, 'Yarline C. - Web Developer ', 'Yarline C. - Web Developer '),
(200, '| ', '| '),
(201, 'tamer alyazory - Laravel Developer - Upwork ', 'tamer alyazory - Laravel Developer - Upwork '),
(202, 'Djery DIETCHI ', 'Djery DIETCHI '),
(203, '| ', '| '),
(204, 'waqar khan - Laravel Developer - Skyline4digital ', 'waqar khan - Laravel Developer - Skyline4digital '),
(205, 'James Brooks - Laravel ', 'James Brooks - Laravel '),
(206, 'Amir Shokoohi - PHP laravel Web Developer ', 'Amir Shokoohi - PHP laravel Web Developer '),
(207, 'Wissam M. Badwan - Back End Developer - Laravel ', 'Wissam M. Badwan - Back End Developer - Laravel '),
(208, 'Youness chakir - Laravel Developer ', 'Youness chakir - Laravel Developer '),
(209, 'laramotely remote Laravel jobs ', 'laramotely remote Laravel jobs '),
(210, 'Fabrice Gole ', 'Fabrice Gole '),
(211, '| ', '| '),
(212, 'Laravel Punjab   ', 'Laravel Punjab   '),
(213, 'Taylor Otwell ', 'Taylor Otwell '),
(214, 'Pierre Lusignan - Programmeur PHP Laravel ', 'Pierre Lusignan - Programmeur PHP Laravel '),
(215, 'Jess Archer - Core team ', 'Jess Archer - Core team '),
(216, '| ', '| '),
(217, 'Parisa Maraghi - Laravel Developer ', 'Parisa Maraghi - Laravel Developer '),
(218, '| ', '| '),
(219, 'Ali Ahmad ', 'Ali Ahmad '),
(220, 'Muhammad Sadeeq - PHP Laravel Developer ', 'Muhammad Sadeeq - PHP Laravel Developer '),
(221, 'Mior Muhammad Zaki Mior Khairuddin ', 'Mior Muhammad Zaki Mior Khairuddin '),
(222, 'Laravel Mumbai - Laravel Community - Laravel India ', 'Laravel Mumbai - Laravel Community - Laravel India '),
(223, 'Mahdi Beyki - Developer - Laravel ', 'Mahdi Beyki - Developer - Laravel '),
(224, 'Mejdi Provolija ', 'Mejdi Provolija '),
(225, 'Mehran Khani ', 'Mehran Khani '),
(226, 'Eric Barnes - Owner - Laravel News ', 'Eric Barnes - Owner - Laravel News '),
(227, 'Amany Abotalib ', 'Amany Abotalib '),
(228, 'Laravel devloper - test ', 'Laravel devloper - test '),
(229, 'Ali Mohammadi ', 'Ali Mohammadi '),
(230, 'aya php laravel developer ', 'aya php laravel developer '),
(231, 'Laravel Tarun - Laravel Developer ', 'Laravel Tarun - Laravel Developer '),
(232, '| ', '| '),
(233, 'Abdul Haseeb - Laravel Developer - CodesOrbit ', 'Abdul Haseeb - Laravel Developer - CodesOrbit '),
(234, 'Laravel Developer ', 'Laravel Developer '),
(235, '| ', '| '),
(236, 'Mohammad Umar - Laravel Developer ', 'Mohammad Umar - Laravel Developer '),
(237, 'Waseem Ali - Laravel Developer - United soft labs ', 'Waseem Ali - Laravel Developer - United soft labs '),
(238, 'Muhammad Abubakar - Laravel Developer ', 'Muhammad Abubakar - Laravel Developer '),
(239, 'Laravel Experts Dhaka ', 'Laravel Experts Dhaka '),
(240, 'hassan mahmmud ', 'hassan mahmmud '),
(241, '| ', '| '),
(242, 'Parsa Khaleghi - Laravel Developer - Freelance ', 'Parsa Khaleghi - Laravel Developer - Freelance '),
(243, 'Hala Lubbad - Laravel Developer ', 'Hala Lubbad - Laravel Developer '),
(244, '| ', '| '),
(245, 'Eric Yonathan ', 'Eric Yonathan '),
(246, 'Abu Nayem - Laravel Developer - Spondon ', 'Abu Nayem - Laravel Developer - Spondon '),
(247, 'Laravel Developer - Web Developer - CGIT ', 'Laravel Developer - Web Developer - CGIT '),
(248, 'Arslan Anjum - Laravel Developer ', 'Arslan Anjum - Laravel Developer '),
(249, 'Sandip Andani - PHP Laravel Developer ', 'Sandip Andani - PHP Laravel Developer '),
(250, 'Aamir Kamal - Php laravel developer - TRZ Technologies ', 'Aamir Kamal - Php laravel developer - TRZ Technologies '),
(251, 'Hamza Mughal - Laravel Developer ', 'Hamza Mughal - Laravel Developer '),
(252, 'Laravel Developer - PHP Developer - wibs.nl ', 'Laravel Developer - PHP Developer - wibs.nl '),
(253, 'Siddique Akbar - Laravel Developer - Mashkraft ', 'Siddique Akbar - Laravel Developer - Mashkraft '),
(254, 'Bimal Wosti - Mid level Laravel Developer ', 'Bimal Wosti - Mid level Laravel Developer '),
(255, 'Bita Daghestani - Laravel Developer ', 'Bita Daghestani - Laravel Developer '),
(256, 'narges moghaddasi - Laravel Developer - Azma Group ', 'narges moghaddasi - Laravel Developer - Azma Group '),
(257, 'Amir Yousefi ', 'Amir Yousefi '),
(258, 'Ali Bayat ', 'Ali Bayat '),
(259, 'https://www.linkedin.com/in/mejdi-provolija-a8085b221', 'https://www.linkedin.com/in/mejdi-provolija-a8085b221'),
(260, 'https://www.linkedin.com/in/moauya-meghari', 'https://www.linkedin.com/in/moauya-meghari'),
(261, 'https://www.linkedin.com/in/wesley-martin-18a41047', 'https://www.linkedin.com/in/wesley-martin-18a41047'),
(262, 'https://www.linkedin.com/in/tarun-kumar-devan-971071113', 'https://www.linkedin.com/in/tarun-kumar-devan-971071113'),
(263, 'https://www.linkedin.com/in/youness-chakir-1b3507230', 'https://www.linkedin.com/in/youness-chakir-1b3507230'),
(264, 'https://www.linkedin.com/in/taylorotwell', 'https://www.linkedin.com/in/taylorotwell'),
(265, 'https://www.linkedin.com/in/mejdi-provolija-a8085b221', 'https://www.linkedin.com/in/mejdi-provolija-a8085b221'),
(266, 'https://www.linkedin.com/in/-ericlbarnes', 'https://www.linkedin.com/in/-ericlbarnes'),
(267, 'https://www.linkedin.com/in/eric-yonathan-a0345ab5', 'https://www.linkedin.com/in/eric-yonathan-a0345ab5'),
(268, 'https://www.linkedin.com/in/arslan-anjum-318a36189', 'https://www.linkedin.com/in/arslan-anjum-318a36189');

-- --------------------------------------------------------

--
-- Structure de la table `myprofile`
--

DROP TABLE IF EXISTS `myprofile`;
CREATE TABLE IF NOT EXISTS `myprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `myprofile`
--

INSERT INTO `myprofile` (`id`, `username`, `location`, `title`) VALUES
(1, 'Ayoub SMAYEN', 'Gouvernorat Nabeul, Tunisie ', 'ayoub.smayen@esprit.tn Étudiant(e) à Ecole Supérieure Privée d\'Ingénierie et de Technologies - ESPRIT');

-- --------------------------------------------------------

--
-- Structure de la table `profileuser`
--

DROP TABLE IF EXISTS `profileuser`;
CREATE TABLE IF NOT EXISTS `profileuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `links` varchar(250) NOT NULL,
  `skills` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `profileuser`
--

INSERT INTO `profileuser` (`id`, `title`, `links`, `skills`) VALUES
(1, 'Mohamed Omrani - Full Stack Developer (Angular / Java)', 'https://tn.linkedin.com/in/mohamed-omrani-a175271ab/en', 'https://tn.linkedin.com/in/mohamed-omrani-a175271ab/en'),
(2, 'Shahab Farahi - Java Developer (Spring Boot)', 'https://ir.linkedin.com/in/shahab-farahi-613b58127?trk=people_directory', 'https://ir.linkedin.com/in/shahab-farahi-613b58127?trk=people_directory'),
(3, 'Muhammad Nauman Nawaz - Sr. Java Developer', 'https://pk.linkedin.com/in/muhammadnoumannawaz', 'https://pk.linkedin.com/in/muhammadnoumannawaz'),
(4, 'Sheharyar tariq - Java Spring Boot Developer', 'https://pk.linkedin.com/in/sheharyar-tariq-496382b1', 'https://pk.linkedin.com/in/sheharyar-tariq-496382b1'),
(5, 'Shreya Agarwal - Java Spring Boot Developer - Avafive', 'https://ae.linkedin.com/in/agarwalshreya28', 'https://ae.linkedin.com/in/agarwalshreya28'),
(6, 'Rachida Engineer - Senior Java developer (Spring boot)', 'https://dz.linkedin.com/in/rachida-engineer-090a121b0', 'https://dz.linkedin.com/in/rachida-engineer-090a121b0'),
(7, 'Zeinab Shajarkar - Java Software Developer ( Spring boot )', 'https://ir.linkedin.com/in/zeinab-shajarkar-9759a4200', 'https://ir.linkedin.com/in/zeinab-shajarkar-9759a4200'),
(8, 'Neha Yadav - Java Developer - Wipro Limited', 'https://in.linkedin.com/in/neha-yadav-03459a1b7', 'https://in.linkedin.com/in/neha-yadav-03459a1b7'),
(9, 'Praveen Kumar Gambhirrao ✔ SDE Java Developer', 'https://in.linkedin.com/in/java-developer', 'https://in.linkedin.com/in/java-developer'),
(10, 'Java developer', 'https://in.linkedin.com/in/java-developer-994240239', 'https://in.linkedin.com/in/java-developer-994240239'),
(11, 'Mayur Gajapure', 'https://in.linkedin.com/in/mgajapure', 'https://in.linkedin.com/in/mgajapure'),
(12, 'Asif Ali - Java Developer - Pak Retailers', 'https://pk.linkedin.com/in/asif-ali-50b6601b4', 'https://pk.linkedin.com/in/asif-ali-50b6601b4'),
(13, 'vinoth kumar - Java and Spring boot developer - Freelance', 'https://in.linkedin.com/in/vinoth-kumar-956b97247', 'https://in.linkedin.com/in/vinoth-kumar-956b97247'),
(14, 'Soumyajit Das', 'https://in.linkedin.com/in/soumyajit-das-818903143', 'https://in.linkedin.com/in/soumyajit-das-818903143'),
(15, 'KARTHICK S - Java spring boot Developer', 'https://in.linkedin.com/in/karthick-s-262ba91bb?trk=public_profile_browsemap', 'https://in.linkedin.com/in/karthick-s-262ba91bb?trk=public_profile_browsemap'),
(16, 'Jawad Tariq', 'https://de.linkedin.com/in/jawadtariq96', 'https://de.linkedin.com/in/jawadtariq96'),
(17, 'Antonio De Fazio - Consulente Sviluppatore Web Java', 'https://www.linkedin.com/in/antoniodefazio-java-python-developer-sviluppatore-trainer-docente/en', 'https://www.linkedin.com/in/antoniodefazio-java-python-developer-sviluppatore-trainer-docente/en'),
(18, '‍???? Subha Chandra - Senior Java Engineer - QuEST Global', 'https://in.linkedin.com/in/jsubhachandra', 'https://in.linkedin.com/in/jsubhachandra'),
(19, 'SANJAY RAI - JAVA DEVELOPER with 3+ years of ...', 'https://in.linkedin.com/in/sanjay-rai-333213234?trk=org-employees', 'https://in.linkedin.com/in/sanjay-rai-333213234?trk=org-employees'),
(20, 'Shubham Gade - Spring boot java developer', 'https://in.linkedin.com/in/shubham-gade-a810b6263', 'https://in.linkedin.com/in/shubham-gade-a810b6263'),
(21, 'Muhammad Sufyan - Consultant - Application Development', 'https://pk.linkedin.com/in/sufyan-ayub', 'https://pk.linkedin.com/in/sufyan-ayub'),
(22, 'Paridhi Soni - Java Developer - System Level Solutions', 'https://in.linkedin.com/in/paridhi-soni-5937b348', 'https://in.linkedin.com/in/paridhi-soni-5937b348'),
(23, 'Swapnil Jadhav', 'https://in.linkedin.com/in/swapnil-jadhav-98b454130', 'https://in.linkedin.com/in/swapnil-jadhav-98b454130'),
(24, 'Siwar Sboui - Java Developer for Thales DIS - WEVIOO', 'https://tn.linkedin.com/in/siwar-sboui-ab54bb171', 'https://tn.linkedin.com/in/siwar-sboui-ab54bb171'),
(25, 'SHUBHAM KUMAR SINGH', 'https://in.linkedin.com/in/shubham-kumar-singh-528773253', 'https://in.linkedin.com/in/shubham-kumar-singh-528773253'),
(26, 'Muhammad Imran - Java Software Engineer', 'https://pk.linkedin.com/in/imrandev', 'https://pk.linkedin.com/in/imrandev'),
(27, 'Elijah Taylor - Java Developer - Freelance', 'https://www.linkedin.com/in/elijah-job-taylor', 'https://www.linkedin.com/in/elijah-job-taylor'),
(28, 'Vinod Kumawat - Software Engineer II - Worldpay', 'https://in.linkedin.com/in/vinodkumawat06', 'https://in.linkedin.com/in/vinodkumawat06'),
(29, 'Dipak Patil - Senior Software Developer', 'https://www.linkedin.com/in/dipak-patil-java-dev', 'https://www.linkedin.com/in/dipak-patil-java-dev'),
(30, 'Konstantin Kudryavtsev - Middle Java Developer', 'https://kz.linkedin.com/in/kkudryavtsevdev', 'https://kz.linkedin.com/in/kkudryavtsevdev'),
(31, 'Md Ashhar - Patna, Bihar, India | Professional Profile', 'https://in.linkedin.com/in/md-ashhar-368411192', 'https://in.linkedin.com/in/md-ashhar-368411192'),
(32, 'Manjunath Achar', 'https://www.linkedin.com/in/manjunath-achar-65748711b', 'https://www.linkedin.com/in/manjunath-achar-65748711b'),
(33, 'Harshavardhan K', 'https://www.linkedin.com/in/harshavardhan-k-8a959123b?trk=public_profile_samename-profile', 'https://www.linkedin.com/in/harshavardhan-k-8a959123b?trk=public_profile_samename-profile'),
(34, 'Nitin Agrawal', 'https://in.linkedin.com/in/nitin-agrawal-1b6745107', 'https://in.linkedin.com/in/nitin-agrawal-1b6745107'),
(35, 'Jitendra Kumar - Java Developer - Unisys India', 'https://in.linkedin.com/in/jitendra-kumar-520240275', 'https://in.linkedin.com/in/jitendra-kumar-520240275'),
(36, 'Habib Rehman', 'https://pk.linkedin.com/in/habib-rehman-software-engineer', 'https://pk.linkedin.com/in/habib-rehman-software-engineer'),
(37, 'Prathamesh Wate - Java Developer Trainee - Geekster', 'https://in.linkedin.com/in/prathamesh-wate-41190a218', 'https://in.linkedin.com/in/prathamesh-wate-41190a218'),
(38, 'Muhammad Nouman Shoukat', 'https://pk.linkedin.com/in/muhammad-nouman-shoukat-32a149137', 'https://pk.linkedin.com/in/muhammad-nouman-shoukat-32a149137'),
(39, 'Rashid Khan - Java & Spring Boot Application Developer', 'https://in.linkedin.com/in/rashid-khan-38178a110', 'https://in.linkedin.com/in/rashid-khan-38178a110'),
(40, 'sudeep cv', 'https://in.linkedin.com/in/sudeepcv', 'https://in.linkedin.com/in/sudeepcv'),
(41, 'Jaya Ghagare - Java Spring Boot Developer', 'https://in.linkedin.com/in/jaya-ghagare-401b23270', 'https://in.linkedin.com/in/jaya-ghagare-401b23270'),
(42, 'Venkat Praveen - Lead Java Spring Boot Developer', 'https://www.linkedin.com/in/venkat-praveen-5aa689157', 'https://www.linkedin.com/in/venkat-praveen-5aa689157'),
(43, 'Shivansh Bajpai', 'https://in.linkedin.com/in/shivansh-bajpai-6897a317b', 'https://in.linkedin.com/in/shivansh-bajpai-6897a317b'),
(44, 'Vishal Gupta - Sr Java Developer - Privacera', 'https://in.linkedin.com/in/vishal-gupta-a16a4b82', 'https://in.linkedin.com/in/vishal-gupta-a16a4b82'),
(45, 'Avinash K V - Spring Boot Developer - GJ Global IT Ventures', 'https://in.linkedin.com/in/avinash-k-v-b498a51b7', 'https://in.linkedin.com/in/avinash-k-v-b498a51b7'),
(46, 'Ankit Kumar - Software Engineer - eClinicalWorks', 'https://in.linkedin.com/in/ankit-kumar-8ba3a5250', 'https://in.linkedin.com/in/ankit-kumar-8ba3a5250'),
(47, 'Abhinand K - Java Developer || Spring boot || SQL', 'https://in.linkedin.com/in/abhinand-k-92b97221b?trk=public_profile_browsemap', 'https://in.linkedin.com/in/abhinand-k-92b97221b?trk=public_profile_browsemap'),
(48, 'james Li - Java Developer - Hexaware Technologies', 'https://www.linkedin.com/in/james-li-610a0b237', 'https://www.linkedin.com/in/james-li-610a0b237'),
(49, 'Yogendra Saini - Java Spring Boot developer - Larch Soft ...', 'https://in.linkedin.com/in/yogendra-saini-050465220', 'https://in.linkedin.com/in/yogendra-saini-050465220'),
(50, 'Jaivigneshwaran R - Java/Spring Boot developer', 'https://in.linkedin.com/in/jaivigneshwaran-r-07296a223?trk=public_profile_browsemap', 'https://in.linkedin.com/in/jaivigneshwaran-r-07296a223?trk=public_profile_browsemap'),
(51, 'Jaykumar B. - Technology Consultant - Virtusa', 'https://in.linkedin.com/in/jaykumar-b-a489b7122', 'https://in.linkedin.com/in/jaykumar-b-a489b7122'),
(52, 'Gitanjali Gore - Java Springboot Developer', 'https://in.linkedin.com/in/gitanjali-gore-java-springboot-developer-61505312a', 'https://in.linkedin.com/in/gitanjali-gore-java-springboot-developer-61505312a'),
(53, 'Jayesh Bari - Pune, Maharashtra, India | Professional Profile', 'https://in.linkedin.com/in/jayesh-bari-029002204', 'https://in.linkedin.com/in/jayesh-bari-029002204'),
(54, 'Kiran kumar - Software Developer - Hubino', 'https://in.linkedin.com/in/kiran-kumar-720a2320b', 'https://in.linkedin.com/in/kiran-kumar-720a2320b'),
(55, 'Raja Mishra', 'https://in.linkedin.com/in/raja-mishra-010078190', 'https://in.linkedin.com/in/raja-mishra-010078190'),
(56, 'Rachit Agarwal', 'https://www.linkedin.com/in/rachit-agarwal-6aaa90a0', 'https://www.linkedin.com/in/rachit-agarwal-6aaa90a0'),
(57, 'Pavithra Reddy', 'https://in.linkedin.com/in/pavithra-reddy-48519b191', 'https://in.linkedin.com/in/pavithra-reddy-48519b191'),
(58, 'Suresh Kumar - Java spring boot developer - TGS', 'https://in.linkedin.com/in/suresh-kumar-745677270', 'https://in.linkedin.com/in/suresh-kumar-745677270'),
(59, 'Vivek Kumar - Java Spring Boot Developer - CorePeelers', 'https://in.linkedin.com/in/vivek-kumar-121219251', 'https://in.linkedin.com/in/vivek-kumar-121219251'),
(60, 'Teja K', 'https://in.linkedin.com/in/teja-k-279055206?trk=public_profile_browsemap', 'https://in.linkedin.com/in/teja-k-279055206?trk=public_profile_browsemap'),
(61, 'Hetal Patel - Java Developer - Call It Spring', 'https://ca.linkedin.com/in/hetal-patel-659511255', 'https://ca.linkedin.com/in/hetal-patel-659511255'),
(62, 'Virendra Rajput - Java Spring Boot Developer', 'https://in.linkedin.com/in/virendra-rajput-62a230240', 'https://in.linkedin.com/in/virendra-rajput-62a230240'),
(63, 'aarthy rajasekaran - java,springboot,java8,mysql', 'https://in.linkedin.com/in/aarthy-rajasekaran-b19501285', 'https://in.linkedin.com/in/aarthy-rajasekaran-b19501285'),
(64, 'Yang Rachel - Java Backend Developer - AT&T', 'https://www.linkedin.com/in/yang-rachel-7053a1274', 'https://www.linkedin.com/in/yang-rachel-7053a1274'),
(65, 'Yuvaraj Kumar - Chennai, Tamil Nadu, India', 'https://in.linkedin.com/in/yuvaraj-19a13817b', 'https://in.linkedin.com/in/yuvaraj-19a13817b'),
(66, 'Arjun Chandran - Java Spring Boot Intern - Brototype', 'https://in.linkedin.com/in/arjun-chandran-66a1b5194', 'https://in.linkedin.com/in/arjun-chandran-66a1b5194'),
(67, 'Ahssel Omar - Spring Boot Java Developer', 'https://www.linkedin.com/in/ahssel-omar-205101124', 'https://www.linkedin.com/in/ahssel-omar-205101124'),
(68, 'Karsten Silz', 'https://uk.linkedin.com/in/ksilz', 'https://uk.linkedin.com/in/ksilz'),
(69, 'Haben Araya', 'https://www.linkedin.com/in/habenabrhaley', 'https://www.linkedin.com/in/habenabrhaley'),
(70, 'kamal Ahmad - Java Back-end Developer - Crio.Do', 'https://in.linkedin.com/in/kamal-ahmad-92604b212', 'https://in.linkedin.com/in/kamal-ahmad-92604b212'),
(71, 'Omer E. - Falls Church, Virginia, United States', 'https://uk.linkedin.com/in/owermaiden80?trk=public_profile_browsemap', 'https://uk.linkedin.com/in/owermaiden80?trk=public_profile_browsemap'),
(72, 'Pabitra Kumar Sadhukhan - Java Spring Boot Developer', 'https://in.linkedin.com/in/pabitra-kumar-sadhukhan-b42646149', 'https://in.linkedin.com/in/pabitra-kumar-sadhukhan-b42646149'),
(73, 'gyan prakash - Java Developer - Network People Services ...', 'https://in.linkedin.com/in/gyan-prakash-a71773109', 'https://in.linkedin.com/in/gyan-prakash-a71773109'),
(74, 'Gowtham Sp - Java Developer - IT Services and IT ...', 'https://in.linkedin.com/in/gowtham-sp-7456a8245', 'https://in.linkedin.com/in/gowtham-sp-7456a8245'),
(75, 'Vishal Singh - Java Developer - IntelliaTech Solutions Pvt. ...', 'https://in.linkedin.com/in/vishal-singh-7872b3137', 'https://in.linkedin.com/in/vishal-singh-7872b3137'),
(76, 'Ala Eddine Hmidi - Consultant Java Springboot Angular', 'https://www.linkedin.com/in/alaeddinehmidi/', 'https://www.linkedin.com/in/alaeddinehmidi/'),
(77, 'Gul.M Soomro - free lancing java developer (Spring boot) ...', 'https://pk.linkedin.com/in/gul-m-soomro-3b1725115', 'https://pk.linkedin.com/in/gul-m-soomro-3b1725115'),
(78, 'Muhammad Hashim', 'https://ae.linkedin.com/in/muhammad-hashim-285675114', 'https://ae.linkedin.com/in/muhammad-hashim-285675114'),
(79, 'Upendra Khodifad - Java/Spring Boot Developer - Freelancer', 'https://in.linkedin.com/in/upendra-khodifad-707748159', 'https://in.linkedin.com/in/upendra-khodifad-707748159'),
(80, 'Aakash Sharma - Java Developer - ANJ America', 'https://ca.linkedin.com/in/aakashharma', 'https://ca.linkedin.com/in/aakashharma'),
(81, 'Kushal Patel - Java Developer - PC Optimum', 'https://ca.linkedin.com/in/kushal-patel-57493a278', 'https://ca.linkedin.com/in/kushal-patel-57493a278'),
(82, 'Harish Kumar - Remote Full Stack Developer | Java', 'https://in.linkedin.com/in/harish-kumar-java-developer', 'https://in.linkedin.com/in/harish-kumar-java-developer'),
(83, 'Soniya VS - Software Developer - INNOBIZ', 'https://ae.linkedin.com/in/soniyavs', 'https://ae.linkedin.com/in/soniyavs'),
(84, 'Priyanka Kairomkonda - Senior Software Engineer', 'https://in.linkedin.com/in/priyanka-kairomkonda', 'https://in.linkedin.com/in/priyanka-kairomkonda'),
(85, 'SHAMIM AKHTAR - Java Developer, spring boot,database', 'https://in.linkedin.com/in/shamim-akhtar-0a3161143', 'https://in.linkedin.com/in/shamim-akhtar-0a3161143'),
(86, 'Varun Kumar - Looking for New Java Project Immediately', 'https://www.linkedin.com/in/varun-kumar-looking-for-new-java-project-immediately-15a392234', 'https://www.linkedin.com/in/varun-kumar-looking-for-new-java-project-immediately-15a392234'),
(87, 'Omkar SJ - Java Developer - Snipe Tech pvt Ltd', 'https://in.linkedin.com/in/omkar-sj-962829153', 'https://in.linkedin.com/in/omkar-sj-962829153'),
(88, 'Mahdi Tilab – Senior Java Developer – Solvians', 'https://de.linkedin.com/in/mahdi-tilab', 'https://de.linkedin.com/in/mahdi-tilab'),
(89, 'SACHIN VINAY - Java Developer - Dogma Systems', 'https://in.linkedin.com/in/sachinvinay', 'https://in.linkedin.com/in/sachinvinay'),
(90, 'Mainak Dutta', 'https://in.linkedin.com/in/mainak-dutta-70a635a1', 'https://in.linkedin.com/in/mainak-dutta-70a635a1'),
(91, 'Caio Martins - Senior Java Engineer and Tech Lead', 'https://be.linkedin.com/in/caio-martins-9a9aaa189', 'https://be.linkedin.com/in/caio-martins-9a9aaa189'),
(92, 'Shubham Jain - Senior Software Developer - Amazon', 'https://in.linkedin.com/in/shubham-jain--profile', 'https://in.linkedin.com/in/shubham-jain--profile'),
(93, 'Sergey M.', 'https://ca.linkedin.com/in/sergey-modin?trk=public_profile_browsemap', 'https://ca.linkedin.com/in/sergey-modin?trk=public_profile_browsemap'),
(94, 'Jincy v - Custom software Engineering Team lead', 'https://lt.linkedin.com/in/jincy-v-21659832', 'https://lt.linkedin.com/in/jincy-v-21659832'),
(95, 'Saqeeb Alam - Associate Software Engineer - Navaera ...', 'https://in.linkedin.com/in/saqeeb-alam-483762231', 'https://in.linkedin.com/in/saqeeb-alam-483762231'),
(96, 'Nidhi Rahangdale - Java Developer - Kangaroo Software', 'https://in.linkedin.com/in/nidhi-rahangdale', 'https://in.linkedin.com/in/nidhi-rahangdale'),
(97, 'A.C. Apps - Software Developer - IBM', 'https://www.linkedin.com/in/ac-apps', 'https://www.linkedin.com/in/ac-apps'),
(98, 'Michael Cho - Vancouver, British Columbia, Canada', 'https://hk.linkedin.com/in/michael-cho-4573ab20a', 'https://hk.linkedin.com/in/michael-cho-4573ab20a'),
(99, 'Nasim Ahmadi - Java-SpringBoot Software Developer', 'https://ir.linkedin.com/in/nasim-ahmadi-480a3721b', 'https://ir.linkedin.com/in/nasim-ahmadi-480a3721b'),
(100, 'San Deep - Full Stack Developer - USAA', 'https://www.linkedin.com/in/san-deep-3b45b518b', 'https://www.linkedin.com/in/san-deep-3b45b518b'),
(101, 'albert dcosta - java developer and php developer - technical', 'https://vi.linkedin.com/in/albert-dcosta-292a0566', 'https://vi.linkedin.com/in/albert-dcosta-292a0566'),
(102, 'Yuliy Polyakov - Java & PHP developer - WeCanDevelopIt', 'https://www.linkedin.com/in/yuliy-polyakov', 'https://www.linkedin.com/in/yuliy-polyakov'),
(103, 'TUSHAR JOSHI - java developer , mysql, php , android', 'https://in.linkedin.com/in/tushar-joshi-', 'https://in.linkedin.com/in/tushar-joshi-'),
(104, 'Developer Java-PHP - Senior java developer - Freelance', 'https://za.linkedin.com/in/developer-java-php-aba596165', 'https://za.linkedin.com/in/developer-java-php-aba596165'),
(105, 'Aleh Leushunou - PHP | Java developer - Playtika', 'https://by.linkedin.com/in/aleh-leushunou-4b0066130', 'https://by.linkedin.com/in/aleh-leushunou-4b0066130'),
(106, 'Rocky Wu - java developer,php developer - a College in ...', 'https://nz.linkedin.com/in/rocky-wu-25848982', 'https://nz.linkedin.com/in/rocky-wu-25848982'),
(107, 'Madhu Madi - java developer, php developer and web ...', 'https://in.linkedin.com/in/madhu-madi-9aa123aa', 'https://in.linkedin.com/in/madhu-madi-9aa123aa'),
(108, 'Martial Gouma - PHP, Java Developer - Assistechnologie.net', 'https://ci.linkedin.com/in/martial-gouma-600a9219', 'https://ci.linkedin.com/in/martial-gouma-600a9219'),
(109, 'Alireza Valipour - Java Developer - Ernyka Group', 'https://ir.linkedin.com/in/alireza-valipour', 'https://ir.linkedin.com/in/alireza-valipour'),
(110, 'Namrata Chopra.Namrata90 - php developer,java developer', 'https://in.linkedin.com/in/namrata-chopra-namrata90-51998363', 'https://in.linkedin.com/in/namrata-chopra-namrata90-51998363'),
(111, 'Mohammad Mazraeshahi - Java Developer', 'https://ir.linkedin.com/in/mohammad-mazraeshahi', 'https://ir.linkedin.com/in/mohammad-mazraeshahi'),
(112, 'Thanh Xuan Ta - Full Stack PHP Developer - eTech360', 'https://www.linkedin.com/in/thanhxuanta', 'https://www.linkedin.com/in/thanhxuanta'),
(113, 'Alexander Karpyuk - PHP/JAVA Developer - Фриланс', 'https://by.linkedin.com/in/alexander-karpyuk-609904142', 'https://by.linkedin.com/in/alexander-karpyuk-609904142'),
(114, 'Rich Dawson - PHP/Java Developer - Web Hosting', 'https://uk.linkedin.com/in/rich-dawson-80003612', 'https://uk.linkedin.com/in/rich-dawson-80003612'),
(115, 'Luong Le - Java PHP Developer - VISG', 'https://vn.linkedin.com/in/luong-le-670a2426', 'https://vn.linkedin.com/in/luong-le-670a2426'),
(116, 'Wei Hu - PHP and Java developer - Blue Glue Pty Ltd', 'https://au.linkedin.com/in/wei-hu-09652593', 'https://au.linkedin.com/in/wei-hu-09652593'),
(117, 'Vamsi Krishna - PHP and Java Developer - STRATAGEEKS', 'https://in.linkedin.com/in/vamsi-krishna-38035b72', 'https://in.linkedin.com/in/vamsi-krishna-38035b72'),
(118, 'Deepa Toroji - PHP Developer,java developer', 'https://in.linkedin.com/in/deepa-toroji-64449a18a', 'https://in.linkedin.com/in/deepa-toroji-64449a18a'),
(119, 'SRIDHAR VARIGANJI - HTML, PHP and JAVA Programmer', 'https://in.linkedin.com/in/sridhar-variganji-03242118b', 'https://in.linkedin.com/in/sridhar-variganji-03242118b'),
(120, 'Suthan Raj - Java Developer - JSpiders - Training & ...', 'https://in.linkedin.com/in/suthan-raj-2824a9213', 'https://in.linkedin.com/in/suthan-raj-2824a9213'),
(121, 'Ly Phan - PHP, JAVA DEVELOPER - NINE PLUS SOLUTION', 'https://vn.linkedin.com/in/ly-phan-818054248', 'https://vn.linkedin.com/in/ly-phan-818054248'),
(122, 'Sagar Lohe - Java/PHP Developer - Weave Technology ...', 'https://in.linkedin.com/in/sagar-lohe-72143b178', 'https://in.linkedin.com/in/sagar-lohe-72143b178'),
(123, 'php developer Raj Vardhan - Software Engineer', 'https://in.linkedin.com/in/php-developer-raj-vardhan-533751128', 'https://in.linkedin.com/in/php-developer-raj-vardhan-533751128'),
(124, 'Harish Kumar - Remote Full Stack Developer | Java', 'https://in.linkedin.com/in/harish-kumar-java-developer', 'https://in.linkedin.com/in/harish-kumar-java-developer'),
(125, 'Pankaj Dantani - PHP Developer - IT Company', 'https://in.linkedin.com/in/pankaj-dantani-bb142115b', 'https://in.linkedin.com/in/pankaj-dantani-bb142115b'),
(126, 'smita patil - PHP,JAVA developer - shree keshar', 'https://in.linkedin.com/in/smita-patil-85293661?trk=public_profile_browsemap_profile-result-card_result-card_full-click', 'https://in.linkedin.com/in/smita-patil-85293661?trk=public_profile_browsemap_profile-result-card_result-card_full-click'),
(127, 'Nipa Modi - PHP Developer,android, Java developer', 'https://in.linkedin.com/in/nipa-modi-181268202', 'https://in.linkedin.com/in/nipa-modi-181268202'),
(128, 'Kevin Beken - Technical Lead Cloud Development', 'https://be.linkedin.com/in/kevin-beken-806468b', 'https://be.linkedin.com/in/kevin-beken-806468b'),
(129, 'Ivaylo Penev - PHP Developer - Daniel Standard', 'https://bg.linkedin.com/in/ivaylo-penev-46b157b0', 'https://bg.linkedin.com/in/ivaylo-penev-46b157b0'),
(130, 'Vu Dang - PHP Developer - Nguyen Hoang Group', 'https://vn.linkedin.com/in/vu-dang-42b61286', 'https://vn.linkedin.com/in/vu-dang-42b61286'),
(131, 'Jatin Chauhan - mid level developer - BAMKO', 'https://in.linkedin.com/in/jin-chauhan', 'https://in.linkedin.com/in/jin-chauhan'),
(132, 'MrDev Php - Java Developer - Vietnam SMS Marketing', 'https://vn.linkedin.com/in/mrdev-php-631b15136', 'https://vn.linkedin.com/in/mrdev-php-631b15136'),
(133, 'Paulo Lima - Java Developer - Banco do Brasil', 'https://br.linkedin.com/in/paulovitorbal/en', 'https://br.linkedin.com/in/paulovitorbal/en'),
(134, 'Sergei Martinov - PHP Web Developer - Creatizmo', 'https://bg.linkedin.com/in/sergei-martinov-2872b5197', 'https://bg.linkedin.com/in/sergei-martinov-2872b5197'),
(135, 'ןєєtєภ๔гค ן๏รђเ - PHP Developer - Kataak.com', 'https://in.linkedin.com/in/%D7%9F%D1%94%D1%94t%D1%94%E0%B8%A0%E0%B9%94%D0%B3%E0%B8%84-%D7%9F%E0%B9%8F%E0%B8%A3%D1%92%E0%B9%80-57839839', 'https://in.linkedin.com/in/%D7%9F%D1%94%D1%94t%D1%94%E0%B8%A0%E0%B9%94%D0%B3%E0%B8%84-%D7%9F%E0%B9%8F%E0%B8%A3%D1%92%E0%B9%80-57839839'),
(136, 'Sneha Dhadge - Pune, Maharashtra, India', 'https://in.linkedin.com/in/sneha-dhadge-2b771a239', 'https://in.linkedin.com/in/sneha-dhadge-2b771a239'),
(137, 'Sonakshi Jaiswal - Software Engineer', 'https://in.linkedin.com/in/sonakshi-jaiswal-54882b166', 'https://in.linkedin.com/in/sonakshi-jaiswal-54882b166'),
(138, 'Basharat Ali', 'https://pk.linkedin.com/in/basharat-ali-43946038', 'https://pk.linkedin.com/in/basharat-ali-43946038'),
(139, 'Mickey Matthews - Full Stack Developer ( .NET, PHP, JAVA ...', 'https://www.linkedin.com/in/mickey-matthews-18b623202', 'https://www.linkedin.com/in/mickey-matthews-18b623202'),
(140, 'Parul Goyal - PHP Developer - Thomson Digital', 'https://in.linkedin.com/in/parul9goyal', 'https://in.linkedin.com/in/parul9goyal'),
(141, 'Sivakumari S. - Senior java developer - Y-cam Solutions Ltd', 'https://uk.linkedin.com/in/sivakumari-s-26634792', 'https://uk.linkedin.com/in/sivakumari-s-26634792'),
(142, 'Divakar Babu - Developer in java,.NET ,PHP projects', 'https://in.linkedin.com/in/divakar-babu-337ba217', 'https://in.linkedin.com/in/divakar-babu-337ba217'),
(143, 'Parthiban P - Java Developer - Geetham Software Pvt. Ltd.', 'https://in.linkedin.com/in/parthiban-p-937161238?trk=public_profile_browsemap', 'https://in.linkedin.com/in/parthiban-p-937161238?trk=public_profile_browsemap'),
(144, 'Nabyendu Dey - Java Application Developer', 'https://in.linkedin.com/in/nabyendu-dey-b6b756114', 'https://in.linkedin.com/in/nabyendu-dey-b6b756114'),
(145, 'Hanna Seliverstova - Java / PHP Developer - QualityUnit', 'https://ua.linkedin.com/in/hanna-seliverstova-491a2795', 'https://ua.linkedin.com/in/hanna-seliverstova-491a2795'),
(146, 'Ravi Shanker - PHP/JAVA Developer', 'https://in.linkedin.com/in/ravi-shanker-77b66b19', 'https://in.linkedin.com/in/ravi-shanker-77b66b19'),
(147, 'Ricardo Poleo - Sr Java Software Developer - Abstracta', 'https://cl.linkedin.com/in/ricardopoleo/en', 'https://cl.linkedin.com/in/ricardopoleo/en'),
(148, 'Manoj Rajpoot - PHP Developer, Java developer', 'https://in.linkedin.com/in/manoj-rajpoot-886870193', 'https://in.linkedin.com/in/manoj-rajpoot-886870193'),
(149, 'Soroush Tayyebi - Senior Java Developer - VDI', 'https://ir.linkedin.com/in/soroush-tayyebi', 'https://ir.linkedin.com/in/soroush-tayyebi'),
(150, 'vikash gupta - php and java developer - Trimurty Infotech', 'https://in.linkedin.com/in/vikash-gupta-71359719', 'https://in.linkedin.com/in/vikash-gupta-71359719'),
(151, 'Shivani Jadhav - Jr. PHP Developer - ESDS Software ...', 'https://in.linkedin.com/in/shivani-jadhav-990494205', 'https://in.linkedin.com/in/shivani-jadhav-990494205'),
(152, 'John S. - PHP Web Developer - Xtreme Softech', 'https://in.linkedin.com/in/john-s-9800ab1a1?trk=public_profile_browsemap', 'https://in.linkedin.com/in/john-s-9800ab1a1?trk=public_profile_browsemap'),
(153, 'Anandharaj s - Juniour php developer - Eboat academy', 'https://in.linkedin.com/in/anandharaj-s-a77086153?trk=public_profile_samename-profile', 'https://in.linkedin.com/in/anandharaj-s-a77086153?trk=public_profile_samename-profile'),
(154, 'shameer rahman - php developer - Alrasbi design muscat', 'https://in.linkedin.com/in/shameer-rahman-39526823', 'https://in.linkedin.com/in/shameer-rahman-39526823'),
(155, 'sruthi reddy - PHP Developer - Apple', 'https://www.linkedin.com/in/sruthi-reddy-817562164', 'https://www.linkedin.com/in/sruthi-reddy-817562164'),
(156, 'sasmita mohanty - PHP developer - skynazar', 'https://in.linkedin.com/in/sasmita-mohanty-88a06036', 'https://in.linkedin.com/in/sasmita-mohanty-88a06036'),
(157, 'Sajjad Dehghani - Java Developer - Novin Kish Informatics ...', 'https://ir.linkedin.com/in/sajjaddehghani', 'https://ir.linkedin.com/in/sajjaddehghani'),
(158, 'winston mukwasi - software developer(php/java)', 'https://za.linkedin.com/in/winston-mukwasi-5698b72b', 'https://za.linkedin.com/in/winston-mukwasi-5698b72b'),
(159, 'Milad Aminzade - Java Developer - ERNYKA.HOLDING', 'https://ir.linkedin.com/in/milad-aminzade-a6b909103', 'https://ir.linkedin.com/in/milad-aminzade-a6b909103'),
(160, 'Momin Ahamed - Fresher - PHP and Java Developer', 'https://bd.linkedin.com/in/momin-ahamed-4aa832153', 'https://bd.linkedin.com/in/momin-ahamed-4aa832153'),
(161, 'Marko Antić - PHP Developer - Self employed', 'https://www.linkedin.com/in/marko-anti%C4%87-311190152', 'https://www.linkedin.com/in/marko-anti%C4%87-311190152'),
(162, 'Michael Oporto - PHP Developer - AIM', 'https://www.linkedin.com/in/michael-oporto-17aa328b', 'https://www.linkedin.com/in/michael-oporto-17aa328b'),
(163, 'Gichuki Eric - PHP, Java Developer - CloudDeck Tech', 'https://ke.linkedin.com/in/gichuki-eric-ba1890187', 'https://ke.linkedin.com/in/gichuki-eric-ba1890187'),
(164, 'Tehmina ghori', 'https://pk.linkedin.com/in/tehminaghori', 'https://pk.linkedin.com/in/tehminaghori'),
(165, 'Mohammadjavad Nasrolla - Java Developer', 'https://ir.linkedin.com/in/mohammadjavad-nasrolla-95a855200', 'https://ir.linkedin.com/in/mohammadjavad-nasrolla-95a855200'),
(166, 'Amir Abdolahi - PHP Developer - Taktaz', 'https://ir.linkedin.com/in/taktazgroup', 'https://ir.linkedin.com/in/taktazgroup'),
(167, 'Shreyans Kothari - WELLWIN INFOTECH', 'https://in.linkedin.com/in/shreyanskothari20', 'https://in.linkedin.com/in/shreyanskothari20'),
(168, 'Johnson Mercy Ibenye - Lead Java Developer', 'https://ng.linkedin.com/in/johnsonmercyi?trk=public_profile_browsemap', 'https://ng.linkedin.com/in/johnsonmercyi?trk=public_profile_browsemap'),
(169, 'Saeed Soltani - Java Developer - SnappPay', 'https://ir.linkedin.com/in/saeed-soltani-32253976', 'https://ir.linkedin.com/in/saeed-soltani-32253976'),
(170, 'Venture SoftwareTechnologies - PHP developer / android ...', 'https://in.linkedin.com/in/venture-softwaretechnologies-23a59689', 'https://in.linkedin.com/in/venture-softwaretechnologies-23a59689'),
(171, 'Bablu Singh - PHP Developer - OrangeSpike Inc', 'https://in.linkedin.com/in/bablu-singh-31969052', 'https://in.linkedin.com/in/bablu-singh-31969052'),
(172, 'Bogdan Skorokhodov - PHP Developer - ОТР', 'https://www.linkedin.com/in/bogdan-skorokhodov-a10802243', 'https://www.linkedin.com/in/bogdan-skorokhodov-a10802243'),
(173, 'Swamy Vnvs - PHP and Java Developer - Softima', 'https://in.linkedin.com/in/swamy-vnvs-01b51b17', 'https://in.linkedin.com/in/swamy-vnvs-01b51b17'),
(174, 'Alida Smith - Jr Full Stack PHP Developer - Vya', 'https://www.linkedin.com/in/alida-smith', 'https://www.linkedin.com/in/alida-smith'),
(175, 'Goran Banina - PHP Developer - Influendo', 'https://hr.linkedin.com/in/goran-banina-4a725452', 'https://hr.linkedin.com/in/goran-banina-4a725452'),
(176, 'Bhavesh Sangwan - Java/PHP Developer', 'https://in.linkedin.com/in/bhavesh-sangwan-69b64345', 'https://in.linkedin.com/in/bhavesh-sangwan-69b64345'),
(177, 'Akshay Son - Developer - Genome International', 'https://in.linkedin.com/in/akshay-son-9b8429249', 'https://in.linkedin.com/in/akshay-son-9b8429249'),
(178, 'neon rama - PHP and java developer - Virgo', 'https://in.linkedin.com/in/neon-rama-54a62614', 'https://in.linkedin.com/in/neon-rama-54a62614'),
(179, 'Ajay Singh - Senior Systems Engineer - Infosys', 'https://in.linkedin.com/in/ajay-singh-9009', 'https://in.linkedin.com/in/ajay-singh-9009'),
(180, 'muhammad habib - PHP , Android and Java Developer', 'https://pk.linkedin.com/in/muhammad-habib-3242961b5', 'https://pk.linkedin.com/in/muhammad-habib-3242961b5'),
(181, 'Meenu Rengaraj - Senior Systems Engineer - Infosys', 'https://www.linkedin.com/in/meenurengaraj', 'https://www.linkedin.com/in/meenurengaraj'),
(182, 'Piotr Szmuc - PHP Developer', 'https://uk.linkedin.com/in/piotr-szmuc-9038b936', 'https://uk.linkedin.com/in/piotr-szmuc-9038b936'),
(183, 'Lobe Serge - Cloud Native Java Developer - tech11 GmbH', 'https://cm.linkedin.com/in/lobe-serge-03ba28178', 'https://cm.linkedin.com/in/lobe-serge-03ba28178'),
(184, 'Gennadiy Kostyukov - PHP Web Developer', 'https://www.linkedin.com/in/gennadiy-kostyukov-37b3214', 'https://www.linkedin.com/in/gennadiy-kostyukov-37b3214'),
(185, 'seng wethtorang - Java Developer - Asycuda', 'https://www.linkedin.com/in/seng-wethtorang-9720b412b', 'https://www.linkedin.com/in/seng-wethtorang-9720b412b'),
(186, 'Repin Egor - Full-stack Developer', 'https://md.linkedin.com/in/repin-egor-31b6ba260', 'https://md.linkedin.com/in/repin-egor-31b6ba260'),
(187, 'Zeeshan Ali - PHP Programmer - intelligent', 'https://in.linkedin.com/in/zeeshan-ali-22212118b', 'https://in.linkedin.com/in/zeeshan-ali-22212118b'),
(188, 'picasa morgan - Junior Java Developer - 123', 'https://be.linkedin.com/in/picasa-morgan-73793517a', 'https://be.linkedin.com/in/picasa-morgan-73793517a'),
(189, 'Pranjal Kaduskar - Java Developer - Infosys', 'https://in.linkedin.com/in/pranjal-kaduskar-0283b3249', 'https://in.linkedin.com/in/pranjal-kaduskar-0283b3249'),
(190, 'Mayank CH - PHP Developer - ShivSys', 'https://in.linkedin.com/in/mayank-ch-49ab07231', 'https://in.linkedin.com/in/mayank-ch-49ab07231'),
(191, 'PerlyPeh Ee - Java Developer - ResMed', 'https://www.linkedin.com/in/perlypeh-ee-45a3b729', 'https://www.linkedin.com/in/perlypeh-ee-45a3b729'),
(192, 'sunil sharma - PHP Developer - Jcentrix', 'https://in.linkedin.com/in/-sunilsharma', 'https://in.linkedin.com/in/-sunilsharma'),
(193, 'javacourse blog - java developer - freelance', 'https://in.linkedin.com/in/javacourse', 'https://in.linkedin.com/in/javacourse'),
(194, 'Naresh khuriwal - PHP,JAVA ,ADNROID Developer', 'https://in.linkedin.com/in/naresh-khuriwal-bb0bb998', 'https://in.linkedin.com/in/naresh-khuriwal-bb0bb998'),
(195, 'Godstime ehizeex - Android and php And java programmer', 'https://gh.linkedin.com/in/godstime-ehizeex-9629b2170', 'https://gh.linkedin.com/in/godstime-ehizeex-9629b2170'),
(196, 'Sorkh Gol - Android Developer php java', 'https://ir.linkedin.com/in/sorkh-gol-502b50163', 'https://ir.linkedin.com/in/sorkh-gol-502b50163'),
(197, 'Vipul Jain - Kendriya Vidyalaya - Delhi, India', 'https://in.linkedin.com/in/vipul-jain29', 'https://in.linkedin.com/in/vipul-jain29'),
(198, 'Devang Soni - Surekha Technologies', 'https://in.linkedin.com/in/devang-soni-403a024b', 'https://in.linkedin.com/in/devang-soni-403a024b'),
(199, 'John Mendes - Maringá, Paraná, Brazil | Professional Profile', 'https://uk.linkedin.com/in/johnafmendes', 'https://uk.linkedin.com/in/johnafmendes'),
(200, 'Balázs Kirsching - Java Developer', 'https://hu.linkedin.com/in/bal%C3%A1zs-kirsching-66919674', 'https://hu.linkedin.com/in/bal%C3%A1zs-kirsching-66919674');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `FKhtvdquahe4gs3how6toa27s5q` FOREIGN KEY (`linked_in_id`) REFERENCES `candidate_linked_in` (`id`),
  ADD CONSTRAINT `FKqhppc6ebpi0j94530ftuuyldn` FOREIGN KEY (`job_post_id`) REFERENCES `job_post` (`id`);

--
-- Contraintes pour la table `blacklist`
--
ALTER TABLE `blacklist`
  ADD CONSTRAINT `FKbb0ir37x55ikvx7n4gx67flgd` FOREIGN KEY (`candidate_linked_in_id`) REFERENCES `candidate_linked_in` (`id`);

--
-- Contraintes pour la table `has_linked_in_skill`
--
ALTER TABLE `has_linked_in_skill`
  ADD CONSTRAINT `FK33tikpn1bwaaj9sjuemlpfpep` FOREIGN KEY (`linked_in_id`) REFERENCES `candidate_linked_in` (`id`),
  ADD CONSTRAINT `FKodqyr8l62in3s6adiplcllbtu` FOREIGN KEY (`linked_in_skill_id`) REFERENCES `linked_in_skill` (`id`);

--
-- Contraintes pour la table `job_requirement`
--
ALTER TABLE `job_requirement`
  ADD CONSTRAINT `FK65bfbe3ju4xhwoq3rutiaymp1` FOREIGN KEY (`job_post_id`) REFERENCES `job_post` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
