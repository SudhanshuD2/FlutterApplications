import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  
  TextEditingController name = TextEditingController();
  String? myName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TextField', style: TextStyle(
            color: Colors.black45,
            fontSize: 25,
          ),),
          centerTitle: true,
          backgroundColor: Colors.blue.shade300,
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: name,
                style: const TextStyle( fontSize: 30,),
                obscureText: true,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.visibility_outlined),
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String val){
                  print('Value $val');
                },
                onEditingComplete: (){
                  print('Editing Complete');
                },
                onSubmitted: (value){
                  print('$value submitted');
                },
              ),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: (){
                print('Add Data');
                myName = name.text;
                name.clear();
                setState(() {});
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'Add Data',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40,),
            Text('$myName',
            style: const TextStyle( fontSize: 20,)),
          ],
        ),
      ),
    );
  }
}