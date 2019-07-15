import 'package:flutter/material.dart';
import 'dart:io';
import '../utils/bottomnavigtor.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  Widget calenderview() {
     return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: ClipPath(
              clipper: ClippingClass(),
              child: Container(
                padding: EdgeInsets.only(left: 20.0),
                decoration: new BoxDecoration(
                  color: Color.fromRGBO(45, 72, 156, 1),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Scheduled Meets',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              color: Color.fromRGBO(45, 72, 156, 1),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(45, 72, 156, 1)),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/img4.jpg'),
                                    radius: 20,
                                  ),
                                  title: Text(
                                    'Haldirams',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Address',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  241, 135, 38, 1)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: Text(
                                    '7 PM to 8 PM',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Free Timing',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          color: Colors.white,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('assets/img4.jpg'),
                                radius: 20,
                              ),
                              title: Text(
                                'Haldirams',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              trailing: Text(
                                '7 PM to 8 PM',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget notificationview() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: ClipPath(
              clipper: ClippingClass(),
              child: Container(
                padding: EdgeInsets.only(left: 20.0),
                decoration: new BoxDecoration(
                  color: Color.fromRGBO(45, 72, 156, 1),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Scheduled Meets',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              color: Color.fromRGBO(45, 72, 156, 1),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(45, 72, 156, 1)),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/img4.jpg'),
                                    radius: 20,
                                  ),
                                  title: Text(
                                    'Haldirams',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          'Address',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  241, 135, 38, 1)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: Text(
                                    '7 PM to 8 PM',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Message Request',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          color: Colors.white,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('assets/img4.jpg'),
                                radius: 20,
                              ),
                              title: Text(
                                'Haldirams',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              trailing: Text(
                                '7 PM to 8 PM',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(45, 72, 156, 1),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: flotingbotton(context),
        bottomNavigationBar: buoomnavigationbar(context),
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            unselectedLabelColor: Color.fromRGBO(45, 72, 156, 1),
            indicatorColor: Colors.white,
            indicator: BoxDecoration(
              color: Color.fromRGBO(45, 72, 156, 1),
            ),
            tabs: <Widget>[
              Tab(
                text: 'Calender',
              ),
              Tab(
                text: 'Notification',
              )
            ],
          ),
          title: Center(
            child: Text(
              'Notification',
              style: TextStyle(color: Color.fromRGBO(45, 72, 156, 1)),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[calenderview(), notificationview()],
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
