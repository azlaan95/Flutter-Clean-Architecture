import 'package:azl_data/base/base_repository.dart';
import 'package:azl_data/models/reasponse_dto.dart';

abstract class TasksRepositoryType extends BaseRepository {
  TasksRepositoryType({required super.appConfig});

  Future<ResponseDto> getTasks();

  Future<ResponseDto> createTask({required Map<String, dynamic> task});

  Future<ResponseDto> updateTask(
      {required Map<String, dynamic> task, required String taskId});
}
