import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 0;
  void _settab(index) {
    _currentindex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 72, 156, 1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(40, 21, 111, 1),
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          _settab(1);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.gps_fixed,
              color: Color.fromRGBO(40, 21, 111, 1),
            ),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.notifications,
              color: Color.fromRGBO(40, 21, 111, 1),
            ),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Color.fromRGBO(40, 21, 111, 1),
            ),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.person_outline,
              color: Color.fromRGBO(40, 21, 111, 1),
            ),
          ),
        ],
        onTap: (index) {
          _settab(index);
        },
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: ClipPath(
                clipper: ClippingClass(),
                child: Container(
                  decoration: new BoxDecoration(
                    color: Colors.white,
                  ),
                  child: null,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Text('data'),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text('data'),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text('data'),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
