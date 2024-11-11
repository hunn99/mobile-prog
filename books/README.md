# Praktikum 1: Mengunduh Data dari Web Service (API)

Langkah 1: Buat Project Baru
![alt text](image.png)

Langkah 2: Cek file pubspec.yaml
![alt text](image-1.png)

Langkah 3: Buka file main.dart
![alt text](image-2.png)

Langkah 4: Tambah method getData()
![alt text](image-3.png)
![alt text](image-4.png)

Langkah 5: Tambah kode di ElevatedButton
![alt text](image-5.png)

Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
substring:
Di dalam callback then dari getData, nilai yang dikembalikan oleh getData() (yang diasumsikan sebagai value) akan diproses. Pada value.body.toString().substring(0, 450), bagian substring(0, 450) mengambil hanya 450 karakter pertama dari value.body. Ini dilakukan agar data yang panjang hanya menampilkan bagian awalnya. Dengan demikian, jika value.body berisi teks yang sangat panjang, hanya bagian awal yang akan disimpan dalam result untuk tampilan atau keperluan lainnya.

catchError:
catchError digunakan untuk menangani error jika proses getData() gagal, misalnya karena masalah jaringan atau kesalahan server. Jika error terjadi, catchError akan mengatur result menjadi 'An error occurred' dan memanggil setState(() {}) untuk memperbarui tampilan. Dengan ini, pengguna akan melihat pesan kesalahan alih-alih aplikasi diam atau mengalami error yang tidak tertangani.

![alt text](image-6.png)

# Praktikum 2: Menggunakan await/async untuk menghindari callbacks

Langkah 1: Buka file main.dart
![alt text](image-7.png)

Langkah 2: Tambah method count()
![alt text](image-8.png)

Langkah 3: Panggil count()
![alt text](image-9.png)

Langkah 4: Run
![alt text](image-10.png)

Jelaskan maksud kode langkah 1 dan 2 tersebut!
Langkah 1: Fungsi Asinkron returnOneAsync, returnTwoAsync, dan returnThreeAsync
Pada langkah ini, terdapat tiga fungsi asinkron yang mengembalikan nilai integer setelah jeda waktu 3 detik:

returnOneAsync: Fungsi ini menunggu (await) selama 3 detik (dengan Future.delayed(Duration(seconds: 3))), kemudian mengembalikan nilai 1.
returnTwoAsync: Sama seperti returnOneAsync, namun fungsi ini mengembalikan nilai 2 setelah jeda 3 detik.
returnThreeAsync: Fungsi ini juga menunggu 3 detik, kemudian mengembalikan nilai 3.
Ketiga fungsi ini menunjukkan bagaimana fungsi asinkron dapat dijeda sebelum mengembalikan hasil. Ini berguna dalam simulasi pemrosesan atau permintaan jaringan yang membutuhkan waktu sebelum mendapatkan respons.

Langkah 2: Fungsi Asinkron count
Fungsi count bertugas untuk menjalankan ketiga fungsi di Langkah 1 secara berurutan dan menjumlahkan hasilnya. Berikut langkah-langkah dalam fungsi ini:

Inisialisasi Total: Variabel total diinisialisasi ke 0 untuk menyimpan hasil penjumlahan nilai yang dikembalikan oleh fungsi di Langkah 1.

Panggilan dan Penjumlahan Asinkron:

total = await returnOneAsync();: Memanggil returnOneAsync dan menyimpan hasilnya (1) dalam total.
total += await returnTwoAsync();: Memanggil returnTwoAsync dan menambahkan hasilnya (2) ke total, sehingga total sekarang menjadi 3.
total += await returnThreeAsync();: Memanggil returnThreeAsync dan menambahkan hasilnya (3) ke total, sehingga total akhirnya menjadi 6.
Memperbarui State: Setelah ketiga fungsi selesai dijalankan dan total dihitung, setState dipanggil untuk memperbarui variabel result dengan nilai total yang sudah dijadikan string (total.toString()), yang kemudian bisa ditampilkan di UI.

Secara keseluruhan, count menghitung jumlah total dari hasil tiga fungsi asinkron, menunggu setiap fungsi selesai sebelum melanjutkan ke fungsi berikutnya. Total penjumlahan yang dihasilkan adalah 6 (1 + 2 + 3), yang kemudian disimpan dalam result untuk ditampilkan pada UI.




