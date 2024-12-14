-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Des 2024 pada 11.38
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_astronacci`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `userId` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `userId`, `createdAt`, `updatedAt`) VALUES
('0d6e4d17-4ab5-4c8e-8422-427a45c5cf84', 'Article Title 2', 'This is the content of article 2.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('15140844-b9fe-40d4-b312-b2e4d66947f9', 'Article Title 19', 'This is the content of article 19.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('1a73dd21-a893-4dd8-a75f-11e4ff50a152', 'Article Title 9', 'This is the content of article 9.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('28c6929e-5cc3-42d9-ab9a-ca2d077ce509', 'Article Title 10', 'This is the content of article 10.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('29b1fe9e-b484-46ea-a954-9891b9a55a11', 'Article Title 18', 'This is the content of article 18.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('2a962600-91e9-4333-9295-4704c179ad40', 'Article Title 8', 'This is the content of article 8.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('3f6aa464-c485-4b1f-b7ab-2963cb07ba37', 'Article Title 7', 'This is the content of article 7.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('51ea1dee-10c5-44a9-8fd0-7915756a2e1b', 'Article Title 13', 'This is the content of article 13.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('604ff7ad-8ef6-4a65-b63e-b0f4bca72d96', 'Article Title 17', 'This is the content of article 17.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('690514cf-6948-4933-a31b-0f3a310efccf', 'Article Title 15', 'This is the content of article 15.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('7c4dd823-c8f9-4216-8f3d-957077713add', 'Article Title 4', 'This is the content of article 4.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('810dd7a6-f4a9-4f27-9872-6dd182960764', 'Article Title 16', 'This is the content of article 16.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('8c63d06a-c9eb-4eaa-9ea7-d6ac031fd734', 'Article Title 6', 'This is the content of article 6.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('9803f4b5-453d-44cd-8788-6a35f45c7425', 'Article Title 12', 'This is the content of article 12.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('9824311c-8853-4a8f-b201-0a4c1fc018a7', 'Article Title 20', 'This is the content of article 20.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('af61bd53-9a6d-4efd-a9ae-c38c1681346c', 'Article Title 11', 'This is the content of article 11.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('bee4a5a1-b08f-4073-b31a-6a39b2febcb8', 'Article Title 1', 'This is the content of article 1.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('cba06119-32a9-4dcc-81bd-6628f942f05b', 'Article Title 14', 'This is the content of article 14.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('d84f76ed-679c-410f-be33-689ab4a5f83c', 'Article Title 3', 'This is the content of article 3.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('f0e1bc25-f54e-44e6-9d70-d72a5c051d13', 'Article Title 5', 'This is the content of article 5.', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type_membership` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type_membership`, `createdAt`, `updatedAt`, `picture`) VALUES
('6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', 'arif', 'arif@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$igDCrbQTZX3EClwZldSjFw$gOghuA1R7P9FHSOiGFauRP9VeECkKhZtHdYNMN1nStQ', 'type-c', '2024-12-11 16:56:20', '2024-12-11 16:56:20', NULL),
('9bc5c12c-0e4b-47b4-9ed2-70b439c37fb4', 'arif-2', 'arif-2@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$h/wCefyzeL9Mtqf3W4i4jw$QaAV+qaSSqjrvNonNvngbscXRFOc3zjUqIKQdpXsgQw', 'type-a', '2024-12-12 12:32:21', '2024-12-12 12:32:21', NULL),
('9f9b7185-826f-4295-8805-43883118b887', 'arif-1', 'arif-1@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$eoQREQ3z9JvStlpEnNxABw$Hca5mO0Yas2zP0RrR/YGZNEMkhIPRSpDHY01KXQsBqY', 'type-b', '2024-12-12 12:32:11', '2024-12-12 12:32:11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos`
--

CREATE TABLE `videos` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `videos`
--

INSERT INTO `videos` (`id`, `title`, `url`, `userId`, `createdAt`, `updatedAt`) VALUES
('194f317b-a7be-4126-b7e1-7d1c5cfb0c7f', 'Video Title 10', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('22eeb0c5-97e6-4de5-b9ee-de0f4b28f599', 'Video Title 3', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('2ab9d8cd-009c-4743-9009-8a21a55f19c7', 'Video Title 4', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('359a709f-786b-4ee5-989b-21a527303890', 'Video Title 12', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('3dc2a69d-eabc-4b2e-93d4-5fc08d17cc7a', 'Video Title 2', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('41251e94-7ba3-4ccb-b102-7b121ca6769a', 'Video Title 15', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('505aeaa9-140d-49bb-a06b-86e8d6a7efa3', 'Video Title 9', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('5473e856-6508-44ca-8c45-8eb45aadd709', 'Video Title 19', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('5ec6826a-1033-4cb9-af61-f0181ad57eae', 'Video Title 7', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('773f6559-f5d8-45fb-976b-94798ef577d1', 'Video Title 17', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('7dbeec7c-7bff-41ad-aba7-b75825a9076d', 'Video Title 11', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('8baaf4c6-ee53-4306-ac65-f22205ff5c90', 'Video Title 18', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('8c4afe81-ef6d-4511-8527-36d012847a16', 'Video Title 6', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('a0c0e19a-60be-4344-a2f0-ba2c6ffec28d', 'Video Title 20', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('a34a1b01-1088-4dc7-833c-12b9557211df', 'Video Title 1', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('aa6371c4-797b-4bf9-bdf9-407058efb57e', 'Video Title 8', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('b63df0ce-b2d1-4e4c-adfa-36b27a8acb58', 'Video Title 5', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('b72d4d54-386f-4ff1-9361-5bf367b25555', 'Video Title 14', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('cf03858c-f3e9-4a73-a192-eeba5fd89a36', 'Video Title 13', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56'),
('fc7c12d3-d746-41d4-83d4-2731e5356b03', 'Video Title 16', 'https://www.youtube.com/embed/9xwazD5SyVg?si=90uB48buHDrTTjqq', '6af626a5-fcc4-47f2-bfe0-d4ccbf8ee4aa', '2024-12-12 17:40:56', '2024-12-12 17:40:56');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
