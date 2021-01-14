import 'package:flutter/material.dart';

class WakabuyAboutUs extends StatefulWidget {
  @override
  _WakabuyAboutUsState createState() => _WakabuyAboutUsState();
}

class _WakabuyAboutUsState extends State<WakabuyAboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'About Us',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
