import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolistapp/cubit/todo_cubit.dart';
import 'package:todolistapp/models/todo.dart';
import 'package:todolistapp/widgets/todo_item.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final TextEditingController _textController = TextEditingController();
  // List<String> todoItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List Page"),
      ),
      body: BlocConsumer<TodoCubit, List<Todo>>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = context.read<TodoCubit>();
          return Stack(
            children: [
              ListView.builder(
                itemCount: state.length,
                itemBuilder: (BuildContext context, int index) {
                  return TodoItem(
                    text: state[index].taskName,
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
                              cubit.addTodo(
                                  Todo(taskName: _textController.text));
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
          );
        },
      ),
    );
  }
}
