import 'package:azl_data/config/app_config_type.dart';
import 'package:azl_data/config/environment.dart';
import 'package:http/src/response.dart';

class AppConfig implements AppConfigType {
  static final AppConfig shared = AppConfig._instance();

  factory AppConfig({required Environment env, bool? enableMock = false}) {
    shared.env = env;
    shared.enableMock = enableMock;
    return shared;
  }

  AppConfig._instance();

  Environment? env;

  @override
  enableIntercept(Response response) {
    print(response.body);
  }

  @override
  String getBaseUrl1() {
    return (env?.baseUrl ?? '') + (env?.path1 ?? '');
  }

  @override
  String? token;

  @override
  bool? enableMock;
}
