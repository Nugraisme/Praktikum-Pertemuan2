-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Bulan Mei 2024 pada 09.40
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bagian`
--

CREATE TABLE `bagian` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bagian`
--

INSERT INTO `bagian` (`id`, `nama`) VALUES
(1, 'Marketing'),
(2, 'HRD'),
(5, 'Manager');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `gaji_pokok` int(11) DEFAULT NULL,
  `status_karyawan` enum('TETAP','KONTRAK','MAGANG') DEFAULT NULL,
  `bagian_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `tanggal_mulai`, `gaji_pokok`, `status_karyawan`, `bagian_id`) VALUES
('0001', 'WACHID', '2022-10-01', 3100000, 'TETAP', 3),
('0002', 'DWI', '2011-01-05', 3100000, 'TETAP', 2),
('0003', 'TRIO', '2011-01-05', 2900000, 'TETAP', 1),
('0004', 'ARBA', '2015-09-09', 2400000, 'KONTRAK', 1),
('0005', 'PANCA', '2019-09-09', 2200000, 'KONTRAK', 1),
('0006', 'SITI', '2021-09-16', 1500000, 'MAGANG', 1),
('0008', 'WINDU', '2018-08-08', 1300000, 'KONTRAK', 1),
('0009', 'NINO', '2022-01-05', 1000000, 'TETAP', 1),
('0011', 'EVAN', '2022-01-05', 1000000, 'MAGANG', 1),
('0012', 'TIWI', '2022-12-31', 1234567, 'MAGANG', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kosong`
--

CREATE TABLE `kosong` (
  `id` int(11) NOT NULL,
  `untuk_uji_coba_data_kosong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penggajian`
--

CREATE TABLE `penggajian` (
  `id` int(11) NOT NULL,
  `karyawan_nik` varchar(20) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `bulan` char(2) DEFAULT NULL,
  `gaji_bayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penggajian`
--

INSERT INTO `penggajian` (`id`, `karyawan_nik`, `tahun`, `bulan`, `gaji_bayar`) VALUES
(1, '0001', 2015, '07', 1000000),
(2, '0002', 2015, '07', 1000000),
(3, '0001', 2015, '08', 1000000),
(4, '0002', 2015, '08', 1000000),
(5, '0001', 2015, '09', 1200000),
(6, '0002', 2015, '09', 1200000),
(7, '0003', 2015, '09', 1000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `penggajian`
--
ALTER TABLE `penggajian`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penggajian`
--
ALTER TABLE `penggajian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
