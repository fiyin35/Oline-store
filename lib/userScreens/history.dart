import 'package:flutter/material.dart';

class WakabuyOrderHistory extends StatefulWidget {
  @override
  _WakabuyOrderHistoryState createState() => _WakabuyOrderHistoryState();
}

class _WakabuyOrderHistoryState extends State<WakabuyOrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Order History',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
