// Stateful 1st application
// The counter app by self
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
  var bagcol= Colors.teal;
  int ctr = 0;
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
          child: Text('$ctr', style: const TextStyle(fontSize: 50)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ctr++;
            if(ctr == 7){
              bagcol = Colors.yellow;
            }else{
              bagcol = Colors.teal;
            }
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
        backgroundColor: bagcol,
      ),);
  }
}