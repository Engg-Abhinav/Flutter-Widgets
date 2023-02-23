import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";

  // Callback Function
  void changeText(String text){
    // re-rendering
    this.setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context){
     return Scaffold(appBar: AppBar(title: Text('Hello World!')),
    body: Column(children: <Widget>[TextInputWidget(this.changeText),
    Text(this.text)]));
    // To modify text we are going to use a call back
  }
}

// This is for taking any constructor arguments and doing other things as wellS
class TextInputWidget extends StatefulWidget {
  final Function(String) callback;

  // Making Constructer
  TextInputWidget(this.callback);

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

// This is for rendering and handling all state
class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    controller.dispose();
    // When this widget is over this will clean it up
  }

  void click(){
    widget.callback(controller.text);
    controller.clear;
  }
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.controller,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.message), 
        labelText: "Type a message: ", 
        suffixIcon: IconButton(icon: Icon(Icons.send), 
        splashColor: Colors.orange,
        tooltip: "Post message",
        // onPressed: () => {},
        onPressed: this.click, 
        )));
  }
}
