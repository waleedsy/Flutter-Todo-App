import 'package:flutter/material.dart';

void main ()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(child: UserButton(),
        )
      ),
    )
  );
}

// ignore: use_key_in_widget_constructors
class UserButton extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: () {
        //onTap child widget on gesture detector, what should happen?
        print("The user button was tapped!");
      },
      child: Container(
        height: 60.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.red[600],
        ),
        child: const Center(
          child: Text('CLICK HERE!'),
        ),
      ),
    );
  }
}