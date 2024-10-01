import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sudhanshu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Allignment', 
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),),
          backgroundColor: const Color.fromARGB(255, 28, 28, 28),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.red,
            ),
          ],
        ),),
      ),
    );
  }
}
