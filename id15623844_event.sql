-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 20 Bulan Mei 2021 pada 03.32
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id15623844_event`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `event` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `visible` int(1) DEFAULT 0,
  `input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id`, `event`, `description`, `date`, `time`, `visible`, `input`) VALUES
(1, 'Social Media Management', 'Tes', '2019-09-14', '10:43:00', 0, '2020-12-10 05:13:12'),
(15, 'Photoshop', 'Editing dengan photoshop', '2019-10-26', '13:00:00', 0, '2019-12-12 07:36:21'),
(17, 'Pertemuan rutin', 'Pertemuan rutin bicara tentang uang kas', '2019-09-28', '10:00:00', 0, '2020-12-18 01:57:47'),
(18, 'MongoDB', 'mongodb workshop', '2019-10-26', '09:00:00', 0, '2020-12-10 05:12:49'),
(20, 'ORACLE', '', '2019-11-30', '09:00:00', 0, '2019-12-12 07:36:58'),
(30, 'PHP untuk pemula', '', '2019-12-14', '09:00:00', 0, '2019-12-31 09:36:16'),
(31, 'Android Clinic', 'Pengen tau bagaimana caranya membuat aplikasi di AndroidSiapa sih yang ga kenal android? pemprograman yang diusung oleh Google ini makin populer dan kamu perlu tau dasar bahasa pemprogramannya.Syarat :1. membawa laptop minimal memory 8GB Mac/Windows atau 4GB bagi pengguna Linux yang sudah diinstall Android Studio dan SDK-nya (silahkan Download terlebih dahulu dan pastikan tak ada kendala)2. Membawa handphone android dan kabel data, kabel datanya yang bagus ya, jangan yang rusak atau kendor.Waktu pelaksanaan :Lantai 3. Sabtu 18 januari 2019 jam 08.00 - 11.00 (telat, artinya tertinggal materi)Biaya : donasi, bayar seikhlasnya.PERHATIANKhusus bagi yang PASTI AKAN HADIR, bukan untuk yang iseng-iseng daftar.', '2020-01-18', '08:00:00', 0, '2020-12-10 04:15:58'),
(33, 'Kegiatan Rutin Kamis 17-12-2020', 'PHP', '2020-12-17', '14:00:00', 0, '2021-01-09 12:15:03'),
(34, 'Kegiatan Rutin Kamis 07-01-2021', 'PHP Form', '2021-01-07', '13:30:00', 0, '2021-01-09 12:15:25'),
(35, 'Dasar Pengenalan Phyton', 'phyton', '2021-01-09', '13:00:00', 0, '2021-01-25 02:09:51'),
(36, 'Office 365', 'kelas online Office 365 bekerjasama dengan kampus institut digital bisnis Indonesia', '2021-01-14', '13:00:00', 0, '2021-01-25 02:09:45'),
(37, 'Pertemuan Rutin Kamis 21 01 2021', '', '2021-01-21', '13:00:00', 0, '2021-01-25 02:09:35'),
(38, 'HTML dan Bootstrap', '', '2021-01-25', '09:00:00', 0, '2021-01-28 07:03:11'),
(39, 'pertemuan Rutin Kamis 28 01 2021', '', '2021-01-28', '13:00:00', 0, '2021-02-06 06:13:12'),
(40, 'Kelas online Sabtu', '', '2021-02-06', '13:00:00', 0, '2021-02-06 06:12:57'),
(41, 'Kelas online Sabtu 06 02 2021', '', '2021-02-06', '13:00:00', 0, '2021-02-18 02:31:21'),
(42, 'Kegiatan Mingguan PHP (OOP)', '', '2021-02-11', '01:00:00', 0, '2021-02-18 02:31:07'),
(43, 'Kegiatan Rutin PHP 18/2', '', '2021-02-18', '13:00:00', 0, '2021-03-01 01:57:54'),
(44, 'Belajar GitHub Bersama LCC', '', '2021-03-01', '09:00:00', 0, '2021-03-04 03:18:14'),
(45, 'Kegiatan Rutin PHP 4 Maret 2021', '', '2021-03-04', '13:00:00', 0, '2021-04-09 05:54:10'),
(46, 'Kelas Online Laravel Bag. 1', '', '2021-04-09', '14:00:00', 1, '2021-04-09 05:53:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `active` varchar(10) NOT NULL,
  `attend` varchar(10) DEFAULT NULL,
  `input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `id_event`, `id_peserta`, `active`, `attend`, `input`) VALUES
