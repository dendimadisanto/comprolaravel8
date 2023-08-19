-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.22-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for compro
CREATE DATABASE IF NOT EXISTS `compro` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `compro`;

-- Dumping structure for table compro.agenda
CREATE TABLE IF NOT EXISTS `agenda` (
  `id_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_kategori_agenda` int(11) NOT NULL,
  `bahasa` enum('ID','EN') CHARACTER SET utf8 NOT NULL,
  `slug_agenda` varchar(255) CHARACTER SET utf8 NOT NULL,
  `judul_agenda` varchar(255) CHARACTER SET utf8 NOT NULL,
  `isi` text CHARACTER SET utf8 NOT NULL,
  `status_agenda` varchar(20) CHARACTER SET utf8 NOT NULL,
  `jenis_agenda` varchar(20) CHARACTER SET utf8 NOT NULL,
  `keywords` text CHARACTER SET utf8 DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT 0,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `tempat` text CHARACTER SET utf8 DEFAULT NULL,
  `google_map` text CHARACTER SET utf8 DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_agenda`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.agenda: ~1 rows (approximately)
DELETE FROM `agenda`;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` (`id_agenda`, `id_user`, `id_kategori_agenda`, `bahasa`, `slug_agenda`, `judul_agenda`, `isi`, `status_agenda`, `jenis_agenda`, `keywords`, `gambar`, `icon`, `hits`, `urutan`, `tanggal_mulai`, `tanggal_selesai`, `jam_mulai`, `jam_selesai`, `tempat`, `google_map`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
	(1, 4, 6, 'ID', 'latihan-agenda', 'Latihan Agenda', '<p>Latihan</p>', 'Publish', 'Agenda', 'adad', NULL, 'daad', 0, NULL, '2020-09-12', '2020-09-12', '08:00:00', '17:00:00', 'AWS Indonesia', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7930.3386078467065!2d106.82893243028725!3d-6.372131203377098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ed5d166b756d%3A0x41d8cdc14c819774!2sDepok%20Town%20Square!5e0!3m2!1sen!2sid!4v1579565022446!5m2!1sen!2sid" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>', '2020-09-12 23:46:53', '2020-09-12 23:42:16', '2020-09-13 07:09:38');
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;

-- Dumping structure for table compro.berita
CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT 0,
  `bahasa` enum('ID','EN') CHARACTER SET utf8 NOT NULL,
  `updater` varchar(32) CHARACTER SET utf8 DEFAULT '-',
  `slug_berita` varchar(255) CHARACTER SET utf8 NOT NULL,
  `judul_berita` varchar(255) CHARACTER SET utf8 NOT NULL,
  `isi` text CHARACTER SET utf8 NOT NULL,
  `status_berita` varchar(20) CHARACTER SET utf8 NOT NULL,
  `jenis_berita` varchar(20) CHARACTER SET utf8 DEFAULT 'Berita',
  `keywords` text CHARACTER SET utf8 DEFAULT '',
  `gambar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.berita: ~11 rows (approximately)
DELETE FROM `berita`;
/*!40000 ALTER TABLE `berita` DISABLE KEYS */;
INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `bahasa`, `updater`, `slug_berita`, `judul_berita`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `urutan`, `tanggal_mulai`, `tanggal_selesai`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
	(8, 4, 0, 'ID', '', 'pengajian-rutin-sabtu-sore', 'Pengajian Rutin Sabtu Sore', '<p>&bull; #SEBARKAN undangan di bawah ini melalui lisan dan media sosial seperti Facebook, WhatsApp, Telegram, Instagram dsb, demi meraih pahala mengajak dalam kebaikan.<br />\r\n&bull; Acara untuk umum.<br />\r\n&bull; Kepada Jama&#39;ah yang mengendarai sepeda motor harap berkendara dengan tertib, menggunakan helm, masker dan sedia jas hujan.<br />\r\n&bull; Peduli perjuangan Majlis: BCA 3452662733 a/n Abdullah Alatas.<br />\r\n&bull; Jangan hadir di Majlis Ta&#39;lim/Dzikir bila ada waktu luang, tapi luangkanlah waktu kita untuk dapat menghadiri Majlis-majlis Ta&#39;lim/Dzikir.&nbsp;</p>\r\n\r\n<h3>&nbsp;</h3>', 'Publish', 'Layanan', 'Hadirilah Pengajian Rutin Sabtu Sore pimpinan Al-Habib Abdullah bin Muhsin bin Husein Al-\'Atthas', 'screenshot-2023-08-13-201624-1691934522.png', 'fa fa-globe', 82, 0, NULL, NULL, '2020-01-16 08:04:58', '2020-01-16 08:01:54', '2023-08-13 21:04:19'),
	(9, 4, 0, 'ID', '', 'pengajian-rutin-malam-jumat', 'Pengajian rutin Malam Jumat', '<h2><span style="font-size:18px"><span style="color:#000000">&bull; #SEBARKAN undangan di bawah ini melalui lisan dan media sosial seperti Facebook, WhatsApp, Telegram, Instagram dsb, demi meraih pahala mengajak dalam kebaikan.<br />\r\n&bull; Acara untuk umum.<br />\r\n&bull; Kepada Jama&#39;ah yang mengendarai sepeda motor harap berkendara dengan tertib, menggunakan helm, masker dan sedia jas hujan.<br />\r\n&bull; Peduli perjuangan Majlis: BCA 3452662733 a/n Abdullah Alatas.<br />\r\n&bull; Jangan hadir di Majlis Ta&#39;lim/Dzikir bila ada waktu luang, tapi luangkanlah waktu kita untuk dapat menghadiri Majlis-majlis Ta&#39;lim/Dzikir.&nbsp;</span></span></h2>', 'Publish', 'Layanan', 'Hadirilah pengajian rutin Malam Jumat  pimpinan Al-Habib Abdullah bin Muhsin bin Husein Al-\'Atthas', 'screenshot-2023-08-13-204630-1691934419.png', 'fa fa-laptop', 69, 2, NULL, NULL, '2020-01-16 08:08:16', '2023-08-13 08:07:46', '2023-08-13 21:08:16'),
	(18, 4, 0, 'ID', '-', 'pengajian-bulanan-malam-jumat-legi', 'Pengajian Bulanan Malam Jumat Legi', '<div><span style="font-size:12px"><span style="color:#000000">&bull; #SEBARKAN undangan di bawah ini melalui lisan dan media sosial seperti Facebook, WhatsApp, Telegram, Instagram dsb, demi meraih pahala mengajak dalam kebaikan.<br />\r\n&bull; Acara untuk umum.<br />\r\n&bull; Kepada Jama&#39;ah yang mengendarai sepeda motor harap berkendara dengan tertib, menggunakan helm, masker dan sedia jas hujan.<br />\r\n&bull; Peduli perjuangan Majlis: BCA 3452662733 a/n Abdullah Alatas.<br />\r\n&bull; Jangan hadir di Majlis Ta&#39;lim/Dzikir bila ada waktu luang, tapi luangkanlah waktu kita untuk dapat menghadiri Majlis-majlis Ta&#39;lim/Dzikir. </span></span></div>', 'Publish', 'Layanan', 'Hadirilah Pengajian Bulanan Malam Jumat Legi  pimpinan Al-Habib Abdullah bin Muhsin bin Husein Al-\'Atthas', 'screenshot-2023-08-13-204101-1691934223.png', NULL, NULL, 1, NULL, NULL, '2020-09-15 23:29:49', '2023-08-13 23:29:03', '2023-08-13 21:08:54'),
	(19, 4, 6, 'ID', '-', 'wajib-zakat-terbagi-dalam-5-perkara', 'Wajib zakat terbagi dalam 5 perkara', '<p>Wajib zakat itu di dalam 5 perkara:</p>\r\n\r\n<ul>\r\n	<li>Dia adalah binatang-binatang ternak yang hanya di khusus kan kepada Onta kemudian sapi dan kambing saja, selain itu tidak ada zakat nya.</li>\r\n	<li>Yang di jadikan alat tukar. Kalau dahulu Emas dan Perak dan yang menduduki kedudukan Emas dan Perak yaitu sekrang duit.</li>\r\n	<li>Dan semua dari bentuk makanan dari hasil benih biji-bijian. Atau yang di jadikan makanan pokok sehari-sehari kita. Dari pertanian kita hanya biji-bijian saja yang di masukan di dalam jumlah barang-barang yang keluar zakat nya.</li>\r\n	<li>Dan buah-buahan hanya kurma dan anggur.</li>\r\n	<li>Dan barang-barang dagangan.</li>\r\n</ul>\r\n\r\n<p>Ini lah 5 perkara yang terkena dari pada zakat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ada pun binatang-binatang ternak maka wajib zakat nya di dalam 3 jenis saja:</p>\r\n\r\n<p>Di antara nya:</p>\r\n\r\n<ul>\r\n	<li>Onta</li>\r\n	<li>Sapi</li>\r\n	<li>Kambing</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dan syarat kewajibannya ada 6 perkara:</p>\r\n\r\n<ul>\r\n	<li>Orang-orang yang wajib mengeluarkan zakat harus orang islam. Orang Murtad ketika dia masuk islam lagi wajib mengeluarkan zakat selama masa murtad nya dan yang tidak wajib mengeluarkan zakat hanya orang kafir asli.</li>\r\n	<li>Dan harus manusia yang merdeka bukan budak</li>\r\n	<li>Kepemilikan sempurna</li>\r\n	<li>Dan harus masuk jumlah nishob nya atau ukuran dari pada benda nya yang di kategorikan terkena zakat. Beda antara binatang dengan pertanian dan beda juga dengan emas dan perak</li>\r\n	<li>Harus berjalan 1 tahun penuh dan tidak boleh kurang dari satu hari.</li>\r\n	<li>Dia di bawa makan nya di tempat ladang yang bebas tapi kalau makan dan minum nya ada biaya nya maka tidak keluar zakatnya.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adapun alat tukar emas dan perak ada 2: dahulu di jadikan alat tukar namun sekarang alat tukar kita adalah uang. Emas wajib zakat nya 84 gram dan perak wajib zakat nya 550 gram</p>\r\n\r\n<p>Dan syarat-syarat kewajiban zakat di dalam nya emas dan perak 5 perkara.</p>\r\n\r\n<ul>\r\n	<li>Harus muslim. Keluar dari muslim orang kafir Asli tidak murtad</li>\r\n	<li>Orang yang merdeka laki dan perempuan tidak budak</li>\r\n	<li>Kepemilikan yang sempurna</li>\r\n	<li>Dan sudah masuk ukuran nisob nya. Emas 84 gram perak 550 gram</li>\r\n	<li>Harus satu tahun.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adapun pertanian dari yang di jadikan zakat maka wajib zakat nya dengan 3 syarat.</p>\r\n\r\n<ul>\r\n	<li>Dari apa-apa yang di tanam oleh para manusia. Kalau sekarang di tanam nya melalui alat sebenarnya sudah tidak terkena zakat karena bukan manusia lagi.</li>\r\n	<li>Harus nya bentuk barang-barang pokok yang bisa di simpan. Beras, gandum, tepung, jagung,, sagu,</li>\r\n	<li>Harus kena nishob nya. Nishob nya tadi 825 kg.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adapun buah-buahan maka wajib zakat nya di dalam 2 perkara. Di antara nya adalah.</p>\r\n\r\n<ul>\r\n	<li>Buah kismis</li>\r\n	<li>Buah kurma.</li>\r\n</ul>\r\n\r\n<p>Tadi kurma sudah kita bahas, yang di maksud adalah kurma kering. Walaupun tadi saya katakan pendapat dari Habib Umar bin Abdurrahman Al-Atthos boleh mengeluarkan kumra rutop. Karena lebih enak bagi orang-orang miskin</p>\r\n\r\n<p>Syarat wajib ada 4 perkara:</p>\r\n\r\n<ul>\r\n	<li>Islam atau harus seorang muslim yang mempunyai pohon tersebut.</li>\r\n	<li>Orang merdeka</li>\r\n	<li>Kepemilikan sempurna</li>\r\n	<li>Harus sudah sampai jumlah nisob nya. Jumlah yang harus dia keluarkan ukuran zakat nya</li>\r\n</ul>', 'Publish', 'Berita', 'Wajib zakat terbagi dalam 5 perkara', '1645525935-macam-macam-zakat-re-1692452004.jpg', NULL, NULL, NULL, NULL, NULL, '2020-09-15 23:43:00', '2020-09-15 23:41:16', '2023-08-19 20:33:27'),
	(21, 4, 6, 'ID', '-', 'janganlah-berharap-kematian-karena-bahaya-yang-menimpa', 'Janganlah berharap kematian karena bahaya yang menimpa', '<p><strong>السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ</strong></p>\r\n\r\n<p><strong>بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِ</strong></p>\r\n\r\n<p><strong>نَوَيْتُ التَّعَلُّمَ وَالتَّعْلِيْمَ، وَالنَّفْعَ وَالاِنْتِفَاعَ، وَالْمُذَاكِرَةَ وَالتَّذْكِيْرَ،</strong><br />\r\n<strong>وَالإِفَادَةَ وَالاِسْتِفَادَةَ، وِالْحِثُّ عَلَى تَمَسُّكِ بِكِتَابِ الله،</strong><br />\r\n<strong>وَبِسُنَّةِ رَسُوْلِ الله صلى الله عليه وسلَّم،</strong><br />\r\n<strong>وَالدُّعَاءَ إِلَى الْهُدَى، وَالدِّلالَةَ عَلَى الْخَيْرِ،</strong><br />\r\n<strong>اِبْتِغَاءَ وَجْهِ الله وَمَرْضَاتِهِ وَقُرْبِهِ وَثَوَابِهِ</strong></p>\r\n\r\n<p><strong>الْحَمْدُ ِللهِ رَبِّ الْعَالَمِيْنَ</strong><br />\r\n<strong>وَالصَّلاَةُ وَالسَّلاَمُ عَلَى أَشْرَفِ اْلأَنْبِيَاءِ وَالْمُرْسَلِيْنَ وَعَلَى اَلِهِ وَصَحْبِهِ أَجْمَعِيْنَ</strong><br />\r\n<strong>لاحول ولا قوة إلا بالله العلي العظيم</strong><br />\r\n<strong>وَمَا تَوْفِيقِي إِلَّا بِاللَّهِ ۚ عَلَيْهِ تَوَكَّلْتُ وَإِلَيْهِ أُنِيبُ</strong><br />\r\n<strong>حَسْبُنَا اللَّهُ وَنِعْمَ الْوَكِيلُ</strong><br />\r\n<strong>نعم المولى ونعم النصير</strong></p>\r\n\r\n<p>yang sama kita hormati dan kita muliakan orang tua kita yang berkenaan Majelis pada malam ini yang di takdir berkumpul bersama kita yaitu guru kita orang tua kita Al-Habib Mukhsin bin Idrus Al-Hamid kita doakan panjang umur sehat wal Afiyah, para Mu&rsquo;allimin para guru para Asatidz, bapak-bapak ibu-ibu hadirin dan hadirat, jamaah Live Streaming Majelis Rasulullah Saw dimana pun berada, mudah-mudahan pada malam ini Allah Swt senantiasa mencurahkan rahmat dan ridho nya, mengampuni dosa kita mengabulkan hajat kita memudahkan segala urusan kita dan semoga hajat-hajat kita melalui munajat kita di Majelis Rasulullah Saw ini di ijabah dan di qobul oleh Allah Swt. Demikian terlebih khusus ilmu yang kita dengar mudah-mudahan menjadi ilmu yang berguna dan bermanfaat dunia dan akhirat. Alhamdulillah kita bersyukur kepada Allah Swt malam ini kita kembali di perjumpakan oleh Allah Swt dan di pertemukan di dalam rutinitas agung, perkumpulan yang mulia menuntut ilmu membaca sholawat dan salam kepada baginda Rasul di Majelis Rasulullah Saw. Mudah-mudahan kehadiran kita malam ini menjadi ladang amal soleh untuk kita di Yaumil Mahsyar Amin Allahumma Amin</p>\r\n\r\n<p>baiklah hadirin setelah kita bersyukur kepada Allah Swt bersholawat salam kepada baginda Rasul Saw lalu kemudian kita akan kembali melanjutkan pelajaran kita dalam kitab Hadist Riyahdussholihin rangkuman oleh Al-Imam Nawawi semoga Allah meridhoinya dan kita mendapatkan barokah nya. Kita akan baca bersama masih berada di bab sabar</p>\r\n\r\n<p>عَنْ أََنَسٍ رَضِيَ اللهُ عَنْهُ قَالَ : قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَ آلِهِ وَ صَحْبِهِ وَ سَلَّمَ : لاَ يَتَمَنَّيَنَّ أَحَدُكُمُ المَوْتَ لِضُرٍّ أَصَابَهُ فَإِنْ كَانَ لاَ بُدَّ فَاعِلاً فَلْيَقُلْ اللَّهُمَّ أَحْيِنِي مَا كَانَتِ الحَيَاةُ خَيْراً لِي وَتَوَفَّنِي إِذَا كَانَتِ الوَفَاةُ خَيْرًا لِي (متفق عليه)</p>\r\n\r\n<p>Dari Anas ra, Rasulullah SAW bersabda &ldquo;Sungguh janganlah kalian berharap kematian karena bahaya yang menimpa. Bila tidak bisa menghindar, maka berdoalah, ya Allah hidupkanlah aku bila kehidupan lebih baik bagiku, matikanlah aku bila kematian lebih baik bagiku,&rdquo; (Muttafaqun &lsquo;Alaih).</p>\r\n\r\n<p>Hadist malam ini tepat nya hadist yang ke 41 dari pada rangkuman hadist Riyadhussholihin dan hadist yang ke 17 dari pada bab sabar. Hadist ke 40&nbsp; dari Anas bin Malik dari sahabat Rasul yang bernama Anas bin Malik yang sudah beberapa kali kita dengar biografi beliau. Semoga Allah Swt meridhoinya dan kita mendapatkan barokah nya. &nbsp;قَالَ ( beliau berkata) قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَ آلِهِ وَ صَحْبِهِ وَ سَلَّمَ ( Rasulullah Saw bersabda) لاَ يَتَمَنَّيَنَّ ( jangan sekali-kali seseorang ber angan-angan atau meminta atau memohon. Ada huruf&nbsp; tauqid nya, jangan sekali-kali siapapun, laki perempuan, muslim dan muslimah berharap ber angan-angan meminta kepada Allah Swt أَحَدُكُمُ المَوْتَ ( mati cepat, meminta kepada Allah Swt mati buru-buru) لِضُرٍّ أَصَابَهُ ( karena sebab musibah yang meminta diri nya) فَإِنْ كَانَ لاَ بُدَّ ( kalau memang seseorang harus meminta kematian cepat untuk diri nya maka Nabi mengajarkan secara sopan seorang makhluk kepada sang kholik dengan ucapan اللَّهُمَّ أَحْيِنِي مَا كَانَتِ الحَيَاةُ خَيْراً لِي وَتَوَفَّنِي إِذَا كَانَتِ الوَفَاةُ خَيْرًا لِي (ya Allah hidupkanlah aku bila kehidupan lebih baik bagiku, matikanlah aku bila kematian lebih baik bagiku). Hadist malam ini adalah suatu hadist larangan oleh baginda Nabi Muhammad Saw dimana Nabi melarang kita tidak boleh kita berangan-angan minta mati capet, minta mati segera atau buru-buru mau mati, minta sama Allah Swt agar cepat-cepat di matikan itu di larang oleh Baginda Nabi Saw. Karena apa? Karena ada penderitaan yang menimpa kita. Musibah itu artinya apa yang menimpa dan menyakiti seseorang</p>\r\n\r\n<p>Jadi kata Nabi jangan sampai seseorang minta mati buru-buru karena dia menderita, karena dia menderita musibah, atau karena dia kelaperan atau karena dia kefakiran dan kemiskinan atau di tinggal oleh orang yang sangat kita cintai lalu minta mati buru-buru, tidak boleh kata baginda Nabi Saw. Kenapa? Karena khawatir kalau dia berdoa minta mati buru-buru di Kabul oleh Allah Swt mati dia. Jadi Nabi memberi gambaran sama kita pemahaman hidup itu hanya satu kali. Beda sama kita main game. Kalau kita main game sudah game over masih ada continue. Kalau manusia kalau sudah di talqin selesai sudah. Tahlil pertama kedua ketiga. Kalau kita main game masih terus lagi. Ane mau mati aja bib, jangan&hellip; ente hidup cuman sekali. Kenapa pengen mati? Laper bib, susah hidup, pengen mati buru-buru, iya, nanti di kubur lebih para lagi ente. Bukan berarti kalau mati di dunia ini selesai lalu di dalam kubur enak? Tidak, bahkan lebih tidak enak. Maka nya jangan coba-coba cari kematian, minta sama Allah Swt buru- buru</p>\r\n\r\n<p>Ibu bapak hadirin-hadirat yang di rahmati oleh Allah Swt. Hadist malam ini Nabi mengajarkan kepada kita agar membuka pikiran kita bahwa tidak ada manusia yang hidup di dunia ini tidak menderita dan pasti ada cobaan. Baik dari orang paling miskin sampai orang paling kaya pasti ada cobaan. Tidak ada orang hidup nya mulus, dari ahli maksiat sampai orang paling taat pasti ada ujian. Dari manusia jelata sampai pilihan Allah Swt dari yang nama nya Nabi dan Rasul pasti di kasih ujian sama Allah Swt. Kata Nabi: seseorang itu di kasih cobaan sama Allah Swt tergantung ketebalan agama nya. Kalau agama seseorang itu kuat, tebal, mantap ujian nya lebih top lagi. Tapi kalau iman sesorang tipis maka ujian nya juga tipis dan orang yang paling tebal iman nya adalah para Nabi. Maka nya ujian nya paling berat. Kembali saudara, bahwa tidak ada manusia di dunia ini hidup tanpa ujian. Mau dia orang baik atau orang jahat, kalau dia muhsin, di sebut di dalam hadist kalau orang baik di sebut muhsin, tidak boleh dia mengharap mati buru-buru, kata Nabi mungkin saja dia mau menambahkan amal nya. Ada orang baik, kata Nabi jangan minta mati buru-buru mungkin saja bisa bertambah amal nya. Bisa nambah sholat nya, bisa nambah baca Qur&rsquo;an nya, bisa nambah tahajjud nya, bisa nambah puasa sunnah nya , karena kata Nabi: orang yang terbaik itu adalah orang yang umur nya panjang amal nya juga baik. Karena tidak sama, ada orang di kasih kesempatan sama Allah Swt umur nya sampai 60 tahun, apalagi sampai 70 tahun, apalagi 80 tahun, umur 90 tahun kita cari zaman sekarang sudah jarang, apalagi nyari orang yang sekarang umur nya 100 tahun, mungkin 1 rt belum tentu ada, satu Rw mungkin ada satu atau dua orang. Satu Jakarta bisa di hitung orang yang umur nya 100 tahun sulit apalagi kita ummat nya Nabi 60-70 tahun. Kalau misalkan ada orang umur nya 80 tahun orang nya baik maka beruntung dia. Sudah pernah pergi haji 20 kali, pergi umroh setiap tahun 50 kali. Selama 50 tahun sholat nya berjamaah, selama 50 tahun tidak pernah meninggalkan puasa senin kamis, selama 60-70 tahun tidak pernah meninggalkan setiap hari 1 juz Al-Qur&rsquo;an, selama 70-80 tahun tidak pernah ninggalin sholat Tahajjud, lalu meninggal dunia, ada lagi orang umur 17 tahun meninggal dunia,apakah sama amal nya? Tidak bisa sama orang yang meninggal umur nya panjang amal nya soleh semakin tinggi kedudukan nya, semakin banyak amal nya lalu di bandingkan dengan orang yang umur nya singkat, apalagi sholat nya pas-pasan, ibadah nya pas-pasan, apalagi meninggal nya karena bunuh diri, ini sudah keluar dari agama islam. Jadi tidak sama dan orang baik pun tidak boleh minta buru-buru mati. Atau kalau memang dia bukan orang baik atau orang jahat, pendosa, tidak boleh juga minta mati buru-buru. Bisa jadi di situ dia kapok, di situ dia bertaubat. Boleh jadi orang yang jahat ini di kasih kesempatan hidup sama Allah Swt , di situ dia menangis, di situ dia minta ampun kepada Allah Swt , di situ dia melihat orang pada pergi ke pengajian, lihat orang membaca Al-Qur&rsquo;an akhir nya dia terpancing dan dia ikut ke pengajian dan baca Qur&rsquo;an, lihat orang shodaqoh akhir nya dia ikut shodaqoh. Bisa jadi dia kapok dia taubat. Maka nya tidak boleh minta meninggal buru-buru.</p>\r\n\r\n<p>Kata Nabi : &ldquo;jangan sampai kalian mengharapkan dan berdoa minta buru-buru wafat sebelum datang nya kematian&rdquo;. Karena orang kalau sudah wafat terputus amal nya. Apa bisa baca maulid lagi? Apa bisa baca Qur&rsquo;an lagi? Apa bisa shodaqoh lagi? Tidak bisa. Karena tempat mengumpulkan amal bukan di dalam kubur, tempat ngumpulin amal bukan di alam mahsyar tapi di dunia. Dunia ini tempat kita mengumpulkan amal. Malam ini kita ngaji pun kita niat mengumpulkan amal. Saya keluar dari rumah saya niat mau ngumpulin amal. Kita baca sholawat niat ngumpulin amal soleh. Karena Cuma itu yang kita bawa ketika kita wafat. Kita tidak bawa jubah kita, kita tidak bawa imamah kita, kita tidak bawa celana kita, kita tidak bawa mobil kita, kita tidak bawa bintang dan jabatan kita bahkan orang yang paling dekat dengan kita tidak ikut dan yang ikut dengan kita hanya amal. Jadi kita niat ngumpulin amal</p>\r\n\r\n<p>Apa di katakana, sahabatpun ketika di tinggal wafat oleh Rasulullah Saw mereka sudah tidak pengen hidup. Jangan lagi kita melihat saat ini ujian, cobaan fitnah ini dan itu. Dahulu sahabat ketika di tinggal wafat oleh baginda Rasul mereka sudah tidak pengen hidup. Anas bin Malik yang membawa kan hadist malam ini&nbsp; pernah mengatakan:&rdquo; seandainya dulu Nabi pernah melarang kita tidak boleh berdoa minta mati buru-buru&nbsp; dan seandainya Nabi tidak melarang kita sudah minta sama Allah Swt agar mati buru-buru. Sudah tidak ada nikmat nya hidup setelah di tinggal wafat oleh baginda Nabi besar Muhammad Saw. Anas bin Malik itu dekat dengan Rasulullah Saw. Maka nya waktu di tinggal wafat sudah tidak nafsu hidup.</p>\r\n\r\n<p>Apa kata Anas bin Malik:&rdquo; tidak ada hal yang paling menggembirakan saya , tidak ada hal yang paling menggembirakan orang Madinah melainkan di mana hari di masuki oleh Baginda Nabi Muhammad Saw. Untuk Mekkah dan dunia tidak ada hari yang paling beruntung, tidak ada hari yang istimewa kecuali hari di lahirkan nya Rasulullah Saw. Hari dimana Rasul muncul di Madinah yang tidak kita bacakan Thola&rsquo;al Badru &lsquo;alaina itu hari yang paling bercahaya. Tempat yang gelap menjadi terang, orang yang sedih menjadi gembira dengan datang nya Rasulullah Saw. Begitu juga tidak ada hari yang paling meyedihkan kata Anas bin Malik kecuali hari di mana waktu Nabi Meninggal itu kegelapan di dunia rata. Orang yang senang jadi sedih, suasana yang ceria hilang, alam yang terang benderang matahari redup. Sampai kata Anas bin Malik sampai Nabi waktu kita kubur, ini tangan harus menutup tanah atau mendorong tanah nya, padahal hati kita tidak mau. Seakan-akan sudah Nabi jangan di kubur. Tidak mau berpisah dengan baginda nabi besar Muhammad Saw.</p>\r\n\r\n<p>Ada sahabat juga berdoa seperti itu. Denger berita dari kejauhan Nabi meninggal langsung berdoa: Ya Allah butakan saja mata saya agar saya tidak melihat siapapun setelah rasul wafat. Itu merasa kehilangan tapi berharap agar mati buru-buru jangan, tidak boleh, itu yang di maksud di dalam hadist ini.</p>\r\n\r\n<p>Ibu bapak hadirin-hadirat yang di rahmati oleh Allah Swt apa kata Nabi di sini فَإِنْ كَانَ لاَ بُدَّ فَاعِلاً(tapi kalau memang ente sudah bosan hidup dan pengen buru-buru meninggal فَلْيَقُلْ (ucapkan) اللَّهُمَّ أَحْيِنِي مَا كَانَتِ الحَيَاةُ خَيْراً لِي وَتَوَفَّنِي إِذَا كَانَتِ الوَفَاةُ خَيْرًا لِي (ya Allah hidupkanlah aku bila kehidupan lebih baik bagiku, matikanlah aku bila kematian lebih baik bagiku). Seandainya harus membaca dan meminta lah seperti itu. Tapi ini untuk kelas orang-orang hebat. Kalau untuk kita orang yang sudah meninggal saja pengen hidup. Kata orang yang ada di dalam kubur berkata: Ya Allah balikin saya Ya Allah, saya pengen qodho amal sholeh yang pernah saya tinggalin, hidup kan saya Ya Allah sesaat saja Ya Allah</p>\r\n\r\n<p>Di dalam hadist: orang yang sudah meninggal dunia andai kata di izinin boleh hidup walaupun hanya satu menit mereka memohon dan di iya kan oleh Allah Swt maka mereka akan bersyukur. Seandainya boleh hidup satu detik saja sudah bagus ingin berzikir kepada Allah Swt. Seandai nya di kasih hidup satu jam apalagi atau satu hari tapi itu hal yang tidak mungkin. Orang sudah meninggal masuk kuburan selesai dan kuburan transit pertama</p>\r\n\r\n<p>Kata Nabi: kuburan itu transit pertama, rumah pertama, negeri pertama baru masuk gerbang nya, kalau enak keadaan setelah lebih enak. Kalau keadaan dalam kubur nya siksaan berarti alam selanjut nya siksaan demi siksaan. Jadi orang yang meninggal ini seandai nya dia mendapati kuburan nya seperti istana surga berarti alam selanjut nya lebih enak lagi tapi kalau sudah kuburan nya penuh dengan belatung, kuburan nya penuh dengan binatang, kuburan nya penuh dengan azab berarti keadaan nya lebih buruk lagi. Jadi tidak boleh berharap minta mati sama Allah Swt buru-buru. Tapi minta meninggal husnul khotimah boleh. Atau seperti doa Nabi ini. Kalau kehidupan lebih baik untuk saya panjanngin tapi kalau mati lebih baik matikan.</p>\r\n\r\n<p>Nabi Isa pun di sebut dalam Qur&rsquo;an berdoa nya تَوَفَّنِي مُسْلِمًا وَأَلْحِقْنِي بِالصَّالِحِينَ (&nbsp;wafatkanlah aku dalam keadaan Islam dan gabungkanlah aku dengan orang-orang yang saleh.).</p>\r\n\r\n<p>Ibu bapak hadirin dan hadirat yang di rahmati oleh Allah Swt. Di dalam islam kita di larang minta buru-buru mati tapi yang di anjurkan dalam islam kita di suruh mempersiapkan kesiapan sebelum datang nya kematian. Minta mati buru-buru jangan, ente punya bekal apa? Kita orang beriman tidak boleh minta mati buru-buru .kenapa? kita protes dengan takdir Allah Swt. Allah Swt sudah tau mana yang terbaik untuk hamba nya. Jadi seakan-akan anda ini tidak terima dengan ketentuan Allah Swt. Itu tidak boleh. Ente punya persiapan apa? Kematian itu alam yang panjang tidak selesai 100 tahun kalau belum kiamat terus masih di dalam kubur. Kiamat masih 200 tahun lagi ya terus masih di dalam kubur. Masih 300 tahun lagi terus. Tidak sebentar, jadi ente punya persiapan apa? Kita ini kalau mau pergi jauh, mau pergi umroh biasa nya berangkat 14 hari apa yang kita bawa. Odol, sikat, bawa baju gak ente. Bawa, apa? Kain ihrom. Bawa kaos gak, enggak, baju koko? Enggak, gamis? Enggak. Ini kematian jauh dan perjalanan nya panjang. Jadi persiapan nya apa? Kalau ulama aulia mereka menjadikan kematian itu gerbang selalu ada menghayati di dalam pikiran nya. Tidak minta mati buru-buru tapi mempersiapkan apa-apa yang di bawa untuk kematian. Sampai menjaga wudhu nya, sekian tahun sholat subuh pakai wudhu sholat isya.</p>\r\n\r\n<p>Imam Abu Hanifah, Syekh Abdul Qodir Jailani, Syekh Abu Bakar bin Salim banyak lagi aulia ulama sholat subuh pakai wudhu sholat isya, berapa minggu? Berapa tahun, ada yang 25 tahun, ada yang 15 tahun, ah itu khayal, terserah ente tapi di tulis dalam sejarah. Oh itu bid&rsquo;ah Nabi tidak pernah mengajarkan itu dan Nabi kalau malam tidur, itu Nabi. Di dalam ilmu Tasawwuf ada kelas yang nama nya Mujahadah. Bersungguh-sungguh berkorban mereka berusaha malam itu zikir baca Qur&rsquo;an seandainya tidur ketiduran tapi ketiduran nya dalam kondisi duduk dan tidak membatalkan wudhu. Untuk apa? Mempersiapkan amal untuk datang nya kematian.</p>\r\n\r\n<p>Imam Abu Hanifah di tulis di dekat rumah nya menggali tanah setiap hari mengaji di situ baca Al-Qur&rsquo;an di lobang itu dan di Tanya sama anak nya buat apa? Oh ini buat kuburan, nanti kalau saya meninggal kubur ayah di sini karena ayah sudah menghatamkan Qur&rsquo;an di tanah ini 7000 kali khatam Qur&rsquo;an. Kenapa begitu? Ngumpulin amal.</p>\r\n\r\n<p>Imam Shal bin Abdullah Attusturi. Beliau di dalam rumah nya bikin kuburan , kalau kita kan bikin Aquarium kalau beliau di dalam rumah nya bikin kuburan kalau ente pulang nanti bikin kuburan keluarga ente tidak ada yang tidur. Ini kelas wali. Beliau di dalam rumah nya bikin kuburan kalau beliau habis ngajar habis ceramah di sanjung-sanjung di puji-puji nama nya mulai terkenal buru-buru masuk kerumah nya langsung masuk ke dalam kuburan nya&nbsp; inget &nbsp;وَلَلْءَاخِرَةُ خَيْرٌ لَّكَ مِنَ ٱلْأُولَىٰ (Dan sesungguhnya hari kemudian itu lebih baik bagimu daripada yang sekarang (permulaan). Untuk apa begitu? Supaya mempersiapkan amal untuk datang nya kematian. Jadi dalam islam mempersiapkan kematian itu di anjurkan tapi minta mati buru-buru di larang oleh Nabi. Kalau maksa ya silahkan. Ane mau mati buru-buru bib, iya deh tidak apa-apa biar sepi nih bumi. Orang juga sudah pada bosen lihat ente. Ini di larang oleh islam. Ada berharap datang nya kematian yang di izinin oleh agama ada.</p>\r\n\r\n<p>Contoh nya mati karena rindu sama Allah Swt. Ane pengen mati bib karena rindu sama Allah Swt, bohong ente. Ini hanya kelas nya para Nabi. Kalau ente pagi masih makan nasi uduk siang sayur asem ente bohong. Siapa orang rindu sama Allah Swt maka Allah Swt rindu kepada nya. Maka nya kalau ada orang yang meninggal dunia di antara kita yang soleh apa kita bilang, kita sayang sama dunia tapi Allah lebih sayang sama dia. Itu berbaik sangka nya kita. Padahal itu kelas nya para wali. Terlebih khusus itu untuk kelas nya para Nabi. Maka nya Nabi ketika di kasih pilihan oleh Allah Swt melalui Malaikat Jibril , wahai Jibril sampaikan kepada kekasihku yaitu Muhamnmad dan Tanya dia pengen terus ada di Bumi, hidup terus tidak ada mati atau rindu kepadaku kata Allah Swt apa jawaban&nbsp; Rasulullah Saw ketika mendengar pilihan itu? Bukan nya Nabi minta mati, Nabi di kasih pilihan Nabi pilih apa? Saya sudah rindu sama Allah Swt, pengen berdekatan dengan Allah Swt. Sahabat tidak ada yang paham Nabi mengucapkan seperti itu kecuali yang menangis hanya Sayyidina Abu Bakar Siddiq. Kata sahabat, wahai Sayyidina Abu Bakar Siddiq kenapa kamu menangis? Kata Sayyidina Abu Bakar Siddiq, ente tidak paham bahasa Nabi? Tidak, itu kalimat yang keluar dari Nabi artinya Nabi rindu sama Allah Swt dan Nabi sebentar lagi meninggalkan kita. Sudah rindu sama Allah Swt. Itu kelas nya para Nabi. Ane pengen buru-buru mati bib, kenapa? Sudah terlalu rindu kepada Rasulullah Saw. Ini juga kelas nya para wali. Kalau tadi kelas nya para Nabi ini kelas nya para wali. Para wali itu sama Rasulullah Saw hiburan nya Cuma Rasulullah Saw.</p>\r\n\r\n<p>Saya pernah ketemu orang soleh, saya kata kan silahkan ke Jakarta nanti mau pergi kemana saya anter, mau berlibur sama keluarga silahkan. Jawaban nya apa? Hiburan saya hanya Rasulullah Saw. Itu orang sekarang, apalagi orang terdahulu yang hidup di zaman Rasulullah Saw. Kata Rasulullah Saw sebaik-baik nya zaman adalah zaman saya, apalagi zaman itu. Rindu pengen meninggal buru-buru, pengen kumpul bersama Rasulullah Saw, itulah yang di sampaikan baginda Rasul kepada Sayyidah Fathimah Az Zahra. Sebelum Nabi meninggal di bisikin, Sayyidah Fathimah menangis lalu di bisikin, bisikan ke dua Sayyidah Fathimah tersenyum dan gembira, setelah Nabi meninggal dunia Sayyidah Aisyah bertanya, wahai Fathimah Azzahra saya mau bertanya: apa yang membuat kamu menangis dari biskan Rasulullah Saw lalu kamu tersenyum, iya kata Fathimah Azzahra Nabi memberi tahu kepada saya Nabi akan meninggal dunia sebentar lagi dan saat itu saya menangis. Karena saat itu Sayyidah Fathimah adalah darah daging Rasulullah Saw yang paling di sayang sama Rasulullah Saw. Maka nya waktu Nabi meniggal dunia tinggal Fathimah karena yang lain sudah meninggal. Ruqoyyah, Ummu Kultsum, Zainab, yang laki apalagi semua sudah meninggal kecuali Fathimah. Maka nya waktu di bawa jenazah Rasulullah Saw kekuburan Sayyidah Fathimah lari sampai di pegang sama Sayyidina Ali bin Abi Thalib. Waktu sahabat tutup tanah kuburan nya Rasulullah Saw Sayyidah Fathimah seperti orang yang tidak mau berpisah dengan Rasulullah Saw, apa dia katakan, wahai sahabat Rasulullah Saw apakah kalian ridho menutup Rasul dengan tanah? Akhir nya di bawa oleh Sayyidina Ali bin Abi Thalib pulang kerumah. Jadi Sayyidah Fathimah menangis ketika di bisikan oleh Nabi bahwa Nabi ingin meninggal dunia.</p>\r\n\r\n<p>Lalu kamu tersenyum setelah itu kata Sayyidah Aisyah. Apa yang kamu dengar dari bisikan Rasul? Kata Sayyidah Fathimah Azzahra Nabi bisikin yang ke dua kepada saya, kamu wahai putriku adalah keluarga yang paling pertama nyusul abah meninggal dunia, seneng dan girang dan itu yang di maksud kesenangan berharap mati, kenapa? Karena rindu kepada abah nya yaitu Rasulullah Saw dan itulah yang di ungkapkan kepada sahabat. Sayyidina Bilal bin Rabbah pun begitu juga, istri nya nangis-nangis. setelah Nabi meninggal dunia Sayyidina Abu Bakar tidak kuat tinggal di Madinah. Lihat Masjid nangis, lihat jalanan nangis, lihat gunung nangis, karena dia ingat setiap tempat yang di lalui oleh Rasulullah Saw. Pindah jauh dan akhir nya di mimpiin sama Rasulullah Saw. Pendek cerita waktu mau meninggal dunia Sayyidina Bilal bin Rabbah istrinya mengatakan celaka suami saya akan meninggal dunia, apa kata Sayyidina Bilal: jangan kau bilang celaka tapi bilang beruntung suami saya yang bernama Bilal bin Rabbah karena sebentar lagi akan meninggal dunia dan akan berkumpul bersama Rasulullah Saw dan kawan-kawan nya. &nbsp;Girang karena berharap kematian karena rindu kepada Baginda Nabi besar Muhammad Saw.</p>\r\n\r\n<p>Bukan lagi manusia, bukan lagi sahabat kalau kita buka kitab ada sampai keledai atau binatang yang biasa di tunggangi sama Nabi di tinggal Nabi wafat dia bunuh diri karena tidak mau berpisah dengan Rasulullah Saw. Itu yang di katakan oleh Al-Imam Al-Habib Abdullah bin Alwi Al-Haddad: wahai orang yang bernyawa, yang berjiwa apakah kamu bisa jauh dari Rasulullah Saw.</p>\r\n\r\n<p>Jadi berharap kematian karena rindu kepada Allah Swt itu di boleh kan. Berharap mati karena rindu kepada Rasulullah Saw itu juga di bolehkan atau berharap mati jihad di jalan Allah Swt itu juga boleh dan itu yang di kumandangakan oleh Rasulullah Saw. Waktu Nabi mau perang Badr Nabi melihat kaum muslimin jumlah nya 313 lalu Nabi masuk ke dalam kemah nya berdoa,sujud sampai sorban nya terjatuh. Beda sama karbala ya? Kalau karbala kaum muslimin 70 orang. Ada ibu-ibu ada anak kecil dan lawan nya ada 4000, maka nya itu bukan di bilang perang tapi di bilang pembantaian. Kalau badr kaum muslimin 313 orang kafir 1000 lebih. Nabi berdoa minta kekuatan sama Allah Swt sebelum mulai pertempuran Nabi umumin: wahai kaum muslimin seandainya ada orang kafir membunuh kalian dan kalian pasrah ridho ikhlas berharap pahala dari Allah Swt tidak gentar tidak mundur lalu kalian terbunuh tempat nya kalian hanya satu yaitu surga nya Allah Swt. Ayo mari bersama-sama kita pergi ke surga nya Allah Swt yang luas nya seperti langit dan bumi.</p>\r\n\r\n<p>Ada sahabat Nabi nama nya Umair bin Humam Al-Jamuhi Al-Anshori. Itu nama nya di sebut kalau lagi haul ahlul badr sama Habib Hud. Beliau mendengar Nabi ngasih motivasi seperti itu dia mau perang sempat-sempat nya lagi makan kurma dia langsung bilang beruntung-beruntung . tidak ada yang bisa menghalangi saya untuk masuk ke dalam surga nya Allah Swt kecuali saya nanti terbunuh di medan pertempuran. Tangan nya masih megang kurma, seandai nya ane harus nunggu untuk menghabisi kurma-kurma ini terlalu lama lalu di buang kurma nya. Buang kurma nya , cabut pedang nya, langsung berperang seperti singa yang menerkam di situ dia terbunuh sebagai syahid di jalan Allah Swt. Artimya dia mencari kematian bukan untuk duniawi, bukan untuk pujian, bukan untuk pamer, bukan untuk cari bayaran tapi murni dan tulus di jalan Allah Swt. Maka dia berangan-angan kematian tersebut di bolehkan. Di hadist kan di larang kita minta mati buru-buru tapi tidak serta merta seperti itu. Ada orang mati karena rindu sama Allah Swt itu di bolehkan, ada orang ingin mati karena rindu sama Rasulullah Saw itu di bolehkan, ada orang ingin mati dalam keadaan jihad di jalan Allah Swt atau ingin wafat di Madinah juga di bolehkan karena Nabi menganjurkan</p>\r\n\r\n<p>Nabi bersabda: siapa orang yang berdoa minta kepada Allah Swt agar bisa wafat di Madinah maka saya akan menjamin syafaat untuk orang itu.</p>\r\n\r\n<p>Atau kita minta wafat dalam keadaan sujud itu di bolehkan. Atau minta wafat dalam keadaan membaca Al-Qur&rsquo;an itu di bolehkan. Atau minta wafat dalam keadaan bakti kepada orang tua itu di bolehkan atau minta di wafat kan di dalam masjid itu di bolehkan atau minta sama Allah di matikan agar tidak terkena fitnah di dalam agama karena fitnah agama ini sangat berbahaya contoh nya gara-gara fitnah tersebut tadi nya muslim bisa murtad.</p>\r\n\r\n<p>Maka nya Nabi pernah berdoa&nbsp; di dalam riwayat Imam Turmudzi dari Muadz bin Jabal: Ya Allah saya meminta agar di jadikan orang yang selalu berbuat baik, menghindari dosa, mengajak amar makruf Nahi Munkar, cinta kepada orang Miskin, ampuni lah kesalahan saya, sayangi saya Ya Allah dan jika engkau menghendaki fitnah di suatu kelompok mati kan saya dalam keadaan terbebas dari fitnah itu.</p>\r\n\r\n<p>Jadi minta di matikan agar tidak terkena fitnah dalam agama itu di bolehkan seperti Imam Ahmad bin Hambal. Imam Ahmad bin hambal adalah seorang ulama yang menjadi murid Imam Syafii terkena fitnah dari Amirul Mukminin sata itu Abbasiyah Al-makmun yang ketika dia dapat pasukan dari seorang ulama muktazilah yang mengatakan Qur&rsquo;an itu Makhluk akhir nya di perkuat oleh Al-Makmun itu setiap ulama yang mengingkari dia di penjara termasuk Imam Ahmad bin Hambal. Imam Ahmad bin Hambal menolak karena Qur&rsquo;an itu bukan makhluk. Qur&rsquo;an itu adalah Kalamullah bukan makhluk. Makmun tidak terima lalu Imam Ahmad bin Hambal di penjara dan di cambuk dan tidak lama setelah itu di bebaskan karena Al-Makmun punya anak ingin belajar agama dan belajar dengan Imam Ahmad bin Hambal dan setelah belajar di kasih amplop dan di kasih duit namun di tolak sama Imam Ahmad bin Hambal karena fitnah ini lebih berat dari pada fitnah saya di penjara . berkata Imam Ahmad bin Hambal Ya Allah kalau saja nyawa saya dalam kendali saya&nbsp; maka saya pilih mati saja dari pada saya menghadapi fitnah seperti ini. Jadi fitnah di dalam agama yang di takuti yang di khawatirkan itu di perkenankan di dalam islam dan itu lah inti dari hadist ini.</p>\r\n\r\n<p>Ibu bapak hadirin-hadirat yang di rahmati oleh Allah Swt hadist ini di riwayat kan oleh Al-Imam Bukhori dan Muslim. Saudara-saudara kita tidak akan pernah tau kapan dan dimana datang nya kebaikan. Ada kala nya kebaikan itu yang membuat kita memiliki amal segunung itu karena ujian, karena cobaan, karena kemiskinan, karena ke fakiran, karena kesusahan,karena penderitaan, karena wabah, karena&nbsp; musibah, karena fitnah demi fitnah di situlah bisa jadi datang nya kebaikan. Ada kala nya juga dengan kematian sehingga menjadi rem atas dosa-dosa kita. Intinya kita sebagai orang yang beriman harus senantiasa mentafwidkan segala urusan-urusan kita kepada Allah Swt. Tawakkal, pasrah, sampaikan segala urusan kita kepada Allah Swt, mana yang terbaik itu semua yang akan di berikan kepada kita. Amin Allahumma Amin. Mungkin satu hadist, kalau saya baca dua hadist seperti nya waktu nya tidak cukup&nbsp; dan insya Allah melalui hadist ini mudah-mudahan kita di jadikan oleh Allah Swt orang yang senantiasa sabar di dalam menerima segala bentuk ujian, cobaan, baik datang nya dari orang-orang terdekat kita dari keluarga dari saudara dari tetangga dari kerabat dari sesama kita maupun dari non muslim yang menguji kita. Semoga Allah Swt memberikan kepada kita kesabaran</p>\r\n\r\n<p>Kata Nabi: jangan kamu berharap pengen berduel dengan musuh, jangan kau berharap berjumpa dengan musuhmu sehingga perang tapi minta lah sama Allah Swt sehat wal Afiyah. Oleh karena itu mari bersama-sama kita mohon kepada Allah Swt agar Allah Swt menjadikan kehidupan kita penuh dengan kebaikan, penuh dengan hidayah, penuh dengan taat dalam keadaan kelembutan kasih sayang Allah Swt. Mari kita baca bersama: Ya Allah &nbsp;Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Allah&nbsp; Ya Rahman Ya Rahim Ya Allah&nbsp; Ya Rahman Ya Rahim Ya Allah&nbsp; Ya Rahman Ya Rahim Ya Allah&nbsp; Ya Rahman Ya Rahim Laailahailallah Laailahailallah Laailahailallah Laailahailallah Laailahailallah Laailahailallah Laailahailallah Laailahailallah Laailahailallah hal &lsquo;adzimul halim Laailahailallah Rabbul Arsyil Adzim Laailahailallah Rabbussamawati warabbul Ardhi Wa Rabbul arsyil karim &lsquo;adada kholqi wa ridho nafsi wazinata Arsyi wamidada kalimatih. Rabbi zidni ilma, wallahu alam bisshowab</p>\r\n\r\n<p>Wassalamu&rsquo;alaikun Warahmatullahi Wabarakatuh.</p>', 'Publish', 'Berita', 'Janganlah berharap kematian karena bahaya yang menimpa', 'download-1692451858.jpeg', NULL, NULL, NULL, NULL, NULL, '2020-09-15 23:57:11', '2020-09-15 23:56:44', '2023-08-19 20:31:00'),
	(23, 4, 0, 'ID', '-', 'layanan-konsultasi-strategis', 'Layanan Konsultasi Strategis', '<p><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Layanan Konsultasi kami ideal untuk Anda saat membutuhkan dukungan dalam menyelaraskan tujuan strategis keberlanjutan perusahaan Anda dengan penatalayanan air yang baik dan mengembangkan rencana untuk tindakan tingkat wilayah operasional dan daerah tangkapan air. </span></span></p>\r\n\r\n<p><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Dari menilai kesiapan wilayah operasional Anda terhadap Standar AWS, hingga penilaian risiko air dalam rantai pasokan dan mengembangkan peta jalan menuju tindakan pengelolaan air yang baik di lokasi, rantai pasokan, dan tingkat daerah tangkapan, kami dapat membantu Anda dalam perjalanan. </span></span></p>\r\n\r\n<p><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Kami bekerja sama dengan penyedia layanan terakreditasi, kredensial profesional, dan terlatih AWS, bergantung pada kebutuhan spesifik perusahaan Anda. Ingin tahu lebih banyak? Hubungi kami dan untuk sesi konsultasi terbuka.</span></span></p>', 'Publish', 'Terjadi', 'Layanan Konsultasi Strategis', '26-image-section-aws-indonesia-contact-1600218408.jpg', NULL, NULL, 1, NULL, NULL, '2020-09-16 01:06:48', '2020-09-16 01:06:08', '2020-09-16 08:06:48'),
	(24, 4, 0, 'ID', '-', 'pelatihan-standar-dan-sistem-aws', 'Pelatihan Standar dan Sistem AWS', '<p><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Program pelatihan Standar dan Sistem AWS interaktif selama 1, 2, dan 3 hari mencakup presentasi, studi kasus, serta latihan individu dan kelompok. </span></span></p>\r\n\r\n<p><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Berhasil menyelesaikan program pelatihan Spesialis memungkinkan Anda memenuhi syarat untuk menjadi penyedia layanan AWS yang terakreditasi, sebagai auditor, pelatih, dan konsultan. Ini juga mendukung Anda untuk membangun kapasitas internal untuk mengelola dan mengimplementasikan penatalayanan air dan sertifikasi AWS. Kami memberikan pelatihan dalam Bahasa Indonesia dan Bahasa Inggris.</span></span></p>', 'Publish', 'Terjadi', 'Pelatihan Standar dan Sistem AWS', '26-image-section-aws-indonesia-contact-1600218481.jpg', NULL, NULL, NULL, NULL, NULL, '2020-09-16 01:08:01', '2020-09-16 01:07:31', '2020-09-16 08:08:01'),
	(25, 4, 0, 'ID', '-', 'studi-kasus', 'Studi Kasus', '<p><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Jelajahi studi kasus Indonesia dan contoh penerapan penatalayanan air yang baik di seluruh Indonesia dari berbagai sektor.</span></span></p>\r\n\r\n<ul>\r\n	<li><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Natural Rubber 2019 Hevea |</span></span></li>\r\n	<li><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Natural Rubber Processing Site Online Survey 2019 Hevea I</span></span></li>\r\n	<li><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Hospitality Sector Hotel Indigo Seminyak IHG |</span></span></li>\r\n	<li><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">GAA Hevea Connect<strong>&nbsp;|&nbsp;</strong></span></span></li>\r\n	<li><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Brantas mapping |&nbsp;</span></span></li>\r\n</ul>', 'Publish', 'Materi', 'Studi Kasus', NULL, NULL, NULL, 1, NULL, NULL, '2020-09-16 01:26:05', '2020-09-16 01:23:28', '2020-09-16 08:26:05'),
	(26, 4, 0, 'ID', '-', 'platform-e-tools-untuk-anggota-aws', 'Platform e-Tools untuk Anggota AWS', '<p><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Cari tahu lebih lanjut tentang e-standar AWS, Panduan juga Modul Pembelajaran Online penatalayanan air di <a href="https://tools.a4ws.org/my-account/subscriptions/" style="color:#0563c1; text-decoration:underline">AWS Tool Hub</a>. Akses gratis untuk semua Anggota AWS dan non-anggota dapat membayar biaya untuk membuat akun.</span></span></p>', 'Publish', 'Materi', 'Platform e-Tools untuk Anggota AWS', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 01:28:44', '2020-09-16 01:27:50', '2020-09-16 08:28:44'),
	(27, 4, 0, 'ID', '-', 'webinars', 'Webinars', '<p><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Dapatkan wawasan Anda mengenai Standar dan Sistem AWS melalui webinar AWS dan diskusi penting lainnya tentang topik penatalayanan air di Indonesia.</span></span></p>\r\n\r\n<ul>\r\n	<li><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">World Water Development Report 2020 Launch by UNESCO &amp; Climate Tracker </span></span><br />\r\n	<span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Lainnya: <a href="https://unesdoc.unesco.org/ark:/48223/pf0000372985.locale=en" style="color:#0563c1; text-decoration:underline">Laporan</a></span></span></li>\r\n	<li><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">GWPSEA Webinar COVID-19 Belajar dari Krisis untuk Pengelolaan Air Terpadu yang Lebih<br />\r\n	Rekaman: <a href="https://www.facebook.com/GlobalWaterPartnershipSoutheastAsia/videos/271658824268924/?_rdc=1&amp;_rdr" style="color:#0563c1; text-decoration:underline">Tersedia</a></span></span></li>\r\n	<li><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Air Tanah untuk Tanah Air</span></span><br />\r\n	<span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Rekaman: <a href="bit.ly/youtube-airtanah" style="color:#0563c1; text-decoration:underline">Tersedia</a></span></span></li>\r\n	<li><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Online Consultation &ndash; the Principles for Addressing Water-related Disaster Risk Reduction and COVID-19 </span></span><br />\r\n	<span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Lainnya: <a href="https://www.gwp.org/en/GWP-South-East-Asia/WE-ACT/keep-updated/News-and-Activities/2020/help-gwp-pan-asia-consultation-meeting/" style="color:#0563c1; text-decoration:underline">Summary</a></span></span></li>\r\n	<li><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">AWS Member Webinars: Spotlight on Indonesia Brantas River Basin, East Java</span></span><br />\r\n	<span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Rekaman: <a href="https://register.gotowebinar.com/recording/4530186227396155147" style="color:#0563c1; text-decoration:underline">Tersedia</a></span></span></li>\r\n	<li><span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">World Water Week #AtHome 2020 &ndash; Water Stewardship in Agriculture</span></span><br />\r\n	<span style="font-size:10pt"><span style="font-family:&quot;Arial Nova Light&quot;,sans-serif">Rekaman: <a href="https://register.gotowebinar.com/recording/8511901561510833158" style="color:#0563c1; text-decoration:underline">Tersedia</a></span></span></li>\r\n</ul>', 'Publish', 'Materi', 'Webinars', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 01:31:45', '2020-09-16 01:30:55', '2020-09-16 08:31:45');
/*!40000 ALTER TABLE `berita` ENABLE KEYS */;

-- Dumping structure for table compro.download
CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bahasa` enum('ID','EN') CHARACTER SET utf8 NOT NULL,
  `judul_download` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `jenis_download` varchar(20) CHARACTER SET utf8 NOT NULL,
  `isi` text CHARACTER SET utf8 DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `website` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_download`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.download: ~3 rows (approximately)
DELETE FROM `download`;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
INSERT INTO `download` (`id_download`, `id_kategori_download`, `id_user`, `bahasa`, `judul_download`, `jenis_download`, `isi`, `gambar`, `website`, `hits`, `tanggal`) VALUES
	(3, 1, 4, 'ID', 'The AWS Standard 2.0 Bahasa Indonesia', 'Download', '<p>Versi Bahasa Indonesia dari AWS Standar, Panduan dan Skoring Rubrik sudah tersedia online. <a href="https://a4ws.org/download-standard-2/" style="color:#0563c1; text-decoration:underline">Unduh</a> untuk Anda sekarang dan hubungi tim kami di Indonesia untuk mendukung Anda dalam perjalanan penatalayanan air.</p>', 'aws-standard-20-2019-bahasa-indonesia-1600653859.pdf', NULL, 22, '2020-09-21 09:06:43'),
	(4, 1, 4, 'ID', 'The AWS Standard Guidance 2.0 Bahasa Indonesia', 'Download', '<p>The AWS Standard Guidance 2.0 Bahasa Indonesia</p>', 'aws-standard-20-guidance-final-january-2020-bahasa-indonesia-1600654043.pdf', NULL, 2, '2020-09-21 09:08:09'),
	(5, 1, 4, 'ID', 'The AWS Standard Scoring 2.0 Bahasa Indonesia', 'Download', '<p>The AWS Standard Scoring 2.0 Bahasa Indonesia</p>', 'aws-standard-20-scoring-criteria-revised-june-1-2020-bahasa-indonesia-1600654078.pdf', NULL, 0, '2020-09-21 09:07:58');
/*!40000 ALTER TABLE `download` ENABLE KEYS */;

-- Dumping structure for table compro.galeri
CREATE TABLE IF NOT EXISTS `galeri` (
  `id_galeri` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bahasa` enum('ID','EN') CHARACTER SET utf8 NOT NULL,
  `judul_galeri` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `jenis_galeri` varchar(20) CHARACTER SET utf8 NOT NULL,
  `isi` text CHARACTER SET utf8 DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `website` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `popup_status` enum('Publish','Draft','','') CHARACTER SET utf8 NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') CHARACTER SET utf8 NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_galeri`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.galeri: ~1 rows (approximately)
DELETE FROM `galeri`;
/*!40000 ALTER TABLE `galeri` DISABLE KEYS */;
INSERT INTO `galeri` (`id_galeri`, `id_kategori_galeri`, `id_user`, `bahasa`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `website`, `hits`, `popup_status`, `urutan`, `status_text`, `tanggal`) VALUES
	(15, 4, 4, 'ID', 'Tiada Hadiah Yang Mulia Daripada Do\'a Seseorang Yang Tulus', 'Homepage', NULL, 'img-2133-min-1690293168.JPG', 'https://javawebmedia.com/kursus', 2, 'Publish', NULL, 'Tidak', '2023-08-13 19:41:24');
/*!40000 ALTER TABLE `galeri` ENABLE KEYS */;

-- Dumping structure for table compro.heading
CREATE TABLE IF NOT EXISTS `heading` (
  `id_heading` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT 0,
  `judul_heading` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8 DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `halaman` varchar(255) CHARACTER SET utf8 DEFAULT 'NULL',
  `tanggal` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_heading`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.heading: ~6 rows (approximately)
DELETE FROM `heading`;
/*!40000 ALTER TABLE `heading` DISABLE KEYS */;
INSERT INTO `heading` (`id_heading`, `id_user`, `judul_heading`, `keterangan`, `gambar`, `halaman`, `tanggal`) VALUES
	(1, 0, 'Berita dan Updates', '<p>Berita dan Updates</p>', 'heading-03-1600256326.jpg', 'Berita', '2020-09-16 18:38:46'),
	(2, 0, 'Organisasi', '<p>Organisasi</p>', 'whatsapp-image-2023-06-07-at-202237-1691929424.jpeg', 'AWS', '2023-08-13 20:09:34'),
	(3, 0, 'Halaman Kontak', '<p>Halaman Kontak</p>', 'kontak-1600257025.jpg', 'Kontak', '2020-09-16 18:50:25'),
	(4, 0, 'Organisasi', '<p>Organisasi</p>', 'board-and-team-300-1600260175.jpg', 'Team', '2023-08-13 20:09:09'),
	(5, 0, 'Layanan', '<p>Layanan</p>', 'board-and-team-300-1600260175-1691935204.jpg', 'Layanan', '2023-08-13 21:00:06'),
	(6, 0, 'Dokumen', '<p>Dokumen</p>', 'dokumen-1600317093.jpg', 'Dokumen', '2020-09-17 11:31:33');
/*!40000 ALTER TABLE `heading` ENABLE KEYS */;

-- Dumping structure for table compro.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `bahasa` enum('ID','EN') CHARACTER SET utf8 NOT NULL,
  `slug_kategori` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nama_kategori` varchar(255) CHARACTER SET utf8 NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_kategori`),
  UNIQUE KEY `nama_kategori` (`nama_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.kategori: ~1 rows (approximately)
DELETE FROM `kategori`;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` (`id_kategori`, `id_user`, `bahasa`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
	(6, 4, 'ID', 'berita', 'Berita', 1, 0, '2023-08-17 21:31:18');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- Dumping structure for table compro.kategori_agenda
CREATE TABLE IF NOT EXISTS `kategori_agenda` (
  `id_kategori_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `bahasa` enum('ID','EN') CHARACTER SET utf8 NOT NULL,
  `slug_kategori_agenda` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nama_kategori_agenda` varchar(255) CHARACTER SET utf8 NOT NULL,
  `keterangan` text CHARACTER SET utf8 DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kategori_agenda`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.kategori_agenda: ~2 rows (approximately)
DELETE FROM `kategori_agenda`;
/*!40000 ALTER TABLE `kategori_agenda` DISABLE KEYS */;
INSERT INTO `kategori_agenda` (`id_kategori_agenda`, `bahasa`, `slug_kategori_agenda`, `nama_kategori_agenda`, `keterangan`, `urutan`) VALUES
	(4, 'ID', 'kegiatan-eksternal', 'Kegiatan Eksternal', NULL, 2),
	(6, 'ID', 'pengajian', 'Pengajian', NULL, 1);
/*!40000 ALTER TABLE `kategori_agenda` ENABLE KEYS */;

-- Dumping structure for table compro.kategori_download
CREATE TABLE IF NOT EXISTS `kategori_download` (
  `id_kategori_download` int(11) NOT NULL AUTO_INCREMENT,
  `bahasa` enum('ID','EN') CHARACTER SET utf8 NOT NULL,
  `slug_kategori_download` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nama_kategori_download` varchar(255) CHARACTER SET utf8 NOT NULL,
  `keterangan` text CHARACTER SET utf8 DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kategori_download`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.kategori_download: ~4 rows (approximately)
DELETE FROM `kategori_download`;
/*!40000 ALTER TABLE `kategori_download` DISABLE KEYS */;
INSERT INTO `kategori_download` (`id_kategori_download`, `bahasa`, `slug_kategori_download`, `nama_kategori_download`, `keterangan`, `urutan`) VALUES
	(1, 'ID', 'dokumen', 'Dokumen', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1),
	(4, 'ID', 'download-pricelist', 'Download Pricelist', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 0),
	(5, 'ID', 'studi-kasus', 'Studi Kasus', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 2),
	(6, 'ID', 'webinar', 'Webinar', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 3);
/*!40000 ALTER TABLE `kategori_download` ENABLE KEYS */;

-- Dumping structure for table compro.kategori_galeri
CREATE TABLE IF NOT EXISTS `kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT,
  `bahasa` enum('ID','EN') CHARACTER SET utf8 NOT NULL,
  `slug_kategori_galeri` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nama_kategori_galeri` varchar(255) CHARACTER SET utf8 NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kategori_galeri`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.kategori_galeri: ~2 rows (approximately)
DELETE FROM `kategori_galeri`;
/*!40000 ALTER TABLE `kategori_galeri` DISABLE KEYS */;
INSERT INTO `kategori_galeri` (`id_kategori_galeri`, `bahasa`, `slug_kategori_galeri`, `nama_kategori_galeri`, `urutan`) VALUES
	(4, 'ID', 'kegiatan-2', 'Kegiatan 2', 2),
	(6, 'ID', 'kegiatan-1', 'Kegiatan 1', 1);
/*!40000 ALTER TABLE `kategori_galeri` ENABLE KEYS */;

-- Dumping structure for table compro.kategori_staff
CREATE TABLE IF NOT EXISTS `kategori_staff` (
  `id_kategori_staff` int(11) NOT NULL AUTO_INCREMENT,
  `bahasa` enum('ID','EN') CHARACTER SET utf8 NOT NULL,
  `slug_kategori_staff` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nama_kategori_staff` varchar(255) CHARACTER SET utf8 NOT NULL,
  `keterangan` text CHARACTER SET utf8 DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kategori_staff`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.kategori_staff: ~1 rows (approximately)
DELETE FROM `kategori_staff`;
/*!40000 ALTER TABLE `kategori_staff` DISABLE KEYS */;
INSERT INTO `kategori_staff` (`id_kategori_staff`, `bahasa`, `slug_kategori_staff`, `nama_kategori_staff`, `keterangan`, `urutan`) VALUES
	(6, 'ID', 'organisasi', 'Organisasi', 'Struktur Organisasi Majlis Annur Cadas', 1);
/*!40000 ALTER TABLE `kategori_staff` ENABLE KEYS */;

-- Dumping structure for table compro.konfigurasi
CREATE TABLE IF NOT EXISTS `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT,
  `bahasa` enum('ID','EN') NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `nama_singkat` varchar(200) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tagline2` varchar(255) DEFAULT NULL,
  `tentang` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google_plus` varchar(255) DEFAULT NULL,
  `nama_facebook` varchar(255) NOT NULL,
  `nama_twitter` varchar(255) NOT NULL,
  `nama_instagram` varchar(255) NOT NULL,
  `nama_google_plus` varchar(255) NOT NULL,
  `singkatan` varchar(255) NOT NULL,
  `google_map` text DEFAULT NULL,
  `judul_1` varchar(200) DEFAULT NULL,
  `pesan_1` varchar(200) DEFAULT NULL,
  `judul_2` varchar(200) DEFAULT NULL,
  `pesan_2` varchar(200) DEFAULT NULL,
  `judul_3` varchar(200) DEFAULT NULL,
  `pesan_3` varchar(200) DEFAULT NULL,
  `judul_4` varchar(200) DEFAULT NULL,
  `pesan_4` varchar(200) DEFAULT NULL,
  `judul_5` varchar(200) DEFAULT NULL,
  `pesan_5` varchar(200) NOT NULL,
  `judul_6` varchar(200) DEFAULT NULL,
  `pesan_6` varchar(200) NOT NULL,
  `isi_1` varchar(500) DEFAULT NULL,
  `isi_2` varchar(500) DEFAULT NULL,
  `isi_3` varchar(500) DEFAULT NULL,
  `isi_4` varchar(500) DEFAULT NULL,
  `isi_5` varchar(500) DEFAULT NULL,
  `isi_6` varchar(500) DEFAULT NULL,
  `link_1` varchar(255) DEFAULT NULL,
  `link_2` varchar(255) DEFAULT NULL,
  `link_3` varchar(255) DEFAULT NULL,
  `link_4` varchar(255) DEFAULT NULL,
  `link_5` varchar(255) DEFAULT NULL,
  `link_6` varchar(255) DEFAULT NULL,
  `javawebmedia` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `rekening` text DEFAULT NULL,
  `prolog_topik` text DEFAULT NULL,
  `prolog_program` text DEFAULT NULL,
  `prolog_sekretariat` text DEFAULT NULL,
  `prolog_aksi` text DEFAULT NULL,
  `prolog_kolaborasi` text DEFAULT NULL,
  `prolog_sebaran` text DEFAULT NULL,
  `gambar_berita` varchar(255) DEFAULT NULL,
  `prolog_agenda` text DEFAULT NULL,
  `prolog_wawasan` text DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `smtp_timeout` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(255) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `judul_pembayaran` varchar(255) DEFAULT NULL,
  `isi_pembayaran` text DEFAULT NULL,
  `gambar_pembayaran` varchar(255) DEFAULT NULL,
  `link_bawah_peta` varchar(255) DEFAULT NULL,
  `text_bawah_peta` varchar(255) DEFAULT NULL,
  `cara_pesan` enum('Keranjang Belanja','Formulir Pemesanan') DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `youtube` varchar(255) DEFAULT NULL,
  `nama_youtube` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_konfigurasi`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table compro.konfigurasi: 1 rows
DELETE FROM `konfigurasi`;
/*!40000 ALTER TABLE `konfigurasi` DISABLE KEYS */;
INSERT INTO `konfigurasi` (`id_konfigurasi`, `bahasa`, `namaweb`, `nama_singkat`, `tagline`, `tagline2`, `tentang`, `deskripsi`, `website`, `email`, `email_cadangan`, `alamat`, `telepon`, `hp`, `fax`, `logo`, `icon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `google_plus`, `nama_facebook`, `nama_twitter`, `nama_instagram`, `nama_google_plus`, `singkatan`, `google_map`, `judul_1`, `pesan_1`, `judul_2`, `pesan_2`, `judul_3`, `pesan_3`, `judul_4`, `pesan_4`, `judul_5`, `pesan_5`, `judul_6`, `pesan_6`, `isi_1`, `isi_2`, `isi_3`, `isi_4`, `isi_5`, `isi_6`, `link_1`, `link_2`, `link_3`, `link_4`, `link_5`, `link_6`, `javawebmedia`, `gambar`, `video`, `rekening`, `prolog_topik`, `prolog_program`, `prolog_sekretariat`, `prolog_aksi`, `prolog_kolaborasi`, `prolog_sebaran`, `gambar_berita`, `prolog_agenda`, `prolog_wawasan`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `judul_pembayaran`, `isi_pembayaran`, `gambar_pembayaran`, `link_bawah_peta`, `text_bawah_peta`, `cara_pesan`, `id_user`, `tanggal`, `youtube`, `nama_youtube`) VALUES
	(1, 'ID', 'Majlis Annur Cadas', 'Majlis Annur Cadas', NULL, NULL, '<p>السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ</p>\r\n\r\n<p>&nbsp;</p>', 'Majlis Ta\'lim ANNUR Cadas Tangerang', 'https://majelis.com', 'annur.tangerang@gmail.com', 'annur.tangerang@gmail.com', 'AMD Manunggal, Lebak Wangi, Cadas, Tangerang, Indonesia, Banten', '085717511487', '+6285717511487', NULL, '312511536-575547291038700-7030335330121564998-n.jpg', '312511536-575547291038700-7030335330121564998-n.jpg', 'Majlis Ta\'lim, ANNUR Cadas, Tangerang', NULL, 'https://www.facebook.com/profile.php?id=100013151926680&mibextid=9R9pXO', NULL, NULL, 'https://www.youtube.com/channel/UCmm6mFZXYQ3ZylUMa0Tmc2Q', 'Majlis Annur Cadas', '', '', '', 'Majlis Annur Cadas', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.880583797527!2d106.58874387461717!3d-6.146737060252856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ff7cf374fd39%3A0x4c1801e4be78b90e!2sMajlis%20Ta&#39;lim%20Annur!5e0!3m2!1sid!2sid!4v1692452538907!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 'Tempat belajar nyaman', 'fa fa-home', 'Materi Kursus Selalu Update', 'fa fa-laptop', 'Jadwal Flexibel', 'fa fa-thumbs-up', 'Menjaga Amanah', 'fa-check-square-o', 'Tempat belajar nyaman', 'fa-home', 'Online service', 'fa-laptop', 'Kami menyediakan tempat belajar yang nyaman dan menyenangkan serasa di rumah sendiri', 'Materi kursus kamu selalu uptodate, Anda bisa mengunduh apa yang dipelajari', 'Bagi Anda siswa yang ingin belajar, kami menerapkan jadwal flexibel', 'Kami senantiasa menjaga amanah yang diberikan kepada donatur agar sampai di tangan yang berhak.', 'Kami menyediakan tempat belajar yang nyaman dan menyenangkan', 'Website kamu selalu uptodate, Anda bisa mengunduh apa yang dipelajari', '', '', '', '', '', '', '<p>Berawal dari keinginan ibunda Hj.Masah Muhari diakhir hidupnya untuk mewakaan sebagian hartanya dijalan Allah, gayungpun bersambut pada bulan Mei 2011 saat kami akan melaksanakan ibadah umrah, Seorang rekan kami sesama Jamaah bernama ustadzah Hj. Zainur Fahmid memberikan informasi Tentang Anggota yang hendak mewakaan sebidang tanahnya di wilayah Beji Timur. Kami pun memanjatkan doa di kota suci dengan penuh rasa harap pertolongan Allah untuk menunjukan jalan terbaik-Nya, maka sepulang umroh kami mengadakan pertemuan di kediaman Ibu Dra Hj Ratna Mardjanah untuk membicarakan visi misi kami dalam wakaf tersebut dan sepakat untuk mendirikan Istana Yatim Riyadhul Jannah ini.</p>\r\n<p>Nama Riyadhul Jannah Sendiri diambil dari nama pengelola wakaf (H. Ahmad Riyadh Muchtar, Lc) dan pemberi wakaf (Dra Hj Ratna Mardjanah). Istana Yatim Riyadhul Jannah hadir untuk melayani dan memfasilitasi segala kebutuhan anak yatim, terutama pendidikan agama, akhlak dan kehidupan yang layak untuk bekal masa depan mereka yang cerah agar bisa memberi manfaat bagi umat. Harapan kami semoga dengan membangunkan istana untuk anak yatim, maka Allah akan berikan istana-Nya di surga kelak dan kita termasuk manusia yang bisa memberika manfaat bagi sesama sebagaimana sabda Rasulullah SAW yang artinya:&nbsp;</p>\r\n<p>&ldquo;Sebaik-baik manusia adalah yang paling bermanfaat bagi manusia lainnya&rdquo;&nbsp;</p>\r\n<p>erimakasih atas segala bentuk bantuan yang dipercayakan kepada kami baik secara materi, tenaga dan kiran serta doa para muhsinin dan muhsinat Istana Yatim Riyadhul Jannah selama ini, mulai dari rencana pendirian hingga berkembang seperti saat ini. Semoga segala amal menjadi shadaqah jariyah disisi-Nya.&nbsp;</p>\r\n<p>&nbsp;</p>', '301999644-542399414353488-1418789867088688268-n.jpg', 'fsH_KhUWfho', '<table id="dataTables-example" class="table table-bordered" width="100%">\r\n<thead>\r\n<tr>\r\n<th tabindex="0" colspan="1" rowspan="1" width="19%">Nama Bank</th>\r\n<th tabindex="0" colspan="1" rowspan="1" width="21%">Nomor Rekening</th>\r\n<th tabindex="0" colspan="1" rowspan="1" width="7%">Atas nama</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>BCA KCP Margo City</td>\r\n<td>4212548204</td>\r\n<td>Andoyo</td>\r\n</tr>\r\n<tr>\r\n<td>Bank Mandiri KCP Universitas Indonesia</td>\r\n<td>1570001807768</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n<tr>\r\n<td>Bank BNI Syariah Kantor Cabang Jakarta Selatan</td>\r\n<td>0105301001</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p>Dalam mewujudkan pembangunan berkelanjutan, pemerintah kabupaten anggota LTKL telah mengidentifikasi dan memilih topik yang sesuai dengan kondisi di daerahnya. Ada 5 topik prioritas yang dipilih dengan penerapan yang disesuaikan kembali di masing-masing kabupaten.</p>', NULL, '<p>Setelah Lingkar Temu Kabupaten Lestari (LTKL) diinisiasi, kesekretariatan dibentuk untuk membantu para pemerintah kabupaten anggota bekerja dan berkolaborasi. Walaupun tidak memiliki mandat implementasi, Sekretariat LTKL menjadi vital dalam melancarkan koordinasi, pengumpulan basis data, hingga pelaporan perkembangan. Sekretariat LTKL juga diperkuat dengan kehadiran personil yang telah berpengalaman di bidang management pengetahuan, program pembangunan berkelanjutan hingga kebijakan.</p>', '', '<p>Lingkar Temu Kabupaten Lestari (LTKL) mengedepankan kolaborasi dalam mewududkan pembangunan berkelanjutan. Ada 10 kabupaten yang tersebar di 6 provinsi di Indonesia telah menjadi anggota LTKL.</p>\r\n<p>Hingga kini, berbagai pihak telah ikut berkolaborasi, mulai dari pemerintah kabupaten, sekeretariat LTKL, mitra pembangunan hingga pihak swasta.</p>', '', 'balairung-budiutomo-01.jpg', '<p>Acara yang ditampilkan merupakan kumpulan acara LTKL, mitra, maupun pemerintah kabupaten anggota LTKL, mulai dari acara seminar hingga festival.</p>', '<p>LTKL bukan satu-satunya yang bergerak dalam mewujudkan pembangunan berkelanjutan, serta upaya penanggulangan perubahan iklim. Ikuti terus perkembangan usaha LTKL serta rekan-rekan lain menuju bumi dan Indonesia yang lestari.</p>', 'smtp', 'di isi smtp', '465', '12', 'smtp@gmail.com', 'did', 'Metode Pembayaran Produk', '<p>Anda dapat melakukan pembayaran dengan beberapa cara, yaitu:</p>\r\n<ol>\r\n<li><strong>Pembayaran Tunai</strong>, dapat Anda serahkan secara langsung ke salah satu staff Java Web Media</li>\r\n<li><strong>Pembayar Via Transfer Rekening</strong></li>\r\n</ol>\r\n<p>Lakukan transfer biaya atas layanan dan produk&nbsp;<strong>Java Web Media</strong>&nbsp;ke salah satu rekening di bawah ini.</p>\r\n<h3>Konfirmasi Pembayaran</h3>\r\n<p>Anda dapat melakukan konfirmasi pembayaran melalui:</p>\r\n<ul>\r\n<li><strong>Melalui Email</strong>, silakan kirim bukti pembayaran ke:&nbsp;<strong><a href="mailto:contact@javawebmedia.co.id?subject=Konfirmasi%20Pembayaran">contact@javawebmedia.co.id</a></strong></li>\r\n<li><strong>Melalui Whatsapp</strong>, kirimkan bukti pembayaran Anda ke&nbsp;<strong>+6281210697841</strong></li>\r\n<li><strong>Melalui Formulir Konfirmasi Pembayaran</strong>, Anda dapat mengunggah bukti pembayaran Anda melalui form&nbsp;<strong><a title="Konfirmasi Pembayaran" href="https://javawebmedia.com/konfirmasi">&nbsp;Konfirmasi Pembayaran</a></strong></li>\r\n</ul>', 'payment.jpg', NULL, NULL, 'Formulir Pemesanan', 4, '2023-08-19 20:42:32', 'https://www.youtube.com/channel/UCf_4P0t0vDkPRcC92YdMVIA', 'annur cadas tangerang');
/*!40000 ALTER TABLE `konfigurasi` ENABLE KEYS */;

-- Dumping structure for table compro.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table compro.migrations: ~0 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table compro.rekening
CREATE TABLE IF NOT EXISTS `rekening` (
  `id_rekening` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nomor_rekening` varchar(255) CHARACTER SET utf8 NOT NULL,
  `atas_nama` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_rekening`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.rekening: ~1 rows (approximately)
DELETE FROM `rekening`;
/*!40000 ALTER TABLE `rekening` DISABLE KEYS */;
INSERT INTO `rekening` (`id_rekening`, `nama_bank`, `nomor_rekening`, `atas_nama`, `gambar`, `urutan`, `tanggal`) VALUES
	(1, 'BCA', '345 2662 733', 'ABDULLAH ALATAS', 'bca.jpg', 1, '2023-08-13 21:13:44');
/*!40000 ALTER TABLE `rekening` ENABLE KEYS */;

-- Dumping structure for table compro.staff
CREATE TABLE IF NOT EXISTS `staff` (
  `id_staff` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_kategori_staff` int(11) NOT NULL,
  `slug_staff` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nama_staff` varchar(255) CHARACTER SET utf8 NOT NULL,
  `jabatan` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pendidikan` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `expertise` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `telepon` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `isi` text CHARACTER SET utf8 DEFAULT NULL,
  `gambar` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `status_staff` varchar(20) CHARACTER SET utf8 NOT NULL,
  `keywords` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_staff`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.staff: ~4 rows (approximately)
DELETE FROM `staff`;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`id_staff`, `id_user`, `id_kategori_staff`, `slug_staff`, `nama_staff`, `jabatan`, `pendidikan`, `expertise`, `email`, `telepon`, `isi`, `gambar`, `status_staff`, `keywords`, `urutan`, `tanggal`) VALUES
	(4, 4, 6, 'al-habib-abdullah-bin-muhsin-bin-husein-al-atthas-khalifah-majlis-talim-annur-cadas-tangerang', 'Al-Habib Abdullah bin Muhsin bin Husein Al-\'Atthas', 'Khalifah Majlis Ta\'lim ANNUR Cadas Tangerang', NULL, NULL, NULL, NULL, NULL, 'khalifah-min-1691931245.jpg', 'Ya', NULL, 1, '2023-08-13 19:54:08'),
	(5, 4, 6, 'pengurus-1-pengurus-1', 'Pengurus 1', 'Pengurus 1', NULL, NULL, NULL, NULL, NULL, 'il-fullxfull1840169566-393p-1691931822.jpg', 'Ya', NULL, 2, '2023-08-13 20:03:45'),
	(6, 4, 6, 'pengurus-2-pengurus-2', 'Pengurus 2', 'Pengurus 2', NULL, NULL, NULL, NULL, NULL, 'il-fullxfull1840169566-393p-1691931881.jpg', 'Ya', NULL, 3, '2023-08-13 20:04:44'),
	(7, 4, 6, 'pengurus-3-pengurus-3', 'Pengurus 3', 'Pengurus 3', NULL, NULL, NULL, NULL, NULL, 'il-fullxfull1840169566-393p-1691931916.jpg', 'Ya', NULL, 4, '2023-08-13 20:05:19');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;

-- Dumping structure for table compro.users
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `akses_level` varchar(20) CHARACTER SET utf8 NOT NULL,
  `kode_rahasia` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.users: ~2 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `kode_rahasia`, `gambar`, `tanggal`) VALUES
	(4, 'Andoyo Cakep', 'admin.cadas@gmail.com', 'admin', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'Admin', NULL, 'testimonials-1.jpg', '2023-08-19 20:12:02'),
	(14, 'Eflita Meiyetriani', 'eflita@gmail.com', 'eflita', '4228f9df60d56e866971c15271382b9f10251ce0', 'Admin', NULL, 'course-8-1599013102.jpg', '2020-09-02 09:18:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table compro.video
CREATE TABLE IF NOT EXISTS `video` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) CHARACTER SET utf8 NOT NULL,
  `posisi` varchar(20) CHARACTER SET utf8 NOT NULL,
  `keterangan` text CHARACTER SET utf8 DEFAULT NULL,
  `video` text CHARACTER SET utf8 NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `bahasa` varchar(20) CHARACTER SET utf8 NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

-- Dumping data for table compro.video: ~2 rows (approximately)
DELETE FROM `video`;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` (`id_video`, `judul`, `posisi`, `keterangan`, `video`, `urutan`, `bahasa`, `gambar`, `id_user`, `tanggal`) VALUES
	(66, 'Peringatan Haul Shohiburatib Quthbil Anfaas Al Habib Umar bin Abdurrahman Al \'Atthas ke 372', 'Homepage', 'Peringatan Haul Shohiburatib Quthbil Anfaas Al Habib Umar bin Abdurrahman Al \'Atthas ke 372', 'rwdGtqPdD5c', 1, 'Indonesia', 'cover-1691929944.png', 4, '2023-08-13 19:32:27'),
	(68, 'Pengajian Rutin Annur 03 October 2020', 'Video', 'Pengajian Rutin Annur 03 October 2020', 'ujbDYwYcIjw', 2, 'Indonesia', NULL, 4, '2023-08-13 19:34:31');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
