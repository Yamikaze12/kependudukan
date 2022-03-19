-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Mar 2022 pada 04.26
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kependudukan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE `agama` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Islam', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(2, 'Kristen', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(3, 'Katholik', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(4, 'Hindu', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(5, 'Budha', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(6, 'Khonghucu', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(7, 'Lainnya', '2022-03-16 23:50:08', '2022-03-16 23:50:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggaran_realisasi`
--

CREATE TABLE `anggaran_realisasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `detail_jenis_anggaran_id` bigint(20) UNSIGNED NOT NULL,
  `keterangan_lainnya` text COLLATE utf8mb4_unicode_ci,
  `nilai_anggaran` bigint(20) NOT NULL,
  `nilai_realisasi` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggaran_realisasi`
--

INSERT INTO `anggaran_realisasi` (`id`, `tahun`, `detail_jenis_anggaran_id`, `keterangan_lainnya`, `nilai_anggaran`, `nilai_realisasi`, `created_at`, `updated_at`) VALUES
(1, 2022, 421, 'dana banson', 50000000, 45000000, '2022-03-19 02:29:43', '2022-03-19 02:29:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `konten` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dilihat` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cetak_surat`
--

CREATE TABLE `cetak_surat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surat_id` bigint(20) UNSIGNED NOT NULL,
  `nomor` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arsip` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cetak_surat`
--

INSERT INTO `cetak_surat` (`id`, `surat_id`, `nomor`, `arsip`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL, '2022-03-19 02:34:58', '2022-03-19 02:34:58'),
(2, 2, NULL, NULL, '2022-03-19 02:34:59', '2022-03-19 02:34:59'),
(3, 2, NULL, NULL, '2022-03-19 02:35:00', '2022-03-19 02:35:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `darah`
--

CREATE TABLE `darah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `golongan` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `darah`
--

