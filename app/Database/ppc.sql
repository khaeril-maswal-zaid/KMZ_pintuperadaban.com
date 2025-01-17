-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
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


-- Dumping database structure for kmz_ci4pintuperadaban
CREATE DATABASE IF NOT EXISTS `kmz_ci4pintuperadaban` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kmz_ci4pintuperadaban`;

-- Dumping structure for table kmz_ci4pintuperadaban.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table kmz_ci4pintuperadaban.admin: ~2 rows (approximately)
INSERT INTO `admin` (`id`, `nama`, `foto`, `username`, `password`) VALUES
	(1, 'Editor Ppc', 'ppa.png', 'editor@pintuperadaban.com', '$2y$10$T7k54D8DL2rQPaJ0zeBEvOC3NSE2raGMcZqQqg3UMWwTEaKOiehnq'),
	(2, 'Khaeril Maswal Zaid', 'kmz.png', 'muhammadkhaerilzaid@gmail.com', '$2y$10$T7k54D8DL2rQPaJ0zeBEvOC3NSE2raGMcZqQqg3UMWwTEaKOiehnq');

-- Dumping structure for table kmz_ci4pintuperadaban.artikel
CREATE TABLE IF NOT EXISTS `artikel` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `yposting` int NOT NULL DEFAULT '0',
  `waktu` time NOT NULL,
  `time` int DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `srcimg` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `oleh` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL DEFAULT 'news',
  `level` varchar(50) NOT NULL DEFAULT 'news',
  `artikel` text NOT NULL,
  `visit` int NOT NULL DEFAULT '0',
  `view` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table kmz_ci4pintuperadaban.artikel: ~18 rows (approximately)
INSERT INTO `artikel` (`id`, `tanggal`, `yposting`, `waktu`, `time`, `slug`, `judul`, `description`, `srcimg`, `picture`, `oleh`, `kategori`, `level`, `artikel`, `visit`, `view`) VALUES
	(1, '2024-03-07', 2024, '08:00:00', 1234567890, 'bekerjasama-dengan-pemerintah-desa-bulo-bulo-pkm-salsase-berikan-layanan-kesehatan-gratis-untuk-masyarakat', 'Bekerjasama dengan Pemerintah Desa Bulo-Bulo PKM Salsase Berikan Layanan Kesehatan Gratis untuk Masyarakat', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'bekerjasama-dengan-pemerintah-desa-bulo-bulo-pkm-salsase-berikan-layanan-kesehatan-gratis-untuk-masyarakat.jpeg', 'Editor Ppc', 'News', 'main', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(2, '2024-03-07', 2024, '08:00:00', 1234567891, 'berikan-sambutan-di-pelantikan-pantarlik-kades-bulo-bulo-penyelenggara-itu-berintegritas', 'Berikan Sambutan di Pelantikan Pantarlik Kades Bulo-Bulo Penyelenggara Itu Berintegritas', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'berikan-sambutan-di-pelantikan-pantarlik-kades-bulo-bulo-penyelenggara-itu-berintegritas.jpg', 'Editor Ppc', 'Politik', 'main', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(3, '2024-03-07', 2024, '08:00:00', 1234567892, 'catatan-menjemput-musyda-dpd-imm-sulawesi-selatan', 'Catatan Menjemput Musyda DPD IMM Sulawesi Selatan', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'catatan-menjemput-musyda-dpd-imm-sulawesi-selatan.jpeg', 'Editor Ppc', 'Opini', 'main', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(4, '2024-03-07', 2024, '08:00:00', 1234567893, 'enviromental-etik-dalam-pusaran-pesta-demokrasi', 'Enviromental Etik dalam Pusaran Pesta Demokrasi', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'enviromental-etik-dalam-pusaran-pesta-demokrasi.jpg', 'Editor Ppc', 'Politik', 'main', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(5, '2024-03-07', 2024, '08:00:00', 1234567894, 'fakultas-kip-umb-lepas-172-mahasiswa-peserta-kkn-tematik', 'Fakultas KIP UMB Lepas 172 Mahasiswa Peserta KKN Tematik', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'fakultas-kip-umb-lepas-172-mahasiswa-peserta-kkn-tematik.jpg', 'Editor Ppc', 'News', 'main', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(6, '2024-03-07', 2024, '08:00:00', 1234567895, 'gelar-kajian-kepemimpinan-pikom-imm-ilmu-aktuaria-umb-hadirkan-ketum-pc-imm-bulukumba', 'Gelar Kajian Kepemimpinan Pikom IMM Ilmu Aktuaria UMB Hadirkan Ketum PC IMM Bulukumba', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'gelar-kajian-kepemimpinan-pikom-imm-ilmu-aktuaria-umb-hadirkan-ketum-pc-imm-bulukumba.jpeg', 'Editor Ppc', 'News', 'main', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(7, '2024-03-07', 2024, '08:00:00', 1234567896, 'gerakan-bangun-negeri-kolaborasi-dengan-binroh-hindu-telkom-ajarkan-pendidikan-karakter-di-pasraman-hindu', 'Gerakan Bangun Negeri Kolaborasi dengan Binroh Hindu Telkom Ajarkan Pendidikan Karakter di Pasraman Hindu', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'gerakan-bangun-negeri-kolaborasi-dengan-binroh-hindu-telkom-ajarkan-pendidikan-karakter-di-pasraman-hindu.jpg', 'Editor Ppc', 'Teologi', 'general', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(8, '2024-03-07', 2024, '08:00:00', 1234567877, 'ibu-kota-negara-baru-untuk-keberlanjutan-nasional', 'Ibu Kota Negara Baru untuk Keberlanjutan Nasional', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'ibu-kota-negara-baru-untuk-keberlanjutan-nasional.jpeg', 'Editor Ppc', 'Sosial', 'general', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(9, '2024-03-07', 2024, '08:00:00', 1234567888, 'logika-dan-pentingnya-rasionalitas-argumentasi', 'Logika dan Pentingnya Rasionalitas Argumentasi', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'logika-dan-pentingnya-rasionalitas-argumentasi.jpeg', 'Editor Ppc', 'Filsafat', 'general', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(10, '2024-03-07', 2024, '08:00:00', 1234567899, 'media-sosial-bagi-pelajar-zaman-sekarang', 'Media Sosial bagi Pelajar Zaman Sekarang', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'media-sosial-bagi-pelajar-zaman-sekarang.jpg', 'Editor Ppc', 'Opini', 'general', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(11, '2024-03-07', 2024, '08:00:00', 1134567890, 'memaknai-humanisme-dalam-konteks-kemuhammadiyahan', 'Memaknai Humanisme dalam Konteks Kemuhammadiyahan', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'memaknai-humanisme-dalam-konteks-kemuhammadiyahan.jpeg', 'Editor Ppc', 'Teologi', 'general', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(12, '2024-03-07', 2024, '08:00:00', 2147483647, 'pengaruh-pengelolaan-sumber-daya-alam-yang-membabi-buta', 'Pengaruh Pengelolaan Sumber Daya Alam yang Membabi Buta', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'pengaruh-pengelolaan-sumber-daya-alam-yang-membabi-buta.jpg', 'Editor Ppc', 'Sosial', 'general', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(13, '2024-03-07', 2024, '08:00:00', 2147483647, 'pesan-khidmat-bapak-ardiansyah-spdpmdp-kepala-desa-pakubalaho-terpilih', 'Pesan Khidmat Bapak Ardiansyah SPDPMDP Kepala Desa Pakubalaho Terpilih', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'pesan-khidmat-bapak-ardiansyah-spdpmdp-kepala-desa-pakubalaho-terpilih.jpg', 'Editor Ppc', 'Politik', 'populer-post', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(14, '2024-03-07', 2024, '08:00:00', 2147483647, 'pikiran-dan-pengetahuan-yang-benar', 'Pikiran dan Pengetahuan yang Benar', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'pikiran-dan-pengetahuan-yang-benar.jpg', 'Editor Ppc', 'Filsafat', 'populer-post', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(15, '2024-03-07', 2024, '08:00:00', 2147483647, 'ratusan-warga-muhammadiyah-bulukumba-padati-pengajian-semarak-muktamar-muhammadiyah-dan-aisyiyah-ke-48', 'Ratusan Warga Muhammadiyah Bulukumba Padati Pengajian Semarak Muktamar Muhammadiyah dan Aisyiyah ke-48', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'ratusan-warga-muhammadiyah-bulukumba-padati-pengajian-semarak-muktamar-muhammadiyah-dan-aisyiyah-ke-48.jpg', 'Editor Ppc', 'News', 'populer-post', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(16, '2024-03-07', 2024, '08:00:00', 2147483647, 'sejauh-mana-bisaku-bertahan', 'Sejauh Mana Bisaku Bertahan', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'sejauh-mana-bisaku-bertahan.jpg', 'Editor Ppc', 'The Story', 'populer-post', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(17, '2024-03-07', 2024, '08:00:00', 2147483647, 'um-bulukumba-gelar-penyambutan-mahasiswa-baru-melalui-masa-taaruf-dan-keakraban-mahasiswa', 'UM Bulukumba Gelar Penyambutan Mahasiswa Baru melalui Masa Tarauf sebagai Ajang Keakraban Mahasiswa', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'um-bulukumba-gelar-penyambutan-mahasiswa-baru-melalui-masa-taaruf-dan-keakraban-mahasiswa.jpeg', 'Editor Ppc', 'News', 'populer-post', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50),
	(18, '2024-03-07', 2024, '08:00:00', 2147483647, 'wujudkan-visi-sebagai-kampus-entrepreneur-mahasiswa-umb-inisiasi-mini-bazar-di-kampus', 'Wujudkan Visi sebagai Kampus Entrepreneur Mahasiswa UMB Inisiasi Mini Bazaar di Kampus', 'Ini adalah deskripsi singkat untuk artikel ini.', 'pintuperadaban', 'wujudkan-visi-sebagai-kampus-entrepreneur-mahasiswa-umb-inisiasi-mini-bazar-di-kampus.jpeg', 'Editor Ppc', 'Ekonomi', 'populer-post', '<p>Data sedang dalam proses pemulihan dari database lama. Kami berharap data dapat diselamatkan dengan baik. </p>', 50, 50);

-- Dumping structure for table kmz_ci4pintuperadaban.emailsended
CREATE TABLE IF NOT EXISTS `emailsended` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `emailsended` varchar(250) DEFAULT NULL,
  `idartikel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table kmz_ci4pintuperadaban.emailsended: ~0 rows (approximately)

