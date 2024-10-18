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
          backgroundColor: Colors.blue.shade200,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.white, width: 0.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.5),
                  blurRadius: 5,
                  offset: const Offset(0, -10),
                ),
              ],
            ),
            child: Text('Incubators', style: TextStyle(fontSize: 25, color: Colors.amber.shade100)),
          ),
        ),
        ),
    );
  }
}