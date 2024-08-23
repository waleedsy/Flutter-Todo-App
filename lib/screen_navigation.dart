import "package:flutter/material.dart";

void main ()
{
  runApp(
    const MaterialApp(title: 'App', home: FirstScreen(),
    )
  );
}

class FirstScreen extends StatelessWidget
{
  const FirstScreen({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FIRST SCREEN"), backgroundColor: Colors.amber[400],),
      backgroundColor: Colors.deepOrange,
      body: Center (
        child: 
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const SecondScreen())
            );
          },
          child: const Text("GO TO SCREEN TWO"),
        )
        ),
        );
  } 
}

class SecondScreen extends StatelessWidget 
{
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("SCREEN TWO")),
    body: Center(child: ElevatedButton(child: const Text("GO TO SCREEN ONE"),
    onPressed: ()
    {
      Navigator.pop(context);
    }
    ),
    )
    );
  }
}