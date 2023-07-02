-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 06:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musikonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_album`
--

CREATE TABLE `tb_album` (
  `ID_ALBUM` varchar(15) NOT NULL,
  `ID_ARTIS` varchar(15) DEFAULT NULL,
  `NAMA_ALBUM` varchar(50) NOT NULL,
  `TOTAL_MUSIC` int(11) NOT NULL,
  `DATE_RILIS` date NOT NULL,
  `POPULER_ALBUM` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_album`
--

INSERT INTO `tb_album` (`ID_ALBUM`, `ID_ARTIS`, `NAMA_ALBUM`, `TOTAL_MUSIC`, `DATE_RILIS`, `POPULER_ALBUM`) VALUES
('ALB1', 'ART1', 'Red', 12, '2012-10-22', 1000),
('ALB10', 'ART10', '#3', 21, '2012-09-07', 1009),
('ALB11', 'ART11', 'A Head Full Of Dream ', 22, '2015-12-04', 1010),
('ALB12', 'ART12', 'V', 23, '2014-08-29', 1011),
('ALB13', 'ART13', 'memories Do Not Open', 24, '2017-04-07', 1012),
('ALB14', 'ART14', 'Ambitions', 25, '2017-01-13', 1013),
('ALB15', 'ART15', 'Born Pink', 26, '2017-08-28', 1014),
('ALB16', 'ART16', 'MonoKrom', 27, '2016-05-19', 1015),
('ALB17', 'ART17', 'Perayaan Patah Hati', 28, '2011-05-21', 1016),
('ALB18', 'ART18', 'Daydream', 29, '2016-09-21', 1017),
('ALB19', 'ART19', 'Love Yourself', 30, '2018-05-18', 1018),
('ALB2', 'ART2', 'Divide ', 13, '2017-03-03', 1001),
('ALB20', 'ART20', 'Tempat Aku Pulang', 31, '2014-11-07', 1019),
('ALB3', 'ART3', 'That\'s The Spirit', 14, '2015-09-11', 1002),
('ALB4', 'ART4', '20/01/1900', 15, '2011-01-24', 1003),
('ALB5', 'ART5', 'Voicenotes', 16, '2018-05-11', 1004),
('ALB6', 'ART6', 'Midnight Memories', 17, '2013-11-25', 1005),
('ALB7', 'ART7', 'Justice', 18, '2021-03-19', 1006),
('ALB8', 'ART8', 'Meteora', 19, '2003-03-25', 1007),
('ALB9', 'ART9', 'illuminate', 20, '2016-09-23', 1008);

-- --------------------------------------------------------

--
-- Table structure for table `tb_artis`
--

