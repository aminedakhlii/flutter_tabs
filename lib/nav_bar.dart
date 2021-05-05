import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("tab1")),
        BottomNavigationBarItem(icon: Icon(Icons.deck), title: Text("tab2"))
      ],
    );
  }
}
