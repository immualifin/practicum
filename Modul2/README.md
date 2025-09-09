# 📘 Pertemuan II – Widget Row dan Column

---

## 2.1 Ringkasan

### 🛠 Komponen dan Uraian
- **Tujuan Praktikum**
  - Memahami konsep widget **Row** dan **Column** dalam Flutter.  
  - Membuat dan menggunakan **widget kustom (custom widget)**.  
  - Mengatur tata letak widget secara **horizontal** dan **vertikal**.  
  - Menampilkan widget menggunakan properti visual seperti warna, border, dan icon.  

- **Dasar Teori**
  - **Row** dan **Column** adalah widget layout yang digunakan untuk mengelompokkan dan mengatur beberapa widget anak (children).  
  - **Row** → mengatur widget secara **horizontal** (kiri ke kanan).  
  - **Column** → mengatur widget secara **vertikal** (atas ke bawah).  
  - Widget di dalam **Row** atau **Column** disebut *children*, sedangkan **Row** dan **Column** disebut *parent*.  
  - **Row** dan **Column** termasuk widget *invisible* → tidak terlihat secara visual, tetapi berfungsi sebagai pengaturan layout.  

- **Alat & Bahan**
  - Flutter SDK sudah terpasang dan IDE siap digunakan (Visual Studio Code / Android Studio).  
  - Emulator atau smartphone Android/iOS untuk menjalankan aplikasi.  
  - Proyek Flutter baru dengan template awal sudah dibuat dan siap dimodifikasi.  

---

## 2.2 Langkah Kerja

### 🔹 Langkah 1 – Membuat Proyek Baru
- Buat proyek baru dengan nama **row_and_column**.  
- Ubah properti **title** pada `MaterialApp` menjadi **"Row and Column"**.  
- Ubah `AppBar` title menjadi **"Row and Column"**.  
- **Kode program:** *(dituliskan dalam laporan)*  

---

### 🔹 Langkah 2 – Membuat Widget Kustom
- Buat widget baru berupa **kotak biru dengan icon jempol**.  
- Tambahkan class baru turunan dari **StatelessWidget** dengan nama **KotakBiruJempol**.  
- Gunakan `Container` di dalam method `build()`.  
- **Kode program:** *(dituliskan dalam laporan)*  

---

### 🔹 Langkah 3 – Menampilkan Widget Kustom
- Ganti widget `Text` di dalam `Center` menjadi **KotakBiruJempol**.  
- **Kode program:** *(dituliskan dalam laporan)*  

---

### 🔹 Langkah 4 – Menambahkan Beberapa Widget dengan Row
- Bungkus **KotakBiruJempol** dengan widget **Row** di dalam `Center`.  
- Tambahkan dua widget **KotakBiruJempol** lainnya pada properti `children`.  
- **Kode program & hasil:** *(dituliskan dalam laporan)*  

---

### 🔹 Langkah 5 – Mengatur Tata Letak Vertikal dengan Column
- Ganti **Row** menjadi **Column** untuk menampilkan kotak secara **vertikal**.  
- Gunakan **SizedBox** untuk memberi jarak antar kotak.  
- **Kode program & hasil:** *(dituliskan dalam laporan)*  

---

## 2.3 Kesimpulan
- **Row** dan **Column** memudahkan pengaturan layout horizontal dan vertikal.  
- Widget **custom** dapat dibuat menggunakan `StatelessWidget` + `Container`.  
- Properti seperti `width`, `height`, `color`, `border`, `borderRadius`, dan `Icon` membantu mempercantik tampilan.  
- **Row** dan **Column** adalah widget *invisible* yang berfungsi sebagai **parent** untuk widget **children**.  

---

## 2.4 Tugas Praktikum
1. Tambahkan **4 kotak biru** dengan **warna berbeda**.  
2. Gabungkan **Row** dan **Column** untuk membuat **grid 2x2**.  
3. Ubah icon menjadi **Icons.favorite** dan atur warnanya **merah**.  
4. Tambahkan **Text** di bawah setiap icon menggunakan widget **Column**.  

---

## 2.5 Format Laporan Praktikum
Laporan praktikum harus memuat:  
1. **Cover**  
   - Judul praktikum, nama, NIM, kelas, dan tanggal pelaksanaan.  
2. **Tujuan**  
   - Memahami penggunaan widget **Row** dan **Column** dalam mengatur tata letak antarmuka aplikasi Flutter.  
3. **Langkah Kerja Singkat**  
   - Ringkasan tahapan praktikum (membuat proyek baru, menambahkan kode Row & Column, menjalankan aplikasi).  
4. **Screenshot**  
   - Bukti hasil praktikum berupa tampilan aplikasi dengan **Row** dan **Column**, lengkap dengan keterangan singkat.  
5. **Kesimpulan**  
   - Ringkasan hasil praktikum dan pemahaman yang diperoleh.  

---
