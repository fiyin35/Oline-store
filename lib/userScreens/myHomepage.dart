import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/tools/store.dart';
import 'package:flutter_app/userScreens/cart.dart';
import 'package:flutter_app/userScreens/itemDetails.dart';
import 'package:flutter_app/userScreens/notifications.dart';
import 'favorite.dart';
import 'messages.dart';
import 'cart.dart';
import 'notifications.dart';
import 'history.dart';
import 'profile.dart';
import 'delivery.dart';
import 'aboutUs.dart';
import 'loginLogout.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text('Wakabuy'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return WakabuyFavorite();
                }));
              }),
          Stack(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        CupertinoPageRoute(builder: (BuildContext context) {
                      return WakabuyMessages();
                    }));
                  }),
              CircleAvatar(
                  radius: 9.0,
                  backgroundColor: Colors.red,
                  child: Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 11.0),
                  ))
            ],
          )
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Flexible(
              child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: storeItems.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => itemDetails(
                            itemsImage: storeItems[index].itemsImage,
                            itemsName: storeItems[index].itemsName,
                            itemsPrice: storeItems[index].itemsPrice,
                            itemsRating: storeItems[index].itemsRating,
                          )));
                },
                child: Stack(
                  alignment: FractionalOffset.bottomCenter,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: NetworkImage(
                                    storeItems[index].itemsImage)))),
                    Container(
                      height: 35.0,
                      color: Colors.black.withAlpha(100),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              storeItems[index].itemsName,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.0,
                                  color: Colors.white),
                            ),
                            Text(
                              'N ${storeItems[index].itemsPrice}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.red[500]),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ))
        ],
      )),
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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Fiyinfoluwa'),
              accountEmail: Text('Fiyinfoluwa@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 20.0,
              )),
              title: Text('Order Notifications'),
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return WakabuyNotifications();
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(
                Icons.history,
                color: Colors.white,
                size: 20.0,
              )),
              title: Text('Order History'),
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return WakabuyOrderHistory();
                }));
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(
                Icons.person,
                color: Colors.white,
                size: 20.0,
              )),
              title: Text('Profile Settings'),
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return WakabuyProfile();
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(
                Icons.home,
                color: Colors.white,
                size: 20.0,
              )),
              title: Text('Delivery Address'),
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return WakabuyDeliveryAddress();
                }));
              },
            ),
            Divider(),
            ListTile(
              trailing: CircleAvatar(
                  child: Icon(
                Icons.help,
                color: Colors.white,
                size: 20.0,
              )),
              title: Text('About Us'),
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return WakabuyAboutUs();
                }));
              },
            ),
            ListTile(
              trailing: CircleAvatar(
                  child: Icon(
                Icons.login,
                color: Colors.white,
                size: 20.0,
              )),
              title: Text('Login'),
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return WakabuyLogin();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
