import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_bar/page1_1.dart';
import 'package:tab_bar/page1_2.dart';
import 'package:tab_bar/stacks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Stacks.init(2);
    Stacks.stacks[0].add(Page1_1(index: 0));
    Stacks.stacks[1].add(Page1_2(index: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Stacks.stacks[currentIndex].last;
  }
}
