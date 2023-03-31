import 'package:azl_clean_sample/environment/environment.dart';
import 'package:azl_domain/base/app_config_type.dart';

class AppConfig with AppConfigType {
  static final AppConfig shared = AppConfig._instance();

  factory AppConfig({required Environment env}) {
    shared.env = env;
    return shared;
  }

  AppConfig._instance();

  Environment? env;

  @override
  String get baseUrl1 => (env?.baseDomain1 ?? '') + (env?.urlPathDomain1 ?? '');

  @override
  String get baseUrl2 => (env?.baseDomain2 ?? '') + (env?.urlPathDomain2 ?? '');
}
