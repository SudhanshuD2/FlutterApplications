// To-do Application
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import './todo_model.dart';
import 'package:intl/intl.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    List<TodoModel> todoList= <TodoModel>[];

    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController dateController = TextEditingController();

    void clearControllers(){
      titleController.clear();
      descriptionController.clear();
      dateController.clear();
    }

    void submit(bool isEdit, [TodoModel? todoObj]){
      if(titleController.text.trim().isNotEmpty && dateController.text.trim().isNotEmpty){
        if(isEdit){
          todoObj!.title = titleController.text;
          todoObj.description = descriptionController.text;
          todoObj.date = dateController.text;
        }else{
          todoList.add(
            TodoModel(
              date: dateController.text,
              title: titleController.text,
              description: descriptionController.text,
            ),
          );
        }
      
      }
    }
    
    void showSheet(bool isEdit, [TodoModel? todoObj]){
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
                        suffixIcon: const Icon(Icons.calendar_month_outlined),
                      ),
                      style: GoogleFonts.quicksand(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0,0,0,0.7),
                      ),
                      onTap: () async {
                        DateTime? pickDate = await showDatePicker(
                          context: context,
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025),);
                        String formatDate = DateFormat.yMMMd().format(pickDate!);
                        
                        setState(){
                          dateController.text = formatDate;
                        }
                      },
                    ),
                    const SizedBox(height: 50),
                    GestureDetector(
                      onTap: (){
                        submit(false);
                        Navigator.of(context).pop();
                        clearControllers();
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width - 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(89, 57, 241, 1),
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
    
    List<Color?> colList = <Color?>[
      const Color.fromRGBO(250, 232, 232, 1),
      const Color.fromRGBO(232, 237, 250, 1),
      const Color.fromRGBO(250, 249, 232, 1),
    ];
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
          title: Text(
            'To-do List',
            style: GoogleFonts.quicksand(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 125,
                  width: 370,
                  margin: const EdgeInsets.only(top: 25),
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colList[(index%colList.length)],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 63,
                            width: 63,
                            margin: const EdgeInsets.only(top: 10, left: 10),
                            padding: const EdgeInsets.all(18),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset('asset/image.svg'),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 15, right: 13),
                                child: Text(
                                  todoList[index].title!, 
                                style: GoogleFonts.quicksand(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),),
                              ),
                              SizedBox(
                                child: Text(
                                  todoList[index].description!,
                                  style: GoogleFonts.quicksand(
                                    fontSize: 10,
                                    color: const Color.fromRGBO(84,84,84,1),
                                  ),),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 15, left: 10),
                            child: Text(
                              todoList[index].date!,
                            style: GoogleFonts.quicksand(
                              color: const Color.fromRGBO(132, 132, 132, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),),
                          ),
                          const Spacer(),

                          // Edit Icon
                          GestureDetector(
                            onTap:(){
                              titleController.text = todoList[index].title!;
                              descriptionController.text = todoList[index].description!;
                              dateController.text = todoList[index].date!;
                              showSheet(true, todoList[index]);
                            },
                            child: Container(
                              padding: const EdgeInsets.only(top: 5),
                              child: const Icon(Icons.edit_outlined, size: 20,
                              color: Color.fromRGBO(0, 139, 148, 1)),
                            ),
                          ),

                          // Delete Icon
                          GestureDetector(
                            onTap: (){
                              todoList.remove(todoList[index]);
                              setState((){});
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              padding: const EdgeInsets.only(top: 5),
                              child: const Icon(Icons.delete_outline, size: 20, 
                              color: Color.fromRGBO(0, 139, 148, 1),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showSheet();
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add_rounded, size: 40, color: Colors.white),
        ),
      ),
    );
  }
}
