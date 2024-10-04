// List view static
import 'package:flutter/material.dart';
void main(){
  runApp(const ListViewCode());
} 
class ListViewCode extends StatelessWidget{
  const ListViewCode({super.key});
  @override
  Widget build(BuildContext context){
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView', style: TextStyle(fontSize: 25)),
          backgroundColor: Colors.blue[800]
        ),
        body: ListView(
          children: [
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgOD0abk6GHTIRcOLItB1UnxDP8NtyACkMCA&s'),
            const Icon(Icons.favorite, color: Colors.red),
            const Text('Very Good', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),),
            GestureDetector(
              onDoubleTap: () {
                print('Liked');
              },
              child: Container(
                height: 250,
                width: 100,
                color: Colors.blue,
                child: Column(
                  children: [
                    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRetBEjk7XUeIsxCWqTHhy_xt1zVRpefG9rmQ&s'),
                    const Icon(Icons.favorite_border),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}