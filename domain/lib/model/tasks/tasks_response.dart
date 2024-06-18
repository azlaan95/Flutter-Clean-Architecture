import 'package:azl_domain/model/tasks/task.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tasks_response.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class TasksResponse {
  @JsonKey(name: 'tasks')
  final List<TodoTask>? tasks;

  TasksResponse({this.tasks});

  factory TasksResponse.fromJson(Map<String, dynamic> json) =>
      _$TasksResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TasksResponseToJson(this);
}
