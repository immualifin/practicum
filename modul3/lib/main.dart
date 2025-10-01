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
      title: 'Aplikasi Cuaca',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 243, 243, 243),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black87),
          bodyMedium: TextStyle(color: Colors.black87),
        ),
      ),
      home: const WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Malang',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 48),

              const Text(
                '25°',
                style: TextStyle(fontSize: 96, fontWeight: FontWeight.bold),
              ),
              const Spacer(),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DailyForecast(
                    day: 'Minggu',
                    icon: Icons.sunny,
                    temperature: '20°C',
                  ),
                  DailyForecast(
                    day: 'Senin',
                    icon: Icons.cloudy_snowing,
                    temperature: '18°C',
                  ),
                  DailyForecast(
                    day: 'Selasa',
                    icon: Icons.cloud,
                    temperature: '22°C',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DailyForecast extends StatelessWidget {
  final String day;
  final IconData icon;
  final String temperature;

  const DailyForecast({
    super.key,
    required this.day,
    required this.icon,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          day,
          style: const TextStyle(fontSize: 16, color: Colors.black54),
        ),
        const SizedBox(height: 8),
        Icon(
          icon,
          color: Colors.black87,
          size: 32,
        ),
        const SizedBox(height: 8),
        Text(
          temperature,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

