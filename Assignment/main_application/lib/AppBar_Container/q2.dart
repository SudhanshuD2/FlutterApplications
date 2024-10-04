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
          title: const Text('Center Title', style: TextStyle(fontSize: 20)),
          centerTitle: true,
          backgroundColor: Colors.blue[100],
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.fingerprint_outlined), color: Colors.black)
          ],
        ),
        body: const Center(
          child:  Text('Question 2',
          style: TextStyle(fontSize: 25))
        ),
      ),
    );
  }
}