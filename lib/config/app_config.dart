import 'package:azl_clean_sample/environment/environment.dart';
import 'package:azl_clean_sample/router/navigation_controller.dart';
import 'package:azl_domain/base/app_config_type.dart';
// import 'package:alice/alice.dart';
import 'package:http/src/response.dart';

class AppConfig with AppConfigType {
  static final AppConfig shared = AppConfig._instance();
  // late Alice alice;
  factory AppConfig({required Environment env}) {
    shared.env = env;
    /*shared.alice = Alice(
        navigatorKey: NavigationController.globalNavigatorKey,
        showNotification: true);*/
    return shared;
  }

  AppConfig._instance();

  Environment? env;

  @override
  String get baseUrl1 => (env?.baseDomain1 ?? '') + (env?.urlPathDomain1 ?? '');

  @override
  String get baseUrl2 => (env?.baseDomain2 ?? '') + (env?.urlPathDomain2 ?? '');

  @override
  enableIntercept(Response response) {
    //alice.onHttpResponse(response);
  }
}
