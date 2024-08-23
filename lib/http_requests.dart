import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// website --> Album JSON --> Dart Class --> present the info Flutter

// DART Class <-> JSON
// class Album userID, id, title
// fromJSON --> Dart Object
class Album {
  final int userID;
  final int id;
  final String title;

  const Album({
    required this.userID,
    required this.id,
    required this.title
  });

  // factory keyword
  // var myAlbum = Album(1,2, 'This is my album');
  // method --> create an instance of object
  factory Album.fromJSON(Map<String, dynamic> json)
  {
    return Album(
      userID: json['userID'] ?? 0,
      id: json['id'] ?? 0,
      title: json['title'] ?? 'untitled'
    );
  }

}

// Function async Future album object (grab from the website)
// NO. 1 after albums file is HARD CODED TO ALWAYS GRAB ALBUM #1
Future<Album> fetchAlbum(int albumId) async {
  final response = await 
  // http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/${albumId}'));

  if (response.statusCode == 200)
  {
    return Album.fromJSON(jsonDecode(response.body));
  } 
  else
  {
    throw Exception('Failure to load Album');
  } 
}

// Flutter App --> Text Widget
void main()
{
  runApp(
    const MyApp()
  );
}

class MyApp extends StatefulWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State <MyApp>
{
  late Future<Album> futureAlbum;
  final TextEditingController _controller = TextEditingController();

  void _fetchAlbum()
  {
    int albumId = int.tryParse(_controller.text) ?? 1;

    setState(() {
      futureAlbum = fetchAlbum(albumId);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureAlbum = fetchAlbum(1);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'DEMO',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[700]
      ),
      home: Scaffold(
        appBar: AppBar(
        title: Text('GET HTTP EXAMPLE'),
        backgroundColor: Colors.brown,),
        body: Center(
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Album ID Number'),
            ),
            ElevatedButton(
              onPressed: _fetchAlbum, 
              child: const Text('Submit')
              ),
            FutureBuilder<Album>(
             future: futureAlbum,
             builder: (context, snapshot)
             {
                if (snapshot.hasData)
                {
                  return Text(snapshot.data!.title);
                }
                else if (snapshot.hasError)
                {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator.adaptive();
             }
             ,
             ),
            ],
            ),
      ),
    ));
  }
}

/*
FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot)
            {
              if (snapshot.hasData)
              {
                return Text('Title: ${snapshot.data!.title}');
              }
              else if(snapshot.hasError)
              {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
          ),

*/