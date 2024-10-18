// DailyFlash 2
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
          title: const Text('Question 2', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.blue.shade700,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.only(left: 15, top: 20),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              border: Border(left: BorderSide(width: 5, color: Colors.red.shade700)),
            ), 
            child: const Text('Incubators'),
          ),
        ),
        ),
    );
  }
}