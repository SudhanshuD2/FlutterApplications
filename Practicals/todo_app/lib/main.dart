// Where to go screen Application
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import './templates/bs_todo_model.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  
  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 30,top: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good morning',
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),),
                Text(
                  'Gotham',
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),),
              ],),),
          const SizedBox(height: 40),
          // Grey shaded Container
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(217,217,217,1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Text(
                    'CREATE TO DO LIST',
                    style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),),
                  const SizedBox(height: 30),

                  // White Background Screen Builder
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index){

                          // main Container, listView...
                          return Slidable(
                            endActionPane: ActionPane(
                              motion: const StretchMotion(),
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 30, left: 20),
                                      height: 30,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(89, 57, 241, 1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(Icons.edit_outlined, color:Colors.white),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      height: 30,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(89, 57, 241, 1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(Icons.delete_outline, color:Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            child: Container(
                              height: 100,
                              margin: const EdgeInsets.only(top: 30),
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0,0,0,0.16),
                                    blurRadius: 12,
                                    offset: Offset(0, 4),
                                ),],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    margin: const EdgeInsets.only(left: 20),
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(217,217,217, 1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(Icons.image_outlined, size: 35, color: Colors.white),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 5),
                                        // Title
                                        Text(
                                          'Lorem Ipsum is simply dummy industry.',
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),),
                                        const SizedBox(height: 5),
                                        // Description
                                        Text(
                                          'Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem.',
                                          style: GoogleFonts.inter(
                                            color: const Color.fromRGBO(0,0,0,0.7),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),),
                                        const SizedBox(height: 5),
                                        // Date
                                        Text(
                                          '10 July 2023',
                                          style: GoogleFonts.inter(
                                            color: const Color.fromRGBO(0,0,0,0.7),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          bottomSheetViewer();
        },
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        child: const Icon(Icons.add_rounded, size: 32, color: Colors.white),
      ),
    );
  }
}