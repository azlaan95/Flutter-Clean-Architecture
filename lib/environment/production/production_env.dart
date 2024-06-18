import 'package:environments/env/env_prod.dart';
import 'package:azl_data/config/environment.dart';

extension ProductionEnvironment on Environment {
  static Environment production() {
    return Environment(
        baseUrl: EnvProd.BASEDOMAIN,
        path1: EnvProd.URLPATH1,
        token: EnvProd.TOKEN);
  }
}
