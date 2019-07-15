import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../utils/bottomnavigtor.dart';

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 72, 156, 1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: flotingbotton(context),
      bottomNavigationBar: buoomnavigationbar(context),
      body: Text('Profile'),
    );
  }
}
