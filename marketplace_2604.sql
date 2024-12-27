-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2024 pada 10.08
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketplace_2604`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(2, 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin_alya'),
(3, 'admin2', '315f166c5aca63a157f7d41007675cb44a948b33', 'ngadimin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(255) NOT NULL,
  `isi_artikel` text NOT NULL,
  `foto_artikel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `foto_artikel`) VALUES
(4, 'Sejarah Tas Berbahan Kulit di Indonesia2', '<p><strong>Tas Kulit</strong><br />\r\nTas berbahan kulit memiliki sejarah panjang di Indonesia, dimulai sejak masa kerajaan-kerajaan kuno. Pada zaman Majapahit dan Sriwijaya, kulit digunakan untuk berbagai keperluan, termasuk pakaian, perlengkapan perang, dan aksesori seperti tas. Kulit yang digunakan biasanya berasal dari hewan-hewan yang banyak ditemukan di Nusantara, seperti sapi, kambing, dan kerbau. Keterampilan mengolah kulit diwariskan dari generasi ke generasi, dengan teknik-teknik tradisional yang masih bertahan hingga saat ini. Pada masa penjajahan, pengaruh dari Belanda membawa masuk teknik pengolahan kulit yang lebih modern, memperkaya variasi dan kualitas produk tas kulit di Indonesia.</p>\r\n\r\n<p>Memasuki era kemerdekaan, industri tas kulit di Indonesia semakin berkembang pesat. Banyak pengrajin lokal mulai membangun merek sendiri dan memasarkan produk mereka baik di dalam maupun luar negeri. Kota-kota seperti Yogyakarta, Bandung, dan Garut menjadi pusat produksi tas kulit yang terkenal. Tas kulit buatan Indonesia dikenal akan kualitasnya yang tinggi dan desainnya yang unik, sering kali memadukan unsur-unsur tradisional dengan sentuhan modern. Hingga kini, tas kulit Indonesia tetap diminati, baik oleh pasar lokal maupun internasional, sebagai simbol keterampilan, budaya, dan inovasi.</p>\r\n     ', 'baner31.jpg'),
(5, 'Tas Pria Keren', '<p>Tas berbahan kulit memiliki sejarah panjang di Indonesia, dimulai sejak masa kerajaan-kerajaan kuno. Pada zaman Majapahit dan Sriwijaya, kulit digunakan untuk berbagai keperluan, termasuk pakaian, perlengkapan perang, dan aksesori seperti tas. Kulit yang digunakan biasanya berasal dari hewan-hewan yang banyak ditemukan di Nusantara, seperti sapi, kambing, dan kerbau. Keterampilan mengolah kulit diwariskan dari generasi ke generasi, dengan teknik-teknik tradisional yang masih bertahan hingga saat ini. Pada masa penjajahan, pengaruh dari Belanda membawa masuk teknik pengolahan kulit yang lebih modern, memperkaya variasi dan kualitas produk tas kulit di Indonesia.</p>\r\n\r\n<p>Memasuki era kemerdekaan, industri tas kulit di Indonesia semakin berkembang pesat. Banyak pengrajin lokal mulai membangun merek sendiri dan memasarkan produk mereka baik di dalam maupun luar negeri. Kota-kota seperti Yogyakarta, Bandung, dan Garut menjadi pusat produksi tas kulit yang terkenal. Tas kulit buatan Indonesia dikenal akan kualitasnya yang tinggi dan desainnya yang unik, sering kali memadukan unsur-unsur tradisional dengan sentuhan modern. Hingga kini, tas kulit Indonesia tetap diminati, baik oleh pasar lokal maupun internasional, sebagai simbol keterampilan, budaya, dan inovasi.</p>\r\n', 'tas_cowo1.jpeg'),
(6, 'Tas Wanita Modis', '<p>Lorem Ipsum</p>\r\n', 'Tas_cw1.jpeg'),
(7, 'Tas Wanita Keren', '<p>Lorem Ipsum</p>\r\n', 'tas_cw2.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `foto_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `foto_kategori`) VALUES
(20, 'Tas Pria', 'tas_cowo1.jpeg'),
(21, 'Tas Wanita', 'tas_cw2.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_member_jual` int(11) NOT NULL,
  `id_member_beli` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id_member_jual`, `id_member_beli`, `id_produk`, `jumlah`) VALUES
(4, 2, 1, 4, 3),
(6, 1, 2, 1, 3),
(17, 3, 2, 7, 1),
(18, 3, 4, 7, 1),
(20, 3, 6, 9, 1),
(21, 3, 2, 9, 1),
(22, 3, 2, 12, 1),
(23, 6, 2, 14, 1),
(24, 3, 4, 9, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `email_member` varchar(100) NOT NULL,
  `password_member` varchar(100) NOT NULL,
  `nama_member` varchar(100) NOT NULL,
  `alamat_member` text NOT NULL,
  `wa_member` varchar(50) NOT NULL,
  `kode_distrik_member` varchar(10) NOT NULL,
  `nama_distrik_member` varchar(256) NOT NULL,
  `nama_toko` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `email_member`, `password_member`, `nama_member`, `alamat_member`, `wa_member`, `kode_distrik_member`, `nama_distrik_member`, `nama_toko`) VALUES
(2, 'dirdam@amikom.ac.id', 'b2ad8a11419869509d1561b918ac9b4f64805929', 'Dirdam', 'Jl. Anggajaya II, Concat', '08147714917', '501', 'Kota Yogyakarta DI Yogyakarta', 'Toko Ungu'),
(3, 'sanayaalmatin@gmail.com', '6467baa3b187373e3931422e2a8ef22f3e447d77', 'Muchamad Sanaya Almatin', 'KP. Taman Baru', '0812376426', '501', 'Kota Yogyakarta DI Yogyakarta', 'Toko Ijo'),
(4, 'member3@gmail.com', '527b5e9f8603c0480a71467d19536f619c9dae41', 'member3', 'Jalan Raya Cilegon KM.05\r\nKp. Taman Baru RT 17 RW 06', '08999457877', '39', 'Kabupaten Bantul DI Yogyakarta', ''),
(6, 'member4@gmail.com', 'e393ade38b014ccdfb97fb28947f2fec8acaf6e3', 'member4', 'Depok, Sleman', '091793313', '501', 'Kota Yogyakarta DI Yogyakarta', 'Toko Kuning');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `foto_produk` varchar(255) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `berat_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_member`, `id_kategori`, `nama_produk`, `harga_produk`, `foto_produk`, `deskripsi_produk`, `berat_produk`) VALUES
(7, 3, 20, 'Tas Pria 1', 130000, 'tas_cowo1.jpeg', 'Tas Untuk Pria', 1500),
(8, 3, 20, 'Tas Pria 2', 100000, 'tas_cowo2.jpeg', 'Tas Untuk Pria', 1000),
(9, 3, 20, 'Tas Pria 3', 90000, 'tas_cowo3.jpeg', 'Tas Untuk Pria', 500),
(10, 3, 21, 'Tas Wanita 1', 150000, 'Tas_cw1.jpeg', 'Tas Untuk Wanita', 2000),
(11, 3, 21, 'Tas Wanita 2', 200000, 'tas_cw2.jpeg', 'Tas Untuk Wanita', 1500),
(12, 3, 21, 'Tas Wanita 3', 2500, 'tas_cw3.jpeg', 'Tas Untuk Wanita', 2000),
(14, 6, 20, 'tes tes 1234', 150000, 'wiser-by-the-mile-SwWCo1k92M4-unsplash2.jpg', 'Ini Demo', 1500),
(16, 2, 21, 'Tas Wanita Terbaik', 500000, 'james-ree-ZmeFtu11Hpc-unsplash1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', 900);

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `caption_slider` text NOT NULL,
  `foto_slider` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id_slider`, `caption_slider`, `foto_slider`) VALUES
(8, '<p>Tas Dengan Harga Terjangkau, Namun Mampu Memberikan Looks yang Mewah!</p>\r\n', 'baner1.jpg'),
(9, '<p>Terlihat Sederhana Namun Menawan</p>\r\n', 'baner2.jpg'),
(10, '<p>Sehingga Mampu Memikat Daya Tarik Orang-orang Disekitar Anda</p>\r\n', 'baner3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_member_beli` int(11) NOT NULL,
  `id_member_jual` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL DEFAULT current_timestamp(),
  `belanja_transaksi` int(11) NOT NULL,
  `status_transaksi` enum('pesan','lunas','batal','dikirim','selesai') NOT NULL DEFAULT 'pesan',
  `ongkir_transaksi` int(11) NOT NULL,
  `total_transaksi` int(11) NOT NULL,
  `bayar_transaksi` int(11) NOT NULL,
  `distrik_pengirim` varchar(255) NOT NULL,
  `nama_pengirim` varchar(100) NOT NULL,
  `wa_pengirim` varchar(50) NOT NULL,
  `alamat_pengirim` text NOT NULL,
  `distrik_penerima` varchar(255) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `wa_penerima` varchar(50) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `nama_ekspedisi` varchar(100) NOT NULL,
  `layanan_ekspedisi` varchar(100) NOT NULL,
  `estimasi_ekspedisi` varchar(50) NOT NULL,
  `berat_ekspedisi` varchar(50) NOT NULL,
  `resi_ekspedisi` varchar(50) DEFAULT NULL,
  `nama_toko_pengirim` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_transaksi`, `id_member_beli`, `id_member_jual`, `tanggal_transaksi`, `belanja_transaksi`, `status_transaksi`, `ongkir_transaksi`, `total_transaksi`, `bayar_transaksi`, `distrik_pengirim`, `nama_pengirim`, `wa_pengirim`, `alamat_pengirim`, `distrik_penerima`, `nama_penerima`, `wa_penerima`, `alamat_penerima`, `nama_ekspedisi`, `layanan_ekspedisi`, `estimasi_ekspedisi`, `berat_ekspedisi`, `resi_ekspedisi`, `nama_toko_pengirim`) VALUES
(7, '202407081121072860', 2, 3, '2024-07-08 11:21:07', 650000, 'lunas', 55000, 705000, 705000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '55000', '6000', 'JNE1007', ''),
(8, '202407081124564261', 2, 3, '2024-07-08 11:24:56', 650000, 'pesan', 55000, 705000, 705000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '55000', '6000', NULL, ''),
(9, '202407090323127371', 2, 3, '2024-07-09 03:23:12', 780000, 'lunas', 55000, 835000, 835000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '55000', '7500', NULL, ''),
(10, '202407091801519115', 2, 3, '2024-07-09 18:01:51', 870000, 'lunas', 96000, 966000, 966000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '96000', '8000', NULL, ''),
(11, '202407091819587667', 2, 3, '2024-07-09 18:19:58', 870000, 'lunas', 55000, 925000, 925000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '55000', '8000', NULL, ''),
(12, '202407091833212626', 2, 3, '2024-07-09 18:33:21', 870000, 'pesan', 55000, 925000, 925000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '55000', '8000', NULL, ''),
(13, '202407091935456698', 2, 3, '2024-07-09 19:35:45', 200000, 'lunas', 55000, 255000, 255000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '55000', '1500', NULL, ''),
(14, '202407100514575322', 2, 3, '2024-07-10 05:14:57', 130000, 'lunas', 32000, 162000, 162000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '32000', '1500', NULL, ''),
(15, '202407100532184145', 2, 3, '2024-07-10 05:32:18', 90000, 'lunas', 16000, 106000, 106000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '16000', '500', NULL, ''),
(16, '202407100546094631', 2, 3, '2024-07-10 05:46:09', 90000, 'lunas', 55000, 145000, 145000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '55000', '500', NULL, ''),
(17, '202407100657287848', 2, 3, '2024-07-10 06:57:28', 90000, 'lunas', 16000, 106000, 106000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '16000', '500', NULL, ''),
(18, '202407100717471709', 2, 3, '2024-07-10 07:17:47', 270000, 'pesan', 32000, 302000, 302000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '32000', '1500', NULL, ''),
(19, '202407101047329799', 6, 3, '2024-07-10 10:47:32', 90000, 'pesan', 16000, 106000, 106000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'member4', '091793313', 'Depok, Sleman', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '16000', '500', NULL, ''),
(20, '202407101101252803', 6, 3, '2024-07-10 11:01:25', 90000, 'pesan', 16000, 106000, 106000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'member4', '091793313', 'Depok, Sleman', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '16000', '500', NULL, ''),
(21, '202407101501292839', 2, 3, '2024-07-10 15:01:29', 90000, 'pesan', 16000, 106000, 106000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '16000', '500', NULL, ''),
(22, '202407110752417005', 2, 3, '2024-07-11 07:52:41', 90000, 'lunas', 16000, 106000, 106000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '16000', '500', 'JNEREG12', ''),
(23, '202407120241013506', 2, 3, '2024-07-12 02:41:01', 260000, 'pesan', 48000, 308000, 308000, 'Kabupaten Sidoarjo Jawa Timur', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '48000', '3000', NULL, ''),
(24, '202407161224435819', 2, 3, '2024-07-16 12:24:43', 130000, 'lunas', 22000, 152000, 152000, 'Kota Yogyakarta DI Yogyakarta', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'JNE City Courier', '22000', '1500', NULL, 'Toko Ijo'),
(25, '202407161537556139', 2, 3, '2024-07-16 15:37:55', 130000, 'pesan', 40000, 170000, 170000, 'Kota Yogyakarta DI Yogyakarta', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '40000', '1500', NULL, 'Toko Ijo'),
(26, '202407161539076368', 2, 6, '2024-07-16 15:39:07', 150000, 'pesan', 22000, 172000, 172000, 'Kota Yogyakarta DI Yogyakarta', 'member4', '091793313', 'Depok, Sleman', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'JNE City Courier', '22000', '1500', NULL, 'Toko Kuning'),
(27, '202407161541077147', 2, 6, '2024-07-16 15:41:07', 150000, 'pesan', 14000, 164000, 164000, 'Kota Yogyakarta DI Yogyakarta', 'member4', '091793313', 'Depok, Sleman', 'Kota Yogyakarta DI Yogyakarta', 'Dirdam', '08147714917', 'Jl. Anggajaya II, Concat', 'Jalur Nugraha Ekakurir (JNE)', 'JNE City Courier', '14000', '1500', NULL, 'Toko Kuning'),
(28, '202407161547489081', 4, 3, '2024-07-16 15:47:48', 130000, 'pesan', 14000, 144000, 144000, 'Kota Yogyakarta DI Yogyakarta', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kabupaten Bantul DI Yogyakarta', 'member3', '08999457877', 'Jalan Raya Cilegon KM.05\r\nKp. Taman Baru RT 17 RW 06', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '14000', '1500', NULL, 'Toko Ijo'),
(29, '202407161553095257', 4, 3, '2024-07-16 15:53:09', 90000, 'pesan', 7000, 97000, 97000, 'Kota Yogyakarta DI Yogyakarta', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kabupaten Bantul DI Yogyakarta', 'member3', '08999457877', 'Jalan Raya Cilegon KM.05\r\nKp. Taman Baru RT 17 RW 06', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '7000', '500', NULL, 'Toko Ijo'),
(30, '202407161601596775', 4, 3, '2024-07-16 16:01:59', 90000, 'pesan', 7000, 97000, 97000, 'Kota Yogyakarta DI Yogyakarta', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kabupaten Bantul DI Yogyakarta', 'member3', '08999457877', 'Jalan Raya Cilegon KM.05\r\nKp. Taman Baru RT 17 RW 06', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '7000', '500', NULL, 'Toko Ijo'),
(31, '202407161637252805', 4, 3, '2024-07-16 16:37:25', 130000, 'pesan', 14000, 144000, 144000, 'Kota Yogyakarta DI Yogyakarta', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kabupaten Bantul DI Yogyakarta', 'member3', '08999457877', 'Jalan Raya Cilegon KM.05\r\nKp. Taman Baru RT 17 RW 06', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '14000', '1500', NULL, 'Toko Ijo'),
(32, '202407161653046104', 4, 3, '2024-07-16 16:53:04', 130000, 'pesan', 14000, 144000, 144000, 'Kota Yogyakarta DI Yogyakarta', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kabupaten Bantul DI Yogyakarta', 'member3', '08999457877', 'Jalan Raya Cilegon KM.05\r\nKp. Taman Baru RT 17 RW 06', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '14000', '1500', NULL, 'Toko Ijo'),
(33, '202407161753215920', 4, 3, '2024-07-16 17:53:21', 130000, 'pesan', 40000, 170000, 170000, 'Kota Yogyakarta DI Yogyakarta', 'Muchamad Sanaya Almatin', '0812376426', 'KP. Taman Baru', 'Kabupaten Bantul DI Yogyakarta', 'member3', '08999457877', 'Jalan Raya Cilegon KM.05\r\nKp. Taman Baru RT 17 RW 06', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '40000', '1500', NULL, 'Toko Ijo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_beli` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `jumlah_rating` int(11) DEFAULT NULL,
  `ulasan_rating` text DEFAULT NULL,
  `waktu_rating` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi_detail`, `id_transaksi`, `id_produk`, `nama_beli`, `harga_beli`, `jumlah_beli`, `jumlah_rating`, `ulasan_rating`, `waktu_rating`) VALUES
(8, 7, 12, 'Tas Wanita 3', 250000, 2, 4, 'Bagus', '2024-07-11 07:26:29'),
(9, 7, 10, 'Tas Wanita 1', 150000, 1, 5, 'Bagus Banget', '2024-07-11 07:26:29'),
(10, 8, 12, 'Tas Wanita 3', 250000, 2, NULL, NULL, NULL),
(11, 8, 10, 'Tas Wanita 1', 150000, 1, NULL, NULL, NULL),
(12, 9, 12, 'Tas Wanita 3', 250000, 2, NULL, NULL, NULL),
(13, 9, 10, 'Tas Wanita 1', 150000, 1, NULL, NULL, NULL),
(14, 9, 7, 'Tas Pria 1', 130000, 1, NULL, NULL, NULL),
(15, 10, 12, 'Tas Wanita 3', 250000, 2, NULL, NULL, NULL),
(16, 10, 10, 'Tas Wanita 1', 150000, 1, NULL, NULL, NULL),
(17, 10, 7, 'Tas Pria 1', 130000, 1, NULL, NULL, NULL),
(18, 10, 9, 'Tas Pria 3', 90000, 1, NULL, NULL, NULL),
(19, 11, 12, 'Tas Wanita 3', 250000, 2, NULL, NULL, NULL),
(20, 11, 10, 'Tas Wanita 1', 150000, 1, NULL, NULL, NULL),
(21, 11, 7, 'Tas Pria 1', 130000, 1, NULL, NULL, NULL),
(22, 11, 9, 'Tas Pria 3', 90000, 1, NULL, NULL, NULL),
(23, 12, 12, 'Tas Wanita 3', 250000, 2, NULL, NULL, NULL),
(24, 12, 10, 'Tas Wanita 1', 150000, 1, NULL, NULL, NULL),
(25, 12, 7, 'Tas Pria 1', 130000, 1, NULL, NULL, NULL),
(26, 12, 9, 'Tas Pria 3', 90000, 1, NULL, NULL, NULL),
(27, 13, 11, 'Tas Wanita 2', 200000, 1, NULL, NULL, NULL),
(28, 14, 7, 'Tas Pria 1', 130000, 1, NULL, NULL, NULL),
(29, 15, 9, 'Tas Pria 3', 90000, 1, NULL, NULL, NULL),
(30, 16, 9, 'Tas Pria 3', 90000, 1, NULL, NULL, NULL),
(31, 17, 9, 'Tas Pria 3', 90000, 1, NULL, NULL, NULL),
(32, 18, 9, 'Tas Pria 3', 90000, 3, NULL, NULL, NULL),
(33, 19, 9, 'Tas Pria 3', 90000, 1, NULL, NULL, NULL),
(34, 20, 9, 'Tas Pria 3', 90000, 1, NULL, NULL, NULL),
(35, 21, 9, 'Tas Pria 3', 90000, 1, NULL, NULL, NULL),
(36, 22, 9, 'Tas Pria 3', 90000, 1, 3, 'Lumayan Oke.', '2024-07-11 07:54:08'),
(37, 23, 7, 'Tas Pria 1', 130000, 2, NULL, NULL, NULL),
(38, 24, 7, 'Tas Pria 1', 130000, 1, 5, 'Mainnya bagus sekali 5x', '2024-07-17 08:55:57'),
(39, 25, 7, 'Tas Pria 1', 130000, 1, NULL, NULL, NULL),
(40, 26, 14, 'tes tes 1234', 150000, 1, NULL, NULL, NULL),
(41, 27, 14, 'tes tes 1234', 150000, 1, NULL, NULL, NULL),
(42, 28, 7, 'Tas Pria 1', 130000, 1, NULL, NULL, NULL),
(43, 29, 9, 'Tas Pria 3', 90000, 1, NULL, NULL, NULL),
(44, 30, 9, 'Tas Pria 3', 90000, 1, NULL, NULL, NULL),
(45, 31, 7, 'Tas Pria 1', 130000, 1, NULL, NULL, NULL),
(46, 32, 7, 'Tas Pria 1', 130000, 1, NULL, NULL, NULL),
(47, 33, 7, 'Tas Pria 1', 130000, 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
