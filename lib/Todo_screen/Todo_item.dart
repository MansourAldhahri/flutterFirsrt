import 'package:flutter/material.dart';
import 'package:flutter_app/model/character.dart';

class TodoItem extends StatefulWidget {
  Character character;
  TodoItem({super.key,required this.character});

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(
          widget.character.title,
          style: TextStyle(fontSize: 18),
        ),
        subtitle: Text(
          widget.character.id.toString(),
          style: TextStyle(fontSize: 18),
        ),
        trailing: Text(
          widget.character.userId.toString(),
          style: TextStyle(fontSize: 18),
        ),

      ),
    );;
  }
}
