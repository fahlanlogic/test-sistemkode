DROP TABLE IF EXISTS "public"."mahasiswa";
-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mahasiswa_nim_seq;

-- Table Definition
CREATE TABLE "public"."mahasiswa" (
    "nim" int4 NOT NULL DEFAULT nextval('mahasiswa_nim_seq'::regclass),
    "nama" varchar(255) NOT NULL,
    "alamat" text NOT NULL,
    "jurusan" varchar(255) NOT NULL,
    "umur" int4 NOT NULL,
    "created_at" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("nim")
);

DROP TABLE IF EXISTS "public"."mata_kuliah";
-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS mata_kuliah_id_seq;

-- Table Definition
CREATE TABLE "public"."mata_kuliah" (
    "id" int4 NOT NULL DEFAULT nextval('mata_kuliah_id_seq'::regclass),
    "mata_kuliah" varchar(255) NOT NULL,
    "nim" int4 NOT NULL,
    "nilai" int4 NOT NULL,
    "dosen_pengajar" varchar(255) NOT NULL,
    "created_at" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "mata_kuliah_nim_fkey" FOREIGN KEY ("nim") REFERENCES "public"."mahasiswa"("nim"),
    PRIMARY KEY ("id")
);

INSERT INTO "public"."mahasiswa" ("nim", "nama", "alamat", "jurusan", "umur", "created_at", "updated_at") VALUES
(234567, 'Alice', 'Jl. Gatot Subroto', 'Sistem Informasi', 23, '2024-07-03 18:16:59.468895', '2024-07-03 18:16:59.468895');
INSERT INTO "public"."mahasiswa" ("nim", "nama", "alamat", "jurusan", "umur", "created_at", "updated_at") VALUES
(345678, 'Bob', 'Jl. Sudirman No.5', 'Teknik Informatika', 20, '2024-07-03 18:16:59.468895', '2024-07-03 18:16:59.468895');
INSERT INTO "public"."mahasiswa" ("nim", "nama", "alamat", "jurusan", "umur", "created_at", "updated_at") VALUES
(456789, 'Cindy', 'Jl. Pahlawan No.2', 'Manajemen', 22, '2024-07-03 18:16:59.468895', '2024-07-03 18:16:59.468895');
INSERT INTO "public"."mahasiswa" ("nim", "nama", "alamat", "jurusan", "umur", "created_at", "updated_at") VALUES
(567890, 'David', 'Jl. Diponegoro No.3', 'Teknik Elektro', 25, '2024-07-03 18:16:59.468895', '2024-07-03 18:16:59.468895'),
(678901, 'Emily', 'Jl. Cendrawasih No.4', 'Manajemen', 24, '2024-07-03 18:16:59.468895', '2024-07-03 18:16:59.468895'),
(789012, 'Frank', 'Jl. Ahmad Yani No.6', 'Teknik Informatika', 19, '2024-07-03 18:16:59.468895', '2024-07-03 18:16:59.468895'),
(123456, 'John', 'Jl. Raya No.5', 'Teknik Informatika', 21, '2024-07-03 18:16:59.468895', '2024-07-03 18:16:59.468895');

INSERT INTO "public"."mata_kuliah" ("id", "mata_kuliah", "nim", "nilai", "dosen_pengajar", "created_at", "updated_at") VALUES
(1, 'Pemrograman Web', 123456, 85, 'Pak Budi', '2024-07-03 18:29:30.826455', '2024-07-03 18:29:30.826455');
INSERT INTO "public"."mata_kuliah" ("id", "mata_kuliah", "nim", "nilai", "dosen_pengajar", "created_at", "updated_at") VALUES
(2, 'Basis Data', 234567, 70, 'Ibu Ani', '2024-07-03 18:29:30.826455', '2024-07-03 18:29:30.826455');
INSERT INTO "public"."mata_kuliah" ("id", "mata_kuliah", "nim", "nilai", "dosen_pengajar", "created_at", "updated_at") VALUES
(3, 'Jaringan Komputer', 345678, 75, 'Pak Dodi', '2024-07-03 18:29:30.826455', '2024-07-03 18:29:30.826455');
INSERT INTO "public"."mata_kuliah" ("id", "mata_kuliah", "nim", "nilai", "dosen_pengajar", "created_at", "updated_at") VALUES
(4, 'Sistem Operasi', 123456, 90, 'Pak Budi', '2024-07-03 18:29:30.826455', '2024-07-03 18:29:30.826455'),
(5, 'Manajemen Proyek', 456789, 80, 'Ibu Desi', '2024-07-03 18:29:30.826455', '2024-07-03 18:29:30.826455'),
(6, 'Bahasa Inggris', 567890, 85, 'Ibu Eka', '2024-07-03 18:29:30.826455', '2024-07-03 18:29:30.826455'),
(7, 'Statistika', 678901, 75, 'Pak Farhan', '2024-07-03 18:29:30.826455', '2024-07-03 18:29:30.826455'),
(8, 'Algoritma', 789012, 65, 'Pak Galih', '2024-07-03 18:29:30.826455', '2024-07-03 18:29:30.826455'),
(9, 'Pemrograman Java', 123456, 95, 'Pak Budi', '2024-07-03 18:29:30.826455', '2024-07-03 18:29:30.826455');
