import 'package:azl_domain/base/reasponse_dto.dart';

abstract class TasksRepositoryType {

  Future<ResponseDto> getTasks();

  Future<ResponseDto> createTask({required Map<String, dynamic> task});

  Future<ResponseDto> updateTask(
      {required Map<String, dynamic> task, required String taskId});
}
