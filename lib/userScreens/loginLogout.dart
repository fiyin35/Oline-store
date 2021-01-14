import 'package:flutter/material.dart';

class WakabuyLogin extends StatefulWidget {
  @override
  _WakabuyLoginState createState() => _WakabuyLoginState();
}

class _WakabuyLoginState extends State<WakabuyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Login Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
