import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red, // background merah
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Ini Halaman Tujuan",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Untuk berpindah ke halaman baru, gunakan metode Navigator.push(). "
              "Metode push() akan menambahkan Route ke dalam tumpukan Route yang dikelola oleh Navigator. "
              "Route ini dapat dibuat secara custom atau menggunakan MaterialPageRoute, yang memiliki animasi transisi sesuai dengan platform.",
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                "assets/tujuan.png", // ganti sesuai file gambar kamu
                width: 200,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Untuk berpindah ke halaman baru, gunakan metode Navigator.push(). "
              "Metode push() akan menambahkan Route ke dalam tumpukan Route yang dikelola oleh Navigator. "
              "Route ini dapat dibuat secara custom atau menggunakan MaterialPageRoute, yang memiliki animasi transisi sesuai dengan platform.",
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "< Kembali ke home",
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
