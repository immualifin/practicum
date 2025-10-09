# 🎮 Aplikasi Katalog Game Flutter

Proyek ini adalah implementasi praktikum *Mobile Programming* menggunakan Flutter untuk membangun aplikasi katalog game.  
Aplikasi ini mengambil data dari API eksternal, menampilkannya dalam bentuk daftar, dan menyediakan halaman detail untuk setiap game.  
Konsep utama yang diterapkan meliputi integrasi API, *asynchronous programming* dengan `FutureBuilder`, serialisasi JSON, dan navigasi menggunakan *named route*.

## 📌 Tujuan

- [cite_start]Mendesain antarmuka (GUI) aplikasi Flutter yang interaktif dan responsif[cite: 3].  
- [cite_start]Menerapkan sistem navigasi antarhalaman menggunakan mekanisme *named route*[cite: 3].  
- [cite_start]Membuat model data dengan *JSON serialization* dan *deserialization*[cite: 3].  
- [cite_start]Mengintegrasikan data dari API eksternal ke dalam aplikasi menggunakan paket `http`[cite: 3].  
- [cite_start]Menampilkan data hasil permintaan API ke layar aplikasi dengan tata letak yang dinamis[cite: 3].  
## 🚀 Langkah Kerja

1. [cite_start]**Membuat proyek Flutter baru** dengan nama `game_app`[cite: 9].

2. [cite_start]**Menambahkan *dependency*** di `pubspec.yaml`[cite: 17]:

   ```yaml
   dependencies:
     flutter:
       sdk: flutter
     http: ^1.1.0
     json_annotation: ^4.9.0
     readmore: ^2.2.0

   dev_dependencies:
     build_runner: ^2.4.8
     json_serializable: ^6.7.1
````

[cite_start]Lalu jalankan perintah berikut di terminal[cite: 41]:

```bash
flutter pub get
```

3. **Implementasi File Utama**

   * [cite_start]**Struktur Proyek**: Folder `model` (kelas data), `view` (UI), dan `viewmodel` (logika API)[cite: 10, 16].
   * [cite_start]**`model/game.dart` & `model/detailgame.dart`**: Berisi kelas model untuk data game yang dikonversi dari JSON[cite: 362, 397].
   * [cite_start]**`viewmodel/fetchgame.dart`**: Berisi fungsi `fetchGames()` dan `fetchDataFromAPI()` untuk melakukan permintaan HTTP ke API `https://www.freetogame.com/api/`[cite: 356, 464, 466].
   * [cite_start]**`view/home.dart`**: Menampilkan daftar game menggunakan `FutureBuilder` dan `ListView.builder`[cite: 89, 269].
   * [cite_start]**`view/detail.dart`**: Menampilkan informasi detail game yang dipilih, juga menggunakan `FutureBuilder`[cite: 390, 536].
   * [cite_start]**`main.dart`**: Mengonfigurasi `MaterialApp` dengan `initialRoute` dan `routes` untuk menangani navigasi *named route* antar halaman[cite: 655, 661, 662].

4. [cite_start]**Menjalankan aplikasi**: Aplikasi menampilkan halaman *Home*, dan saat item game diklik, aplikasi berpindah ke halaman *Detail* dengan mengirimkan ID game sebagai argumen[cite: 353, 354].

## 📷 Screenshot

### 🏠 Halaman Home

![Screenshot Aplikasi](daftargame.png)

* [cite_start]Latar belakang berwarna kuning[cite: 126].
* Menampilkan *search bar* di bagian atas.
* [cite_start]Menampilkan daftar game yang dapat di-*scroll*, masing-masing dengan gambar *thumbnail*, judul, dan genre[cite: 351, 368].

### 🕹️ Halaman Detail

![Screenshot Aplikasi](detailgame.png)

* [cite_start]Menampilkan gambar *header* game yang dipilih[cite: 538].
* [cite_start]Menyajikan informasi **Minimum System Requirements** dalam sebuah *card*[cite: 568].
* [cite_start]Menampilkan *screenshot* game yang dapat di-*scroll* secara horizontal[cite: 597].
* [cite_start]Menampilkan deskripsi game yang dapat diperluas (*read more*)[cite: 622, 650].

---

## ✅ Kesimpulan

* [cite_start]**`FutureBuilder`** memudahkan proses penampilan data dari API secara asinkron, termasuk menangani status *loading* dan *error*[cite: 700].
* [cite_start]Kombinasi **`ListView.builder`** dan **`Card`** efektif untuk membuat daftar item yang dinamis dan memiliki UI yang rapi[cite: 701].
* [cite_start]Navigasi dengan **`Navigator.pushNamed`** memungkinkan pengelolaan alur perpindahan halaman yang terstruktur dan mempermudah pengiriman data antar halaman[cite: 704].
* [cite_start]Paket **`json_serializable`** menyederhanakan konversi data JSON dari API menjadi objek Dart, membuat kode lebih bersih dan mudah dikelola[cite: 705].

---

📚 *Disusun untuk memenuhi tugas praktikum Mobile Programming.*

```

---

Apakah kamu ingin saya tambahkan juga contoh **struktur folder proyek Flutter** (`lib/model`, `lib/view`, `lib/viewmodel`, dll.) di bawah bagian *Langkah Kerja* agar README-nya lebih lengkap?
```
