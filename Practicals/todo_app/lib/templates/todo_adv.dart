// Where to go screen Application
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
// import './templates/bs_todo_model.dart';

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

    void bottomSheetViewer(){

      TextEditingController titleController = TextEditingController();
      TextEditingController descriptionController = TextEditingController();
      TextEditingController dateController = TextEditingController();
      
      showModalBottomSheet(context: context,
      isScrollControlled: true,
      isDismissible: true,
      builder: (context){
        return Padding(
          padding: EdgeInsets.only(left: 15, right: 15,bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height:20),
              Text(
                'Create To-Do',
                style: GoogleFonts.quicksand(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),),
              const SizedBox(height:20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          
                  /// Title TextField input
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      label: Text(
                        'Title:',
                        style: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0,0,0,0.7),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color.fromRGBO(138,139,139,1),),
                      ),
                      hintText: 'Lorem Ipsum typeseting industry.',
                    ),
                    style: GoogleFonts.quicksand(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0,0,0,0.7),
                    ),),
                  const SizedBox(height: 30),
                  /// Description textField
                  TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      label: Text(
                        'Description',
                        style: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0,0,0,0.7),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color.fromRGBO(138,139,139,1),),
                      ),
                      hintText: 'Lorem Ipsum typeseting industry.',
                    ),
                    style: GoogleFonts.quicksand(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0,0,0,0.7),
                    ),),
                  const SizedBox(height: 30),
                  /// Date TextField
                  TextField(
                    controller: dateController,
                    decoration: InputDecoration(
                      label: Text(
                        'Date:',
                        style: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0,0,0,0.7),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color.fromRGBO(138,139,139,1),),
                      ),
                      hintText: 'Date Format here',
                      suffixIcon: const Icon(Icons.calendar_month_outlined),
                    ),
                    style: GoogleFonts.quicksand(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0,0,0,0.7),
                    ),),
                  const SizedBox(height: 50),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(89, 57, 241, 1),
                        boxShadow: const [
                          BoxShadow(
                            color:  Color.fromRGBO(0,0,0,0.7),
                            blurRadius: 10,
                            spreadRadius: 1,
                            offset: Offset(0,0),
                          ),
                        ],
                      ),
                      child: Text(
                        'Submit',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
              ],),
            ],
          ),
        );
      });
    }

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