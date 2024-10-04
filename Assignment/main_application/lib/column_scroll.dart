import 'package:flutter/material.dart';
void main(){
  runApp(const ScrollColumn());
} 
class ScrollColumn extends StatelessWidget{
  const ScrollColumn({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scrolling Column', style: TextStyle(fontSize: 25)),
          backgroundColor: Colors.blue[800]
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 250,
                width: 150,
                color: Colors.red,
              ),
              Container(
                height: 250,
                width: 150,
                color: Colors.blue,
              ),
              Container(
                height: 250,
                width: 150,
                color: Colors.red,
              ),
              Container(
                height: 250,
                width: 150,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}