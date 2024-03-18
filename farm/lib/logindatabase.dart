import 'package:farm/loginmodel.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;
//Login Database.
Future<void> insertData(Login obj) async {
  final localDB = await database;

  await localDB.insert(
    'Sign',
    obj.loginMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Login>> retData() async {
  final localDB = await database;
  List<Map<String, dynamic>> retList = await localDB.query("Sign");
  return List.generate(
    retList.length,
    (i) {
      return Login(
        name: retList[i]['name'],
        phone: retList[i]['phone'],
        username: retList[i]['username'],
        password: retList[i]['password'],
      );
    },
  );
}

Future<void> insertTomatoData(Tomato obj) async {
  final localDB = await database;
  await localDB.insert(
    'Tomato',
    obj.tomatoMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

//Tomato database.
Future<List<Tomato>> retTomatoData() async {
  final localDB = await database;

  List retList = await localDB.query('Tomato');
  return List.generate(
    retList.length,
    (i) {
      print(retList[i]['orderId']);
      return Tomato(
        orderId: retList[i]['orderId'],
        name: retList[i]['name'],
        quantity: retList[i]['quantity'],
        address: retList[i]['address'],
      );
    },
  );
}

//Lady finger database.
Future<void> insertLady(LadyfingerModel obj) async {
  final localDB = await database;

  await localDB.insert(
    'Ladyfinger',
    obj.ladyMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<LadyfingerModel>> retLadyData() async {
  final localDB = await database;

  List retLadyList = await localDB.query('Ladyfinger');
  return List.generate(
    retLadyList.length,
    (i) {
      print(retLadyList[i]['orderId']);
      return LadyfingerModel(
        orderId: retLadyList[i]['orderId'],
        custname: retLadyList[i]['custname'],
        quantity: retLadyList[i]['quantity'],
        address: retLadyList[i]['address'],
      );
    },
  );
}
