import 'package:flutter/material.dart';

void main() {
  runApp(
    Text('Hello World',
    textDirection: TextDirection.ltr,
    // ltr = left to right
    // rtl = right to left
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.orange),)
  );
}
