import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './Success.dart';

class CalenderPage extends StatefulWidget {
  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  int _languageIndex = -1;
  bool isSelected = false;

  List<String> timeList = [
    '8 AM',
    '9 AM',
    '10 AM',
    '11 AM',
    '12 AM',
    '1 PM',
    '2 PM',
    '3 PM',
    '4 PM',
    '5 PM',
    '6 PM',
    '7 PM',
    '8 PM'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 72, 156, 1),
        title: Text('Time Table'),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SuccessPage()));
            },
            child: Text('Save', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Text(
              'Free timing :',
              style: TextStyle(
                  color: Color.fromRGBO(45, 72, 156, 1),
                  fontWeight: FontWeight.bold),
            ),
            margin: EdgeInsets.all(10.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: 28,
              ),
              Text('SUN'),
              Text('MON'),
              Text('TUE'),
              Text('WED'),
              Text('THU'),
              Text('FRI'),
              Text('SAT'),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: 14),
                  ...timeList
                      .map((time) => SizedBox(
                            height: 52,
                            child: Text(time),
                          ))
                      .toList(),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width - 58,
                child: GridView.builder(
                  itemCount: 91,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Card(
                        color: isSelected ? Colors.green : Colors.white,
                        elevation: 5.0,
                        child: Container(
                          alignment: Alignment.center,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isSelected = _languageIndex == index;
                        });
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
