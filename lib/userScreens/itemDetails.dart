import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/userScreens/cart.dart';

class itemDetails extends StatefulWidget {
  String itemsName;
  String itemsImage;
  double itemsPrice;
  double itemsRating;

  itemDetails(
      {this.itemsName, this.itemsImage, this.itemsPrice, this.itemsRating});

  @override
  _itemDetailsState createState() => _itemDetailsState();
}

class _itemDetailsState extends State<itemDetails> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            height: 300.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.itemsImage),
                    fit: BoxFit.fitHeight),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(120.0),
                    bottomRight: Radius.circular(120.0))),
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
                color: Colors.grey.withAlpha(50),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(120.0),
                    bottomRight: Radius.circular(120.0))),
          ),
          // SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       SizedBox(height: 50.0,),
          //       Card(

          //       ),
          //       Card(),
          //       Card(),
          //       Card(),
          //     ],
          //   ),
          // )
        ],
      ),
      floatingActionButton: Stack(
        alignment: Alignment.topLeft,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (BuildContext context) {
                return WakabuyCart();
              }));
            },
            child: Icon(Icons.shopping_cart),
          ),
          CircleAvatar(
              radius: 9.0,
              backgroundColor: Colors.red,
              child: Text(
                '0',
                style: TextStyle(color: Colors.white, fontSize: 11.0),
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        elevation: 0.0,
        shape: CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (screenSize.width - 20) / 2,
                child: Text(
                  'ADD TO FAVORITES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                width: (screenSize.width - 20) / 2,
                child: Text(
                  'ORDER NOW',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