-- Dumping structure for table kmz_ci4pintuperadaban.endors
CREATE TABLE IF NOT EXISTS `endors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `hrefsourcelef` varchar(255) DEFAULT NULL,
  `wa` varchar(20) DEFAULT NULL,
  `sourcechat` varchar(255) DEFAULT NULL,
  `chat` varchar(255) DEFAULT NULL,
  `hrefsourceright` varchar(255) DEFAULT NULL,
  `imgsourceleft` varchar(255) DEFAULT NULL,
  `idbrand` varchar(255) DEFAULT NULL,
  `imgsourceright` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table kmz_ci4pintuperadaban.endors: ~0 rows (approximately)

-- Dumping structure for table kmz_ci4pintuperadaban.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table kmz_ci4pintuperadaban.kategori: ~8 rows (approximately)
INSERT INTO `kategori` (`id`, `kategori`, `icon`) VALUES
	(1, 'Teologi', 'icon-teologi.png'),
	(2, 'Filsafat', 'icon-filsafat.png'),
	(3, 'Ekonomi', 'icon-ekonomi.png'),
	(4, 'Sosial', 'icon-sosial.png'),
	(5, 'Politik', 'icon-politik.png'),
	(6, 'News', 'icon-opini.png'),
	(7, 'Opini', 'icon-opini.png'),
	(8, 'The Story', 'icon-sosial.png');

-- Dumping structure for table kmz_ci4pintuperadaban.langganan
CREATE TABLE IF NOT EXISTS `langganan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table kmz_ci4pintuperadaban.langganan: ~220 rows (approximately)
INSERT INTO `langganan` (`id`, `email`) VALUES
	(1, 'ppsbulobulo@gmail.com'),
	(2, 'andrianinita695@gmail.com'),
	(3, 'muhhedi9898@gmail.com'),
	(4, 'mapparoslinda@gmail.com'),
	(5, 'alqadri0808@gmail.com'),
	(6, 'andialifiaananda0107@gmail.com'),
	(7, 'susi40530@gmail.com'),
	(8, 'nrfdillah88@gmail.com'),
	(9, 'hasnawatihasna000@gmail.com'),
	(10, 'idayatirusdi30@gmail.com'),
	(11, 'seisatriwati@gmail.com'),
	(12, 'sriismayani200487@gmail.com'),
	(13, 'andimunirsuardi@gmail.com'),
	(14, 'andiagungashar@gmail.com'),
	(15, 'andiinurdianaaa@gmail.com'),
	(16, 'rahmawatyhamka@gmail.com'),
	(17, 'ennarisna48@gmail.com'),
	(18, 'imranmuh93@gmail.com'),
	(19, 'andimufidatunnica@gmail.com'),
	(20, 'andiimma656@gmail.com'),
	(21, 'suarniblk40@gmail.com'),
	(22, 'inuinununu@icloud.com'),
	(23, 'pancawardah1986@gmail.com'),
	(24, 'rajasamudragandi05@gmail.com'),
	(25, 'nur971162@gmail.com'),
	(26, 'husnaeniainun15@gmail.com'),
	(27, 'alifreskipratama52@gmail.com'),
	(28, 'alqadri0808@gmail.com'),
	(29, 'nurulhikma02811@gmail.com'),
	(30, 'asrianiamsakcantik@gmail.com'),
	(31, 'aprilanthy5@gmail.com'),
	(32, 'kumalasabir4@gmall.com'),
	(33, 'irma13061991@gmail.com'),
	(34, 'faizalbarabatu@gmail.com'),
	(35, 'saprihamid2006@gmail.com'),
	(36, 'andifitriani155@gmail.com'),
	(37, 'elfiraiconkiconk@gmail.com'),
	(38, 'annamuawana740@gmail.com'),
	(39, 'imran03051983@gmail.com'),
	(40, 'aasdar541@gmail.com'),
	(41, 'nurfaedahabdullah03@gmail.com'),
	(42, 'syamsinar021288@gmail.com'),
	(43, 'karlisal63@gmail.com'),
	(44, 'murdanicgani85@gmail.com'),
	(45, 'fadillahnursyam1@gmail.com'),
	(46, 'erpianapina2@gmail.com'),
	(47, 'taca81367@gmail.com'),
	(48, 'ra0815500@gmail.com'),
	(49, 'ayuirawannng@gmail.com'),
	(50, 'musdalifa12012007@gmail.com'),
	(51, 'diniatulwahda@gmail.com'),
	(52, 'isnaardiani25@gmail.com'),
	(53, 'arhamsjs21@gmail.com'),
	(54, 'elviismar57@gmail.com'),
	(55, 'wiwinardal@gmail.com'),
	(56, 'kimn04810@gmail.com'),
	(57, 'agungmuh876@gmail.com'),
	(58, 'wafiqazizablk@gmail.com'),
	(59, 'ahmadasyura200@gmail.com'),
	(60, 'wananur932@gmail.com'),
	(61, 'rezaldisyam6@gmail.com'),
	(62, 'inayahfikri28@gmail.com'),
	(63, 'ahmadnabil26022006@gmail.com'),
	(64, 'anindithaasyahratulainii@gmail.com'),
	(65, 'novialfriadi@gmail.com'),
	(66, 'elviramasdar0@gmail.com'),
	(67, 'khaeranahn@gmail.com'),
	(68, 'rridaa899@gmail.com'),
	(69, 'ayyaqlh@gmail.com'),
	(70, 'tykaikha887@gmail.com'),
	(71, 'nuraisaamna@gmail.com'),
	(72, 'wingkikurniawan4@gmail.com'),
	(73, 'muhapis02@gmail.com'),
	(74, 'khaerunnisan337@gmail.com'),
	(75, 'nurlaeliii274@gmail.com'),
	(76, 'inur82399@gmail.com'),
	(77, 'viv26881@gmail.com'),
	(78, 'ainulfitry848@gmail.com'),
	(79, 'alfianensiwidya@gmail.com'),
	(80, 'naswaainunn@gmail.com'),
	(81, 'aswadhajarul05@gmail.com'),
	(82, 'nadyalmagfirah@gmail.com'),
	(83, 'surti.109@sma.belajar.id'),
	(84, 'inad0447@gmail.com'),
	(85, 'nuryahazizah@gmail.com'),
	(86, 'agusrusani12@gmail.com'),
	(87, 'syahriniwindy@gmail.com'),
	(88, 'rsma60035@gmail.com'),
	(89, 'ahmadriyaduldinar@gmail.com'),
	(90, 'sriirnaamalia6@gmail.com'),
	(91, 'tratunnisaica@gmail.com'),
	(92, 'rdwiramzani@gmail.com'),
	(93, 'haerunnisalwa234@gmail.com'),
	(94, 'aisnadha6@gmail.com'),
	(95, 'wahyuxllmipa2@gmail.com'),
	(96, 'riskisarmi24@gmail.com'),
	(97, 'kanursya330@gmail.com'),
	(98, 'salma49282@gmail.com'),
	(99, 'rosliablk0@gmail.com'),
	(100, 'ainunblk3@gmail.com'),
	(101, 'apodpod292@gmail.com'),
	(102, 'cantiievi@gmail.com'),
	(103, 'aliyanisa332@gmail.com'),
	(104, 'wardanadita15@gmail.com'),
	(105, 'gun67721@gmail.com'),
	(106, 'adzanmirzan069@gmail.com'),
	(107, 'ferdiansyahzam04@gmail.com'),
	(108, 'naila28.0207@gmail.com'),
	(109, 'aisyadewangga@gmail.com'),
	(110, 'titantitan812@gmail.com'),
	(111, 'sahrani545@sma.belajar.id'),
	(112, 'andiadit4321@gmail.com'),
	(113, 'aidilzul81@gmail.com'),
	(114, 'alfajira72@gmail.com'),
	(115, 'triawani0586@gmail.com'),
	(116, 'ramadanin193@gmail.com'),
	(117, 'inwanaana89@gmail.com'),
	(118, 'andiputrinurainun5@gmail.com'),
	(119, 'ayuuayuni4@gmail.com'),
	(120, 'nurhikmadgbulang@gmail.com'),
	(121, 'khaeralmaratj@gmail.com'),
	(122, 'riqahzhafirahidayat@gmail.com'),
	(123, 'brghyuu@gmail.com'),
	(124, 'khairunnisaakmal0@gmail.com'),
	(125, 'abatarisalwah@gmail.com'),
	(126, 'anikarindi04@gmail.com'),
	(127, 'inriayuningsihh@gmail.com'),
	(128, 'wiwikastuti108@gmail.com'),
	(129, 'desiatrikaa@gmail.com'),
	(130, 'emmiameliareski@icloud.com'),
	(131, 'dindablk23@gmail.com'),
	(132, 'ramadaniolivia020@gmail.com'),
	(133, 'arkdragon33@gmail.com'),
	(134, 'dwiastutisindi3@gmail.com'),
	(135, 'nezaindiraputri0@gmail.com'),
	(136, 'anandaualya4@gmail.com'),
	(137, 'nihsa002@gmail.com'),
	(138, 'ilmyaulia2@gmail.com'),
	(139, 'innahjuhar@gmail.com'),
	(140, 'nurlinainu99@gmail.com'),
	(141, 'qahwaaf@gmail.com'),
	(142, 'nurulllnatasya059@gmail.com'),
	(143, 'rifkapratiwi211@gmail.com'),
	(144, 'fthymhazzahra@gmail.com'),
	(145, 'amraltsry@gmail.com'),
	(146, 'iimel0556@gmail.com'),
	(147, 'mulyananur34@gmail.com'),
	(148, 'revanaputri937@gmail.com'),
	(149, 'nilasunak@gmail.com'),
	(150, 'muhn76936@gmail.com'),
	(151, 'frezkiperdana@gmail.com'),
	(152, 'nuraeeeni02@gmail.com'),
	(153, 'riswandiw604@gmail.com'),
	(154, 'rangga101106@gmail.com'),
	(155, 'afnan.afnanblk321@gmail.com'),
	(156, 'philipabdillah@icloud.com'),
	(157, 'auliaannisamahnur2403@gmail.com'),
	(158, 'adrianinurd@gmail.com'),
	(159, 'sryr3381@gmail.com'),
	(160, 'hajartulaswad971@gmail.com'),
	(161, 'ariniirini26@icloud.com'),
	(162, 'cecac869@gmail.com'),
	(163, 'srurahmad9@gmail.com'),
	(164, 'afriliansyahdewa46@gmail.com'),
	(165, 'andireskisaputra7@gmail.com'),
	(166, 'fahril192006@gmail.com'),
	(167, 'ra95513@gmail.com'),
	(168, 'haryonotamar154@gmail.com'),
	(169, 'habibi6569868@gmail.com'),
	(170, 'mhdskriii@gmail.com'),
	(171, 'maulanaaaaa676@gmail.com'),
	(172, 'jieaahrul7@gmail.com'),
	(173, 'zul906429@gmail.com'),
	(174, 'a83217457@gmail.com'),
	(175, 'suriantilatif54@gmail.com'),
	(176, 'sriwahyunihasri07@gmail.com'),
	(177, 'ayu628235@gmail.com'),
	(178, 'alibeybret@gmail.com'),
	(179, 'ahmadfauzanirul72@gmail.com'),
	(180, 'ayufirnanda556@gmail.com'),
	(181, 'ilailha05@gmail.com'),
	(182, 'andisakti52@gmail.com'),
	(183, 'hd6590214@gmail.com'),
	(184, 'afrisalaskar@gmail.com'),
	(185, 'resajhi26@gmail.com'),
	(186, 'adamamatullah44@gmail.com'),
	(187, 'kurnianingsih118@gmail.com'),
	(188, 'dwiariana669@gmail.com'),
	(189, 'claudyaputrisyam@gmail.com'),
	(190, 'andikaprathamiputri@gmail.com'),
	(191, 'rris34469@gmail.com'),
	(192, 'nurina6443@gmail.com'),
	(193, 'reskikawaru@gmail.com'),
	(194, 'nurafikaislamiyah82@gmail.com'),
	(195, 'andihusnulhatima2342@gmail.com'),
	(196, 'selvirasyam367@gmail.com'),
	(197, 'nismaaaa12@gmail.com'),
	(198, 'wanaaww2@gmail.com'),
	(199, 'rhammmy11@gmail.com'),
	(200, 'auliailmi772@gmail.com'),
	(201, 'abidahn232@gmail.com'),
	(202, 'nabilasalsabila102006@gmail.com'),
	(203, 'uulanastapiya@gmail.com'),
	(204, 'hikmanurul024@gmail.com'),
	(205, 'nadyaedria@gmail.com'),
	(206, 'wfiqqaziza@gmail.com'),
	(207, 'sulfadanianti76@gmail.com'),
	(208, 'andimuhtegar046@gmail.com'),
	(209, 'anareski455@gmail.com'),
	(210, 'amratuljanna@gmail.com'),
	(211, 'zikramultazam1@gmail.com'),
	(212, 'ameliaputri6022002@gmail.com'),
	(213, 'raodatuljannah1702@gmail.com'),
	(214, 'reskikiki922@gmail.com'),
	(215, 'nuniksuni@gmail.com'),
	(216, 'ulfipermataadinda2006@gmail.com'),
	(217, 'nurlaelaaa247@gmail.com'),
	(218, 'uppa210106@gmail.com'),
	(219, 'ainun140525@gmail.com'),
	(220, 'sriselfi541@gmail.com');

