import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Expanded',
      home: Scaffold(
        body: Center(child: Text('Music Player')),
        bottomNavigationBar: controlBar(
          child: Row(
            children: const [
              Expanded(child: Icon(Icons.shuffle)),
              Expanded(child: Icon(Icons.skip_previous)),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Icon(Icons.play_circle_fill, size: 50),
              ),
              Expanded(child: Icon(Icons.skip_next)),
              Expanded(child: Icon(Icons.repeat)),
            ],
          ),
        ),
      ),
    );
  }
}

Container controlBar({required Row child}) {
  return Container(
    height: 100,
    color: Colors.black54,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
    child: child,
  );
}
