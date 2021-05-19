import 'package:flutter/material.dart';

import 'Screen/LoginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF1B1F2D),
      ),
      home: LoginScreen(),
    );

  }
}
