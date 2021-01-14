import 'package:flutter/material.dart';

class WakabuyDeliveryAddress extends StatefulWidget {
  @override
  _WakabuyDeliveryAddressState createState() => _WakabuyDeliveryAddressState();
}

class _WakabuyDeliveryAddressState extends State<WakabuyDeliveryAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery Informations'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'My Address',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
