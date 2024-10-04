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
          backgroundColor: Colors.blue.shade100,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
                Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ],
          ), 
        ),
      ),
    );
  }
}