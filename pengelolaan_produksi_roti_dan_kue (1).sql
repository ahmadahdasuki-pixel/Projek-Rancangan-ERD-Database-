-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2026 pada 14.40
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
-- Database: `pengelolaan_produksi_roti_dan_kue`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahan_baku`
--

CREATE TABLE `bahan_baku` (
  `id_bahan` int(11) NOT NULL,
  `Nama_bahan` varchar(30) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `stok_bahan` int(11) NOT NULL,
  `harga_per_satuan` int(11) NOT NULL,
  `kualitas_bahan` varchar(30) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bahan_baku`
--

INSERT INTO `bahan_baku` (`id_bahan`, `Nama_bahan`, `satuan`, `stok_bahan`, `harga_per_satuan`, `kualitas_bahan`, `id_supplier`) VALUES
(1, 'Tepung', 'kg', 90, 10000, 'Baik', 1),
(2, 'Gula', 'kg', 80, 12000, 'Baik', 2),
(3, 'Ragi', 'gram', 2000, 500, 'Baik', 3),
(4, 'Telur', 'pcs', 300, 2000, 'Buruk', 4),
(5, 'Susu', 'liter', 50, 15000, 'Baik', 5),
(6, 'Mentega', 'kg', 40, 25000, 'Baik', 6),
(7, 'Coklat', 'kg', 30, 30000, 'Baik', 7),
(8, 'Keju', 'kg', 25, 35000, 'Buruk', 8),
(9, 'Garam', 'kg', 20, 5000, 'Baik', 9),
(10, 'Vanilla', 'ml', 500, 200, 'Baik', 10),
(11, 'Tepung Protein Tinggi', 'kg', 90, 12000, 'Baik', 11),
(12, 'Gula Halus', 'kg', 70, 13000, 'Buruk', 12),
(13, 'Ragi Instan', 'gram', 1500, 600, 'Baik', 13),
(14, 'Telur Bebek', 'pcs', 200, 2500, 'Buruk', 14),
(15, 'Susu Bubuk', 'kg', 30, 20000, 'Buruk', 15),
(16, 'Margarin', 'kg', 35, 22000, 'Buruk', 16),
(17, 'Coklat Bubuk', 'kg', 25, 28000, 'Baik', 17),
(18, 'Keju Cheddar', 'kg', 20, 36000, 'Baik', 18),
(19, 'Garam Halus', 'kg', 15, 6000, 'Baik', 19),
(20, 'Essence Vanilla', 'ml', 400, 300, 'Baik', 20),
(21, 'Tepung Gandum', 'kg', 100, 14000, 'Baik', 21),
(22, 'Gula Aren', 'kg', 60, 15000, 'Buruk', 22),
(23, 'Ragi Kering', 'gram', 1800, 550, 'Baik', 23),
(24, 'Telur Ayam Kampung', 'pcs', 250, 3000, 'Baik', 24),
(25, 'Susu Cair', 'liter', 45, 16000, 'Baik', 25),
(26, 'Butter', 'kg', 30, 27000, 'Baik', 26),
(27, 'Coklat Chip', 'kg', 35, 32000, 'Buruk', 27),
(28, 'Keju Mozzarella', 'kg', 20, 40000, 'Baik', 28),
(29, 'Garam Laut', 'kg', 10, 7000, 'Baik', 29),
(30, 'Vanilla Cair', 'ml', 350, 250, 'Baik', 30),
(31, 'Tepung Jagung', 'kg', 80, 11000, 'Baik', 31),
(32, 'Gula Cair', 'liter', 50, 14000, 'Buruk', 32),
(33, 'Ragi Basah', 'gram', 1200, 500, 'Baik', 33),
(34, 'Telur Organik', 'pcs', 200, 3500, 'Baik', 34),
(35, 'Susu UHT', 'liter', 60, 17000, 'Baik', 35),
(36, 'Mentega Premium', 'kg', 25, 30000, 'Baik', 36),
(37, 'Coklat Premium', 'kg', 20, 40000, 'Buruk', 37),
(38, 'Keju Premium', 'kg', 15, 45000, 'Baik', 38),
(39, 'Garam Himalaya', 'kg', 10, 10000, 'Baik', 39),
(40, 'Vanilla Premium', 'ml', 300, 500, 'Baik', 40);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_produksi`
--

CREATE TABLE `detail_produksi` (
  `id_detail` int(11) NOT NULL,
  `jumlah_bahan` int(11) NOT NULL,
  `biaya_bahan` int(11) NOT NULL,
  `presentase_bahan` int(11) NOT NULL,
  `id_produksi` int(11) DEFAULT NULL,
  `id_bahan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_produksi`
--

INSERT INTO `detail_produksi` (`id_detail`, `jumlah_bahan`, `biaya_bahan`, `presentase_bahan`, `id_produksi`, `id_bahan`) VALUES
(1, 10, 100000, 20, 1, 1),
(2, 8, 80000, 15, 2, 2),
(3, 7, 70000, 14, 3, 3),
(4, 9, 90000, 18, 4, 4),
(5, 6, 60000, 12, 5, 5),
(6, 5, 50000, 10, 6, 6),
(7, 11, 110000, 22, 7, 7),
(8, 4, 40000, 8, 8, 8),
(9, 10, 100000, 20, 9, 9),
(10, 9, 90000, 18, 10, 10),
(11, 8, 80000, 16, 11, 11),
(12, 7, 70000, 14, 12, 12),
(13, 6, 60000, 12, 13, 13),
(14, 5, 50000, 10, 14, 14),
(15, 9, 90000, 18, 15, 15),
(16, 4, 40000, 8, 16, 16),
(17, 11, 110000, 22, 17, 17),
(18, 3, 30000, 6, 18, 18),
(19, 10, 100000, 20, 19, 19),
(20, 8, 80000, 16, 20, 20),
(21, 7, 70000, 14, 21, 21),
(22, 6, 60000, 12, 22, 22),
(23, 5, 50000, 10, 23, 23),
(24, 9, 90000, 18, 24, 24),
(25, 4, 40000, 8, 25, 25),
(26, 10, 100000, 20, 26, 26),
(27, 8, 80000, 16, 27, 27),
(28, 7, 70000, 14, 28, 28),
(29, 6, 60000, 12, 29, 29),
(30, 5, 50000, 10, 30, 30),
(31, 9, 90000, 18, 31, 31),
(32, 4, 40000, 8, 32, 32),
(33, 10, 100000, 20, 33, 33),
(34, 8, 80000, 16, 34, 34),
(35, 7, 70000, 14, 35, 35),
(36, 6, 60000, 12, 36, 36),
(37, 5, 50000, 10, 37, 37),
(38, 9, 90000, 18, 38, 38),
(39, 4, 40000, 8, 39, 39),
(40, 10, 100000, 20, 40, 40);

-- --------------------------------------------------------

--
-- Struktur dari tabel `limbah_produksi`
--

CREATE TABLE `limbah_produksi` (
  `id_limbah_produksi` int(11) NOT NULL,
  `jenis_limbah` varchar(30) NOT NULL,
  `kuantitas_limbah` int(11) DEFAULT NULL,
  `satuan` varchar(30) NOT NULL,
  `penyebab` varchar(30) NOT NULL,
  `tanggal_limbah` date NOT NULL,
  `id_produksi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `limbah_produksi`
