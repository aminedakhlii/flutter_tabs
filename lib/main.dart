import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabtest/page1_1.dart';
import 'package:tabtest/page1_2.dart';
import 'package:tabtest/stacks.dart';

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
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Stacks.init(2,this);
    Stacks.stacks[0].add(Page1_1(index: 0));
    Stacks.stacks[1].add(Page1_2(index: 1));
  }

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stacks.stacks[currentIndex].last,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("tab1")),
          BottomNavigationBarItem(icon: Icon(Icons.deck), title: Text("tab2"))
        ],
      ),
    );
  }
}
