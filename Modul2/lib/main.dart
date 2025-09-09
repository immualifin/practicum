import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Praktikum 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Grid 2x2 Row & Column',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                KotakIcon(warna: Colors.blue, teks: 'Biru'),
                const SizedBox(width: 10),
                KotakIcon(warna: Colors.green, teks: 'Hijau'),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                KotakIcon(warna: Colors.orange, teks: 'Oranye'),
                const SizedBox(width: 10),
                KotakIcon(warna: Colors.purple, teks: 'Ungu'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class KotakIcon extends StatelessWidget {
  final Color warna;
  final String teks;

  const KotakIcon({super.key, required this.warna, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: warna,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black54,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 50,
          ),
          const SizedBox(height: 8),
          Text(
            teks,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
