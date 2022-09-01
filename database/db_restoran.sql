-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2022 at 10:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(12) NOT NULL,
  `id_detail_menu` text NOT NULL,
  `id_meja` int(12) NOT NULL,
  `nama_pemesan` varchar(250) NOT NULL,
  `nomor_hp` varchar(250) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_reservasi` date NOT NULL,
  `total_pembayaran` int(12) NOT NULL,
  `total_sudah_dibayar` int(12) NOT NULL,
  `batas_pembayaran_dp` datetime NOT NULL,
  `status_pembayaran` varchar(250) NOT NULL,
  `bukti_pembayaran` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_detail_menu`, `id_meja`, `nama_pemesan`, `nomor_hp`, `tanggal_pesan`, `tanggal_reservasi`, `total_pembayaran`, `total_sudah_dibayar`, `batas_pembayaran_dp`, `status_pembayaran`, `bukti_pembayaran`) VALUES
(20, 'INV20220901120519', 1, 'Bagus Prihandoko', '089111222333', '2022-09-01 12:05:19', '2022-09-01', 140000, 140000, '2022-09-02 12:05:19', 'Pesanan Selesai', '01092022070623billpembayaran.png'),
(21, 'INV20220901120719', 8, 'Rianto ', '081222111222', '2022-09-01 12:07:19', '2022-09-01', 630000, 630000, '2022-09-02 12:07:19', 'Pesanan Selesai', '01092022070734billpembayaran.png'),
(22, 'INV20220901120819', 5, 'Hamdan Hasbullah', '087888776654', '2022-09-01 12:08:19', '2022-09-01', 86000, 86000, '2022-09-02 12:08:19', 'Pesanan Selesai', '01092022070837billpembayaran.png'),
(23, 'INV20220901120919', 6, 'Putri', '081111222333', '2022-09-01 12:09:19', '2022-09-01', 100000, 100000, '2022-09-02 12:09:19', 'Sudah Bayar DP', '01092022070947billpembayaran.png'),
(24, 'INV20220901121507', 4, 'Yudha', '081112221112', '2022-09-01 12:15:07', '2022-09-01', 90000, 90000, '2022-09-02 12:15:07', 'Sudah Bayar DP', '01092022071609billpembayaran.png'),
(25, 'INV20220901153004', 6, 'Arden', '081222334556', '2022-09-01 15:30:04', '2022-09-01', 250000, 0, '2022-09-02 15:30:04', 'Belum Bayar DP', '01092022103040billpembayaran.png'),
(26, 'INV20220901153155', 12, 'Handoko', '082334556778', '2022-09-01 15:31:55', '2022-09-01', 30000, 0, '2022-09-02 15:31:55', 'Belum Bayar DP', '01092022103211billpembayaran.png');

-- --------------------------------------------------------

--
-- Table structure for table `gambar_menu`
--

