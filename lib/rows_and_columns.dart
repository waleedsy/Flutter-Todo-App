import 'package:flutter/material.dart';

void main ()
{
  runApp(MaterialApp(
    home: Scaffold(appBar: AppBar(title: Text("Rows and Columns"),
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    ),
    body: MyWidget(),
    )
  ));
}

class MyWidget extends StatelessWidget 
{
  @override
  Widget build(BuildContext context)
{
/*
Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(width: 100, height:100, color: Colors.red,),
      Container(width: 100, height: 100, color: Colors.green),
      Container(width: 100, height: 100, color: Colors.blue,)
      ],
);*/

  return Center(
    child: Column (
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(width: 100, height:100, color: Colors.red,),
      Container(width: 100, height: 100, color: Colors.green),
      Container(width: 100, height: 100, color: Colors.blue,)
      ],
)
  );
}
}