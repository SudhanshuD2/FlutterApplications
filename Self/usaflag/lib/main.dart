import 'package:flutter/material.dart';

void main() {
  runApp(const USAflag());
}

class USAflag extends StatelessWidget {
  const USAflag({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('USA flag'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 458,
                        width:5,
                        color: const Color.fromARGB(104, 26, 26, 26),
                      ),
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height:70,
                            width: 100,
                            color:Colors.blue,
                            child: Image.network("https://www.shutterstock.com/image-vector/vector-stars-usa-flag-white-600nw-1839654103.jpg"),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 10,
                                width:110,
                                color: Colors.red,
                              ),
                              Container(
                                height: 10,
                                width:110,
                                color: Colors.white,
                              ),
                              Container(
                                height: 10,
                                width:110,
                                color: Colors.red,
                              ),
                              Container(
                                height: 10,
                                width:110,
                                color: Colors.white,
                              ),
                              Container(
                                height: 10,
                                width:110,
                                color: Colors.red,
                              ),
                              Container(
                                height: 10,
                                width:110,
                                color: Colors.white,
                              ),
                              Container(
                                height: 10,
                                width:110,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 10,
                        width:210,
                        color: Colors.white,
                      ),
                      Container(
                        height: 10,
                        width:210,
                        color: Colors.red,
                      ),
                      Container(
                        height: 10,
                        width:210,
                        color: Colors.white,
                      ),
                      Container(
                        height: 10,
                        width:210,
                        color: Colors.red,
                      ),
                      Container(
                        height: 10,
                        width:210,
                        color: Colors.white,
                      ),
                      Container(
                        height: 10,
                        width:210,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}