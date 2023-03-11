import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Sample App'),
          ),
          body: Center(
            child: Text.rich(TextSpan(
                text: 'Hello',
                style: TextStyle(fontSize: 30),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'World',
                      style: TextStyle(fontSize: 50, color: Colors.blue)),
                  TextSpan(text: '!', style: TextStyle(fontSize: 60))
                ])),
          ))));
}
