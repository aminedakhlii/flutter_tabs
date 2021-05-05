import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabtest/page2_1.dart';
import 'package:tabtest/stacks.dart';


class Page1_1 extends StatelessWidget {

  const Page1_1({Key key, this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    print("1_1 building");
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("page 1 tab 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("this is page 1 tab 1"),
            SizedBox(height: 20,),
            FloatingActionButton.extended(
                label: Text('next page'),
                onPressed: () {
                  Stacks.push(index, Page2_1(index: index));
                },
            )
          ],
        ),
      ),
    );
  }
}
