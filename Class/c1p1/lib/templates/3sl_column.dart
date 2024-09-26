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
          title: const Text('First app'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.pink,
              ),Container(
                height: 150,
                width: 150,
                color: Colors.blue,
              ),
            ],
          ),
      ),
    );
  }
}
