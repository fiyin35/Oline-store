import 'package:flutter/material.dart';

class WakabuyMessages extends StatefulWidget {
  @override
  _WakabuyMessagesState createState() => _WakabuyMessagesState();
}

class _WakabuyMessagesState extends State<WakabuyMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'My Messages',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
