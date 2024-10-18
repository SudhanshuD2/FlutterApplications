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
          title: const Text('Question 1', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.blue.shade200,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.amber.shade100,
              border: Border.all(color: Colors.red.shade600, width: 2),
              borderRadius: BorderRadius.circular(20),
            ), 
            child: const Text('Incubators'),
          ),
        ),
        ),
    );
  }
}