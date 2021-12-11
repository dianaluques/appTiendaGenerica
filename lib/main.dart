import 'package:flutter/material.dart';

import 'Screen/Login.dart';
import 'Screen/home.dart';
import 'Screen/signup.dart';

void main() => runApp(TC());

class TC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      routes: {
       '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
       '/signup' :(context) => SignupPage(),
      },
    );
  }
}