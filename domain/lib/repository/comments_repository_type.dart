
import 'package:azl_domain/base/reasponse_dto.dart';

abstract class CommentsRepositoryType {

  Future<ResponseDto> getComments();
}
