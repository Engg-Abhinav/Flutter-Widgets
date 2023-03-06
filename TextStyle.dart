import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: Text('\nHello World!, This is Abhinav Agrawal',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 40,
          // fontWeight: FontWeight.w600,
          // letterSpacing: 4.0,
          // wordSpacing: 4.0,
          // color: Colors.blue,

          // foreground: Paint()
          //   ..color = Colors.grey
          //   ..strokeWidth = 2.4
          //   ..style = PaintingStyle.stroke,

          // background: Paint()
          //   ..color = Colors.green
          //   ..strokeWidth = 2.4
          //   ..style = PaintingStyle.stroke,

          // backgroundColor: Colors.lightBlue,
          // fontStyle: FontStyle.italic,

          // decoration: TextDecoration.combine([TextDecoration.underline, TextDecoration.overline]),
          // decorationColor: Colors.blue,
          // decorationStyle: TextDecorationStyle.dashed,

          shadows: [
            Shadow(color: Colors.grey, blurRadius: 4.0, offset: Offset(4, 1))
          ]
        ),
        ),
      )
    )
  );
}
