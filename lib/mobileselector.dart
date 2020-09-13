import 'package:flutter/material.dart';

class MobileSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 320,
      margin: EdgeInsets.fromLTRB(30, 50, 10, 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(25, 20, 10, 10),
            color: Colors.white,
            height: 300,
            width: 180,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.teal,
              child: Wrap(
                children: [
                  Image.asset('images/iphone.png'),
                  ListTile(
                    title: Text("Iphone 11"),
                    subtitle: Text("cjvifgj"),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 20, 10, 10),
            color: Colors.white,
            height: 300,
            width: 180,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.redAccent,
              child: Wrap(
                children: [
                  Image.asset('images/iphone.png'),
                  ListTile(
                    title: Text("Iphone 11"),
                    subtitle: Text("cjvifgj"),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 20, 10, 10),
            color: Colors.white,
            height: 300,
            width: 180,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.blue,
              child: Wrap(
                children: [
                  Image.asset('images/iphone.png'),
                  ListTile(
                    title: Text("Iphone 11"),
                    subtitle: Text("cjvifgj"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
