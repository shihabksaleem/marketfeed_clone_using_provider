import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/provider%20classes/Provider_model.dart';
import 'package:marketfeeed/resources/provider%20classes/leaderboardParovider.dart';
import 'package:marketfeeed/screeens/login%20Screen/screen_login.dart';
import 'package:marketfeeed/screeens/screenHome/Screen_Home.dart';
import 'package:marketfeeed/screeens/screen%20splash/splashscreeen.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProviderModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => leaderboardProviderModel(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
          ),
        ),
        initialRoute: SplashScreen.id,
        routes: {
          //static screen id used for named rtoutes
          SplashScreen.id: (context) => SplashScreen(),
          ScreenLogin.id: (context) => ScreenLogin(),
          ScreenHome.id: (context) => ScreenHome(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
