-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03 Nov 2018 pada 12.58
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faras`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `gambar`, `deskripsi`) VALUES
(4, 'Kangkung', 'kangkung.jpg', 'Bisa ditanam dengan menancapkan akar ke tanah\r\n'),
(6, 'Jamur', '5bdaf6663354e.jpg', 'Jamur warna putih\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `content`
--

CREATE TABLE `content` (
  `id_content` varchar(50) NOT NULL,
  `n_user` varchar(50) NOT NULL,
  `con_type` varchar(10) NOT NULL,
  `con_pic` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `id_like` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `content`
--

INSERT INTO `content` (`id_content`, `n_user`, `con_type`, `con_pic`, `deskripsi`, `id_like`) VALUES
('a.jpg', 'arema', 'image', 'a.jpg', 'Bismillah iso PSG', 0),
('individu-2.png', 'asd', 'image', 'individu-2.png', 'zcxcz', 0),
('winter-soldier.jpg', 'asd', 'image', 'winter-soldier.jpg', 'qeqweq', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `follow`
--

CREATE TABLE `follow` (
  `n_user` varchar(50) NOT NULL,
  `jumlah_followers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `follow`
--

INSERT INTO `follow` (`n_user`, `jumlah_followers`) VALUES
('aaaaaaaaaaaa', 1),
('arema', 0),
('aremania', 0),
('asd', 0),
('faras', 1),
('hazims', 1000),
('kevin', 0),
('razer7119', 0),
('sabre', 0),
('www', 111),
('zidan', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `id_content` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `id_like` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `likes`
--

INSERT INTO `likes` (`id_content`, `username`, `id_like`) VALUES
('a.jpg', 'razer7119', 3),
('a.jpg', 'zidan', 4),
('a.jpg', 'kevin', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nama` varchar(50) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nama`, `telepon`, `email`, `foto`, `password`, `level`) VALUES
('admin', '0986678007558', 'admin@gmail.com', '', 'd65c81cf756151229c67d150eac28fd6', 'admin'),
('arema', '2147483647', 'arem@1987', '', 'e98f98533b3c45e76a1c1a9c8db75a88', 'user'),
('aremania', '081338874513', 'asdsad@gmial.com', '', '45315759ba6d418af825bb72852dde31', 'user'),
('asd', '242', 'handy7119@gmail.c', '', '589b0db3cb6aa8613709e7260299dbb7', 'user'),
('faras', '2147483647', 'hazim@gmail.com', '', '3434a1320a58de575de72e6cd6cdb8a1', 'user'),
('hazims', '0988337', 'hazims@gmail.com', '', '3f096cca249a5c6062602fb9a10a0fd1', 'user'),
('kevin', '23423', 'kevin@gmail.com', '', '589b0db3cb6aa8613709e7260299dbb7', 'user'),
('razer7119', '089658825267', 'heru@gmail.com', 'individu-2.png', '589b0db3cb6aa8613709e7260299dbb7', 'user'),
('sabre', '09445823456', 'sabre@email.com', '', 'fad8437f76de0b081f59f9a016412378', 'user'),
('www', '2147483647', 'w@a', '', 'dac9abd69f6c3fb61ad20304b738ccb4', 'user'),
('zidan', '123', 'kevin@gmail.com', '', '589b0db3cb6aa8613709e7260299dbb7', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id_content`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`n_user`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id_like`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nama`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id_like` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
