import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue, // background biru
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Ini Halaman Home",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Banyak aplikasi memiliki beberapa layar untuk menampilkan informasi yang berbeda. "
              "Contohnya, ada layar produk, dan ketika pengguna mengklik produk, akan muncul layar "
              "dengan detail produk tersebut.",
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                "assets/home.png", // ganti sesuai file gambar kamu
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Pertama, kita perlu membuat dua halaman atau 'routes' yang kita tampilkan. "
              "Selanjutnya, kita gunakan perintah Navigator.push() untuk berpindah dari halaman pertama "
              "ke halaman kedua. Ini seperti kita membuka halaman baru. Terakhir, kita bisa kembali dari "
              "halaman kedua ke halaman pertama dengan perintah Navigator.pop(). Seperti menutup halaman kedua "
              "dan kembali ke halaman pertama.",
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/tujuan');
                },
                child: const Text(
                  "Ke halaman tujuan >",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
