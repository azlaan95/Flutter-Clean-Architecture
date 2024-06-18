import 'package:azl_data/base/base_repository.dart';
import 'package:azl_data/models/reasponse_dto.dart';

abstract class SectionsRepositoryType extends BaseRepository {
  SectionsRepositoryType({required super.appConfig});

  Future<ResponseDto> getSections();
}