(16, 1, 24, '1', NULL, '2019-09-14 04:49:55'),
(17, 1, 25, '1', NULL, '2019-09-14 06:15:04'),
(19, 1, 27, '1', NULL, '2019-09-14 06:18:05'),
(22, 1, 30, '1', NULL, '2019-09-14 06:22:30'),
(23, 1, 31, '1', NULL, '2019-09-14 06:23:57'),
(25, 1, 33, '1', NULL, '2019-09-14 06:26:41'),
(26, 1, 34, '1', NULL, '2019-09-14 06:27:45'),
(28, 1, 36, '1', NULL, '2019-09-14 06:34:34'),
(29, 1, 37, '1', NULL, '2019-09-14 06:38:06'),
(30, 1, 38, '1', NULL, '2019-09-14 06:39:00'),
(31, 1, 39, '1', NULL, '2019-09-16 03:53:17'),
(33, 1, 49, '1', NULL, '2019-09-18 11:31:00'),
(34, 1, 51, '1', NULL, '2019-09-28 03:30:59'),
(35, 1, 52, '1', NULL, '2019-09-28 03:33:44'),
(36, 1, 53, '1', NULL, '2019-09-28 03:36:10'),
(37, 1, 54, '1', NULL, '2019-09-28 03:37:59'),
(38, 1, 55, '1', NULL, '2019-09-28 03:40:18'),
(39, 1, 56, '1', NULL, '2019-09-28 03:42:03'),
(40, 1, 57, '1', NULL, '2019-09-28 03:43:11'),
(41, 1, 58, '1', NULL, '2019-09-28 03:44:08'),
(42, 1, 59, '1', NULL, '2019-09-28 03:45:12'),
(43, 1, 60, '1', NULL, '2019-09-28 03:46:50'),
(44, 1, 61, '1', NULL, '2019-09-28 03:48:27'),
(45, 1, 62, '1', NULL, '2019-09-28 03:50:42'),
(46, 1, 37, '1', NULL, '2019-09-28 03:51:22'),
(47, 1, 63, '1', NULL, '2019-09-28 03:52:35'),
(48, 1, 64, '1', NULL, '2019-09-28 03:53:51'),
(49, 1, 65, '1', NULL, '2019-09-28 03:55:39'),
(50, 1, 66, '1', NULL, '2019-09-28 03:57:09'),
(51, 1, 67, '1', NULL, '2019-09-28 03:58:12'),
(52, 1, 68, '1', NULL, '2019-09-28 03:59:04'),
(53, 1, 69, '1', NULL, '2019-09-28 04:00:38'),
(54, 17, 70, '1', NULL, '2019-09-28 04:02:31'),
(55, 17, 71, '1', NULL, '2019-09-28 04:03:41'),
(56, 17, 72, '1', NULL, '2019-09-28 04:06:02'),
(57, 17, 73, '1', NULL, '2019-09-28 04:07:03'),
(58, 17, 74, '1', NULL, '2019-09-28 04:07:53'),
(59, 1, 75, '1', NULL, '2019-09-28 04:09:49'),
(60, 17, 76, '1', NULL, '2019-09-28 04:14:42'),
(61, 17, 25, '1', NULL, '2019-10-09 12:06:43'),
(62, 18, 78, '1', NULL, '2019-10-26 03:43:55'),
(63, 18, 79, '1', NULL, '2019-10-26 03:46:32'),
(64, 18, 80, '1', NULL, '2019-10-26 03:48:02'),
(65, 18, 81, '1', NULL, '2019-10-26 03:49:53'),
(66, 18, 82, '1', NULL, '2019-10-26 03:51:07'),
(67, 18, 55, '1', NULL, '2019-10-26 03:52:27'),
(68, 18, 39, '1', NULL, '2019-10-26 03:52:55'),
(69, 15, 83, '1', NULL, '2019-10-26 06:21:49'),
(70, 15, 84, '1', NULL, '2019-10-26 06:23:04'),
(71, 15, 82, '1', NULL, '2019-10-26 06:23:41'),
(72, 1, 85, '1', NULL, '2019-11-07 06:46:55'),
(73, 31, 88, '1', NULL, '2020-01-07 18:30:12'),
(74, 31, 89, '1', NULL, '2020-01-07 18:31:01'),
(75, 31, 90, '1', NULL, '2020-01-07 20:16:56'),
(76, 31, 91, '1', NULL, '2020-01-10 08:11:22'),
(77, 31, 66, '1', NULL, '2020-01-10 12:39:20'),
(78, 31, 76, '1', NULL, '2020-01-10 16:43:59'),
(79, 31, 92, '1', NULL, '2020-01-18 00:57:44'),
(80, 31, 93, '1', NULL, '2020-01-18 01:00:27'),
(81, 31, 94, '1', NULL, '2020-01-18 01:01:50'),
(82, 31, 95, '1', NULL, '2020-01-18 01:33:13'),
(83, 31, 96, '1', NULL, '2020-01-18 01:52:43'),
(84, 31, 97, '1', NULL, '2020-01-18 01:55:27'),
(85, 31, 98, '1', NULL, '2020-01-18 01:58:07'),
(86, 31, 99, '1', NULL, '2020-01-18 01:59:36'),
(87, 31, 100, '1', NULL, '2020-01-18 02:00:53'),
(88, 31, 101, '1', NULL, '2020-01-18 02:02:39'),
(89, 31, 102, '1', NULL, '2020-01-18 02:04:21'),
(90, 31, 103, '1', NULL, '2020-01-18 02:05:38'),
(91, 31, 82, '1', NULL, '2020-01-18 02:06:33'),
(92, 31, 104, '1', NULL, '2020-01-18 02:07:51'),
(93, 31, 105, '1', NULL, '2020-01-18 02:08:44'),
(94, 31, 106, '1', NULL, '2020-01-18 02:11:49'),
(95, 31, 107, '1', NULL, '2020-12-08 10:54:20'),
(96, 31, 24, '1', NULL, '2020-12-08 10:54:54'),
(97, 32, 108, '1', NULL, '2020-12-10 05:06:36'),
(98, 33, 109, '1', NULL, '2020-12-17 06:04:51'),
(99, 33, 110, '1', NULL, '2020-12-17 06:21:17'),
(100, 33, 111, '1', NULL, '2020-12-17 06:40:39'),
(101, 33, 112, '1', NULL, '2020-12-17 06:47:04'),
(102, 33, 39, '1', NULL, '2020-12-17 06:56:55'),
(103, 33, 62, '1', NULL, '2020-12-17 07:00:26'),
(104, 33, 113, '1', NULL, '2020-12-17 07:00:55'),
(105, 33, 114, '1', NULL, '2020-12-17 07:22:52'),
(107, 33, 115, '1', NULL, '2020-12-17 07:42:40'),
(108, 34, 109, '1', NULL, '2021-01-07 07:37:34'),
(109, 34, 114, '1', NULL, '2021-01-07 08:16:48'),
(110, 35, 116, '1', NULL, '2021-01-09 11:58:18'),
(111, 35, 117, '1', NULL, '2021-01-09 11:58:18'),
(112, 35, 118, '1', NULL, '2021-01-09 11:58:18'),
(113, 35, 119, '1', NULL, '2021-01-09 06:36:57'),
(114, 35, 120, '1', NULL, '2021-01-09 11:58:18'),
(115, 35, 62, '1', NULL, '2021-01-09 11:58:18'),
(116, 35, 116, '1', NULL, '2021-01-09 07:07:13'),
(117, 35, 117, '1', NULL, '2021-01-09 07:08:06'),
(118, 36, 121, '1', NULL, '2021-01-21 07:03:07'),
(119, 36, 113, '1', NULL, '2021-01-21 07:06:18'),
(120, 36, 113, '1', NULL, '2021-01-21 07:08:31'),
(121, 37, 113, '1', NULL, '2021-01-21 07:09:02'),
(122, 37, 121, '1', NULL, '2021-01-21 07:11:42'),
(123, 37, 122, '1', NULL, '2021-01-21 07:13:10'),
(124, 37, 74, '1', NULL, '2021-01-21 07:13:38'),
(125, 38, 123, '1', NULL, '2021-01-25 02:31:22'),
(126, 38, 120, '1', NULL, '2021-01-25 02:39:03'),
(127, 38, 124, '1', NULL, '2021-01-25 02:39:51'),
(128, 38, 125, '1', NULL, '2021-01-25 02:46:03'),
(129, 38, 114, '1', NULL, '2021-01-25 02:50:35'),
(130, 38, 126, '1', NULL, '2021-01-25 02:51:03'),
(131, 38, 127, '1', NULL, '2021-01-25 03:20:25'),
(132, 38, 74, '1', NULL, '2021-01-25 03:30:05'),
(133, 38, 128, '1', NULL, '2021-01-25 03:30:29'),
(134, 38, 110, '1', NULL, '2021-01-25 03:37:39'),
(135, 38, 112, '1', NULL, '2021-01-28 06:32:38'),
(136, 38, 128, '1', NULL, '2021-01-28 06:34:25'),
(137, 38, 129, '1', NULL, '2021-01-28 06:43:01'),
(138, 39, 112, '1', NULL, '2021-01-28 07:04:02'),
(139, 39, 129, '1', NULL, '2021-01-28 07:04:19'),
(140, 39, 126, '1', NULL, '2021-01-28 07:09:42'),
(141, 41, 114, '1', NULL, '2021-02-06 06:15:24'),
(142, 41, 126, '1', NULL, '2021-02-06 06:23:44'),
(143, 41, 121, '1', NULL, '2021-02-06 06:32:13'),
(144, 41, 122, '1', NULL, '2021-02-06 07:05:19'),
(145, 41, 130, '1', NULL, '2021-02-06 07:07:24'),
(146, 41, 130, '1', NULL, '2021-02-06 07:08:00'),
(147, 41, 130, '1', NULL, '2021-02-06 07:08:31'),
(148, 41, 130, '1', NULL, '2021-02-11 06:53:57'),
(149, 42, 39, '1', NULL, '2021-02-11 06:56:00'),
(150, 42, 126, '1', NULL, '2021-02-11 07:06:49'),
(151, 42, 114, '1', NULL, '2021-02-11 07:18:11'),
(152, 43, 113, '1', NULL, '2021-02-18 06:18:12'),
(153, 43, 114, '1', NULL, '2021-02-18 06:45:31'),
(154, 43, 121, '1', NULL, '2021-02-18 06:46:54'),
(155, 44, 39, '1', NULL, '2021-03-01 01:58:18'),
(156, 44, 131, '1', NULL, '2021-03-01 02:21:55'),
(157, 44, 132, '1', NULL, '2021-03-01 02:22:01'),
(158, 44, 117, '1', NULL, '2021-03-01 02:22:08'),
(159, 44, 133, '1', NULL, '2021-03-01 02:22:11'),
(160, 44, 134, '1', NULL, '2021-03-01 02:23:47'),
(161, 44, 135, '1', NULL, '2021-03-01 02:24:45'),
(162, 44, 136, '1', NULL, '2021-03-01 02:30:12'),
(163, 44, 137, '1', NULL, '2021-03-01 02:34:13'),
(164, 44, 138, '1', NULL, '2021-03-01 02:35:58'),
(165, 44, 62, '1', NULL, '2021-03-01 02:44:21'),
(166, 44, 139, '1', NULL, '2021-03-01 02:53:21'),
(167, 44, 140, '1', NULL, '2021-03-01 02:56:02'),
(168, 44, 141, '1', NULL, '2021-03-01 02:57:10'),
(169, 44, 142, '1', NULL, '2021-03-01 03:10:36'),
(170, 44, 143, '1', NULL, '2021-03-01 03:10:47'),
(171, 44, 74, '1', NULL, '2021-03-01 03:11:59'),
(172, 44, 144, '1', NULL, '2021-03-01 03:12:12'),
(173, 44, 145, '1', NULL, '2021-03-01 03:33:48'),
(174, 46, 39, '1', NULL, '2021-04-09 07:14:45'),
(175, 46, 146, '1', NULL, '2021-04-09 07:36:29'),
(176, 46, 114, '1', NULL, '2021-04-09 07:36:33'),
(177, 46, 147, '1', NULL, '2021-04-09 07:40:11'),
(178, 46, 148, '1', NULL, '2021-04-09 07:48:13'),
(179, 46, 115, '1', NULL, '2021-04-09 07:57:29'),
(180, 46, 149, '1', NULL, '2021-04-09 07:57:40'),
(181, 46, 150, '1', NULL, '2021-04-09 07:58:33'),
(182, 46, 39, '1', NULL, '2021-04-23 09:17:12'),
(183, 46, 121, '1', NULL, '2021-04-23 09:30:13'),
(184, 46, 151, '1', NULL, '2021-04-24 01:41:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `active` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `vericode` varchar(6) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`username`, `password`, `phone`, `email`, `active`, `type`, `vericode`, `foto`, `input`) VALUES
('hendro', '202cb962ac59075b964b07152d234b70', '081514728339', 'hendroprwk08@gmail.com', 'Yes', 'Admin', '', 'img_20200109_053856.jpg', '2021-01-29 12:06:19'),
('User', '202cb962ac59075b964b07152d234b70', '08139635823', 'user@outlook.com', 'No', 'Admin', '', '', '2020-12-17 05:24:26'),
('syahrial', '827ccb0eea8a706c4c34a16891f84e7b', '085694036962', 'lemniskett@outlook.com', 'Yes', 'Admin', '', NULL, '2021-01-26 04:51:09'),
('shevaardhana', '202cb962ac59075b964b07152d234b70', '08558523447', 'shevaardhana26@gmail.com', 'Yes', 'Admin', '', NULL, '2020-12-17 05:28:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE `peserta` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `institution` varchar(100) NOT NULL,
  `whatsapp` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `active` varchar(3) NOT NULL DEFAULT 'Yes',
  `input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peserta`
--

INSERT INTO `peserta` (`id`, `name`, `institution`, `whatsapp`, `phone`, `email`, `active`, `input`) VALUES
(24, 'Nada Savira Febriani', 'Lp3i pondok gede', '089662778473', '', 'nadasavira02@gmail.com', 'Yes', '2020-01-03 05:17:05'),
(25, 'Nur Sakilah', 'Lp3i kampus pondok gede', '085697705030', '', 'nursakilah37@gmail.com', 'Yes', '2019-12-30 16:13:08'),
(39, 'Syahrial Agni Prasetya', 'LP3I Pondok Gede', '085694036962', '', 'lemniskett@outlook.com', 'Yes', '2021-03-04 03:19:54'),
(27, 'Leon Pedro Damia', 'LP3I Pondok Gede', '082211980434', '082211980434', 'leonpedrodamian195@gmail.com', 'Yes', '2019-12-17 11:26:20'),
(29, 'Putri Anggun Pratiwi', 'Lp3i kampus pondok gede', '087823260222', '', 'putryypratiwi25@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(30, 'Wardah intan fitrian', 'Lp3i pondok gede', '087724038016', '86', 'wardahfitria9@gmail.com', 'Yes', '2019-12-20 07:39:06'),
(31, 'Tiffany Renta Paulina', 'Lp3i Pondok Gede', '081387730736', '', 'Tiffanypaulina24@gmail.com', 'Yes', '2019-12-17 11:31:11'),
(33, 'Dela hadida', 'Lp3i pondok gede', '089512600178', '', 'Hadidahdella50@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(34, 'Shilayina Apriani azzahra', 'Lp31 pondok gede', '089618661229', '', 'azzahrashilayina@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(51, 'Rizqi cahya ramadhan', 'Lp3i pondok gede', '0895346246527', '', 'Rizqiqiu@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(36, 'Maulana Ibrohim', 'LP3I PONDOK GEDE', '082260797683', '', 'Mibrohim778@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(37, 'Dwi Elvira juliaryanti', 'LP3I Pondok gede', '087748982521', '087748982521', 'Dwielvira27@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(38, 'Nita yuliana', 'Lp3i pondok gede', '081379115469', '', 'nitayulian0799@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(49, 'Ade Irma', 'LP3I Pondok Gede', '081310376387', '', 'Adeirma.m712@gmail.com', 'Yes', '2020-01-11 06:00:43'),
(52, 'Hafiz qorizal yusuf', 'Lp3i pondok gede', '08817549729', '', 'Qorizalhafizh@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(53, 'Sri Ayu Intan Lestari', 'Politeknik LP3I Jakarta Pondok Gede', '085899912752', '', 'sriayuintanlestari64@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(54, 'Sanya Ayu Lestari', 'Politeknik LP3I Pondok Gede', '089601804957', '', 'sanya.lestari2001@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(55, 'FIDYAH SANDRAWATI', 'Politeknik LP3I PONDOK GEDE', '085774661995', '085794960373', 'fidyahsandrawati01@gmail.com', 'Yes', '2020-01-03 05:17:53'),
(56, 'ZENDITA ANDRIANI', 'POLITEKNIK LP3I PONDOK GEDE', '085718996822', '085718996822', 'zenditaandriani69@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(57, 'Tania adhistia pujiana', 'Lp3i', '08989000655', '', 'Taniaadhistia2@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(58, 'Nabila Fauziyah', 'Lp3i', '087884884382', '', 'Nabilafauziyah17@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(59, 'Cahya Septia Ramanda', 'LP3I', '089624550562', '', 'cahyaseptiaramanda@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(60, 'Maulida Fajriah', 'Lp3i pondok gede', '085811260370', '', 'maulidafajriah95@gmail.com', 'Yes', '2019-12-18 05:59:34'),
(61, 'Rifkah Azzahra Sukma', 'Kampus LP3i Jakarta (Pondok Gede)', '085715258949', '', 'rifkahazzahra9@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(62, 'Catur rindi widiastuti', 'Kampus LP3I JAKARTA (PONDOK GEDE)', '081292110001', '', 'caturrindi268@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(63, 'Fevie oktavia putry', 'Kampus lp3i jakarta pondok gede', '085718014942', '', 'fevieoktavia05@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(64, 'Nurfitriyani', 'kampus lp3i jakarta pondok gede', '085720628230', '085720628230', 'riyanils00@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(65, 'Ayu putri anggraini', 'Lp3i pondok gede', '085591176270', '', 'ayuputrian46@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(66, 'Andini kurniasari', 'Lp3i pondok gede', '082120091937', '', 'Andinikrnsr1412@gmail.com', 'Yes', '2021-01-07 22:44:40'),
(67, 'Fernia', 'LP3I Pondok Gede', '083142897245', '', 'fernia1821@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(68, 'Safira betanurtias ', 'Lp3i pondok gede', '0895330925156', '', 'Betanurtiassafira@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(69, 'Linda arfiani', 'Politeknik lp3i', '082376955922', '082476955922', 'Lindaarfi13@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(70, 'Mia Fithriana', 'Politeknik LP3I Pondok Gede', '089693052102', '081345219694', 'miafithriana@gmail.com', 'Yes', '2019-12-30 16:04:09'),
(71, 'Ricardo Febry Eka Saputra', 'Politeknik LP3I Pondok Gede', '081398226269', '', 'Fesricardo11@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(72, 'Khafidh dzukhana', 'lp3i', '088219459712', '082213832654', 'Khafidhdz@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(73, 'Syahrial Agni Prasetya', 'Kampus', '085794036962', '0818826718', 'Aapriliani08@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(74, 'Sheva Ardhana', 'Kampus', '08558523447', '', 'shevaardhana26@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(75, 'Clara Puteri Sherdiana', 'Kampus', '085895564663', '', 'Claraptr.98@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(76, 'Yoga panji arya putra', 'Lp3i pondok gede', '085849489382', '', 'yogapanji262@gmail.com', 'Yes', '2020-01-07 20:22:35'),
(78, 'Muhammad Faqih Fadilah', 'Universitas Indraprasta PGRI', '085715996432', '', 'MFaqihFadila12@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(79, 'Indah Suci.R', 'Universitas Indraprasta PGRI', '08999659032', '', 'Indahrmdhan2@gmail.com', 'Yes', '2020-01-03 05:17:36'),
(80, 'Indriyani', 'Universitas Indraprasta PGRI', '08973778120', '', 'Indriyani388@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(81, 'Aditia Pratama', 'Universitas Indraprasta PGRI', '081317576603', '', 'Pratamaaditia938@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(82, 'Arinal Rahmat', 'LP3I Pondok Gede', '081382574116', '', 'arinalr354@gmail.com', 'Yes', '2020-12-18 01:07:33'),
(83, 'Aulia ika arivianti', 'Univ darma persada', '081295630907', '', 'Ikaarvy@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(84, 'Regina olga rama', 'Univ darma persada', '085214071996', '', 'Reginaolgarama@gmail.com', 'Yes', '2020-01-03 05:17:26'),
(85, 'dimas arya yudistira', 'LP3I Jakarta ', '081234567890', '089876543210', 'arya.dimas@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(89, 'test', 'test', '9809', '9890', 'test@test.com', 'Yes', '2020-01-07 18:31:01'),
(90, 'Thhhh', 'Jjjj', '0812', '', 'Hjj@jjk.com', 'No', '2020-01-20 07:17:32'),
(91, 'Auro', 'Aurora', '6262', '667', 'aurora@mail.com', 'Yes', '2020-01-10 08:11:22'),
(92, 'Wisnu Wahyudi', 'Universitas Indraprasta PGRI', '0895326919724', '-', 'wisnumarine22@gmail.com', 'Yes', '2020-01-18 00:57:44'),
(93, 'Dimmas putra drajatulloh', 'Lp3i pondok gede', '087886683588', '', 'Dhimazpdt@gmail.com', 'Yes', '2020-01-18 01:00:27'),
(94, 'Joko waskito', 'Lp3i pondok gede', '081289802680', '081289802680', 'jokowaskito91@gmail.com', 'Yes', '2020-01-18 01:01:50'),
(95, 'Darrell raga', 'Idn boarding school', '081775467709', '081775467709', 'Darrell2645@gmail.com', 'Yes', '2020-01-18 01:33:13'),
(96, 'Ikhsan Aydin Zahid', 'IDN BOARDING SCHOOL', '085883118626', '085883118626', 'Iksanaydinzahid@gmail.com', 'Yes', '2020-01-18 01:52:43'),
(97, 'Muhammad Syauqi Darveshtama', 'IDN Boarding School', '010000000', '', '01@gmail.com', 'Yes', '2020-01-18 01:55:27'),
(98, 'Rafi Nazwan', 'IDN Boarding School', '752006', '756', 'rbbtseniman2006@gmail.com', 'Yes', '2020-01-18 01:58:07'),
(99, 'Arinal Kiab', 'IDN BS', '1234', '', 'arinalkian@gmail.com', 'Yes', '2020-01-18 01:59:36'),
(100, 'Saami sulaiman', 'Idn boading school', '081298265060', '087887163778', 'saamisulaiman@gmail.com', 'Yes', '2020-01-18 02:00:53'),
(101, 'Moh Daffa Dhiya Ulhaq', 'IDN Boarding School', '081381649901', '124477954948', 'ddulhaq0106@gmail.com', 'Yes', '2020-01-18 02:02:39'),
(102, 'Safaraz Afma Affandi', 'IDN Boarding School', '0895395314723', '', 'safaraz.afma.affandi@gmail.com', 'Yes', '2020-01-18 02:04:21'),
(103, 'Azka maulana', 'IDN', '081210388246', '081210388246', 'Maulinanuryani@gmail.com', 'Yes', '2020-01-18 02:05:38'),
(104, 'Dimas arya yudistira', 'LP3I Pondok Gede', '085695737410', '', 'aryadimas8400@gmail.com', 'Yes', '2020-01-18 02:07:51'),
(105, 'Bagus Refriyanto', 'LP3I Pondok Gede', '0895397800197', '', 'bagusrefri7@gmail.com', 'Yes', '2020-01-18 02:08:44'),
(106, 'Teguh Prasetyo', 'Universitas Indraprasta', '089514397339', '', 'Teguhprasetyo261211@gmail.com', 'Yes', '2020-01-18 02:11:49'),
(109, 'Annisa Fitriany', 'LP3I Kampus Pondok Gede', '0895331163930', '', 'annisafitriany84@gmail.com', 'Yes', '2020-12-17 06:04:51'),
(110, 'Trisna Dewi Rahmawati', 'Lp3I Pondok gede', '083166325295', '', 'trisnadewirahmawati@gmail.com', 'Yes', '2020-12-17 06:21:17'),
(111, 'Muhammad Abyan Naufal', 'Universitas Indraprasta PGRI', '085716231963', '085716231963', 'abyannaufal59@gmail.com', 'Yes', '2020-12-17 06:40:39'),
(112, 'Muhammad Fikri Baihaqi', 'Universitas Indraprasta PGRI', '085745386738', '', 'muhammadfikribaihaqi12@gmail.com', 'Yes', '2020-12-17 06:47:04'),
(113, 'M Rudiyansyah', 'HONOR', '085245887716', '085245887716', 'rudi17122017@gmail.com', 'Yes', '2020-12-17 07:00:55'),
(114, 'Mohammad Aulia Sofyan Iskandar', 'STMIK Tasikmalaya', '087756781629', '087756781629', 'auliamohammad14@gmail.com', 'Yes', '2020-12-17 07:22:52'),
(115, 'Nurwahyudin', 'Free', '085292827059', '', 'wahyudin.minami@gmail.com', 'Yes', '2020-12-17 07:41:59'),
(116, 'Dita Rizki Wulan Dini', 'Universitas Sriwijaya', '0895341000890 ', '', 'rdita201@gmail.com ', 'Yes', '2021-01-09 06:36:12'),
(117, 'brian nurman hafiz', 'rumah', '087782454845', '', 'briannurman31@gmail.com', 'Yes', '2021-01-09 06:36:13'),
(118, 'Melinia Rinda A', 'Universitas Sriwijaya', '085262771733', '', 'rindamelinia03@gmail.com', 'Yes', '2021-01-21 07:34:18'),
(119, 'AgungLete', 'Kampus', '082122571312', '081258918715', 'Agunglete96@gmail.con', 'Yes', '2021-01-09 06:36:57'),
(120, 'Rizki Maulana', 'Universitas Indraprasta PGRI Jakarta', '081807963356', '085156957176', 'Rmaulana12321@gmail.com', 'Yes', '2021-01-09 06:45:33'),
(121, 'Umam Alfaridzi', 'Universitas Satya Negara Indonesia', '0895353471130', '', 'umamber142@gmail.com', 'Yes', '2021-01-21 07:03:07'),
(122, 'Andi Kurniawan', 'Universitas Satya Negara Indonesia', '081384780495', '', 'andikurniawan111@gmail.com', 'Yes', '2021-01-21 07:13:10'),
(123, 'M Irham HinoJaya', 'kampus universitas pancasila', '08561098659', '', 'irham.hino@gmail.com', 'Yes', '2021-01-25 02:31:22'),
(124, 'Arif Rahman Hersa W', 'LP3I Pondok Gede', '081311320181', '', 'arifrahmanhersaa@gmail.com', 'Yes', '2021-01-25 02:39:51'),
(125, 'Wanandi', 'Sekolah Tinggi Teknologi Nurul Fikri', '07773102941', '', 'wannandi274@gmail.com', 'Yes', '2021-01-25 02:46:03'),
(126, 'Muhammad Rizqi Saputra', 'universitas bung karno', '085156025860', '085156025860', 'rizsaputr@gmail.com', 'Yes', '2021-01-25 02:51:03'),
(127, 'Widya Satria Utama', 'UNIVERSITAS DINAMIKA', '085808484877', '085808484877', 'satriautamawidya@gmail.com', 'Yes', '2021-01-25 03:20:25'),
(128, 'Muhammad Rizki', 'Lp3i pondok gede', '087886742336', '087886742336', 'pohongw21@gmail.com', 'Yes', '2021-01-25 03:30:29'),
(129, 'Arissatur Rohman', 'Rumah', '089677017239', '', 'oonaries@gmail.com', 'Yes', '2021-01-28 06:43:01'),
(130, 'Sri Ulina Sinuhaji', 'STMIK TRIGUNA DHARMA', '083199225840', '085269054449', 'srisinuhaji03@gmail.com', 'Yes', '2021-02-06 07:07:24'),
(131, 'Raja Nazwa Anugerah Pratama', 'Sekolah', '081387836128', '081387836128', 'rajanazwa31@gmail.com', 'Yes', '2021-03-01 02:21:55'),
(132, 'Ikmal', 'Politeknik Negeri Bengkalis', '081371590415', '', 'Ikmal3428@gmail.com', 'Yes', '2021-03-01 02:22:01'),
(133, 'Surya Efendi', 'Kampus', '089503796269', '085155099546', 'suryaefendi72@gmail.com', 'Yes', '2021-03-01 02:22:11'),
(134, 'Sigit Khoirun Nizam', 'PENS', '08983274464', '08983274464', 'sigitkhoirunnizam10@gmail.com', 'Yes', '2021-03-01 02:23:47'),
(135, 'Muhammad Fathir Aulia', 'SMK N 1 Dolok Merawan', '083194597307', '083194597307', 'fathiryabj1@gmail.com', 'Yes', '2021-03-01 02:24:45'),
(136, 'Muhammad Aqshal Miftah Rizki', 'Universitas Ahmad Dahlan', '082342042271', '', 'aqshalmiftah7@gmail.com', 'Yes', '2021-03-01 02:30:12'),
(137, 'yolla cornelya', 'politeknik lp3i jakarta kampus pondok gede', '085716440102', '', 'yollacornely454@gmail.com', 'Yes', '2021-03-01 02:34:13'),
(138, 'Muhammad Rafi Fadillah', 'Smk dinamika pembangunan jkt 1', '085883140673', '', 'rafifadillah2013@gmail.com', 'Yes', '2021-03-01 02:35:58'),
(139, 'Gunawan Widi Ismardianto', 'Fakultas Perikanan dan Ilmu Kelautan Universitas Brawijaya Malang', '0818531552', '0818531552', 'gunawanwidi@gmail.com', 'Yes', '2021-03-01 02:53:21'),
(140, 'Bakator Citro Utomo', 'IIK STRADA INDONESIA', '085729215183', '', 'bakator.08xxx@gmail.com', 'Yes', '2021-03-01 02:56:02'),
(141, 'Sesaka Aji Nursyah Bantani', 'universitas singaperbangsa karawang', '0895320374803', '', 'shakaaji29@gmail.com', 'Yes', '2021-03-01 02:57:10'),
(142, 'Ari Anjayatno', 'Unbaja', '081335772847', '', 'adam.xcrew@gmail.com', 'Yes', '2021-03-01 03:10:36'),
(143, 'Yuda Setya Hari Pradana', 'Universitas musamus merauke', '081240406189', '081240406189', 'yudhasetya59@gmail.com', 'Yes', '2021-03-01 03:10:47'),
(144, 'Irfandi', 'Universitas Musamus ', '082238446363', '', 'irf464@gmail.com', 'Yes', '2021-03-01 03:12:12'),
(145, 'Sesmi', 'SMAN 3', '082256084970', '', 'sesmiprito09@gmail.com', 'Yes', '2021-03-01 03:33:48'),
(146, 'Arip Rahman Hakim', 'Universitas Indraprasta PGRI', '081210490591', '081210490591', 'rahmanarip238@gmail.com', 'Yes', '2021-04-09 07:36:29'),
(147, 'viana ninda hasan', 'politeknik negeri tanah laut', '082159640607', '082151927651', 'vnindahasan1@gmail.com', 'Yes', '2021-04-09 07:40:11'),
(148, 'Andika', 'Thamrin ', '089682385938', '', 'Andikasari78@gmail.com ', 'Yes', '2021-04-09 07:48:13'),
(149, 'Gustian Valerian', 'Mitratech Indonesia', '087873434070', '087873434070', 'gustian.valerian@gmail.com', 'Yes', '2021-04-09 07:57:40'),
(150, 'Indriyani', 'Universitas Indraprasta PGRI', '08973778120', '085155086554', 'indriiy388@gmail.com', 'Yes', '2021-04-09 07:58:33'),
(151, 'Muhammad Syaifudin', 'Universitas Nasional', '082299420379', '', 'm.syaifudin26@gmail.com', 'Yes', '2021-04-24 01:41:38');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `veventpeserta`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `veventpeserta` (
`id_event` int(11)
,`event` varchar(100)
,`date` date
,`time` time
,`id` int(11)
,`name` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vjumlaheventpeserta`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vjumlaheventpeserta` (
`id` int(11)
,`name` varchar(30)
,`institution` varchar(100)
,`whatsapp` varchar(15)
,`phone` varchar(15)
,`email` varchar(100)
,`active` varchar(3)
,`jumlah` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vpendaftaranpeserta`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vpendaftaranpeserta` (
`id` int(11)
,`name` varchar(30)
,`institution` varchar(100)
,`whatsapp` varchar(15)
,`phone` varchar(15)
,`email` varchar(100)
,`active` varchar(3)
,`input` timestamp
,`id_event` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vrekapeventtahunan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vrekapeventtahunan` (
`tahun` int(4)
,`bulan` int(2)
,`jevent` bigint(21)
,`jpeserta` bigint(21)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `veventpeserta`
--
DROP TABLE IF EXISTS `veventpeserta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id15623844_hendro`@`%` SQL SECURITY DEFINER VIEW `veventpeserta`  AS  select `pendaftaran`.`id_event` AS `id_event`,`event`.`event` AS `event`,`event`.`date` AS `date`,`event`.`time` AS `time`,`peserta`.`id` AS `id`,`peserta`.`name` AS `name` from ((`pendaftaran` join `peserta` on(`pendaftaran`.`id_peserta` = `peserta`.`id`)) join `event` on(`pendaftaran`.`id_event` = `event`.`id`)) order by `peserta`.`id` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vjumlaheventpeserta`
--
DROP TABLE IF EXISTS `vjumlaheventpeserta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id15623844_hendro`@`%` SQL SECURITY DEFINER VIEW `vjumlaheventpeserta`  AS  select `peserta`.`id` AS `id`,`peserta`.`name` AS `name`,`peserta`.`institution` AS `institution`,`peserta`.`whatsapp` AS `whatsapp`,`peserta`.`phone` AS `phone`,`peserta`.`email` AS `email`,`peserta`.`active` AS `active`,count(`pendaftaran`.`id`) AS `jumlah` from (`pendaftaran` join `peserta` on(`pendaftaran`.`id_peserta` = `peserta`.`id`)) group by `peserta`.`id`,`peserta`.`name`,`peserta`.`institution`,`peserta`.`whatsapp`,`peserta`.`phone`,`peserta`.`email`,`peserta`.`active` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vpendaftaranpeserta`
--
DROP TABLE IF EXISTS `vpendaftaranpeserta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id15623844_hendro`@`%` SQL SECURITY DEFINER VIEW `vpendaftaranpeserta`  AS  select `peserta`.`id` AS `id`,`peserta`.`name` AS `name`,`peserta`.`institution` AS `institution`,`peserta`.`whatsapp` AS `whatsapp`,`peserta`.`phone` AS `phone`,`peserta`.`email` AS `email`,`peserta`.`active` AS `active`,`peserta`.`input` AS `input`,`pendaftaran`.`id_event` AS `id_event` from (`pendaftaran` join `peserta` on(`pendaftaran`.`id_peserta` = `peserta`.`id`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vrekapeventtahunan`
--
DROP TABLE IF EXISTS `vrekapeventtahunan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id15623844_hendro`@`%` SQL SECURITY DEFINER VIEW `vrekapeventtahunan`  AS  select extract(year from `event`.`date`) AS `tahun`,extract(month from `event`.`date`) AS `bulan`,count(distinct `pendaftaran`.`id_event`) AS `jevent`,count(`pendaftaran`.`id_peserta`) AS `jpeserta` from (`pendaftaran` join `event` on(`pendaftaran`.`id_event` = `event`.`id`)) group by extract(year from `event`.`date`),extract(month from `event`.`date`) order by extract(year from `event`.`date`),extract(month from `event`.`date`) desc ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
