-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 01:18 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aktivitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivitas`
--

CREATE TABLE `aktivitas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_id` bigint(16) UNSIGNED NOT NULL,
  `user_id` int(8) UNSIGNED NOT NULL,
  `unit_kode` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_start` time NOT NULL,
  `jam_end` time NOT NULL,
  `target` int(9) UNSIGNED NOT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `tgl_add` datetime NOT NULL,
  `tgl_update` datetime DEFAULT NULL,
  `update_oleh` int(8) DEFAULT NULL,
  `flag` tinyint(1) UNSIGNED ZEROFILL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aktivitas`
--

INSERT INTO `aktivitas` (`id`, `m_id`, `user_id`, `unit_kode`, `tanggal`, `jam_start`, `jam_end`, `target`, `satuan`, `tgl_add`, `tgl_update`, `update_oleh`, `flag`) VALUES
(2, 22, 1, '52563', '2018-05-02', '07:30:00', '09:00:00', 20, 'Dokumen', '2018-05-02 15:22:04', '2018-05-18 09:47:07', 1, 1),
(3, 1, 1, '52563', '2018-05-02', '14:00:00', '16:00:00', 10, 'responden', '2018-05-02 15:30:15', '2018-05-02 15:30:15', 1, 1),
(4, 3, 1, '52563', '2018-05-02', '10:00:00', '12:29:00', 50, 'responden', '2018-05-02 15:33:16', '2018-05-02 15:33:16', 1, 1),
(5, 4, 1, '52563', '2018-05-04', '07:30:00', '09:00:00', 1, 'kegiatan', '2018-05-04 17:23:25', '2018-05-04 17:23:26', 1, 1),
(6, 5, 1, '52563', '2018-05-04', '14:00:00', '16:00:00', 1, 'kegiatan', '2018-05-04 17:24:31', '2018-05-04 17:24:31', 1, 1),
(7, 6, 1, '52563', '2018-05-02', '12:00:00', '14:00:00', 1, 'Kegiatan', '2018-05-04 17:25:13', '2018-05-04 17:25:13', 1, 1),
(8, 7, 1, '52563', '2018-05-17', '08:00:00', '10:00:00', 1, 'kegiatan', '2018-05-17 08:52:52', '2018-05-17 08:52:53', 1, 1),
(9, 8, 1, '52563', '2018-05-17', '10:00:00', '12:00:00', 20, 'Responden', '2018-05-17 09:16:31', '2018-05-17 09:16:31', 1, 1),
(10, 8, 1, '52563', '2018-05-16', '07:30:00', '09:00:00', 10, 'responden', '2018-05-17 09:17:17', '2018-05-17 09:17:17', 1, 1),
(11, 9, 1, '52563', '2018-05-15', '07:30:00', '08:00:00', 1, 'kegiatan', '2018-05-17 09:25:16', '2018-05-17 09:25:17', 1, 1),
(12, 7, 1, '52563', '2018-05-15', '08:00:00', '10:00:00', 1, 'Kegiatan', '2018-05-17 09:27:33', '2018-05-17 09:27:33', 1, 1),
(13, 10, 1, '52563', '2018-05-03', '07:30:00', '09:00:00', 1, 'kegiatan', '2018-05-17 09:38:11', '2018-05-17 09:38:11', 1, 1),
(14, 11, 11, '52521', '2018-05-17', '08:00:00', '10:00:00', 1, 'Buku', '2018-05-17 13:41:30', '2018-05-17 13:41:30', 11, 1),
(15, 12, 11, '52521', '2018-05-16', '07:30:00', '09:00:00', 1, 'kegiatan', '2018-05-17 13:41:58', '2018-05-17 13:41:58', 11, 1),
(16, 13, 11, '52521', '2018-05-15', '07:30:00', '08:00:00', 1, 'Kegiatan', '2018-05-17 13:42:29', '2018-05-17 13:42:29', 11, 1),
(17, 14, 10, '52521', '2018-05-17', '08:00:00', '10:00:00', 1, 'Buku', '2018-05-17 13:46:05', '2018-05-17 13:46:05', 10, 1),
(18, 15, 10, '52521', '2018-05-16', '07:30:00', '10:00:00', 1, 'Kegiatan', '2018-05-17 13:47:07', '2018-05-17 13:47:07', 10, 1),
(19, 16, 10, '52521', '2018-05-15', '07:30:00', '08:00:00', 1, 'Kegiatan', '2018-05-17 13:48:33', '2018-05-17 13:48:34', 10, 1),
(20, 7, 1, '52563', '2018-05-18', '08:00:00', '10:00:00', 1, 'Kegiatan', '2018-05-18 08:33:20', '2018-05-18 09:46:22', 1, 1),
(21, 17, 1, '52563', '2018-05-17', '13:00:00', '15:00:00', 1, 'Kegiatan', '2018-05-18 08:34:32', '2018-05-18 08:34:32', 1, 1),
(22, 7, 1, '52563', '2018-05-16', '09:00:00', '12:00:00', 1, 'Kegiatan', '2018-05-18 08:35:02', '2018-05-18 08:35:02', 1, 1),
(23, 18, 16, '52515', '2018-05-18', '08:00:00', '09:00:00', 1, 'kegiatan', '2018-05-18 08:36:15', '2018-05-18 08:36:15', 16, 1),
(24, 19, 16, '52515', '2018-05-17', '08:00:00', '11:00:00', 3, 'laporan', '2018-05-18 08:37:17', '2018-05-18 08:37:18', 16, 1),
(25, 20, 17, '52515', '2018-05-18', '08:00:00', '10:00:00', 3, 'laporan', '2018-05-18 08:37:55', '2018-05-18 08:37:55', 17, 1),
(26, 21, 17, '52515', '2018-05-18', '08:00:00', '15:30:00', 1, 'Kegiatan', '2018-05-18 08:53:08', '2018-05-18 08:53:08', 17, 1),
(27, 17, 1, '52563', '2018-05-18', '10:00:00', '12:00:00', 2, 'laporan', '2018-05-18 09:04:50', '2018-05-18 09:04:50', 1, 1),
(28, 7, 1, '52563', '2018-05-14', '07:30:00', '09:00:00', 1, 'Kegiatan', '2018-05-18 09:49:13', NULL, NULL, 1),
(29, 24, 1, '52563', '2018-05-21', '08:00:00', '09:00:00', 1, 'Kegiatan', '2018-05-21 08:54:53', NULL, NULL, 1),
(30, 25, 1, '52563', '2018-05-21', '09:00:00', '12:00:00', 190, 'Dokumen', '2018-05-21 08:59:17', NULL, NULL, 1),
(31, 26, 1, '52563', '2018-05-21', '13:00:00', '15:00:00', 1, 'Kegiatan', '2018-05-21 13:39:48', NULL, NULL, 1),
(32, 27, 6, '52563', '2018-05-21', '08:00:00', '09:00:00', 1, 'Kegiatan', '2018-05-21 14:46:21', NULL, NULL, 1),
(33, 28, 6, '52563', '2018-05-21', '09:00:00', '12:00:00', 5, 'responden', '2018-05-21 14:46:53', NULL, NULL, 1),
(34, 29, 8, '52563', '2018-05-21', '08:00:00', '09:00:00', 1, 'Kegiatan', '2018-05-21 14:47:40', NULL, NULL, 1),
(35, 30, 8, '52563', '2018-05-21', '09:00:00', '12:00:00', 1, 'kegiatan', '2018-05-21 14:48:21', NULL, NULL, 1),
(36, 31, 21, '52551', '2018-05-21', '08:00:00', '09:00:00', 1, 'kegiatan', '2018-05-21 17:15:19', NULL, NULL, 1),
(37, 32, 27, '52563', '2018-05-22', '08:00:00', '09:01:00', 5, 'Responden', '2018-05-22 12:34:55', NULL, NULL, 1),
(38, 33, 27, '52563', '2018-04-02', '07:30:00', '08:00:00', 1, 'kegiatan', '2018-05-22 14:23:47', NULL, NULL, 1),
(39, 34, 27, '52563', '2018-05-21', '08:00:00', '09:00:00', 1, 'Kegiatan', '2018-05-22 15:48:15', NULL, NULL, 1),
(40, 7, 1, '52563', '2018-05-22', '08:00:00', '09:00:00', 1, 'kegiatan', '2018-05-23 08:10:53', NULL, NULL, 1),
(41, 8, 1, '52563', '2018-05-23', '08:00:00', '12:00:00', 190, 'Responden', '2018-05-23 08:13:16', '2018-05-23 08:13:29', 1, 1),
(42, 35, 27, '52563', '2018-05-23', '08:00:00', '10:00:00', 10, 'responden', '2018-05-23 10:12:08', NULL, NULL, 1),
(43, 7, 1, '52563', '2018-05-23', '12:30:00', '15:00:00', 1, 'kegiatan', '2018-05-23 10:13:12', NULL, NULL, 1),
(44, 8, 1, '52563', '2018-05-24', '08:00:00', '10:00:00', 190, 'responden', '2018-05-25 08:31:00', NULL, NULL, 1),
(45, 9, 1, '52563', '2018-05-28', '08:00:00', '08:30:00', 1, 'kegiatan', '2018-05-28 07:53:40', NULL, NULL, 1),
(46, 36, 1, '52563', '2018-05-30', '08:00:00', '15:00:00', 1, 'kegiatan', '2018-05-31 08:32:52', NULL, NULL, 1),
(47, 37, 123, '52563', '2018-05-31', '08:00:00', '09:00:00', 10, 'OPD', '2018-05-31 08:47:40', NULL, NULL, 1),
(48, 7, 1, '52563', '2018-05-31', '08:00:00', '10:00:00', 1, 'kegiatan', '2018-05-31 08:48:37', NULL, NULL, 1),
(49, 9, 1, '52563', '2018-06-04', '08:00:00', '08:30:00', 1, 'Kegiatan', '2018-06-04 07:58:52', NULL, NULL, 1),
(50, 26, 1, '52563', '2018-06-21', '07:30:00', '09:00:00', 1, 'Kegiatan', '2018-06-21 08:51:54', NULL, NULL, 1),
(51, 38, 14, '52560', '2018-06-21', '07:30:00', '09:00:00', 1, 'buku', '2018-06-21 14:11:16', NULL, NULL, 1),
(52, 39, 14, '52560', '2018-06-21', '09:00:00', '12:30:00', 1, 'kegiatan', '2018-06-21 14:11:50', NULL, NULL, 1),
(53, 40, 123, '52563', '2018-06-21', '07:30:00', '12:30:00', 1, 'kegiatan', '2018-06-21 14:12:58', NULL, NULL, 1),
(54, 41, 70, '52533', '2018-06-21', '07:30:00', '12:30:00', 1, 'kegiatan', '2018-06-21 14:48:20', NULL, NULL, 1),
(55, 42, 37, '52531', '2018-06-21', '07:30:00', '12:30:00', 1, 'kegiatan', '2018-06-21 14:49:49', NULL, NULL, 1),
(56, 43, 121, '52510', '2018-06-21', '07:30:00', '12:30:00', 1, 'Kegiatan', '2018-06-21 14:51:50', NULL, NULL, 1),
(57, 44, 1, '52563', '2018-06-21', '09:00:00', '12:30:00', 1, 'Kegiatan', '2018-06-21 14:55:51', NULL, NULL, 1),
(58, 45, 12, '52560', '2018-06-21', '07:30:00', '12:30:00', 1, 'kegiatan', '2018-06-21 15:09:51', NULL, NULL, 1),
(59, 4, 1, '52563', '2018-06-22', '07:30:00', '09:00:00', 1, 'kegiatan', '2018-06-22 08:06:27', NULL, NULL, 1),
(60, 46, 1, '52563', '2018-06-22', '09:00:00', '12:00:00', 1, 'kegiatan', '2018-06-22 08:07:05', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hari_libur`
--

