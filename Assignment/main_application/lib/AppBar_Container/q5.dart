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
          backgroundColor: Colors.blue.shade100,
        ),
        body: Column(
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTub_3z9KjIT4k7SxDzAjnAnXbWKArZ8hjkSA&s'),
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network('https://media.istockphoto.com/id/1151233834/vector/number-one-typography-symbol-design.jpg?s=612x612&w=0&k=20&c=JnwwAax-by7ccwMV2KxXznIqHqp4smTYhRaQpFMl2vE='),
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network('https://st.depositphotos.com/50311198/52492/i/450/depositphotos_524928846-stock-photo-illustration-number-red-background.jpg'),
              ),
            ],
          ), 
        ),
    );
  }
}