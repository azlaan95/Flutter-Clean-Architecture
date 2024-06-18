import 'package:environments/env/env_dev.dart';
import 'package:azl_data/config/environment.dart';

extension DevelopmentEnvironment on Environment {
  static Environment development() {
    return Environment(
        baseUrl: EnvDev.BASEDOMAIN,
        path1: EnvDev.URLPATH1,
        token: EnvDev.TOKEN);
  }
}
