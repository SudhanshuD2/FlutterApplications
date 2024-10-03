import 'package:flutter/material.dart';
void main(){
  runApp(const RowScenarios());
}
class RowScenarios extends StatelessWidget {
  const RowScenarios({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row 9 scenarios', style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.orange[300],
           ),),
           backgroundColor: Colors.black,
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.red[700],
              ),
            ],
          ),
        ),
      ),
    );
  }
}