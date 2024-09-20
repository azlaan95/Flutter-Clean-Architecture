import 'package:azl_data/api_constants/api_paths.dart';
import 'package:azl_data/base/base_repository.dart';
import 'package:azl_data/mocks/mocks.dart';
import 'package:azl_domain/base/reasponse_dto.dart';
import 'package:azl_domain/repository/sections_repository_type.dart';

class SectionsRepository extends BaseRepository implements SectionsRepositoryType {
  SectionsRepository({required super.appConfig, required super.apiClient});

  @override
  Future<ResponseDto> getSections() async {
    ResponseDto myResponse;
    if (appConfig.enableMock ?? false) {
      myResponse =
          ResponseDto(success: true, response: sectionsMock);
    } else {
      myResponse = await callGetApi(
          url: appConfig.getBaseUrl1(), apiPath: ApiPaths.sections);
    }
    return myResponse;
  }
}
