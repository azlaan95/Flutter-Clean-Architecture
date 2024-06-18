import 'package:envied/envied.dart';

part 'env_prod.g.dart';

@Envied(path: '.env.prod')
abstract class EnvProd {
  @EnviedField(obfuscate: true, varName: "BASEDOMAIN")
  static String BASEDOMAIN = _EnvProd.BASEDOMAIN;

  @EnviedField(obfuscate: true, varName: "URLPATH1")
  static String URLPATH1 = _EnvProd.URLPATH1;

  @EnviedField(obfuscate: true, varName: "TOKEN")
  static String TOKEN = _EnvProd.TOKEN;
}
