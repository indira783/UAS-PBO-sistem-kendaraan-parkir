-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jun 2024 pada 18.52
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
-- Database: `db_parkir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `parkirmasuk`
--

CREATE TABLE `parkirmasuk` (
  `notiket` int(11) NOT NULL,
  `tanggalmasuk` date NOT NULL,
  `noplat` varchar(10) NOT NULL,
  `jeniskendaraan` varchar(10) NOT NULL,
  `jammasuk` varchar(10) NOT NULL,
  `jamkeluar` varchar(20) DEFAULT 'Belum Keluar',
  `biaya` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `parkirmasuk`
--

INSERT INTO `parkirmasuk` (`notiket`, `tanggalmasuk`, `noplat`, `jeniskendaraan`, `jammasuk`, `jamkeluar`, `biaya`) VALUES
(1, '2017-05-25', 'AG 1234 B', 'Motor', '20:20:20', '20:41:00', '3000'),
(10, '2024-05-29', 'B 070 AUG', 'Mobil', '17:03:33', 'Belum Keluar', '5000'),
(13, '2024-05-31', 'B 654 RT', 'Mobil', '19:26:027', '12:03:013', '5000'),
(14, '2024-06-01', 'Z 0708 U', 'Motor', '12:02:47', 'Belum Keluar', '3000'),
(15, '2024-06-01', 'Z 567 RE', 'Motor', '19:37:46', 'Belum Keluar', '3000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id`, `username`, `password`) VALUES
(1, 'indira', '123'),
(2, 'widia', '123'),
(3, 'fajar', '123'),
(4, 'jagi', '456');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `parkirmasuk`
--
ALTER TABLE `parkirmasuk`
  ADD PRIMARY KEY (`notiket`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `parkirmasuk`
--
ALTER TABLE `parkirmasuk`
  MODIFY `notiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