CREATE TABLE `tb_artis` (
  `ID_ARTIS` varchar(15) NOT NULL,
  `NAMA_ARTIS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_artis`
--

INSERT INTO `tb_artis` (`ID_ARTIS`, `NAMA_ARTIS`) VALUES
('ART1', 'Taylor Swift'),
('ART10', 'The Script'),
('ART11', 'Coldplay'),
('ART12', 'Maroon 5'),
('ART13', 'The Chainsmokers'),
('ART14', 'One Ok Rock'),
('ART15', 'Black Pink'),
('ART16', 'Tulus'),
('ART17', 'For Revenge'),
('ART18', 'Aimer'),
('ART19', 'Bts'),
('ART2', 'Ed Sheeran'),
('ART20', 'Fiersa Besari'),
('ART3', 'Bring Me To The Horizon'),
('ART4', 'Adele'),
('ART5', 'Charlie Puth'),
('ART6', 'One Direction'),
('ART7', 'Justin Bieber'),
('ART8', 'Linkin Park'),
('ART9', 'Shawn Mendes'),
('IdArtis', 'Nama Artis');

-- --------------------------------------------------------

--
-- Table structure for table `tb_country`
--

CREATE TABLE `tb_country` (
  `ID_COUNTRY` varchar(15) NOT NULL,
  `NAMA_COUNTRY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_country`
--

INSERT INTO `tb_country` (`ID_COUNTRY`, `NAMA_COUNTRY`) VALUES
('CTRY01', 'Amerika Serikat'),
('CTRY02', 'Inggris'),
('CTRY03', 'Kanada'),
('CTRY04', 'Irlandia'),
('CTRY05', 'Japan'),
('CTRY06', 'Korea'),
('CTRY07', 'Indonesia'),
('IdCountry', 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_musik`
--

CREATE TABLE `tb_detail_musik` (
  `ID_ARTIS` varchar(15) NOT NULL,
  `ID_MUSIC` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_detail_musik`
--

INSERT INTO `tb_detail_musik` (`ID_ARTIS`, `ID_MUSIC`) VALUES
('ART1', 'MSK1'),
('ART1', 'MSK2'),
('ART1', 'MSK3'),
('ART10', 'MSK27'),
('ART10', 'MSK28'),
('ART10', 'MSK29'),
('ART10', 'MSK30'),
('ART10', 'MSK31'),
('ART11', 'MSK32'),
('ART11', 'MSK33'),
('ART11', 'MSK37'),
('ART12', 'MSK34'),
('ART12', 'MSK35'),
('ART12', 'MSK36'),
('ART13', 'MSK22'),
('ART13', 'MSK37'),
('ART13', 'MSK38'),
('ART14', 'MSK39'),
('ART15', 'MSK40'),
('ART16', 'MSK41'),
('ART16', 'MSK46'),
('ART16', 'MSK47'),
('ART16', 'MSK48'),
('ART16', 'MSK49'),
('ART16', 'MSK50'),
('ART16', 'MSK51'),
('ART17', 'MSK42'),
('ART17', 'MSK52'),
('ART18', 'MSK43'),
('ART18', 'MSK53'),
('ART19', 'MSK44'),
('ART19', 'MSK54'),
('ART19', 'MSK55'),
('ART19', 'MSK56'),
('ART2', 'MSK2'),
('ART2', 'MSK4'),
('ART2', 'MSK5'),
('ART2', 'MSK6'),
('ART20', 'MSK45'),
('ART20', 'MSK57'),
('ART20', 'MSK58'),
('ART20', 'MSK59'),
('ART20', 'MSK60'),
('ART3', 'MSK10'),
('ART3', 'MSK7'),
('ART3', 'MSK8'),
('ART4', 'MSK11'),
('ART4', 'MSK12'),
('ART4', 'MSK9'),
('ART5', 'MSK13'),
('ART5', 'MSK14'),
('ART5', 'MSK15'),
('ART6', 'MSK16'),
('ART6', 'MSK17'),
('ART7', 'MSK18'),
('ART7', 'MSK20'),
('ART7', 'MSK21'),
('ART8', 'MSK19'),
('ART8', 'MSK23'),
('ART8', 'MSK24'),
('ART9', 'MSK25'),
('ART9', 'MSK26');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_playlist`
--

CREATE TABLE `tb_detail_playlist` (
  `ID_MUSIC` varchar(15) NOT NULL,
  `IDPLAYLIST` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_detail_playlist`
--

INSERT INTO `tb_detail_playlist` (`ID_MUSIC`, `IDPLAYLIST`) VALUES
('MSK1', 'PLY1'),
('MSK1', 'PLY11'),
('MSK10', 'PLY10'),
('MSK10', 'PLY5'),
('MSK11', 'PLY11'),
('MSK12', 'PLY12'),
('MSK13', 'PLY13'),
('MSK14', 'PLY14'),
('MSK15', 'PLY15'),
('MSK16', 'PLY1'),
('MSK16', 'PLY4'),
('MSK17', 'PLY2'),
('MSK18', 'PLY3'),
('MSK19', 'PLY4'),
('MSK2', 'PLY2'),
('MSK20', 'PLY12'),
('MSK20', 'PLY15'),
('MSK20', 'PLY5'),
('MSK21', 'PLY13'),
('MSK21', 'PLY2'),
('MSK21', 'PLY6'),
('MSK21', 'PLY8'),
('MSK22', 'PLY7'),
('MSK23', 'PLY6'),
('MSK23', 'PLY8'),
('MSK24', 'PLY9'),
('MSK25', 'PLY1'),
('MSK25', 'PLY10'),
('MSK25', 'PLY9'),
('MSK26', 'PLY11'),
('MSK27', 'PLY12'),
('MSK28', 'PLY13'),
('MSK29', 'PLY14'),
('MSK3', 'PLY14'),
('MSK3', 'PLY3'),
('MSK30', 'PLY15'),
('MSK31', 'PLY1'),
('MSK32', 'PLY2'),
('MSK32', 'PLY3'),
('MSK33', 'PLY3'),
('MSK34', 'PLY4'),
('MSK35', 'PLY5'),
('MSK36', 'PLY6'),
('MSK37', 'PLY7'),
('MSK38', 'PLY8'),
('MSK39', 'PLY9'),
('MSK4', 'PLY4'),
('MSK40', 'PLY10'),
('MSK41', 'PLY11'),
('MSK42', 'PLY12'),
('MSK43', 'PLY13'),
('MSK44', 'PLY14'),
('MSK45', 'PLY15'),
('MSK46', 'PLY1'),
('MSK47', 'PLY2'),
('MSK48', 'PLY3'),
('MSK49', 'PLY4'),
('MSK5', 'PLY5'),
('MSK50', 'PLY5'),
('MSK51', 'PLY6'),
('MSK52', 'PLY7'),
('MSK53', 'PLY7'),
('MSK53', 'PLY8'),
('MSK54', 'PLY9'),
('MSK55', 'PLY10'),
('MSK56', 'PLY11'),
('MSK57', 'PLY12'),
('MSK58', 'PLY13'),
('MSK59', 'PLY14'),
('MSK6', 'PLY6'),
('MSK60', 'PLY15'),
('MSK7', 'PLY7'),
('MSK8', 'PLY8'),
('MSK9', 'PLY9');

-- --------------------------------------------------------

--
-- Table structure for table `tb_genre`
--

CREATE TABLE `tb_genre` (
  `ID_GENRE` char(10) NOT NULL,
  `NAMA_GENRE` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_genre`
--

INSERT INTO `tb_genre` (`ID_GENRE`, `NAMA_GENRE`) VALUES
('GEN1', 'Country po'),
('GEN2', 'Pop'),
('GEN3', 'Pop rock'),
('GEN4', 'Rock'),
('GEN5', 'Alternativ'),
('GEN6', 'Soul; Pop'),
('GEN7', 'EDM'),
('GEN8', 'K-Pop'),
('GEN9', 'J-Pop');

-- --------------------------------------------------------

--
-- Table structure for table `tb_music`
--

CREATE TABLE `tb_music` (
  `ID_MUSIC` varchar(15) NOT NULL,
  `ID_ALBUM` varchar(15) DEFAULT NULL,
  `ID_COUNTRY` varchar(15) DEFAULT NULL,
  `ID_GENRE` char(10) DEFAULT NULL,
  `NAMA_MUSIC` varchar(50) NOT NULL,
  `LIRIK` text DEFAULT NULL,
  `DURASI` time NOT NULL,
  `DATE_RILIS` date NOT NULL,
  `POPULER_MUSIC` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_music`
--

INSERT INTO `tb_music` (`ID_MUSIC`, `ID_ALBUM`, `ID_COUNTRY`, `ID_GENRE`, `NAMA_MUSIC`, `LIRIK`, `DURASI`, `DATE_RILIS`, `POPULER_MUSIC`) VALUES
('MSK1', 'ALB1', 'CTRY01', 'GEN1', 'Red', 'Loving him is like driving a new Maserati', '03:43:00', '2012-10-22', 10000234),
('MSK10', 'ALB3', 'CTRY02', 'GEN5', 'Drown', 'Sometimes I get lonely, I keep waiting on you', '03:42:00', '2014-01-01', 10001053),
('MSK11', 'ALB4', 'CTRY02', 'GEN2', 'Rolling In The Deep', 'We could have had it all', '03:48:00', '2010-11-29', 10001144),
('MSK12', 'ALB4', 'CTRY02', 'GEN2', 'Don\'T You Remember', 'When will I see you again?', '04:03:00', '2011-01-24', 10001235),
('MSK13', 'ALB5', 'CTRY01', 'GEN2', 'Attention', 'You just want attention', '03:31:00', '2017-04-21', 10001326),
('MSK14', 'ALB5', 'CTRY01', 'GEN2', 'The Way I Am ', 'Maybe I\'m a little messed up', '03:06:00', '2018-05-03', 10001417),
('MSK15', 'ALB5', 'CTRY01', 'GEN2', 'How Long ', 'I\'ll admit, I was wrong', '03:17:00', '2017-10-05', 10001508),
('MSK16', 'ALB6', 'CTRY02', 'GEN2', 'Best Song Ever', 'And we danced all night to the best song ever', '03:22:00', '2013-07-22', 10001599),
('MSK17', 'ALB6', 'CTRY02', 'GEN2', 'You & I ', 'You and I, we don\'t wanna be like them', '03:56:00', '2014-04-18', 10001690),
('MSK18', 'ALB6', 'CTRY02', 'GEN2', 'Story Of My Life', 'The story of my life, I give her hope', '04:05:00', '2013-10-28', 10001781),
('MSK19', 'ALB7', 'CTRY02', 'GEN2', 'Ghost ', 'I keep going to the river to pray', '03:36:00', '2014-06-08', 10001872),
('MSK2', 'ALB1', 'CTRY01', 'GEN2', 'Everything Has Changed', 'All I feel in my stomach is butterflies', '04:05:00', '2012-10-22', 10000325),
('MSK20', 'ALB7', 'CTRY01', 'GEN2', 'Anyone', 'I\'d rather be anyone but me', '03:10:00', '2021-01-08', 10001963),
('MSK21', 'ALB7', 'CTRY01', 'GEN2', 'Hold On', 'I need you to hold on', '02:50:00', '2021-03-05', 10002054),
('MSK22', 'ALB7', 'CTRY01', 'GEN2', 'Somebody', 'I need somebody who can love me at my worst', '03:10:00', '2021-03-19', 10002145),
('MSK23', 'ALB8', 'CTRY01', 'GEN5', 'Numb', 'I\'m tired of being what you want me to be', '03:07:00', '2003-09-08', 10002236),
('MSK24', 'ALB8', 'CTRY01', 'GEN5', 'Faint', 'I won\'t be ignored', '02:42:00', '2003-06-09', 10002327),
('MSK25', 'ALB9', 'CTRY03', 'GEN2', 'Mercy', 'You\'ve got a hold of me, don\'t even know your power', '03:28:00', '2016-08-18', 10002418),
('MSK26', 'ALB9', 'CTRY03', 'GEN2', 'Treat You Better', 'I know I can treat you better than he can', '03:07:00', '2016-06-03', 10002509),
('MSK27', 'ALB9', 'CTRY04', 'GEN3', 'If You Could See Me Now', 'If you could see me now, would you recognize me?', '03:38:00', '2012-03-12', 10002600),
('MSK28', 'ALB10', 'CTRY04', 'GEN3', 'Hall Of Fame', 'You can be the greatest, you can be the best', '03:21:00', '2012-08-17', 10002691),
('MSK29', 'ALB10', 'CTRY04', 'GEN3', 'The Man Can\'t Be Move', 'And maybe someday, I\'ll find a way to make it', '04:00:00', '2008-07-14', 10002782),
('MSK3', 'ALB1', 'CTRY01', 'GEN2', 'We are Never Ever Getting Back Together', 'We are never ever ever getting back together', '03:12:00', '2012-08-13', 10000416),
('MSK30', 'ALB10', 'CTRY04', 'GEN3', 'Breakeven', 'What am I supposed to do when the best part of me', '04:21:00', '2008-07-21', 10002873),
('MSK31', 'ALB10', 'CTRY04', 'GEN3', 'Six Degrees of Separation', 'First, you think the worst is a broken heart', '03:52:00', '2012-11-16', 10002964),
('MSK32', 'ALB11', 'CTRY02', 'Gen5', 'Up&Up', 'Fixing up a car to drive in it again', '06:45:00', '2015-05-16', 10003055),
('MSK33', 'ALB11', 'CTRY02', 'GEN5', 'Everglow', 'We see you, Everglow', '04:42:00', '2015-12-04', 10003146),
('MSK34', 'ALB12', 'CTRY01', 'GEN3', 'Maps ', 'I was there for you', '03:10:00', '2014-06-16', 10003237),
('MSK35', 'ALB12', 'CTRY01', 'GEN3', 'Sugar', 'I\'m hurting, baby, I\'m broken down', '03:55:00', '2014-01-13', 10003328),
('MSK36', 'ALB12', 'CTRY01', 'GEN3', 'Animals', 'Baby, I\'m preying on you tonight', '03:51:00', '2014-08-25', 10003419),
('MSK37', 'ALB13', 'CTRY01', 'GEN7', 'Something Just Like This', 'But she said, \"Where\'d you wanna go?', '04:07:00', '2017-02-22', 10003510),
('MSK38', 'ALB13', 'CTRY01', 'GEN7', 'Paris', 'If we go down, then we go down together', '03:41:00', '2017-01-13', 10003601),
('MSK39', 'ALB14', 'CTRY05', 'GEN9', 'We Are', 'So if it\'s just tonight, the animal inside', '04:15:00', '2017-02-15', 10003692),
('MSK4', 'ALB2', 'CTRY02', 'GEN2', 'Shape Of You', 'The club isn\'t the best place to find a lover', '03:53:00', '2017-01-06', 10000507),
('MSK40', 'ALB14', 'CTRY05', 'GEN9', 'Listen', 'Listen to the song here in my heart', '03:45:00', '2013-08-21', 10003783),
('MSK41', 'ALB14', 'CTRY05', 'GEN9', 'I Was a King', 'I was a king, I had a golden throne', '03:56:00', '2016-03-23', 10003874),
('MSK42', 'ALB15', 'CTRY06', 'GEN8', 'Pink Venom', 'I\'m a force you\'ll never reckon with', '03:08:00', '2022-09-16', 10003965),
('MSK43', 'ALB15', 'CTRY06', 'GEN8', 'Hard To Love', 'I\'m hard to love, hard to love', '04:02:00', '2022-09-16', 10004056),
('MSK44', 'ALB15', 'CTRY06', 'GEN8', 'Ready For Love', 'I am ready for love', '04:50:00', '2022-09-16', 10004147),
('MSK45', 'ALB16', 'CTRY07', 'GEN2', 'Manusia Kuat', 'Kuat, kuat, kuat, kuat', '04:18:00', '2016-05-10', 10004238),
('MSK46', 'ALB16', 'CTRY07', 'GEN2', 'Pamit ', 'Kembali ke tanah kelahiran', '04:41:00', '2016-03-04', 10004329),
('MSK47', 'ALB16', 'CTRY07', 'GEN2', 'Monokrom', 'Bersama dalam satu warna', '04:31:00', '2017-06-15', 10004420),
('MSK48', 'ALB17', 'CTRY07', 'GEN3', 'Jentaka', 'Terlalu indah untuk dibersikahkan', '04:13:00', '2021-02-28', 10004511),
('MSK49', 'ALB17', 'CTRY07', 'GEN3', 'Serena', 'Hatiku kau tarik dari cakrawala', '04:15:00', '2021-02-28', 10004602),
('MSK5', 'ALB2', 'CTRY02', 'GEN2', 'Perfect', 'I found a love for me, darling, just dive right in', '04:23:00', '2017-03-03', 10000598),
('MSK50', 'ALB17', 'CTRY07', 'GEN3', 'Jakarta Hari Ini', 'Menuntun langkahku ke angan-angan ini', '03:45:00', '2021-02-28', 10004693),
('MSK51', 'ALB18', 'CTRY05', 'GEN9', 'Us', 'They won\'t touch you, they won\'t understand', '04:45:00', '2012-07-25', 10004784),
('MSK52', 'ALB18', 'CTRY05', 'GEN9', 'Insane Dream', 'Living in an insane dream', '05:14:00', '2014-05-21', 10004875),
('MSK53', 'ALB18', 'CTRY05', 'GEN9', 'Stars In The Rain', 'And we\'ll dance in the stars in the rain', '04:50:00', '2017-10-11', 10004966),
('MSK54', 'ALB19', 'CTRY06', 'GEN8', 'Dna', 'I got, I got, I got, I got loyalty', '03:43:00', '2017-09-18', 10005057),
('MSK55', 'ALB19', 'CTRY06', 'GEN8', 'Fake Love', 'I\'m so sick of this fake love', '04:02:00', '2018-05-18', 10005148),
('MSK56', 'ALB19', 'CTRY06', 'GEN8', 'Idol', 'You can call me artist, you can call me idol', '03:42:00', '2018-08-24', 10005239),
('MSK57', 'ALB20', 'CTRY07', 'GEN2', 'Celengan rindu', 'Aku ingin pulang, tapi tidak ada angin', '03:37:00', '2015-07-01', 10005330),
('MSK58', 'ALB20', 'CTRY07', 'GEN2', 'April', 'The taste of your lips is still fresh', '04:21:00', '2016-02-26', 10005421),
('MSK59', 'ALB20', 'CTRY07', 'GEN2', 'Tempat Aku Pulang', 'Di tempat aku pulang, jauh dari luka', '04:34:00', '2016-11-25', 10005512),
('MSK6', 'ALB2', 'CTRY02', 'GEN2', 'Castle On the Hill ', 'When I was six years old, I broke my leg', '04:21:00', '2017-01-06', 10000689),
('MSK60', 'ALB20', 'CTRY07', 'GEN2', 'Friendzone', 'Di friendzone, oh, friendzone', '04:04:00', '2017-07-28', 10005603),
('MSK7', 'ALB3', 'CTRY02', 'GEN3', 'Happy Song', 'Bring me down, can\'t nothing, uh, huh', '03:57:00', '2015-07-13', 10000780),
('MSK8', 'ALB3', 'CTRY02', 'GEN4', 'Throne ', 'A million miles away', '03:11:00', '2015-08-14', 10000871),
('MSK9', 'ALB3', 'CTRY02', 'GEN3', 'Follow You', 'You\'re gonna love me like I\'ve never been loved', '02:56:00', '2021-03-05', 10000962);

-- --------------------------------------------------------

--
-- Table structure for table `tb_playlist`
--

CREATE TABLE `tb_playlist` (
  `IDPLAYLIST` char(10) NOT NULL,
  `IDUSER` varchar(15) DEFAULT NULL,
  `NAMAPLAYLIST` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_playlist`
--

INSERT INTO `tb_playlist` (`IDPLAYLIST`, `IDUSER`, `NAMAPLAYLIST`) VALUES
('PLY1', 'U1', 'MyPop'),
('PLY10', 'U7', 'J-Pop'),
('PLY11', 'U7', 'K-Pop'),
('PLY12', 'U6', 'MyAsia'),
('PLY13', 'U6', 'Viral Song'),
('PLY14', 'U2', 'FiqlalVira'),
('PLY15', 'U3', 'MitoKyun'),
('PLY2', 'U1', 'Rock&Roll'),
('PLY3', 'U2', 'EDM'),
('PLY4', 'U2', 'Party Hits'),
('PLY5', 'U3', 'Chill Vibe'),
('PLY6', 'U3', 'Summer Par'),
('PLY7', 'U10', 'Study Focu'),
('PLY8', 'U9', 'Indie'),
('PLY9', 'U8', 'MyIndo');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `IDUSER` varchar(15) NOT NULL,
  `NAMAUSER` varchar(50) NOT NULL,
  `EMAILUSER` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`IDUSER`, `NAMAUSER`, `EMAILUSER`) VALUES
('U1', 'John', 'john@example.com'),
('U10', 'Sophia', 'sophia@example.com'),
('U2', 'Emma', 'emma@example.com'),
('U3', 'David', 'david@example.com'),
('U4', 'Sarah', 'sarah@example.com'),
('U5', 'Michael', 'michael@example.com'),
('U6', 'Emily', 'emily@example.com'),
('U7', 'Daniel', 'daniel@example.com'),
('U8', 'Olivia', 'olivia@example.com'),
('U9', 'James', 'james@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD PRIMARY KEY (`ID_ALBUM`),
  ADD KEY `FK_RELATIONSHIP_3` (`ID_ARTIS`);

--
-- Indexes for table `tb_artis`
--
ALTER TABLE `tb_artis`
  ADD PRIMARY KEY (`ID_ARTIS`);

--
-- Indexes for table `tb_country`
--
ALTER TABLE `tb_country`
  ADD PRIMARY KEY (`ID_COUNTRY`);

--
-- Indexes for table `tb_detail_musik`
--
ALTER TABLE `tb_detail_musik`
  ADD PRIMARY KEY (`ID_ARTIS`,`ID_MUSIC`),
  ADD KEY `FK_DETAIL_MUSIK2` (`ID_MUSIC`);

--
-- Indexes for table `tb_detail_playlist`
--
ALTER TABLE `tb_detail_playlist`
  ADD PRIMARY KEY (`ID_MUSIC`,`IDPLAYLIST`),
  ADD KEY `FK_DETAIL_PLAYLIST2` (`IDPLAYLIST`);

--
-- Indexes for table `tb_genre`
--
ALTER TABLE `tb_genre`
  ADD PRIMARY KEY (`ID_GENRE`);

--
-- Indexes for table `tb_music`
--
ALTER TABLE `tb_music`
  ADD PRIMARY KEY (`ID_MUSIC`),
  ADD KEY `FK_BERASAL` (`ID_COUNTRY`),
  ADD KEY `FK_DENGAN` (`ID_GENRE`),
  ADD KEY `FK_TERMASUK` (`ID_ALBUM`);

--
-- Indexes for table `tb_playlist`
--
ALTER TABLE `tb_playlist`
  ADD PRIMARY KEY (`IDPLAYLIST`),
  ADD KEY `FK_MEMBUAT` (`IDUSER`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`IDUSER`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`ID_ARTIS`) REFERENCES `tb_artis` (`ID_ARTIS`);

--
-- Constraints for table `tb_detail_musik`
--
ALTER TABLE `tb_detail_musik`
  ADD CONSTRAINT `FK_DETAIL_MUSIK` FOREIGN KEY (`ID_ARTIS`) REFERENCES `tb_artis` (`ID_ARTIS`),
  ADD CONSTRAINT `FK_DETAIL_MUSIK2` FOREIGN KEY (`ID_MUSIC`) REFERENCES `tb_music` (`ID_MUSIC`);

--
-- Constraints for table `tb_detail_playlist`
--
ALTER TABLE `tb_detail_playlist`
  ADD CONSTRAINT `FK_DETAIL_PLAYLIST` FOREIGN KEY (`ID_MUSIC`) REFERENCES `tb_music` (`ID_MUSIC`),
  ADD CONSTRAINT `FK_DETAIL_PLAYLIST2` FOREIGN KEY (`IDPLAYLIST`) REFERENCES `tb_playlist` (`IDPLAYLIST`);

--
-- Constraints for table `tb_music`
--
ALTER TABLE `tb_music`
  ADD CONSTRAINT `FK_BERASAL` FOREIGN KEY (`ID_COUNTRY`) REFERENCES `tb_country` (`ID_COUNTRY`),
  ADD CONSTRAINT `FK_DENGAN` FOREIGN KEY (`ID_GENRE`) REFERENCES `tb_genre` (`ID_GENRE`),
  ADD CONSTRAINT `FK_TERMASUK` FOREIGN KEY (`ID_ALBUM`) REFERENCES `tb_album` (`ID_ALBUM`);

--
-- Constraints for table `tb_playlist`
--
ALTER TABLE `tb_playlist`
  ADD CONSTRAINT `FK_MEMBUAT` FOREIGN KEY (`IDUSER`) REFERENCES `tb_user` (`IDUSER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
