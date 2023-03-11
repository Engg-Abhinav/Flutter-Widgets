import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: Column(children: [
        DefaultTextStyle(
          style: TextStyle(fontSize: 50, color: Colors.blue), 
          child: Column(children: [
          Text('First'),
          Text('Second',
          style: TextStyle(fontSize: 30, color: Colors.yellow),),
          Text('Third', 
          style: TextStyle(fontSize: 20, color: Colors.green),),
          Text('Fourth'),
        ],))
      ])
      )
    )
  );
}
