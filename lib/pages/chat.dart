import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../utils/bottomnavigtor.dart';
class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color.fromRGBO(45, 72, 156, 1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: flotingbotton(context),
      bottomNavigationBar: buoomnavigationbar(context),
      body: Text('Chat'),
    );
  }
}