CREATE TABLE `hari_libur` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `ket` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `tgl_add` datetime DEFAULT NULL,
  `add_oleh` int(8) DEFAULT NULL,
  `tgl_update` datetime DEFAULT NULL,
  `update_oleh` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hari_libur`
--

INSERT INTO `hari_libur` (`id`, `tanggal`, `ket`, `status`, `tgl_add`, `add_oleh`, `tgl_update`, `update_oleh`) VALUES
(1, '2018-01-01', 'Tahun Baru 2018', 1, NULL, NULL, '2018-05-17 08:24:32', 1),
(2, '2018-02-16', 'Tahun Baru Imlek 2569', 1, NULL, NULL, NULL, NULL),
(3, '2018-03-17', 'Hari Raya Nyepi', 1, NULL, NULL, NULL, NULL),
(4, '2018-03-30', 'Wafat Yesus Kristus', 1, NULL, NULL, NULL, NULL),
(5, '2018-05-01', 'Hari Buruh Internasional', 1, NULL, NULL, '2018-05-17 08:24:08', 1),
(6, '2018-05-10', 'Kenaikan Yesus Kristus', 1, NULL, NULL, '2018-05-17 08:23:47', 1),
(7, '2018-05-29', 'Hari Raya Waisak 2562', 1, NULL, NULL, '2018-05-17 08:23:28', 1),
(9, '2018-06-01', 'Hari Lahir Pancasila', 1, '2018-05-16 11:46:44', 1, '2018-05-17 08:24:25', 1),
(10, '2018-06-13', 'Cuti Bersama Hari Raya Idul Fitri 1439 H', 1, '2018-05-16 11:48:58', 1, '2018-05-17 08:31:19', 1),
(11, '2018-06-14', 'Cuti Bersama Hari Raya Idul Fitri', 1, '2018-05-16 11:49:17', 1, NULL, NULL),
(12, '2018-06-15', 'Hari Raya Idul Fitri 1439 H', 1, '2018-05-16 11:49:39', 1, '2018-05-17 08:20:44', 1),
(13, '2018-08-17', 'Proklamasi Kemerdekaan RI', 1, '2018-05-16 11:50:36', 1, '2018-05-16 12:12:28', 1),
(14, '2018-08-22', 'Hari Raya Idul Adha', 1, '2018-05-16 12:13:36', 1, '2018-05-16 12:13:55', 1),
(15, '2018-06-18', 'Cuti Bersama Hari Raya Idul Fitri 1439 H', 1, '2018-05-16 12:14:28', 1, '2018-05-17 08:23:15', 1),
(16, '2018-06-19', 'Cuti Bersama Hari Raya Idul Fitri', 1, '2018-05-16 12:14:54', 1, NULL, NULL),
(17, '2018-06-16', 'Hari Raya Idul Fitri 1439 H', 1, '2018-05-16 12:18:53', 1, '2018-05-17 08:21:01', 1),
(18, '2018-09-11', 'Tahun Baru Hijriyah', 1, '2018-05-16 12:21:18', 1, '2018-05-17 08:25:24', 1),
(19, '2018-11-20', 'Maulid Nabi Muhammad SAW', 1, '2018-05-17 08:32:37', 1, NULL, NULL),
(20, '2018-12-25', 'Hari Raya Natal 2018', 1, '2018-05-17 08:33:21', 1, '2018-05-18 08:32:25', 1),
(21, '2018-12-24', 'Cuti Bersama Hari Raya Natal', 1, '2018-05-17 08:33:39', 1, NULL, NULL),
(22, '2018-06-11', 'Cuti Bersama Hari Raya Idul Fitri', 1, '2018-06-21 07:25:44', 1, NULL, NULL),
(23, '2018-06-12', 'Cuti Bersama Hari Raya Idul Fitri', 1, '2018-06-21 07:25:57', 1, NULL, NULL),
(24, '2018-06-20', 'Cuti Bersama Hari Raya Idul Fitri', 1, '2018-06-21 07:26:53', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kode_tombol`
--

