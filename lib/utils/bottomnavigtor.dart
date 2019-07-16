import 'package:flutter/material.dart';

import '../pages/homepage.dart';
import '../pages/explore.dart';
import '../pages/notification.dart';
import '../pages/chat.dart';
import '../pages/myprofile.dart';

int _currentindex = 0;

void appnavigator(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (BuildContext context) => page));
}

Widget buoomnavigationbar(context) {
  return BottomNavigationBar(
    selectedItemColor: Color.fromRGBO(45, 72, 156, 1),
    selectedLabelStyle: TextStyle(color: Color.fromRGBO(45, 72, 156, 1)),
    selectedIconTheme: IconThemeData(color: Color.fromRGBO(45, 72, 156, 1)),
    currentIndex: _currentindex,
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(
        title: Text(''),
        icon: Icon(
          Icons.gps_fixed,
          color: Color.fromRGBO(107, 109, 112, 1),
        ),
      ),
      BottomNavigationBarItem(
        title: Text(''),
        icon: Icon(
          Icons.notifications,
          color: Color.fromRGBO(107, 109, 112, 1),
        ),
      ),
      BottomNavigationBarItem(
        title: Text(''),
        icon: Icon(
          Icons.forum,
          color: Color.fromRGBO(107, 109, 112, 1),
        ),
      ),
      BottomNavigationBarItem(
        title: Text(''),
        icon: Icon(
          Icons.person_outline,
          color: Color.fromRGBO(107, 109, 112, 1),
        ),
      ),
    ],
    onTap: (index) {
      _currentindex = index;
      if (_currentindex == 0) {
        appnavigator(context, ExplorePage());
      } else if (_currentindex == 1) {
        appnavigator(context, NotificationPage());
      } else if (_currentindex == 2) {
        appnavigator(context, ChatPage());
      } else {
        appnavigator(context, MyProfilePage());
      }
    },
  );
}

Widget flotingbotton(context) {
  return FloatingActionButton(
    elevation: 2.0,
    backgroundColor: Color.fromRGBO(40, 21, 111, 1),
    child: Icon(Icons.add, color: Colors.white),
    onPressed: () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => HomePage()));
    },
  );
}
