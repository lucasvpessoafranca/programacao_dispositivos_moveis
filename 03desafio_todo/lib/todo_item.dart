import 'package:flutter/material.dart';
import './models/todo.dart';
class TodoItem extends StatelessWidget {

  final ToDo todo;
  final onToDoChange;
  const TodoItem({Key? key, required this.todo, required this.onToDoChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.symmetric(horizontal: 0),
        child: ListTile(
      onTap: () {
        onToDoChange(todo);
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      tileColor: Colors.white,
      leading: Icon(todo.isDone? Icons.check_box : Icons.check_box_outline_blank, color: Colors.blue,  ),
      title: Text(todo.todoText! , style: TextStyle(fontSize: 16,color: Colors.black, decoration:
      todo.isDone ? TextDecoration.lineThrough : null,),),
    ));
  }
}
