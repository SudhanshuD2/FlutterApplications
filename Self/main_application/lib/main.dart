import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
          backgroundColor: const Color.fromARGB(255, 107, 107, 107),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const Text('My widgets'),
              Container(
                height: 100,
                width: 150,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle),
              ),
              const Text('My widgets'),
              Container(
                height: 100,
                width: 150,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 0, 0),
                  shape: BoxShape.circle),
              ),
              const Text('My widgets'),
              Container(
                height: 100,
                width: 150,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(157, 0, 217, 112),
                  shape: BoxShape.circle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

