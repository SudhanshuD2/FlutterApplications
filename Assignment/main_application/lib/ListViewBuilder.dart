// List view static
import 'package:flutter/material.dart';
void main(){
  runApp(const ListViewCode());
} 
class ListViewCode extends StatelessWidget{
  const ListViewCode({super.key});
  @override
  Widget build(BuildContext context){
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView builder', style: TextStyle(fontSize: 25)),
          backgroundColor: Colors.blue[800]
        ),
        body: ListView.builder(
          itemCount: 40,
          // physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.normal),
          itemBuilder: (context,int index){
            return Text('Index : $index', 
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.grey[800],
            ),);

          },
        ),
      ),
    );
  }
}