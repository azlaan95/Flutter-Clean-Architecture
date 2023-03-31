import 'package:azl_data/models/app_multipart.dart';

import 'network_datasource.dart';
import 'package:http/http.dart' as http;

abstract class NetworkDatasourceType {
  Future<http.Response> apiRequest(
      {required String url,
      required RequestMethod method,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameter,
      Map<String, String>? headers,
      required String apiPath});

  Future<http.Response> multipartRequest(
      {required String url,
      required AppMultiPartRequest multiPart,
      Map<String, String>? headers,
      required String apiPath});
}
