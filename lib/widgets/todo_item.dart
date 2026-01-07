import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

import '../models/todo_model.dart';

class ToDoItems extends StatelessWidget {
  final ToDo toDo;
  final onTodoChange;
  final onDeletedItem;
  const ToDoItems({
    super.key,
    required this.toDo,
    required this.onTodoChange,
    required this.onDeletedItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onTodoChange(toDo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsetsGeometry.symmetric(
          vertical: 5,
          horizontal: 20,
        ),
        tileColor: Colors.white,
        leading: Icon(
          toDo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          toDo.todoText!,
          style: TextStyle(
            color: tdBlack,
            fontSize: 20,
            decoration: toDo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete, color: Colors.white, size: 18),
          ),
        ),
      ),
    );
  }
}
