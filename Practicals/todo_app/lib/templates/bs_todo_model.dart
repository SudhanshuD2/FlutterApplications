import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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