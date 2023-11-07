

import 'package:hive/hive.dart';


@HiveType(typeId: 0)
class User{
@HiveField(0)
final String? name;
@HiveField(1)
final String? password;


User({this.name, this.password});

}