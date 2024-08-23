import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
// add items to this list in future
// via some dialog box

    final items = ['item1', 'item2', 'item3'];

    return MaterialApp(
      title: 'example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App Bar Title")),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index)
          {
            // item = items[0]
            final item = items[index];

            return ListTile(
              title: Text(item),
              subtitle: Text('Subtitle'),
              onTap: () 
              {
                print("You just tapped on $item");
              },
            );
          }
          )
        )
        );
  }
}