import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './Success.dart';

class CalenderPage extends StatefulWidget {
  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  //List<String> daylist = ['SUN', 'MON', 'THU', 'WED', 'THU', 'FRI', 'SAT'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 9,
              child: Container(
                decoration: new BoxDecoration(
                  color: Color.fromRGBO(45, 72, 156, 1),
                ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(top: Platform.isIOS ? 60.0 : 15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(),
                            Container(
                              padding: EdgeInsets.only(left: 70.0),
                              child: Text(
                                'Time Table',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                            Container(
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              SuccessPage()));
                                },
                                child: Text(
                                  'Save',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(top: 20),
                        //   child: Row(
                        //     children: <Widget>[
                        //       Container(),
                        //       Container(
                        //         padding: EdgeInsets.only(left: 10.0),
                        //         child: Text(
                        //           'Select Date',
                        //           style: TextStyle(color: Colors.white),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(top: 10.0),
                        // ),
                        // Container(
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: <Widget>[
                        //       Container(
                        //         height: MediaQuery.of(context).size.height / 20,
                        //         width: MediaQuery.of(context).size.width / 2.2,
                        //         padding: EdgeInsets.only(left: 10.0),
                        //         child: TextFormField(
                        //           cursorColor: Colors.black,
                        //           style: TextStyle(color: Colors.black),
                        //           decoration: InputDecoration(
                        //               suffixIcon: Icon(Icons.calendar_today),
                        //               fillColor: Colors.white,
                        //               filled: true,
                        //               hintText: "From",
                        //               hintStyle:
                        //                   TextStyle(color: Colors.black)),
                        //         ),
                        //       ),
                        //       Container(
                        //         height: MediaQuery.of(context).size.height / 20,
                        //         width: MediaQuery.of(context).size.width / 2.2,
                        //         padding: EdgeInsets.only(right: 10.0),
                        //         child: TextFormField(
                        //           cursorColor: Colors.black,
                        //           style: TextStyle(color: Colors.black),
                        //           decoration: InputDecoration(
                        //               suffixIcon: Icon(Icons.calendar_today),
                        //               fillColor: Colors.white,
                        //               filled: true,
                        //               hintText: "To",
                        //               hintStyle:
                        //                   TextStyle(color: Colors.black)),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                'Free timing :',
                style: TextStyle(
                    color: Color.fromRGBO(45, 72, 156, 1),
                    fontWeight: FontWeight.bold),
              ),
              margin: EdgeInsets.all(10.0),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('SUN'),
                  Text('MON'),
                  Text('TUE'),
                  Text('WED'),
                  Text('THU'),
                  Text('FRI'),
                  Text('SAT')
                ],
              ),
            ),
            // Flexible(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.end,
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: <Widget>[
            //       Text('9 AM'),
            //       Text('10 AM'),
            //       Text('11 AM'),
            //       Text('12 AM'),
            //       Text('1 PM'),
            //       Text('2 PM'),
            //       Text('3 PM'),
            //       Text('4 PM'),
            //       Text('5 PM'),
            //       Text('6 PM'),
            //       Text('7 PM'),
            //       Text('8 PM'),
            //       Text('9 PM'),
            //     ],
            //   ),
            // ),
            Expanded(
              child: GridView.builder(
                  itemCount: 91,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7),
                  itemBuilder: (BuildContext context, int index) {
                    return new GestureDetector(
                      child: new Card(
                        elevation: 5.0,
                        child: new Container(
                          alignment: Alignment.center,
                          //child: new Text('Item $index'),
                        ),
                      ),
                      onTap: () {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          child: new CupertinoAlertDialog(
                            title: new Column(
                              children: <Widget>[
                                new Text("GridView"),
                                new Icon(
                                  Icons.favorite,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                            content: new Text("Selected Item $index"),
                            actions: <Widget>[
                              new FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: new Text("OK"))
                            ],
                          ),
                        );
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