--

INSERT INTO `limbah_produksi` (`id_limbah_produksi`, `jenis_limbah`, `kuantitas_limbah`, `satuan`, `penyebab`, `tanggal_limbah`, `id_produksi`) VALUES
(1, 'Adonan gagal', 5, 'kg', 'Fermentasi Gagal', '2026-03-03', 3),
(2, 'Produk rusak', 3, 'pcs', 'Bentuk Rusak', '2026-03-01', 1),
(3, 'Sisa bahan', 2, 'kg', 'Berlebih', '2026-03-05', 5),
(4, 'Produk cacat', 4, 'pcs', 'Kesalahan Resep', '2026-03-08', 8),
(5, 'Adonan gagal', 6, 'kg', 'Fermentasi Gagal', '2026-03-03', 3),
(6, 'Produk rusak', 2, 'pcs', 'Kesalahan Resep', '2026-03-06', 6),
(7, 'Sisa bahan', 3, 'kg', 'Berlebih', '2026-03-07', 7),
(8, 'Produk cacat', 5, 'pcs', 'Retak', '2026-03-09', 9),
(9, 'Adonan gagal', 4, 'kg', 'Kesalahan Resep', '2026-03-08', 8),
(10, 'Produk rusak', 2, 'pcs', 'Pendinginan gagal', '2026-03-10', 10),
(11, 'Adonan gagal', 5, 'kg', 'Gosong', '2026-03-13', 13),
(12, 'Produk rusak', 3, 'pcs', 'Bentuk rusak', '2026-03-11', 11),
(13, 'Sisa bahan', 2, 'kg', 'Berlebih', '2026-03-15', 15),
(14, 'Produk cacat', 4, 'pcs', 'Retak', '2026-03-18', 18),
(15, 'Adonan gagal', 6, 'kg', 'Fermentasi gagal', '2026-03-13', 13),
(16, 'Produk rusak', 2, 'pcs', 'Over bake', '2026-03-16', 16),
(17, 'Sisa bahan', 3, 'kg', 'Tidak terpakai', '2026-03-17', 17),
(18, 'Produk cacat', 5, 'pcs', 'Retak', '2026-03-19', 19),
(19, 'Adonan gagal', 4, 'kg', 'Kesalahan resep', '2026-03-18', 18),
(20, 'Produk rusak', 2, 'pcs', 'Pendinginan gagal', '2026-03-20', 20),
(21, 'Adonan gagal', 5, 'kg', 'Gosong', '2026-03-23', 23),
(22, 'Produk rusak', 3, 'pcs', 'Bentuk rusak', '2026-03-21', 21),
(23, 'Sisa bahan', 2, 'kg', 'Berlebih', '2026-03-25', 25),
(24, 'Produk cacat', 4, 'pcs', 'Retak', '2026-03-28', 28),
(25, 'Adonan gagal', 6, 'kg', 'Fermentasi gagal', '2026-03-23', 23),
(26, 'Produk rusak', 2, 'pcs', 'Over bake', '2026-03-26', 26),
(27, 'Sisa bahan', 3, 'kg', 'Tidak terpakai', '2026-03-27', 27),
(28, 'Produk cacat', 5, 'pcs', 'Retak', '2026-03-29', 29),
(29, 'Adonan gagal', 4, 'kg', 'Kesalahan resep', '2026-03-28', 28),
(30, 'Produk rusak', 2, 'pcs', 'Pendinginan gagal', '2026-03-30', 30),
(31, 'Adonan gagal', 5, 'kg', 'Gosong', '2026-04-02', 33),
(32, 'Produk rusak', 3, 'pcs', 'Bentuk rusak', '2026-03-31', 31),
(33, 'Sisa bahan', 2, 'kg', 'Berlebih', '2026-04-04', 35),
(34, 'Produk cacat', 4, 'pcs', 'Retak', '2026-04-07', 38),
(35, 'Adonan gagal', 6, 'kg', 'Fermentasi gagal', '2026-04-02', 33),
(36, 'Produk rusak', 2, 'pcs', 'Over bake', '2026-04-05', 36),
(37, 'Sisa bahan', 3, 'kg', 'Tidak terpakai', '2026-04-06', 37),
(38, 'Produk cacat', 5, 'pcs', 'Retak', '2026-04-08', 39),
(39, 'Adonan gagal', 4, 'kg', 'Kesalahan resep', '2026-04-07', 38),
(40, 'Produk rusak', 2, 'pcs', 'Pendinginan gagal', '2026-04-09', 40);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jenis_produk` varchar(50) DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `Lama_simpan_hari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `jenis_produk`, `harga`, `Lama_simpan_hari`) VALUES
(1, 'Roti Tawar', 'Roti', 15000, 5),
(2, 'Donat', 'Roti', 5000, 3),
(3, 'Roti Coklat', 'Roti', 12000, 4),
(4, 'Roti Keju', 'Roti', 13000, 4),
(5, 'Brownies', 'Kue', 30000, 7),
(6, 'Kue Lapis', 'Kue', 25000, 5),
(7, 'Roti Sosis', 'Roti', 14000, 3),
(8, 'Cake Vanilla', 'Kue', 35000, 6),
(9, 'Donat Coklat', 'Roti', 6000, 3),
(10, 'Roti Manis', 'Roti', 10000, 4),
(11, 'Roti Abon', 'Roti', 15000, 4),
(12, 'Roti Pisang', 'Roti', 12000, 4),
(13, 'Roti Strawberry', 'Roti', 13000, 4),
(14, 'Cake Coklat', 'Kue', 40000, 6),
(15, 'Cupcake', 'Kue', 10000, 3),
(16, 'Roti Kismis', 'Roti', 12000, 4),
(17, 'Roti Pandan', 'Roti', 13000, 4),
(18, 'Kue Keju', 'Kue', 35000, 6),
(19, 'Roti Susu', 'Roti', 11000, 4),
(20, 'Donat Keju', 'Roti', 7000, 3),
(21, 'Roti Jagung', 'Roti', 12000, 4),
(22, 'Roti Ubi', 'Roti', 11000, 4),
(23, 'Cake Matcha', 'Kue', 45000, 6),
(24, 'Brownies Kukus', 'Kue', 32000, 6),
(25, 'Roti Isi Ayam', 'Roti', 15000, 3),
(26, 'Roti Isi Tuna', 'Roti', 16000, 3),
(27, 'Roti Kacang', 'Roti', 12000, 4),
(28, 'Cake Red Velvet', 'Kue', 50000, 7),
(29, 'Donat Vanilla', 'Roti', 6000, 3),
(30, 'Roti Mini', 'Roti', 8000, 3),
(31, 'Roti Isi Coklat', 'Roti', 13000, 4),
(32, 'Roti Isi Keju', 'Roti', 13000, 4),
(33, 'Cake Blueberry', 'Kue', 42000, 6),
(34, 'Kue Lapis Legit', 'Kue', 55000, 7),
(35, 'Roti Tawar Premium', 'Roti', 18000, 5),
(36, 'Donat Mini', 'Roti', 4000, 2),
(37, 'Roti Gandum', 'Roti', 16000, 5),
(38, 'Cake Oreo', 'Kue', 45000, 6),
(39, 'Roti Isi Sosis', 'Roti', 14000, 3),
(40, 'Brownies Panggang', 'Kue', 35000, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produksi`
--

CREATE TABLE `produksi` (
  `id_produksi` int(11) NOT NULL,
  `tanggal_produksi` date NOT NULL,
  `jumlah_produksi` int(11) NOT NULL,
  `suhu_pemanggangan` int(11) NOT NULL,
  `waktu_fermentasi` time NOT NULL,
  `status_produksi` varchar(30) NOT NULL,
  `tanggal_kadaluwarsa` date NOT NULL,
  `id_produk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produksi`
--

INSERT INTO `produksi` (`id_produksi`, `tanggal_produksi`, `jumlah_produksi`, `suhu_pemanggangan`, `waktu_fermentasi`, `status_produksi`, `tanggal_kadaluwarsa`, `id_produk`) VALUES
(1, '2026-03-01', 100, 180, '01:30:00', 'Gagal', '2026-03-06', 1),
(2, '2026-03-02', 90, 175, '01:20:00', 'Berhasil', '2026-03-05', 2),
(3, '2026-03-03', 80, 190, '02:00:00', 'Gagal', '2026-03-07', 3),
(4, '2026-03-04', 70, 180, '01:25:00', 'Berhasil', '2026-03-08', 4),
(5, '2026-03-05', 60, 200, '01:45:00', 'Gagal', '2026-03-12', 5),
(6, '2026-03-06', 50, 170, '01:10:00', 'Gagal', '2026-03-11', 6),
(7, '2026-03-07', 110, 185, '01:30:00', 'Gagal', '2026-03-10', 7),
(8, '2026-03-08', 40, 190, '02:00:00', 'Gagal', '2026-03-14', 8),
(9, '2026-03-09', 95, 180, '01:25:00', 'Berhasil', '2026-03-12', 9),
(10, '2026-03-10', 85, 175, '01:15:00', 'Berhasil', '2026-03-14', 10),
(11, '2026-03-11', 100, 180, '01:30:00', 'Berhasil', '2026-03-15', 11),
(12, '2026-03-12', 90, 175, '01:20:00', 'Berhasil', '2026-03-16', 12),
(13, '2026-03-13', 80, 190, '02:00:00', 'Gagal', '2026-03-17', 13),
(14, '2026-03-14', 70, 180, '01:25:00', 'Berhasil', '2026-03-18', 14),
(15, '2026-03-15', 60, 200, '01:45:00', 'Berhasil', '2026-03-20', 15),
(16, '2026-03-16', 50, 170, '01:10:00', 'Berhasil', '2026-03-21', 16),
(17, '2026-03-17', 110, 185, '01:30:00', 'Berhasil', '2026-03-22', 17),
(18, '2026-03-18', 40, 190, '02:00:00', 'Gagal', '2026-03-23', 18),
(19, '2026-03-19', 95, 180, '01:25:00', 'Berhasil', '2026-03-24', 19),
(20, '2026-03-20', 85, 175, '01:15:00', 'Berhasil', '2026-03-25', 20),
(21, '2026-03-21', 100, 180, '01:30:00', 'Berhasil', '2026-03-26', 21),
(22, '2026-03-22', 90, 175, '01:20:00', 'Berhasil', '2026-03-27', 22),
(23, '2026-03-23', 80, 190, '02:00:00', 'Gagal', '2026-03-28', 23),
(24, '2026-03-24', 70, 180, '01:25:00', 'Berhasil', '2026-03-29', 24),
(25, '2026-03-25', 60, 200, '01:45:00', 'Berhasil', '2026-03-30', 25),
(26, '2026-03-26', 50, 170, '01:10:00', 'Berhasil', '2026-03-31', 26),
(27, '2026-03-27', 110, 185, '01:30:00', 'Berhasil', '2026-04-01', 27),
(28, '2026-03-28', 40, 190, '02:00:00', 'Gagal', '2026-04-02', 28),
(29, '2026-03-29', 95, 180, '01:25:00', 'Berhasil', '2026-04-03', 29),
(30, '2026-03-30', 85, 175, '01:15:00', 'Berhasil', '2026-04-04', 30),
(31, '2026-03-31', 100, 180, '01:30:00', 'Berhasil', '2026-04-05', 31),
(32, '2026-04-01', 90, 175, '01:20:00', 'Berhasil', '2026-04-06', 32),
(33, '2026-04-02', 80, 190, '02:00:00', 'Gagal', '2026-04-07', 33),
(34, '2026-04-03', 70, 180, '01:25:00', 'Berhasil', '2026-04-08', 34),
(35, '2026-04-04', 60, 200, '01:45:00', 'Berhasil', '2026-04-09', 35),
(36, '2026-04-05', 50, 170, '01:10:00', 'Berhasil', '2026-04-10', 36),
(37, '2026-04-06', 110, 185, '01:30:00', 'Berhasil', '2026-04-11', 37),
(38, '2026-04-07', 40, 190, '02:00:00', 'Gagal', '2026-04-12', 38),
(39, '2026-04-08', 95, 180, '01:25:00', 'Berhasil', '2026-04-13', 39),
(40, '2026-04-09', 85, 175, '01:15:00', 'Berhasil', '2026-04-14', 40);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telepon` varchar(30) NOT NULL,
  `nama_perusahaan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat`, `no_telepon`, `nama_perusahaan`) VALUES
