import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.teal, 
        onPrimary: Colors.blue, 
        secondary: Colors.black, 
        onSecondary: Colors.black12, 
        error: Colors.white12, 
        onError: Colors.white38, 
        surface: Colors.black54, 
        onSurface: Colors.amber)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Theme Check'),
          centerTitle: true,
          elevation: 200,
        ),
        body: const Center(
          child: Text('Colors Check', style: TextStyle(
            // color: Colors.red[800],
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),),
        ),
        // backgroundColor: Colors.black12,
      ),
    );
  }
}
