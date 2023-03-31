import 'dart:convert';

import 'package:azl_data/datasource/api_client/network_datasource_type.dart';
import 'package:azl_data/models/app_multipart.dart';
import 'package:http/http.dart' as http;
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

  @override
  Future<http.Response> apiRequest(
      {required String url,
      required RequestMethod method,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameter,
      Map<String, String>? headers,
      required String apiPath}) async {
    final Uri uri =
        Uri.parse(generateUrl(url: url, path: apiPath, params: queryParameter));
    try {
      http.Response response;
      switch (method) {
        case RequestMethod.GET:
          response = await http.get(uri, headers: headers);
          break;
        case RequestMethod.POST:
          response =
              await http.post(uri, body: jsonEncode(body), headers: headers);
          break;
        case RequestMethod.PATCH:
          response =
              await http.patch(uri, body: jsonEncode(body), headers: headers);
          break;
        case RequestMethod.PUT:
          response =
              await http.put(uri, body: jsonEncode(body), headers: headers);
          break;
        case RequestMethod.DELETE:
          response = await http.delete(uri, headers: headers);
          break;
        default:
          response = await http.get(uri, headers: headers);
      }
      return response;
    } catch (e) {
      return Response(
          jsonEncode({
            "url": uri.path,
            "error": e,
            "request": body,
            "headers": headers,
            "method": method
          }),
          505);
    }
  }

  @override
  Future<http.Response> multipartRequest(
      {required String url,
      required AppMultiPartRequest multiPart,
      Map<String, String>? headers,
      required String apiPath}) async {
    final Uri uri = Uri.parse(generateUrl(url: url, path: apiPath));
    try {
      http.Response response;
      MultipartRequest request = http.MultipartRequest("POST", uri);
      request.fields.addAll(multiPart.fields ?? {});
      request.files.addAll(multiPart.files ?? []);
      request.headers.addAll(headers ?? {});
      StreamedResponse multipartResponse = await request.send();
      response = await http.Response.fromStream(multipartResponse);
      return response;
    } catch (e) {
      return Response(
          jsonEncode({
            "url": uri.path,
            "error": e,
            "request": multiPart,
            "headers": headers,
            "method": "Multipart"
          }),
          505);
    }
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
