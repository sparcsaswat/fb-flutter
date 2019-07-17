import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../models/user.dart';
import './calender.dart';

class IdInfoPage extends StatefulWidget {
  @override
  _IdInfoPageState createState() => _IdInfoPageState();
}

class _IdInfoPageState extends State<IdInfoPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  File _image;

  Future takephoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Future choosephoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  ListTile _createTile(
      BuildContext context, String name, IconData icon, Function action) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
      onTap: () {
        Navigator.pop(context);
        action();
      },
    );
  }

  Widget showbottompopup(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _createTile(context, 'Take Photo', Icons.camera_alt, takephoto),
              _createTile(context, 'Gallery', Icons.photo_library, choosephoto),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: Color.fromRGBO(45, 72, 156, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 72, 156, 1),
        title: Center(
          child: Text('UBC Info'),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 8,
                left: 20.0,
                right: 20.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      radius: 50.0,
                      child: IconButton(
                        icon: Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                          //size: 50,
                        ),
                        onPressed: () {
                          showbottompopup(_scaffoldkey.currentState.context);
                        },
                      ),
                    ),
                  ),
                  Text('Add Image',style: TextStyle(color: Colors.white),),
                  TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: "Student Id",
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: "Phone No",
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Color.fromRGBO(127, 168, 235, 1),
                    child: Text('Next'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => CalenderPage(),
                          ));
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
