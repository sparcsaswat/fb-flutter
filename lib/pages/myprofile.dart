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
      backgroundColor: Color.fromRGBO(239, 239, 239, 1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: flotingbotton(context),
      bottomNavigationBar: buoomnavigationbar(context),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              color: Color.fromRGBO(45, 72, 156, 1),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 5.2,
                  left: 10.0,
                  right: 10.0),
              height: MediaQuery.of(context).size.height / 5.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Saswat Saubhagya Rout',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Icon(Icons.location_on),
                              ),
                              Text('India', style: TextStyle())
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30.0),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '389',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.restaurant_menu,
                                          size: 18.0,
                                        ),
                                        Text('Food Print')
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text('79',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.restaurant_menu,
                                          size: 18.0,
                                        ),
                                        Text('Cuisine')
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text('9',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.home,
                                          size: 18.0,
                                        ),
                                        Text('Restorant')
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '389',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.person,
                                          size: 18.0,
                                        ),
                                        Text('Buddies')
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.4,
                  left: 10.0,
                  right: 10.0),
              height: 40,
              decoration: BoxDecoration(
                color: Color.fromRGBO(45, 72, 156, 1),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: '  Write something About Yourself ',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
