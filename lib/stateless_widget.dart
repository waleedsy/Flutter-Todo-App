import 'package:flutter/material.dart';

void main ()
{
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World New!"),
        backgroundColor: Colors.blue,
      ),
body: const Center(
  child: Text("Some text in Center"),
  )
    );
  }
}
