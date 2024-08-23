import "package:flutter/material.dart";

void main() => runApp(
  MyApp()
);

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Styling Demo';

    return MaterialApp(
      title: appTitle, 
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Roboto',
//  elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.amber[500],// Sets the button color to red
//           ),
//       )
      ),
      home: Scaffold(
        appBar: AppBar(title: Text(appTitle),
        backgroundColor: Colors.amber[500],
        centerTitle: true,
        ),
        body: 
        MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget 
{
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          const SizedBox(height: 16),
         const TextField(
            style: TextStyle(color: Colors.blue, fontSize: 25),
            decoration: InputDecoration(
            prefixIcon: Icon(Icons.person, size: 30,),
            hintText: "TEXT FIELD"),), 
          const SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
               ),
              labelText: "TEXT FORM FIELD"),
          ),
         const SizedBox(height: 16),
          ElevatedButton(onPressed: (){

          } ,
          child: Text("Submit"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal, 
            foregroundColor: Colors.amber,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) 
          ),
           ),
        ],
        ),
    );
  }
}