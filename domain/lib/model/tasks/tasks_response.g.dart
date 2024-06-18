// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TasksResponse _$TasksResponseFromJson(Map<String, dynamic> json) =>
    TasksResponse(
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => TodoTask.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TasksResponseToJson(TasksResponse instance) =>
    <String, dynamic>{
      'tasks': instance.tasks,
    };
