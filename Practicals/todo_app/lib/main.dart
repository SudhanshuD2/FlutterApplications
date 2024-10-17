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

    List<Map> optionsList = <Map>[
      {
        'name': 'Flight',
        'icon': SvgPicture.asset('asset/flight.svg', fit: BoxFit.scaleDown),
      },
      {
        'name': 'Hotel',
        'icon': const Icon(Icons.hotel, color: Colors.white),
      },{
        'name': 'Car',
        'icon': SvgPicture.asset('asset/car.svg', fit: BoxFit.scaleDown),
      },{
        'name': 'Tour',
        'icon': SvgPicture.asset('asset/Vector.svg', fit: BoxFit.scaleDown),
      },
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
          title: Row(
            children: [
              Text(
                'London',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),),
              const SizedBox(width: 2),
              Text(
                '(England)',
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),),
            ],
          ),
          leading: const Icon(Icons.arrow_back_ios, color: Colors.white),
          actions: [
            SvgPicture.asset(
              'asset/heart.svg',
              height: 24,
              width: 24, 
            ),
            const SizedBox(width: 10),
            SvgPicture.asset(
              'asset/menu.svg',
              height: 20,
              width: 20,
            ),
            const SizedBox(width: 15),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 30, left: 20),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Included',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),),
                Text(
                  'For more details press on the icons.',
                  style: GoogleFonts.inter(
                    color: const Color.fromRGBO(179, 182, 187, 1),
                    fontSize: 12,
                  ),),
                SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 62,
                                width: 62,
                                margin: const EdgeInsets.only(right: 38),
                                decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                                child: Container(
                                  margin: const EdgeInsets.all(2),
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1.5, color: Colors.white),
                                    shape: BoxShape.circle,
                                    color: const Color.fromRGBO(5, 62, 248, 1),
                                  ),
                                  child: optionsList[index]['icon'],
                                ),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  optionsList[index]['name'],
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Row(children: [
                  Text(
                    'Rating & Reviews',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),),
                    const Spacer(),
                    const Icon(Icons.star, color: Color.fromRGBO(228, 161, 2, 1)),
                    Text(
                      '4.6',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(228, 161, 2, 1),
                      ),),
                    const SizedBox(width: 20),
                ],),
                Row(
                  children: [
                    Text(
                      'Sorted by recent reviews',
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(179, 182, 187, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),),
                    const Icon(Icons.keyboard_arrow_down_outlined, color: Color.fromRGBO(179, 182, 187, 1), size: 22),
                    const Spacer(),
                    Text(
                      '848 Reviews',
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(179, 182, 187, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),),
                    const SizedBox(width: 20),
                  ],
                ),
                const SizedBox(height: 7),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 354,
                            margin: const EdgeInsets.only(right: 15),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(233, 237, 248, 1),
                            ),
                            child: Column(
                              children: [
                                Row(children: [
                                  Text(
                                    'London is Great!',
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                  const Spacer(),
                                  Text(
                                    'John Doe',
                                    style: GoogleFonts.inter(
                                      color: const Color.fromRGBO(0, 0, 0, 0.4),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],),
                                const SizedBox(height: 2),
                                Row(children: [
                                  const Icon(Icons.star, color: Color.fromRGBO(228, 161, 2, 1), size: 10),
                                  const Icon(Icons.star, color: Color.fromRGBO(228, 161, 2, 1), size: 10),
                                  const Icon(Icons.star, color: Color.fromRGBO(228, 161, 2, 1), size: 10),
                                  const Icon(Icons.star, color: Color.fromRGBO(228, 161, 2, 1), size: 10),
                                  const Icon(Icons.star, color: Color.fromRGBO(228, 161, 2, 1), size: 10),
                                  const Spacer(),
                                  Text(
                                    '12/08/18',
                                    style: GoogleFonts.inter(
                                      color: const Color.fromRGBO(0, 0, 0, 0.4),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],),
                                const SizedBox(height: 14),
                                SizedBox(
                                  child: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                                    style: GoogleFonts.inter(
                                      color: const Color.fromRGBO(0,0,0,0.6),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
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
                const SizedBox(height: 22),
                Text(
                  'Gallery',
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),),
                Row(children: [
                  Text(
                    'Sorted by recent photos',
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(179, 182, 187, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),),
                  const Icon(Icons.keyboard_arrow_down_outlined, size: 18, color: Color.fromRGBO(179, 182, 187, 1),),
                ],),
                const SizedBox(height: 30),
                Container(
                  height: 160,
                  margin: const EdgeInsets.only(bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            width: 155,
                            height: 155,
                            margin: const EdgeInsets.only(right: 12),
                            padding: const EdgeInsets.all(50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color.fromRGBO(233,237,248, 1),
                            ),
                            child: SvgPicture.asset('asset/mountain.svg'),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],),
            Container(height: 0.5, color: const Color.fromRGBO(138, 150, 172, 0.49),),
            const SizedBox(height: 20),
            Container(
              height: 52,
              padding: const EdgeInsets.only(right: 30),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Expires in: 58 h 23 min',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),),
                  Container(
                    height: 60,
                    width: 130,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(52,111,249,1),
                      borderRadius: BorderRadius.circular(32), 
                    ),
                    child: Text(
                      '\$${330}',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 15.47,
                        fontWeight: FontWeight.w500,
                      ),),
                  ),
                ],
              ),
            ),
          ],),
    );
  }
}