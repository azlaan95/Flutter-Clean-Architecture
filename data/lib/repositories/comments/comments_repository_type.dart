import 'package:azl_data/base/base_repository.dart';
import 'package:azl_data/models/reasponse_dto.dart';

abstract class CommentsRepositoryType extends BaseRepository {
  CommentsRepositoryType({required super.appConfig});

  Future<ResponseDto> getComments();
}
