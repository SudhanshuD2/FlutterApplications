// Stateful 2nd application
// 2nd app container color change
import 'package:flutter/material.dart';
void main(){
  runApp(const CtrApp());
}
class CtrApp extends StatefulWidget {
  const CtrApp({super.key});

  @override
  State createState() => _CtrAppState();
}
class _CtrAppState extends State {
  bool flag = true;
  Color? col = Colors.red;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            color: col,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(flag){
              flag=false;
              col = Colors.blue;
            }else{
              flag=true;
              col = Colors.red;
            }
            setState(() {});
          },
          child: const Icon(Icons.change_circle),
        ),
      ),);
  }
}