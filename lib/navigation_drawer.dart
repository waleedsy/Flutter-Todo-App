import 'package:flutter/material.dart';
import 'package:tutorial/stateful_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'app',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget
{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
       AppBar(title: Text("Home Screen")),
       body: const Center(
        child: Text("My HomePage"),
       ),
       drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
            height: 60.0,
            child: const DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(color: Colors.blue),
              )),
            ListTile(
              title: const Text('Item One'),
              onTap: () {
                // Navigator.pop(context)
                  // );
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ItemOnePage()));
              },
              ),
            ListTile(
              title: const Text('Item Two'),
               onTap: () {
                // Navigator.pop(context);
                   MaterialPageRoute(builder: (context) => ItemTwoPage());
            },
            ),
            ListTile(
              title: const Text('Item Three'),
               onTap: () {
                // Navigator.pop(context);
                 Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ItemThreePage()));
              },
              ),
      ],
        ),
        ),
    );
  }
}

class ItemOnePage extends StatelessWidget
{
  const ItemOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item One')),
        body: const Center(
          child: Text('ITEM ONE SCREEN'),
        )
      );
  }
}

class ItemTwoPage extends StatelessWidget
{
  const ItemTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item One')),
        body: const Center(
          child: Text('ITEM TWO SCREEN'),
        )
      );
  }
}

class ItemThreePage extends StatelessWidget
{
  const ItemThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item One')),
        body: const Center(
          child: Text('ITEM THREE SCREEN'),
        )
      );
  }
}