-- Dumping structure for table kmz_ci4pintuperadaban.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table kmz_ci4pintuperadaban.migrations: ~7 rows (approximately)
INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
	(223, '2024-12-04-115725', 'App\\Database\\Migrations\\Artikel', 'default', 'App', 1734156502, 1),
	(224, '2024-12-04-122522', 'App\\Database\\Migrations\\CreateKategoriTable', 'default', 'App', 1734156502, 1),
	(225, '2024-12-05-045157', 'App\\Database\\Migrations\\Admin', 'default', 'App', 1734156502, 1),
	(226, '2024-12-05-050923', 'App\\Database\\Migrations\\Endors', 'default', 'App', 1734156502, 1),
	(227, '2024-12-05-061217', 'App\\Database\\Migrations\\Viewerspage', 'default', 'App', 1734156502, 1),
	(228, '2024-12-13-160346', 'App\\Database\\Migrations\\Langganan', 'default', 'App', 1734156502, 1),
	(229, '2024-12-13-162020', 'App\\Database\\Migrations\\Emailsended', 'default', 'App', 1734156502, 1);

-- Dumping structure for table kmz_ci4pintuperadaban.viewerspage
CREATE TABLE IF NOT EXISTS `viewerspage` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `deteksi` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `idartikel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table kmz_ci4pintuperadaban.viewerspage: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
