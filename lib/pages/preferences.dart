import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter_country_picker/flutter_country_picker.dart';

import './idinfo.dart';
import '../models/user.dart';

class PreferencePage extends StatefulWidget {
  final User userdata;
  PreferencePage({this.userdata});
  @override
  _PreferencePageState createState() => _PreferencePageState();
}

class _PreferencePageState extends State<PreferencePage> {
  //Country _selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 72, 156, 1),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              child: ClipPath(
                clipper: ClippingClass(),
                child: Container(
                  decoration: new BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                                top: Platform.isIOS ? 30.0 : 5.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    SizedBox(),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        IdInfoPage()));
                                      },
                                      child: Text(
                                        'Next',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(45, 72, 156, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        'Food Preference: ',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(45, 72, 156, 1),
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                    SizedBox(),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0),
                            height: Platform.isIOS ? 150.0 : 110.0,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.red),
                                  width: 150.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.blue),
                                  width: 160.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.green),
                                  width: 160.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.yellow),
                                  width: 160.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.orange),
                                  width: 160.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          hintText: "Add your interest here ",
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                    TextFormField(
                      maxLines: 2,
                      keyboardType: TextInputType.multiline,
                      cursorColor: Colors.black,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          hintText: "Where are you from ?",
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                    // Center(
                    //   child: CountryPicker(
                    //     showFlag: true,
                    //     dense: false,
                    //     showDialingCode: false,
                    //     onChanged: (Country country) {
                    //       setState(() {
                    //         _selected = country;
                    //       });
                    //     },
                    //     selectedCountry: _selected,
                    //   ),
                    // ),
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
