import 'package:flutter/material.dart';

void main() => runApp(
  MyApp()
);

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = "App Demo";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget
{
  const MyCustomForm({Key? key}): super(key: key);

@override
_MyCustomFormState createState() => _MyCustomFormState();

}

class _MyCustomFormState extends State <MyCustomForm>
{
  final _formkey = GlobalKey<FormState>();
  final _textController = TextEditingController();


@override
  void dispose() {
    // TODO: implement dispose
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            controller: _textController,
            validator: (value)
            {
              if (value == null || value.isEmpty)
              {
                return 'UH UH!!! Please enter some text!';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0
            ),
            child: ElevatedButton(
              onPressed: ()
              {
                if(_formkey.currentState!.validate())
                {
                  print('${_textController.text}');
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Text was: ${_textController.text}')));
                }
              },
              child: const Text('Submit')
              ),
            )
        ],
      )
      );
  }

}