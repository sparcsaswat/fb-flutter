import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CalenderPage extends StatefulWidget {
  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
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
              height: MediaQuery.of(context).size.height / 4,
              child: Container(
                decoration: new BoxDecoration(
                  color: Color.fromRGBO(45, 72, 156, 1),
                ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 60.0),
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
                                onPressed: () {},
                                child: Text(
                                  'Save',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(),
                              Container(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Select Date',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
