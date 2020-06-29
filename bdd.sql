-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 29, 2020 at 11:15 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `blog-php-mvc`
--
CREATE DATABASE IF NOT EXISTS `blog-php-mvc` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `blog-php-mvc`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(11) NOT NULL DEFAULT '0',
  `signals` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(94, 14, 'Bof', 11, '2018-02-22 07:20:13', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Posts`
--

CREATE TABLE `Posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `createdDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Posts`
--

INSERT INTO `Posts` (`id`, `title`, `body`, `image`, `createdDate`) VALUES
(11, 'New-York, New-York!!!!!l\' incontournable. ', '<p align=\"CENTER\">Plut&ocirc;t des adeptes de grands espaces et de nature, nous avons attendu longtemps avant de visiter New York en 1 semaine pour la premi&egrave;re fois ! Et pourtant c&rsquo;&eacute;tait le r&ecirc;ve d&rsquo;ado de Max qui pensait &agrave; l&rsquo;&eacute;poque, bien avant le blog, en faire son premier grand voyage ! Rat&eacute; ! New York est une ville incroyable o&ugrave; il y a 10 000 choses &agrave; faire et &agrave; voir ! C&rsquo;est l&rsquo;effervescence en permanence dans la ville qui ne dort jamais. Un conseil pour ne pas passer &agrave; cot&eacute; de votre voyage, il faudra bien le pr&eacute;parer en amont !! New York ne s&rsquo;improvise pas au risque de tout rater (et/ou de se ruiner), il faut donc s&rsquo;organiser !</p>\r\n<p align=\"CENTER\">Pas de&nbsp; panique, vous trouverez beaucoup d&rsquo;infos et de conseils dans cet article, pour vous inspirer et vous aider dans l&rsquo;organisation de votre s&eacute;jour &agrave; New York. Nous avons &eacute;tabli <strong>une liste de 20 activit&eacute;s, lieux et choses &agrave; voir lors d&rsquo;un premier voyage &agrave; New York d&rsquo;une semaine. </strong>&nbsp;Des grands classiques incontournables (il faut quand m&ecirc;me les voir lors de son premier voyage &agrave; NYC !!!) mais aussi des id&eacute;es plus insolites et hors des sentiers battus, comme on aime, pour un s&eacute;jour inoubliable d&rsquo;une semaine dans la Grosse Pomme!</p>\r\n<p align=\"CENTER\">Parce qu&rsquo;il est impossible de voir tout New York en 7 jours, il a fallu faire des choix et on s&rsquo;est clairement concentr&eacute; sur <strong>Manhattan</strong> &amp; <strong>Brooklyn</strong>.</p>', 'usa.jpg', '2018-02-03 16:08:55'),
(24, 'Canada le rêve des français', '<p>Le Canada est un pays nord-am&eacute;ricain situ&eacute; entre les &Eacute;tats-Unis au sud et le cercle polaire au nord. Les principales villes sont Toronto, Vancouver, centre du cin&eacute;ma de la c&ocirc;te ouest, Montr&eacute;al et Qu&eacute;bec, toutes deux francophones, et Ottawa, la capitale. Le Canada compte, parmi ses vastes &eacute;tendues sauvages, le parc national de Banff avec ses nombreux lacs situ&eacute; dans les montagnes Rocheuses. Il abrite &eacute;galement les c&eacute;l&egrave;bres et majestueuses chutes du Niagara.</p>', 'canada.jpg', '2018-02-03 18:33:05'),
(45, 'Let\'s go pour le Pays de la viande rouge', '<p>L\'Argentine est un grand pays d\'Am&eacute;rique du Sud au relief tr&egrave;s vari&eacute; o&ugrave; se c&ocirc;toient les montagnes des Andes, les lacs glaciaires et la pampa, de grandes plaines de p&acirc;turage o&ugrave; paissent les c&eacute;l&egrave;bres bovins du pays. L\'Argentine est r&eacute;put&eacute;e pour le tango et la musique. Au centre de Buenos Aires, la grande capitale cosmopolite, se trouve la place de Mai, bord&eacute;e de b&acirc;timents datant du XIXe si&egrave;cle tels que la Casa Rosada (Maison rose), le palais pr&eacute;sidentiel &agrave; balcon.</p>', 'argentine.jpg', '2018-02-03 18:33:05'),
(46, 'Pyramides, pas la station de métro...', '<p>L\'&Eacute;gypte est un pont entre l\'Afrique du Nord-Est et le Moyen-Orient et son histoire remonte &agrave; l\'&eacute;poque des pharaons. Des monuments mill&eacute;naires bordent les berges de la fertile vall&eacute;e du Nil, notamment le sphinx et les pyramides colossales de Gizeh. La ville de Louxor abrite le temple de Karnak et ses hi&eacute;roglyphes, ainsi que les tombeaux de la vall&eacute;e des rois. Le&nbsp;Caire, la capitale, regorge de sites ottomans, comme la mosqu&eacute;e Mohammed&nbsp;Ali ou le mus&eacute;e &eacute;gyptien et ses tr&eacute;sors d\'antiquit&eacute;s.</p>', 'egypte.jpg', '2018-02-03 16:08:55'),
(47, 'Safari en Afrique du Sud', '<p>L\'Afrique du Sud est un pays situ&eacute; &agrave; l\'extr&eacute;mit&eacute; australe du continent africain et compos&eacute; de diff&eacute;rents &eacute;cosyst&egrave;mes. &Agrave; l\'int&eacute;rieur des terres, le parc national Kruger abrite du gros gibier et propose des safaris. Le Cap occidental offre des plages, des vignobles luxuriants autour de Stellenbosch et Paarl, des falaises rocheuses au cap de Bonne-Esp&eacute;rance, des for&ecirc;ts et des lagons le long de la Garden Route, ainsi que la ville du Cap, situ&eacute;e au pied de la montagne de la Table au sommet plat.</p>', 'safari.jpg', '2018-02-03 18:33:05'),
(48, 'Ola Ola Mexique on arrive!!!', '<p>Situ&eacute; entre les &Eacute;tats-Unis et l\'Am&eacute;rique centrale, le Mexique est un pays r&eacute;put&eacute; pour ses plages du Pacifique et du golfe du Mexique, ainsi que pour ses paysages vari&eacute;s - entre montagnes, d&eacute;serts et jungles. Il est pourvu de ruines anciennes comme Teotihuacan et la cit&eacute; maya de Chich&eacute;n&nbsp;Itz&aacute; ainsi que de villes datant de l\'&eacute;poque coloniale espagnole. Sa capitale Mexico propose un retour &agrave; la modernit&eacute; avec ses boutiques haut de gamme, ses mus&eacute;es renomm&eacute;s et ses restaurants gastronomiques.</p>', 'mexique.jpg', '2018-02-03 18:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(8, 'test@test.com', '21e57080434c1cb6c2fb4753c4f8a28f', 0, 'Romain'),
(14, 'tom@gmail.com', '21e57080434c1cb6c2fb4753c4f8a28f', NULL, 'Tom'),
(15, 'vuphidoan@gmail.com', 'Poopi', NULL, 'Doan'),
(16, 'vudoan94200@gmail.com', 'f1c374a2b9231687f7f6a57e49d0d0bcbd392ceb', NULL, 'VuDoan');

-- --------------------------------------------------------

--
-- Table structure for table `Votes`
--

CREATE TABLE `Votes` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Votes`
--
ALTER TABLE `Votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `Posts`
--
ALTER TABLE `Posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `Votes`
--
ALTER TABLE `Votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
