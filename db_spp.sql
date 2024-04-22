-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2024 pada 01.32
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
(1, 'XII', 'RPL'),
(2, 'XI', 'RPL'),
(3, 'X', 'RPL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `nisn` char(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bulan_bayar` varchar(20) NOT NULL,
  `tahun_bayar` varchar(11) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `bulan_bayar`, `tahun_bayar`, `id_spp`, `jumlah_bayar`) VALUES
(1, 2, '0078909480', '2024-09-10', 'september', '2024', 2, 250000),
(2, 4, '0076916021', '2024-07-11', 'agustus', '2024', 2, 250000),
(3, 4, '0073656537', '2025-05-21', 'mei', '2025', 3, 300000),
(5, 2, '0072743646', '2025-04-02', 'april', '2025', 3, 300000),
(6, 2, '0072743646', '2025-04-02', 'april', '2025', 3, 300000),
(7, 2, '0079394937', '2025-06-15', 'juni', '2025', 3, 300000),
(8, 2, '0079284937', '2025-04-17', 'april', '2025', 3, 300000),
(9, 5, '0078836483', '2025-12-01', 'desember', '2025', 3, 300000),
(10, 3, '0075642066', '2025-01-20', 'januari', '2025', 1, 200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(20) NOT NULL,
  `level` enum('admin','petugas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(1, 'Asep000', 'asep12345', 'Asep', 'admin'),
(2, 'Indra000', 'indra12345', 'Indra', 'petugas'),
(3, 'Agus000', 'agus12345', 'Agus', 'admin'),
(4, 'Wanto000', 'wanto12345', 'Wanto', 'petugas'),
(5, 'Heris000', 'heris12345', 'Heris', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nisn` char(10) NOT NULL,
  `nis` char(15) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `id_spp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
('0061961571', '2224.10.502', 'Zaki Yusron', 2, 'Manggahang', '0851234123544', 2),
('0066648528', '2224.10.484', 'Hisyam Fathurrohman', 2, 'Manggahang', '085161131544', 2),
('0069085947', '2224.10.471', 'Akbar Rizky P', 1, 'Baleendah', '086166137544', 1),
('0071806329', '2224.10.493', 'Rizwan Elansyah', 2, 'Spongporang', '085161214594', 2),
('0071940285', '2224.10.488', 'Maretha Aulia Pasha w', 1, 'Manggahang', '085133166244', 1),
('0072743646', '2224.10.472', 'Amel Meilani', 3, 'Baleendah', '0861634512345', 3),
('0073289914', '2224.10.495', 'Ria Riyanto Faturrohman', 1, 'Sadangsari', '086563431644', 1),
('0073656537', '2224.10.496', 'Rifky Anggara A', 3, 'Baleendah', '0861634512445', 3),
('0075642066', '2224.10.481', 'Dinda Khoirunnisa', 1, 'Baleendah', '086163115234', 1),
('0076916021', '2223.10.470', 'Agil D.Nuryaman', 2, 'Jelekong', '081384163868', 2),
('0077973288', '2224.10.474', 'Arif Dwi U', 1, 'Baleendah', '086164112234', 1),
('0078836483', '2224.10.475', 'Arif Rahman', 3, 'Baleendah', '086164512234', 3),
('0078909480', '2222.10.473', 'Arie Ginanjar Januar', 2, 'Banjaran', '085351208031', 2),
('0079284937', '2224.10.477', 'Celsy Amelia Putri', 3, 'Baleendah', '086164512224', 3),
('0079394937', '2224.10.477', 'Moch. Raffi Adz', 3, 'Baleendah', '086164512235', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
(1, 2020, 200000),
(2, 2021, 250000),
(3, 2022, 300000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indeks untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`),
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
