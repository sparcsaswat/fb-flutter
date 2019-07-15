import 'dart:io';

import 'package:flutter/material.dart';

import '../utils/bottomnavigtor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 72, 156, 1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: flotingbotton(context),
      bottomNavigationBar: buoomnavigationbar(context),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.4,
              child: ClipPath(
                clipper: ClippingClass(),
                child: Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 80.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          height: 70,
                          width: 70,
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(40, 21, 111, 1),
                                  blurRadius: 5.0,
                                ),
                              ]),
                          child: Image.asset("assets/logobuddy.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Card(
                            color: Color.fromRGBO(45, 72, 156, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Hay Saswat',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Card(
                            color: Color.fromRGBO(45, 72, 156, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'What would you like to do this ?',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage("assets/home-bg.jpg"),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: Platform.isIOS?30.0:10.0),
                    ),
                    Container(
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 40, top: 7.0),
                                width: MediaQuery.of(context).size.width / 1.3,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  child: Padding(
                                    padding: EdgeInsets.all(30.0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Meet People',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(45, 72, 156, 1)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 3.0,
                                      ),
                                    ]),
                                child: Icon(
                                  Icons.people,
                                  color: Color.fromRGBO(45, 72, 156, 1),
                                  size: 40.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Platform.isIOS?20.0:10.0),
                    ),
                    Container(
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 40, top: 7),
                                width: MediaQuery.of(context).size.width / 1.3,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  child: Padding(
                                    padding: EdgeInsets.all(30.0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Find Restaurants',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(45, 72, 156, 1)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 3.0,
                                      ),
                                    ]),
                                child: Icon(
                                  Icons.free_breakfast,
                                  color: Color.fromRGBO(45, 72, 156, 1),
                                  size: 40.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Platform.isIOS?20:10),
                    ),
                    Container(
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 40, top: 7),
                                width: MediaQuery.of(context).size.width / 1.3,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  child: Padding(
                                    padding: EdgeInsets.all(30.0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Connect',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(45, 72, 156, 1)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 3.0,
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.near_me,
                                  color: Color.fromRGBO(45, 72, 156, 1),
                                  size: 40.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
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
