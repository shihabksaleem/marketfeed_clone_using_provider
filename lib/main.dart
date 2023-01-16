import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/provider_classes/leaderboard_parovider.dart';
import 'package:marketfeeed/resources/provider_classes/provider_model.dart';
import 'package:marketfeeed/screeens/login_screen/screen_login.dart';
import 'package:marketfeeed/screeens/screen_home/screen_home.dart';
import 'package:marketfeeed/screeens/screen_splash/splash_screeen.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
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
          SplashScreen.id: (context) => SplashScreen(),
          ScreenLogin.id: (context) => ScreenLogin(),
          ScreenHome.id: (context) => ScreenHome(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
