# ✨ Aplikasi Tasbih Digital GetX

Proyek ini adalah implementasi praktikum *Mobile Programming* menggunakan Flutter untuk membangun aplikasi tasbih digital sederhana. Aplikasi ini mendemonstrasikan manajemen state modern dengan memanfaatkan package **GetX**.

Konsep utama yang diterapkan meliputi:

  - Manajemen State Reaktif dengan GetX.
  - Pemisahan logika dan tampilan (*Controller-View*).
  - Variabel reaktif (`.obs`) untuk pembaruan UI otomatis.
  - Penggunaan widget `Obx` untuk me-*rebuild* bagian UI tertentu secara efisien.

-----

## 📌 Tujuan

  - Memahami konsep manajemen state menggunakan GetX dalam Flutter.
  - Membedakan antara pendekatan `setState()` konvensional dan pendekatan reaktif GetX.
  - Mengimplementasikan `controller` untuk mengelola data dan logika bisnis.
  - Menggunakan variabel reaktif (`.obs`) dan widget `Obx` untuk memperbarui tampilan secara dinamis dan *real-time*.
  - Membangun aplikasi fungsional sederhana menggunakan arsitektur GetX.

-----

## 🚀 Langkah Kerja

1.  **Membuat Proyek Flutter Baru**

      - Buat proyek baru dengan nama `tasbih_getx`.

2.  **Menambahkan *Dependency***

      - Tambahkan paket berikut ke dalam file `pubspec.yaml`:
        ```yaml
        dependencies:
          flutter:
            sdk: flutter
          get: ^4.6.5
          simple_circular_progress_bar: ^1.0.2
        ```
      - Jalankan perintah di terminal untuk menginstal paket:
        ```bash
        flutter pub get
        ```

3.  **Implementasi File Utama**

      - **Struktur Proyek**: Atur kode ke dalam folder `model`, `view` (untuk UI), dan `viewmodel` (untuk logika state).
      - **`viewmodel/tasbih_controller.dart`**: Berisi kelas `TasbihController` yang mewarisi `GetxController`. Di dalamnya, didefinisikan variabel reaktif `counter.obs` dan `progress.obs`, serta method `incrementCounter()` dan `resetCounter()` untuk memanipulasi state.
      - **`view/home.dart`**: Mendesain UI utama aplikasi. Widget `Text` (penghitung) dan `LinearProgressIndicator` dibungkus dengan `Obx(() => ...)` agar secara otomatis diperbarui setiap kali nilai di *controller* berubah. *Event* `onTap` dan `onPressed` pada tombol dihubungkan langsung ke method di dalam `TasbihController`.
      - **`main.dart`**: Mengonfigurasi `GetMaterialApp` sebagai root widget aplikasi. Langkah ini penting agar semua fitur GetX, termasuk *state management*, dapat berfungsi dengan baik.

4.  **Menjalankan Aplikasi**

      - Aplikasi menampilkan halaman utama tasbih. Saat tombol sidik jari ditekan, nilai penghitung bertambah dan *progress bar* terisi. Tombol *refresh* akan mengatur ulang nilai kembali ke nol. Semua perubahan pada UI terjadi secara reaktif tanpa memanggil `setState()`.

-----

## 📷 Screenshot

![Screenshot Aplikasi](tasbih_digital.png)

### ✨ Tampilan Utama Aplikasi

  - Latar belakang berwarna hijau menenangkan.
  - Menampilkan angka hitungan saat ini ("17") dengan ukuran besar di tengah layar.
  - Sebuah *progress bar* linear menunjukkan kemajuan hitungan menuju 33.
  - Tombol utama dengan ikon sidik jari untuk menambah hitungan dan tombol *reset* di pojok kanan bawah.

-----

## ✅ Kesimpulan

  - **GetX** sangat efektif untuk menyederhanakan manajemen state. Dengan variabel reaktif (`.obs`) dan widget `Obx`, UI dapat diperbarui secara otomatis, menghilangkan kebutuhan `setState()`.
  - **Pemisahan Logika**: Arsitektur *Controller-View* yang didorong oleh GetX membuat kode lebih bersih, terstruktur, dan mudah dipelihara karena logika bisnis terpisah dari kode tampilan.
  - **Performa**: GetX lebih efisien karena hanya me-*rebuild* widget yang dibungkus `Obx` saat datanya berubah, tidak seperti `setState()` yang bisa me-*rebuild* seluruh *widget tree*.
  - **Responsif**: Menghubungkan aksi pengguna (seperti menekan tombol) langsung ke method di dalam *controller* membuat aplikasi terasa sangat responsif dan interaktif.

-----

📚 *Readme ini dibuat berdasarkan modul praktikum Mobile Programming.*
