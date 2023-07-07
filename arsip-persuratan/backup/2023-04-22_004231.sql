DROP TABLE tbl_disposisi;

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_disposisi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tbl_disposisi VALUES("1","UPT Pendidikan Karawang","boleh","Penting","2023-04-30","Harus dibersihkan","2","1");
INSERT INTO tbl_disposisi VALUES("2","gugus depan 006","implementasi hari libur","Biasa","2023-04-11","-","1","1");



DROP TABLE tbl_instansi;

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_instansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_instansi VALUES("1","Universitas Singaperbangsa Karawang","Tata Usaha Fakultas Ilmu Komputer","Pendidikan","Telukjambe Timur, Karawang, Jawa Barat","Dr. Mayasari, S. S., M.Hum.","0426097905","https://cs.unsika.ac.id","2110631250044@student.unsika.ac.id","Logo Fakultas.png","1");



DROP TABLE tbl_klasifikasi;

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_klasifikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO tbl_klasifikasi VALUES("1","SE","Surat Edaran","Kategori Surat Edaran","1");
INSERT INTO tbl_klasifikasi VALUES("2","SPEM","Surat Peminjaman","Kategori Surat Peminjaman","1");
INSERT INTO tbl_klasifikasi VALUES("3","A","Pendidikan","Pendidikan Sekolah Menengah Kejuruan","1");
INSERT INTO tbl_klasifikasi VALUES("4","B","Sarana","Bangunan Sekolah dan Sarana Pendukung Lainnya","1");
INSERT INTO tbl_klasifikasi VALUES("5","C","Kurikulum","Kurikulum 2016","1");
INSERT INTO tbl_klasifikasi VALUES("6","D","Kegiatan","Ekstrakurikuler","1");
INSERT INTO tbl_klasifikasi VALUES("7","E","Administrasi","Administrasi Keuangan","1");



DROP TABLE tbl_sett;

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sett`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_sett VALUES("1","10","10","10","1");



DROP TABLE tbl_surat_keluar;

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_keluar VALUES("2","1","Mahasiswa Fasilkom","309/UN64.7/SE/2023","Seluruh mahasiswa/i Fakultas Ilmu Komputer wajib mengikuti proses pembelajaran yang dilaksanakan secara luring/tatap muka sesuai dengan jadwal yang telah ditentukan dengan menggunakan protokol kesehatan secara ketat.
","SE","2023-01-31","2023-04-21","4817-Surat Edaran Kuliah Luring Semester Genap TA 2022-2023.pdf","TENTANG PELAKSANAAN KULIAH LURING FAKULTAS ILMU KOMPUTER TAHUN AKADEMIK 2022/2023","1");



DROP TABLE tbl_surat_masuk;

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_masuk VALUES("1","1","001","Himsika","Surat peminjaman alat sofa, meja, bendera dan tempat ruangan K3-003","SPEM","1","2023-03-20","2023-03-20","9781-(001) - Surat Permohonan Peminjaman Alat dan Tempat Dekan FISIP (Pak Nono).pdf","-","1");
INSERT INTO tbl_surat_masuk VALUES("2","2","088","UPT Pendidikan Karawang","Peminjaman Ruangan K4-004 Fasilkom","SPEM","Surat Peminjaman Tempat","2023-04-04","2023-04-04","304-Surat Peminjaman Tempat FASILKOM.docx","Dipinjam tanggal 04 Mei 2023 s.d. 05 Mei 2023","1");



DROP TABLE tbl_user;

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO tbl_user VALUES("1","masrud","7d05dc02abe9cda729d0c798c886db47","Inez Zahra","-","1");
INSERT INTO tbl_user VALUES("6","lailapuspita","3db019c0fe40186ce81307d95630858a","Laila Puspita","123321","2");



