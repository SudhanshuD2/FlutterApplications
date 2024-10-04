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
          title: const Text('Hello Core2Web', style: TextStyle(fontSize: 20, color: Colors.white)),
          backgroundColor: Colors.purple.shade900,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 360,
            color: Colors.blue,
            child: const Text('Question 3'),
          ), 
        ),
      ),
    );
  }
}