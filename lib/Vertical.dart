import 'package:flutter/material.dart';

class VerticalSelector extends StatefulWidget {
  @override
  _VerticalSelectorState createState() => _VerticalSelectorState();
}

class _VerticalSelectorState extends State<VerticalSelector> {
  int selectInd = 0;
  final List<String> categories = [
    'New',
    'Featured',
    'Upcoming',
    'Trending',
    'Latest',
    'Cheap',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: new EdgeInsets.fromLTRB(0, 40, 350, 10),
          height: 330.0,
          width: 50,
          color: Colors.white,
          child: RotatedBox(
            quarterTurns: -1,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectInd = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 5.0,
                    ),
                    child: Text(
                      categories[index],
                      style: TextStyle(
                          color:
                              index == selectInd ? Colors.black : Colors.grey,
                          fontSize: 20),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
