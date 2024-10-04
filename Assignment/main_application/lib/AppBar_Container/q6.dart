import 'package:flutter/material.dart';
void main(){
  runApp(MainApp());
} 
class MainApp extends StatelessWidget{
  MainApp({super.key});
  final List<Color?> colorslist = [
    Colors.red[600],
    Colors.blue[300],
    Colors.green[600],
    Colors.pink[400],
    Colors.purple[400],
    Colors.green[800],
    Colors.red[100],
    Colors.orange[700],
    Colors.red[500],
    Colors.blue[900], 
    ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Question 6', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.blue.shade100,
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index){
              return Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: colorslist[index],
              );
            },
        ),
        ),
    );
  }
}