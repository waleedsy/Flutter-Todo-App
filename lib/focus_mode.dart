import 'package:flutter/material.dart';

void main() => runApp(
  MyApp()
);

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget
{
  const MyCustomForm ({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState ();

}

class _MyCustomFormState extends State<MyCustomForm>
{
  late FocusNode myFocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myFocusNode.dispose();
    super.dispose();
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Form'),
      backgroundColor: Colors.blue[100],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'INPUT ONE'),
              autofocus: true,
              ),
            TextField(
              decoration: InputDecoration(hintText: 'Focus Node Connected!'),
              focusNode: myFocusNode,
              ),
            TextField(
              decoration: InputDecoration(hintText: 'INPUT ONE')),
          ],
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()
          {
            myFocusNode.requestFocus();
          },
          tooltip: 'Click me for focus on box two!',
          child: const Icon(Icons.star),
          ),
    );
  }

}