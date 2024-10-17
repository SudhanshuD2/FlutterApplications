// Card Builder app name and company inputs.
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputCardApp(),
    );
  }
}

class InputCardApp extends StatefulWidget {
  const InputCardApp({super.key});

  @override
  State createState() => _InputCardAppState();
}
class _InputCardAppState extends State {

  TextEditingController name = TextEditingController();
  TextEditingController company = TextEditingController();

  String? names;
  String? companies;
  
  List<Map> nameList = <Map>[];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Info', style: GoogleFonts.quicksand(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),),
        backgroundColor: const Color.fromARGB(255, 1, 1, 41),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 47, 0, 55),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),  
              child: TextField(
                controller: name,
                style: GoogleFonts.quicksand(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,  
                ),
                decoration: InputDecoration(
                  hintText: 'Enter name',
                  hintStyle: GoogleFonts.quicksand(
                    fontSize: 15,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                  ),
                  border: const OutlineInputBorder(borderSide: BorderSide(
                    width: 2,
                    style: BorderStyle.solid,
                    color: Colors.pink,
                  )),
                ),
              ), 
          ),
          Padding(
            padding: const EdgeInsets.all(20),
              child: TextField(
                controller: company,
                style: GoogleFonts.quicksand(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,  
                ),
                decoration: InputDecoration(
                  hintText: 'Dream Company',
                  hintStyle: GoogleFonts.quicksand(
                    fontSize: 15,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                  ),
                  border: const OutlineInputBorder(borderSide: BorderSide(
                    width: 2,
                    style: BorderStyle.solid,
                    color: Colors.pink,
                  )),
                ),
              ), 
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: (){
              if(name.text == '' || company.text == ''){
                setState(() {
                  name.clear();
                  company.clear();
                });
              }else{
                names = name.text;
                companies = company.text;
                nameList.add({
                  'name':names,
                  'company': companies,
                  }
                );
              setState(() {
                name.clear();
                company.clear();
              });
              }
            }, 
            child: const Text('Submit',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ), 
            ), 
          ),
          Container(
            height: 482,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: ListView.builder(
              itemCount: nameList.length,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: 120,
                      width: 330,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 38, 70),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Text('Name: ', style: GoogleFonts.quicksand(color: Colors.grey)),
                          Text('${nameList[index]['name']}', style: GoogleFonts.quicksand(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.yellow,
                          )),
                          Text('Dream Company: ', style: GoogleFonts.quicksand(color: Colors.grey)),
                          Text('${nameList[index]['company']}', style: GoogleFonts.quicksand(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.yellow,
                          )),
                          Container(
                            height: 30,
                            width: 30,
                            margin: const EdgeInsets.only(left: 270),
                            child: GestureDetector(
                              onTap: () => setState(()=> nameList.remove(nameList[index])),
                              child: Icon(
                                Icons.delete_outline,
                                size: 25,
                                color: Colors.red[300],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}