import "package:flutter/material.dart";
import "package:tutorial/stateful_widget.dart";
import "package:tutorial/stateless_widget.dart";

void main () => runApp(MyApp());

// Stateless App
class MyApp extends StatelessWidget
{
  @override
  Widget build (BuildContext context)
  {
    return MaterialApp(home: MyHomePage());
  }
}

// Stateful MyHomeApp
class MyHomePage extends StatefulWidget
{
  @override
  // State <MyHomePage> createState() => _MyHomePageState();
  _MyHomePageState createState () => _MyHomePageState();

}

class _MyHomePageState extends State <MyHomePage>
{
  // INITIAL VAR
  String _inputText = '';

  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar At Top!"),
      ),
      body: Center(
      child: 
      TextField(
        decoration: InputDecoration(
          hintText: "Enter some text here!"),
          onChanged: (value){ //onPressed --> anytime you update the text
          setState((){
            _inputText = value;
          });
},
      ),
      ),
      bottomSheet: Container(
        alignment: Alignment.center,
        height: 50,
        child: Text("You typed: $_inputText"),
        ),
    ); 
  }
  // Widget -> setState() --> update VAR --> Widget Stateful Element --> build
}
// State --
// Scaffold -. Appbar top, Center TextField, bottomsheet