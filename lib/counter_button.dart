import "package:flutter/material.dart";

void main() => runApp(MaterialApp(home: Scaffold(body: Center(child: Counter(),),),));
// {
//   runApp(MaterialApp(
//     home: Scaffold(body: Center(child: Counter()) 
//   )));
// }

class Counter extends StatefulWidget
{
  @override
  // State <Counter> createState() extends State <Counter>
  // {}
  State <Counter> createState() => _CounterState();
}

class _CounterState extends State <Counter>
{
  // ROW
  // Push Me Button      Counter: 4

  // Initial Value _counter var
  int _counter = 0;

  // Increment Function _counter++ setState()
  void _increment()
  {
    setState(() {
      // Update counter
      _counter++;
    });
  }

  //widget build() Button onPressed: _increment
  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      TextButton(
        onPressed: _increment,
        child: Text("Push Me!"),
      ),
      Text('You pressed the button $_counter times!')
      ],
      );
  }
}