import 'package:azl_data/config/app_config_type.dart';
import 'package:azl_data/datasource/api_client/network_datasource.dart';
import 'package:azl_data/datasource/api_client/network_datasource_type.dart';
import 'package:azl_data/models/app_multipart.dart';
import 'package:azl_domain/base/reasponse_dto.dart';

class BaseRepository {
  BaseRepository({required this.appConfig, required this.apiClient});

  final AppConfigType appConfig;
  final NetworkDatasourceType apiClient;

  Future<ResponseDto> callGetApi(
      {required String url,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameter,
      Map<String, String>? headers,
      required String apiPath}) async {
    headers = {};
    ResponseDto response = await apiClient.apiRequest(
        url: url,
        method: RequestMethod.GET,
        body: body,
        queryParameter: queryParameter,
        headers: headers,
        apiPath: apiPath);
    return response;
  }

  Future<ResponseDto> callPostApi(
      {required String url,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameter,
      Map<String, String>? headers,
      required String apiPath}) async {
    ResponseDto response = await apiClient.apiRequest(
        url: url,
        method: RequestMethod.POST,
        body: body,
        queryParameter: queryParameter,
        headers: headers,
        apiPath: apiPath);
    return response;
  }

  Future<ResponseDto> callDeleteApi(
      {required String url,
      required RequestMethod method,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameter,
      Map<String, String>? headers,
      required String apiPath}) async {
    ResponseDto response = await apiClient.apiRequest(
        url: url, method: RequestMethod.DELETE, apiPath: apiPath);
    return response;
  }

  Future<ResponseDto> callPutApi(
      {required String url,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameter,
      Map<String, String>? headers,
      required String apiPath}) async {
    ResponseDto response = await apiClient.apiRequest(
        url: url,
        method: RequestMethod.PUT,
        body: body,
        queryParameter: queryParameter,
        headers: headers,
        apiPath: apiPath);
    return response;
  }

  Future<ResponseDto> callPatchApi(
      {required String url,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameter,
      Map<String, String>? headers,
      required String apiPath}) async {
    ResponseDto response = await apiClient.apiRequest(
        url: url,
        method: RequestMethod.PATCH,
        body: body,
        queryParameter: queryParameter,
        headers: headers,
        apiPath: apiPath);
    return response;
  }

  Future<ResponseDto> callMultipartApi(
      {required String url,
      required AppMultiPartRequest multiPart,
      Map<String, String>? headers,
      required String apiPath}) async {
    ResponseDto response = await apiClient.multipartRequest(
        url: url, multiPart: multiPart, headers: headers, apiPath: apiPath);
    return response;
  }

  Map<String, String> mapHeaders(Map<String, String>? headers) {
    Map<String, String> newHeaders = headers ?? {};
    if (appConfig.token?.isNotEmpty ?? false) {
      newHeaders.putIfAbsent("Authorization", () => appConfig.token ?? "");
    }
    return newHeaders;
  }
}
