import 'package:azl_domain/model/sections/section.dart';
import 'package:azl_domain/model/tasks/task.dart';
import 'package:azl_presentation/presentation/kanban_board/bloc/kanban_bloc.dart';
import 'package:azl_presentation/presentation/kanban_board/bloc/kanban_state.dart';
import 'package:azl_presentation/presentation/kanban_board/widgets/kanban_drag_target.dart';
import 'package:azl_presentation/presentation/kanban_board/widgets/kanban_draggable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class KanbanScreen extends StatelessWidget {
  const KanbanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<KanbanBloc>(
      create: (context) {
        KanbanBloc bloc = KanbanBloc(GetIt.I());
        SchedulerBinding.instance.addPostFrameCallback((_) {
          bloc.getSections();
        });
        return bloc;
      },
      child: const KanbanPage(),
    );
  }
}

class KanbanPage extends StatelessWidget {
  const KanbanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users List"),
      ),
      body: BlocBuilder<KanbanBloc, KanbanState>(builder: (context, state) {
        if (state.loading ?? false) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.error ?? false) {
          return Center(
            child: Text(
              state.message ?? "",
              textAlign: TextAlign.center,
            ),
          );
        }
        return ListView.builder(
          itemCount: state.sections?.length ?? 0,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, sectionIndex) {
            Section? sectionListItem = state.sections?[sectionIndex];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Light gray color
                  borderRadius: BorderRadius.circular(
                      10.0), // Border radius for rounded corners
                ),
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      elevation: 5.0,
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      clipBehavior: Clip.antiAlias,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(sectionListItem?.name ?? ""),
                          ],
                        ),
                      ),
                    ),
                    KanbanDragTarget(
                        targetSection: sectionListItem?.id ?? "",
                        targetOrder: 0),
                    Expanded(
                      child: ListView.builder(
                        itemCount:
                            state.kanbanList?[sectionListItem?.id]?.length ?? 0,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, taskIndex) {
                          TodoTask? taskListItem = state
                              .kanbanList?[sectionListItem?.id]?[taskIndex];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              KanbanDraggable(draggableTask: taskListItem),
                              KanbanDragTarget(
                                  targetSection: sectionListItem?.id ?? "",
                                  targetOrder: taskIndex + 1),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
