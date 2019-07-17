import 'package:flutter/material.dart';

// import './pages/splashscreen.dart';
import './pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FOODBUDDY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto'
      ),
      home: LoginPage(),
    );
  }
}