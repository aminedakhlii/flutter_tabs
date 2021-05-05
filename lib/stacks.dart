import 'dart:collection';

import 'package:flutter/material.dart';

import 'main.dart';

class Stacks {
  static List<Queue> stacks = <Queue>[];
  static MyHomePageState homeState ;

  static init(length,home) {
    homeState = home;
    if (stacks.length == 0)
      for (int i = 0; i < length; i++) {
        stacks.add(Queue<Widget>());
      }
  }

  static pop(stackNumber) {
    if (stacks[stackNumber].isEmpty) {
      throw StateError("Cannot pop() on empty stack.");
    }
    stacks[stackNumber].removeLast();
    homeState.refresh();
  }

  static push(stackNumber, route) {
    print('adding to ' + stackNumber.toString());
    stacks[stackNumber].addLast(route);
    homeState.refresh();
  }
}
