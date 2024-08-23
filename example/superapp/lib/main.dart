import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';

void main() {
  runApp(
    MaterialApp(
      title: "Demo",
      home: FlutterDemo(storage: UserInputStorage())
    )
  );
}

class UserInputStorage{
  Future <String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future <File> get _localFile async {
    final path = await _localPath;
    return File('$path/input.txt');
  }

  Future <String> readUserInput() async {
    try{
      final file = await _localFile;
      final contents = await file.readAsString();
      return contents;
    }
    catch (error)
    {
      return '';
    }
  }

  Future <File> writeUserInput(String userInput) async {
    final file = await _localFile;
    return file.writeAsString('$userInput');
  }

}

class FlutterDemo extends StatefulWidget
{
  const FlutterDemo({Key? key, required this.storage}) : super(key: key);
  final UserInputStorage storage;

  @override
  State<FlutterDemo> createState() => _FlutterDemoState(); 

}

class _FlutterDemoState extends State <FlutterDemo>
{
  final userInputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    widget.storage.readUserInput().then((value)
    {
      setState(() {
        userInputController.text = value;
      });
    });
  }

  Future <File> _saveUserInput()
  {
    return widget.storage.writeUserInput(userInputController.text);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
      title: Text(userInputController.text.isEmpty ? 'DEMO' : userInputController.text)),
      body: Center(
        child: Padding(
          child: TextField(
            decoration: InputDecoration(labelText: 'Enter Text!'),
          ),
          padding: const EdgeInsets.all(16.0)
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _saveUserInput();
            });
        },
        tooltip: 'Save',
        child: Icon(Icons.save),
        ),
    );
  }
}