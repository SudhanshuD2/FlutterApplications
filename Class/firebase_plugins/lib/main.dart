import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './player_model.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const PlayersInfo(email: null));
}

class PlayersInfo extends StatefulWidget {
  final dynamic email;
  const PlayersInfo({super.key, required this.email});

  @override
  State<PlayersInfo> createState() => _MainAppState();
}

class _MainAppState extends State<PlayersInfo> {
  
  TextEditingController pName = TextEditingController();
  TextEditingController jerNo = TextEditingController();

  List<PlayerModel> playerList = []; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FireBase Player App', style: TextStyle(
            color: Colors.black45,
            fontSize: 25,
          ),),
          backgroundColor: Colors.green.shade100,
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: pName,
                style: const TextStyle( fontSize: 30,),
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: jerNo,
                style: const TextStyle( fontSize: 30,),
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: (){
                if(pName.text.trim().isNotEmpty && jerNo.text.trim().isNotEmpty){
                  Map<String, dynamic> data = {
                    'playerName': pName.text.trim(),
                    'jerNo': jerNo.text.trim(),
                  };
                  FirebaseFirestore.instance.collection('playerInfo').add(data);
                  pName.clear();
                  jerNo.clear();

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Data Added on FireBase'),
                    ),
                  );
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Error in data uploading!!!!'),
                    ),
                  );
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'Add Data',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () async{
                QuerySnapshot response = await FirebaseFirestore.instance.collection('playerInfo').get();

                playerList.clear();
                for(int i = 0; i<response.docs.length;i++){
                  print('${response.docs[i]['playerName']}');
                  playerList.add(
                    PlayerModel(
                      playerName: response.docs[i]['playerName'],
                      jerseyNo: response.docs[i]['jerNo'],
                      playerId: response.docs[i].id,
                      profilePic: 'path here'
                    ),
                  );
                  setState(() {});
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'Add Data',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}