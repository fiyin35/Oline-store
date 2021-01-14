import 'package:flutter/material.dart';

class WakabuyProfile extends StatefulWidget {
  @override
  _WakabuyProfileState createState() => _WakabuyProfileState();
}

class _WakabuyProfileState extends State<WakabuyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Settings'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'My Profile',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
