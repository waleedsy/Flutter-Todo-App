import "package:flutter/material.dart";

void main () => runApp(const MaterialApp(home: MyHomePage()));

class MyHomePage extends StatefulWidget
{
  const MyHomePage({super.key});

  @override
  State <MyHomePage> createState () => _MyHomePageState();
}

class _MyHomePageState extends State <MyHomePage> 
{
  //INITIAL VARIABLE (Not State)
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      // backgroundColor: Colors.blueGrey[300],
      body: GestureDetector(onTap: () 
      {
        if(isButtonPressed)
        {
          setState(() {
            isButtonPressed = false;
          });
        }
        else {
          setState(() {
            isButtonPressed = true;
          });
        }
      },
      child: Container(color: getColor(),),
      )
    );
  }

  Color getColor()
  {
    if (isButtonPressed)
    {
      return Colors.red;
    }
    else 
    {
      return Colors.blueGrey;
    }
  }
}