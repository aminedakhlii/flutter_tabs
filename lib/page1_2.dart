import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_bar/nav_bar.dart';
import 'package:tab_bar/page2_2.dart';
import 'package:tab_bar/stacks.dart';

class Page1_2 extends StatelessWidget {
  const Page1_2({
    Key key,
    this.index,
  }) : super(key: key);
  final index;

  @override
  Widget build(BuildContext context) {
    print("1_2 building");
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("page 1 tab 2"),
      ),
      bottomNavigationBar: NavBar(index: index),
      body: GestureDetector(
          onTap: () {
            Stacks.stacks[index].add(Page2_2(index: index));
          },
          child: Center(child: Text("this is page 1 tab 2"))),
    );
  }
}