(1, 'Andi Saputra', 'Samarinda', '0811000001', 'PT Pangan Jaya'),
(2, 'Budi Santoso', 'Balikpapan', '0811000002', 'PT Sumber Rasa'),
(3, 'Sari Wulandari', 'Samarinda', '0811000003', 'PT Bahan Segar'),
(4, 'Dedi Kurniawan', 'Kutai Kartanegara', '0811000004', 'PT Agro Makmur'),
(5, 'Rina Lestari', 'Bontang', '0811000005', 'PT Pangan Sejahtera'),
(6, 'Agus Salim', 'Samarinda', '0811000006', 'PT Tepung Indo'),
(7, 'Lina Marlina', 'Balikpapan', '0811000007', 'PT Gula Manis'),
(8, 'Tono Wijaya', 'Kutai Timur', '0811000008', 'PT Ragi Prima'),
(9, 'Yuni Astuti', 'Bontang', '0811000009', 'PT Susu Segar'),
(10, 'Rudi Hartono', 'Samarinda', '0811000010', 'PT Telur Jaya'),
(11, 'Hendra Gunawan', 'Balikpapan', '0811000011', 'PT Bahan Berkualitas'),
(12, 'Dewi Kartika', 'Samarinda', '0811000012', 'PT Supplier Nusantara'),
(13, 'Eko Prasetyo', 'Kutai Barat', '0811000013', 'PT Agro Lestari'),
(14, 'Fitri Handayani', 'Bontang', '0811000014', 'PT Bahan Prima'),
(15, 'Gilang Ramadhan', 'Samarinda', '0811000015', 'PT Sumber Makmur'),
(16, 'Indra Saputra', 'Balikpapan', '0811000016', 'PT Pangan Utama'),
(17, 'Joko Susilo', 'Kutai Kartanegara', '0811000017', 'PT Agro Sejahtera'),
(18, 'Kartika Dewi', 'Samarinda', '0811000018', 'PT Bahan Berkembang'),
(19, 'Lukman Hakim', 'Bontang', '0811000019', 'PT Supplier Makmur'),
(20, 'Maya Sari', 'Balikpapan', '0811000020', 'PT Pangan Nusantara'),
(21, 'Nanda Pratama', 'Samarinda', '0811000021', 'PT Agro Mandiri'),
(22, 'Oki Setiawan', 'Kutai Timur', '0811000022', 'PT Sumber Pangan'),
(23, 'Putri Ayu', 'Bontang', '0811000023', 'PT Bahan Sehat'),
(24, 'Rizky Maulana', 'Samarinda', '0811000024', 'PT Agro Sentosa'),
(25, 'Sinta Dewi', 'Balikpapan', '0811000025', 'PT Pangan Sentra'),
(26, 'Taufik Hidayat', 'Kutai Barat', '0811000026', 'PT Supplier Jaya'),
(27, 'Umar Faruq', 'Samarinda', '0811000027', 'PT Agro Jaya'),
(28, 'Vina Oktaviani', 'Bontang', '0811000028', 'PT Bahan Unggul'),
(29, 'Wahyu Setiawan', 'Balikpapan', '0811000029', 'PT Pangan Berkualitas'),
(30, 'Yusuf Kurniawan', 'Kutai Timur', '0811000030', 'PT Agro Bersama'),
(31, 'Zahra Putri', 'Samarinda', '0811000031', 'PT Supplier Hebat'),
(32, 'Arif Rahman', 'Balikpapan', '0811000032', 'PT Pangan Terpercaya'),
(33, 'Bella Safitri', 'Bontang', '0811000033', 'PT Bahan Aman'),
(34, 'Cahyo Nugroho', 'Kutai Kartanegara', '0811000034', 'PT Agro Sehat'),
(35, 'Dina Permata', 'Samarinda', '0811000035', 'PT Supplier Andalan'),
(36, 'Erwin Saputra', 'Balikpapan', '0811000036', 'PT Pangan Stabil'),
(37, 'Fajar Hidayat', 'Kutai Timur', '0811000037', 'PT Agro Terbaik'),
(38, 'Gita Lestari', 'Bontang', '0811000038', 'PT Bahan Berkualitas Tinggi'),
(39, 'Hafiz Ramadhan', 'Samarinda', '0811000039', 'PT Supplier Modern'),
(40, 'Intan Sari', 'Balikpapan', '0811000040', 'PT Pangan Global');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_produk`
--

CREATE TABLE `transaksi_produk` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `jenis_transaksi` varchar(30) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_produk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_produk`
--

