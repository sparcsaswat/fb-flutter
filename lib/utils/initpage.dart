import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../pages/homepage.dart';

void initPage(BuildContext context) async {
  
  var prefs = await SharedPreferences.getInstance();
  final result = prefs.getString('uid');
  if (result != null) {
    if (result.isNotEmpty) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => HomePage()));
    }
  }
}