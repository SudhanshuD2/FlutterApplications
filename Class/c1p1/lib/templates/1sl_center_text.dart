import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Center text app'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: const Center(
          child: Text('Incubators'),
        ),
      ),);
  }
}
