import 'dart:collection';

import 'package:flutter/material.dart';

class Stacks {
  static List<Queue> stacks = <Queue>[];

  static init(length) {
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
  }

  static push(stackNumber, route) {
    stacks[stackNumber].addLast(route);
  }
}
