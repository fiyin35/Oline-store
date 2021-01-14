import 'package:flutter/material.dart';

class WakabuyCart extends StatefulWidget {
  @override
  _WakabuyCartState createState() => _WakabuyCartState();
}

class _WakabuyCartState extends State<WakabuyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'My Cart',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
