--BERHASIL
SELECT * FROM SALAM.mahasiswas;

--BERHASIL
INSERT INTO SALAM.mahasiswas (nim, nama, email, program_studi, tahun_angkatan)
VALUES ('1237050010', 'Fahmi', 'fahmi@gmail.com', 'Teknik Informatika', 2025);

--BERHASIL
UPDATE SALAM.mahasiswas SET nama='Rizki' WHERE nim='1237050081';

--BERHASIL
DELETE FROM SALAM.mahasiswas WHERE nim = '1237050003';

--BERHASIL
DROP TABLE SALAM.mahasiswas;

--BERHASIL
CREATE TABLE SALAM.fakultas (event_id SERIAL PRIMARY KEY, detail TEXT);
