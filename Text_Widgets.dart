import 'package:flutter/material.dart';

void main() {
  runApp(
    Text('Hello World',
    textDirection: TextDirection.ltr,
    // ltr = left to right
    // rtl = right to left
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.orange),
    overflow: TextOverflow.ellipsis,
    textScaleFactor: 5,
    softWrap: false,
    // maxLines: 4,

    //Text('#'
    // SemanticsLabel: 'Abhinav Agrawal',
    // # will be in front and in backend it will be Abhinav Agrawal
    )
  );
}
