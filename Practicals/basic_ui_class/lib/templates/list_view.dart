import 'package:flutter/material.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}
class _MainAppState extends State<MainApp>{
  TextEditingController nameController = TextEditingController();

  String? name;
  List<String> players = [];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TExtField Demo', style: TextStyle(fontSize: 25)),
          centerTitle: true,
          backgroundColor: Colors.blue.shade600,  
        ),
        body: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20);
            child: TextField(
              controller: nameController,
              style: const 
            ),
          ),
        ],),
      ),
    );
  }
}