CREATE TABLE `gambar_menu` (
  `id_gambar` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `gambar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gambar_menu`
--

INSERT INTO `gambar_menu` (`id_gambar`, `id_menu`, `gambar`) VALUES
(2, 2, '22092021172127mie-ayam.jpg'),
(3, 2, '22092021174747miee2.jpg'),
(5, 2, '22092021175050mi2asd.jpg'),
(6, 1, '22092021180735Bakso_mi_bihun.jpg'),
(7, 1, '220920211807421140357898.jpg'),
(8, 8, '0610202109160311Jugosylicuadosquetequitanlaansiedadyteayudanabajardepeso.jpg'),
(9, 8, '06102021091612Esjerukphotography.jpg'),
(10, 7, '06102021091833Sips-KatieChrist.jpg'),
(12, 7, '06102021091907EsTehSerai-LemongrassIceTea.jpg'),
(14, 16, '06102021092328orange-coconutmilkshake.jpg'),
(16, 16, '06102021092756024b5b71-b655-4e9b-9f7e-fc37ed0eb720.jpg'),
(17, 16, '06102021092845TheBestStrawberryMilkshake-BakingMischief.jpg'),
(19, 12, '06102021093111NasiGoreng(IndonesianFriedRice).jpg'),
(20, 12, '06102021093206BrownRiceNasiGoreng(IndonesianFriedRice)IGeorgieEats.jpg'),
(21, 13, '061020210934115d4481d7-66a4-4e4a-82f6-de49b246e92d.jpg'),
(24, 13, '06102021093658SateKambingYangEmpuk.jpg'),
(25, 15, '06102021093836SopBuntut_IndonesianOxtailSoup.jpg'),
(26, 11, '06102021093956ResepSotoLamonganAsliJawaTimurDenganSuwiranAyamDanKuahKuning.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `lupa_password`
--

CREATE TABLE `lupa_password` (
  `id_lupa_password` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `pertanyaankeamanan1` varchar(255) NOT NULL,
  `pertanyaankeamanan2` varchar(255) NOT NULL,
  `jawabankeamanan1` varchar(255) NOT NULL,
  `jawabankeamanan2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lupa_password`
--

INSERT INTO `lupa_password` (`id_lupa_password`, `id_pegawai`, `pertanyaankeamanan1`, `pertanyaankeamanan2`, `jawabankeamanan1`, `jawabankeamanan2`) VALUES
(1, 1, 'Berapa angka favorit anda?(Contoh: 99)', 'Siapakah nama hewan peliharaan anda?', '7', 'alfan'),
(2, 3, 'Apa hewan kesayangan anda?', 'Apa cita-cita anda semasa kecil?', 'Harimau Sumatra', 'Progamer');

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `id_meja` int(11) NOT NULL,
  `nomor_meja` varchar(50) NOT NULL,
  `kapasitas_meja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id_meja`, `nomor_meja`, `kapasitas_meja`) VALUES
(1, '1', 4),
(3, '5', 10),
(4, '3', 6),
(5, '2', 2),
(6, '4', 10),
(8, '6', 20),
(11, '7', 8),
(12, '9', 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `detail_menu` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `stok` varchar(50) NOT NULL DEFAULT 'Tersedia',
  `harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `detail_menu`, `kategori`, `stok`, `harga`) VALUES
(1, 'Bakso', 'Bakso Daging', 'Makanan', 'Tersedia', 20000),
(2, 'Mie Ayam', 'Topping Ayam, Topping Jamur ', 'Makanan', 'Tidak Tersedia', 15000),
(7, 'Es Teh', 'Jasmine, Lychee, Oolong', 'Minuman', 'Tersedia', 8000),
(8, 'Es Jeruk', 'Nipis, Lemon, Jeruk Asli', 'Minuman', 'Tersedia', 10000),
(11, 'Soto Lamongan ', 'Dengan Topping ayam', 'Makanan', 'Tersedia', 15000),
(12, 'Nasi Goreng', 'Jawa, Mawut, Seafood', 'Makanan', 'Tersedia', 25000),
(13, 'Sate Daging', 'Ayam asli, Kambing, Sapi', 'Makanan', 'Tersedia', 25000),
(15, 'Sop Buntut', 'Buntut Sapi', 'Makanan', 'Tersedia', 35000),
(16, 'Milkshake', 'Coklat, Vanila, Greentea, Strawberry', 'Minuman', 'Tersedia', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `menu_dibooking`
--

CREATE TABLE `menu_dibooking` (
  `id_menu_dibooking` int(12) NOT NULL,
  `id_detail_menu` text NOT NULL,
  `nama_makanan` varchar(250) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `sub_total` int(12) NOT NULL,
  `status_order` varchar(255) NOT NULL DEFAULT 'success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_dibooking`
--

INSERT INTO `menu_dibooking` (`id_menu_dibooking`, `id_detail_menu`, `nama_makanan`, `jumlah`, `sub_total`, `status_order`) VALUES
(15, 'INV20211015132542', 'Bakso', 1, 20000, 'success'),
(16, 'INV20211015132542', 'Nasi Goreng', 1, 25000, 'success'),
(17, 'INV20211015133852', 'Bakso', 2, 40000, 'success'),
(18, 'INV20211015133852', 'Es Teh', 2, 16000, 'success'),
(19, 'INV20211016130044', 'Bakso', 2, 40000, 'success'),
(20, 'INV20211016130044', 'Es Jeruk', 2, 20000, 'success'),
(21, 'INV20211027131246', 'Nasi Goreng', 2, 50000, 'success'),
(22, 'INV20211027131246', 'Soto Lamongan ', 2, 30000, 'success'),
(23, 'INV20211027131246', 'Es Jeruk', 4, 40000, 'success'),
(24, 'INV20211027134031', 'Es Jeruk', 2, 20000, 'success'),
(25, 'INV20211027134031', 'Bakso', 2, 40000, 'success'),
(26, 'INV20211029135257', 'Es Jeruk', 1, 10000, 'success'),
(27, 'INV20211029135257', 'Nasi Goreng', 1, 25000, 'success'),
(28, 'INV20211029135257', 'Soto Lamongan ', 1, 15000, 'success'),
(29, 'INV20211029200131', 'Nasi Goreng', 1, 25000, 'success'),
(30, 'INV20211029200131', 'Soto Lamongan ', 1, 15000, 'success'),
(31, 'INV20211029200131', 'Es Jeruk', 1, 10000, 'success'),
(32, 'INV20211029201010', 'Nasi Goreng', 1, 25000, 'success'),
(33, 'INV20211016130044', 'Es Teh', 1, 8000, 'success'),
(34, 'INV20211029135257', 'Es Jeruk', 1, 10000, 'success'),
(35, 'INV20211101132112', 'Bakso', 1, 20000, 'success'),
(36, 'INV20211101132112', 'Es Teh', 1, 8000, 'success'),
(37, 'INV20211101132112', 'Es Jeruk', 1, 10000, 'success'),
(38, 'INV20211101132112', 'Sate Daging', 1, 25000, 'success'),
(39, 'INV20211114143545', 'Es Jeruk', 2, 20000, 'success'),
(40, 'INV20211114143545', 'Soto Lamongan ', 2, 30000, 'success'),
(41, 'INV20211114190627', 'Es Teh', 2, 16000, 'success'),
(42, 'INV20211114190627', 'Bakso', 2, 40000, 'success'),
(43, 'INV20211114143545', 'Milkshake', 1, 15000, 'success'),
(44, 'INV20211114143545', 'Milkshake', 1, 15000, 'success'),
(45, 'INV20220901120519', 'Sop Buntut', 4, 140000, 'success'),
(46, 'INV20220901120719', 'Nasi Goreng', 18, 450000, 'success'),
(47, 'INV20220901120819', 'Sop Buntut', 2, 70000, 'success'),
(48, 'INV20220901120919', 'Sate Daging', 4, 100000, 'success'),
(49, 'INV20220901121507', 'Soto Lamongan ', 6, 90000, 'success'),
(50, 'INV20220901120719', 'Es Jeruk', 18, 180000, 'success'),
(51, 'INV20220901120819', 'Es Teh', 2, 16000, 'success'),
(52, 'INV20220901153004', 'Nasi Goreng', 10, 250000, 'success'),
(53, 'INV20220901153155', 'Soto Lamongan ', 2, 30000, 'success');

-- --------------------------------------------------------

--
-- Table structure for table `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id_metode` int(12) NOT NULL,
  `nama_merchant` varchar(250) NOT NULL,
  `atas_nama` varchar(250) NOT NULL,
  `kode_pembayaran` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id_metode`, `nama_merchant`, `atas_nama`, `kode_pembayaran`) VALUES
(1, 'Dana', 'Budi S', '085212349852'),
(2, 'Bank BCA', 'Budi Sudiman', '8952317234'),
(4, 'LinkAja', 'Siti Nurjanah', '082398521045'),
(5, 'GoPay', 'Budi Sudirman', '085912394855');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `jabatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `email`, `alamat`, `password`, `telepon`, `jenis_kelamin`, `jabatan`) VALUES
(1, 'Ardan Anjung Kusuma', 'ardan@gmail.com', 'Jl. Senggani, Kota Malang', 'd2219d75098abd01493908d2f7f4d13d', '081279109122', 'Laki-laki', 'pegawai'),
(2, 'Dina Lutfiana', 'dina@gmail.com', 'Jl. Semanggi Barat, Pati', '81dc9bdb52d04dc20036dbd8313ed055', '085645121991', 'Perempuan', 'pegawai'),
(3, 'Administrator', 'admin@gmail.com', 'Jl. Perjuangan Barat 15 Pati', '21232f297a57a5a743894a0e4a801fc3', '081123123123', 'Laki-laki', 'admin'),
(4, 'Riza Zulfahnur', 'riza@gmail.com', 'Jl. Blimbing 23 Kalitidu', '41a44352a6f3cd3b45282acbce50927c', '085209321234', 'Laki-laki', 'pegawai'),
(5, 'Yuni Kurnia Taramita', 'yunii@gmail.com', 'Jl. Merdeka 17, Pati', 'ae59eac48b46b17263e372b7e9e5120f', '08124325212', 'Perempuan', 'pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `profil_usaha`
--

CREATE TABLE `profil_usaha` (
  `id` int(12) NOT NULL,
  `nama_usaha` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `nomor_telepon` varchar(17) NOT NULL,
  `email` varchar(100) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `facebook` varchar(250) NOT NULL,
  `maps_link` text NOT NULL,
  `foto_usaha_1` text NOT NULL,
  `foto_usaha_2` text NOT NULL,
  `foto_usaha_3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil_usaha`
--

INSERT INTO `profil_usaha` (`id`, `nama_usaha`, `deskripsi`, `alamat`, `nomor_telepon`, `email`, `instagram`, `facebook`, `maps_link`, `foto_usaha_1`, `foto_usaha_2`, `foto_usaha_3`) VALUES
(1, 'Warung Milenial', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jl. Perjuangan Barat no.22 Pati, Jawa Tengah', '081222333444', 'warungmilenial@gmail.com', 'warung_milenial', 'warung milenial', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d507205.5692483615!2d110.7568591080576!3d-6.703315481568212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e70d387a01fac95%3A0x3027a76e352bb20!2sKabupaten%20Pati%2C%20Jawa%20Tengah!5e0!3m2!1sid!2sid!4v1662006517955!5m2!1sid!2sid', '01092022064740designfood3.png', '01092022064814designfood4.png', '01092022064814designfood2.png');

-- --------------------------------------------------------

--
-- Table structure for table `saran_kritik`
--

CREATE TABLE `saran_kritik` (
  `id_saran` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saran_kritik`
--

INSERT INTO `saran_kritik` (`id_saran`, `nama_pelanggan`, `email`, `tanggal`, `saran`) VALUES
(15, 'Nay', 'znyh@gmail.com', '2021-09-20', 'Rumah makan atau restoran adalah istilah umum untuk menyebut usaha gastronomi yang menyajikan hidangan kepada masyarakat dan menyediakan tempat untuk menikmati hidangan tersebut serta menetapkan tarif tertentu untuk makanan dan pelayanannya. Meski pada umumnya rumah makan menyajikan makanan di tempat, tetapi ada juga beberapa yang menyediakan layanan take-out dining dan delivery service sebagai salah satu bentuk pelayanan kepada konsumennya. Rumah makan biasanya memiliki spesialisasi dalam jenis makanan yang dihidangkannya. Sebagai contoh yaitu rumah makan chinese food, rumah makan Padang, rumah makan cepat saji (fast food restaurant) dan sebagainya.'),
(16, 'Yuni Kurnia Taramita', 'yuni186@gmail.com', '2021-10-01', 'Restoran ini tempatnya nyaman dan bersih. Pelayanannya pun sangat baik dan ramah. Dan tentunya menu yang ditawarkan juga enak. '),
(17, 'Ardan', 'ardananjungkusuma@gmail.com', '2021-10-04', 'Tolong kebersihan ditingkatkan'),
(23, 'Ardan', 'ardanak@gmail.com', '2021-11-09', 'Tolong kebersihan sampahnya dijaga');

-- --------------------------------------------------------

--
-- Table structure for table `saw_hasil`
--

CREATE TABLE `saw_hasil` (
  `id` int(11) NOT NULL,
  `tanggal_penghitungan` date NOT NULL,
  `pegawai_terpilih` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saw_hasil`
--

INSERT INTO `saw_hasil` (`id`, `tanggal_penghitungan`, `pegawai_terpilih`) VALUES
(4, '2021-10-23', 'Riza Zulfahnur'),
(7, '2021-10-24', 'Diego'),
(8, '2021-11-14', 'Ardan Anjung');

-- --------------------------------------------------------

--
-- Table structure for table `saw_kriteria`
--

CREATE TABLE `saw_kriteria` (
  `id` int(11) NOT NULL,
  `nama_kriteria` varchar(256) NOT NULL,
  `penjelasan_kriteria` text NOT NULL,
  `bobot_kriteria` varchar(10) NOT NULL,
  `kategori_bobot` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saw_kriteria`
--

INSERT INTO `saw_kriteria` (`id`, `nama_kriteria`, `penjelasan_kriteria`, `bobot_kriteria`, `kategori_bobot`) VALUES
(1, 'Disiplin', 'Menilai ketaatan hadir saat kerja. Range Nilai 10-90. Semakin banyak nilai maka semakin disiplin pegawai tsb.', '0.25', 'Benefit'),
(2, 'Kerja Sama', 'Menilai tingkat kemampuan bekerjasama dengan atasan atau rekan kerja dalam melaksanakan tugas. Range Nilai 10-90.', '0.15', 'Benefit'),
(4, 'Komplain Pengunjung', 'Menilai tingkat komplain dari pengunjung untuk pegawai Range 10-50', '0.2', 'Cost'),
(5, 'Etika Kerja', 'Menilai hubungan baik antar pegawai, customer atau pun atasan. Range 10-50.', '0.25', 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `saw_pegawai`
--

CREATE TABLE `saw_pegawai` (
  `id` int(11) NOT NULL,
  `nama_pegawai` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saw_pegawai`
--

INSERT INTO `saw_pegawai` (`id`, `nama_pegawai`) VALUES
(1, 'Ardan Anjung'),
(2, 'Riza Zulfahnur'),
(3, 'Dina Lisuardi'),
(4, 'Yuni Kurnia ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `gambar_menu`
--
ALTER TABLE `gambar_menu`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `lupa_password`
--
ALTER TABLE `lupa_password`
  ADD PRIMARY KEY (`id_lupa_password`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id_meja`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `menu_dibooking`
--
ALTER TABLE `menu_dibooking`
  ADD PRIMARY KEY (`id_menu_dibooking`);

--
-- Indexes for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `profil_usaha`
--
ALTER TABLE `profil_usaha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saran_kritik`
--
ALTER TABLE `saran_kritik`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `saw_hasil`
--
ALTER TABLE `saw_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saw_kriteria`
--
ALTER TABLE `saw_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saw_pegawai`
--
ALTER TABLE `saw_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `gambar_menu`
--
ALTER TABLE `gambar_menu`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `lupa_password`
--
ALTER TABLE `lupa_password`
  MODIFY `id_lupa_password` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `id_meja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menu_dibooking`
--
ALTER TABLE `menu_dibooking`
  MODIFY `id_menu_dibooking` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  MODIFY `id_metode` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profil_usaha`
--
ALTER TABLE `profil_usaha`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `saran_kritik`
--
ALTER TABLE `saran_kritik`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `saw_hasil`
--
ALTER TABLE `saw_hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `saw_kriteria`
--
ALTER TABLE `saw_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `saw_pegawai`
--
ALTER TABLE `saw_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
