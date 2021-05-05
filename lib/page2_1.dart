import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_bar/stacks.dart';

import 'nav_bar.dart';

class Page2_1 extends StatelessWidget {
  const Page2_1({
    Key key,
    this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    print("2_1 building");
    return Scaffold(
      appBar: AppBar(
        title: Text("page 2 tab 1"),
      ),
      bottomNavigationBar: NavBar(index: index),
      body: GestureDetector(
          onTap: () {
            Stacks.pop(index);
          },
          child: Center(child: Text("this is page 2 tab 1"))),
    );
  }
}
