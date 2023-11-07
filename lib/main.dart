import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mobiles_app/views/home_app.dart';
import 'package:mobiles_app/views/login_screen.dart';
import 'package:mobiles_app/views/onboarding_screens.dart';

void main()async {

  await Hive.initFlutter();
  await Hive.openBox('cart'); // Open a box for your cart items
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        color: Color(0xff98C6B1),
      theme: ThemeData(primarySwatch:Colors.teal),

      debugShowCheckedModeBanner: false,

      home: OnboardingScreen(),
    );
  }
}
