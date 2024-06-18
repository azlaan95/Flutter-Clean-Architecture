import 'package:azl_data/api_constants/api_paths.dart';
import 'package:azl_data/mocks/mocks.dart';
import 'package:azl_data/models/reasponse_dto.dart';
import 'package:azl_data/repositories/comments/comments_repository_type.dart';

class CommentsRepository extends CommentsRepositoryType {
  CommentsRepository({required super.appConfig});

  @override
  Future<ResponseDto> getComments() async {
    ResponseDto myResponse;
    if (appConfig.enableMock ?? false) {
      myResponse =
          ResponseDto(success: true, response: {"comments": tasksMock});
    } else {
      myResponse = await callGetApi(
          url: appConfig.getBaseUrl1(), apiPath: ApiPaths.tasks);
    }
    return myResponse;
  }
}
