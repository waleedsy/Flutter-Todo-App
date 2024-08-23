import 'package:flutter/material.dart';

class Todo{
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

List <Todo> mycustomlist = [
  Todo('Paint House', 'Paint it black'),
  Todo('Pet the dog', 'Use a comb to brush as well'),
  Todo('Go to moon', 'Dont forget to use rockets!')
  ];

void main() => runApp(
  MaterialApp(
    title: 'App',
    home: TodoScreen(todos: mycustomlist),
  )
);

class TodoScreen extends StatelessWidget
{
  const TodoScreen({Key? key, required this.todos}): super(key: key);

  final List<Todo> todos;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todos'),),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index)
        {
         // Todo (object instance tools[index])
         // .title, .description
          return ListTile(title: Text(todos[index].title),
          onTap: () {
            Navigator.push(
              context, MaterialPageRoute(
              builder: (context) => DetailSreen(todo: todos[index])));
          }
          );
        },
      ),
        );
  }
}

class DetailSreen extends StatelessWidget
{
  const DetailSreen({Key? key, required this.todo}): super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(todo.title)),
      body: Center(child: Text(todo.description))
    );
  }
}