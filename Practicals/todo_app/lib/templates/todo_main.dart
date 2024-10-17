// To-do Application
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
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
          itemCount: 10,
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
                    color: colList[(index%3)],
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
                                child: Text('Lorem Ipsum is simply setting industry. ', 
                                style: GoogleFonts.quicksand(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),),
                              ),
                              SizedBox(
                                child: Text(
                                  'Simply dummy text of the printing and typesetting\nindustry. Lorem Ipsum has been the industry\'s\nstandard dummy text ever since the 1500s',
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
                            child: Text('10 July 2023',
                            style: GoogleFonts.quicksand(
                              color: const Color.fromRGBO(132, 132, 132, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.only(top: 5),
                            child: const Icon(Icons.edit_outlined, size: 20,
                            color: Color.fromRGBO(0, 139, 148, 1)),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.only(top: 5),
                            child: const Icon(Icons.delete_outline, size: 20, 
                            color: Color.fromRGBO(0, 139, 148, 1),),
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
      ),
    );
  }
}