INSERT INTO `transaksi_produk` (`id_transaksi`, `tanggal_transaksi`, `jenis_transaksi`, `total_harga`, `jumlah`, `id_produk`) VALUES
(1, '2026-01-01', 'Penjualan', 50000, 5, 1),
(2, '2026-01-02', 'Distribusi', 75000, 7, 2),
(3, '2026-01-03', 'Penjualan', 60000, 6, 3),
(4, '2026-01-04', 'Retur', 20000, 2, 1),
(5, '2026-01-05', 'Promosi', 0, 3, 4),
(6, '2026-01-06', 'Penjualan', 90000, 9, 5),
(7, '2026-01-07', 'Penyesuaian Stok', 0, 2, 2),
(8, '2026-01-08', 'Distribusi', 80000, 8, 6),
(9, '2026-01-09', 'Penjualan', 70000, 7, 7),
(10, '2026-01-10', 'Retur', 30000, 3, 3),
(11, '2026-01-11', 'Penjualan', 85000, 8, 4),
(12, '2026-01-12', 'Distribusi', 95000, 9, 5),
(13, '2026-01-13', 'Promosi', 0, 4, 6),
(14, '2026-01-14', 'Penjualan', 100000, 10, 7),
(15, '2026-01-15', 'Retur', 25000, 2, 1),
(16, '2026-01-16', 'Penyesuaian Stok', 0, 3, 2),
(17, '2026-01-17', 'Penjualan', 110000, 11, 3),
(18, '2026-01-18', 'Distribusi', 120000, 12, 4),
(19, '2026-01-19', 'Promosi', 0, 5, 5),
(20, '2026-01-20', 'Penjualan', 130000, 13, 6),
(21, '2026-01-21', 'Retur', 40000, 4, 7),
(22, '2026-01-22', 'Distribusi', 140000, 14, 1),
(23, '2026-01-23', 'Penjualan', 150000, 15, 2),
(24, '2026-01-24', 'Promosi', 0, 6, 3),
(25, '2026-01-25', 'Penyesuaian Stok', 0, 2, 4),
(26, '2026-01-26', 'Penjualan', 160000, 16, 5),
(27, '2026-01-27', 'Distribusi', 170000, 17, 6),
(28, '2026-01-28', 'Retur', 35000, 3, 7),
(29, '2026-01-29', 'Penjualan', 180000, 18, 1),
(30, '2026-01-30', 'Promosi', 0, 7, 2),
(31, '2026-01-31', 'Penjualan', 190000, 19, 3),
(32, '2026-02-01', 'Distribusi', 200000, 20, 4),
(33, '2026-02-02', 'Retur', 30000, 3, 5),
(34, '2026-02-03', 'Penyesuaian Stok', 0, 2, 6),
(35, '2026-02-04', 'Penjualan', 210000, 21, 7),
(36, '2026-02-05', 'Distribusi', 220000, 22, 1),
(37, '2026-02-06', 'Promosi', 0, 8, 2),
(38, '2026-02-07', 'Penjualan', 230000, 23, 3),
(39, '2026-02-08', 'Retur', 45000, 4, 4),
(40, '2026-02-09', 'Penyesuaian Stok', 0, 3, 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahan_baku`
--
ALTER TABLE `bahan_baku`
  ADD PRIMARY KEY (`id_bahan`),
  ADD KEY `fk_supplier` (`id_supplier`);

--
-- Indeks untuk tabel `detail_produksi`
--
ALTER TABLE `detail_produksi`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `fk_produksi_detail` (`id_produksi`),
  ADD KEY `fk_bahan_baku_detail` (`id_bahan`);

--
-- Indeks untuk tabel `limbah_produksi`
--
ALTER TABLE `limbah_produksi`
  ADD PRIMARY KEY (`id_limbah_produksi`),
  ADD KEY `fk_produksi` (`id_produksi`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id_produksi`),
  ADD KEY `fk_produk_produksi` (`id_produk`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `transaksi_produk`
--
ALTER TABLE `transaksi_produk`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_produk` (`id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bahan_baku`
--
ALTER TABLE `bahan_baku`
  MODIFY `id_bahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `detail_produksi`
--
ALTER TABLE `detail_produksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `limbah_produksi`
--
ALTER TABLE `limbah_produksi`
  MODIFY `id_limbah_produksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id_produksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `transaksi_produk`
--
ALTER TABLE `transaksi_produk`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bahan_baku`
--
ALTER TABLE `bahan_baku`
  ADD CONSTRAINT `fk_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Ketidakleluasaan untuk tabel `detail_produksi`
--
ALTER TABLE `detail_produksi`
  ADD CONSTRAINT `fk_bahan_baku_detail` FOREIGN KEY (`id_bahan`) REFERENCES `bahan_baku` (`id_bahan`),
  ADD CONSTRAINT `fk_produksi_detail` FOREIGN KEY (`id_produksi`) REFERENCES `produksi` (`id_produksi`);

--
-- Ketidakleluasaan untuk tabel `limbah_produksi`
--
ALTER TABLE `limbah_produksi`
  ADD CONSTRAINT `fk_produksi` FOREIGN KEY (`id_produksi`) REFERENCES `produksi` (`id_produksi`);

--
-- Ketidakleluasaan untuk tabel `produksi`
--
ALTER TABLE `produksi`
  ADD CONSTRAINT `fk_produk_produksi` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Ketidakleluasaan untuk tabel `transaksi_produk`
--
ALTER TABLE `transaksi_produk`
  ADD CONSTRAINT `fk_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
