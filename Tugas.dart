void main() {
  String nama = "Denny Malik Ibrahim";
  String nim = "2241720107";

  for (int angka = 0; angka <= 201; angka++) {
    if (isPrime(angka)) {
      print('$angka adalah bilangan prima.');
      print('Nama: $nama');
      print('NIM: $nim');
      print('--------------------------');
    }
  }
}

// Fungsi untuk memeriksa apakah bilangan adalah prima
bool isPrime(int angka) {
  if (angka <= 1) {
    return false; // Bilangan <= 1 bukan bilangan prima
  }
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false; // Jika ditemukan faktor selain 1 dan dirinya sendiri
    }
  }
  return true; // Jika tidak ditemukan faktor lain, maka prima
}
