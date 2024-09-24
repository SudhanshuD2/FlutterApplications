// India Flag code
import 'package:flutter/material.dart';
void main() {
  runApp(const FlagApp());
}

class FlagApp extends StatelessWidget {
  const FlagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('India Flag'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 460,
                    width: 10,
                    color: const Color.fromARGB(255, 71, 71, 71),
                  ),
                ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width:250,
                    height: 50,
                    color: Colors.orange,
                  ),
                  Container(
                    width:250,
                    height: 50,
                    color: Colors.white,
                    child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/2048px-Ashoka_Chakra.svg.png"),
                  ),
                  Container(
                    width:250,
                    height: 50,
                    color: Colors.green,
                  ),
                ]
              ),
            ]
          ),
        ),
        backgroundColor: Colors.white60,
        ),
    );
  }
}
