import 'dart:convert';

import 'package:azl_data/datasource/api_client/network_datasource.dart';
import 'package:azl_data/di/datasource_module.dart';
import 'package:azl_data/models/app_multipart.dart';
import 'package:azl_domain/base/app_base_response.dart';
import 'package:azl_domain/base/app_config_type.dart';
import 'package:http/http.dart' as http;

class BaseRepository with DatasourceModule {
  BaseRepository({required this.appConfig});

  final AppConfigType appConfig;

  Future<AppBaseResponse> callGetApi(
      {required String url,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameter,
      Map<String, String>? headers,
      required String apiPath}) async {
    http.Response response = await apiClient.apiRequest(
        url: url,
        method: RequestMethod.GET,
        body: body,
        queryParameter: queryParameter,
        headers: headers,
        apiPath: apiPath);
    return getAppResponse(response);
  }

  Future<AppBaseResponse> callPostApi(
      {required String url,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameter,
      Map<String, String>? headers,
      required String apiPath}) async {
    http.Response response = await apiClient.apiRequest(
        url: url,
        method: RequestMethod.POST,
        body: body,
        queryParameter: queryParameter,
        headers: headers,
        apiPath: apiPath);
    return getAppResponse(response);
  }

  Future<AppBaseResponse> callDeleteApi(
      {required String url,
      required RequestMethod method,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameter,
      Map<String, String>? headers,
      required String apiPath}) async {
    http.Response response = await apiClient.apiRequest(
        url: url, method: RequestMethod.DELETE, apiPath: apiPath);
    return getAppResponse(response);
  }

  Future<AppBaseResponse> callPutApi(
      {required String url,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameter,
      Map<String, String>? headers,
      required String apiPath}) async {
    http.Response response = await apiClient.apiRequest(
        url: url,
        method: RequestMethod.PUT,
        body: body,
        queryParameter: queryParameter,
        headers: headers,
        apiPath: apiPath);
    return getAppResponse(response);
  }

  Future<AppBaseResponse> callPatchApi(
      {required String url,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameter,
      Map<String, String>? headers,
      required String apiPath}) async {
    http.Response response = await apiClient.apiRequest(
        url: url,
        method: RequestMethod.PATCH,
        body: body,
        queryParameter: queryParameter,
        headers: headers,
        apiPath: apiPath);
    return getAppResponse(response);
  }

  Future<AppBaseResponse> callMultipartApi(
      {required String url,
      required AppMultiPartRequest multiPart,
      Map<String, String>? headers,
      required String apiPath}) async {
    http.Response response = await apiClient.multipartRequest(
        url: url, multiPart: multiPart, headers: headers, apiPath: apiPath);
    return getAppResponse(response);
  }

  AppBaseResponse getAppResponse(http.Response response) {
    try {
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        return AppBaseResponse(success: true, response: jsonData);
      } else {
        final jsonData = jsonDecode(response.body);
        return AppBaseResponse(success: false, response: jsonData);
      }
    } catch (e) {
      return AppBaseResponse(success: false, response: e, isException: true);
    }
  }
}
