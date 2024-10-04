// Container Gradient
import 'package:flutter/material.dart';
void main(){
  runApp(const ListViewCode());
} 
class ListViewCode extends StatelessWidget{
  const ListViewCode({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Demo', style: TextStyle(fontSize: 25)),
          backgroundColor: Colors.blue[800]
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.bottomRight,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.pink,
                  Colors.red,
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}