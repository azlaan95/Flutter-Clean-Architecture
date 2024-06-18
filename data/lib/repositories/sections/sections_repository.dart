import 'package:azl_data/api_constants/api_paths.dart';
import 'package:azl_data/mocks/mocks.dart';
import 'package:azl_data/models/reasponse_dto.dart';
import 'package:azl_data/repositories/sections/sections_repository_type.dart';

class SectionsRepository extends SectionsRepositoryType {
  SectionsRepository({required super.appConfig});

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
