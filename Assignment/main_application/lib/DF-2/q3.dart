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
          title: const Text('Question 3', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.blue.shade700,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              border: Border.all(color: Colors.blue.shade600, width: 2),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(20)),
            ), 
          ),
        ),
        ),
    );
  }
}