INSERT INTO `darah` (`id`, `golongan`, `created_at`, `updated_at`) VALUES
(1, 'A', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(2, 'A+', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(3, 'A-', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(4, 'B', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(5, 'B+', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(6, 'B-', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(7, 'O', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(8, 'O+', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(9, 'O-', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(10, 'AB', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(11, 'AB+', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(12, 'AB-', '2022-03-16 23:50:08', '2022-03-16 23:50:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `desa`
--

CREATE TABLE `desa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_desa` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kecamatan` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kabupaten` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kepala_desa` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_kepala_desa` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `desa`
--

INSERT INTO `desa` (`id`, `nama_desa`, `nama_kecamatan`, `nama_kabupaten`, `alamat`, `nama_kepala_desa`, `alamat_kepala_desa`, `logo`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'TamanJaya', 'Ciemas', 'Sukabumi', 'ciemas, Tamanjaya', 'UTIS SUTISNA', 'Rumah kadesnya', 'public/logo/IRCr7sZJnDrMLYbyRd3tnDPyFeVH4dsCn1WxpPvy.png', NULL, '2022-03-16 23:50:08', '2022-03-17 01:07:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_cetak`
--

CREATE TABLE `detail_cetak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cetak_surat_id` bigint(20) UNSIGNED NOT NULL,
  `isian` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_cetak`
--

INSERT INTO `detail_cetak` (`id`, `cetak_surat_id`, `isian`, `created_at`, `updated_at`) VALUES
(1, 1, 'syaratnya untu masyarakata membuat ktp baru, usia 18', '2022-03-19 02:34:58', '2022-03-19 02:34:58'),
(2, 1, 'azri', '2022-03-19 02:34:58', '2022-03-19 02:34:58'),
(3, 2, 'syaratnya untu masyarakata membuat ktp baru, usia 18', '2022-03-19 02:34:59', '2022-03-19 02:34:59'),
(4, 2, 'azri', '2022-03-19 02:34:59', '2022-03-19 02:34:59'),
(5, 3, 'syaratnya untu masyarakata membuat ktp baru, usia 18', '2022-03-19 02:35:00', '2022-03-19 02:35:00'),
(6, 3, 'azri', '2022-03-19 02:35:00', '2022-03-19 02:35:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_dusun`
--

CREATE TABLE `detail_dusun` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dusun_id` bigint(20) UNSIGNED NOT NULL,
  `rw` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_dusun`
--

INSERT INTO `detail_dusun` (`id`, `dusun_id`, `rw`, `rt`, `created_at`, `updated_at`) VALUES
(1, 1, '001', '001', '2022-03-19 02:27:01', '2022-03-19 02:27:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_jenis_anggaran`
--

CREATE TABLE `detail_jenis_anggaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_anggaran_id` bigint(20) UNSIGNED NOT NULL,
  `kelompok_jenis_anggaran_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_jenis_anggaran`
--

INSERT INTO `detail_jenis_anggaran` (`id`, `jenis_anggaran_id`, `kelompok_jenis_anggaran_id`, `nama`, `created_at`, `updated_at`) VALUES
(411, 4, 41, 'Hasil Usaha Desa', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(412, 4, 41, 'Hasil Aset Desa', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(413, 4, 41, 'Swadaya, Partisipasi dan Gotong Royong', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(414, 4, 41, 'Lain-Lain Pendapatan Asli Desa', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(421, 4, 42, 'Dana Desa', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(422, 4, 42, 'Bagi Hasil Pajak dan Retribusi', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(423, 4, 42, 'Alokasi Dana Desa', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(424, 4, 42, 'Bantuan Keuangan Provinsi', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(425, 4, 42, 'Bantuan Keuangan Kabupaten/Kota', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(431, 4, 43, 'Penerimaan dari Hasil Kerjasama Antar Desa', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(432, 4, 43, 'Penerimaan dari Hasil Kerjasama dengan Pihak Ketiga', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(433, 4, 43, 'Penerimaan Bantuan dari Perusahaan yang Berlokasi di Desa', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(434, 4, 43, 'Hibah dan Sumbangan dari Pihak Ketiga', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(435, 4, 43, 'Koreksi Kesalahan Belanja Tahun-tahun Sebelumnya', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(436, 4, 43, 'Bunga Bank', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(439, 4, 43, 'Lain-lain Pendapatan Desa Yang Sah', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(511, 5, 51, NULL, '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(521, 5, 52, NULL, '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(531, 5, 53, NULL, '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(541, 5, 54, NULL, '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(551, 5, 55, NULL, '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(611, 6, 61, 'SILPA Tahun Sebelumnya', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(612, 6, 61, 'Pencairan Dana Cadangan', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(613, 6, 61, 'Hasil Penjualan Kekayaan Desa Yang Dipisahkan', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(619, 6, 61, 'Penerimaan Pembiayaan Lainnya', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(621, 6, 62, 'Pembentukan Dana Cadangan', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(622, 6, 62, 'Penyertaan Modal Desa', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(629, 6, 62, 'Pengeluaran Pembiayaan Lainnya', '2022-03-16 23:50:08', '2022-03-16 23:50:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dusun`
--

CREATE TABLE `dusun` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dusun`
--

INSERT INTO `dusun` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'TamanJaya', '2022-03-19 02:26:45', '2022-03-19 02:26:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci,
  `slider` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi_surat`
--

CREATE TABLE `isi_surat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surat_id` bigint(20) UNSIGNED NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_isi` tinyint(4) NOT NULL,
  `tampilkan` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `isi_surat`
--

INSERT INTO `isi_surat` (`id`, `surat_id`, `isi`, `jenis_isi`, `tampilkan`, `created_at`, `updated_at`) VALUES
(1, 2, 'penting', 4, 0, '2022-03-19 02:34:14', '2022-03-19 02:34:14'),
(2, 2, '0', 4, 0, '2022-03-19 02:34:14', '2022-03-19 02:34:14'),
(3, 2, 'pembuatan ktp bari', 4, 0, '2022-03-19 02:34:14', '2022-03-19 02:34:14'),
(4, 2, 'bapak camat', 4, 0, '2022-03-19 02:34:14', '2022-03-19 02:34:14'),
(5, 2, 'Tempat', 4, 0, '2022-03-19 02:34:14', '2022-03-19 02:34:14'),
(6, 2, 'Pembuatan ktp baru', 5, 1, '2022-03-19 02:34:14', '2022-03-19 02:34:14'),
(7, 2, 'syaratnya untu masyarakata membuat ktp baru, usia 18', 1, 1, '2022-03-19 02:34:14', '2022-03-19 02:34:14'),
(8, 2, 'syaratnya untu masyarakata membuat ktp baru, usia 18', 2, 1, '2022-03-19 02:34:14', '2022-03-19 02:34:14'),
(9, 2, 'syaratnya untu masyarakata membuat ktp baru, usia 18', 3, 0, '2022-03-19 02:34:14', '2022-03-19 02:34:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_anggaran`
--

CREATE TABLE `jenis_anggaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jenis_anggaran`
--

INSERT INTO `jenis_anggaran` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(4, 'PENDAPATAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(5, 'BELANJA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(6, 'PEMBIAYAAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok_jenis_anggaran`
--

CREATE TABLE `kelompok_jenis_anggaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelompok_jenis_anggaran`
--

INSERT INTO `kelompok_jenis_anggaran` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(41, 'Pendapatan Asli Desa', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(42, 'Pendapatan transfer', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(43, 'Pendapatan Lain-lain', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(51, 'BIDANG PENYELENGGARAN PEMERINTAHAN DESA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(52, 'BIDANG PELAKSANAAN PEMBANGUNAN DESA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(53, 'BIDANG PEMBINAAN KEMASYARAKATAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(54, 'BIDANG PEMBERDAYAAN MASYARAKAT', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(55, 'BIDANG PENANGGULANGAN BENCANA, DARURAT DAN MENDESAK DESA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(61, 'Penerimaan Biaya', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(62, 'Pengeluaran Biaya', '2022-03-16 23:50:08', '2022-03-16 23:50:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_07_04_014808_create_surat_table', 1),
(3, '2020_07_04_015036_create_isi_surat_table', 1),
(4, '2020_07_04_084248_create_galleries_table', 1),
(5, '2020_07_08_170039_create_desa_table', 1),
(6, '2020_07_27_191902_create_sejarah_table', 1),
(7, '2020_07_30_140019_add_slider_to_galleries_table', 1),
(8, '2020_07_31_052632_add_channel_id_to_desa_table', 1),
(9, '2020_07_31_071706_create_videos_table', 1),
(10, '2020_08_03_125251_create_cetak_surat_table', 1),
(11, '2020_08_03_125449_create_detail_cetak_table', 1),
(12, '2020_08_07_064958_create_berita_table', 1),
(13, '2020_08_08_115504_add_nomor_to_cetak_surat_table', 1),
(14, '2020_09_23_141157_edit_table_isi_surat', 1),
(15, '2020_09_25_091559_create_status_hubungan_dalam_keluarga_table', 1),
(16, '2020_09_25_092606_create_status_perkawinan_table', 1),
(17, '2020_09_25_093740_create_darah_table', 1),
(18, '2020_09_25_095035_create_agama_table', 1),
(19, '2020_09_25_095908_create_pekerjaan_table', 1),
(20, '2020_09_25_100158_create_pendidikan_table', 1),
(21, '2020_09_25_100710_create_dusun_table', 1),
(22, '2020_09_25_102449_create_detail_dusun_table', 1),
(23, '2020_09_25_103214_create_penduduk_table', 1),
(24, '2020_09_29_182914_edit_penduduk_table', 1),
(25, '2020_10_05_192930_edit_surat_table', 1),
(26, '2020_10_05_205436_drop_column_api_key', 1),
(27, '2020_10_06_141802_create_jenis_anggaran_table', 1),
(28, '2020_10_06_152043_create_kelompok_jenis_anggaran_table', 1),
(29, '2020_10_06_155051_create_detail_jenis_anggaran_table', 1),
(30, '2020_10_06_161839_create_anggaran_realisasi_table', 1),
(31, '2020_10_13_130955_edit_sejarah_berita', 1),
(32, '2021_08_23_134224_add_arsip_cetak_surat', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'BELUM/TIDAK BEKERJA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(2, 'MENGURUS RUMAH TANGGA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(3, 'PELAJAR/MAHASISWA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(4, 'PENSIUNAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(5, 'PEGAWAI NEGERI SIPIL (PNS)', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(6, 'TENTARA NASIONAL INDONESIA (TNI)', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(7, 'KEPOLISIAN RI (POLRI)', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(8, 'PERDAGANGAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(9, 'PETANI/PEKEBUN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(10, 'PETERNAK', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(11, 'NELAYAN/PERIKANAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(12, 'INDUSTRI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(13, 'KONSTRUKSI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(14, 'TRANSPORTASI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(15, 'KARYAWAN SWASTA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(16, 'KARYAWAN BUMN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(17, 'KARYAWAN BUMD', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(18, 'KARYAWAN HONORER', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(19, 'BURUH HARIAN LEPAS', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(20, 'BURUH TANI/PERKEBUNAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(21, 'BURUH NELAYAN/PERIKANAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(22, 'BURUH PETERNAKAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(23, 'PEMBANTU RUMAH TANGGA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(24, 'TUKANG CUKUR', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(25, 'TUKANG LISTRIK', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(26, 'TUKANG BATU', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(27, 'TUKANG KAYU', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(28, 'TUKANG SOL SEPATU', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(29, 'TUKANG LAS/PANDAI BESI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(30, 'TUKANG JAHIT', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(31, 'TUKANG GIGI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(32, 'PENATA RIAS', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(33, 'PENATA BUSANA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(34, 'PENATA RAMBUT', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(35, 'MEKANIK', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(36, 'SENIMAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(37, 'TABIB', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(38, 'PARAJI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(39, 'PERANCANG BUSANA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(40, 'PENTERJEMAH', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(41, 'IMAM MASJID', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(42, 'PENDETA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(43, 'PASTOR', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(44, 'WARTAWAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(45, 'USTADZ/MUBALIGH', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(46, 'JURU MASAK', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(47, 'PROMOTOR ACARA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(48, 'ANGGOTA DPR-RI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(49, 'ANGGOTA DPD', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(50, 'ANGGOTA KPK', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(51, 'PRESIDEN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(52, 'WAKIL PRESIDEN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(53, 'ANGGOTA MAHKAMAH KONSTITUSI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(54, 'ANGGOTA KABINET KEMENTERIAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(55, 'DUTA BESAR', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(56, 'GUBERNUR', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(57, 'WAKIL GUBERNUR', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(58, 'BUPATI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(59, 'WAKIL BUPATI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(60, 'WALIKOTA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(61, 'WAKIL WALIKOTA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(62, 'ANGGOTA DPRD PROVINSI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(63, 'ANGGOTA DPRD KABUPATEN/KOTA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(64, 'DOSEN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(65, 'GURU', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(66, 'PILOT', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(67, 'PENGACARA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(68, 'NOTARIS', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(69, 'ARSITEK', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(70, 'AKUNTAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(71, 'KONSULTAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(72, 'DOKTER', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(73, 'BIDAN', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(74, 'PERAWAT', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(75, 'APOTEKER', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(76, 'PSIKIATER/PSIKOLOG', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(77, 'PENYIAR TELEVISI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(78, 'PENYIAR RADIO', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(79, 'PELAUT', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(80, 'PENELITI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(81, 'SOPIR', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(82, 'PIALANG', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(83, 'PARANORMAL', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(84, 'PEDAGANG', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(85, 'PERANGKAT DESA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(86, 'KEPALA DESA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(87, 'BIARAWATI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(88, 'WIRASWASTA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(89, 'LAINNYA', '2022-03-16 23:50:08', '2022-03-16 23:50:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemerintahan_desa`
--

CREATE TABLE `pemerintahan_desa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `konten` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dilihat` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'TIDAK / BELUM SEKOLAH', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(2, 'BELUM TAMAT SD/SEDERAJAT', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(3, 'TAMAT SD / SEDERAJAT', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(4, 'SLTP/SEDERAJAT', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(5, 'SLTA / SEDERAJAT', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(6, 'DIPLOMA I / II', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(7, 'AKADEMI/ DIPLOMA III/S. MUDA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(8, 'DIPLOMA IV/ STRATA I', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(9, 'STRATA II', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(10, 'STRATA III', '2022-03-16 23:50:08', '2022-03-16 23:50:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduk`
--

CREATE TABLE `penduduk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kk` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` tinyint(4) NOT NULL COMMENT '1: Laki-laki, 2: Perempuan',
  `tempat_lahir` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama_id` bigint(20) UNSIGNED NOT NULL,
  `pendidikan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pekerjaan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `darah_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_perkawinan_id` bigint(20) UNSIGNED NOT NULL,
  `status_hubungan_dalam_keluarga_id` bigint(20) UNSIGNED NOT NULL,
  `kewarganegaraan` tinyint(4) NOT NULL,
  `nomor_paspor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_kitas_atau_kitap` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik_ayah` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik_ibu` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ayah` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ibu` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_dusun_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penduduk`
--

INSERT INTO `penduduk` (`id`, `nik`, `kk`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama_id`, `pendidikan_id`, `pekerjaan_id`, `darah_id`, `status_perkawinan_id`, `status_hubungan_dalam_keluarga_id`, `kewarganegaraan`, `nomor_paspor`, `nomor_kitas_atau_kitap`, `nik_ayah`, `nik_ibu`, `nama_ayah`, `nama_ibu`, `alamat`, `detail_dusun_id`, `created_at`, `updated_at`) VALUES
(1, '1234567891234665', '0987654321098765', 'heri', 1, 'sukabumi', '1998-05-18', 1, 5, 3, 1, 1, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-19 02:26:08', '2022-03-19 02:26:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_hubungan_dalam_keluarga`
--

CREATE TABLE `status_hubungan_dalam_keluarga` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status_hubungan_dalam_keluarga`
--

INSERT INTO `status_hubungan_dalam_keluarga` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'KEPALA KELUARGA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(2, 'SUAMI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(3, 'ISTRI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(4, 'ANAK', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(5, 'MENANTU', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(6, 'CUCU', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(7, 'ORANGTUA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(8, 'MERTUA', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(9, 'FAMILI', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(10, 'PEMBANTU', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(11, 'LAINNYA', '2022-03-16 23:50:08', '2022-03-16 23:50:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_perkawinan`
--

CREATE TABLE `status_perkawinan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status_perkawinan`
--

INSERT INTO `status_perkawinan` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Belum Kawin', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(2, 'Kawin', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(3, 'Cerai Hidup', '2022-03-16 23:50:08', '2022-03-16 23:50:08'),
(4, 'Cerai Mati', '2022-03-16 23:50:08', '2022-03-16 23:50:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat`
--

CREATE TABLE `surat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanda_tangan_bersangkutan` tinyint(1) NOT NULL DEFAULT '0',
  `perihal` tinyint(1) NOT NULL DEFAULT '0',
  `data_kades` tinyint(1) NOT NULL DEFAULT '0',
  `tampilkan` tinyint(1) NOT NULL DEFAULT '0',
  `persyaratan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `surat`
--

INSERT INTO `surat` (`id`, `nama`, `deskripsi`, `icon`, `tanda_tangan_bersangkutan`, `perihal`, `data_kades`, `tampilkan`, `persyaratan`, `created_at`, `updated_at`) VALUES
(1, 'uji coba', 'uji coba', 'fa-file-text-o', 1, 0, 1, 0, 'uji coba', '2022-03-16 23:57:10', '2022-03-16 23:57:10'),
(2, 'Surat pengantar pembuatan ktp', 'pembuatan ktp baru', 'fa-file-text-o', 1, 1, 1, 1, 'syaratnya untu masyarakata membuat ktp baru, usia 18', '2022-03-19 02:34:14', '2022-03-19 02:34:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_profil` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'noavatar.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `foto_profil`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 'noavatar.png', '2022-03-16 23:50:08', '$2y$10$0x46u784s3spCncre8OBZewRy75IjAH49Jg4yXp33JgURkYiVycN.', NULL, '2022-03-16 23:50:08', '2022-03-16 23:50:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `anggaran_realisasi`
--
ALTER TABLE `anggaran_realisasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggaran_realisasi_detail_jenis_anggaran_id_foreign` (`detail_jenis_anggaran_id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cetak_surat`
--
ALTER TABLE `cetak_surat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cetak_surat_surat_id_foreign` (`surat_id`);

--
-- Indeks untuk tabel `darah`
--
ALTER TABLE `darah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_cetak`
--
ALTER TABLE `detail_cetak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_cetak_cetak_surat_id_foreign` (`cetak_surat_id`);

--
-- Indeks untuk tabel `detail_dusun`
--
ALTER TABLE `detail_dusun`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_dusun_dusun_id_foreign` (`dusun_id`);

--
-- Indeks untuk tabel `detail_jenis_anggaran`
--
ALTER TABLE `detail_jenis_anggaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_jenis_anggaran_jenis_anggaran_id_foreign` (`jenis_anggaran_id`),
  ADD KEY `detail_jenis_anggaran_kelompok_jenis_anggaran_id_foreign` (`kelompok_jenis_anggaran_id`);

--
-- Indeks untuk tabel `dusun`
--
ALTER TABLE `dusun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `isi_surat`
--
ALTER TABLE `isi_surat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `isi_surat_surat_id_foreign` (`surat_id`);

--
-- Indeks untuk tabel `jenis_anggaran`
--
ALTER TABLE `jenis_anggaran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenis_anggaran_nama_unique` (`nama`);

--
-- Indeks untuk tabel `kelompok_jenis_anggaran`
--
ALTER TABLE `kelompok_jenis_anggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemerintahan_desa`
--
ALTER TABLE `pemerintahan_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penduduk_nik_unique` (`nik`),
  ADD KEY `penduduk_agama_id_foreign` (`agama_id`),
  ADD KEY `penduduk_pendidikan_id_foreign` (`pendidikan_id`),
  ADD KEY `penduduk_pekerjaan_id_foreign` (`pekerjaan_id`),
  ADD KEY `penduduk_darah_id_foreign` (`darah_id`),
  ADD KEY `penduduk_status_perkawinan_id_foreign` (`status_perkawinan_id`),
  ADD KEY `penduduk_status_hubungan_dalam_keluarga_id_foreign` (`status_hubungan_dalam_keluarga_id`),
  ADD KEY `penduduk_detail_dusun_id_foreign` (`detail_dusun_id`);

--
-- Indeks untuk tabel `status_hubungan_dalam_keluarga`
--
ALTER TABLE `status_hubungan_dalam_keluarga`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_perkawinan`
--
ALTER TABLE `status_perkawinan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agama`
--
ALTER TABLE `agama`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `anggaran_realisasi`
--
ALTER TABLE `anggaran_realisasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cetak_surat`
--
ALTER TABLE `cetak_surat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `darah`
--
ALTER TABLE `darah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `desa`
--
ALTER TABLE `desa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `detail_cetak`
--
ALTER TABLE `detail_cetak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `detail_dusun`
--
ALTER TABLE `detail_dusun`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `detail_jenis_anggaran`
--
ALTER TABLE `detail_jenis_anggaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=630;

--
-- AUTO_INCREMENT untuk tabel `dusun`
--
ALTER TABLE `dusun`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `isi_surat`
--
ALTER TABLE `isi_surat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `jenis_anggaran`
--
ALTER TABLE `jenis_anggaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kelompok_jenis_anggaran`
--
ALTER TABLE `kelompok_jenis_anggaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT untuk tabel `pemerintahan_desa`
--
ALTER TABLE `pemerintahan_desa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `status_hubungan_dalam_keluarga`
--
ALTER TABLE `status_hubungan_dalam_keluarga`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `status_perkawinan`
--
ALTER TABLE `status_perkawinan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `surat`
--
ALTER TABLE `surat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggaran_realisasi`
--
ALTER TABLE `anggaran_realisasi`
  ADD CONSTRAINT `anggaran_realisasi_detail_jenis_anggaran_id_foreign` FOREIGN KEY (`detail_jenis_anggaran_id`) REFERENCES `detail_jenis_anggaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cetak_surat`
--
ALTER TABLE `cetak_surat`
  ADD CONSTRAINT `cetak_surat_surat_id_foreign` FOREIGN KEY (`surat_id`) REFERENCES `surat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_cetak`
--
ALTER TABLE `detail_cetak`
  ADD CONSTRAINT `detail_cetak_cetak_surat_id_foreign` FOREIGN KEY (`cetak_surat_id`) REFERENCES `cetak_surat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_dusun`
--
ALTER TABLE `detail_dusun`
  ADD CONSTRAINT `detail_dusun_dusun_id_foreign` FOREIGN KEY (`dusun_id`) REFERENCES `dusun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_jenis_anggaran`
--
ALTER TABLE `detail_jenis_anggaran`
  ADD CONSTRAINT `detail_jenis_anggaran_jenis_anggaran_id_foreign` FOREIGN KEY (`jenis_anggaran_id`) REFERENCES `jenis_anggaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_jenis_anggaran_kelompok_jenis_anggaran_id_foreign` FOREIGN KEY (`kelompok_jenis_anggaran_id`) REFERENCES `kelompok_jenis_anggaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `isi_surat`
--
ALTER TABLE `isi_surat`
  ADD CONSTRAINT `isi_surat_surat_id_foreign` FOREIGN KEY (`surat_id`) REFERENCES `surat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD CONSTRAINT `penduduk_agama_id_foreign` FOREIGN KEY (`agama_id`) REFERENCES `agama` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_darah_id_foreign` FOREIGN KEY (`darah_id`) REFERENCES `darah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_detail_dusun_id_foreign` FOREIGN KEY (`detail_dusun_id`) REFERENCES `detail_dusun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_pekerjaan_id_foreign` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_pendidikan_id_foreign` FOREIGN KEY (`pendidikan_id`) REFERENCES `pendidikan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_status_hubungan_dalam_keluarga_id_foreign` FOREIGN KEY (`status_hubungan_dalam_keluarga_id`) REFERENCES `status_hubungan_dalam_keluarga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penduduk_status_perkawinan_id_foreign` FOREIGN KEY (`status_perkawinan_id`) REFERENCES `status_perkawinan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
