import 'package:flutter/material.dart';
void main(){
  runApp(const MainApp());
} 
class MainApp extends StatelessWidget{
  const MainApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.blue[100],
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.grid_3x3), color: Colors.black),
            IconButton(onPressed: (){}, icon: const Icon(Icons.fingerprint_outlined), color: Colors.black)
          ],
        ),
        body: const Center(
          child:  Text('Question 1',
          style: TextStyle(fontSize: 25))
        ),
      ),
    );
  }
}