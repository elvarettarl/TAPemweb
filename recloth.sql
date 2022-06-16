-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2022 pada 15.52
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recloth`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email_admin` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `email_admin`, `password`, `nama_admin`, `id_level`) VALUES
(3, 'rizal', 'haha', 'Rizal Agus', 1),
(4, 'ighfar', 'haha', 'ighfar', 1),
(5, 'riyan', 'riyan', 'riyan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'jaket'),
(2, 'kaos'),
(3, 'kemeja'),
(4, 'celana'),
(5, 'lain-lain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id_level`, `nama_level`) VALUES
(1, 'Admin'),
(2, 'Pembeli'),
(3, 'Penjual');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `email_pembeli` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `kelas`, `email_pembeli`, `password`, `id_level`) VALUES
(2, 'elva', 'pemweb-d', 'elva', 'haha', 2),
(6, 'riyan', 'pemweb-d', 'riyan', 'haha', 2),
(7, 'Adib', 'pemweb-d', 'Adib', 'haha', 2),
(8, 'Rizal', 'pemweb-d', 'rizal', '123', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjual`
--

CREATE TABLE `penjual` (
  `id_penjual` int(11) NOT NULL,
  `nama_penjual` varchar(30) NOT NULL,
  `email_penjual` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjual`
--

INSERT INTO `penjual` (`id_penjual`, `nama_penjual`, `email_penjual`, `password`, `id_level`) VALUES
(1, 'Wirda', 'Wirda', 'haha', 3),
(2, 'Mansur', 'Mansur', 'haha', 3),
(3, 'ighfar', 'ighfar', 'haha', 3),
(4, 'budi', 'budi', 'budi', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_penjual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `stok`, `deskripsi`, `gambar`, `id_kategori`, `id_penjual`) VALUES
(2, 'Kemeja FourReason (barang baru)', 35000, 4, 'Kualitas PremiumReady: L(minus luntur warna), M', 'TSS-kemeja1.jpg', 3, 3),
(4, 'Kaos Polos H&M Putih', 12000, 3, 'Bahan soft\r\nKualitas Premium\r\nAll size fit to M', 'TSS-kaos1.jpg', 2, 1),
(5, 'Celana Wanita Kain Cream', 33000, 8, 'Kualitas Premium\r\nMade by Maulmiese\r\nLike new', 'TSS-celana1.jpg', 4, 3),
(6, 'Bomber Hitam Berskha Allsize', 32500, 1, 'Kualitas Import\r\nBahan Premium\r\nAllsize fit to L', 'TSS-jaket3.jpg', 1, 2),
(7, 'Jaket Gunung Space Grey', 60000, 1, 'Kualitas Import\r\nBahan Premium Satin\r\nLike new', 'TSS-jaket4.jpg', 1, 2),
(8, 'Jaket Zipper Maroon', 35000, 2, 'Full Premium Import, Allsize', 'TSS-jaket5.jpg', 1, 1),
(10, 'Jaket Zipper Zara Yellow Neon', 23000, 1, 'Kualitas Premium Import\r\nAllsize\r\nMinus noda di bagian bahu', 'TSS-jaket1.jpg', 1, 2),
(11, 'Kaos Putih UNIQLO', 11000, 2, 'Premium\r\nminus gambar luntur\r\ngratis ongkir', 'TSS-kaos2.jpg', 2, 2),
(12, 'Kaos Hitam Polos UNISEX Dior', 149999, 1, 'Real Pic Dior\r\nUNISEX\r\nAll size fit to M', 'TSS-kaos3.jpg', 2, 1),
(13, 'Kaos Pria Hitam Pull&Bear', 31000, 1, 'Premium\r\nLike new\r\nAll size fit to M', 'TSS-kaos4.jpg', 2, 2),
(14, 'Kaos Putih Wanita Calvin Klein Jeans', 135000, 1, 'Kualitas premium\r\nbaru dipakai 1 bulan\r\nreal pic', 'TSS-kaos5.jpg', 2, 3),
(15, 'Kemeja Fourseason Likenew', 35000, 1, 'Likenew\r\nPemakaian kurang dari 2 minggu', 'TSS-kemeja2.jpg', 3, 1),
(16, 'Kemeja Polos Alisan', 15000, 4, 'Ready: Peach (M), Perfect Red (S,M,L)', 'TSS-kemeja3.jpg', 3, 2),
(17, 'Kemeja Polos Alisan Cacat', 9000, 1, 'Ready: Peach (M,XL)\r\nminus kaputan tidak rapi terbuka bagian ketiak', 'TSS-kemeja4.jpg', 3, 2),
(18, 'Celana Slim Pensil Wanita Jeans Sky Blue', 60999, 4, 'Kualitas Premium\r\nMade by Maulmiese\r\nMinus garis di bagian lutut belakang', 'TSS-celana2.jpg', 4, 3),
(19, 'Jeans Blue Wanita Allsize', 60000, 2, 'Premium\r\nALl size fit to XL', 'TSS-celana3.jpg', 4, 1),
(20, 'Celana Kulot Putih Allsize', 32500, 1, 'Kualitas Premium\r\nPutih Bening\r\nAllsize fit to M', 'TSS-celana4.jpg', 4, 2),
(21, 'Celana Kain Formal Hitam UNISEX', 45000, 1, 'Kualitas Like new\r\nno minus\r\nreal pic', 'TSS-celana5.jpg', 4, 3),
(22, 'a', 10000, 1, 'a', 'TSS-kemeja61.jpg', 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `waktu`, `id_produk`, `jumlah`, `total`, `id_pembeli`, `status`) VALUES
(4, '2019-12-03 09:28:49', 2, 2, 20000, 2, 'proses'),
(5, '2019-12-03 09:28:49', 3, 2, 4000, 6, 'proses'),
(6, '2019-12-03 09:28:49', 3, 1, 2000, 6, 'proses'),
(7, '2019-12-03 09:28:49', 4, 1, 30000, 6, 'proses'),
(8, '2019-12-03 09:28:49', 3, 2, 4000, 6, 'proses'),
(9, '2019-12-03 09:28:49', 3, 1, 2000, 6, 'proses'),
(10, '2019-12-03 09:28:49', 3, 1, 2000, 6, 'proses'),
(11, '2019-12-03 09:28:49', 4, 1, 30000, 6, 'proses'),
(12, '2019-12-03 09:28:49', 5, 1, 5000, 8, 'proses'),
(13, '2019-12-03 09:28:49', 3, 1, 2000, 8, 'proses'),
(14, '2019-12-04 08:10:34', 6, 1, 3000, 8, 'Diterima'),
(15, '2019-12-04 08:06:16', 3, 1, 2000, 8, 'Diterima'),
(16, '2019-12-03 09:27:26', 7, 1, 4000, 8, 'Proses'),
(17, '2019-12-03 03:33:46', 7, 1, 4000, 8, 'proses'),
(18, '2022-06-03 23:37:32', 15, 1, 35000, 2, 'Proses'),
(19, '2022-06-03 23:41:42', 6, 1, 32500, 2, 'Proses'),
(20, '2022-06-07 02:56:18', 17, 1, 9000, 2, 'Proses'),
(21, '2022-06-07 02:56:18', 5, 1, 33000, 2, 'Proses');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_level` (`id_level`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`),
  ADD KEY `id_level` (`id_level`);

--
-- Indeks untuk tabel `penjual`
--
ALTER TABLE `penjual`
  ADD PRIMARY KEY (`id_penjual`),
  ADD KEY `id_level` (`id_level`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_user` (`id_penjual`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_pembeli` (`id_pembeli`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `penjual`
--
ALTER TABLE `penjual`
  MODIFY `id_penjual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `level` (`id_level`);

--
-- Ketidakleluasaan untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD CONSTRAINT `pembeli_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `level` (`id_level`);

--
-- Ketidakleluasaan untuk tabel `penjual`
--
ALTER TABLE `penjual`
  ADD CONSTRAINT `penjual_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `level` (`id_level`);

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `produk_ibfk_2` FOREIGN KEY (`id_penjual`) REFERENCES `penjual` (`id_penjual`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
