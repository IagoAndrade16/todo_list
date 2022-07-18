import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../models/todo.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({Key? key, required this.todo, required this.onDelete,}) : super(key: key);

  final Todo todo;
  final Function(Todo) onDelete;

  @override
  Widget build(BuildContext context) {
    // ignore: sort_child_properties_last
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      // ignore: sort_child_properties_last
      child: Slidable(child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.grey[200],
          ),
          
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(todo.dateTime.toString()),
                Text(todo.title, style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ],
            ),
          ),
        ), 
        actionExtentRatio: 0.25,
        actionPane: const SlidableStrechActionPane(),
        secondaryActions: [
          IconSlideAction(
            caption: 'Deletar',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () {
              onDelete(todo);
            }
          )
        ],

      ),
    );
  }
}