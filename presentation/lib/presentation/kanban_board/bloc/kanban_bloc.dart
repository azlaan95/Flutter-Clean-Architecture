import 'dart:collection';
import 'dart:math';

import 'package:azl_domain/model/sections/section.dart';
import 'package:azl_domain/model/tasks/task.dart';
import 'package:azl_domain/usecase/kanban/kanban_usecase_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:azl_presentation/presentation/kanban_board/bloc/kanban_state.dart';

class KanbanBloc extends Cubit<KanbanState> {
  KanbanBloc(this.useCaseType) : super(const KanbanState(loading: true));

  final KanbanUseCaseType useCaseType;

  getSections() async {
    final result = await useCaseType.getSections();
    result.fold((error) {
      emit(state.copyWith(loading: false, message: error.message, error: true));
    }, (success) {
      getTasks(sections: success);
    });
  }

  getTasks({required List<Section> sections}) async {
    final result = await useCaseType.getTasks();
    result.fold((error) {
      emit(state.copyWith(loading: false, message: error.message, error: true));
    }, (successTasks) {
      generateSectionMap(sections: sections, tasks: successTasks);
    });
  }

  Future<bool> updateTask({required TodoTask task}) async {
    final result = await useCaseType.updateTask(task: task);
    if (result.isLeft()) {
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  generateSectionMap(
      {required List<Section> sections, required List<TodoTask> tasks}) {
    HashMap<String, List<TodoTask>> kanbanList = HashMap();
    for (var section in sections) {
      List<TodoTask> filteredTasks = tasks.where(
        (taskElement) {
          return (taskElement.sectionId == section.id);
        },
      ).toList();
      filteredTasks.sort((a, b) => (a.order ?? 0).compareTo((b.order ?? 0)));
      kanbanList.putIfAbsent(
        section.id ?? "",
        () => filteredTasks,
      );
    }
    emit(state.copyWith(
        loading: false,
        kanbanList: kanbanList,
        sections: sections,
        tasks: tasks,
        error: false));
  }

  updateList(
      {required String targetSection,
      required int targetOrder,
      required TodoTask droppedTask}) async {
    HashMap<String, List<TodoTask>> kanbanTasks = state.kanbanList ?? HashMap();
    TodoTask updatedTask =
        droppedTask.copyWith(order: targetOrder + 1, sectionId: targetSection);
    kanbanTasks[targetSection]?.insert(targetOrder, updatedTask);
    //bool isAdded = await updateTask(task: updatedTask);
    //if (!isAdded) return;
    if (targetSection == droppedTask.sectionId) {
      kanbanTasks[targetSection]?.remove(droppedTask);
    } else {
      kanbanTasks[droppedTask.sectionId]?.remove(droppedTask);
    }
    emit(state.copyWith(
        kanbanList: kanbanTasks, randomUpdate: Random().nextInt(10)));
  }
}
