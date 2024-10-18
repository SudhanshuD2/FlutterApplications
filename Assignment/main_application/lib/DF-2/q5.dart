// DailyFlash 2
import 'package:flutter/material.dart';
void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangingApp(),
    );
  }
}

class ChangingApp extends StatefulWidget{
  const ChangingApp({super.key});

  @override
  State createState() => HomePage();
}

class HomePage extends State{
  
  bool setColor = true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: const Text('Question 5', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.blue.shade700,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              setColor = !setColor;
            });
          },
          child: Container(
            height: 150,
            width: 150,
            alignment: Alignment.center,
            color: setColor? Colors.red : Colors.blue,
            child: Text(setColor? 'Click me!' : 'Container Tapped',
              style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),),
          ),
        ),
      ),
    );
  }
}