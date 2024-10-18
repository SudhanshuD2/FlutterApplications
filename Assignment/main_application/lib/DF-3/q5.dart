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
          title: const Text('Question 5', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.blue.shade200,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 0.5),
              shape: BoxShape.circle,
              gradient: LinearGradient(colors:[
                Colors.red.shade400,
                Colors.blue.shade400,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: const [0.5, 0.5]
              ),
            ),
          ),
        ),
        ),
    );
  }
}