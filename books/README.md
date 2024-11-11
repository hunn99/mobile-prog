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


