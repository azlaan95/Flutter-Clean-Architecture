import 'package:azl_data/models/app_multipart.dart';
import 'package:azl_data/models/reasponse_dto.dart';

import 'network_datasource.dart';

abstract class NetworkDatasourceType {
  Future<ResponseDto> apiRequest(
      {required String url,
      required RequestMethod method,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameter,
      Map<String, String>? headers,
      required String apiPath});

  Future<ResponseDto> multipartRequest(
      {required String url,
      required AppMultiPartRequest multiPart,
      Map<String, String>? headers,
      required String apiPath});
}
