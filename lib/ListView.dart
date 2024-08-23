import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
          backgroundColor: Colors.amber,
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('Person One'),
              subtitle: const Text('email@one.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => print('ListTile 1 was tapped!'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('Person Two'),
              subtitle: const Text('email@two.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => print('ListTile 2 was tapped!'),
            ),
              ListTile(
              leading: Icon(Icons.person),
              title: const Text('Person Three'),
              subtitle: const Text('email@three.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => print('ListTile 3 was tapped!'),
            ),
          ],
        ),
        ),
    );
  }
}