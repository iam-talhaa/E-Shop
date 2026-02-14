// import 'dart:io';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';

// class DBHelper {
//   //Initialization :

//   DBHelper._();
//   static final DBHelper getinstance = DBHelper._();

//   static final TABLE_NOTE = 'note';
//   static final COLUMN_SR_N = 'SR_N';
//   static final COLUMN_TITLE = 'Title'; // Fixed typo
//   static final COLUMN_DES = 'Des';

//   Database? mydb;

//   // step 2: Check Data Base (if Create return database if Not Then open and Create this)
//   Future<Database> getdatabase() async {
//     return mydb = mydb ?? await openDB();
//   }

//   // Step 3: if Data base is not Create then open this
//   Future<Database> openDB() async {
//     Directory appDir = await getApplicationDocumentsDirectory();
//     String dbpath = join(appDir.path, 'Note.db');

//     return await openDatabase(
//       dbpath,
//       version: 1,
//       onCreate: (db, version) {
//         db.execute(
//           "CREATE TABLE $TABLE_NOTE ($COLUMN_SR_N INTEGER PRIMARY KEY AUTOINCREMENT, $COLUMN_TITLE TEXT, $COLUMN_DES TEXT)",
//         );
//       },
//     );
//   }

//   //Add Notes through Querry
//   Future<bool> addnote({required String myTitle, required String des}) async {
//     var db = await getdatabase();
//     int rowsEffected = await db.insert(TABLE_NOTE, {
//       COLUMN_TITLE: myTitle,
//       COLUMN_DES: des,
//     });
//     return rowsEffected > 0;
//   }

//   Future<List<Map<String, dynamic>>> getallNotes() async {
//     var db = await getdatabase();
//     return await db.query(TABLE_NOTE);
//   }
// }

import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Dbhelper {
  static final COLUMN_NAME;
  static final COLUMN_SR;
  static final COLUMN_TITLE;
  static final COLUMN_DES;

  Dbhelper._();

  Database? db;

  //1 STEP  Chekin
  Future<Database> getdatabase() async {
    return db = db ?? await Opendb();
  }

  //2 STEP Opening
  Future<Database> Opendb() async {
    Directory appDir = await getApplicationDocumentsDirectory();

    String dbpath = join(appDir.path, 'Note.db');

    return openDatabase(
      dbpath,
      version: 1,
      onCreate: (db, version) {
        db.execute(
          "CREATE TABLE ${COLUMN_NAME}(${COLUMN_SR} INTEGER PRIMARY KEY AUTOINCREMENT , ${COLUMN_TITLE} TEXT, ${COLUMN_DES} TEXT) ",
        );
      },
    );
  }

  //3 STEP  ADD NOTES

  Future<int> addNote({required String mtitle, required String mdes}) async {
    var db = await getdatabase();

    int rowEffected = await db.insert(COLUMN_NAME, {
      COLUMN_TITLE: "$mtitle",
      COLUMN_DES: "$mdes",
    });
    return rowEffected;
  }
}
