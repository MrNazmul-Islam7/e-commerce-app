// ignore_for_file: unused_import, prefer_const_constructors, avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:nazmul_app/pages/landingpage.dart';
import 'pages/homepage.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 1500,
          splash: Column(
            children: const [
              Icon(
                Icons.devices_other_outlined,
                color: Colors.white,
                size: 60,
              ),
              Text(
                'Doremon Gadget Shop',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          backgroundColor: Colors.black,
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.bottomToTop,
          nextScreen: HomePage()),
    );
  }
}
