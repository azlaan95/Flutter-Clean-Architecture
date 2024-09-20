import 'package:azl_domain/model/tasks/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:azl_presentation/presentation/kanban_board/bloc/kanban_bloc.dart';

class KanbanDragTarget extends StatelessWidget {
  const KanbanDragTarget(
      {super.key, required this.targetSection, required this.targetOrder});

  final String targetSection;
  final int targetOrder;

  @override
  Widget build(BuildContext context) {
    return DragTarget<TodoTask>(
      builder: (context, candidateData, rejectedData) {
        if (candidateData.isEmpty) {
          return const Divider(
            thickness: 1, // Line thickness in pixels
            color: Colors.grey, // Line color
            indent: 20.0, // Indentation from the left side
            endIndent: 10.0, // Indentation from the right side
          );
        } else {
          return Container(
            color: Colors.green,
            height: 50,
            child: const Center(child: Text('Dropping...')),
          );
        }
      },
      onAcceptWithDetails: (details) {
        context.read<KanbanBloc>().updateList(
            targetSection: targetSection,
            targetOrder: targetOrder,
            droppedTask: details.data);
      },
      onWillAcceptWithDetails: (details) {
        return true;
      },
    );
  }
}
