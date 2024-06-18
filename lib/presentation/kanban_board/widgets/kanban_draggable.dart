import 'package:azl_domain/model/tasks/task.dart';
import 'package:flutter/material.dart';

class KanbanDraggable extends StatelessWidget {
  const KanbanDraggable({super.key, required this.draggableTask});

  final TodoTask? draggableTask;

  @override
  Widget build(BuildContext context) {
    return Draggable<TodoTask>(
      data: draggableTask,
      childWhenDragging: const SizedBox(
        height: 50,
        child: Center(child: Text('Dragging...')),
      ),
      feedback: Card(
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(draggableTask?.content ?? ""),
            ],
          ),
        ),
      ),
      child: Card(
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(draggableTask?.content ?? ""),
            ],
          ),
        ),
      ),
      onDragUpdate: (details) {},
    );
  }
}
