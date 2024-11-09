# Praktikum Menerapkan Plugin di Project Flutter

Langkah 1: Buat Project Baru
Langkah 2: Menambahkan Plugin
![alt text](image.png)

Langkah 3: Buat file red_text_widget.dart
![alt text](image-1.png)

Langkah 4: Tambah Widget AutoSizeText
mengubah kode return Container() menjadi seperti berikut
![alt text](image-2.png)
Ada erro karena belum import package
![alt text](image-3.png)

Langkah 5: Buat Variabel text dan parameter di constructor
![alt text](image-4.png)

Langkah 6: Tambahkan widget di main.dart
![alt text](image-5.png)
![alt text](image-6.png)

#Tugas Praktikum

1. Selesaikan Praktikum tersebut, lalu dokumentasikan dan push ke repository Anda berupa screenshot hasil pekerjaan beserta penjelasannya di file README.md!

2. Jelaskan maksud dari langkah 2 pada praktikum tersebut!
Perintah flutter pub add auto_size_text digunakan untuk menambahkan paket auto_size_text ke dalam proyek Flutter. Perintah ini secara otomatis akan memperbarui file pubspec.yaml untuk menambahkan dependensi yang diperlukan, dan kemudian mengunduh paket tersebut.

3. Jelaskan maksud dari langkah 5 pada praktikum tersebut!
angkah 5 pada praktikum bertujuan untuk mengatasi error "Undefined name 'text'" dengan menambahkan variabel text sebagai properti pada kelas RedTextWidget dan menjadikannya parameter dalam konstruktor. Hal ini dilakukan dengan mendeklarasikan text sebagai variabel final dalam kelas dan menambahkannya sebagai parameter yang wajib diisi pada konstruktor, sehingga setiap instance dari RedTextWidget harus menerima nilai text saat dibuat. Dengan cara ini, properti text dapat digunakan dalam metode build untuk menampilkan teks yang diberikan melalui widget AutoSizeText.

4. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!
Kedua Container tersebut digunakan untuk memperlihatkan perbedaan cara menampilkan teks dengan dua pendekatan yang berbeda. RedTextWidget yang menggunakan AutoSizeText memungkinkan ukuran teks menyesuaikan secara otomatis agar pas dalam ruang terbatas atau sesuai dengan lebar widget, sehingga teks bisa terpotong jika ruang tidak mencukupi. Sementara itu, widget Text standar menampilkan teks tanpa penyesuaian otomatis, bergantung pada ruang yang lebih besar agar teks dapat terlihat sepenuhnya tanpa terpotong.

5. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi ini !

| Parameter          | Keterangan                                                                 |
|--------------------|---------------------------------------------------------------------------|
| **key**            | Digunakan untuk mengidentifikasi widget ini dalam pohon widget.           |
| **textKey**        | Digunakan untuk memberikan kunci khusus pada widget `Text`.               |
| **style**          | Menetapkan gaya teks (tebal dan merah dalam contoh ini).                  |
| **minFontSize**    | Ukuran font minimum yang digunakan saat menyesuaikan ukuran teks otomatis.|
| **maxFontSize**    | Ukuran font maksimum yang diterapkan saat teks menyesuaikan diri.        |
| **stepGranularity**| Menentukan ukuran langkah untuk penyesuaian ukuran font.                 |
| **presetFontSizes**| Menyediakan daftar ukuran font yang diurutkan menurun.                    |
| **group**          | Menyinkronkan ukuran font di antara beberapa widget `AutoSizeText`.       |
| **textAlign**      | Mengatur perataan teks secara horizontal.                                |
| **textDirection**  | Menentukan arah teks.                                                    |
| **locale**         | Menetapkan pengaturan lokal yang digunakan untuk memilih font yang tepat.|
| **softWrap**       | Menentukan apakah teks harus dipotong pada baris baru jika perlu.        |
| **wrapWords**      | Menentukan apakah kata-kata yang tidak muat dalam satu baris akan dibungkus.|
| **overflow**       | Menentukan bagaimana teks yang meluap (overflow) akan ditampilkan.       |
| **overflowReplacement** | Menyediakan widget pengganti jika teks meluap dan tidak muat.         |
| **textScaleFactor**| Mengatur skala font berdasarkan faktor skala teks.                       |
| **maxLines**       | Menentukan jumlah baris maksimum yang diizinkan untuk teks.              |
| **semanticsLabel** | Memberikan label semantik alternatif untuk teks, yang bermanfaat untuk pembaca layar (screen reader).|


6. Kumpulkan laporan praktikum Anda berupa link repository GitHub kepada dosen!

