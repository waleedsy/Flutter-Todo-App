
import 'package:flutter/material.dart';

const userName = "Waleed";

void main ()
{
  //runApp does WIDGET --> SCREEN
  // Widget? Center
  // center --> child:widget (centers it on screen)
  // Text Widget -> textDirection (LTR - (Left To Right))
  // runApp(
  //   const Center(
  //     child: Text('Hello $userName, My first flutter App!',
  //     textDirection: TextDirection.ltr,
  //     style: const TextStyle(color: Colors.deepOrange, fontSize: 50),
  //     ),
  //   )
  // );
  runApp(MaterialApp(
    theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.blueGrey),
    home: Scaffold(
      appBar: AppBar(title: const Text("Appbar Title"),
    ),
      body: const Center(child: Text("Some Text!"),
    )
    )
  ));
}