import 'package:flutter/material.dart';
import 'package:tutorial/listview_builder.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      title: 'Example',
      home: MyCustomForm()
    );
  }
}

class MyCustomForm extends StatefulWidget 
{
  const MyCustomForm({super.key});

  @override
  State <MyCustomForm> createState() => _MyCustomFormState();

}

class _MyCustomFormState extends State <MyCustomForm>
{
  final myController = TextEditingController();
  
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    myController.addListener(
        _printLatestValue
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    super.dispose();
  }

void _printLatestValue()
{
  print('Second field updated: ${myController.text}');
}

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("App Bar"),
      ),
      body: 
      Padding(
        padding: EdgeInsets.all(16.0),
        child: 
        Column(
          children: [
            TextField(
              onChanged: (value)
              {
                print('First Text Value: $value');
              },
            ),
            TextField(
              controller: myController
              )
          ],
        ),
      ),
    );
  }

}