import 'dart:convert';
import 'dart:developer';

import 'package:api_data/views/get_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<HomeScreen>{

  getAllDeviceData(context) async {

    Uri url = Uri.parse("https://api.restful-api.dev/objects");
    
    //Future<http.Response> response =  http.get(url);
    http.Response response = await http.get(url);
    // log(response.body);
    List<dynamic> jsonData = jsonDecode(response.body);
    log("$jsonData");
    // for(int i=0; i<(jsonData.length); i++){
    //   log("${jsonData[i]}");
    // }
  }

  void getDeviceDataById() async {
    Uri url = Uri.parse("https://api.restful-api.dev/objects?id=3&id=5&id=10");

    http.Response response = await http.get(url);
    log(response.body);
  }

  void getSingleDeviceData() async {
    Uri url = Uri.parse("https://api.restful-api.dev/objects/7");

    http.Response response = await http.get(url);
    log(response.body);
  }

  void postDeviceData() async {
    Map<dynamic, dynamic> deviceData = {
      "name": "Nokia 310",
      "data": {
        'color': 'black',
        'capacity GB': 32,
        'network': '4g',
      }
    };

    Uri url = Uri.parse("https://api.restful-api.dev/objects");

    http.Response response = await http.post(
      url,
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(deviceData),
    );
    log(response.body);
  }

  void patchDeviceData() async {
    Uri url = Uri.parse(
      "https://api.restful-api.dev/objects/ff808181932badb60193916ce9a610a1",
    );
    Map<dynamic, dynamic> deviceData = {"name": "Nokia 4110"};
    http.Response response = await http.patch(
      url,
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(deviceData),
    );
    log(response.body);
  }

  void deleteDeviceData() async {
    Uri url = Uri.parse(
      "https://api.restful-api.dev/objects/ff808181932badb601939163487b108d",
    );

    http.Response response = await http.delete(url);
    log(response.body);
  }

  @override
  Widget build(BuildContext context){
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: Text(
          'API Binding',
          style: GoogleFonts.inter(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // GET CONTAINER
              GestureDetector(
                onTap: () {
                  getAllDeviceData(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const GetScreen())
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: (screenHeight * 0.15),
                  width: (screenWidth * 0.4),
                  decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text('Get Data', style: GoogleFonts.inter(
                    fontSize: screenWidth*0.05,
                    fontWeight: FontWeight.w600,
                  )),
                ),
              ),

              // POST CONTAINER
              Container(
                alignment: Alignment.center,
                height: (screenHeight * 0.15),
                width: (screenWidth * 0.4),
                decoration: BoxDecoration(
                  color: Colors.green.shade300,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text('Post Data', style: GoogleFonts.inter(
                  fontSize: screenWidth*0.05,
                  fontWeight: FontWeight.w600,
                )),
              ),
          ],),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // UPDATE CONTAINER
              Container(
                alignment: Alignment.center,
                height: (screenHeight * 0.15),
                width: (screenWidth * 0.4),
                decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text('Update Data', style: GoogleFonts.inter(
                  fontSize: screenWidth*0.05,
                  fontWeight: FontWeight.w600,
                )),
              ),

              // DELETE CONTAINER
              Container(
                alignment: Alignment.center,
                height: (screenHeight * 0.15),
                width: (screenWidth * 0.4),
                decoration: BoxDecoration(
                  color: Colors.red.shade600,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text('Delete Data', style: GoogleFonts.inter(
                  fontSize: screenWidth*0.05,
                  fontWeight: FontWeight.w600,
                )),
              ),
          ],)
        ],
      ),
    );
  }
}