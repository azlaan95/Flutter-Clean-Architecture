import 'package:http/http.dart';

import 'package:azl_data/datasource/api_client/network_datasource.dart';

main() async {
  Response response = await NetworkDatasource().apiRequest(
      url: 'https://6423b770001cb9fc20449630.mockapi.io/api/',
      method: RequestMethod.GET,
      apiPath: 'v1/users');

  print(response.body);
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
