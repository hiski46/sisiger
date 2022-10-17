-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 17 Okt 2022 pada 21.07
-- Versi server: 10.5.17-MariaDB-cll-lve
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `n1604346_siger`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `archive_article`
--

CREATE TABLE `archive_article` (
  `aaCode` bigint(20) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `articleCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `archive_tour`
--

CREATE TABLE `archive_tour` (
  `atCode` bigint(20) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `tourCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `archive_tour`
--

INSERT INTO `archive_tour` (`atCode`, `userCode`, `tourCode`, `createAt`, `updateAt`, `deleteAt`) VALUES
(3, 3, 3, '2022-10-14 23:20:06', '2022-10-14 23:20:06', NULL),
(4, 8, 1, '2022-10-16 13:59:30', NULL, NULL),
(10, 6, 3, '2022-10-16 19:57:58', NULL, NULL),
(11, 6, 4, '2022-10-16 19:58:17', NULL, NULL),
(12, 9, 2, '2022-10-16 22:56:41', NULL, NULL),
(15, 10, 1, '2022-10-17 04:34:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `articleCode` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`articleCode`, `title`, `url`, `description`, `createAt`, `updateAt`, `deleteAt`) VALUES
(1, 'asdasdsda', 'assdaasdasd', 'asdasdasdasd', '2022-09-20 13:46:38', NULL, '2022-09-20 13:46:53'),
(2, 'Temiangan Hills', 'https://www.instagram.com/p/CQIPJVDgGup/', 'Selamat Pagi\r\nKham Seunyinni\r\nTabik Pun\r\n.\r\n\r\nPosted @withregram • @fransfx_lpg Perjalanan Diatas Awan\r\nLokasi ini menantang, mesti naik ojek dengan medan curam dan licin,\r\nTidur di tenda, dan pagi2 terbayar dengan pemandangan yang luar biasa\r\nLokasi @temianganhill_official\r\nModel @chillasmith11\r\nGown @lusi_sanggarrias\r\n\r\n#lampungbarat\r\n#lampung\r\n#lampungberjaya\r\n#pariwisatalampungbarat\r\n#pariwisatalampung\r\n#lampungthetreasureofsumatra\r\n#lampungberjaya\r\n#pesonaindonesia\r\n#wonderfulindonesia', '2022-09-20 13:48:34', NULL, NULL),
(3, 'webinar Dinas Pariwisata dan Ekonomi Kreatf Provinsi Lampung \"Peluang Parekraf di Tengah Pandemi\"', 'https://www.instagram.com/p/CPrr_YOgkmR/', 'Selamat Pagi\r\nKham Seunyinni\r\nTabik Pun\r\n.\r\n\r\n?Haaaiii!! GENERIK (Generasi Internet Asik) para milenial muda yang kreatif dan inovatif, pelaku pariwisata dan ekonomi kreatif, mahasiswa, dan masyarakat umum...\r\n\r\nTabikpuun...\r\nJoin webinar Dinas Pariwisata dan Ekonomi Kreatf Provinsi Lampung @pariwisata_lampung yaa..\r\nTanggal 16 Juni 2021\r\nPukul 13.00-16.30 WIB .\r\nLinknya tertera di video yapp! atau bisa langsung klik di sini ??\r\nhttp://bit.ly/RegistrasiWebinarGenerik\r\n.\r\nKali ini tema yang akan dibahas oleh para narsum tentang ?Peluang Parekraf di Tengah Pandemi? .\r\n????By\r\n1. Elkana Arlen Riswan\r\n(Founder El’s Coffee dan Kopi Ketje)\r\n@elky23\r\n\r\n2. Arif Darmawan\r\n(Restu Bumi Adventure, Warung Restu Murni, dan Warung Sudirman) @mapanjigarasakan\r\n\r\n3. Rejive Dewangga\r\n(Founder Edukasi 4.0 dan Forum 4.0) @mrejive\r\n.\r\nWebinar ini dipandu oleh MC kece nan keren yaitu Muli Prov. Lampung 2020 ???? @megadianaz\r\n\r\nDAANN!! pastinya bakal ada GIVEAWAY menarik lho!!! ????????????\r\n.\r\nSo? What do you waiting for?\r\nKeep in touch with us by join and register the Webinar ????\r\n.\r\nFollow @pariwisata_lampung and @_pesonalampung for further information! ?\r\n.\r\n?Supported by:\r\nEl’s Coffee @elscoffee.house\r\nWarung Restu Murni @pindangkepalasimba\r\nBli Kopi\r\nSegoreng\r\nBanabee\r\nKeripik Shinta @keripikolehshinta\r\n\r\n@pemprovlampung_\r\n@pemprov.lampung\r\n@arinal_djunaidi\r\n@mbak_nunik\r\n@pariwisata_lampung\r\n@edarwan1962\r\n@lyanda_melly\r\n.\r\n#pariwisata #ekonomikreatif #webinar #milenial #pariwisatalampung #lampungberjaya #lampung #lampungthetreasureofsumatra #wonderfulindonesia #pesonaindonesia', '2022-09-20 13:49:10', NULL, NULL),
(4, 'Selamat Hari Kartini 21 April 2021', 'https://www.instagram.com/p/CN5u1dAAh7N/', 'Selamat Pagi\r\nKham Seunyinni\r\nTabik Pun\r\n.\r\nSelamat Hari Kartini\r\n21 April 2021\r\n\r\nHabis Gelap\r\nTerbitlah Terang\r\n\r\nSemoga Semangat\r\nRA. Kartini selalu menginspirasi\r\nkaum wanita di Indonesia\r\n.\r\nDengan semakin banyaknya\r\nKaum Wanita yang sukses\r\nberkiprah dan berkarya di\r\nRepublik ini.\r\n.\r\nMaju Terus Perempuan Indonesia\r\n.\r\n@pemprovlampung_\r\n@pemprov.lampung\r\n@arinal_djunaidi\r\n@rianasariarinal\r\n@mbak_nunik\r\n@pariwisata_lampung\r\n@edarwan1962\r\n.\r\n#harikartini\r\n#pariwisatalampung\r\n#lampung\r\n#lampungberjaya\r\n#lampungthetreasureofsumatra\r\n#pesonaindonesia #wonderfulindonesia', '2022-09-20 13:49:29', '2022-09-20 13:50:46', NULL),
(5, 'AYUDIA DAN JALAN PULANGNYA', 'https://dinaspariwisata.lampungprov.go.id/berita/detail/ayudia-dan-jalan-pulangnya', 'Tabik pun..\r\n\r\nSineas Indie Lampung dengan bangga mempersembahkan sebuah karya Lokal Lampung Keren yang layak untuk kita apresiasi bersama, sebuah film drama yang juga banyak menampilkan keindahan panorama Lampung.\r\n\r\nBerkisah tentang seorang gadis yang dibesarkan oleh tantenya, Ayudia tumbuh sebagai anak yang kekurangan kasih sayang orang tua. Cerita buruk tentang Ayah kandungnya memberi pandangan yang tidak baik tentang masa lalunya. Setelah serangkaian hubungan rumit dengan tantenya, Ayudia memutuskan mencari Ayah kandungnya meskipun ia sendiri bimbang, apakah ingin balas dendam atau menaruh harap bisa dinikahkan dengan calon suaminya.\r\n \r\n\r\nMau tau kelanjutannya? Yuk, kita tonton bersama di bioskop terdekat!', '2022-09-20 13:50:52', NULL, NULL),
(6, 'Lampung Masuk 3 Besar Brand Pariwisata Anugerah Pesona Indonesia', 'https://medialampung.co.id/lampung-masuk-3-besar-brand-pariwisata-anugerah-pesona-indonesia/', 'Medialampung.co.id – Pemerintah Provinsi (Pemprov) Lampung dalam hal ini diwakili Dinas Pariwisata dan Ekonomi Kreatif Provinsi Lampung memberikan apresiasi sangat tinggi kepada seluruh masyarakat Lampung yang telah membatu memberikan dukungan di berbagai sosial media (sosmed) sehingga brand pariwisata Lampung terpilih masuk dalam kategori tiga besar brand Pariwisata Anugerah Pesona Indonesia 2020, yakni The Treasure of Sumatra.\r\n\r\n“Harapannya nanti Lampung akan memperoleh peringkat terbaik. Hal tersebut tidak luput dari doa dan dukungan masyarakat Lampung,” kata Kepala bidang (Kabid) Pemasaran Dinas Pariwisata dan Ekonomi Kreatif Provinsi Lampung Meli Ayunda saat dimintai keterangan, Rabu (10/2).', '2022-09-20 13:52:02', NULL, NULL),
(7, 'Lampung Wajib Ikut Pemberlakukan Pembatasan Kegiatan Masyarakat Mikro Hingga 3 Mei', 'https://lampungpro.co/post/33225/lampung-wajib-ikut-pemberlakukan-pembatasan-kegiatan-masyarakat-mikro-hingga-3-mei', 'JAKARTA (Lampungpro.co): Pemerintah pusat meminta Provinsi Lampung ikut Pemberlakukan Pembatasan Kegiatan Masyarakat (PPKM) dan PPKM Berbasis Mikro (PPKM Mikro) hingga 3 Mei 2021. Lampung menjadi satu dari lima provinsi yang ikut PPKM Mikro diperluas bersama Sumaetra Barat, Jambi, Kepulauan Bangka Belitung, dan Kalimantan Barat.\r\n\r\nAcara pembukaan toko baru - Diskon hingga 90% hari ini\r\n\r\nBodyguard terbaik! Diizinkan di Indonesia!\r\n\r\nKejut listrik ampuh yang mengalahkan semua lawan dalam hitungan detik!\r\n\r\nSenjata legal yang kuat. Beli sebelum dilarang!\r\n\r\nPerluasan pemberlakuan PPKM Mikro ini, kata Menko Bidang Perekonomian Airlangga Hartarto, karena efektif mengendalikan laju penyebaran Covid-19. “PPKM dan PPKM mikro yang diterapkan sejak Januari dan Februari mulai berhasil mengendalikan laju penyebaran Covid-19,” ujar Airlangga Hartarto dalam keterangan pers usai Rapat Terbatas mengenai Penanganan Pandemi Covid-19 Jelang Idulfitri, yang dipimpin oleh Presiden RI Joko Widodo di Istana Kepresidenan, Jakarta, Senin (19/4/2021).\r\nAirlangga yang juga Ketua Komite Penanganan Covid-19 dan Pemulihan Ekonomi Nasional (KPCPEN), mengatakan rata-rata kasus aktif bulanan terus menurun. Perinciannya, dengan rincian di Januari 15,43%, Februari 13,57%, Maret 9,52%, dan April 7,23%.\r\nBegitu juga dengan jumlah kasus aktif mingguan yang terus menurun sejak pelaksanaan PPKM Mikro. Kasus aktif minggu kedua Februari mencapai 176.291 kasus per minggu dan di minggu ketiga April turun menjadi 106.243 kasus per minggu.\r\nBerdasarkan evaluasi tersebut, ujar Airlangga, pemerintah memutuskan untuk kembali memperpanjang dan memperluas cakupan PPKM Mikro. Perpanjangan dilakukan selama dua minggu, yaitu mulai 20 April hingga 3 Mei 2021. \"Perluasan berdasarkan parameter jumlah kasus aktif, maka ditambahkan lima provinsi yaitu Sumatera Barat, Jambi, Kepulauan Bangka Belitung, Lampung, dan Kalimantan Barat,” ujarnya.\r\nDengan penambahan lima provinsi ini maka PPKM Mikro Tahap VI akan dilakukan di 25 provinsi, yaitu DKI Jakarta, Banten, Jawa Barat, DI Yogyakarta, Jawa Tengah, Jawa Timur, Bali, Sumatera Utara, Kalimantan Timur, Sulawesi Selatan, Sulawesi Utara, Kalimantan Selatan, Kalimantan Tengah, Nusa Tenggara Timur, dan Nusa Tenggara Barat. Kemudian Aceh, Riau, Sumatra Selatan, Kalimantan Utara, Papua, Sumatera Barat, Jambi, Kepulauan Bangka Belitung, Lampung, dan Kalimantan Barat.\r\nDalam keterangan persnya Ketua KPCPEN juga menyampaikan perkembangan penanganan kasus Covid-19 yang juga terus mengalami perbaikan. Per 18 April 2021, kasus aktif berada pada single digit yaitu 6,6%, terus mengalami penurunan jika dibandingkan dengan kasus pada dua bulan lalu atau Februari 2021 yang mencapai 16,10%. Sementara itu, positivity rate nasional harian sebesar 11,21%, turun dibandingkan 9 Februari yang mencapai 29,42%.\r\n\r\n“Kemudian bed occupancy rate (BOR) nasional adalah sekitar 35% dan tidak ada provinsi yang BOR-nya di atas 60%,” kata Airlangga. (PRO1)', '2022-09-20 13:52:10', NULL, NULL),
(8, 'Kelana Warisan Budaya Leluhur Lampung Barat', 'https://www.instagram.com/p/CQGFMXqgEma/', 'Selamat Pagi\r\nKham Seunyinni\r\nTabik Pun\r\n.\r\nPosted @withregram • @sigit_a_nugroho _event\r\nBismillah...\r\n\r\nWAKTU NYA TIBA\r\n\r\nHari ini...\r\nKami mulai perjalanan bersama kawan jalan kami @sayapejalanbijak Menuju Bumi Sekala Bekhak.\r\n\r\nBanyak hal yang akan kami lakukan di Bumi Sekala bekhak..\r\nYaitu explorasi Budaya, Alam dan Agro nya untuk bahan Promosi Wisata.\r\n\r\nCHSE APPLY!!\r\n\r\n\" THE REAL CULTURAL HERITAGE JOURNEY \"\r\n\r\nNantikan live dan Pod Cast kami langsung dari Lokasi\r\n\r\n@kemenparekraf.ri\r\n@sandiuno\r\n@disporapar_lambar\r\n@trileonardo\r\n@edwardspernong\r\n@pariwisata_lampung\r\n@pariwisata_lampungbarat\r\n@parosilmabsus\r\n\r\n#SayaPejalanBijak\r\n#KembaliBerkelana\r\n\r\nGO IFTA!\r\nBANGKIT PARIWISATA INDONESIA ????????\r\nSALAM EXPLORASI ????\r\n\r\nFollow IG @iftaassociation\r\nwww.iftaindonesia.com\r\n\r\n#goifta #iftajelajahindonesia\r\n#iftajelajahnusantara\r\n#organisasipariwisata #wonderfulindonesia #pesonaindonesia #pariwisataindonesia\r\n#bangkitpariwisataindonesia\r\n#lampungberjaya\r\n#lampungthetreasureofsumatra\r\n\r\n#pakaimasker #jagajarak #jagajarakhindarikerumunan #cucitangan #cucitanganpakaisabun', '2022-09-20 13:52:39', NULL, NULL),
(9, 'Tempat Wisata Tanggamus Diizinkan Buka Kembali', 'https://sumeks.co/tempat-wisata-tanggamus-diizinkan-buka-kembali/', 'SUMEKS.CO- TANGGAMUS- Pemkab Tanggamus mengizinkan tempat wisata buka kembali. Hal ini sesuai edaran Bupati Tanggamus Nomor 060/1778/15/2021 tentang pembatasan kegiatan belajar tatap muka, kegiatan berpotensi menimbulkan kerumunan dan atau keramaian dan kegiatan keagamaan dalam masa pandemi corona virus disease (Covid 19) di Kabupaten Tanggamus.\r\n\r\nPembukaan tempat wisata bagi wisatawan ini dibenarkan Kepala Dinas Pariwisata dan Kebudayaan (Disparbud) Tanggamus Hj Retno Noviana Damayanti.\r\n\r\n\r\n \r\nMenurut Retno kendati sudah diizinkan, namun tempat wisata harus memenuhi ketentuan seperti pengelola tempat wisata diwajibkan menerapkan protokol kesehatan (Prokes) 3M (mencuci tangan pakai sabun, memakai masker dan menjaga jarak) kemudian melakukan penyemprotan disinfektan secara mandiri dilokasi objek wisata masing masing, membuat banner kawasan wajib masker, menyediakan tempat cucitangan dan pengukur suhu tubuh.\r\n\r\n“Bagi pengelola yang tidak menerapkan prokes maka dikenakan sanksi berupa teguran dan penutupan kembali sementara sampai dengan adanya perbaikan dalam hal penerapan protokol kesehatan diobjek wisata yang dikelola tersebut,”tegas Retno.\r\n\r\nRetno mengaku senang dengan diizinkan dan dibukanya tempat wisata bagi para wisatawan.”Alhamdulillah semua tempat wisata sudah bisa dibuka untuk umum, saya harapkan kepada seluruh pengelola harus tetap menerapkan protokol kesehatan Covid 19 dan kepada para wisatawan diimbau supaya mematuhi aturan dan disiplin dengan 3M yang telah di tetapkan oleh pemerintah sehingga saat sedang berwisata kita bisa aman dan nyaman,”pungkas Retno.\r\n\r\n \r\nDibukanya tempat pariwisata rupanya tidak berlaku bagi pembelajaran secara tatap muka, sebab dalam surat edaran bupati tersebut pada point tiga disebutkan bahwa proses kegiatan belajar mengajar (KBM) tatap muka pada satuan pendidikan yang ada di kabupaten Tanggamus termasuk satuan pendidikan tingkat dasar Kementerian Agama Republik Indonesia menunggu selesai vaksinasi tenaga pendidik dan intruksi lebih lanjut dari pusat.\r\n\r\nLalu untuk kegiatan safari Ramadhan yang biasa dilakukan oleh bupati, wabup,sekda ,jajaran Forkopimda dan kepala OPD tahun 2021 tidak diadakan, namun pemberian santunan kepada tempat ibadah seperti masjid dan musola tetap dilaksanakan sesuai ketentuan berlaku.\r\n\r\n“Betul, dalam surat edaran bupati tersebut menyebutkan tidak ada Safari Ramadan, hal ini mengingat masih dalam situasi pandemi Covid-19. Namun untuk pemberian bantuan kemasjid dan musola tetap ada, teknis pemberiannya nanti diatur,”kata Kepala Bagian Kesejahteraan Rakyat (Kesra) Arpin.(ehl/rnn/wdi)', '2022-09-20 13:53:44', NULL, NULL),
(10, 'Webinar Nasional Tribun Network bertemakan Sumatera Travel Destination Summit (STDS)', 'https://www.instagram.com/p/CPpYTtfAcCY/', 'Selamat Siang\r\nKham Seunyinni\r\nTabik Pun\r\n.\r\n\r\nPosted @withregram • @pemprovlampung_ Gali Potensi Wisata di Kawasan Pulau Sumatera, Pemprov Lampung Ikuti Webinar Nasional Kepariwisataan Bersama Menteri Pariwisata & Ekonomi Kreatif\r\n\r\nBANDARLAMPUNG -----Gubernur Lampung Arinal Djunaidi diwakili Plt. Asisten Ekonomi dan Pembangunan Kusnardi mengikuti acara Webinar Nasional Tribun Network bertemakan Sumatera Travel Destination Summit (STDS) 2021 secara virtual, di Mahan Agung, Bandarlampung, Rabu (2/6/2021).\r\n\r\nKegiatan untuk menggali potensi pariwisata di Pulau Sumatera itu dihelat oleh Tribun Network dengan menghadirkan beberapa Narasumber diantaranya Menteri Pariwisata & Ekonomi Kreatif Sandiaga Uno, Ketua Umum ASPPI Safor Madianto, Ketua Umum PHRI Hariyadi Sukamdani, Ketua Umum ASITA Nunung Rusmiadi, CEO Tribun Network Dahlan Dahi, dan Moderator Head of Newsroom Tribun Sumsel HJ. L. Weny Ramdiastuti. Kegiatan juga diikuti oleh Gubernur Se-Sumatera.\r\n\r\nPada saat membuka acara, Menteri Pariwisata dan Ekonomi Kreatif, Sandiaga Uno, menjelaskan bahwa Industri pariwisata memiliki peranan penting dalam peningkatan pendapatan asli daerah.\r\n\r\n\"Saat ini potensi-potensi destinasi pariwisata banyak ditemukan di pulau sumatera, yan membuat sektor pariwsata di sumatera semakin berkembang pesat selama 10 tahun terakhir,\" jelas Sandiaga Uno.\r\n\r\nIa menjelaskan STDS merupakan salah satu program yang dapat dijadikan sebagai sebuah wadah bagi para pelaku industri pariwisata dan ekonomi kreatif dalam mengkampanyekan keunggulan dari masing-masing program industri pariwisata untuk bangkit selama pandemi covid-19.\r\n\r\n\"Acara ini diharapkan dapat memberikan pemahaman kepada masyarakat bahwa industri pariwisata dan ekonomi kreatif di indonesia sangat menjanjikan dan harus dijaga meskipun dalam kondisi seperti saat ini,\" jelasnya.\r\n\r\nSandiaga Uno melanjutkan hal penting untuk kita lakukan bersama saat ini adalah bagaimana melakukan adaptasi, inovasi, dan kolaborasi dalam melakukan diversifikasi.', '2022-09-20 13:54:45', NULL, NULL),
(11, 'Lamban Batik Lampung Diharapkan Pacu Geliat UMKM', 'https://www.lampost.co/berita-lamban-batik-lampung-diharapkan-pacu-geliat-umkm.html', 'Bandar Lampung (Lampost.co) -- Pemerintah Provinsi Lampung menggelar grand opening Lamban Batik Lampung di Jalan Way Pengubuan, Pahoman, Enggal, Bandar Lampung, Rabu, 10 Maret 2021. Lamban Batik Lampung diharapkan menggairahkan perajin dan Usaha Mikro Kecil Menengah (UMKM) di Bumi Ruwai Jurai.\r\n\r\n\r\nGubernur Lampung Arinal Djunaidi mengatakan bahwa Lamban Batik ini bukan hanya monumen, tapi isinya akan membuat Lampung Berjaya di masa mendatang. Ia berharap tempat ini bisa membina betul-betul para perajin, jangan pilih-pilih, bersaing secara positif dengan harapan pemerataan dan kesempatan yang lebih bagus.\r\n\r\n\"Sesuai pesan dari Menteri Koperasi dan UKM Teten Masduki, bahwa kalau nanti Lamban Batik ini maju dan  bisa ekspor dalam negeri, maka Menkop dan UKM itu akan membantu. Jadi Kreativitasnya tergantung dari Dekranasda, oleh karena itu, bangkitkan UMKM di semua Kabupaten/kota,\" kata Gubernur Arinal.\r\n\r\n\r\nKe depan, dirinya ingin ada suatu klasifikasi, yang mana yang sudah di ekspor, mana yang sudah dalam negeri, mana yang sudah regional. Sehingga nanti bisa disampaikan kepada Kementerian agar UMKM di Lampung hidup dan kreatif. Dalam mendukung Lamban Batik Lampung, Gubernur Arinal akan mendukung, membantu, mengembangkan, memfasilitasi, bahkan memperjuangkan bantuan dari Kementerian.\r\n\r\n\"Saya berjanji untuk membantu, mengembangkan, memfasilitasi, bahkan melalui kementerian saya akan berupaya untuk', '2022-09-20 13:55:02', NULL, NULL),
(12, 'Lampung Sai Menggelar Upacara Adat Blangikhan', 'https://www.instagram.com/p/CNWsLsXAR_S/', 'Selamat Siang\r\nKham Seunyinni\r\nTabik Pun\r\n.\r\nDalam rangka melestarikan kebudayaan adat Lampung dan menyambut bulan suci Ramadan 1442 H, Pemerintah Provinsi Lampung bersama Organisasi Sosial Kemasyarakatan Lampung DPP Lampung Sai menggelar upacara adat Blangikhan, di Bumi Kedaton Resort, Bandar Lampung, Rabu hari ini (7 Maret 2021).\r\n.\r\nKegiatan yang diawali dengan Tarian Kreasi Ketibung Assalam tersebut dihadiri oleh Gubernur Lampung yang diwakili oleh Sekda Provinsi Lampung Fakhrizal Darminto, Ketua DPP Lampung Sai Komjen Pol (Purn) Sjachroedin ZP, Ketua Harian DPP Rycko Menoza SZP, Wakil Ketua III Provinsi Lampung Raden Muhammad Ismail ST, Jajaran Forkopimda, serta tokoh adat dan tokoh masyarakat Provinsi Lampung.\r\n\r\nGubernur Lampung Arinal Djunaidi dalam sambutannya yang dibacakan oleh Sekretaris Daerah Provinsi Lampung Fakhrizal Darminto menyatakan bahwa kegiatan Blangikhan merupakan simbol pensucian hati dalam menghadapi bulan suci Ramadan, agar dapat menjalani ibadah puasa dengan lancar tanpa ada halangan.\r\n.\r\n@pemprovlampung_\r\n@arinal_djunaidi\r\n@mbak_nunik\r\n@pariwisata_lampung\r\n@dpp.lampungsai\r\n@edarwan1962\r\n@ryckomenoza_szp\r\n@ekraf.lampung\r\n@sapta_budaya\r\n.\r\n#blangikhan #lampung #lampungberjaya #lampungthetreasureofsumatra\r\n#pariwisatalampung #pesonaindonesia #wonderfulindonesia', '2022-09-20 13:56:11', NULL, NULL),
(13, 'Selamat Hari Raya Idul Fitri 1442 Hijriah \"Dinas Pariwisata % Ekonomi Kreatif Provinsi Lampung', 'https://www.instagram.com/p/COypRK5gPWT/', 'Assalamualaikum Wr Wb\r\nSelamat Pagi\r\nKham Seunyinni\r\nTabik Pun.\r\n.\r\nDengan takbir sudah\r\nberkumandang\r\nmenandakan kita semua\r\nsudah kembali fitrah\r\ndihari kemenangan.\r\n.\r\nTiada kata dapat\r\ntergantikan seraya\r\nmemanjatkan doa serta\r\nsaling memaafkan untuk\r\nsetiap khilaf dan salah\r\ndiantara sesama.\r\n.\r\nSelamat Hari Raya\r\nIdul Fitri\r\n1 Syawal 1442 H\r\n.\r\nMinal Aidin Wal Faidzin\r\nMohon Maaf Lahir dan Batin\r\nDari kami semua Segenap\r\nKeluarga Besar Dinas\r\nPariwisata dan Ekonomi Kreatif\r\nProvinsi Lampung\r\n.\r\nWassalamualaikum Wr Wb\r\n.\r\n\r\n@pemprovlampung_\r\n@pemprov.lampung\r\n@arinal_djunaidi\r\n@mbak_nunik\r\n@pariwisata_lampung\r\n@edarwan1962\r\n.\r\n#lebaran\r\n#lebaran2021\r\n#idulfitri\r\n#idulfitri2021\r\n#pariwisatalampung\r\n#lampungthetreasureofsumatra\r\n#lampungberjaya\r\n#wonderfulindonesia\r\n#pesonaindonesia', '2022-09-20 13:56:39', NULL, NULL),
(14, 'Info Kepariwisataan Lampung Selama Libur Idul Fitri 1442 Hijriah', 'https://www.instagram.com/p/COw02Sag1PQ/', 'Kham Seunyinni\r\nTabik Pun\r\n.\r\nMarhaban Ya Ramadhan\r\nMenindaklanjuti Surat Edaran\r\nGubernur Lampung\r\nTentang pembatasan kegiatan\r\ndi tempat atau kawasan wisata\r\nselama Hari Raya Idul Fitri 1442 Hijriah\r\n.\r\nOleh atas karena hal tersebut\r\nKabupaten / Kota yang\r\nturut serta dan mengikuti\r\nhimbauan Pemerintah\r\nProvinsi Lampung dalam\r\nrangka mengurangi interaksi\r\nskala besar diantara masyarakat\r\ndikarenakan pandemi CoVid-19\r\n.\r\nSilahkan dilihat\r\nSampai kapan pembatasan\r\ntersebut diberlakukan di\r\nmasing masing kabupaten /\r\nkota berbeda beda\r\n(Bisa dilihat di e flyers)\r\n??????????\r\n\r\n@pemprovlampung_\r\n@pemprov.lampung\r\n@arinal_djunaidi\r\n@mbak_nunik\r\n@pariwisata_lampung\r\n@edarwan1962\r\n@disporapar_lambar\r\n@dispar.pesawaran\r\n@disparlamtim\r\n@majestic.tanggamus\r\n@pesisirbarat\r\n@pemkab_tulangbawang\r\n@waykanan_asyik\r\n@pariwisatatubaba\r\n@disporapar_pringsewu\r\n@pemerintahkotametro\r\n@pariwisatalamteng\r\n@disporapar_mesuji\r\n@pemkab_tulangbawang\r\n@dinaspariwisata.lampungselatan\r\n\r\n#covid_19\r\n#pandemi\r\n#idulfitri2021\r\n#lebaran2021\r\n#lampung\r\n#lampungberjaya\r\n#lampungthetreasureofsumatra\r\n#pariwisatalampung\r\n#bandarlampung #pringsewu #lampungselatan #tanggamus #pesisirbarat #lampungbarat #lampungutara #waykanan #tulangbawang #mesuji #tubaba #metro #lampungtengah #pesawaran #lampungtimur', '2022-09-20 13:57:29', NULL, NULL),
(15, 'Disparekraf Buka Komunikasi Pemasaran Digital Ekraf', 'https://medialampung.co.id/disparekraf-buka-komunikasi-pemasaran-digital-ekraf/', 'Medialampung.co.id – Era adapatasi kebiasaan baru telah membentuk komunikasi pemasaran produk melalui platform digital pada media sosial secara interaktif khususnya bagi pelaku usaha pariwisata dan ekonomi kreatif secara aktif dan berkelanjutan.\r\n\r\nHal tersebut guna menyiasati trend baru pemasaran produk parekraf pada masa keterbatasan tatap muka. Oleh karena itu untuk meningkatkan sumber daya manusia (SDM) di bidang pariwisata dan ekonomi kreatif khususnya bagi pelaku ekraf, Dinas Pariwisata dan Ekonomi Kreatif provinsi Lampung akan mengadakan webinar terkait hal tersebut. \r\n\r\nKabid Pengembangan Pemasaran Pariwisata, Melly Ayunda mengatakan kegiatan tersebut direncanakan akan dibuka oleh Kepala Dinas Pariwisata dan Ekonomi Kreatif Provinsi Lampung, yaitu Dr. Edarwan, SE, M.Si., serta menghadirkan para narasumber dan pakar praktisi di bidang nya yaitu Iis Lamda (owner Flip Flop Coffee dan Hotel), Iwan Laksmana (Food Bloggers dan Food Enthusiast) serta Rismoyo Ekaputra (Founder Pesona Lampung).\r\n\r\n“Para narasumber ini nantinya secara langsung akan memberikan solusi praktis dan bermanfaat, memberikan pemahaman dan bimbingan secara mendalam kepada seluruh peserta webinar,” ungkapnya.\r\n\r\nLanjutnya acara tersebut akan dilaksanakan pada hari Kamis tanggal 25 Maret 2021 pukul 14.30 sampai dengan 17.30 WIB yang akan ditayangkan melalui zoom Pesona Lampung TV, youtube Dinas Pariwisata dan ekonomi kreatif provinsi Lampung serta instagram @pariwisata_lampung.\r\n\r\n“Bagi para pelaku parekraf, mahasiswa dan umum dapat bergabung dalam acara webinar ini dengan mendaftar pada link yang telah disediakan,” tutupnya. (ded/mlo)', '2022-09-20 13:57:37', NULL, NULL),
(16, 'Wisata Lampung 2', 'https://tujuanwisatanasional.blogspot.com/2020/07/wisata-lampung-barat-2018.html', 'Wisata lampung barat 2018 - Salam sejahtera untuk semuanya, kamu mencari wisata lampung barat 2018 untuk melengkapi liburan keluarga anda ya. Bepergian selamanya jadi urusan yang mahal. Jika Anda perlu pergi berlibur, maka mungkin besar, Anda wajib menabung selama satu th. atau lebih dan sesudah itu pergi untuk satu. Ada sebagian orang yang tidak pergi berlibur gara-gara mereka menganggapnya sebagai pengeluaran yang tidak perlu. Namun, kini Anda dapat berlibur tanpa bangkrut. Yah, tak kudu dikatakan bahwa Anda kudu merencanakan untuk itu. Ada langkah dan langkah menghemat duwit dan beberapa di antaranya dicantumkan di bawah ini.\r\n\r\nSaat ini, hampir semua orang merasakan susah ekonomi. Sebagian besar cuma miliki sedikit duit untuk berlibur, sehingga beberapa pilih untuk tidak melanjutkan perjalanan tahunan itu daripada mengambil risiko mengalami masa mengerikan sebab kurangnya dana. Yakinlah, tersedia langkah untuk mengambil liburan murah, dan tidak mahal tidak mesti sama buruknya.', '2022-09-20 13:57:51', NULL, NULL),
(17, 'Disparekraf Lampung: Pelaku usaha wisata antusiasme miliki sertifikasi CHSE', 'https://lampung.antaranews.com/berita/480057/disparekraf-lampung-pelaku-usaha-wisata-antusiasme-miliki-sertifikasi-chse', 'Bandarlampung (ANTARA) - Kepala Dinas Pariwisata dan Ekonomi Kreatif Provinsi Lampung Edarwan mengatakan bahwa pelaku usaha pariwisata di Provinsi Lampung antusiasme untuk mendapatkan sertifikasi Cleanliness, Health, Safety dan Environment sustainability (CHSE) guna mendukung sektor kepariwisataan bangkit pada masa pandemi COVID-19.\r\n\r\n\"Sangat antusias sekali bahkan dalam tahapan sosialisasi kemarin pelaku usaha pariwisata di Lampung berlomba-lomba untuk segera mendapatkan sertifikat CHSE ini,\" ujar Edarwan di Bandarlampung, Sabtu.\r\n\r\nIa mengatakan sertifikasi CHSE (Cleanliness, Health, Safety dan Environment sustainability) bagi dunia usaha pariwisata menjadi hal yang penting salah satunya untuk memulihkan kepercayaan wisatawan untuk berwisata.\r\n\r\n\"Eksistensi tempat hiburan dan usaha pariwisata di tengah pandemi COVID-19 yang masih berlangsung tercermin dari sudah dimilikinya sertifikat CHSE atau belum,\" katanya.\r\n\r\nMenurutnya, telah ada lebih dari 100 pelaku usaha yang mengajukan diri untuk memiliki sertifikat tersebut.\r\n\r\n\"Ada lebih dari 100 tempat usaha pariwisata yang mengajukan, namun yang sudah melaporkan kepada kita sudah mendapatkan sertifikat ada satu tempat usaha sebab semua harus melewati survei dari tim Kementerian,\" ujarnya.\r\n\r\nIa menjelaskan bila dalam evaluasi dan survei tempat usaha pariwisata belum memenuhi persyaratan maka tim akan meminta tempat usaha tersebut membenahi terlebih dahulu sebelum menerima sertifikat CHSE.\r\n\r\n\"Persyaratan untuk mendapatkan sertifikasi CHSE (Cleanliness, Health, Safety dan Environment sustainability) cukup banyak, jadi bagi pelaku usaha yang belum memenuhi persyaratan akan diminta untuk membenahi sejumlah hal yang kurang sebelum mendapatkan sertifikat tersebut,\" katanya lagi.\r\n\r\nMenurutnya, tempat usaha pariwisata dimungkinkan untuk dicabut izin serta sertifikasi CHSE (Cleanliness, Health, Safety dan Environment sustainability) bila ditemukan sejumlah hal yang mengganggu kenyamanan pengunjung.\r\n\r\n\"Bila tempat usaha sudah memiliki sertifikat CHSE namun diketahui melanggar aturan seperti protokol kesehatan maka sertifikasi tersebut dapat dicabut sebab selama pandemi COVID-19 ini yang utama ialah kesehatan dan kenyamanan pengunjung,\" ucapnya.\r\n\r\nSebelumnya berdasarkan data Badan Pimpinan Daerah Perhimpunan Hotel dan Restoran Indonesia (BPD-PHRI) Provinsi Lampung hampir 90 persen hotel dan restoran di Lampung telah memiliki sertifikat protokol kesehatan berbasis CHSE (Cleanliness, Health, Safety dan Environment sustainability).\r\nPewarta : Ruth Intan Sozometa Kanafi\r\nEditor : Triono Subagyo\r\nCOPYRIGHT © ANTARA 2021', '2022-09-20 13:59:08', NULL, NULL),
(18, 'Kemenpar Bakal Kupas Tuntas Homestay Desa Wisata dalam Rakornas', 'https://lampungpro.co/post/3944/kemenpar-bakal-kupas-tuntas-homestay-desa-wisata-dalam-rakornas', 'JAKARTA (Lampungpro.com)-Rapat Koordinasi Nasional (Rakornas) II 2017 bakal digelar di Hotel Bidakara, Jakarta, Kamis-Jumat, 18-19 Mei 2017. Rencananya dalam Rakornas tersebut Kementerian Pariwisata (Kemenpar) akan membahas Homestay Desa Wisata bersama dengan sejumlah kementerian dan lembaga (K/L) lainnya. \r\n\r\n\"Rakornas digelar tujuannya mengajak stakeholder (ABGCM) untuk berperan serta dalam pembangunan 100.000 Homestay Desa Wisata. Mensinergikan program-program Homestay Desa Wisata antar kementerian dan lembaga terkait,\" ujar Deputi Bidang Pengembangan Destinasi dan Industri Pariwisata, Dadang Rizki Ratman.\r\n\r\nDalam Rakornas II 2017, selain Kemenpar, akan hadir pula perwakilan dari KemenDes, KemenPUPR, KemenDikbud, KemenBUMN, Bekraf, Bappenas, KemenLHK, KemenKop UKM, Kemen Kominfo, Kemenkes, KemenKeu, KemenATR-BPN, Bank BUMN (BTN, BNI, BRI, Mandiri), REI, IAI, ITX, Telkom, OJK, Pemerintah Daerah, Akademisi dan Komunitas.\r\n\r\n\"Rakornas ini target output-nya penandatanganan Peraturan Bersama Menteri Pariwisata dan Menteri Desa PDTT tentang Pedoman Pengembangan Desa Wisata. Selain itu akan ditentukan lokasi pengembangan bersama Homestay Desa Wisata dengan berbagai Kementerian dan Lembaga,\" ujar Dadang.\r\n\r\nSementara, isu-isu yang akan dibahas dalam Rakornas II 2017 Homestay Desa Wisata adalah, Legalitas Lahan, Skema Pendanaan Homestay, Skema Pengelolaan Homestay, Perencanaan (IAI), Pembangunan (REI), Sarana Prasarana (Kominfo), Operasional (Success Story: Desa Wisata Dieng Kulon, Desa Pemenang Barat Mandalika), Pemasaran (ITX) dan Pengembangan Desa Wisata.', '2022-09-20 13:59:51', NULL, NULL),
(19, 'Perpal Jamin Wisata di Lampung Terapkan Protokol Kesehatan', 'https://kupastuntas.co/2020/08/15/perpal-jamin-wisata-di-lampung-terapkan-protokol-kesehatan', 'Kupastuntas.co, Bandar Lampung - Memasuki terapan kebiasaan baru atau new normal, destinasi wisata di Provinsi Lampung mulai membuka diri dengan tetap menerapkan protokol kesehatan secara ketat, seperti menjaga jarak dan mencuci tangan menggunakan sabun dengan air mengalir. \r\n\r\nPara pelaku pariwisata mulai dari pengusaha oleh-oleh, hotel, dan tempat pariwisata lainnya baik wisata pantai maupun kebun binatang yang tergabung dalam Perhimpunan Pelaku Pariwisata Lampung (Perpal) berkomitmen untuk terus menerapkan protokol kesehatan di setiap event wisata yang ada di Lampung. \r\n\r\nKetua Panitia Geliat Pariwisata Lampung, Hafiz Ali mengatakan, saat ini pariwisata di Provinsi Lampung sudah siap menerima wisatawan dari luar Lampung dengan mengedepankan protokol kesehatan, yakni dengan memberikan masker dan hand sanitizer kepada wisatawan. \r\n\r\n\"Jadi untuk menjamin bahwa protokol kesehatan itu diterapkan, kita memberikan kuota kunjungan setiap jam. Kalau dulu kita bisa 100 sampai 200 orang, sekarang kita batasin misalnya maksimal 50 atau 70 orang,\" ungkapnya, Sabtu (15/8/2020).\r\n\r\nSementara, Owner Taman Wisata Lembah Hijau, Iwan mengatakan, saat ini seluruh pelaku wisata mulai me-restart kembali agar pariwisata tumbuh. Dengan keyakinan pariwisata menjadi sektor pertama yang akan tumbuh dalam pemulihan ekonomi.\r\n\r\n\"Karena kita yakin, banyak masyarakat yang bergantung dalam sektor pariwisata, seperti tempat oleh-oleh dimana bahan bakunya dari para petani baik singkong dan pisang. Begitu juga dengan hotel tentu bahan makanan juga dari para petani. Tetapi tetap protokol kesehatan diutamakan, karena usaha dan kesehatan harus berimbang,\" ujarnya. \r\n\r\nKabid Pengembangan Promosi Pariwisata pada Dinas Pariwisata Provinsi Lampung, Melly Ayunda mengatakan, sesuai dengan', '2022-09-20 14:01:32', NULL, NULL),
(20, 'Sejumlah Tempat Wisata di Lampung Mulai Beroperasi 6 Juni', 'https://www.kupastuntas.co/2020/06/01/sejumlah-tempat-wisata-di-lampung-mulai-beroperasi-6-juni', 'Bandar Lampung - Sejumlah objek wisata di Lampung mengumumkan akan kembali beroperasi mulai (6/6/2020) mendatang, salah satunya Pantai Tegal Mas di Kabupaten Pesawaran, serta Puncak Mas dan Wira Garden di Kota Bandar Lampung.\r\n\r\nHal itu dilakukan pemilik wisata setelah mencuat wacana tatanan baru yakni New Normal  yang dilakukan oleh pemerintah untuk memulihkan kembali roda ekonomi dengan tetap menerapkan Protokol Kesehatan.\r\n\r\nOwner Tempat Wisata Tegal Mas dan Puncak Mas, Thomas Rizka mengatakan, pihaknya sudah mulai membuka kembali untuk umum pada tanggal 6 Juni namun tentunya tetap mematuhi protokol kesehatan yang dianjurkan dari Pemerintah dalam pencegahan Covid-19.\r\n\r\n\"Insyallah kami siap beroperasi kembali pada tanggal 6 Juni. Semua sudah kami pikirkan matang-matang,\" ujar Thomas, Senin (1/6/2020).\r\n\r\nIa menjelaskan, Protokol Kesehatan seperti setiap tamu yang masuk wajib menggunakan masker dan menempatkan tempat cuci tangan disetiap titik. \"Kepada pengunjung kami juga  mengimbau menjaga jarak, dan melakukan pengecekan suhu tubuh,\" jelasnya.\r\n\r\nSedangkan untuk pembatasan jumlah pengunjung, Thomas mengatakan hal ini mengikuti aturan Pemerintah setempat.', '2022-09-20 14:02:56', NULL, NULL),
(21, 'Jelang HUT Ke-57, Yuk Kenali Budaya dan Bahasa Lampung', 'https://lampung.idntimes.com/news/lampung/silviana-4/jelang-hut-ke-57-yuk-kenali-budaya-dan-bahasa-lampung/3', 'Jika melihat hewan gajah, lambang siger, kopi atau pisang, daerah mana yang terlintas dalam pikiran kamu? Tentu saja Provinsi Lampung kan. Daerah yang menjadi gerbang lintas Sumatera-Jawa ini memang memiliki potensi luar biasa.\r\n\r\nTapi tau gak sih, pemilik semboyan Sang Bumi Ruwa Jurai ini dalam waktu dekat akan merayakan Hari Ulang Tahun nya yang ke-57.\r\n\r\nNah berikut ini IDN Times rangkum beberapa ciri khas yang ada di Provinsi Lampung.', '2022-09-20 14:03:07', NULL, NULL),
(22, 'Tempat Wisata Di lampung Yang Direkomendasikan', 'https://www.itrip.id/tempat-wisata-lampung', 'Lampung merupakan salah satu Provinsi yang ada di Indonesia yang memiliki banyak potensi sumber daya alam. Sumber daya alam tersebut banyak yang dikelola menjadi destinasi wisata yang akan menarik minat wisatawan sehingga banyak orang yang akan berkunjung ke sana.\r\n\r\nBanyak potensi wisata yang ada di Lampung seperti wisata alam, sejarah, budaya, edukasi, religi, dan masih banyak lagi. Setiap destinasi wisata yang dihadirkan di Lampung memiliki rasa yang berbeda-beda tergantung dengan destinasi wisata tersebut.', '2022-09-20 14:04:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `chatCode` bigint(20) NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `chat` text NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`chatCode`, `from`, `to`, `chat`, `createAt`, `updateAt`, `deleteAt`) VALUES
(1, 1, 6, 'Halo', '2022-10-17 02:00:42', NULL, NULL),
(2, 6, 1, 'Hai', '2022-10-17 02:02:06', NULL, NULL),
(5, 6, 1, 'kok chat?', '2022-10-17 02:06:14', '2022-10-17 02:06:14', NULL),
(6, 6, 1, 'dgrgfj', '2022-10-17 03:23:58', '2022-10-17 03:23:58', NULL),
(7, 6, 1, 'sgahh', '2022-10-17 03:27:04', '2022-10-17 03:27:04', NULL),
(8, 6, 1, 'rhssfff', '2022-10-17 03:27:10', '2022-10-17 03:27:10', NULL),
(9, 6, 1, 'ryfkhh', '2022-10-17 03:27:15', '2022-10-17 03:27:15', NULL),
(10, 6, 1, 'fffffffffff', '2022-10-17 03:31:21', '2022-10-17 03:31:21', NULL),
(11, 1, 6, 'Apa ???', '2022-10-17 03:32:18', NULL, NULL),
(12, 10, 1, 'gaoo', '2022-10-17 04:05:09', '2022-10-17 04:05:09', NULL),
(13, 10, 1, 'help me', '2022-10-17 11:41:11', '2022-10-17 11:41:11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_article`
--

CREATE TABLE `comment_article` (
  `caCode` bigint(20) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `articleCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_hotel`
--

CREATE TABLE `comment_hotel` (
  `chCode` bigint(20) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `hotelCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_medical_facility`
--

CREATE TABLE `comment_medical_facility` (
  `cmfCode` bigint(20) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `mfCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_police`
--

CREATE TABLE `comment_police` (
  `cpCode` bigint(20) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `policeCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_restaurant`
--

CREATE TABLE `comment_restaurant` (
  `crCode` bigint(20) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `restaurantCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_tour`
--

CREATE TABLE `comment_tour` (
  `ctCode` bigint(20) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `tourCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `comment_tour`
--

INSERT INTO `comment_tour` (`ctCode`, `comment`, `userCode`, `tourCode`, `createAt`, `updateAt`, `deleteAt`) VALUES
(1, 'Recomended', 1, 2, '2022-10-14 22:39:28', '2022-10-14 22:39:28', NULL),
(2, 'Recomended', 1, 3, '2022-10-15 00:59:22', '2022-10-15 00:59:22', NULL),
(3, 'Recomended', 1, 3, '2022-10-15 01:00:21', '2022-10-15 01:00:21', NULL),
(4, 'Recomended', 8, 3, '2022-10-15 01:01:36', '2022-10-15 01:01:36', NULL),
(5, 'halo', 6, 1, '2022-10-17 00:37:33', '2022-10-17 00:37:33', NULL),
(6, 'ini siapa', 6, 1, '2022-10-17 00:39:20', '2022-10-17 00:39:20', NULL),
(7, 'fgd', 6, 1, '2022-10-17 00:44:57', '2022-10-17 00:44:57', NULL),
(8, 'dimana', 6, 1, '2022-10-17 00:49:42', '2022-10-17 00:49:42', NULL),
(9, 'cçcc', 6, 1, '2022-10-17 00:51:05', '2022-10-17 00:51:05', NULL),
(10, 'ygggg', 6, 1, '2022-10-17 00:51:55', '2022-10-17 00:51:55', NULL),
(11, 'is tah', 6, 3, '2022-10-17 00:59:47', '2022-10-17 00:59:47', NULL),
(12, 'bagus', 10, 1, '2022-10-17 04:05:40', '2022-10-17 04:05:40', NULL),
(13, 'bagus nih', 10, 2, '2022-10-17 11:41:34', '2022-10-17 11:41:34', NULL),
(14, 'gajahnya pinter', 10, 4, '2022-10-17 12:01:28', '2022-10-17 12:01:28', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotel`
--

CREATE TABLE `hotel` (
  `hotelCode` bigint(20) NOT NULL,
  `stateCode` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `phoneCall` varchar(255) NOT NULL,
  `phoneSMS` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hotel`
--

INSERT INTO `hotel` (`hotelCode`, `stateCode`, `name`, `locationName`, `latitude`, `longitude`, `phoneCall`, `phoneSMS`, `description`, `createAt`, `updateAt`, `deleteAt`) VALUES
(1, 1, 'Novotel', 'Bumi waras, Bandar Lampung', '-5.440520207984486', '105.28903289508806', '085768375467', '085768375467', 'Novotel', '2022-10-17 00:03:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotel_image`
--

CREATE TABLE `hotel_image` (
  `hiCode` bigint(20) NOT NULL,
  `hotelCode` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `like_article`
--

CREATE TABLE `like_article` (
  `laCode` bigint(20) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `articleCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `like_article`
--

INSERT INTO `like_article` (`laCode`, `userCode`, `articleCode`, `createAt`, `updateAt`, `deleteAt`) VALUES
(2, 6, 2, '2022-10-17 04:23:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `like_hotel`
--

CREATE TABLE `like_hotel` (
  `lhCode` bigint(20) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `hotelCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `like_medical_facility`
--

CREATE TABLE `like_medical_facility` (
  `lmfCode` bigint(20) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `mfCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `like_police`
--

CREATE TABLE `like_police` (
  `lpCode` bigint(20) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `policeCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `like_restaurant`
--

CREATE TABLE `like_restaurant` (
  `lrCode` bigint(20) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `restaurantCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `like_tour`
--

CREATE TABLE `like_tour` (
  `ltCode` bigint(20) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `tourCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `like_tour`
--

INSERT INTO `like_tour` (`ltCode`, `userCode`, `tourCode`, `createAt`, `updateAt`, `deleteAt`) VALUES
(1, 1, 2, '2022-10-02 21:11:48', NULL, NULL),
(2, 2, 2, '2022-10-02 21:12:05', NULL, NULL),
(3, 3, 2, '2022-10-02 21:12:20', NULL, NULL),
(4, 4, 1, '2022-10-02 21:12:31', NULL, NULL),
(13, 8, 3, '2022-10-16 13:45:12', NULL, NULL),
(14, 8, 1, '2022-10-16 13:57:53', NULL, NULL),
(17, 6, 1, '2022-10-16 17:28:46', NULL, NULL),
(20, 6, 3, '2022-10-16 17:40:27', NULL, NULL),
(21, 6, 2, '2022-10-16 20:11:46', NULL, NULL),
(22, 9, 2, '2022-10-16 22:56:38', NULL, NULL),
(23, 9, 1, '2022-10-16 22:56:46', NULL, NULL),
(25, 10, 2, '2022-10-17 01:38:52', NULL, NULL),
(27, 10, 1, '2022-10-17 11:39:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `medical_facility`
--

CREATE TABLE `medical_facility` (
  `mfCode` bigint(20) NOT NULL,
  `stateCode` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `phoneCall` varchar(255) NOT NULL,
  `phoneSMS` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `medical_facility`
--

INSERT INTO `medical_facility` (`mfCode`, `stateCode`, `name`, `locationName`, `latitude`, `longitude`, `phoneCall`, `phoneSMS`, `description`, `createAt`, `updateAt`, `deleteAt`) VALUES
(1, 1, 'Rumah Sakit Abdul Moeloek', 'Jl. Teuku umar No. 123, bandar lampung', '-5.402810372664612', '105.25844485461703', '0925279002020', '0821937688386', 'Rumah sakit umum bandar lampung', '2022-10-16 23:53:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `medical_facility_image`
--

CREATE TABLE `medical_facility_image` (
  `mfiCode` bigint(20) NOT NULL,
  `mfCode` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `police`
--

CREATE TABLE `police` (
  `policeCode` bigint(20) NOT NULL,
  `stateCode` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `phoneCall` varchar(255) NOT NULL,
  `phoneSMS` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `police`
--

INSERT INTO `police` (`policeCode`, `stateCode`, `name`, `locationName`, `latitude`, `longitude`, `phoneCall`, `phoneSMS`, `description`, `createAt`, `updateAt`, `deleteAt`) VALUES
(3, 1, 'POLRESTA BANDAR LAMPUNG', 'Jl. Mayjen MT Haryono, Bandar Lampung', '', '', '08217683008', '08217683008', 'hgtjyh', '2022-10-14 11:06:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `police_image`
--

CREATE TABLE `police_image` (
  `piCode` bigint(20) NOT NULL,
  `policeCode` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurantCode` bigint(20) NOT NULL,
  `stateCode` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `phoneCall` varchar(255) NOT NULL,
  `phoneSMS` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `restaurant`
--

INSERT INTO `restaurant` (`restaurantCode`, `stateCode`, `name`, `locationName`, `latitude`, `longitude`, `phoneCall`, `phoneSMS`, `description`, `createAt`, `updateAt`, `deleteAt`) VALUES
(1, 1, 'Bakso Sony', 'Rajabasa, bandarlampung', '-5.3769082635712016', '105.27393639694371', '081376896534', '082168002244', 'Bakso Sony', '2022-10-17 00:01:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `restaurant_image`
--

CREATE TABLE `restaurant_image` (
  `riCode` bigint(20) NOT NULL,
  `restaurantCode` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_hotel`
--

CREATE TABLE `review_hotel` (
  `rhCode` bigint(20) NOT NULL,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `hotelCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_medical_facility`
--

CREATE TABLE `review_medical_facility` (
  `rmfCode` bigint(20) NOT NULL,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `mfCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_police`
--

CREATE TABLE `review_police` (
  `rpCode` bigint(20) NOT NULL,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `policeCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_restaurant`
--

CREATE TABLE `review_restaurant` (
  `rrCode` bigint(20) NOT NULL,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `restaurantCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_tour`
--

CREATE TABLE `review_tour` (
  `rtCode` bigint(20) NOT NULL,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `tourCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `state`
--

CREATE TABLE `state` (
  `stateCode` bigint(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `state`
--

INSERT INTO `state` (`stateCode`, `state`, `image`, `createAt`, `updateAt`, `deleteAt`) VALUES
(1, 'Bandar Lampung', 'https://hiskia.xyz/public/assets/uploads/balam.JPG', '2022-09-19 18:31:02', '2022-09-19 18:31:02', NULL),
(2, 'Lampung Barat', 'https://hiskia.xyz/public/assets/uploads/lambar.jpg', '2022-09-19 16:34:15', '2022-09-19 16:34:15', NULL),
(3, 'Lampung Selatan', 'https://hiskia.xyz/public/assets/uploads/lamsel.jpg', '2022-09-19 16:34:42', '2022-09-19 16:34:42', NULL),
(4, 'Lampung Tengah', 'https://hiskia.xyz/public/assets/uploads/lamteng.jpeg', '2022-09-19 16:35:27', '2022-09-19 16:35:27', NULL),
(5, 'Lampung Timur', 'https://hiskia.xyz/public/assets/uploads/lamtim.jpg', '2022-09-19 16:35:35', '2022-09-19 16:35:35', NULL),
(6, 'Lampung Utara', 'https://hiskia.xyz/public/assets/uploads/lamut.jpg', '2022-09-19 16:35:42', '2022-09-19 16:35:42', NULL),
(7, 'Mesuji', 'https://hiskia.xyz/public/assets/uploads/mesuji.jpg', '2022-09-19 16:35:51', '2022-09-19 16:35:51', NULL),
(8, 'Pesawaran', 'https://hiskia.xyz/public/assets/uploads/pesawaran.jpg', '2022-09-19 16:35:59', '2022-09-19 16:35:59', NULL),
(9, 'Pesisir Barat', 'https://hiskia.xyz/public/assets/uploads/pesibar.jpg', '2022-09-19 16:36:09', '2022-09-19 16:38:59', NULL),
(10, 'Pringsewu', 'https://hiskia.xyz/public/assets/uploads/pringsewu.jpg', '2022-09-19 16:40:20', '2022-09-19 16:40:20', NULL),
(11, 'Tanggamus', 'https://hiskia.xyz/public/assets/uploads/tanggamus.jpg', '2022-09-19 16:40:49', '2022-09-19 16:40:49', NULL),
(12, 'Tulang Bawang', 'https://hiskia.xyz/public/assets/uploads/tulang_bawang.jpg', '2022-09-19 16:41:03', '2022-09-19 16:41:03', NULL),
(13, 'Tulang Bawang Barat', 'https://hiskia.xyz/public/assets/uploads/tulang_bawang_barat.jpg', '2022-09-19 16:41:07', '2022-09-19 16:41:07', NULL),
(14, 'Way Kanan', 'https://hiskia.xyz/public/assets/uploads/waykanan.jpg', '2022-09-19 16:44:18', '2022-09-19 16:46:55', NULL),
(15, 'Metro', 'https://hiskia.xyz/public/assets/uploads/metro.jpg', '2022-09-19 16:45:45', '2022-09-19 16:49:13', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tour`
--

CREATE TABLE `tour` (
  `tourCode` bigint(20) NOT NULL,
  `stateCode` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `locationName` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT '0',
  `longitude` varchar(255) DEFAULT '0',
  `condition` varchar(255) DEFAULT '1',
  `protocol` varchar(255) DEFAULT '1',
  `track` varchar(255) DEFAULT '1',
  `ticket` varchar(255) DEFAULT '0',
  `description` longtext DEFAULT NULL,
  `numberOfTourists` varchar(10) DEFAULT '0',
  `quotaOfTourists` varchar(10) DEFAULT '0',
  `isOpen` enum('0','1') DEFAULT '1',
  `isSafety` enum('0','1') DEFAULT '1',
  `traffic` enum('1','2','3','4') DEFAULT '1',
  `createAt` datetime DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tour`
--

INSERT INTO `tour` (`tourCode`, `stateCode`, `name`, `locationName`, `latitude`, `longitude`, `condition`, `protocol`, `track`, `ticket`, `description`, `numberOfTourists`, `quotaOfTourists`, `isOpen`, `isSafety`, `traffic`, `createAt`, `updateAt`, `deleteAt`) VALUES
(1, 1, 'Wira Garden', 'Kemiling', '-5.436068787303937', '105.22953153927098', '1', '1', '1', 'Rp. 15.000', 'Wira Garden adalah salah satu wisata alam yang ada di Lampung. Objek wisata ini sangat mudah dijumpai karena terdapat di kiri jalan dan juga ada papan nama besar di pintu gerbangnya.\r\nDi sepanjang perjalanan menuju objek wisata ini, Anda akan disuguhkan dengan berbagai pemandangan bukit yang indah. Jalan yang naik turun memberikan sensasi tersendiri ketika mengendarai kendaraan bermotor. Kini jalan menuju ke tempat wisata alam Lampung sudah cukup bagus daripada sebelumnya.', '100', '200', '1', '1', '1', '2022-10-02 21:05:25', NULL, NULL),
(2, 3, 'Pantai Arang', 'Kalianda', '0', '0', '1', '1', '1', 'Rp. 10.000', 'Pantai Arang merupakan sebuah restoran dengan konsep BBQ yang terletak di Kalianda, Kabupaten Lampung Selatan.  Jika kamu berangkat dari Kota Bandar Lampung melalui via Tol Trans Sumatera waktu tempuh menuju Pantai ini sekitar 40 menit.\r\n\r\nLokasi Pantai Arang ini satu pintu masuk dengan Pantai Marina. sebelum turun jauh tiba di Pantai Marina, disebelah kanan ada plang nya bertuliskan ‘Pantai Arang” nah tinggal masuk aja deh. Atau jika kamu bingung dengan lokasinya, kamu bisa ketik di Google Maps dengan kata kunci : Arang Lampung Grill and Beach', '100', '200', '1', '1', '1', '2022-10-02 21:06:14', NULL, NULL),
(3, 1, 'Lembah Hijau', 'kemiling', '0', '0', '1', '1', '1', 'Rp. 15.000', 'Taman Wisata Lembah Hijau Lampung adalah destinasi wisata keluarga yang tak pernah sepi dikunjungi wisatawan. Terletak di Bandar Lampung, tempat ini menawarkan sarana edukasi sekaligus rekreasi alam di lahan seluas 30 hektar. Keindahan alam berpadu dengan wahana-wahana menarik di tempat ini tak berhenti memanjakan pengunjung.\r\n\r\nTerdapat banyak wahana yang tersedia di objek wisata ini. Ada wahana air, outbound, tempat berkemah, wahana permainan, hingga water park. Namun, salah satu yang paling digemari di sini adalah Taman Satwa. Di taman ini, pengunjung akan menyaksikan 465 satwa dari 65 jenis binatang.', '0', '1000', '1', '1', '1', '2022-10-02 22:09:41', NULL, NULL),
(4, 5, 'Daerah Konserfasi Way kambas', 'Way Kambas', NULL, NULL, NULL, NULL, NULL, 'Rp. 20.000', 'Inilah tempat yang bisa dibilang sebagai sebuah surga di Pulau Sumatera bagian Selatan. Tepatnya, berada di Provinsi Lampung. Dengan deretan hutan dataran rendah, hutan rawa air tawar, padang rumput, semak-semak belukar, hutan pantai dan juga satwa-satwa liar yang tingkahnya menggemaskan.\r\n\r\nLuas wilayah kawasan ini kurang lebih 125.000 hektar. Menariknya lagi, sebagian besar kawasan ini masih berupa hutan rimba. Disini, wisatawan akan disuguhkan dengan gajah sumatera yang bisa dibilang menjadi ikon dari tempat ini. Maklum saja, saat ini Gajah Sumatera memang hampir punah.', NULL, NULL, NULL, NULL, NULL, '2022-10-05 23:36:09', NULL, NULL),
(5, 8, 'Pahawang', 'Pulau Pahawang', NULL, NULL, NULL, NULL, NULL, 'Rp. 20.000', 'Pulau Pahawang merupakan pulau tercantik di perairan di Provinsi Lampung. Secara administratif, pulau Pahawang masuk wilayah Kecamatan Punduh Pidada, Kabupaten Pesawaran, Provinsi Lampung.  Pulau cantik ini menjadi salah satu wisata favorit yang ada di Provinsi Lampung, bahkan wisata pulau yang cantik ini sudah menjadi destinasi nasional, dan banyak dilirik oleh wisatawan dari luar Lampung.\r\n\r\n', NULL, NULL, NULL, NULL, NULL, '2022-10-11 16:57:05', NULL, NULL),
(6, 8, 'Pulau Kelagian ', 'Ketapang', NULL, NULL, NULL, NULL, NULL, 'Rp. 15.000', 'Pulau kelagian merupakan kepulauan yang berada di sekitaran Teluk ratai Pesawaran.\r\nPulau ini merupakan kepulauan kecil yang tidak berpenghuni yang berpantai sangat cantik dan berair jernih jika kita trip ke pahawang di pulau kelagian menjadi tempat transit untuk briefing dan memperkenalkan cara penggunaan kaki katak dan snorkeling.', NULL, NULL, NULL, NULL, NULL, '2022-10-11 16:57:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tour_image`
--

CREATE TABLE `tour_image` (
  `tiCode` bigint(20) NOT NULL,
  `tourCode` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tour_image`
--

INSERT INTO `tour_image` (`tiCode`, `tourCode`, `path`, `type`, `createAt`, `updateAt`, `deleteAt`) VALUES
(1, 3, 'https://hiskia.xyz/public/assets/uploads/lembahhijau.webp', 'thumb', '2022-10-13 21:04:40', NULL, NULL),
(2, 1, 'https://hiskia.xyz/public/assets/uploads/wira_garden.jpg', 'thumb', '2022-10-13 21:35:38', NULL, NULL),
(3, 2, 'https://hiskia.xyz/public/assets/uploads/pantai_arang.jpg', 'thumb', '2022-10-13 21:36:57', NULL, NULL),
(4, 4, 'https://hiskia.xyz/public/assets/uploads/lamtim.jpg', 'thumb', '2022-10-13 21:36:57', NULL, NULL),
(5, 5, 'https://hiskia.xyz/public/assets/uploads/pahawang.jpg', 'thumb', '2022-10-13 21:38:30', NULL, NULL),
(6, 6, 'https://hiskia.xyz/public/assets/uploads/kelagian.jpg', 'thumb', '2022-10-13 21:53:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userCode` bigint(20) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `isActive` varchar(1) DEFAULT NULL,
  `createAt` datetime DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userCode`, `uid`, `name`, `image`, `email`, `password`, `isActive`, `createAt`, `updateAt`, `deleteAt`) VALUES
(1, '1', 'User 1', NULL, NULL, NULL, NULL, '2022-10-02 21:09:30', NULL, NULL),
(2, '2', 'User 2', NULL, NULL, NULL, NULL, '2022-10-02 21:09:50', NULL, NULL),
(3, '333', 'User 2', NULL, NULL, NULL, NULL, '2022-10-02 21:10:08', NULL, NULL),
(4, '4', 'User 4', NULL, NULL, NULL, NULL, '2022-10-02 21:10:20', NULL, NULL),
(6, '109603887362580398656', 'Leto Paya', 'https://lh3.googleusercontent.com/a/ALm5wu3pPX2LbiZpOdSUjsI6Srsu3hQEiTkeQdkEQJ38=s96-c', 'letopaya7@gmail.com', NULL, NULL, '2022-10-15 00:11:27', '2022-10-15 00:11:27', NULL),
(8, '101988937510926987524', 'Hiskia Perdamen Pulungan', 'https://lh3.googleusercontent.com/a/ALm5wu30o60ZHs_zB9e-f1j2WQjYzUPW0LPXTaYrHpI8=s96-c', 'hiski46@gmail.com', NULL, NULL, '2022-10-15 00:19:30', '2022-10-15 00:19:30', NULL),
(9, '117896767008427691591', 'Achmad Fauzi', 'https://lh3.googleusercontent.com/a/ALm5wu3_q3XYyFyf1h7IaQvTgoCyhMI2pVex98dTWyq3=s96-c', 'achmad.fauzieee@gmail.com', NULL, NULL, '2022-10-16 22:10:14', '2022-10-16 22:10:14', NULL),
(10, '115131480116345571488', 'fau zee', 'https://lh3.googleusercontent.com/a/ALm5wu3paPws5uV7jz2yoJPFD5fFOS4y1OWUwCIe--0w=s96-c', 'fauzee431@gmail.com', NULL, NULL, '2022-10-17 01:19:49', '2022-10-17 01:19:49', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `archive_article`
--
ALTER TABLE `archive_article`
  ADD PRIMARY KEY (`aaCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `articleCode` (`articleCode`);

--
-- Indeks untuk tabel `archive_tour`
--
ALTER TABLE `archive_tour`
  ADD PRIMARY KEY (`atCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `tourCode` (`tourCode`);

--
-- Indeks untuk tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`articleCode`);

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatCode`),
  ADD KEY `from` (`from`),
  ADD KEY `to` (`to`);

--
-- Indeks untuk tabel `comment_article`
--
ALTER TABLE `comment_article`
  ADD PRIMARY KEY (`caCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `articleCode` (`articleCode`);

--
-- Indeks untuk tabel `comment_hotel`
--
ALTER TABLE `comment_hotel`
  ADD PRIMARY KEY (`chCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `hotelCode` (`hotelCode`);

--
-- Indeks untuk tabel `comment_medical_facility`
--
ALTER TABLE `comment_medical_facility`
  ADD PRIMARY KEY (`cmfCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `mfCode` (`mfCode`);

--
-- Indeks untuk tabel `comment_police`
--
ALTER TABLE `comment_police`
  ADD PRIMARY KEY (`cpCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `policeCode` (`policeCode`);

--
-- Indeks untuk tabel `comment_restaurant`
--
ALTER TABLE `comment_restaurant`
  ADD PRIMARY KEY (`crCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `restaurantCode` (`restaurantCode`);

--
-- Indeks untuk tabel `comment_tour`
--
ALTER TABLE `comment_tour`
  ADD PRIMARY KEY (`ctCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `tourCode` (`tourCode`);

--
-- Indeks untuk tabel `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotelCode`),
  ADD KEY `stateCode` (`stateCode`);

--
-- Indeks untuk tabel `hotel_image`
--
ALTER TABLE `hotel_image`
  ADD PRIMARY KEY (`hiCode`),
  ADD KEY `hotelCode` (`hotelCode`);

--
-- Indeks untuk tabel `like_article`
--
ALTER TABLE `like_article`
  ADD PRIMARY KEY (`laCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `articleCode` (`articleCode`);

--
-- Indeks untuk tabel `like_hotel`
--
ALTER TABLE `like_hotel`
  ADD PRIMARY KEY (`lhCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `hotelCode` (`hotelCode`);

--
-- Indeks untuk tabel `like_medical_facility`
--
ALTER TABLE `like_medical_facility`
  ADD PRIMARY KEY (`lmfCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `mfCode` (`mfCode`);

--
-- Indeks untuk tabel `like_police`
--
ALTER TABLE `like_police`
  ADD PRIMARY KEY (`lpCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `policeCode` (`policeCode`);

--
-- Indeks untuk tabel `like_restaurant`
--
ALTER TABLE `like_restaurant`
  ADD PRIMARY KEY (`lrCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `restaurantCode` (`restaurantCode`);

--
-- Indeks untuk tabel `like_tour`
--
ALTER TABLE `like_tour`
  ADD PRIMARY KEY (`ltCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `tourCode` (`tourCode`);

--
-- Indeks untuk tabel `medical_facility`
--
ALTER TABLE `medical_facility`
  ADD PRIMARY KEY (`mfCode`),
  ADD KEY `stateCode` (`stateCode`);

--
-- Indeks untuk tabel `medical_facility_image`
--
ALTER TABLE `medical_facility_image`
  ADD PRIMARY KEY (`mfiCode`),
  ADD KEY `mfCode` (`mfCode`);

--
-- Indeks untuk tabel `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`policeCode`),
  ADD KEY `stateCode` (`stateCode`);

--
-- Indeks untuk tabel `police_image`
--
ALTER TABLE `police_image`
  ADD PRIMARY KEY (`piCode`),
  ADD KEY `policeCode` (`policeCode`);

--
-- Indeks untuk tabel `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurantCode`),
  ADD KEY `stateCode` (`stateCode`);

--
-- Indeks untuk tabel `restaurant_image`
--
ALTER TABLE `restaurant_image`
  ADD PRIMARY KEY (`riCode`),
  ADD KEY `restaurantCode` (`restaurantCode`);

--
-- Indeks untuk tabel `review_hotel`
--
ALTER TABLE `review_hotel`
  ADD PRIMARY KEY (`rhCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `hotelCode` (`hotelCode`);

--
-- Indeks untuk tabel `review_medical_facility`
--
ALTER TABLE `review_medical_facility`
  ADD PRIMARY KEY (`rmfCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `mfCode` (`mfCode`);

--
-- Indeks untuk tabel `review_police`
--
ALTER TABLE `review_police`
  ADD PRIMARY KEY (`rpCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `policeCode` (`policeCode`);

--
-- Indeks untuk tabel `review_restaurant`
--
ALTER TABLE `review_restaurant`
  ADD PRIMARY KEY (`rrCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `restaurantCode` (`restaurantCode`);

--
-- Indeks untuk tabel `review_tour`
--
ALTER TABLE `review_tour`
  ADD PRIMARY KEY (`rtCode`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `tourCode` (`tourCode`);

--
-- Indeks untuk tabel `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`stateCode`);

--
-- Indeks untuk tabel `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`tourCode`),
  ADD KEY `stateCode` (`stateCode`);

--
-- Indeks untuk tabel `tour_image`
--
ALTER TABLE `tour_image`
  ADD PRIMARY KEY (`tiCode`),
  ADD KEY `tourCode` (`tourCode`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userCode`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `archive_article`
--
ALTER TABLE `archive_article`
  MODIFY `aaCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `archive_tour`
--
ALTER TABLE `archive_tour`
  MODIFY `atCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `article`
--
ALTER TABLE `article`
  MODIFY `articleCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `chatCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `comment_article`
--
ALTER TABLE `comment_article`
  MODIFY `caCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `comment_hotel`
--
ALTER TABLE `comment_hotel`
  MODIFY `chCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `comment_medical_facility`
--
ALTER TABLE `comment_medical_facility`
  MODIFY `cmfCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `comment_police`
--
ALTER TABLE `comment_police`
  MODIFY `cpCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `comment_restaurant`
--
ALTER TABLE `comment_restaurant`
  MODIFY `crCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `comment_tour`
--
ALTER TABLE `comment_tour`
  MODIFY `ctCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotelCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `hotel_image`
--
ALTER TABLE `hotel_image`
  MODIFY `hiCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `like_article`
--
ALTER TABLE `like_article`
  MODIFY `laCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `like_hotel`
--
ALTER TABLE `like_hotel`
  MODIFY `lhCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `like_medical_facility`
--
ALTER TABLE `like_medical_facility`
  MODIFY `lmfCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `like_police`
--
ALTER TABLE `like_police`
  MODIFY `lpCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `like_restaurant`
--
ALTER TABLE `like_restaurant`
  MODIFY `lrCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `like_tour`
--
ALTER TABLE `like_tour`
  MODIFY `ltCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `medical_facility`
--
ALTER TABLE `medical_facility`
  MODIFY `mfCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `medical_facility_image`
--
ALTER TABLE `medical_facility_image`
  MODIFY `mfiCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `police`
--
ALTER TABLE `police`
  MODIFY `policeCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `police_image`
--
ALTER TABLE `police_image`
  MODIFY `piCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `restaurantCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `restaurant_image`
--
ALTER TABLE `restaurant_image`
  MODIFY `riCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `review_hotel`
--
ALTER TABLE `review_hotel`
  MODIFY `rhCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `review_medical_facility`
--
ALTER TABLE `review_medical_facility`
  MODIFY `rmfCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `review_police`
--
ALTER TABLE `review_police`
  MODIFY `rpCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `review_restaurant`
--
ALTER TABLE `review_restaurant`
  MODIFY `rrCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `review_tour`
--
ALTER TABLE `review_tour`
  MODIFY `rtCode` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `state`
--
ALTER TABLE `state`
  MODIFY `stateCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tour`
--
ALTER TABLE `tour`
  MODIFY `tourCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tour_image`
--
ALTER TABLE `tour_image`
  MODIFY `tiCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `userCode` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `archive_article`
--
ALTER TABLE `archive_article`
  ADD CONSTRAINT `archive_article_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `archive_article_ibfk_2` FOREIGN KEY (`articleCode`) REFERENCES `article` (`articleCode`);

--
-- Ketidakleluasaan untuk tabel `archive_tour`
--
ALTER TABLE `archive_tour`
  ADD CONSTRAINT `archive_tour_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `archive_tour_ibfk_2` FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`);

--
-- Ketidakleluasaan untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`from`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`to`) REFERENCES `user` (`userCode`);

--
-- Ketidakleluasaan untuk tabel `comment_article`
--
ALTER TABLE `comment_article`
  ADD CONSTRAINT `comment_article_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `comment_article_ibfk_2` FOREIGN KEY (`articleCode`) REFERENCES `article` (`articleCode`);

--
-- Ketidakleluasaan untuk tabel `comment_hotel`
--
ALTER TABLE `comment_hotel`
  ADD CONSTRAINT `comment_hotel_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `comment_hotel_ibfk_2` FOREIGN KEY (`hotelCode`) REFERENCES `hotel` (`hotelCode`);

--
-- Ketidakleluasaan untuk tabel `comment_medical_facility`
--
ALTER TABLE `comment_medical_facility`
  ADD CONSTRAINT `comment_medical_facility_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `comment_medical_facility_ibfk_2` FOREIGN KEY (`mfCode`) REFERENCES `medical_facility` (`mfCode`);

--
-- Ketidakleluasaan untuk tabel `comment_police`
--
ALTER TABLE `comment_police`
  ADD CONSTRAINT `comment_police_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `comment_police_ibfk_2` FOREIGN KEY (`policeCode`) REFERENCES `police` (`policeCode`);

--
-- Ketidakleluasaan untuk tabel `comment_restaurant`
--
ALTER TABLE `comment_restaurant`
  ADD CONSTRAINT `comment_restaurant_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `comment_restaurant_ibfk_2` FOREIGN KEY (`restaurantCode`) REFERENCES `restaurant` (`restaurantCode`);

--
-- Ketidakleluasaan untuk tabel `comment_tour`
--
ALTER TABLE `comment_tour`
  ADD CONSTRAINT `comment_tour_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `comment_tour_ibfk_2` FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`);

--
-- Ketidakleluasaan untuk tabel `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`);

--
-- Ketidakleluasaan untuk tabel `hotel_image`
--
ALTER TABLE `hotel_image`
  ADD CONSTRAINT `hotel_image_ibfk_1` FOREIGN KEY (`hotelCode`) REFERENCES `hotel` (`hotelCode`);

--
-- Ketidakleluasaan untuk tabel `like_article`
--
ALTER TABLE `like_article`
  ADD CONSTRAINT `like_article_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `like_article_ibfk_2` FOREIGN KEY (`articleCode`) REFERENCES `article` (`articleCode`);

--
-- Ketidakleluasaan untuk tabel `like_hotel`
--
ALTER TABLE `like_hotel`
  ADD CONSTRAINT `like_hotel_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `like_hotel_ibfk_2` FOREIGN KEY (`hotelCode`) REFERENCES `hotel` (`hotelCode`);

--
-- Ketidakleluasaan untuk tabel `like_medical_facility`
--
ALTER TABLE `like_medical_facility`
  ADD CONSTRAINT `like_medical_facility_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `like_medical_facility_ibfk_2` FOREIGN KEY (`mfCode`) REFERENCES `medical_facility` (`mfCode`);

--
-- Ketidakleluasaan untuk tabel `like_police`
--
ALTER TABLE `like_police`
  ADD CONSTRAINT `like_police_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `like_police_ibfk_2` FOREIGN KEY (`policeCode`) REFERENCES `police` (`policeCode`);

--
-- Ketidakleluasaan untuk tabel `like_restaurant`
--
ALTER TABLE `like_restaurant`
  ADD CONSTRAINT `like_restaurant_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `like_restaurant_ibfk_2` FOREIGN KEY (`restaurantCode`) REFERENCES `restaurant` (`restaurantCode`);

--
-- Ketidakleluasaan untuk tabel `like_tour`
--
ALTER TABLE `like_tour`
  ADD CONSTRAINT `like_tour_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `like_tour_ibfk_2` FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`);

--
-- Ketidakleluasaan untuk tabel `medical_facility`
--
ALTER TABLE `medical_facility`
  ADD CONSTRAINT `medical_facility_ibfk_1` FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`);

--
-- Ketidakleluasaan untuk tabel `medical_facility_image`
--
ALTER TABLE `medical_facility_image`
  ADD CONSTRAINT `medical_facility_image_ibfk_1` FOREIGN KEY (`mfCode`) REFERENCES `medical_facility` (`mfCode`);

--
-- Ketidakleluasaan untuk tabel `police`
--
ALTER TABLE `police`
  ADD CONSTRAINT `police_ibfk_1` FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`);

--
-- Ketidakleluasaan untuk tabel `police_image`
--
ALTER TABLE `police_image`
  ADD CONSTRAINT `police_image_ibfk_1` FOREIGN KEY (`policeCode`) REFERENCES `police` (`policeCode`);

--
-- Ketidakleluasaan untuk tabel `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`);

--
-- Ketidakleluasaan untuk tabel `restaurant_image`
--
ALTER TABLE `restaurant_image`
  ADD CONSTRAINT `restaurant_image_ibfk_1` FOREIGN KEY (`restaurantCode`) REFERENCES `restaurant` (`restaurantCode`);

--
-- Ketidakleluasaan untuk tabel `review_hotel`
--
ALTER TABLE `review_hotel`
  ADD CONSTRAINT `review_hotel_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `review_hotel_ibfk_2` FOREIGN KEY (`hotelCode`) REFERENCES `hotel` (`hotelCode`);

--
-- Ketidakleluasaan untuk tabel `review_medical_facility`
--
ALTER TABLE `review_medical_facility`
  ADD CONSTRAINT `review_medical_facility_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `review_medical_facility_ibfk_2` FOREIGN KEY (`mfCode`) REFERENCES `medical_facility` (`mfCode`);

--
-- Ketidakleluasaan untuk tabel `review_police`
--
ALTER TABLE `review_police`
  ADD CONSTRAINT `review_police_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `review_police_ibfk_2` FOREIGN KEY (`policeCode`) REFERENCES `police` (`policeCode`);

--
-- Ketidakleluasaan untuk tabel `review_restaurant`
--
ALTER TABLE `review_restaurant`
  ADD CONSTRAINT `review_restaurant_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `review_restaurant_ibfk_2` FOREIGN KEY (`restaurantCode`) REFERENCES `restaurant` (`restaurantCode`);

--
-- Ketidakleluasaan untuk tabel `review_tour`
--
ALTER TABLE `review_tour`
  ADD CONSTRAINT `review_tour_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  ADD CONSTRAINT `review_tour_ibfk_2` FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`);

--
-- Ketidakleluasaan untuk tabel `tour`
--
ALTER TABLE `tour`
  ADD CONSTRAINT `tour_ibfk_1` FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`);

--
-- Ketidakleluasaan untuk tabel `tour_image`
--
ALTER TABLE `tour_image`
  ADD CONSTRAINT `tour_image_ibfk_1` FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
