import 'package:http/src/response.dart';

abstract class AppConfigType {
  String getBaseUrl1();

  String? token;

  bool? enableMock;

  enableIntercept(Response response);
}
