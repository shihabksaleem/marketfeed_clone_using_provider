// ignore_for_file: use_key_in_widget_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marketfeeed/screeens/login_screen/screen_login.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'Splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(milliseconds: 2530),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (ctx) => ScreenLogin(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'images/marketfeed-animated-unscreen.gif',
          width: MediaQuery.of(context).size.width * .60,
        ),
      ),
    );
  }
}
