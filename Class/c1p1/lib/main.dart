import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State{
  List<Map> allQuestions = [
    {
    "question": "What is purpose of defining main() in dart?",
    "options": ["Entry point", "Declare variables", "Create objects", "None of these"],
    "answer": 0,
    "description" : 'main() provides entry point for compiler, where to start the code compilation'
  },
   {
    "question": "Which dtype accepts any type of data chenge in runtime?",
    "options": ["var", "bool", "dynamic", "String"],
    "answer": 2,
    "description" : 'Dynamic is datatype which allows datatype change on runtime'
  },
   {
    "question": "How many constructor are allowd for one class?",
    "options": ["Many", "Only 1", "All of these", "None of these"],
    "answer": 1,
    "description" : 'In Dart there are 4 types of constructors'
  },
   {
    "question": "What is purpose of  == operator?",
    "options": ["Equality comparison", "String concatination", "Logical AND", "Assign value"],
    "answer": 0,
    "description" : '.....'
  },
   {
    "question": "If datatype is not known which keyword is used?",
    "options": ["const", "var", "int", "auto"],
    "answer": 1,
    "description" : 'var allows you to store and change datatype at declaration'
  },
  {
    "question": "To represent whole numbers we use",
    "options": ["int", "String", "float", "double"],
    "answer": 0,
    "description" : 'in Dart there are 4 types of constructors'
  },{
    "question": "To represent sequence of characters we use",
    "options": ["float", "char", "String", "char"],
    "answer": 2,
    "description" : 'sequence of characters mean Sentences "String"'
  },{
    "question": "'is' operator in dart is used for?",
    "options": ["type check", "arithmatic operation", "String manipulation", "Variable declaration"],
    "answer": 0,
    "description" : 'Type checking in dart uses is operator'
  },{
    "question": "Which operator is used for integer division?",
    "options": ["//", "/", "~/", "=="],
    "answer": 2,
    "description" : 'Using ~/ operator returns integer output'
  },{
    "question": "can we use else statement without if statement?",
    "options": ["YES", "NO - error", "Sometimes", "NO - without error"],
    "answer": 1,
    "description" : 'Without if else is not valid statement'
  },
  ];
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int currentScore = 0;
  bool questionPage = true;
  WidgetStateProperty<Color?> checkAnswer(int answerIndex){
    if (selectedAnswerIndex != -1){
      if(answerIndex == allQuestions[currentQuestionIndex]["answer"]){
        return WidgetStatePropertyAll(Colors.green[700]);
      }else if(selectedAnswerIndex == answerIndex){
        return WidgetStatePropertyAll(Colors.red[700]);
      }else{
        return const WidgetStatePropertyAll(null);
      }
    }else{
      return const WidgetStatePropertyAll(null);
    }
  }
  @override 
  Widget build(BuildContext context){
    return isQuestionScreen();
  }
  Scaffold isQuestionScreen(){
    if (questionPage == true){
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "Quizee",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.blue[200],
            ),
          ),
          shadowColor: Colors.blueGrey[900],
          elevation: 25,
          centerTitle: true,
          backgroundColor: Colors.blue[800],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 130,
                ),
                Text(
                  "question : ${currentQuestionIndex+1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
               width: 380,
               height: 50,
               child: Text(
                allQuestions[currentQuestionIndex]["question"],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.teal[800],
                ),
               ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 50,
                width: 350,
               child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(0),
                    elevation: const WidgetStatePropertyAll(5),
                    shadowColor: WidgetStatePropertyAll(Colors.yellow[400])
                  ),
                  onPressed: (){
                    if(selectedAnswerIndex == -1){
                      selectedAnswerIndex = 0;
                      setState(() {});
                    }
                  },
                  child: Text(
                    "${allQuestions[currentQuestionIndex]['options'][0]}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.teal[800],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 50,
                width: 350,
               child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(1),
                    elevation: const WidgetStatePropertyAll(5),
                    shadowColor: WidgetStatePropertyAll(Colors.yellow[400])
                  ),
                  onPressed: (){
                    if(selectedAnswerIndex == -1){
                      selectedAnswerIndex = 1;
                      setState(() {});
                    }
                  },
                  child: Text(
                    "${allQuestions[currentQuestionIndex]['options'][1]}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.teal[800],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 50,
                width: 350,
               child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(2),
                    elevation: const WidgetStatePropertyAll(5),
                    shadowColor: WidgetStatePropertyAll(Colors.yellow[400])
                  ),
                  onPressed: (){
                    if(selectedAnswerIndex == -1){
                      selectedAnswerIndex = 2;
                      setState(() {});
                    }
                  },
                  child: Text(
                    "${allQuestions[currentQuestionIndex]['options'][2]}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.teal[800],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(3),
                    elevation: const WidgetStatePropertyAll(5),
                    shadowColor: WidgetStatePropertyAll(Colors.yellow[400])
                  ),
                  onPressed: (){
                    if(selectedAnswerIndex == -1){
                      selectedAnswerIndex = 3;
                      setState(() {});
                    }
                  },
                  child: Text(
                    "${allQuestions[currentQuestionIndex]['options'][3]}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.teal[800],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue[900]),
                  ),
                  onPressed: () => setState(() {
                    if(currentQuestionIndex > 0 && currentQuestionIndex < allQuestions.length){
                      currentQuestionIndex--;
                      // selectedAnswerIndex=-1;
                    }
                  }),
                  child: Text("Prev.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.teal[50],
                    ),
                  ),
                ),
              ),
              ],
        ),
        backgroundColor: Colors.teal[100],
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(selectedAnswerIndex != -1){
              if(currentQuestionIndex < allQuestions.length -1){
                if(selectedAnswerIndex == allQuestions[currentQuestionIndex]["answer"]){
                  currentScore++;   
                }
              currentQuestionIndex++;
            }else{
                if(selectedAnswerIndex == allQuestions[currentQuestionIndex]["answer"]){
                  currentScore++;
                } 
                questionPage=false;
              }  
              setState(() {});
            }
            selectedAnswerIndex = -1;
          },
          backgroundColor: Colors.blue,
          
          child: Icon(Icons.forward, color: Colors.teal[900],),
          ),
      );
      
    }else{
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.blue[200],
            ),
            
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[800],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://i.pinimg.com/originals/a6/53/12/a653125902cbc01ad4f1198d33aadfc6.gif",
              height: 250,
              ),
              const SizedBox(height: 30,),
              Text(
                "Congratulations!!!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange[700],
                ),
              ),
              const SizedBox(height: 30),
               Text("Score: $currentScore/${allQuestions.length}",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.teal[700],
              ),
              ),
              const SizedBox(height: 120),
              SizedBox(
                height: 40,
                width: 250,
                child: ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor:  WidgetStatePropertyAll(Colors.blue[800]),
                  ),
                  onPressed: (){
                    currentQuestionIndex=0;
                    selectedAnswerIndex=-1;
                    currentScore=0;
                    questionPage=true;
                    setState(() {});
                  },
                  child: Text("Reset",
                    style:TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[50]
                  ),),),
              ),
            ],),
        ),
        backgroundColor: Colors.teal[50],
      );
    }
  }
}