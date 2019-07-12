import 'package:flutter/material.dart';

import './login.dart';

class SuccessPage extends StatefulWidget {
  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 179, 238, 1),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 5),
                child: Image(
                  image: AssetImage('assets/tickanimation.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0),
                child: Wrap(
                  children: <Widget>[
                    Text(
                      'Registration Completed successfully',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50.0),
                child: RaisedButton(
                  padding: EdgeInsets.only(left: 40.0, right: 40.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => LoginPage()));
                  },
                  child: Text('LOGIN'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
