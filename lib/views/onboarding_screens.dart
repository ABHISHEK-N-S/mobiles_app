import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'login_screen.dart';

class OnboardingScreen extends StatelessWidget {

  final List<PageViewModel> pages = [

    PageViewModel(
      title: "Welcome to Exactus ..Explore Brands",
      body: "Browse a wide range of popular brands like iPhone, Samsung, and more.",
      image: Image.asset("assets/images/second.png"),
    ),
    PageViewModel(
      title: "Shop with Ease",
      body: "Find your favorite products and add them to your cart with a simple tap.",
      image: Image.asset("assets/images/third.png"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages,
      onDone: () {
        // Handle the done action, e.g., navigate to the main part of your app
        // You can use Navigator.push or any other navigation method.
      },
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Icon(Icons.arrow_forward),
      done:  TextButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>login_screen()));
      }, child:Text("done")),
    );
  }
}
