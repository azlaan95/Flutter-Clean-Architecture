import 'package:azl_data/api_constants/api_paths.dart';
import 'package:azl_data/base/base_repository.dart';
import 'package:azl_data/mocks/mocks.dart';
import 'package:azl_domain/base/reasponse_dto.dart';
import 'package:azl_domain/repository/comments_repository_type.dart';

class CommentsRepository extends BaseRepository implements CommentsRepositoryType {
  CommentsRepository({required super.appConfig, required super.apiClient});

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
