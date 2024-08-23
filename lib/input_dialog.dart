import 'package:flutter/material.dart';
import 'package:tutorial/stateful_widget.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp
    (title: 'Dialog Demo', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget
{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State <MyHomePage>
{
  // INITIAL VAR --.> String
  String _inputText = "";

  // void show input dialog
  // Alert Dialog
  void _showInputDialog () 
  {
    showDialog(context: context, 
    builder: (BuildContext context)
    {
      //manage the text
      TextEditingController controller = TextEditingController();

      return AlertDialog(
        title: const Text("Enter some text!"),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(hintText: "Enter some text!"),
        ),
        actions: <Widget>[
          TextButton(
            child: Text("Cancel"),
            onPressed: (){
              Navigator.of(context).pop();
            },
            ),
            TextButton(
              onPressed: ()
              {
                setState(() {
                   _inputText = controller.text;
                });
                Navigator.of(context).pop();
              },
              child: Text('save')     
            )
        ],
      );  
    }
    );
  }

  // return scaffold
  // appBar - body (update state text) -- icon
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('My New App'),
      ), 
      body: Center(
        child: Text(
          // result = textCondition ? trueValue : falseValue
          // _inputText empty or not? == '' .isEmpty
          // if .isEmpty True then "Tap the icon to enter text"
          // else you entered $_inputText
           _inputText.isEmpty 
           ? 'Tap icon to enter text' 
           : "$_inputText",
        ),    
      ),
      floatingActionButton: FloatingActionButton (
        onPressed: _showInputDialog,
        child: Icon(Icons.edit),
      ),
    );
  }
}