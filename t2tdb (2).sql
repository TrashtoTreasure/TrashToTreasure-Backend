-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: 34.128.86.5
-- Generation Time: Jun 15, 2023 at 07:06 PM
-- Server version: 5.7.40-google-log
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `t2tdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `imageUrl` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `imageUrl`, `title`, `description`, `url`) VALUES
(1, 'https://akcdn.detik.net.id/community/media/visual/2023/02/17/bagaimana-proses-daur-ulang-sampah-simak-langkah-langkahnya-1_169.jpeg?w=700&q=90', 'Bagaimana Caranya Mendaur Ulang Sampah?', 'Sampah-sampah yang dihasilkan manusia dapat digunakan kembali melalui sebuah proses daur ulang. Tujuan proses daur ulang itu adalah untuk mengurangi penumpukan sampah di lingkungan. Jenis sampah terbagi menjadi sampah organik dan sampah anorganik. Contoh sampah organik adalah sisa sayur yang tidak dimasak dan kulit buah, sedangkan contoh sampah anorganik adalah plastik, wadah produk, maupun sobekan kertas.', 'https://news.detik.com/berita/d-6573967/bagaimana-proses-daur-ulang-sampah-simak-langkah-langkahnya?_ga=2.159790589.1794005375.1685578295-1571645975.1685578295'),
(2, 'https://asset.kompas.com/crops/KsX-6G4j-K-M1OKHrmBius64W18=/280x0:1163x589/750x500/data/photo/2023/03/05/64045a70de8c7.jpeg', 'Kresek Project, Bisnis Kerajinan Tangan dari Daur Ulang Sampah Kresek', 'Prihatin dengan masalah limbah sampah kresek di Lombok yang sering dibuang ke suangai, membuat Lila Nasution (60) memiliki ide untuk mengolah sampah kresek menjadi kerajinan tangan. “Kita mengumpulkan para pengrajin sambil mencari lagi yang lain, ada yang pintar membuat tas, keranjang, dan lainnya,” ujar Lila saat ditemui Kompas.com di acara Inacraft.', 'http://umkm.kompas.com/read/2023/03/05/192824183/kresek-project-bisnis-kerajinan-tangan-dari-daur-ulang-sampah-kresek?_ga=2.244176837.1534724319.1685578308-1129224474.1685536899'),
(3, 'https://i.pinimg.com/originals/c4/cb/a4/c4cba4799df36f3e61a4e0ed23242c99.jpg', '3 Cara Membuat Tas dari Bungkus Kopi yang Unik dan Mudah Dipraktikkan', 'Cara membuat tas dari bungkus kopi merupakan ide mengolah limbah sampah menjadi lebih bernilai. Ada tiga jenis bahan bungkus kopi yang bisa didaur ulang untuk dijadikan tas. Mulai dari bungkus kopi kertas, bungkus kopi kardus, dan bungkus kopi plastik. Model tas yang bisa dibuat dari bungkus kopi ini bermacam-macam.', 'https://www.liputan6.com/hot/read/5100307/3-cara-membuat-tas-dari-bungkus-kopi-yang-unik-dan-mudah-dipraktikkan'),
(4, 'https://media.suara.com/pictures/653x366/2022/10/12/62136-ilustrasi-daur-ulang-unsplashcomsigmund.webp', '5 Manfaat Mendaur Ulang Sampah yang Kerap Diabaikan', 'Salah satu cara yang dikenal masyarakat untuk menangani permasalahan sampah adalah dengan cara mendaur ulang sampah tersebut.Dengan daur ulang, sampah yang biasanya dibuang begitu saja, dapat digunakan kembali. Tentunya, ada banyak sekali manfaat yang bisa didapat dengan mendaur ulang sampah.', 'https://yoursay.suara.com/lifestyle/2022/10/12/151239/5-manfaat-mendaur-ulang-sampah-yang-kerap-diabaikan'),
(5, 'https://cdn1.katadata.co.id/media/images/thumb/2021/09/07/2021_09_07-11_57_55_de0946a728542d35f01a539daf361784_960x640_thumb.jpg', 'Recycle Adalah Upaya Daur Ulang, Kenali Konsep dan Contohnya', 'Kita mungkin sering mendengar istilah recycle saat belajar tentang daur ulang sampah. Hal ini memang ada kaitannya, karena kata recycle adalah kata dalam bahasa Inggris yang berhubungan dengan upaya mengolah limbah dari berbagai aktivitas manusia.', 'https://katadata.co.id/intan/berita/61dfbab884bf9/recycle-adalah-upaya-daur-ulang-kenali-konsep-dan-contohnya'),
(6, 'https://akcdn.detik.net.id/visual/2018/02/28/f0e7b015-4062-4795-a286-92060df3c80f_169.jpeg?w=650&q=90', 'Aksi Nyata Peduli Sampah di Indonesia Masih Rendah', 'Pada 21 Februari lalu jadi momentum hari peduli sampah nasional. Tanggal tersebut diambil berdasarkan peristiwa longsornya Tempat Pembuangan Akhir (TPA) Leuwigajah, Cimahi, Jawa Barat pada 21 Februari 2005. Publik tak akan lupa bahwa peristiwa ini menelan seratus lebih korban jiwa.\r\n\r\nDini Trisyanti, founder sekaligus peneliti dari Sustainable Waste Indonesia (SWI) berharap peristiwa serupa tak akan terulang. Ia pun ingin masyarakat khususnya rumah tangga mulai sadar dan bergerak sebagai bentuk kepedulian terhadap sampah.\r\n', 'https://www.cnnindonesia.com/gaya-hidup/20180301091556-282-279599/aksi-nyata-peduli-sampah-di-indonesia-masih-rendah'),
(7, 'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01grhhky3zkqcdn3gc5jsnx3e4.jpg', 'Punya Sampah Bekas Botol Skincare? Yuk Mulai Dikelola Dengan Cara Zerowaste', 'Isu sampah menjadi perhatian serius bagi seluruh negara di dunia khususnya Indonesia. Hingga saat ini permasalahan sampah di Indonesia belum terselesaikan dengan baik. Disamping itu, jumlah penduduk yang semakin bertambah dari waktu ke waktu mengakibatkan volume sampah yang dihasilkan oleh aktivitas manusia menjadi meningkat. Sampah yang dihasilkan dari aktivitas manusia seperti plastik adalah sebesar 14% dari 30-40% jumlah keseluruhan sampah anorganik. ', 'https://kumparan.com/diivaaptr/punya-sampah-bekas-botol-skincare-yuk-mulai-dikelola-dengan-cara-zerowaste-1zlm9TECyW5/1');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `timestamp` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `timestamp`, `email`, `rate`, `text`) VALUES
(10, '2023-06-04 22:09:29', 'test10@gmail.com', '', 'aplikasi ini bagus bgt'),
(11, '2023-06-04 22:49:07', 'test101@gmail.com', '', 'aplikasi ini bagus bgttdd'),
(12, '2023-06-04 23:02:14', 'test1012@gmail.com', 'Baguss', 'aplikasi ini bagus bgttddtsts'),
(13, '2023-06-04 23:08:05', 'test1011@gmail.com', 'Buruk Sekali', 'aplikasi ini buruk karena sangat kurangnya fitur'),
(14, '2023-06-04 23:08:18', 'test1012@gmail.com', 'Buruk', 'aplikasi ini buruk karena kurangnya fitur'),
(15, '2023-06-04 23:08:51', 'test1013@gmail.com', 'Netral', 'aplikasi ini biasa biasa saja'),
(16, '2023-06-04 23:09:10', 'test1014@gmail.com', 'Bagus', 'aplikasi ini bagus, walaupun masih ada kekurangan'),
(17, '2023-06-04 23:09:29', 'test1015@gmail.com', 'Bagus Sekali', 'overall, aplikasi ini sangat baguss'),
(20, '2023-06-04 23:21:46', 'test1018@gmail.com', 'Bagus Sekali', 'overall, aplikasi ini sangat baguss bgts'),
(21, '2023-06-12 23:38:42', 'test@gmail.com', 'baik', 'bagus'),
(27, '2023-06-13 17:15:12', 'test1010@gmail.com', 'cukup', 'baik'),
(28, '2023-06-14T06:33:24.278Z', 'test1010@gmail.com', 'cukup', 'baik'),
(34, '2023-06-14T07:54:49.214Z', 'test1010@gmail.com', 'cukup', 'sangat baik'),
(35, '2023-06-14T07:56:02.385Z', 'test1010@gmail.com', 'cukup', 'sangat baik'),
(36, '2023-06-14T08:16:49.822Z', 'test111@gmail.com', 'cukup', 'sangat baik sekali'),
(37, '2023-06-14T12:33:07.524Z', 'undefined', 'undefined', 'undefined'),
(38, '2023-06-14T12:42:23.355Z', 'undefined', 'undefined', 'undefined'),
(39, '2023-06-14T13:25:20.419Z', 'undefined', 'undefined', 'undefined'),
(40, '2023-06-14T13:25:29.578Z', 'undefined', 'undefined', 'undefined'),
(41, '2023-06-14T13:28:51.821Z', 'undefined', 'undefined', 'undefined'),
(42, '2023-06-14T13:30:04.828Z', 'undefined', 'undefined', 'undefined'),
(43, '2023-06-14T13:31:59.695Z', 'undefined', 'undefined', 'undefined'),
(44, '2023-06-14T13:38:33.870Z', 'undefined', 'undefined', 'undefined'),
(45, '2023-06-14T13:42:55.927Z', 'cekundefined@gmail.com', 'cukup', 'cek undefined'),
(46, '2023-06-14T13:45:42.466Z', 'bajubagus@gmail.com', 'bagus', 'luar biasa pokonyamah'),
(47, '2023-06-14T13:46:04.522Z', 'undefined', 'undefined', 'undefined'),
(48, '2023-06-14T13:47:56.365Z', 'undefined', 'undefined', 'undefined'),
(49, '2023-06-14T13:49:26.060Z', 'cekundefined@gmail.com', 'cukup', 'cek undefined'),
(50, '2023-06-14T13:50:38.848Z', 'cekundefined@gmail.com', 'cukup', 'cek undefined lagi ga pake timestamp'),
(51, '2023-06-14T13:52:29.642Z', 'test112@gmail.com', 'cukup', 'cek undefined lagi'),
(52, '2023-06-14T13:55:21.535Z', 'ujang@gmail.com', 'asdad', 'asdadasdsad'),
(53, '2023-06-14T13:55:51.028Z', 'undefined', 'undefined', 'undefined'),
(54, '2023-06-14T14:06:16.077Z', 'bayuafriyadi5@gmail.com', 'nsns', 'sbsbs'),
(55, '2023-06-14T14:08:39.078Z', 'fildzah@gmail.com', 'cukup', 'cek undefined lagi'),
(56, '2023-06-14T14:27:23.601Z', 'bayuafriyadi5@gmail.com', 'Bintang 5.0', 'bagus'),
(57, '2023-06-14T14:47:13.148Z', 'fildzahsyarafinaah@gmail.com', 'Bintang 5.0', 'good job'),
(58, '2023-06-14T15:34:31.290Z', 'firmansyahwicaksono30@gmail.com', 'Bintang 5.0', 'amazingg'),
(59, '2023-06-15T11:11:10.325Z', 'bayuafriyadi5@gmail.com', 'Bintang 5.0', 'bagus'),
(60, '2023-06-15T11:22:04.110Z', 'bayuafriyadi5@gmail.com', 'Bintang 5.0', 'bagus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
