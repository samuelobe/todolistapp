import 'package:flutter/material.dart';
import 'package:todolistapp/widgets/todo_item.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final TextEditingController _textController = TextEditingController();
  List<String> todoItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List Page"),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: todoItems.length,
            itemBuilder: (BuildContext context, int index) {
              return TodoItem(
                text: todoItems[index],
              );
            },
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
                        onPressed: () {
                          setState(() {
                            todoItems.add(_textController.text);
                            _textController.clear();
                          });
                        },
                      ),
                      title: TextField(
                        style: const TextStyle(color: Colors.white),
                        controller: _textController,
                        onChanged: (value) {},
                        autofocus: true,
                        decoration: const InputDecoration(
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
