import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget
{
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();

}

class _MyCustomFormState extends State <MyCustomForm>
{
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Input"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children:
          [
            TextField(
              controller: firstController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: secondController,
            decoration: InputDecoration(labelText: "Email"),
            )
        ],),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showDialog(
              context: context,
               builder: (context){
                return AlertDialog(
                  content: Column(
                    children: [
                      Text("First Value: ${firstController.text}"),
                      const SizedBox(height: 10),
                      Text("Second Value: ${secondController.text}")
                    ],
                  ),
                );       
                }
               );
        },
        child: const Icon(Icons.text_fields),
        tooltip: "Show me the values!",
        ),
    );
  }

}

