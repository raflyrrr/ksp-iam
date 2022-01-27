-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 27, 2022 at 10:33 AM
-- Server version: 5.7.24
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kspiam`
--

-- --------------------------------------------------------

--
-- Table structure for table `aksi`
--

CREATE TABLE `aksi` (
  `id_aksi` int(11) NOT NULL,
  `id_data_kategori` int(11) NOT NULL,
  `kategori_aksi` varchar(100) NOT NULL,
  `tanggal_aksi` varchar(100) NOT NULL,
  `pesan_aksi` text NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `nama_admin` varchar(100) NOT NULL DEFAULT 'Belum Diverifikasi',
  `status_aksi` varchar(100) NOT NULL DEFAULT 'Belum Diverifikasi',
  `status_verifikasi` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aksi`
--

INSERT INTO `aksi` (`id_aksi`, `id_data_kategori`, `kategori_aksi`, `tanggal_aksi`, `pesan_aksi`, `nama_pegawai`, `nama_admin`, `status_aksi`, `status_verifikasi`) VALUES
(3, 3, 'Nonaktifkan Anggota', '25-10-2020', 'Jito pernah bermasalah di berbagai koperasi soal hutangnya yang tidak lunas. Berikut koperasi yang pernah jadi korban jito\r\n\r\n1. Koperasi Karep\r\n2. Koperasi Bahagia\r\n\r\nTolong blacklist saja untuk nama jito hartati', 'Muh Riza Zulfahnur', 'Ardan Anjung Kusuma', 'Penonaktifan Ditolak', 'Diterima Admin'),
(4, 3, 'Nonaktifkan Anggota', '27-10-2020', 'Tolong review lagi pak, jito orangnya tidak bertanggung jawab dalam melunasi hutangnya. Biar lebih enak silahkan kontak CP dibawah ini, humas koperasi yang pernah menjadi korban jito : \r\n\r\n1. Koperasi Karep (0812496023954)\r\n2. Koperasi Bahagia (085823232445)\r\n\r\nDia sudah diblacklist di berbagai koperasi bojonegoro', 'Dina Lisuardi', 'Ardan Anjung Kusuma', 'Penonaktifan Diterima', 'Diterima Admin'),
(7, 6, 'Nonaktifkan Anggota', '03-11-2020', 'Ahmad Kholil terlibat dalam kasus penipuan pada koperasi ABC', 'Dina Lisuardi', 'Ardan Anjung Kusuma', 'Penonaktifan Ditolak', 'Diterima Admin'),
(10, 4, 'Nonaktifkan Anggota', '01-12-2020', 'Siti pernah kasus pada beberapa koperasi ', 'Ardan Anjung Kusuma', 'Belum Diverifikasi', 'Belum Diverifikasi', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(200) NOT NULL,
  `alamat_anggota` varchar(200) NOT NULL,
  `no_telp_anggota` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status_anggota` varchar(200) NOT NULL DEFAULT 'Tidak Aktif',
  `tanggal_keanggotaan` varchar(100) NOT NULL DEFAULT 'Belum Menjadi Anggota',
  `foto_ktp_anggota` varchar(500) NOT NULL DEFAULT 'Belum Diupload',
  `foto_selfie_ktp_anggota` varchar(500) NOT NULL DEFAULT 'Belum Diupload'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_anggota`, `alamat_anggota`, `no_telp_anggota`, `username`, `email`, `password`, `status_anggota`, `tanggal_keanggotaan`, `foto_ktp_anggota`, `foto_selfie_ktp_anggota`) VALUES
