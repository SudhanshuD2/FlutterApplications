// Where to go screen Application
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BottomSheet',
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
    
    List<Map> firstList = <Map>[
      {
        'city': 'El Cairo',
        'country': 'Egypt',
        'rating': 4.6,
        'prize': 260,
      },
      {
        'city': 'London',
        'country': 'England',
        'rating': 4.6,
        'prize': 330,
      },
      {
        'city': 'Unknown',
        'country': 'Unknown',
        'rating': 4.2,
        'prize': 460,
      },
    ];
    List<Map> secondList = <Map>[
      {
        'city': 'Cancun',
        'country': 'Mexico',
        'review': '848 Reviews'
      },
      {
        'city': 'Santorini',
        'country': 'Greece',
        'review': '663 Reviews'
      },
      {
        'city': 'El Cairo',
        'country': 'Egypt',
        'review': '848 Reviews'
      },
    ];
    List<Map> titleList = <Map>[
      {
        'title':'Best Deals',
        'desc': 'Sorted by lower price',
      },
      {
        'title':'Popular Destinations',
        'desc': 'Sorted by Higher reting',
      },
      {
        'title':'Popular Destinations',
        'desc': 'Sorted by Higher reting',
      }
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
          centerTitle: true,
          title: Text(
            'Where do you want to travel?',
            style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 30),
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 45),
                  alignment: Alignment.center,
                  height: 43,
                  width: 275,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(233, 237, 248, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Select Destination',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color.fromRGBO(52, 111, 249, 1),
                        ),),
                        const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 20,
                          color: Color.fromRGBO(52, 111, 249, 1),
                          ),
                    ],
                  ),
                ),
                Container(
                  height: 41,
                  width: 41,
                  margin: const EdgeInsets.only(left: 20),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(52,111,249,1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.search,
                    size: 22,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 22),
                  child: Text(
                    titleList[0]['title'],
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 22),
                  child: Row(
                    children: [
                      Text(
                        titleList[0]['desc'],
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(179, 182, 187, 1),
                        ),),
                      const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 20,
                        color: Color.fromRGBO(179, 182, 187, 1),
                      ),
                    ],),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: firstList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 175,
                            width: 175,
                            margin: const EdgeInsets.only(left: 15),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(233, 237, 248, 1),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      firstList[index]['city'],
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),),
                                    const Spacer(),
                                    const Icon(Icons.star, size: 11, color: Color.fromRGBO(228, 161, 2, 1)),
                                    Text(
                                      '${firstList[index]['rating']}',
                                      style: GoogleFonts.inter(
                                        fontSize: 11,
                                        color: const Color.fromRGBO(288, 161, 2, 1),
                                      ),
                                    ),
                                  ],),
                                Text(
                                  firstList[index]['country'],
                                  style: GoogleFonts.inter(
                                    fontSize: 10,
                                    color: const Color.fromRGBO(179, 182, 187, 1),
                                  ),),
                                Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  padding: const EdgeInsets.only(left: 38),
                                  child: SvgPicture.asset('asset/mountain.svg', height: 30.5, width: 52.5,),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 34,
                                      width: 58,
                                      margin: const EdgeInsets.only(top: 25),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        'More',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          color: const Color.fromRGBO(52, 111, 249, 1),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 34,
                                      width: 58,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(52, 111, 249, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(left: 15, top: 25),
                                      child: Text(
                                        '\$${firstList[index]['prize']}',
                                        style: GoogleFonts.inter(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],),
                              ],),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 22, top: 10),
                  child: Text(
                    titleList[1]['title'],
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 22),
                  child: Row(
                    children: [
                      Text(
                        titleList[1]['desc'],
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(179, 182, 187, 1),
                        ),),
                      const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 20,
                        color: Color.fromRGBO(179, 182, 187, 1),
                      ),
                    ],),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 220,
                  margin: const EdgeInsets.only(left: 20),
                  child: ListView.builder(
                    itemCount: firstList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 175,
                                width: 175,
                                margin: const EdgeInsets.only(right: 15),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: SvgPicture.asset('asset/mountain.svg', height: 30.5, width: 52.5,),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    secondList[index]['city'],
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),),
                                  const SizedBox(width: 90),
                                  const Icon(Icons.star, color: Color.fromRGBO(228,161,2,1), size: 11),
                                  Text(
                                    '4.6',
                                    style: GoogleFonts.inter(
                                      color: const Color.fromRGBO(228,161,2,1),
                                      fontSize: 12,
                                    ),),
                                ],),
                              Row(
                                children: [
                                  Text(
                                    secondList[index]['country'],
                                    style: GoogleFonts.inter(
                                      fontSize: 10,
                                      color:const Color.fromRGBO(179, 182, 187, 1),
                                    ),),
                                  const SizedBox(width: 68),
                                  Text(
                                    secondList[index]['review'],
                                    style: GoogleFonts.inter(
                                      color: const Color.fromRGBO(179, 182, 187, 1),
                                      fontSize: 10,
                                    ),),
                                ],),
                            ],),
                        ],);
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 22, top: 10),
                  child: Text(
                    titleList[2]['title'],
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 22),
                  child: Row(
                    children: [
                      Text(
                        titleList[2]['desc'],
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(179, 182, 187, 1),
                        ),),
                      const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 20,
                        color: Color.fromRGBO(179, 182, 187, 1),
                      ),
                    ],),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 220,
                  margin: const EdgeInsets.only(left: 20),
                  child: ListView.builder(
                    itemCount: firstList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 175,
                                width: 175,
                                margin: const EdgeInsets.only(right: 15),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: SvgPicture.asset('asset/mountain.svg', height: 30.5, width: 52.5,),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    secondList[index]['city'],
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),),
                                  const SizedBox(width: 90),
                                  const Icon(Icons.star, color: Color.fromRGBO(228,161,2,1), size: 11),
                                  Text(
                                    '4.6',
                                    style: GoogleFonts.inter(
                                      color: const Color.fromRGBO(228,161,2,1),
                                      fontSize: 12,
                                    ),),
                                ],),
                              Row(
                                children: [
                                  Text(
                                    secondList[index]['country'],
                                    style: GoogleFonts.inter(
                                      fontSize: 10,
                                      color:const Color.fromRGBO(179, 182, 187, 1),
                                    ),),
                                  const SizedBox(width: 68),
                                  Text(
                                    secondList[index]['review'],
                                    style: GoogleFonts.inter(
                                      color: const Color.fromRGBO(179, 182, 187, 1),
                                      fontSize: 10,
                                    ),),
                                ],),
                            ],),
                        ],);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}