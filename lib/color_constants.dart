import 'package:flutter/material.dart';
import 'dart:math' show Random;

final colors = [
  Colors.blue,
  Colors.red,
  Colors.grey,
  Colors.green,
  Colors.yellow,
  Colors.cyan,
];

enum AvailableColors {one, two}

extension RandomElement<T> on Iterable<T> {
  T getRandomElement() {
    return elementAt(Random().nextInt(length));
  }
}