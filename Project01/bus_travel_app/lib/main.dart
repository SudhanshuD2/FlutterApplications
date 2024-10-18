// Do not Edit File

import 'package:flutter/material.dart';
/// import your files here
import './Sudhanshu/landing_page.dart';
// import './Deepti/';
// import './Jaydeep/';
// import './Puja/';

/// Import files bove only.
/// Maintain Sequence of group members.

void main() {
  runApp(const MainApp());
}
// Do not Edit File
class MainApp extends StatelessWidget{
  const MainApp({super.key});
// Do not Edit File
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      // Do not Edit File
    );
  }
// Do not Edit File
}
