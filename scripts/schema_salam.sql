CREATE SCHEMA SALAM;

CREATE TABLE SALAM.mahasiswas (
    nim VARCHAR(15) PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    program_studi VARCHAR(50) NOT NULL,
    tahun_angkatan INTEGER NOT NULL,
    CONSTRAINT chk_angkatan_valid CHECK (tahun_angkatan >= 2021 AND tahun_angkatan <= 2025)
);

--CHECK CONSTRAINT BERHASIL
INSERT INTO SALAM.mahasiswas (nim, nama, email, program_studi, tahun_angkatan)
VALUES ('1237050001', 'Rifki', 'rifkii@gmail.com', 'Teknik Informatika', 2023);

--CHECK CONSTRAINT GAGAL TAHUN ANGKATAN DI LUAR BATAS
INSERT INTO SALAM.mahasiswas (nim, nama, email, program_studi, tahun_angkatan)
VALUES ('1237050005', 'ilham', 'ilham@gmail.com', 'Teknik Informatika', 2026);

--CHECK CONSTRAINT GAGAL EMAIL SAMA ATAU SUDAH ADA
INSERT INTO SALAM.mahasiswas (nim, nama, email, program_studi, tahun_angkatan)
VALUES ('1237050006', 'Soni', 'rifkii@gmail.com', 'Teknik Informatika', 2024);

--CHECK CONSTRAINT GAGAL NIM SAMA ATAU SUDAH ADA
INSERT INTO SALAM.mahasiswas (nim, nama, email, program_studi, tahun_angkatan)
VALUES ('1237050001', 'Soni', 'contoh@gmail.com', 'Teknik Informatika', 2024);