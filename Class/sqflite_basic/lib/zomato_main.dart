import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'zomato_food.dart';

dynamic database;

void insertData(ZomatoFood obj)async{
  Database localDB = await database;

  await localDB.insert('Food', obj.zomatoMap(),
  conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Map>> getData()async{
  Database localDB = await database;
  List<Map<String, dynamic>> orderMap = await localDB.query('Food');

  return orderMap;
}

void updateData(ZomatoFood obj) async{
  Database localDB = await database;

  await localDB.update('Food',
  obj.zomatoMap(),
  where: 'orderNo=?',
  whereArgs: [obj.orderNo],
  );
}

void deleteData(int oNo)async{
  Database localDB = await database;
  localDB.delete('Food', where: 'orderNo=?', whereArgs: [oNo]);
}

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join( await getDatabasesPath(), 'ExampleDB.db'),
    version: 1,
    onCreate: (db, version) async{
      await db.execute(
        '''CREATE TABLE Food(
          orderNo INT PRIMARY KEY,
          custName TEXT,
          hotelName TEXT,
          food Text,
          bill REAL
        )'''
      );
    },);

  ZomatoFood obj1 = ZomatoFood(orderNo: 1,
   custName: 'Sudhanshu',
   hotelName: 'ShriRam',
   food: 'Burger, Fries, Coffee',
   bill: 120.5,
  );

  ZomatoFood obj2 = ZomatoFood(orderNo: 2,
   custName: 'Jaydeep',
   hotelName: 'MithaiMall',
   food: 'Pyaz Kachori, Kanda Barfi, onion rings',
   bill: 160,
  );
  insertData(obj1);
  insertData(obj2);
  print('--------------------------------------------------------------------------------');
  print(await getData());
  print('--------------------------------------------------------------------------------');

  obj2 = ZomatoFood(orderNo: 2,
   custName: 'Jaydeep',
   hotelName: 'MithaiMall',
   food: 'Aam Barfi, Kit-Kat',
   bill: obj2.bill - 60,
  );
  updateData(obj2);
  print('--------------------------------------------------------------------------------');
  print(await getData());
  print('--------------------------------------------------------------------------------');

  deleteData(1);
  print('--------------------------------------------------------------------------------');
  print(await getData());
  print('--------------------------------------------------------------------------------');
}