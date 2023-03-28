import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:register/screens/login_page.dart';
import 'package:register/screens/home_page.dart';
import 'package:register/screens/register-page.dart';
import 'package:register/screens/fire-alarm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter RegisterPage',
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
