import 'package:flutter/material.dart';

// Gemini App Clone
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const ShoesApp(),
    );
  }
}

class ShoesApp extends StatefulWidget{
  const ShoesApp({super.key});
  @override
  State createState() => _ShoesAppState();
}


class _ShoesAppState extends State{

  Color? boxColor = const Color.fromARGB(255, 54, 35, 35);
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 25),
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset('asset/IND_MS2.jpg'),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15, right: 120),
            height: 50,
            width: 250,
            // color: Colors.red,
            child: DefaultTextStyle( 
            style: TextStyle(
              fontSize: 39,
              fontWeight: FontWeight.w500,
              foreground: Paint()..shader =LinearGradient(
                colors: [Colors.blue,Colors.purple,Colors.pink.shade200,Colors.orange,], 
                begin: Alignment.topLeft,
                end: Alignment.bottomRight).createShader(const Rect.fromLTWH(40,30, 260, 100)),
            ),
            child: const Text('Good evening'),),
          ),
          const SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
              Container(
                margin: const EdgeInsets.only(right: 7, left: 20),
                height: 145,
                width: 160,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10, right: 40, left: 10),
                      height: 75,
                      child: const Text('Help explain a concept in a kid-friendly way',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10, top: 30),
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.face, size: 15,)
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 7),
                height: 145,
                width: 160,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: const Text('Suggest beautiful places to see on a road trip', 
                      style: TextStyle( color: Colors.white,)),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(shape: BoxShape.circle, color:Colors.black),
                      margin: const EdgeInsets.only(top: 35, left: 110),
                      child: const Icon(Icons.map_outlined, size: 15),
                    ),
                ],)
              ),
              Container(
                margin: const EdgeInsets.only(right: 7),
                height: 145,
                width: 160,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children:[
                    Container(
                      padding: const EdgeInsets.only(top: 10, left: 10, right: 15),
                      height: 60,
                      child: const Text('Genetrate an image in watercolor style',
                      style: TextStyle(color: Colors.white)),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      margin: const EdgeInsets.only(top: 46, left: 110),
                      child: const Icon(Icons.palette_outlined, size: 15)
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 7),
                height: 145,
                width: 160,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10, top: 10, right: 15),
                      height: 80,
                      child: const Text('Plan a weeklong trip to Ireland with kids',
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 110, top: 27),
                      height: 30,
                      width: 30,
                      decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: const Icon(Icons.calendar_today_outlined, size: 15),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 15),
                height: 145,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.2, color: Colors.grey.shade600),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.lightbulb_outline, color: Colors.white,),
                  Text('Hide suggestions', style: TextStyle(color: Colors.white),)
                ],),
              ),// Hider Box.
            ],),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const  EdgeInsets.only(left: 25),
                child: const Text('Recent',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              Container(
                padding: const EdgeInsets.only(right: 20),
                child: const Icon(Icons.navigate_next, size: 22),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 25),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 15),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: boxColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(Icons.history, size: 20),
                    ),
                    const Text('Flutter Color palette Icon', 
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 15),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: boxColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(Icons.history, size: 20),
                    ),
                    const Text('Flutter Containers: Practice Exercises', 
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(right: 15),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: boxColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(Icons.history, size: 20),
                    ),
                    const Text('Flutter Text Gradient', 
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height:130),
          Container(
            height: 204,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.symmetric(horizontal: BorderSide(width: 1, color: Colors.grey.shade600)),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 25),
                      child: Text('Type, talk, or share a photo',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey.shade700,
                      )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 60, bottom: 20),
                      child: const Icon(Icons.expand_less_outlined, size: 15)),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 80),
                  height: 55,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(35)
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.mic_outlined, color: Colors.black),
                      Icon(Icons.photo_camera_outlined, color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}