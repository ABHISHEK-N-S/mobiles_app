// import 'package:hive_flutter/adapters.dart';
//
// import 'model/mobile_model.dart';
// import 'model/mobile_model.g.dart';
//
//
//
// class HiveDb{
//   HiveDb.internal();
//
//   static HiveDb instance=HiveDb.internal();
//
//   factory HiveDb(){
//     return instance;
//   }
//   Future<void> addUser(User user) async{
//     final db=await Hive.openBox<User>("userData");
//     db.put(user.id,user);
//   }
//   Future<List<User>> getUser() async{
//     final db=await Hive.openBox<User>("userData");
//     return db.values.toList();
//   }
//
// }