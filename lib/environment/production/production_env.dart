import 'package:azl_clean_sample/environment/environment.dart';

extension ProductionEnvironment on Environment {
  static Environment production() {
    return Environment(
        baseDomain1: 'https://6423b770001cb9fc20449630.mockapi.io',
        urlPathDomain1: '/api/v1');
  }
}
