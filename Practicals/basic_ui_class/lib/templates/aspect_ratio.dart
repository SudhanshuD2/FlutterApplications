import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Aspect Ratio',
            style: TextStyle(fontSize: 30), 
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            child: Image.network(
              'https://images.businessnewsdaily.com/app/uploads/2022/04/04081908/small-business-website.png'
            )
          ),
        ),
      ),
    );
  }
}