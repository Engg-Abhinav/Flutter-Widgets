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

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
     return Scaffold(appBar: AppBar(title: Text('Hello World!')),
    body: TextInputWidget());
  }
}

// This is for taking any constructor arguments and doing other things as wellS
class TextInputWidget extends StatefulWidget {
  const TextInputWidget({super.key});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

// This is for rendering
class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  String text = '';
  // This will store the text which want to display inside text field

  @override
  void dispose(){
    super.dispose();
    controller.dispose();
    // When this widget is over this will clean it up
  }

  void changeText(text){
    if (text == "Hello World!"){
      // To clear text field
      controller.clear();
      text = "";
    }
    // To refresh flutter
    setState(() {
      this.text = text;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>
      [TextField(
      controller: this.controller,
      // This will allow us to access the TextField and to use controller to modify contents
      decoration: InputDecoration(prefixIcon: Icon(Icons.message), labelText: "Type a message: "),
      onChanged: (text) => this.changeText(text),
      // Adding a method for when we change this text field we want to call a function
      ), Text(this.text)
      // Since we are not redrawing the flutter this will not work
      ]);
  }
}
