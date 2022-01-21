import 'package:flutter/material.dart';
import 'package:todolistapp/widgets/todo_item.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List Page"),
      ),
      body: Stack(
        children: [
          ListView(
            children: const [TodoItem(), TodoItem()],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                    child: ListTile(
                      leading: IconButton(
                        color: Colors.white,
                        icon: const Icon(Icons.add),
                        onPressed: () {},
                      ),
                      title: const TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            hintText: "Add a task",
                            border: InputBorder.none),
                      ),
                    ),
                    color: Colors.grey[800]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
