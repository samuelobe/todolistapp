import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  final String? text;
  const TodoItem({Key? key, this.text}) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4),
      child: Card(
        color: Colors.grey[800],
        child: ListTile(
          leading: Checkbox(
              value: isChecked,
              activeColor: const Color.fromRGBO(120, 140, 222, 1),
              shape: const CircleBorder(),
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              }),
          title: Text(
            widget.text ?? "TILE TEXT",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
