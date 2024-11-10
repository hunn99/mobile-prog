# Praktikum 1: Dasar State dengan Model-View

Langkah 1: Buat Project Baru
Langkah 2: Membuat model task.dart
![alt text](image.png)

Langkah 3: Buat file plan.dart
![alt text](image-1.png)

Langkah 4: Buat file data_layer.dart
![alt text](image-2.png)

Langkah 5: Pindah ke file main.dart
![alt text](image-3.png)

Langkah 6: buat plan_screen.dart
![alt text](image-4.png)

Langkah 7: buat method _buildAddTaskButton()
![alt text](image-5.png)

Langkah 8: buat widget _buildList()
![alt text](image-6.png)

Langkah 9: buat widget _buildTaskTile
![alt text](image-7.png)

Langkah 10: Tambah Scroll Controller
![alt text](image-8.png)

Langkah 11: Tambah Scroll Listener
![alt text](image-9.png)

Langkah 12: Tambah controller dan keyboard behavior
![alt text](image-10.png)

Langkah 13: Terakhir, tambah method dispose()
![alt text](image-11.png)

Langkah 14: Hasil
![alt text](image-12.png)

# Tugas Praktikum 1: Dasar State dengan Model-View
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.

2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
Langkah 4 pada praktikum ini bertujuan untuk membuat file bernama data_layer.dart yang berfungsi sebagai "wrapper" atau pembungkus untuk beberapa file data layer lainnya, seperti plan.dart dan task.dart.

Dengan menambahkan perintah export untuk masing-masing file (plan.dart dan task.dart) di dalam data_layer.dart, kita menyederhanakan proses impor di tempat lain dalam aplikasi. Jadi, ketika komponen lain membutuhkan akses ke model plan dan task, kita cukup mengimpor data_layer.dart saja tanpa perlu mengimpor masing-masing file satu per satu.


3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
Variabel plan dideklarasikan agar kelas _PlanScreenState memiliki referensi ke objek Plan. Variabel ini akan menyimpan data atau status yang berkaitan dengan rencana tertentu (plan) yang mungkin digunakan dalam tampilan (UI) atau logika aplikasi.

Penggunaan const di sini untuk mendefinisikan Plan sebagai objek konstanta. Ini berarti objek tersebut tidak akan diubah setelah dibuat, sehingga cocok untuk nilai atau konfigurasi yang tetap (immutable) dan tidak berubah selama aplikasi berjalan. Pendekatan ini juga dapat meningkatkan efisiensi penggunaan memori, karena objek konstanta yang sama akan dipakai kembali di seluruh aplikasi alih-alih membuat objek baru setiap kali.


4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!


5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
Pada kode ini, initState dan dispose adalah bagian dari lifecycle widget di Flutter yang berfungsi untuk mengelola siklus hidup State pada widget.

Langkah 11: initState

initState: Dipanggil satu kali saat objek State pertama kali dibuat.
Pada kode ini, initState digunakan untuk:
Memanggil super.initState(), yang menjalankan inisialisasi pada kelas induk State.
Menginisialisasi scrollController, yang merupakan objek ScrollController untuk mengelola perilaku scrolling.
addListener: Menambahkan listener ke scrollController. Listener ini membuat fokus input berpindah saat pengguna menggulir (scroll) ke area lain, sehingga fokus pada elemen input seperti TextField dihapus.

Langkah 13: dispose
dispose: Dipanggil saat objek State akan dihancurkan dan tidak lagi digunakan.
Pada kode ini, dispose digunakan untuk:
Memanggil scrollController.dispose(), yang membersihkan scrollController dan melepaskan sumber daya yang terikat padanya. Ini penting untuk mencegah kebocoran memori karena ScrollController tidak lagi diperlukan setelah widget dihapus.
Memanggil super.dispose() untuk menjalankan pembersihan tambahan dari kelas induk State.

Jadi, kedua metode ini membantu mengelola inisialisasi dan pembersihan sumber daya yang digunakan oleh widget, menjaga efisiensi aplikasi dan mencegah kebocoran memori.



6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !