--BERHASIL
SELECT * FROM SALAM.mahasiswas;

--BERHASIL
INSERT INTO SALAM.mahasiswas (nim, nama, email, program_studi, tahun_angkatan)
VALUES ('1237050008', 'Joni', 'joni@gmail.com', 'Teknik Informatika', 2025);

--BERHASIL
UPDATE SALAM.mahasiswas SET nama='Rizki' WHERE nim='1237050088';

--BERHASIL
DELETE FROM SALAM.mahasiswas WHERE nim = '1237050006';

--GAGAL KARENA TIDAK DI PERBOLEHKAN
DROP TABLE SALAM.mahasiswas;
