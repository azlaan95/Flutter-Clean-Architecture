import 'dart:convert';

import 'package:azl_data/config/app_config.dart';
import 'package:azl_data/datasource/api_client/network_datasource_type.dart';
import 'package:azl_data/models/app_multipart.dart';
import 'package:azl_data/models/reasponse_dto.dart';
import 'package:http/http.dart';

enum RequestMethod { GET, POST, PATCH, DELETE, PUT }

class NetworkDatasource implements NetworkDatasourceType {
  static final NetworkDatasource _instance = NetworkDatasource._internal();

  // using a factory is important
  // because it promises to return _an_ object of this type
  // but it doesn't promise to make a new one.
  factory NetworkDatasource() {
    return _instance;
  }

  // This named constructor is the "real" constructor
  // It'll be called exactly once, by the static property assignment above
  // it's also private, so it can only be called in this class
  NetworkDatasource._internal();

  final Client _innerClient = Client();
  final List<Function(BaseRequest request)> _interceptors = [];

  //AppHttpClient(this._innerClient);

  void addInterceptor(Function(BaseRequest request) interceptor) {
    _interceptors.add(interceptor);
  }

  Future<Response> get(Uri url) async {
    Request request = Request('GET', url);
    await _applyInterceptors(request);
    final response = await _innerClient.send(request);
    return Response.fromStream(response);
  }

  Future<void> _applyInterceptors(BaseRequest request) async {
    if (AppConfig.shared.token?.isNotEmpty ?? false) {
      request.headers
          .putIfAbsent("Authorization", () => AppConfig.shared.token ?? "");
    }
    request.headers
        .putIfAbsent("Content-Type", () => "application/json; charset=UTF-8");
    request.headers
        .putIfAbsent("Accept", () => "application/json; charset=UTF-8");
    /* for (var interceptor in _interceptors) {
      await interceptor(request);
    }*/
  }

  @override
  Future<ResponseDto> apiRequest({required String url,
    required RequestMethod method,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameter,
    Map<String, String>? headers,
    required String apiPath}) async {
    final Uri uri =
    Uri.parse(generateUrl(url: url, path: apiPath, params: queryParameter));
    try {
      Request request = Request(method.name, uri);
      request.headers.addAll(headers ?? {});
      if (AppConfig.shared.token?.isNotEmpty ?? false) {
        request.headers
            .putIfAbsent("Authorization", () => AppConfig.shared.token ?? "");
      }
      request.headers
          .putIfAbsent("Content-Type", () => "application/json; charset=UTF-8");
      request.headers
          .putIfAbsent("Accept", () => "application/json; charset=UTF-8");
      if (method != RequestMethod.GET) {
        request.body = jsonEncode(body);
      }

      //await _applyInterceptors(request);
      var streamResponse = await _innerClient.send(request);
      Response response = await Response.fromStream(streamResponse);

      return getAppResponse(response);
    } catch (e) {
      return getAppResponse(Response(
          jsonEncode({
            "url": uri.path,
            "error": e,
            "request": body,
            "headers": headers,
            "method": method
          }),
          505));
    }
  }

  @override
  Future<ResponseDto> multipartRequest({required String url,
    required AppMultiPartRequest multiPart,
    Map<String, String>? headers,
    required String apiPath}) async {
    final Uri uri = Uri.parse(generateUrl(url: url, path: apiPath));
    try {
      //Response response;
      MultipartRequest request = MultipartRequest("POST", uri);
      request.fields.addAll(multiPart.fields ?? {});
      request.files.addAll(multiPart.files ?? []);
      request.headers.addAll(headers ?? {});
      await _applyInterceptors(request);
      var streamResponse = await _innerClient.send(request);
      Response response = await Response.fromStream(streamResponse);
      return getAppResponse(response);
    } catch (e) {
      return getAppResponse(Response(
          jsonEncode({
            "url": uri.path,
            "error": e,
            "request": multiPart,
            "headers": headers,
            "method": "MULTIPART"
          }),
          505));
    }
  }

  ResponseDto getAppResponse(Response response) {
    try {
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        return ResponseDto(success: true, response: jsonData);
      } else if (response.statusCode == 505) {
        return ResponseDto(success: false, errorResponse: response);
      } else {
        final jsonData = jsonDecode(response.body);
        return ResponseDto(success: false, response: jsonData);
      }
    } catch (e) {
      return ResponseDto(success: false, errorResponse: e, isException: true);
    }
  }

  String generateUrl(
      {required String url, Map<String, dynamic>? params, String? path}) {
    if (params == null) return url + (path ?? '');
    List queryString = [];
    params.forEach((key, value) {
      if (value != null) {
        queryString.add('$key=$value');
      }
    });
    String queryPath = queryString.join('&');
    return url + (path != null ? "$path?" : "") + queryPath;
  }
}
