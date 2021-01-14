import 'package:flutter/material.dart';

class WakabuyFavorite extends StatefulWidget {
  @override
  _WakabuyFavoriteState createState() => _WakabuyFavoriteState();
}

class _WakabuyFavoriteState extends State<WakabuyFavorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'My favorite',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