CREATE TABLE `kode_tombol` (
  `id` tinyint(1) NOT NULL,
  `judul` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kode_tombol`
--

INSERT INTO `kode_tombol` (`id`, `judul`) VALUES
(0, 'Masuk'),
(1, 'Pulang'),
(2, 'Keluar'),
(3, 'Kembali'),
(4, 'Lembur Masuk'),
(5, 'Lembur Pulang');

-- --------------------------------------------------------

--
-- Table structure for table `log_absen`
--

CREATE TABLE `log_absen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `absen_id` varchar(20) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `kode` tinyint(1) UNSIGNED DEFAULT NULL,
  `waktu_sync` datetime DEFAULT NULL,
  `flag` tinyint(1) UNSIGNED DEFAULT NULL,
  `ket` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_bulan`
--

CREATE TABLE `m_bulan` (
  `id` smallint(2) NOT NULL,
  `bln_ind` varchar(15) NOT NULL,
  `bln_eng` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_bulan`
--

INSERT INTO `m_bulan` (`id`, `bln_ind`, `bln_eng`) VALUES
(1, 'Januari', 'January'),
(2, 'Februari', 'February'),
(3, 'Maret', 'March'),
(4, 'April', 'April'),
(5, 'Mei', 'May'),
(6, 'Juni', 'June'),
(7, 'Juli', 'July'),
(8, 'Agustus', 'August'),
(9, 'September', 'September'),
(10, 'Oktober', 'October'),
(11, 'November', 'November'),
(12, 'Desember', 'December');

-- --------------------------------------------------------

--
-- Table structure for table `m_gol`
--

CREATE TABLE `m_gol` (
  `gol_kode` int(2) NOT NULL,
  `gol_nama` varchar(5) NOT NULL,
  `gol_jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_gol`
--

INSERT INTO `m_gol` (`gol_kode`, `gol_nama`, `gol_jabatan`) VALUES
(11, 'I/a', 'JURU MUDA'),
(12, 'I/b', 'JURU MUDA TINGKAT I'),
(13, 'I/c', 'JURU'),
(14, 'I/d', 'JURU TINGKAT I'),
(21, 'II/a', 'PENGATUR MUDA'),
(22, 'II/b', 'PENGATUR MUDA TINGKAT I'),
(23, 'II/c', 'PENGATUR'),
(24, 'II/d', 'PENGATUR TINGKAT I'),
(31, 'III/a', 'PENATA MUDA'),
(32, 'III/b', 'PENATA MUDA TINGKAT I'),
(33, 'III/c', 'PENATA'),
(34, 'III/d', 'PENATA TINGKAT I'),
(41, 'IV/a', 'PEMBINA'),
(42, 'IV/b', 'PEMBINA TINGKAT I'),
(43, 'IV/c', 'PEMBINA UTAMA MUDA'),
(44, 'IV/d', 'PEMBINA UTAMA MADYA'),
(45, 'IV/e', 'PEMBINA UTAMA');

-- --------------------------------------------------------

--
-- Table structure for table `m_kamus`
--

CREATE TABLE `m_kamus` (
  `id` bigint(16) UNSIGNED NOT NULL,
  `redaksi` varchar(255) NOT NULL,
  `unit_kode` varchar(5) NOT NULL,
  `user_id` int(8) UNSIGNED DEFAULT NULL,
  `tgl_add` datetime NOT NULL,
  `tgl_update` datetime DEFAULT NULL,
  `update_oleh` int(8) DEFAULT NULL,
  `flag` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_kamus`
--

INSERT INTO `m_kamus` (`id`, `redaksi`, `unit_kode`, `user_id`, `tgl_add`, `tgl_update`, `update_oleh`, `flag`) VALUES
(1, 'Editing Coding  SKD 2018', '52563', 1, '2018-05-02 15:16:54', '2018-05-17 13:51:47', 1, 1),
(2, 'Pengawasan  SKD 2018', '52563', 1, '2018-05-02 15:22:04', '2018-05-02 15:22:04', 1, 1),
(3, 'Pengawasan Editing Coding SKD 2018 dan Pemeriksaaan Pengumpulan Data SKD-P dan SKD-D 2018', '52563', 1, '2018-05-02 15:33:16', '2018-05-02 15:34:19', 1, 1),
(4, 'Olahraga senam SKJ', '52563', 1, '2018-05-04 17:23:25', '2018-05-04 17:23:25', 1, 1),
(5, 'Rapat Finalisasi data SE2016 UMK-UMB', '52563', 1, '2018-05-04 17:24:31', '2018-05-04 17:24:31', 1, 1),
(6, 'Press rilis angka inflasi', '52563', 1, '2018-05-04 17:25:13', '2018-05-04 17:25:13', 1, 1),
(7, 'Menyusun  Program Activity Daily Online BPS Provinsi NTB', '52563', 1, '2018-05-17 08:52:52', '2018-05-17 08:52:52', 1, 1),
(8, 'Pengawasan  Entri Data SKD-P dan SKD-D 2018', '52563', 1, '2018-05-17 09:16:31', '2018-05-17 09:16:31', 1, 1),
(9, 'Briefing pagi semua pegawai', '52563', 1, '2018-05-17 09:25:16', '2018-05-17 09:25:16', 1, 1),
(10, 'Rapat awal bulan Bidang', '52563', 1, '2018-05-17 09:38:11', '2018-05-17 09:38:11', 1, 1),
(11, 'Penyusunan Draft Publikasi  Perumahan Provinsi NTB 2017', '52521', 11, '2018-05-17 13:41:30', '2018-05-17 13:41:30', 11, 1),
(12, 'Rapat bidang bahas Podes 2018', '52521', 11, '2018-05-17 13:41:58', '2018-05-17 13:41:58', 11, 1),
(13, 'Briefing pagi semua pegawai', '52521', 11, '2018-05-17 13:42:29', '2018-05-17 13:42:29', 11, 1),
(14, 'Pemeriksaan Penyusunan Draft Publikasi  Perumahan Provinsi NTB 2017', '52521', 10, '2018-05-17 13:46:05', '2018-05-17 13:46:05', 10, 1),
(15, 'Rapat bidang bahas Podes 2018', '52521', 10, '2018-05-17 13:47:07', '2018-05-17 13:47:07', 10, 1),
(16, 'Briefing pagi semua pegawai', '52521', 10, '2018-05-17 13:48:33', '2018-05-17 13:48:33', 10, 1),
(17, 'Menyusun laporan yang diminta Inspektorat', '52563', 1, '2018-05-18 08:34:32', '2018-05-18 08:34:32', 1, 1),
(18, 'Yasinan bulan ramadhan', '52515', 16, '2018-05-18 08:36:15', '2018-05-18 08:36:15', 16, 1),
(19, 'Menyelesaikan laporan yang di minta inspektorat', '52515', 16, '2018-05-18 08:37:17', '2018-05-18 08:37:17', 16, 1),
(20, 'Menyelesaikan laporan yang di minta inspektorat', '52515', 17, '2018-05-18 08:37:55', '2018-05-18 08:37:55', 17, 1),
(21, 'Supervisi SUTAS2018 ke Lombok Utara', '52515', 17, '2018-05-18 08:53:08', '2018-05-18 08:53:08', 17, 1),
(22, 'Pengawasan  SKD-D dan SKD-P 2018', '52563', 1, '2018-05-18 09:47:07', '2018-05-18 09:47:07', 1, 1),
(23, 'testing kegiatan', '52563', 1, '2018-05-18 09:56:08', '2018-05-18 09:56:08', 1, 0),
(24, 'Upacara Bendera Hari Kebangkitan Bangsa', '52563', 1, '2018-05-21 08:54:53', NULL, NULL, 1),
(25, 'Pemeriksaan  Hasil Entri SKD-P dan SKD-D 2018', '52563', 1, '2018-05-21 08:59:17', NULL, NULL, 1),
(26, 'Penyusunan Aplikasi Aktivitas Online Pegawai', '52563', 1, '2018-05-21 13:39:48', NULL, NULL, 1),
(27, 'Upacara Bendera Hari Kebangkitan Bangsa', '52563', 6, '2018-05-21 14:46:21', NULL, NULL, 1),
(28, 'Pencacahan  data statistik sektoral dan metadata', '52563', 6, '2018-05-21 14:46:53', NULL, NULL, 1),
(29, 'Upacara Bendera Hari Kebangkitan Bangsa', '52563', 8, '2018-05-21 14:47:40', NULL, NULL, 1),
(30, 'Jaga perpustakaan', '52563', 8, '2018-05-21 14:48:21', NULL, NULL, 1),
(31, 'Upacara Bendera Hari Kebangkitan Bangsa', '52551', 21, '2018-05-21 17:15:19', NULL, NULL, 1),
(32, 'Pencacahan  data statistik sektoral dan metadata', '52563', 27, '2018-05-22 12:34:55', NULL, NULL, 1),
(33, 'Briefing pagi semua pegawai', '52563', 27, '2018-05-22 14:23:47', NULL, NULL, 1),
(34, 'Upacara Bendera Hari Kebangkitan Bangsa', '52563', 27, '2018-05-22 15:48:15', NULL, NULL, 1),
(35, 'Entri Data SKD-P dan SKD-D 2018', '52563', 27, '2018-05-23 10:12:08', NULL, NULL, 1),
(36, 'Libur Hari Raya Galungan', '52563', 1, '2018-05-31 08:32:52', NULL, NULL, 1),
(37, 'Entri Data NTB Dalam Angka 2017', '52563', 123, '2018-05-31 08:47:40', NULL, NULL, 1),
(38, 'Penyusunan Draft  Publikasi Katalog Publikasi BPS Provinsi NTB 2017', '52560', 14, '2018-06-21 14:11:16', NULL, NULL, 1),
(39, 'Halal bihalal BPS Provinsi NTB', '52560', 14, '2018-06-21 14:11:50', NULL, NULL, 1),
(40, 'Coding program entri VHTS', '52563', 123, '2018-06-21 14:12:58', NULL, NULL, 1),
(41, 'Halal bihalal BPS Provinsi NTB', '52533', 70, '2018-06-21 14:48:20', NULL, NULL, 1),
(42, 'Halal bihalal BPS Provinsi NTB', '52531', 37, '2018-06-21 14:49:49', NULL, NULL, 1),
(43, 'Halal bihalal BPS Provinsi NTB', '52510', 121, '2018-06-21 14:51:50', NULL, NULL, 1),
(44, 'Halal bihalal BPS Provinsi NTB', '52563', 1, '2018-06-21 14:55:51', NULL, NULL, 1),
(45, 'Halal bihalal BPS Provinsi NTB', '52560', 12, '2018-06-21 15:09:51', NULL, NULL, 1),
(46, 'Rapat finalisasi WBK-WBBM', '52563', 1, '2018-06-22 08:07:05', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_peg`
--

CREATE TABLE `m_peg` (
  `id` bigint(12) UNSIGNED NOT NULL,
  `user_id` int(8) UNSIGNED DEFAULT NULL,
  `nip_lama` varchar(9) DEFAULT NULL,
  `nip_baru` varchar(18) DEFAULT NULL,
  `jk` tinyint(1) UNSIGNED DEFAULT NULL,
  `pangkat` int(2) UNSIGNED DEFAULT NULL,
  `tgl_add` datetime DEFAULT NULL,
  `add_oleh` int(8) UNSIGNED DEFAULT NULL,
  `tgl_update` datetime DEFAULT NULL,
  `update_oleh` int(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pola_absen`
--

CREATE TABLE `pola_absen` (
  `id` int(5) UNSIGNED NOT NULL,
  `kode_pola` varchar(5) NOT NULL DEFAULT '0',
  `nama` varchar(100) NOT NULL DEFAULT '0',
  `hari` tinyint(1) NOT NULL DEFAULT '0',
  `jam_start` time NOT NULL DEFAULT '00:00:00',
  `jam_end` time NOT NULL DEFAULT '00:00:00',
  `flag` tinyint(1) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `redaksi`
--

CREATE TABLE `redaksi` (
  `id` int(11) NOT NULL,
  `redaksi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `redaksi`
--

INSERT INTO `redaksi` (`id`, `redaksi`) VALUES
(1, 'Pencacahan'),
(2, 'Pengawasan'),
(3, 'Pemeriksaan'),
(4, 'Entri Dokumen'),
(5, 'Editing Coding'),
(6, 'Validasi'),
(7, 'Penyusunan Draft'),
(8, 'Pembuatan Tabulasi'),
(9, 'Penyusunan Laporan Publikasi'),
(10, 'Pemasukan Dokumen'),
(11, 'Penyusunan Draft Publikasi'),
(12, 'Pencetakan Laporan/Publikasi'),
(15, 'Pelatihan'),
(16, 'Pelatihan Petugas'),
(17, 'Briefing Petugas'),
(18, 'Rekrutmen Petugas Lapangan'),
(19, 'Mengawasi'),
(20, 'Memonitoring'),
(21, 'Merumuskan'),
(22, 'Merumuskan  Perencanaan, Monitoring  dan Evaluasi'),
(23, 'Monitoring  dan Evaluasi'),
(24, 'Menyampaikan'),
(25, 'Menyusun'),
(26, 'Mengawasi dan Monitoring'),
(27, 'Melakukan Pengawasan');

-- --------------------------------------------------------

--
-- Table structure for table `unitkerja`
--

CREATE TABLE `unitkerja` (
  `id` int(8) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(254) NOT NULL,
  `parent` varchar(5) DEFAULT NULL,
  `jenis` int(1) NOT NULL,
  `tgl_add` datetime NOT NULL,
  `add_oleh` int(8) NOT NULL,
  `tgl_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_oleh` int(8) NOT NULL,
  `eselon` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unitkerja`
--

INSERT INTO `unitkerja` (`id`, `kode`, `nama`, `parent`, `jenis`, `tgl_add`, `add_oleh`, `tgl_update`, `update_oleh`, `eselon`) VALUES
(1, '52000', 'BPS Provinsi Nusa Tenggara Barat', NULL, 1, '2016-12-06 08:12:08', 1, '2016-12-06 00:12:08', 1, 2),
(2, '52510', 'Bagian Tata Usaha', '52000', 1, '2016-12-06 09:35:55', 1, '2016-12-06 08:35:55', 1, 3),
(3, '52511', 'Subbagian Bina Program', '52510', 1, '2016-12-10 13:28:49', 1, '2016-12-10 05:28:49', 1, 4),
(4, '52512', 'Subbagian Kepegawaian & Hukum', '52510', 1, '2016-12-10 13:33:23', 1, '2016-12-10 05:33:23', 1, 4),
(5, '52513', 'Subbagian Keuangan', '52510', 1, '2016-12-10 13:35:10', 1, '2016-12-10 05:35:10', 1, 4),
(6, '52514', 'Subbagian Umum', '52510', 1, '2016-12-10 13:35:54', 1, '2017-04-21 08:39:47', 1, 4),
(7, '52515', 'Subbagian Pengadaan Barang/Jasa', '52510', 1, '2016-12-10 13:40:09', 1, '2017-04-21 08:39:59', 1, 4),
(8, '52520', 'Bidang Statistik Sosial', '52000', 1, '2016-12-06 09:36:50', 1, '2016-12-10 05:39:26', 1, 3),
(9, '52521', 'Seksi Statistik Kependudukan', '52520', 1, '2016-12-10 13:43:19', 1, '2016-12-10 05:43:19', 1, 4),
(10, '52522', 'Seksi Statistik Ketahanan Sosial', '52520', 1, '2016-12-10 13:43:51', 1, '2016-12-10 05:43:51', 1, 4),
(11, '52523', 'Seksi Statistik Kesejahteraan Rakyat', '52520', 1, '2016-12-10 13:44:14', 1, '2016-12-10 05:44:14', 1, 4),
(12, '52530', 'Bidang Statistik Produksi', '52000', 1, '2016-12-06 09:37:57', 1, '2016-12-06 08:37:57', 1, 3),
(13, '52531', 'Seksi Statistik Pertanian', '52530', 1, '2016-12-10 18:52:16', 1, '2016-12-10 10:52:16', 1, 4),
(14, '52532', 'Seksi Statistik Industri', '52530', 1, '2016-12-10 18:52:50', 1, '2016-12-10 10:52:50', 1, 4),
(15, '52533', 'Seksi Statistik Pertambangan, Energi dan Konstruksi', '52530', 1, '2016-12-10 18:53:38', 1, '2016-12-10 10:53:38', 1, 4),
(16, '52540', 'Bidang Statistik Distribusi', '52000', 1, '2016-12-07 07:42:46', 1, '2016-12-07 06:42:46', 1, 3),
(17, '52541', 'Seksi Statistik Harga Konsumen dan Harga Perdagangan Besar', '52540', 1, '2016-12-10 18:54:22', 1, '2016-12-10 10:54:22', 1, 4),
(18, '52542', 'Seksi Statistik Keuangan Dan Harga Produsen', '52540', 1, '2016-12-10 18:54:47', 1, '2016-12-10 10:54:47', 1, 4),
(19, '52543', 'Seksi Statistik Niaga dan Jasa', '52540', 1, '2016-12-10 18:55:20', 1, '2016-12-10 10:55:20', 1, 4),
(20, '52550', 'Bidang Neraca Wilayah dan Analisis Statistik', '52000', 1, '2016-12-07 07:42:25', 1, '2016-12-07 06:42:25', 1, 3),
(21, '52551', 'Seksi Neraca Produksi', '52550', 1, '2016-12-10 18:58:18', 1, '2016-12-10 10:58:18', 1, 4),
(22, '52552', 'Seksi Neraca Konsumsi', '52550', 1, '2016-12-10 18:58:43', 1, '2016-12-10 10:58:43', 1, 4),
(23, '52553', 'Seksi Analisis Statistik Lintas Sektoral', '52550', 1, '2016-12-10 18:59:06', 1, '2016-12-10 10:59:06', 1, 4),
(24, '52560', 'Bidang Integrasi Pengolahan Dan Diseminasi Statistik', '52000', 1, '2016-12-06 09:34:35', 1, '2016-12-10 05:24:28', 1, 3),
(25, '52561', 'Seksi Integrasi Pengolahan Data', '52560', 1, '2016-12-06 09:23:00', 1, '2016-12-06 08:37:00', 1, 4),
(26, '52562', 'Seksi Jaringan dan Rujukan Statistik', '52560', 1, '2016-12-06 09:25:26', 1, '2016-12-06 08:37:10', 1, 4),
(27, '52563', 'Seksi Diseminasi dan Layanan Statistik', '52560', 1, '2016-12-06 09:36:17', 1, '2016-12-06 08:37:18', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `absen_id` varchar(20) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `unitkerja` varchar(5) NOT NULL,
  `nohp` varchar(30) DEFAULT NULL,
  `peg_status` tinyint(1) UNSIGNED DEFAULT NULL,
  `peg_jabatan` tinyint(1) NOT NULL,
  `tgl_add` datetime NOT NULL,
  `add_oleh` int(8) NOT NULL,
  `tgl_update` datetime DEFAULT NULL,
  `update_oleh` int(8) DEFAULT NULL,
  `ip_lastlogin` varchar(20) DEFAULT NULL,
  `tgl_lastlogin` datetime DEFAULT NULL,
  `level` tinyint(2) NOT NULL,
  `aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `absen_id`, `username`, `passwd`, `nama`, `email`, `unitkerja`, `nohp`, `peg_status`, `peg_jabatan`, `tgl_add`, `add_oleh`, `tgl_update`, `update_oleh`, `ip_lastlogin`, `tgl_lastlogin`, `level`, `aktif`) VALUES
(1, '17401', 'mika', 'c153f0a492b91e16adc06e38206b2ccb', 'I Putu Dyatmika', 'dyatmika@bps.go.id', '52563', '081237802900', 1, 1, '2018-04-30 15:28:13', 1, '2018-05-24 14:32:22', 1, '10.52.6.31', '2018-06-25 07:17:20', 3, 1),
(7, '12530', 'endang', '715e8efadb0019bf7e885934fef9460d', 'Endang Tri Wahyuningsih', 'endang_t@bps.go.id', '52000', NULL, 1, 1, '2016-12-07 16:45:36', 1, '2016-12-13 15:54:44', 1, '10.52.6.31', '2018-06-21 15:42:49', 1, 1),
(10, '55838', 'meta', '4a2f6ca06815700a4f806f7b6dbdc317', 'Meta Indriyana', 'meta@bps.go.id', '52531', NULL, 1, 2, '2016-12-10 13:44:58', 1, '2018-06-21 14:40:11', 1, '110.136.88.228', '2018-03-29 15:24:52', 1, 1),
(12, '15309', 'agus', '9ae32e09273b3f572c0bd4a88e21e2fd', 'Agus Sudibyo', 'agus_sudibyo@bps.go.id', '52560', NULL, 1, 1, '2016-12-13 15:48:38', 1, '2018-03-12 10:59:32', 1, '10.52.6.31', '2018-06-21 15:37:09', 1, 1),
(13, '55178', 'lina', 'e09bd07477bf7953be894bef8074623c', 'Linna Winarni', 'lina@bps.go.id', '52510', NULL, 1, 2, '2016-12-14 14:53:47', 1, '2017-01-29 09:14:16', 1, '10.52.6.31', '2017-01-24 14:13:02', 1, 1),
(14, '54408', 'casslirais', '5f8e67112838f70caa9df0975a301ebb', 'Casslirais Surawan', 'casslirais@bps.go.id', '52562', NULL, 1, 2, '2016-12-16 08:57:47', 1, '2018-06-21 14:39:05', 1, '10.52.6.31', '2018-06-21 14:10:28', 1, 1),
(17, '53294', 'isna', '238b2b7c02d936921098267a025774c8', 'Isna Zuriatina', 'isna@bps.go.id', '52522', NULL, 1, 2, '2016-12-16 16:58:08', 1, '2018-06-21 14:39:55', 1, '110.136.88.37', '2018-04-26 08:02:07', 1, 1),
(22, '15534', 'lukman', 'db2bfdc3cfcca21b07f9bfa9881e9f1e', 'Lukman', 'lukman@bps.go.id', '52561', NULL, 1, 1, '2017-01-26 21:19:02', 1, '2018-04-17 12:39:28', 1, '180.249.109.103', '2018-04-16 23:08:14', 1, 1),
(24, '16053', 'yudis', '5f8e67112838f70caa9df0975a301ebb', 'I Putu Yudhistira', 'putu.yudhistira@bps.go.id', '52563', NULL, 1, 2, '2017-01-29 09:03:02', 1, '2018-06-21 14:39:40', 1, '10.52.6.31', '2018-05-24 15:23:37', 1, 1),
(30, '16544', 'wini', '5107e325c0924177c23fd39fc25bb9cc', 'Wini Widiastuti', 'winiwidiastuti@bps.go.id', '52543', NULL, 1, 2, '2017-01-29 09:15:07', 1, '2018-06-21 14:40:24', 1, '180.249.109.25', '2018-01-24 10:03:07', 1, 1),
(31, '54218', 'omang', '164eafb8d97db9db7b80b2f991829b35', 'Ni Nyoman Ratna Puspitasari', 'nyomanratna@bps.go.id', '52552', NULL, 1, 2, '2017-02-22 07:43:23', 1, '2018-06-21 14:39:23', 1, '180.250.172.124', '2018-04-17 14:06:21', 1, 1),
(32, '13829', 'tri', '2e6b8924e4a4bb3bd7eebee7a3fb1831', 'Tri Harjanto', 'harjan@bps.go.id', '52543', NULL, 1, 1, '2017-02-23 10:14:47', 1, '2018-06-21 14:38:08', 1, '125.167.149.109', '2017-03-31 16:09:59', 1, 1),
(33, '50125', 'indra', 'ed75d36294e5eeb9e134a872556b0c30', 'Indra Sasmita Utama', 'indrasasmita@bps.go.id', '52515', NULL, 1, 1, '2017-02-23 10:15:52', 1, '2018-06-21 14:14:27', 1, '110.136.88.224', '2018-03-07 10:35:33', 1, 1),
(34, '19255', 'wika', '9c6ec2f1cec958d3ab163b995978e74f', 'Wikayatu Diny', 'wikayatu@bps.go.id', '52710', NULL, 0, 2, '2017-02-24 10:27:47', 1, '2018-01-24 10:20:24', 1, '180.249.108.93', '2018-02-01 12:53:48', 1, 0),
(36, '55170', 'gunawan', 'a5ef9d92faec164971e00f018c0b004c', 'Achmad Gunawan', 'achmad.gunawan@bps.go.id', '52515', NULL, 1, 2, '2017-03-10 16:39:38', 1, '2018-06-21 14:14:40', 1, '10.52.1.51', '2017-03-10 16:59:37', 1, 1),
(37, '50195', 'pepti', '5f8e67112838f70caa9df0975a301ebb', 'Pepti Maya Puspita', 'pepti@bps.go.id', '52531', NULL, 1, 1, '2017-03-22 15:40:54', 1, '2018-06-21 14:48:51', 1, '10.52.6.31', '2018-06-21 14:48:57', 1, 1),
(47, '16137', 'zam', 'af86ac1129b1c68cee5c200259d8e11d', 'Akhmad Zammiluny', 'zammiluny@bps.go.id', '52511', NULL, 1, 1, '2017-08-11 08:05:35', 1, '2018-06-21 14:14:14', 1, '110.136.88.74', '2018-04-09 16:28:10', 1, 1),
(48, '16182', 'arrief', 'bb934eef632423fedfc1949fc44f3301', 'Arief Chandra', 'arrief@bps.go.id', '52520', NULL, 1, 1, '2017-09-04 08:01:24', 1, '2017-09-04 08:01:24', 1, '', '0000-00-00 00:00:00', 1, 1),
(49, '12866', 'syambon', '26375aed017dfa65d2d30dc867f4b5bd', 'Syamsudin', 'syambon@bps.go.id', '52020', NULL, 0, 1, '2017-09-06 10:25:38', 1, '2018-03-01 15:30:52', 1, '180.249.156.121', '2017-09-14 14:24:49', 1, 0),
(50, '56359', 'medhia', 'd6607a8908b21e00e7af0aa334c0d75f', 'Medhia Ratna Puja Hapsari', 'medhia@bps.go.id', '52511', NULL, 1, 2, '2017-09-06 10:26:29', 1, '2018-06-21 14:14:51', 1, '', '0000-00-00 00:00:00', 1, 1),
(54, '52171', 'diarta', 'e1e71e75b01383976c13eed7d799dfe4', 'Lalu Sudiarta Utama', 'lalusudiartha@bps.go.id', '52512', NULL, 1, 2, '2018-01-24 10:46:49', 1, '2018-01-24 10:46:49', 1, '36.83.189.180', '2018-02-12 08:36:24', 1, 1),
(56, '13012', 'isa', 'ff5deb990052688f37d0b38aab384126', 'Isa Anshory', 'isa@bps.go.id', '52710', NULL, 0, 1, '2018-02-01 12:43:04', 1, '2018-03-01 15:28:57', 1, '36.75.227.195', '2018-04-30 07:43:38', 1, 0),
(57, '10358', 'siti.fatimah', '5f8e67112838f70caa9df0975a301ebb', 'Siti Fatimah', 'siti.fatimah@bps.go.id', '52514', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-06-21 08:35:21', 1, '', '0000-00-00 00:00:00', 1, 1),
(58, '11047', '11047', '5f8e67112838f70caa9df0975a301ebb', 'Sri Suhartini', '', '52521', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-03-06 15:35:20', 1, '', '0000-00-00 00:00:00', 1, 1),
(59, '11317', '11317', '5f8e67112838f70caa9df0975a301ebb', 'Islam Sari Bakti', '', '52542', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-03-07 15:10:23', 1, '', '0000-00-00 00:00:00', 1, 1),
(60, '11320', '11320', '5f8e67112838f70caa9df0975a301ebb', 'Sri Sulastri', '', '52541', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-03-07 15:11:04', 1, '', '0000-00-00 00:00:00', 1, 1),
(61, '12203', '12203', '5f8e67112838f70caa9df0975a301ebb', 'I Wayan Wirjan', '', '52514', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-03-06 15:31:33', 1, '', '0000-00-00 00:00:00', 1, 1),
(62, '12458', 'didiks', '5f8e67112838f70caa9df0975a301ebb', 'Didik Sutarmono', 'didiks@bps.go.id', '52542', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-06-21 14:43:05', 1, '', '0000-00-00 00:00:00', 1, 1),
(63, '12575', '12575', '5f8e67112838f70caa9df0975a301ebb', 'Nurlailah', '', '52532', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-01-22 14:46:37', 1, '', '0000-00-00 00:00:00', 1, 1),
(64, '12843', '12843', '5f8e67112838f70caa9df0975a301ebb', 'Anas', '', '52530', NULL, 0, 1, '2018-01-01 00:00:00', 1, '2018-03-01 07:52:35', 1, '', '0000-00-00 00:00:00', 1, 0),
(65, '12865', '12865', '5f8e67112838f70caa9df0975a301ebb', 'Raehatul Jannah', '', '52532', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-02-07 14:20:45', 1, '', '0000-00-00 00:00:00', 1, 1),
(66, '13358', '13358', '5f8e67112838f70caa9df0975a301ebb', 'Roedi Joelianto', '', '52551', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-02-08 12:19:40', 1, '', '0000-00-00 00:00:00', 1, 1),
(67, '13472', '13472', '5f8e67112838f70caa9df0975a301ebb', 'Baiq Dewi Agustriawati', '', '52513', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-02-15 08:25:54', 1, '', '0000-00-00 00:00:00', 1, 1),
(68, '13526', '13526', '5f8e67112838f70caa9df0975a301ebb', 'Muhamad Rifai', '', '52552', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-01-19 15:51:53', 1, '', '0000-00-00 00:00:00', 1, 1),
(69, '14027', '14027', '5f8e67112838f70caa9df0975a301ebb', 'Andi Guslan', '', '52512', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-02-15 08:21:40', 1, '', '0000-00-00 00:00:00', 1, 1),
(70, '14275', 'saan', '5f8e67112838f70caa9df0975a301ebb', 'Saan', 'saan@bps.go.id', '52533', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-06-21 14:44:45', 1, '10.52.6.31', '2018-06-21 14:45:01', 1, 1),
(71, '14405', '14405', '5f8e67112838f70caa9df0975a301ebb', 'Baiq Kartini', '', '52514', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-03-06 15:30:13', 1, '', '0000-00-00 00:00:00', 1, 1),
(72, '15068', '15068', '5f8e67112838f70caa9df0975a301ebb', 'Endah Sri Wardanti', '', '52541', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-02-07 14:20:00', 1, '', '0000-00-00 00:00:00', 1, 1),
(73, '16404', '16404', '5f8e67112838f70caa9df0975a301ebb', 'Aris Wahyudi', '', '52513', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-02-15 08:26:29', 1, '', '0000-00-00 00:00:00', 1, 1),
(74, '16543', '16543', '5f8e67112838f70caa9df0975a301ebb', 'Yassinta Ben Katarti', '', '52553', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-01-17 16:23:09', 1, '', '0000-00-00 00:00:00', 1, 1),
(75, '16866', 'asukri', '5f8e67112838f70caa9df0975a301ebb', 'Ahmad Sukri', 'asukri@bps.go.id', '52562', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-06-21 14:44:18', 1, '', '0000-00-00 00:00:00', 1, 1),
(76, '17056', '17056', '5f8e67112838f70caa9df0975a301ebb', 'M. Ikhsany Rusyda', '', '52523', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-03-06 15:37:23', 1, '', '0000-00-00 00:00:00', 1, 1),
(77, '17058', '17058', '5f8e67112838f70caa9df0975a301ebb', 'Puaidi', '', '52513', NULL, 0, 2, '2018-01-01 00:00:00', 1, '2018-01-24 16:23:50', 1, '', '0000-00-00 00:00:00', 1, 0),
(78, '17065', '17065', '5f8e67112838f70caa9df0975a301ebb', 'Hertina Yusnissa', '', '52521', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-03-06 15:34:45', 1, '', '0000-00-00 00:00:00', 1, 1),
(79, '17228', '17228', '5f8e67112838f70caa9df0975a301ebb', 'Rosita Fahmi', '', '52551', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-01-19 15:53:50', 1, '', '0000-00-00 00:00:00', 1, 1),
(80, '17402', 'indradewi', '5f8e67112838f70caa9df0975a301ebb', 'Gusti Ketut Indradewi', 'indradewi@bps.go.id', '52521', '081237105869', 1, 4, '2018-01-01 00:00:00', 1, '2018-06-21 14:43:39', 1, '', '0000-00-00 00:00:00', 1, 0),
(81, '18186', '18186', '5f8e67112838f70caa9df0975a301ebb', 'Siti Maratus Saadah', '', '52513', NULL, 0, 4, '2018-01-01 00:00:00', 1, '2018-01-31 09:42:20', 1, '', '0000-00-00 00:00:00', 1, 0),
(82, '18187', '18187', '5f8e67112838f70caa9df0975a301ebb', 'Bq. Yeni Sulistiana', '', '52512', NULL, 0, 4, '2018-01-01 00:00:00', 1, '2018-01-19 15:54:07', 1, '', '0000-00-00 00:00:00', 1, 0),
(83, '18188', '18188', '5f8e67112838f70caa9df0975a301ebb', 'Ria Kusumawati', '', '52542', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-03-07 15:12:16', 1, '', '0000-00-00 00:00:00', 1, 1),
(84, '19265', '19265', '5f8e67112838f70caa9df0975a301ebb', 'Amy Wardian Pratama', '', '52522', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-03-06 15:35:51', 1, '', '0000-00-00 00:00:00', 1, 1),
(85, '19393', '19393', '5f8e67112838f70caa9df0975a301ebb', 'Rosidi', '', '52514', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-03-06 15:32:27', 1, '', '0000-00-00 00:00:00', 1, 1),
(86, '19476', '19476', '5f8e67112838f70caa9df0975a301ebb', 'Muslimin', '', '52514', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-02-15 08:32:32', 1, '', '0000-00-00 00:00:00', 1, 1),
(87, '19680', '19680', '5f8e67112838f70caa9df0975a301ebb', 'Muhamad Nursan', '', '52513', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-02-15 08:31:38', 1, '', '0000-00-00 00:00:00', 1, 1),
(88, '20473', '20473', '5f8e67112838f70caa9df0975a301ebb', 'Sujiman', '', '52514', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-03-06 15:33:09', 1, '', '0000-00-00 00:00:00', 1, 1),
(89, '50210', '50210', '5f8e67112838f70caa9df0975a301ebb', 'Ratna Asih Wulandari', '', '52511', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-02-14 14:34:58', 1, '', '0000-00-00 00:00:00', 1, 1),
(90, '525200001', '525200001', '5f8e67112838f70caa9df0975a301ebb', 'Nasibun', '', '52514', NULL, 1, 3, '2018-01-01 00:00:00', 1, '2018-01-22 12:02:50', 1, '', '0000-00-00 00:00:00', 1, 1),
(91, '525200002', '525200002', '5f8e67112838f70caa9df0975a301ebb', 'Junnaidi Effendi', '', '52514', NULL, 1, 3, '2018-01-01 00:00:00', 1, '2018-01-22 11:10:57', 1, '', '0000-00-00 00:00:00', 1, 1),
(92, '525200003', '525200003', '5f8e67112838f70caa9df0975a301ebb', 'Marhamah', '', '52514', NULL, 1, 3, '2018-01-01 00:00:00', 1, '2018-01-22 14:39:46', 1, '', '0000-00-00 00:00:00', 1, 1),
(93, '525200004', '525200004', '5f8e67112838f70caa9df0975a301ebb', 'Muliasih', '', '52514', NULL, 1, 3, '2018-01-01 00:00:00', 1, '2018-01-24 07:51:34', 1, '', '0000-00-00 00:00:00', 1, 1),
(94, '525200005', '525200005', '5f8e67112838f70caa9df0975a301ebb', 'Heri Suria Wirawan', '', '52514', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-02-15 08:33:00', 1, '', '0000-00-00 00:00:00', 1, 1),
(95, '525200006', '525200006', '5f8e67112838f70caa9df0975a301ebb', 'Isfimarnawati', '', '52514', NULL, 1, 3, '2018-01-01 00:00:00', 1, '2018-02-08 12:19:53', 1, '', '0000-00-00 00:00:00', 1, 1),
(96, '525200007', '525200007', '5f8e67112838f70caa9df0975a301ebb', 'I Made Suparta Yasa', '', '52514', NULL, 1, 3, '2018-01-01 00:00:00', 1, '2018-01-22 11:10:43', 1, '', '0000-00-00 00:00:00', 1, 1),
(97, '525200008', '525200008', '5f8e67112838f70caa9df0975a301ebb', 'Musawirin', '', '52514', NULL, 1, 3, '2018-01-01 00:00:00', 1, '2018-01-24 07:51:47', 1, '', '0000-00-00 00:00:00', 1, 1),
(98, '525200009', '525200009', '5f8e67112838f70caa9df0975a301ebb', 'Salamudin', '', '52514', NULL, 1, 3, '2018-01-01 00:00:00', 1, '2018-01-24 07:51:58', 1, '', '0000-00-00 00:00:00', 1, 1),
(99, '525200010', '525200010', '5f8e67112838f70caa9df0975a301ebb', 'Lalu Andre Lukito', '', '52514', NULL, 1, 3, '2018-01-01 00:00:00', 1, '2018-01-22 16:24:09', 1, '', '0000-00-00 00:00:00', 1, 1),
(100, '525200011', '525200011', '5f8e67112838f70caa9df0975a301ebb', 'Danuru Samsi', '', '52514', NULL, 1, 3, '2018-01-01 00:00:00', 1, '2018-01-22 14:39:13', 1, '', '0000-00-00 00:00:00', 1, 1),
(101, '52999999999', '52999999999', '5f8e67112838f70caa9df0975a301ebb', 'Ahmad Sukri', '', '52562', NULL, 0, 1, '2018-01-01 00:00:00', 1, '2018-01-31 09:39:27', 1, '', '0000-00-00 00:00:00', 1, 0),
(102, '53721', '53721', '5f8e67112838f70caa9df0975a301ebb', 'Arintia Dewi Heryyanti', '', '52513', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-02-15 08:32:08', 1, '', '0000-00-00 00:00:00', 1, 1),
(103, '54209', '54209', '5f8e67112838f70caa9df0975a301ebb', 'Anik pratiwi', '', '52531', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-01-22 14:44:51', 1, '', '0000-00-00 00:00:00', 1, 1),
(104, '54414', '54414', '5f8e67112838f70caa9df0975a301ebb', 'Murniyati', '', '52531', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-02-01 07:59:43', 1, '', '0000-00-00 00:00:00', 1, 1),
(106, '55846', '55846', '5f8e67112838f70caa9df0975a301ebb', 'Muhammad Fathi', '', '52561', NULL, 0, 4, '2018-01-01 00:00:00', 1, '2018-01-30 16:46:48', 1, '', '0000-00-00 00:00:00', 1, 0),
(107, '8443', 'nikadek.adi', '5f8e67112838f70caa9df0975a301ebb', 'Ni Kadek Adi Madri', 'nikadek.adi@bps.go.id', '52530', NULL, 1, 1, '2018-01-01 00:00:00', 1, '2018-06-21 08:41:08', 1, '', '0000-00-00 00:00:00', 1, 1),
(108, '9275', 'bedah', '5f8e67112838f70caa9df0975a301ebb', 'Subaedah', 'subaedah@bps.go.id', '52563', '0817361227', 1, 2, '2018-01-01 00:00:00', 1, '2018-05-24 15:38:22', 108, '10.52.6.31', '2018-05-24 15:30:19', 1, 1),
(109, '9321', '9321', '5f8e67112838f70caa9df0975a301ebb', 'Haryani Sri Wahyuni', '', '52533', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-01-22 14:47:06', 1, '', '0000-00-00 00:00:00', 1, 1),
(110, '9393', '9393', '5f8e67112838f70caa9df0975a301ebb', 'Baiq Eny Sukriani', '', '52522', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-03-06 15:36:58', 1, '', '0000-00-00 00:00:00', 1, 1),
(111, '9395', '9395', '5f8e67112838f70caa9df0975a301ebb', 'Ida Ayu Made Sutendri', '', '52513', NULL, 0, 2, '2018-01-01 00:00:00', 1, '2018-01-24 16:24:44', 1, '', '0000-00-00 00:00:00', 1, 0),
(112, '9601', '9601', '5f8e67112838f70caa9df0975a301ebb', 'Tri Kadaryanti', '', '52563', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-01-19 16:06:23', 1, '', '0000-00-00 00:00:00', 1, 1),
(113, '5256543', '5256543', '5f8e67112838f70caa9df0975a301ebb', 'Pande Gde Dony Gumilar', '', '52513', NULL, 1, 2, '2018-01-01 00:00:00', 1, '2018-02-15 08:27:53', 1, '', '0000-00-00 00:00:00', 1, 1),
(114, '57173', '57173', '5f8e67112838f70caa9df0975a301ebb', 'Nurul Islamy', '', '52541', NULL, 1, 2, '2018-01-22 14:42:25', 1, '2018-01-22 14:43:48', 1, '', '0000-00-00 00:00:00', 1, 1),
(115, '16061', '16061', '5f8e67112838f70caa9df0975a301ebb', 'Ike Rahayu Sri', '', '52533', NULL, 1, 2, '2018-01-22 14:49:39', 1, '0000-00-00 00:00:00', 1, '', '0000-00-00 00:00:00', 1, 1),
(116, '50165', 'zainuri', '5f8e67112838f70caa9df0975a301ebb', 'Muh. Zainuri', 'zainuri@bps.go.id', '52551', NULL, 1, 2, '2018-01-22 14:55:03', 1, '2018-06-21 08:43:34', 1, '', '0000-00-00 00:00:00', 1, 1),
(117, '50272', '50272', '5f8e67112838f70caa9df0975a301ebb', 'Yati Daryati Nurmalasari', '', '52523', NULL, 1, 2, '2018-01-22 14:55:42', 1, '2018-03-06 15:37:57', 1, '', '0000-00-00 00:00:00', 1, 1),
(118, '57724', '57724', '5f8e67112838f70caa9df0975a301ebb', 'Anisa Suciningtyas Damayanti', '', '52553', NULL, 1, 2, '2018-01-29 08:22:14', 1, '0000-00-00 00:00:00', 1, '', '0000-00-00 00:00:00', 1, 1),
(119, '16217', '16217', '5f8e67112838f70caa9df0975a301ebb', 'Baiq Kurniawati', '', '52511', NULL, 1, 2, '2018-02-12 11:10:16', 1, '2018-02-14 14:35:27', 1, '', '0000-00-00 00:00:00', 1, 1),
(120, '13098', 'putradi', '5f8e67112838f70caa9df0975a301ebb', 'Lalu Putradi', 'putradi@bps.go.id', '52540', NULL, 1, 1, '2018-03-01 07:04:51', 1, '2018-06-21 08:40:32', 1, '', '0000-00-00 00:00:00', 1, 1),
(121, '13474', 'lalu.supratna', '5f8e67112838f70caa9df0975a301ebb', 'Lalu Supratna', 'lalu.supratna@bps.go.id', '52510', NULL, 1, 1, '2018-03-01 07:49:11', 1, '2018-06-21 08:39:52', 1, '10.52.6.31', '2018-06-21 14:51:23', 1, 1),
(122, '13471', 'gustilanangp', '5f8e67112838f70caa9df0975a301ebb', 'I Gusti Lanang Putra', 'gustilanangp@bps.go.id', '52550', NULL, 1, 1, '2018-03-05 08:43:14', 1, '2018-06-21 08:38:58', 1, '', '0000-00-00 00:00:00', 1, 1),
(123, '57235', 'yudi', '5f8e67112838f70caa9df0975a301ebb', 'Wahyudi Septiawan', 'wahyudi.septiawan@bps.go.id', '52563', '082340776791', 1, 2, '2018-05-24 15:43:45', 1, '2018-05-24 15:44:53', 123, '10.52.6.31', '2018-06-21 14:12:15', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m_id` (`m_id`),
  ADD KEY `update_oleh` (`update_oleh`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hari_libur`
--
ALTER TABLE `hari_libur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kode_tombol`
--
ALTER TABLE `kode_tombol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_absen`
--
ALTER TABLE `log_absen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_bulan`
--
ALTER TABLE `m_bulan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_gol`
--
ALTER TABLE `m_gol`
  ADD PRIMARY KEY (`gol_kode`);

--
-- Indexes for table `m_kamus`
--
ALTER TABLE `m_kamus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `m_peg`
--
ALTER TABLE `m_peg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pangkat` (`pangkat`);

--
-- Indexes for table `pola_absen`
--
ALTER TABLE `pola_absen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redaksi`
--
ALTER TABLE `redaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unitkerja`
--
ALTER TABLE `unitkerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktivitas`
--
ALTER TABLE `aktivitas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `hari_libur`
--
ALTER TABLE `hari_libur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `log_absen`
--
ALTER TABLE `log_absen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_bulan`
--
ALTER TABLE `m_bulan`
  MODIFY `id` smallint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `m_kamus`
--
ALTER TABLE `m_kamus`
  MODIFY `id` bigint(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `m_peg`
--
ALTER TABLE `m_peg`
  MODIFY `id` bigint(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pola_absen`
--
ALTER TABLE `pola_absen`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redaksi`
--
ALTER TABLE `redaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `unitkerja`
--
ALTER TABLE `unitkerja`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
