import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}
class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  int questionIndex = 0;
  List<Map> allQuestions = [
    {
      'question':'Who is founder of MicroSoft?',
      'options':['Steve Jobs', 'Bill Gates', 'Elon Musk', 'Lary Page'],
      'answer':1,
    },
    {
      'question':'Who is founder of Google?',
      'options':['Steve Jobs', 'Bill Gates', 'Elon Musk', 'Lary Page'],
      'answer':3,
    },
    {
      'question':'Who is founder of SpaceX?',
      'options':['Steve Jobs', 'Bill Gates', 'Elon Musk', 'Lary Page'],
      'answer':2,
    },
    {
      'question':'Who is founder of Apple?',
      'options':['Steve Jobs', 'Bill Gates', 'Elon Musk', 'Lary Page'],
      'answer':0,
    },
    {
      'question':'Who is founder of Meta?',
      'options':['Steve Jobs', 'Mark Zukerberg', 'Elon Musk', 'Lary Page'],
      'answer':1,
    },
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzee', style: TextStyle(
          color: Colors.blue[100],
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
        shadowColor: Colors.blue[900],
        elevation: 10,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(width: 130),
              Text(
                'Question : ${questionIndex+1}/${allQuestions.length}',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 65, 0, 0),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 300,
            height: 50,
            child: Text(
              allQuestions[questionIndex]['question'],
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,  
              ),
              onPressed:() {}, 
              child: Text(
                '${allQuestions[questionIndex]['options'][0]}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.purple[800],
                ),
              ), 
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 350,
            height: 50,
            // color: ctr? defaultColor2 : Colors.white70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,  
              ),
              onPressed:() {},
              child: Text(
                '${allQuestions[questionIndex]['options'][1]}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.purple[800],
                ),
              ), 
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 350,
            height: 50,
            // color: ctr? defaultColor3 : Colors.white70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,  
              ),
              onPressed:() {},
              child: Text(
                '${allQuestions[questionIndex]['options'][2]}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.purple[800],
                ),
              ), 
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 350,
            height: 50,
            
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,  
              ),
              onPressed:() {},
              child: Text(
                '${allQuestions[questionIndex]['options'][3]}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.purple[800],
                ),
              ), 
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        backgroundColor: Colors.blue[800],
        child: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}