import 'package:flutter/material.dart';
import 'package:marketfeeed/screeens/login_screen/Page%20resources/login_screen_bottom_container.dart';

class ScreenLogin extends StatelessWidget {
  static String id = 'Login_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('images/logo.png'),
          ),
          LoginScreenBottonContainer()
        ],
      ),
    );
  }
}
