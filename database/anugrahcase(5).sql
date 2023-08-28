-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Agu 2023 pada 02.59
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anugrahcase`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `jenis_id` int(11) NOT NULL,
  `detail_barang` varchar(2000) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `dilihat` int(11) NOT NULL,
  `rekomendasi` tinyint(1) NOT NULL,
  `berat_barang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `judul`, `jenis_id`, `detail_barang`, `stok_barang`, `harga`, `gambar`, `dilihat`, `rekomendasi`, `berat_barang`) VALUES
(4, 'Starry Planet Galaxy Case Iphone 6 6s 7 8', 1, 'Spesifikasi:<br>\r\n✔️Kondisi: Baru<br>\r\n✔️ Kategori: Soft Case Handphone<br>\r\n✔️Etalase: CUTE CASE<br>', 30, '23900', '610d3e08d3e97.png', 18, 1, 2),
(10, 'Earphone TWS MCDODO True Wireless Headset Bluetooth 5.0 Waterproof', 3, 'Deskripsi:<br>\r\n✔️ Hi Fi Earphone\r\nMampu menghasilkan suara jernih dengan tingkat kebisingan dan distorsi yang minim.<br>\r\n\r\n✔️ Bluetooth 5.0\r\nMenggunakan versi bluetooth terbaru untuk kecepatan transfer data yang lebih cepat, jangkauan yang lebih luas, dan pemakaian batere yang lebih hemat.<br>\r\n\r\n✔️ Non Slip Design\r\nDesain dinamis dua arah earphone sehingga tidak mudah lepas dari telinga.<br>\r\n\r\n✔️ Waterproof and Dustproof\r\nBahan anti debu dan anti air cocok digunakan untuk olahraga ataupun kegiatan outdoor.<br>\r\n\r\n✔️ Smart Noise Reduction\r\nTeknologi kedap suara agar suara dari luar tidak terdengar masuk.<br>\r\n\r\n✔️ Smart Touch Control\r\nSatu tombol pintar touch screen untuk semua akses kontrol<br>', 35, '160000', '610d43a81ac3b.png', 2, 1, 2),
(11, 'Headset Bluetooth i7S TWS Headset wireless bluetooth earphones TWS i7s', 3, 'Deskripsi:<br>\r\n✔️ Bisa pakai wireless, untuk apa menggunakan kabel, kini telah hadir, Headset Bluetooth Wireless Sport True Earphone Airpods TWS i7s 4.2 Bluetooth.\r\n✔️ Mendapatkan sepasang headset, bisa dipakai bergantian disaat baterai yang 1lagi sudah habis.', 25, '39000', '610d441674f59.png', 1, 1, 2),
(12, 'Headset Samsung Galaxy S Original', 3, 'Deskripsi:<br>\r\n✔️Headset Samsung Original Galaxy S4 S5 J5/Note Stereo Original White, 3.5 mm, dengan  remote dan mikrofone.\r\n\r\n✔️Suara Mengagumkan\r\nKetika Anda bepergian, Headset Ini akan secara efektif memblokir suara mesin dan derau di sekitar Anda dan hanya memberi Anda musik yang terbaik. Earbud yang pas dan sangat nyaman melengkapi pengalaman Anda dalam menikmati musik serta membuat Anda semakin menikmati lagu-lagu, video, dan hiburan lain kesukaan Anda selama berjam-jam.\r\n\r\n✔️Headset ini dapat digunakan untuk semua samsung Galaxy seperti:\r\nGalaxy S, S1, S2, S3, S4, S5, Note1, Note 2, Note 3, Galaxy A, Mega, Tab dll. Dan dapat juga digunakan di hampir semua smartphone merek lain dengan jack A/V 3.5 mm', 20, '120000', '610d45509a8ef.png', 0, 0, 1),
(13, 'Full Protection Case 360° Xiaomi Redmi Note 9 Hardcase Slim Armor', 2, '✔️Kondisi: Baru<br>\r\n✔️Berat: 5 Gram<br>\r\n✔️ Kategori: Hardcase Handphone<br>\r\n✔️Etalase: CUTE CASE<br>', 25, '50000', '61358b361bfb2.jpg', 0, 1, 2),
(14, 'Case Iphone 11 Pro Casing Hybrid Transparan Matte ', 2, '✔️Semi Soft dengan bahan belakang semi transparan matte.<br>\r\n\r\n✔️Bagian semi transparan terbuat dari bahan kualitas terbaik sehingga tidak mudah berubah\r\n     warna menjadi kuning.<br>\r\n✔️Bagian samping terbuat dari soft silicon fiber untuk mencegah slip saat hp dipegang.<br>\r\n✔️Bagian camera di design lebih tinggi 0,3mm dari bagian dalam case sehingga cukup melindungi\r\n     camera.<br>\r\n✔️Bagian depan di design lebih tinggi 0,3mm dari layar sehingga cukup melindungi layar.<br>\r\n✔️Tombal on/off dan volume tertutup, 100% terlindungi.<br>\r\n✔️ Mudah di lepas maupun pasang sehingga tidak membuat hpmu lecet.<br>', 25, '65000', '61358bcd4f558.png', 1, 1, 2),
(15, 'Flip Cover Hardcase Huawei Nova 5T', 2, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Flip Cover Handphone<br>\r\n✔️Etalase: Flip cover<br>', 27, '65000', '61358d5f18b84.jpg', 3, 0, 2),
(16, 'Hardcase Fullbody Bening Iphone 11 Pro', 2, 'Deskripsi:<br>\r\n✔️Hardcase Fullbody Bening Khusus Hp Iphone 11 / 11 Pro / 11 Pro Max<br>\r\n✔️Fullbody = menutupi semua sisi<br>\r\n✔️Bahan mika bening dan Keras<br>\r\n✔️anti gores<br>', 20, '15000', '61358e3605688.jpg', 2, 0, 1),
(17, 'hardcase transparan', 2, '✔️ Kondisi: Baru<br>\r\n✔️Kategori: Flip Cover Handphone<br>\r\n✔️Etalase: Flip cover<br>\r\n<br>\r\nDeskripsi<br>\r\n1. Mulus, tidak baret, kualitas tinggi, tidak mudah pecah<br>\r\n2. barang asli<br>\r\n3. anti gores dan tahan lama<br>', 20, '20000', '61358f4dd6f64.jpg', 2, 0, 2),
(18, 'softcase hp custom motif PUBG 1', 2, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Flip Cover Handphone<br>\r\n✔️Etalase: Flip cover<br>\r\n<br>\r\nDeskripsi:<br>\r\n1. ketajaman gambar tajam<br>\r\n2. Tidak mudah luntur<br>', 20, '75000', '61358fff172d8.png', 5, 1, 2),
(19, 'Samsung Note 20 Ultra Clear Case Jelly.', 2, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Flip Cover Handphone<br>\r\n✔️Etalase: Flip cover<br>\r\n<br>\r\nDeskripsi:<br>\r\n1. Barang kualitas terbaru.<br>\r\n2.Mulus, tidak baret, kualitas tinggi, tidak mudah pecah.<br>', 30, '30000', '613590dc4ad56.jpg', 2, 0, 2),
(20, 'Supercase Casing Hardcase Samsung Galaxy A51 Stitch', 2, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Berat: 150 Gram<br>\r\n✔️Kategori: Flip Cover Handphone<br>\r\n✔️Etalase: Flip cover<br>\r\n<br>\r\nDeskripsi<br>\r\n1.Kuat dan Tahan Lama<br>\r\n2.Gambar Awet dan Tidak Akan Mudah Luntur<br>\r\n\r\n', 15, '90000', '613591eb5ea82.png', 0, 0, 2),
(21, 'Hardcase Racing', 2, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Berat: 150 Gram<br>\r\n✔️Kategori: Flip Cover Handphone<br>\r\n✔️Etalase: Flip cover<br>\r\n<br>\r\nDeskripsi<br>\r\n1.Bahan berkualitas<br>\r\n2.Menggunakan Tinta Terbaik sehingga gambar yanng terdapat pada case pelindung tidak mudah \r\n3. rapuh/ lepas<br>\r\n4.Halus dan lembut<br>\r\n5.Melindungi setiap sudut permukaan pada bagian belakang handphone<br>\r\n6.Nyaman di genggam<br>\r\n7.Tidak mudah menyerap air<br>\r\n8.Menambah fashion pada handphone anda<br>', 25, '12000', '613592dc2d698.jpg', 1, 0, 2),
(22, 'hardcase pocco', 2, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Berat: 150 Gram<br>\r\n✔️Kategori: Flip Cover Handphone<br>\r\n✔️Etalase: Flip cover<br>', 30, '20000', '613593a27bd28.jpg', 0, 1, 2),
(23, 'Heavencase Case Casing Vivo V17 Pro Case Softcase Motif Cookie Monster', 2, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Berat: 140 Gram<br>\r\n✔️Kategori: Flip Cover Handphone<br>\r\n✔️Etalase: Flip cover<br>\r\n<br>\r\n   Deskrips:<br>\r\n- Lentur elastis\r\n- Durable dengan fungsi peredam benturan dan getaran di masing-masing sudut Case\r\n- Pasti Pas Lubang yg presisi. tidak akan Menggangu keluar kamera selfie\r\n- Tombol empuk', 20, '30000', '613595c952718.png', 0, 0, 3),
(24, 'VIVO V17 PRO CASE', 2, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Berat: 150 Gram<br>\r\n✔️Kategori: Flip Cover Handphone<br>\r\n✔️Etalase: Flip cover<br>\r\n<br>\r\nDeskripsi<br>\r\n1.Bahan berkualitas<br>\r\n2.Menggunakan Tinta Terbaik sehingga gambar yanng terdapat pada case pelindung tidak mudah \r\n3. rapuh/ lepas<br>\r\n4.Halus dan lembut<br>\r\n5.Melindungi setiap sudut permukaan pada bagian belakang handphone<br>', 26, '75000', '613596dc01abd.png', 0, 0, 2),
(25, 'Case iPhone 11/11 Pro/11 Pro Max Hybrid Matte Transparent', 2, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️ Berat: 50 Gram<br>\r\n✔️ Kategori: Soft Case Handphone<br>\r\n✔️ Etalase: Semua Etalase<br>\r\n<br>\r\nDeskripsi:<br>\r\n1. Case iPhone 11 / 11 Pro / 11 Pro Max Hybrid Matte With Lens Protection\r\n', 30, '25000', '61359b82c3397.jpg', 0, 0, 2),
(26, 'Case iPhone 11 Pro Max', 2, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️ Berat: 50 Gram<br>\r\n✔️ Kategori: Soft Case Handphone<br>\r\n✔️ Etalase: Semua Etalase<br>\r\n<br>\r\nDeskripsi:<br>\r\n1.Case Blackdoff terbuat dari silikon yang memberikan jaminan drop protection. Desainnya sangat\r\n   simple, presisi dan matte membuat iPhone anda tidak licin saat digenggam.<br>\r\n2.Pada setiap bagian case Blackdoff didesain dengan menambahkan empat Reinforced Corner\r\n   Extra Shock Absorption dengan tujuan lebih menambah kekuatan dan perlindungan gadget dari\r\n   dampak benturan saat terjatuh.<br>', 20, '100000', '61359e7d8a17c.jpeg', 1, 0, 2),
(27, 'Case Iphone 11 Pro', 2, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️ Kategori: Soft Case Handphone<br>\r\n✔️ Etalase: Semua Etalase<br>\r\n', 28, '35000', '61359fca80381.png', 0, 0, 2),
(28, 'Baseus Universal 360 Ring Holder', 3, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️ Kategori: Aksesoris Handphone<br>\r\n<br>\r\nDeskripsi:<br>\r\n1.Terbuat dari paduan seng premium<br>\r\n2.Melalui sejumlah proses, termasuk pengamplasan, pemolesan, elektroplating dan sebagainya<br>\r\n3.Membantu mencegah penurunan ponsel dan membuatnya nyaman untuk menyentuh layar selebar\r\n    mungkin dengan satu tangan<br>', 20, '65000', '6135a12cefc58.jpg', 0, 1, 2),
(29, 'dompet anti radiasi.', 3, 'Spesifikasi:<br>\r\n✔️Kondisi: Baru<br>\r\n✔️Etalase: Hot Sale<br>\r\n<br>\r\nDeskripsi:<br>\r\n1. Desain ganda khusus, tas pra untuk mengurangi radiasi, tas pos sepenuhnya terlindung sinyal.<br>\r\n2. Respon cepat, fungsi yang andal, ponsel ke dalam tas selama 30 detik untuk memainkan peran\r\n    melindungi sinyal elektromagnetik.<br>\r\n3. Penggunaan berbagai macam, berlaku untuk berbagai GSM, CDMA, PHS, penggunaan ponsel.<br>\r\n', 20, '120000', '6135a26be8803.jpg', 1, 1, 2),
(30, 'YKCS 0394 VIVO Y91C soft case ', 1, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Softcase Handphone<br>\r\n✔️Etalase: Flip cover<br>', 20, '20000', '613d734774c7c.jpg', 0, 0, 2),
(31, 'Softcase Leather Iphone 6,7,8 ', 1, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Softcase Handphone<br>\r\n✔️Etalase: Flip cover<br>', 20, '25000', '613d7403a2434.jpg', 0, 0, 2),
(32, 'Softcase Realme motif sepatu', 1, 'Spesifikasi:<br>\r\n✔️    Kondisi: Baru<br>\r\n', 15, '25000', '613d74441fb63.jpg', 0, 0, 2),
(33, 'CASA Leather Softcase Vivo Y12', 1, 'Spesifikasi:<br>\r\n✔️    Kondisi: Baru<br>', 30, '20000', '613d748ec3525.png', 0, 0, 2),
(34, 'Casing iPhone 7 Plus 8 Plus So', 1, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Softcase Handphone<br>\r\n✔️Etalase: Flip cover<br>', 25, '30000', '613d74c701362.jpg', 0, 1, 2),
(35, 'Softcase candy', 1, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Softcase Handphone<br>\r\n✔️Etalase: Flip cover<br>', 20, '35000', '613d74fd7ec2c.jpg', 0, 1, 1),
(36, 'SOFTCASE MOTIF FLAMINGO', 1, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Softcase Handphone<br>\r\n✔️Etalase: Flip cover<br>', 26, '50000', '613d753b7b155.jpg', 0, 1, 2),
(37, 'sofcase reimbow', 1, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Softcase Handphone<br>\r\n✔️Etalase: Flip cover<br>', 15, '35000', '613d7583aac4b.jpg', 0, 1, 2),
(38, 'softcase REALME 7PRO Case', 1, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Softcase Handphone<br>\r\n✔️Etalase: Flip cover<br>', 20, '13000', '613d75ba1c31a.jpg', 0, 0, 2),
(39, 'Softcase-Xiaomi-Redmi-5A', 1, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori:Aksesoris  Handphone<br>\r\n✔️Etalase: Flip cover<br>', 30, '11000', '613d75ef88239.png', 0, 1, 2),
(40, 'softcase custom all type', 1, 'Spesifikasi:<br>\r\n✔️     Kondisi: Baru<br>', 28, '25000', '613d761dbba67.png', 0, 1, 2),
(41, 'Gorilla Pod L Large Big Tripod', 3, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Aksesoris Handphone<br>\r\n✔️Etalase: Flip cover<br>', 30, '23000', '613d76555e93d.png', 0, 1, 4),
(42, 'Joyseus HP0002 P47 Headset Wir', 3, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Aksesoris  Handphone<br>\r\n✔️Etalase: Flip cover<br>\r\n ✔️ Brand  :Joyseus\r\n ✔️   Tipe     :Bluet', 20, '100000', '613d769d7317c.png', 0, 1, 2),
(43, '100000', 3, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Aksesoris Handphone<br>\r\n✔️Etalase: Flip cover<br>', 15, '18000', '613d76db24537.png', 0, 0, 1),
(44, 'POWERBANK UNICORN KARAKTER 500', 3, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Aksesoris Handphone<br>\r\n✔️Etalase: Flip cover<br>', 18, '55000', '613d774ea67bd.jpg', 0, 1, 50),
(45, 'Portable Penggulung Kabel Otom', 3, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Aksesoris Handphone<br>\r\n✔️Etalase: Flip cover<br>', 20, '50000', '613d778f695ce.png', 0, 1, 3),
(46, 'Pelindung Ujung Kabel Data', 3, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: Aksesoris Handphone<br>\r\n✔️Etalase: Flip cover<br>', 20, '12000', '613d77d015884.jpg', 0, 0, 5),
(47, 'Kipas Angin Mini Handphone Por', 3, 'Spesifikasi:<br>\r\n✔️ Kondisi: Baru<br>\r\n✔️Kategori: aksesoris Handphone<br>\r\n✔️Etalase: Flip cover<br>', 25, '10000', '613d78059440c.jpg', 0, 1, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `harga_c` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `status_c` varchar(225) NOT NULL,
  `status_b` varchar(225) NOT NULL,
  `pembayaran_id` varchar(100) DEFAULT NULL,
  `upload_bukti` varchar(100) NOT NULL,
  `id_kirim` varchar(225) DEFAULT NULL,
  `ket` varchar(250) DEFAULT NULL,
  `no_order` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id_cart`, `id_produk`, `id_pembeli`, `harga_c`, `qty`, `status_c`, `status_b`, `pembayaran_id`, `upload_bukti`, `id_kirim`, `ket`, `no_order`) VALUES
(1, 4, 21, 23900, 1, 'Ter Checkout', 'Belum Ter Konfirmasi', '2', '', '', '', 'NOB0001'),
(2, 4, 21, 23900, 1, 'Ter Checkout', 'Belum Ter Konfirmasi', '2', '', '', '', 'NOB0002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`) VALUES
(1, 'Softcase'),
(2, 'hardcase'),
(3, 'aksesoris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` int(11) NOT NULL,
  `nama_layanan` varchar(250) NOT NULL,
  `tarif` varchar(250) NOT NULL,
  `estimas` varchar(250) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `nama_layanan`, `tarif`, `estimas`, `produk_id`, `user_id`) VALUES
(1, 'REG', '36000', '1-1', 4, 21),
(2, 'Paket Kilat Khusus', '68000', '2 HARI', 4, 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `kode` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `kode`, `keterangan`) VALUES
(1, '881 08574827 5403', 'BCA'),
(2, '881 08574827 5413', 'BRI'),
(3, '', 'COD');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id_pengiriman` int(11) NOT NULL,
  `pengiriman` varchar(225) NOT NULL,
  `resi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `pengiriman`, `resi`) VALUES
(1, 'JNE - CTC (1-2 hari) Rp. 10.000', ''),
(3, 'JNE - CTCYES (1 hari) Rp. 10.000', ''),
(4, 'JNE - EZ Rp. 10.000', ''),
(6, 'JNE - CTCYES (5 hari) Rp. 11.000', '669879');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `nama`, `bulan`, `nominal`) VALUES
(1, 'anto', 'januari', 100000),
(2, 'anto', 'januari', 250000),
(3, 'anto', 'februari', 300000),
(4, 'anto', 'februari', 100000),
(5, 'dian', 'februari', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `nama_p` varchar(225) NOT NULL,
  `alamat_p` varchar(225) NOT NULL,
  `telepon_p` varchar(15) NOT NULL,
  `email_p` varchar(225) NOT NULL,
  `kode_pos` varchar(225) NOT NULL,
  `tanggal_tf` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `asal` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pembeli`, `nama_p`, `alamat_p`, `telepon_p`, `email_p`, `kode_pos`, `tanggal_tf`, `asal`, `tujuan`) VALUES
(1, 21, 'faiz sulaiman', 'banten', '08380567228', 'sulaiman@gmail.com', '16830', '2021-09-16 12:30:16', 'Balikpapan, Kalimantan Timur', 'Bogor, Jawa Barat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(225) NOT NULL,
  `role` enum('Admin','Pembeli') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `password`, `jenis_kelamin`, `role`) VALUES
(1, 'RIFKI KURNIA AJI', 'rkurniaaji', 'c6f057b86584942e415435ffb1fa93d4', 'Laki-Laki', 'Admin'),
(18, 'Dinda Ayu Oka', '', 'c6f057b86584942e415435ffb1fa93d4', 'Perempuan', 'Pembeli'),
(19, 'dwipayana', '', '34b268a1fbbbe2f4607d6430e36bbe81', 'Laki-Laki', 'Pembeli'),
(20, 'ferri hendrawan', '', '1ed1fd0860a02272a5096ce338e7ec95', 'Laki-Laki', 'Pembeli'),
(21, 'tri', '', '81dc9bdb52d04dc20036dbd8313ed055', 'Laki-Laki', 'Pembeli');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
