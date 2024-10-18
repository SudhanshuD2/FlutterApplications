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
          title: const Text('Question 4', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.blue.shade700,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 250,
            padding: const EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              border: Border.all(color: Colors.blue.shade600, width: 2),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            ), 
            child: const Text('Incubators'),
          ),
        ),
        ),
    );
  }
}