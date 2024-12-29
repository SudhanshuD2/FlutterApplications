import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import './player_model.dart';

dynamic database;
void insertData(Player obj) async{
  Database localDB = await database;
  await localDB.insert(
    'Player',
    obj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future getPlayerData() async{

  Database localDB = await database;
  List<Map<String, dynamic>> playerData = await localDB.query('Player');

  return playerData;
}
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  database = await openDatabase(
    join(await getDatabasesPath(), 'IndiaPlayerDB.db'),
    version: 1,
    onCreate: (db, verion) async{
      await db.execute('''
        CREATE TABLE Player(
          playerName TEXT,
          jerNo INT,
          runs INT,
          avg REAL
        )
      ''');
    },
  );

  Player obj1 = Player(playerName: 'Virat', jerNo: 18, runs: 15000, avg: 102.5);
  Player obj2 = Player(playerName: 'Rohit', jerNo: 45, runs: 25000, avg: 45.45);

  insertData(obj1);
  insertData(obj2);

  print(await getPlayerData());
}