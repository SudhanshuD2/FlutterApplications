// DailyFlash 2
import 'package:flutter/material.dart';
void main(){
  runApp(const MainApp());
} 
class MainApp extends StatelessWidget{
  const MainApp({super.key});


  @override
  Widget build(BuildContext context){
    ImageProvider imageProvider = const NetworkImage('https://media.istockphoto.com/id/1495032333/vector/abstract-brown-background-geometric-texture.jpg?s=612x612&w=0&k=20&c=21X7tE5J1e-_cxNgsGTwOI8prGYOF9h3I8D1RoGNfR4=');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Question 2', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.blue.shade200,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red.shade900,
              image: DecorationImage(image: imageProvider)
            ),
            child: Text('Incubators', style: TextStyle(fontSize: 25, color: Colors.amber.shade100)),
          ),
        ),
        ),
    );
  }
}