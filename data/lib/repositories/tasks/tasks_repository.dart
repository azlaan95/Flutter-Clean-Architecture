import 'package:azl_data/api_constants/api_paths.dart';
import 'package:azl_data/base/base_repository.dart';
import 'package:azl_data/mocks/mocks.dart';
import 'package:azl_domain/base/reasponse_dto.dart';
import 'package:azl_domain/repository/tasks_repository_type.dart';

class TasksRepository extends BaseRepository implements TasksRepositoryType {
  TasksRepository({required super.appConfig, required super.apiClient});

  @override
  Future<ResponseDto> getTasks() async {
    ResponseDto myResponse;
    if (appConfig.enableMock ?? false) {
      myResponse = ResponseDto(success: true, response: tasksMock);
    } else {
      myResponse = await callGetApi(
          url: appConfig.getBaseUrl1(), apiPath: ApiPaths.tasks);
    }
    return myResponse;
  }

  @override
  Future<ResponseDto> createTask({required Map<String, dynamic> task}) async {
    ResponseDto myResponse;
    if (appConfig.enableMock ?? false) {
      myResponse = ResponseDto(success: true, response: tasksMock);
    } else {
      myResponse = await callPostApi(
          url: appConfig.getBaseUrl1(), apiPath: ApiPaths.tasks);
    }
    return myResponse;
  }

  @override
  Future<ResponseDto> updateTask(
      {required Map<String, dynamic> task, required String taskId}) async {
    ResponseDto myResponse;
    if (appConfig.enableMock ?? false) {
      myResponse = ResponseDto(success: true, response: tasksMock);
    } else {
      myResponse = await callPostApi(
          url: appConfig.getBaseUrl1(), apiPath: "${ApiPaths.tasks}/$taskId", body: task);
    }
    return myResponse;
  }
}
