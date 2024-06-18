import 'dart:collection';

import 'package:azl_domain/model/sections/section.dart';
import 'package:azl_domain/model/tasks/task.dart';
import 'package:equatable/equatable.dart';

class KanbanState extends Equatable {
  const KanbanState(
      {this.message,
      this.sections,
      this.loading,
      this.error,
      this.tasks,
      this.kanbanList,
      this.randomUpdate});

  final String? message;
  final HashMap<String, List<TodoTask>>? kanbanList;
  final List<Section>? sections;
  final List<TodoTask>? tasks;
  final bool? loading;
  final bool? error;
  final int? randomUpdate;

  @override
  List<Object?> get props =>
      [message, sections, tasks, loading, error, kanbanList, randomUpdate];

  KanbanState copyWith(
      {String? message,
      HashMap<String, List<TodoTask>>? kanbanList,
      List<Section>? sections,
      List<TodoTask>? tasks,
      bool? loading,
      bool? error,
      int? randomUpdate}) {
    return KanbanState(
        message: message ?? this.message,
        kanbanList: kanbanList ?? this.kanbanList,
        sections: sections ?? this.sections,
        tasks: tasks ?? this.tasks,
        loading: loading ?? this.loading,
        error: error ?? this.error,
        randomUpdate: randomUpdate ?? this.randomUpdate);
  }
}
