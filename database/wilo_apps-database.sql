-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 06:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wilo_apps`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_admin`
--

CREATE TABLE `data_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_admin`
--

INSERT INTO `data_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin1', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `id_user` int(11) NOT NULL,
  `username_user` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nama_user` varchar(64) NOT NULL,
  `email_user` varchar(64) NOT NULL,
  `no_hp_user` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id_user`, `username_user`, `password`, `nama_user`, `email_user`, `no_hp_user`) VALUES
(16, 'user1', 'user1', 'user1', 'user1@gmail.com', '0812345678910'),
(17, 'user2', 'user2', 'user2', 'user2@gmail.com', '0812345678910');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_wisata`
--

CREATE TABLE `jenis_wisata` (
  `id_jenis_wisata` int(11) NOT NULL,
  `nama_jenis_wisata` varchar(64) NOT NULL,
  `image` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_wisata`
--

INSERT INTO `jenis_wisata` (`id_jenis_wisata`, `nama_jenis_wisata`, `image`) VALUES
(9, 'Wisata Alam', '6391d7ab2b908.png'),
(10, 'Wisata Belanja', '6391d7b8c56d5.png'),
(11, 'Wisata Keluarga', '6391d7c904203.png'),
(12, 'Wisata Kuliner', '6391d7d585d3b.png'),
(13, 'Wisata Religi', '6391d7e452086.png'),
(14, 'Wisata Sejarah', '6391d7f703feb.png'),
(15, 'Wisata Taman', '6391d8090f90d.png');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama_wisata` varchar(64) NOT NULL,
  `kota_wisata` varchar(32) NOT NULL,
  `alamat_wisata` varchar(64) NOT NULL,
  `lokasi_wisata` varchar(128) NOT NULL,
  `harga_masuk` int(11) DEFAULT NULL,
  `contanct_person` varchar(64) DEFAULT NULL,
  `image_wisata` varchar(64) NOT NULL,
  `deskripsi` text NOT NULL,
  `jenis_wisata_id_jenis_wisata` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_wisata`, `kota_wisata`, `alamat_wisata`, `lokasi_wisata`, `harga_masuk`, `contanct_person`, `image_wisata`, `deskripsi`, `jenis_wisata_id_jenis_wisata`) VALUES
(2, 'Monumen Pancasila Sakti', 'Jakarta', 'Jl. Raya Pd. Gede, Lubang Buaya, Kec. Cipayung, Kota Jakarta Tim', '-6.290097225084717, 106.9085738813827', 5000, '-', '639271c49a3d6.png', 'Monumen Pancasila Sakti dibangun atas gagasan Presiden ke-2 Indonesia, Soeharto. Dibangun di atas tanah seluas 14,6 hektare. Monumen ini dibangun dengan tujuan mengingat perjuangan para Pahlawan Revolusi yang berjuang mempertahankan ideologi negara Republik Indonesia, Pancasila dari ancaman ideologi komunis.', 14),
(3, 'Curug Cikuluwung', 'Bogor', ' Cibitung Wetan, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 168', '-6.642229072886829, 106.64317358270635', 25000, '-', '6392739252ed1.jpg', 'Air terjun ini tepatnya terletak di Kampung Suka Asih, Desa Cibitung Wetan, Kecamatan Pamijahan, Kabupaten Bogor, Jawa Barat.  Tempat wisata tersebut menyuguhkan dua buah air terjun dengan daya tarik masing-masing.\r\nCurug Cikuluwung 1 menawarkan air terjun tersembunyi dengan air berwarna kehijauan, sedangkan Curug Cikuluwung 2 menawarkan air terjun dengan kolam luas di bawahnya.', 9),
(4, 'Taman Heulang', 'Bogor', 'Jl. Heulang, RT.06/RW.04, Tanah Sareal, Kec. Tanah Sereal, Kota ', '-6.569475952359285, 106.80233761206821', 0, '-', '639274eeed92d.jpg', 'Taman Heulang adalah taman kota yang luas dengan dihiasi berbagai bunga dan pepohonan rindang. Meski terletak di tengah kota, hawanya cukup sejuk karena adanya ragam vegetasi. Ini menjadikan taman rekreasi ini cocok menjadi tempat bersantai.\r\n\r\nTerdapat banyak bangku-bangku yang tersebar di dalam taman. Selain itu, ada juga berbagai gazebo bagi yang ingin berkumpul bersama-sama di bawah lindungan atap. Sambil duduk-duduk, nikmati ketenangan dan hawa sejuk sembari menghirup udara segar.', 15),
(5, 'Curug Cinulang', 'Bandung', 'Jl. Curug Cinulang, Tanjungwangi, Kec. Cicalengka, Kabupaten Ban', '-6.962647700712909, 107.88143510837713', 20000, '-', '639402c4f41a3.jpg', 'Air terjun selalu memiliki pesona tersendiri di setiap tempat. Air terjun dengan sejuta pesona di Jawa Barat salah satunya adalah Curug Cinulang atau Sindulang. Disebut Curug Sindulang karena lokasinya berada di Desa Sindulang. Keunikan curug ini karena tidak hanya memiliki 1 air terjun tapi 2 yang saling berdampingan.\r\n\r\nAir terjun ini sangat populer di kalangan wisatawan. Terlebih wisatawan asal Tanah Sunda. Meskipun saat ini masih dikelola secara tradisional oleh masyarakat.\r\n\r\nKeindahan Curug Cinulang bahkan digambarkan dalam sebuah lagu yang dinyanyikan oleh penyanyi Sunda bernama Darso. Lagu dalam Bahasa Sunda ini menggambarkan betapa indahnya Curug Cinulang. Dengan dua air terjun yang berdampingan serta alam yang mempesona.\r\n', 9),
(6, 'Cicalengka Dreamland', 'Bandung', 'Tanjungwangi, Kec. Cicalengka, Kabupaten Bandung, Jawa Barat 403', '-6.968440031487403, 107.88548198465855', 20000, '085793379155', '639403873a0f8.jpg', 'Cicalengka Dreamland adalah taman wisata terbaru yang berada di Kabupaten Bandung. Taman ini hadir memberi warna baru pariwisata di Bandung Raya. Mengusung tema Sunda-Islami merupakan daya tarik tersendiri.\r\n\r\nLokasinya sendiri bertempat di kawasan yang dikenal sebagai ‘Bukit Teletubbies Cicalengka’. Cicalengka Dreamland memadukan rekreasi alam dengan unsur kekinian. Semua ini tersaji dengan tema yang segar dan berbeda.\r\n\r\nTiket Masuk Cicalengka Dreamland\r\nTiket Masuk ke Cicalengka Dreamland memang cukup terjangkau. Namun untuk wahana permainan pengunjung perlu membayar tiket tersendiri.', 11),
(7, 'Pantai Santolo', 'Garut', 'Pamalayan, Kec. Cikelet, Kabupaten Garut, Jawa Barat 44177', '-7.648748082557791, 107.68700961349391', 25000, '-', '6394048eb8f7d.jpg', 'Pantai Santolo merupakan salah satu destinasi wisata pantai primadona di Garut. Pantai ini memiliki bentang luas hamparan pasir putih lembut dan bersih dikelilingi deretan perbukitan.\r\n\r\nPantai yang terletak di kecamatan Cikelet ini acap kali disebut sebagai ‘surga tersembunyi’ di selatan Garut. Pesona keindahannya terasa alami karena kawasannya yang masih bersih dan rapi.\r\n\r\nSesampai di pantai, wisatawan akan disuguhi hamparan batu-batu panjang dengan perahu-perahu nelayan disisinya. Pantai Santolo menjadi tujuan utama wisatawan kawasan pantai selatan di Kabupaten Garut, Jawa Barat. Banyak wisatawan berulang kali datang berlibur ke sini karena terpikat pemandangan indahnya.\r\n\r\nWisatawan kebanyakan datang dari Bandung dan Jabodetabek menggunakan kendaraan umum seperti bus dan konvoi bermotor. Pada puncak musim liburan, tercatat puluhan ribu wisatawan per harinya mengunjungi Pantai ini.\r\n\r\nPantai Santolo memiliki bentang pantai yang cukup panjang, dengan pasir putih yang halus. Wisatawan bisa menikmati suasana pantai yang tenang dengan semilir angin pantai yang menyejukan. Di sini wisatawan juga dapat beristirahat dan bersantai sambil menikmati keindahan pantai.\r\n\r\nPantai ini cukup bersih dengan deburan ombak yang tidak terlalu besar. Bibir pantainya memiliki karang dan laut yang surut. Hal tersebut membuat ombaknya tertahan di tengah, tidak sampai ke bibir pantai.\r\n\r\nPantai ini terkenal indah dengan air laut yang jernih dan pasir putih lembut. Kehadiran taman alam Santolo dengan binatang-binatang laut di tepi pantai menjadi daya tarik tersendiri. Burung camar dan kapal-kapal kecil di tengah lautan menambah kesan eksotis pantai ini.\r\n\r\nUntuk masuk lebih jauh ke kawasan pantai, wisatawan dapat menyebrang menggunakan perahu nelayan. Pantai Santolo merupakan bagian dari perkampungan nelayan, sehingga mudah menemukan perahu yang dapat disewakan.', 9),
(8, 'Goa Belanda', 'Garut', 'Pamalayan, Kec. Cikelet, Kabupaten Garut, Jawa Barat 44177', '-6.854251682996964, 107.63774778465854', 0, '-', '639405d5b02bd.jpg', 'Goa Belanda Bandung merupakan sebuah goa yang usianya sudah ratusan tahun, yang berada di dalam kawasan Taman Hutan Raya Ir. H Djuanda, kira-kira 1 km dari pintu masuk Taman Hutan. Merupakan bentangan pegunungan dari barat sampai ke timur yang juga tangki air raksasa alamiah untuk cadangan pada musim kemarau kelak.\r\n\r\nDibangun pada tahun 1906 oleh pemerintah Hindia Belanda, awalnya berfungsi sebagai tempat penampungan aliran air dari Sungai Cikapundung untuk digunakan bagi Pembangkit Listrik Tenaga Air (PLTA) Bengkok. Namun entah alasan apa, akhirnya fungsi sebagai PLTA pun terhenti. Lalu pada tahun 1918, goa tersebut akhirnya berfungsi kembali namun bukan sebagai PLTA, melainkan difungsikan untuk kepentingan militer dengan penambahan ruangan di sayap kanan dan sayap kiri lorong utama. Mereka menyusun berbagai strategi peperangan, menyimpan artileri dan senjata, serta menjadikannya sebagai stasiun radio komunikasi. Lokasinya yang tersembunyi dan tinggi, menjadikan goa ini sebagai\r\nkawasan strategis bagi tentara Belanda.\r\n\r\nTidak berapa lama kemudian, PLTA kembali difungsikan. Namun, saluran penampungan air tidak lagi melalui lorong utama goa, tetapi lewat saluran bawah tanah dimana saluran itu akan muncul kepermukaan di Pintu 2 dan ditampung di Kolam Pakar. Dari Kolam Pakar inilah air akan disalurkan menuju PLTA Bengkok, yang pada tahun 1923 baru difungsikan dan dikelola oleh GEBEO (Gemeenschapelijk Electriciteit Bedrijf Voor Bandoeng en Omstreken). GEBEO inilah yang menjadi cikal bakal berdirinya Perusahaan Listrik Negara atau yang biasa disebut PLN.\r\n\r\nPada masa pendudukan Belanda, perbukitan Pakar ini sangat menarik untuk strategi militer, karena lokasinya begitu dekat dengan pusat kota Bandung. Tak heran menjelang Perang Dunia Ke II pada awal tahun 1941, kegiatan militer Belanda makin ditingkatkan. Dalam terowongan untuk pembangkit listrik tenaga air (PLTA) Bengkok sepanjang 144 meter dan lebar 1,8 meter ini, dibangunlah jaringan goa sebanyak 15 lorong dengan 2 pintu masuk setinggi 3,20 meter. Luas pelataran yang dipakai goa seluas 0,6 hektar dan luas seluruh goa berikut lorong nya adalah 548 meter.\r\n\r\nSelain untuk kegiatan militer, Goa ini digunakan untuk stasiun radio Belanda, karena stasiun radio awal mereka yang ada di Gunung Malabar terbuka dari udara, sulit untuk dilindungi dan dipertahankan dari serangan udara, makanya Belanda pun memilih goa ini untuk dijadikan stasiun radio mereka.', 9),
(9, 'Nepal Van Java', 'Magelang', 'Dusun, Butuh, Temanggung, Kec. Kaliangkrik, Kabupaten Magelang, ', '-7.420426505996533, 110.07723432883536', 10000, '083844070985', '639406e6ccd77.jpeg', 'Dusun Butuh, Kaliangkrik, Magelang. Dusun tertinggi di Kabupaten Magelang dengan ketinggian 1700Mdpl. Dusun ini terkenal sebagai Nepal Van Java karena kecantikan dusun dengan rumah-rumah penduduk yang berlatar belakang Gunung Sumbing. Dahulu, dusun ini hanyalah jalur pendakian menuju Gunung Sumbing. Hingga pada 2019, dusun ini menjelma menjadi tempat wisata terkenal dengan rumah penduduk yang dicat warna-warni, serta letaknya yang bertumpuk.\r\nHal tersebut menghadirkan suasana baru, layaknya pedesaan Namche Bazaar di Nepal yang berlokasi di Pegunungan Himalaya. Hingga terciptalah Nepal Van Java yang populer di sosial media karena sangat instagramable dan kekinian. ', 11),
(10, 'Ketep Pass', 'Magelang', 'Ketep Pas, Ketep, Kec. Sawangan, Kabupaten Magelang, Jawa Tengah', '-7.494198646310531, 110.38151455301255', 15000, '08112640046', '63940774b6c26.jpeg', 'Ketep Pass adalah nama sebuah objek wisata di Ketep, Sawangan, Magelang, Jawa Tengah. Ketep Pass ini merupakan objek wisata alam yang dikembangkan dengan ciri khas wisata kegunungapian, khususnya Gunung Merapi.Pada tanggal 17 Oktober 2002, Ketep Pass diresmikan sebagai kawasan wisata jalur Solo–Selo–Borobudur (SSB) oleh Presiden ke-5 Republik Indonesia, Megawati Soekarnoputri. Lokasi Ketep Pass berada di puncak Bukit Sawangan (pertengahan antara Gunung Merapi dan Gunung Merbabu). Ketep Pass berada pada ketinggian 1200 meter dpl dan luas areanya kurang lebih 8000 meter persegi.', 9),
(11, ' Mangunan Fruits Park', 'Bantul', 'Mangunan, Kec. Dlingo, Kabupaten Bantul, Daerah Istimewa Yogyaka', '-7.939619718594637, 110.42434672557658', 5000, '-', '6394084a55f76.jpg', 'Kebun buah Mangunan merupakan daerah pegunungan yang digunakan untuk budidaya aneka macam buah-buahan. Kebun ini terletak di daerah Mangunan, Kecamatan Dlingo, Kabupaten Bantul, Daerah Istimewa Yogyakarta dengan ketinggian sekitar 200 meter di atas permukaan laut.\r\n\r\nBermodal tanah di area seluas 23,3415 hektar yang terletak di daerah Dlingo ini, Pemerintahan Kabupaten Bantul pada tahun 2003 melakukan upaya pembudidayaan aneka buah-buahan seperti mangga, duku, sawo, jeruk, durian, manggis dll.', 10),
(12, 'Surya Kencana', 'Bogor', 'Jalan Surya Kencana, Kota Bogor, Jawa Barat', '-6.607291086880054, 106.80176765562278', 0, '-', '6394098fa4485.jpg', 'Bicara mengenai wisata kuliner legendaris di Bogor, rasanya belum lengkap jika tak membahas Jalan Surya Kencana. Sebab, kawasan chinatown ini menawarkan berbagai macam jenis kuliner mulai dari yang halal hingga non-halal.\r\n\r\nJalan Surya Kencana yang membentang sepanjang kurang lebih 1 km ini dipenuhi dengan jenis kuliner yang sudah berusia puluhan tahun. Kebanyakan pedagang di jalan tersebut juga sudah berjualan selama puluhan tahun dan sangat jarang ditemukan ada pedagang baru disana.', 12),
(13, 'Danau Dora', 'Bogor', 'Cibinong, Kec. Cibinong, Kabupaten Bogor, Jawa Barat 16911', '-6.49338704776875, 106.85365615009945', 25000, '-', '63940a83a9d9c.jpg', 'Danau Dora terletak di dalam kawasan Lembaga Ilmu Penelitian Indonesia (LIPI), di Bogor. Danau ini sempat ditutup pada tahun 2018 hingga 2020, karena ada penataan kawasan Kebun Raya Cibinong. Danau ini sebenarnya merupakan taman konservasi alam. Karena memang dibuat untuk tujuan wisata, danau ini hanya memiliki kedalaman sekitar 1 meter saja. Hal ini untuk mengurangi risiko bahaya saat danau ini dikunjungi oleh wisatawan.\r\n\r\nMenyoal nama, sebenarnya nama danau ini bukanlah Danau Dora pada awalnya. Nama “Dora” dipilih karena di area wisata ini terdapat jembatan kayu, yang mirip dengan serial animasi Dora the Explorer.Di jembatan kayu ini, banyak pengunjung suka berfoto sambil menikmati keindahan dan suasana danau. Jembatan ini juga memungkinkan pengunjung mengamati danau dari dekat. Karena jarak jembatan ini dengan permukaan air danau cukup dekat.', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_admin`
--
ALTER TABLE `data_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `jenis_wisata`
--
ALTER TABLE `jenis_wisata`
  ADD PRIMARY KEY (`id_jenis_wisata`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `wisata_jenis_wisata_fk` (`jenis_wisata_id_jenis_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_admin`
--
ALTER TABLE `data_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `jenis_wisata`
--
ALTER TABLE `jenis_wisata`
  MODIFY `id_jenis_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wisata`
--
ALTER TABLE `wisata`
  ADD CONSTRAINT `wisata_jenis_wisata_fk` FOREIGN KEY (`jenis_wisata_id_jenis_wisata`) REFERENCES `jenis_wisata` (`id_jenis_wisata`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
