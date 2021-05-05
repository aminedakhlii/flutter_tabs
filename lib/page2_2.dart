import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_bar/nav_bar.dart';
import 'package:tab_bar/stacks.dart';

class Page2_2 extends StatelessWidget {
  const Page2_2({
    Key key,
    this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    print("2_2 building");
    return Scaffold(
      appBar: AppBar(
        title: Text("page 2 tab 2"),
      ),
      bottomNavigationBar: NavBar(index: index),
      body: GestureDetector(
          onTap: () {
            Stacks.pop(index);
          },
          child: Center(child: Text("this is page 2 tab 2"))),
    );
  }
}
