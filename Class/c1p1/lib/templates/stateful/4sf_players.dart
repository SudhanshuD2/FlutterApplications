// Stateful players application
// 4th app Players
import 'package:flutter/material.dart';
void main(){
  runApp(const PhotoApp());
}
class PhotoApp extends StatefulWidget {
  const PhotoApp({super.key});

  @override
  State createState() => _PhotoAppState();
}
class _PhotoAppState extends State<PhotoApp> {
  int _n = 0;
  List<String> plList = <String>[
      "https://i2.wp.com/akm-img-a-in.tosshub.com/sites/dailyo//resources/202207/ms-dhoni-edited070722013442.jpeg?strip=all",
      "https://www.thesportsdb.com/images/media/player/render/51blp71587335724.png",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJHOSNzDA-YTJA0eG858v1E4GGJPWwJxcXtg&s",
      "https://images.assettype.com/outlookindia/2024-05/9f371a3a-a10f-4942-b27f-2a3eaafe5c98/virat-kohli.png",
      ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Toggle image App'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: const Color.fromARGB(85, 255, 205, 210),
            child: Image.network(plList[_n]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(_n < (plList.length - 1)){
              _n++;
            }else{
              _n = 0;
            }
            setState(() {});
          },
          child: const Icon(Icons.repeat),
        ),
      ),);
  }
}