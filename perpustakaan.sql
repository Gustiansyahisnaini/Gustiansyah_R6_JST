-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jul 2024 pada 14.38
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblarsip`
--

CREATE TABLE `tblarsip` (
  `no` int(20) NOT NULL,
  `id_buku` varchar(50) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `issn` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `penulis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tblarsip`
--

INSERT INTO `tblarsip` (`no`, `id_buku`, `judul_buku`, `issn`, `penerbit`, `penulis`) VALUES
(1, '01', 'Belajar Coding Android Bagi Pemula', '978-602-02-7694-6', 'PT. Elex Media Komputindo', 'Ir. Yuniar Supardi'),
(2, '02', 'Web Designer Must Have Book - Cara Cepat Membuat D', '979-794-402-6', 'Mediakita', 'Su Rahman'),
(3, '03', 'Distribusi zakat produktif berbasis model cibest', '978-602-7677-80-7', 'CV.GRE PUBLISHING', 'Ani Nurul Imtihanah, S.H.I., M.H.I'),
(4, '04', 'Biologi Lingkungan', '978-602-361-096-9', 'Muhammadiyah University Press', 'Efri Roziaty Annur Indra'),
(5, '05', 'Sejarah Pendidikan Islam', '978-602-8730-91-4', 'Kencana (Devisi dari PRENADA Group)', 'Prof. Dr. H. Abuddin Nata'),
(6, '06', 'Sejarah Indonesia Modern 1200-2008', '979-16-0012-0', 'PT. Serambi ILmu Semesta', 'Merle Calvin Ricklefs'),
(7, '07', 'Matematika Ekonomi', '978-979-796-199-2', 'Universitas Muhammadiyah Malang', 'Wahyu Hidayat R. M. Jihadi'),
(8, '09', 'contoh', '0277-777-44', 'saya', 'saya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblogin`
--

CREATE TABLE `tblogin` (
  `id_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `hak_akses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tblogin`
--

INSERT INTO `tblogin` (`id_user`, `username`, `password`, `status`, `hak_akses`) VALUES
('1', 'admin', 'admin', '1', 'admin'),
('2', 'mahasiswa', '12345', '1', 'mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpeminjam`
--

CREATE TABLE `tblpeminjam` (
  `no` int(20) NOT NULL,
  `npm` varchar(20) NOT NULL,
  `nama_peminjam` varchar(50) NOT NULL,
  `id_buku` varchar(50) NOT NULL,
  `judul_buku` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tblpeminjam`
--

INSERT INTO `tblpeminjam` (`no`, `npm`, `nama_peminjam`, `id_buku`, `judul_buku`) VALUES
(1, '202043502770', 'Gustiansyah Isnaini', '07', 'Matematika Ekonomi'),
(2, '202043502071', 'Faris Hilman', '01', 'Belajar Coding Android Bagi Pemula'),
(3, '202043502087', 'Renaldy', '04', 'Biologi Lingkungan'),
(4, '202043502086', 'Achmad Maulana', '05', 'Sejarah Pendidikan Islam'),
(5, '202043502073', 'Aufia Zahra', '03', 'Distribusi zakat produktif berbasis model cibest'),
(6, '202043502101', 'Dwy Wahyu Wijaya', '02', 'Web Designer Must Have Book'),
(7, '202043502072', 'Ari Suwanda', '06', 'Sejarah Indonesia Modern 1200-2008');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tblarsip`
--
ALTER TABLE `tblarsip`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `tblogin`
--
ALTER TABLE `tblogin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tblpeminjam`
--
ALTER TABLE `tblpeminjam`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tblarsip`
--
ALTER TABLE `tblarsip`
  MODIFY `no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tblpeminjam`
--
ALTER TABLE `tblpeminjam`
  MODIFY `no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
