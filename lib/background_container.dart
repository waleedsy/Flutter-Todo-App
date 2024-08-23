import "package:flutter/material.dart";

void main () => runApp(MaterialApp(home: MyWidget()));

// void main()
// {
//   runApp(MaterialApp(
// home: Scaffold(
//   body: MyWidget(),
// ),
//   ));
// }

class MyWidget extends StatelessWidget
{
  @override
  // Widget build(BuildContext context)
  // {
  //   return Container(color: Colors.orange);
  // }
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("My App"), backgroundColor: Colors.black12,),
    body: Container(color: Colors.amber[400],),
  );
}