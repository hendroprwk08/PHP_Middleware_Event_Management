-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 24 Jan 2020 pada 06.49
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id9259556_event_lcc`
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
(1, 'Social Media Management', 'Tes', '2019-09-14', '10:43:00', 0, '2020-01-11 04:41:36'),
(15, 'Photoshop', 'Editing dengan photoshop', '2019-10-26', '13:00:00', 0, '2019-12-12 07:36:21'),
(17, 'Pertemuan rutin', 'Pertemuan rutin bicara tentang uang kas', '2019-09-28', '10:00:00', 0, '2020-01-07 20:26:50'),
(18, 'MongoDB', '', '2019-10-26', '09:00:00', 0, '2019-12-31 09:36:10'),
(20, 'ORACLE', '', '2019-11-30', '09:00:00', 0, '2019-12-12 07:36:58'),
(30, 'PHP untuk pemula', '', '2019-12-14', '09:00:00', 0, '2019-12-31 09:36:16'),
(31, 'Android Clinic', 'Pengen tau bagaimana caranya membuat aplikasi di Android\n\nSiapa sih yang ga kenal android? pemprograman yang diusung oleh Google ini makin populer dan kamu perlu tau dasar bahasa pemprogramannya.\n\nSyarat :\n\n1. membawa laptop minimal memory 8GB Mac/Windows atau 4GB bagi pengguna Linux yang sudah diinstall Android Studio dan SDK-nya (silahkan Download terlebih dahulu dan pastikan tak ada kendala)\n\n2. Membawa handphone android dan kabel data, kabel datanya yang bagus ya, jangan yang rusak atau kendor.\n\nWaktu pelaksanaan :\n\nLantai 3. Sabtu 18 januari 2019 jam 08.00 - 11.00 (telat, artinya tertinggal materi)\n\nBiaya : donasi, bayar seikhlasnya.\n\nPERHATIAN\n\nKhusus bagi yang PASTI AKAN HADIR, bukan untuk yang iseng-iseng daftar.', '2020-01-18', '08:00:00', 1, '2020-01-11 05:17:01');

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
(94, 31, 106, '1', NULL, '2020-01-18 02:11:49');

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
('hendro', '202cb962ac59075b964b07152d234b70', '081514728339', 'hendroprwk08@gmail.com', 'Yes', 'Admin', '', 'img_20200109_053856.jpg', '2020-01-23 15:16:34'),
('User', '202cb962ac59075b964b07152d234b70', '08139635823', 'user@user.com', 'Yes', 'User', '', '', '2019-12-31 09:22:10'),
('Rendi', '827ccb0eea8a706c4c34a16891f84e7b', '0877', 'r.adriand3@gmail.com', 'Yes', 'Admin', '', 'img_20200102_015314.jpg', '2020-01-20 02:25:44'),
('Yoga', '202cb962ac59075b964b07152d234b70', '085849489382', 'yogapanji262@gmail.com', 'Yes', 'User', '', NULL, '2020-01-18 01:17:14'),
('userrendi', '827ccb0eea8a706c4c34a16891f84e7b', '0811', 'r.adriand2@gmail.com', 'Yes', 'User', NULL, NULL, '2020-01-10 08:28:54');

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
(39, 'Syahrial Agni Prasetya', 'LP3I Pondok Gede', '085694036962', '', 'Aapriliani08@gmail.com', 'Yes', '2019-12-16 06:45:25'),
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
(66, 'Andini kurniasaru', 'Lp3i pondok gede', '082120091937', '', 'Andinikrnsr1412@gmail.com', 'Yes', '2019-12-16 06:45:25'),
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
(82, 'Arinal Rahmat', 'LP3I Pondok Gede', '081382574116', '', 'arinalr354@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(83, 'Aulia ika arivianti', 'Univ darma persada', '081295630907', '', 'Ikaarvy@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(84, 'Regina olga rama', 'Univ darma persada', '085214071996', '', 'Reginaolgarama@gmail.com', 'Yes', '2020-01-03 05:17:26'),
(85, 'dimas arya yudistira', 'LP3I Jakarta ', '081234567890', '089876543210', 'arya.dimas@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(86, 'Bdhs', 'Hdhdj', '9595', '9898', 'hendro-prwk@gmail.com', 'Yes', '2019-12-16 06:45:25'),
(87, '', '', '', '', '', 'No', '2019-12-27 13:16:24'),
(88, 'jkhkj', 'kjhk', 'kjhk', '087887234019', 'hendroprwk@gail.com', 'Yes', '2020-01-18 07:00:24'),
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
(106, 'Teguh Prasetyo', 'Universitas Indraprasta', '089514397339', '', 'Teguhprasetyo261211@gmail.com', 'Yes', '2020-01-18 02:11:49');

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

CREATE ALGORITHM=UNDEFINED DEFINER=`id9259556_hendro`@`%` SQL SECURITY DEFINER VIEW `veventpeserta`  AS  select `pendaftaran`.`id_event` AS `id_event`,`event`.`event` AS `event`,`event`.`date` AS `date`,`event`.`time` AS `time`,`peserta`.`id` AS `id`,`peserta`.`name` AS `name` from ((`pendaftaran` join `peserta` on(`pendaftaran`.`id_peserta` = `peserta`.`id`)) join `event` on(`pendaftaran`.`id_event` = `event`.`id`)) order by `peserta`.`id` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vjumlaheventpeserta`
--
DROP TABLE IF EXISTS `vjumlaheventpeserta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id9259556_hendro`@`%` SQL SECURITY DEFINER VIEW `vjumlaheventpeserta`  AS  select `peserta`.`id` AS `id`,`peserta`.`name` AS `name`,`peserta`.`institution` AS `institution`,`peserta`.`whatsapp` AS `whatsapp`,`peserta`.`phone` AS `phone`,`peserta`.`email` AS `email`,`peserta`.`active` AS `active`,count(`pendaftaran`.`id`) AS `jumlah` from (`pendaftaran` join `peserta` on(`pendaftaran`.`id_peserta` = `peserta`.`id`)) group by `peserta`.`id`,`peserta`.`name`,`peserta`.`institution`,`peserta`.`whatsapp`,`peserta`.`phone`,`peserta`.`email`,`peserta`.`active` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vpendaftaranpeserta`
--
DROP TABLE IF EXISTS `vpendaftaranpeserta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id9259556_hendro`@`%` SQL SECURITY DEFINER VIEW `vpendaftaranpeserta`  AS  select `peserta`.`id` AS `id`,`peserta`.`name` AS `name`,`peserta`.`institution` AS `institution`,`peserta`.`whatsapp` AS `whatsapp`,`peserta`.`phone` AS `phone`,`peserta`.`email` AS `email`,`peserta`.`active` AS `active`,`peserta`.`input` AS `input`,`pendaftaran`.`id_event` AS `id_event` from (`pendaftaran` join `peserta` on(`pendaftaran`.`id_peserta` = `peserta`.`id`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vrekapeventtahunan`
--
DROP TABLE IF EXISTS `vrekapeventtahunan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id9259556_hendro`@`%` SQL SECURITY DEFINER VIEW `vrekapeventtahunan`  AS  select extract(year from `event`.`date`) AS `tahun`,extract(month from `event`.`date`) AS `bulan`,count(distinct `pendaftaran`.`id_event`) AS `jevent`,count(`pendaftaran`.`id_peserta`) AS `jpeserta` from (`pendaftaran` join `event` on(`pendaftaran`.`id_event` = `event`.`id`)) group by extract(year from `event`.`date`),extract(month from `event`.`date`) order by extract(year from `event`.`date`),extract(month from `event`.`date`) desc ;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
