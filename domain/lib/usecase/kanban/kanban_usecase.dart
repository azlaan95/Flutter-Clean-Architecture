import 'package:azl_domain/base/error_response.dart';
import 'package:azl_domain/base/reasponse_dto.dart';
import 'package:azl_domain/model/sections/section.dart';
import 'package:azl_domain/model/tasks/task.dart';
import 'package:azl_domain/repository/sections_repository_type.dart';
import 'package:azl_domain/repository/tasks_repository_type.dart';
import 'package:azl_domain/usecase/kanban/kanban_usecase_type.dart';
import 'package:dartz/dartz.dart';

class KanbanUseCase extends KanbanUseCaseType {
  KanbanUseCase(
      {required this.taskRepository, required this.sectionsRepository});

  final TasksRepositoryType taskRepository;
  final SectionsRepositoryType sectionsRepository;

  @override
  Future<Either<CodeErrorResponse, List<Section>>> getSections() async {
    ResponseDto result = await sectionsRepository.getSections();
    if (result.success) {
      List<Section> sections = (result.response as List<dynamic>)
          .map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(sections);
    } else {
      return Left(CodeErrorResponse(100, result.errorResponse));
    }
  }

  @override
  Future<Either<CodeErrorResponse, List<TodoTask>>> getTasks() async {
    ResponseDto result = await taskRepository.getTasks();
    if (result.success) {
      List<TodoTask> tasks = (result.response as List<dynamic>)
          .map((e) => TodoTask.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(tasks);
    } else {
      return Left(CodeErrorResponse(100, result.errorResponse));
    }
  }

  @override
  Future<Either<ErrorResponse, TodoTask>> createTask(
      {required TodoTask task}) async {
    ResponseDto result = await taskRepository.createTask(task: task.toJson());
    if (result.success) {
      return Right(TodoTask.fromJson(result.response));
    } else {
      return Left(CodeErrorResponse(100, result.errorResponse));
    }
  }

  @override
  Future<Either<ErrorResponse, TodoTask>> updateTask(
      {required TodoTask task}) async {
    ResponseDto result = await taskRepository.updateTask(
        task: task.toJson(), taskId: task.id ?? "");
    if (result.success) {
      return Right(TodoTask.fromJson(result.response));
    } else {
      return Left(CodeErrorResponse(100, result.errorResponse));
    }
  }
}
