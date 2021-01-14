import 'package:flutter/material.dart';

class WakabuyNotifications extends StatefulWidget {
  @override
  _WakabuyNotificationsState createState() => _WakabuyNotificationsState();
}

class _WakabuyNotificationsState extends State<WakabuyNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Notifications'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Notifications',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
