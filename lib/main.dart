import 'package:flutter/material.dart';
import 'package:nogozo/mobileselector.dart';
import 'Vertical.dart';
import 'widget.dart';

void main() {
  runApp(MaterialApp(
    home: Design(),
  ));
}

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: Row(
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 5,
              decoration: BoxDecoration(color: Colors.white),
              child: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 5,
              decoration: BoxDecoration(color: Colors.white),
              child: Icon(Icons.favorite, color: Colors.grey),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 5,
              decoration: BoxDecoration(color: Colors.white),
              child: Icon(Icons.home, color: Colors.grey),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 5,
              decoration: BoxDecoration(color: Colors.white),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 5,
              decoration: BoxDecoration(color: Colors.white),
              child: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: new Text(
            "Discover",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Stack(
          children: [
            CategorySelector(),
            VerticalSelector(),
            MobileSlider(),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 360, 10, 0),
              child: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                title: new Text(
                  "More",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.forward,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
