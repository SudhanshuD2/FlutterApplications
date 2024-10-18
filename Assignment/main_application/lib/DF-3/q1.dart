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
            height: 300,
            width: 300,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red.shade900,
            ), 
            child: Image.network(
              'https://i1.sndcdn.com/artworks-000300679587-kpcar5-t500x500.jpg',
            ),
          ),
        ),
        ),
    );
  }
}