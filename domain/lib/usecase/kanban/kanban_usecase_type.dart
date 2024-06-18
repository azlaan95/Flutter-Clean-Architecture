import 'package:azl_domain/base/error_response.dart';
import 'package:azl_domain/model/sections/section.dart';
import 'package:azl_domain/model/tasks/task.dart';
import 'package:dartz/dartz.dart';

abstract class KanbanUseCaseType {
  Future<Either<ErrorResponse, List<TodoTask>>> getTasks();

  Future<Either<ErrorResponse, List<Section>>> getSections();

  Future<Either<ErrorResponse, TodoTask>> updateTask({required TodoTask task});

  Future<Either<ErrorResponse, TodoTask>> createTask({required TodoTask task});
}
