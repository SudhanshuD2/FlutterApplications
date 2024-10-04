import 'package:flutter/material.dart';
void main(){
  runApp(const MainApp());
} 
class MainApp extends StatelessWidget{
  const MainApp({super.key});
  static List<String> imgurl = [
    'https://thumbor.forbes.com/thumbor/fit-in/900x510/https://www.forbes.com/advisor/wp-content/uploads/2022/04/Image_-_Website_types_.jpeg.jpg',
    'https://media.istockphoto.com/id/1371339413/photo/co-working-team-meeting-concept-businessman-using-smart-phone-and-digital-tablet-and-laptop.jpg?s=612x612&w=0&k=20&c=ysEsVw3q2axYt3oVZAuQjtHRlN3lY-U_e0ikK5yKIXQ=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7QwAuLsbTpXYvOU3bg50v9CKCr-OdqniwvQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6_39OPqlQld7cSPWlFWwb971lea_y7s9JZw&s',
    'https://w3layouts.com/wp-content/uploads/2021/03/digi-corp-website-template-1-350x219.jpg',
  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Question 7', style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.blue.shade200,
        ),
        body: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              return SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.network(imgurl[index]),
              );
            },
        ),
        ),
    );
  }
}