(10, 'Jett', 'Jl. Ascent', '123123', 'jett', 'jett@tes.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 'Aktif', '12-08-2021', '120820210545559126088_5c25695a-8c66-48ee-aff3-287eef3a5a07_700_525.jpg', '120820210545559126088_5c25695a-8c66-48ee-aff3-287eef3a5a07_700_525.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `angsuran_detail`
--

CREATE TABLE `angsuran_detail` (
  `id_angsuran_detail` int(11) NOT NULL,
  `id_pinjaman` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `tanggal_angsuran` date NOT NULL,
  `angsuran_pembayaran` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lupa_password`
--

CREATE TABLE `lupa_password` (
  `id_lupa_password` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `pertanyaankeamanan1` text NOT NULL,
  `pertanyaankeamanan2` text NOT NULL,
  `jawabankeamanan1` text NOT NULL,
  `jawabankeamanan2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lupa_password`
--

INSERT INTO `lupa_password` (`id_lupa_password`, `id_anggota`, `pertanyaankeamanan1`, `pertanyaankeamanan2`, `jawabankeamanan1`, `jawabankeamanan2`) VALUES
(12, 10, 'Apa angka favorit anda?(Contoh: 29)', 'Apa hobby anda?', '17', 'bola');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(200) NOT NULL,
  `alamat_pegawai` varchar(200) NOT NULL,
  `no_telp_pegawai` varchar(50) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `kategori` int(1) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `alamat_pegawai`, `no_telp_pegawai`, `username`, `email`, `password`, `kategori`) VALUES
(1, 'admin', 'admin', '123123', 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'pegawai', 'pegawai', '1231231', 'pegawai', 'pegawai@gmail.com', '047aeeb234644b9e2d4138ed3bc7976a', 2);

-- --------------------------------------------------------

--
-- Table structure for table `penarikan_simpanan`
--

CREATE TABLE `penarikan_simpanan` (
  `id_penarikan` int(11) NOT NULL,
  `id_simpanan` int(11) NOT NULL,
  `nominal_total_penarikan` int(25) NOT NULL,
  `total_akhir_simpanan` int(25) NOT NULL DEFAULT '0',
  `tanggal_permintaan_penarikan` date NOT NULL,
  `status_penarikan` varchar(20) NOT NULL DEFAULT 'Belum Diverifikasi',
  `verifikasi_pegawai` varchar(50) NOT NULL DEFAULT 'Belum Diverifikasi',
  `verifikasi_admin` varchar(50) NOT NULL DEFAULT 'Belum Diverifikasi',
  `pesan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_pinjaman`
--

CREATE TABLE `pengajuan_pinjaman` (
  `id_pengajuan` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `total_pengajuan_pinjaman` int(20) NOT NULL,
  `alasan_pinjaman` text NOT NULL,
  `lampiran_pendukung` varchar(256) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `status_pengajuan` varchar(50) NOT NULL DEFAULT 'Belum Terverifikasi',
  `verifikasi_pegawai` varchar(100) NOT NULL DEFAULT 'Belum Terverifikasi',
  `verifikasi_admin` varchar(100) NOT NULL DEFAULT 'Belum Terverifikasi',
  `pesan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `judul` text NOT NULL,
  `header_gambar` varchar(200) NOT NULL,
  `isi` text NOT NULL,
  `tanggal_post` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjaman` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `status_pinjaman` varchar(50) NOT NULL DEFAULT 'Belum Lunas',
  `tanggal_pelunasan` date DEFAULT NULL,
  `tanggal_meminjam` date NOT NULL,
  `total_pinjaman` int(20) NOT NULL,
  `angsuran_bulanan` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

CREATE TABLE `simpanan` (
  `id_simpanan` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `jumlah_simpanan_pokok` int(20) NOT NULL,
  `jumlah_simpanan_wajib` int(20) NOT NULL,
  `status_simpanan` varchar(200) NOT NULL DEFAULT 'Belum Ditarik'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `simpanan_detail`
--

CREATE TABLE `simpanan_detail` (
  `id_simpanan_detail` int(11) NOT NULL,
  `id_simpanan` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `jumlah_setor_tunai` int(20) NOT NULL,
  `tanggal_setor_tunai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aksi`
--
ALTER TABLE `aksi`
  ADD PRIMARY KEY (`id_aksi`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `angsuran_detail`
--
ALTER TABLE `angsuran_detail`
  ADD PRIMARY KEY (`id_angsuran_detail`),
  ADD KEY `pinjaman_detail_ibfk_1` (`id_pinjaman`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `lupa_password`
--
ALTER TABLE `lupa_password`
  ADD PRIMARY KEY (`id_lupa_password`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `penarikan_simpanan`
--
ALTER TABLE `penarikan_simpanan`
  ADD PRIMARY KEY (`id_penarikan`),
  ADD KEY `id_simpanan` (`id_simpanan`);

--
-- Indexes for table `pengajuan_pinjaman`
--
ALTER TABLE `pengajuan_pinjaman`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjaman`),
  ADD KEY `pinjaman_ibfk_1` (`id_anggota`),
  ADD KEY `id_pengajuan` (`id_pengajuan`);

--
-- Indexes for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD PRIMARY KEY (`id_simpanan`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `simpanan_detail`
--
ALTER TABLE `simpanan_detail`
  ADD PRIMARY KEY (`id_simpanan_detail`),
  ADD KEY `id_simpanan` (`id_simpanan`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aksi`
--
ALTER TABLE `aksi`
  MODIFY `id_aksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `angsuran_detail`
--
ALTER TABLE `angsuran_detail`
  MODIFY `id_angsuran_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lupa_password`
--
ALTER TABLE `lupa_password`
  MODIFY `id_lupa_password` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penarikan_simpanan`
--
ALTER TABLE `penarikan_simpanan`
  MODIFY `id_penarikan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_pinjaman`
--
ALTER TABLE `pengajuan_pinjaman`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `id_pinjaman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `simpanan`
--
ALTER TABLE `simpanan`
  MODIFY `id_simpanan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `simpanan_detail`
--
ALTER TABLE `simpanan_detail`
  MODIFY `id_simpanan_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `angsuran_detail`
--
ALTER TABLE `angsuran_detail`
  ADD CONSTRAINT `angsuran_detail_ibfk_1` FOREIGN KEY (`id_pinjaman`) REFERENCES `pinjaman` (`id_pinjaman`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `angsuran_detail_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lupa_password`
--
ALTER TABLE `lupa_password`
  ADD CONSTRAINT `lupa_password_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penarikan_simpanan`
--
ALTER TABLE `penarikan_simpanan`
  ADD CONSTRAINT `penarikan_simpanan_ibfk_2` FOREIGN KEY (`id_simpanan`) REFERENCES `simpanan` (`id_simpanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_pinjaman`
--
ALTER TABLE `pengajuan_pinjaman`
  ADD CONSTRAINT `pengajuan_pinjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD CONSTRAINT `pengumuman_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD CONSTRAINT `pinjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pinjaman_ibfk_2` FOREIGN KEY (`id_pengajuan`) REFERENCES `pengajuan_pinjaman` (`id_pengajuan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD CONSTRAINT `simpanan_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `simpanan_detail`
--
ALTER TABLE `simpanan_detail`
  ADD CONSTRAINT `simpanan_detail_ibfk_1` FOREIGN KEY (`id_simpanan`) REFERENCES `simpanan` (`id_simpanan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `simpanan_detail_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
