import 'package:flutter/material.dart';
import 'package:unvito/constantes.dart';

import 'screens/splash screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UVENTO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBGcolor,
        fontFamily: 'OpenSans',
      ),
      home: AplashScreen(),
    );
  }
}
