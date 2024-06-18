import 'package:envied/envied.dart';

part 'env_dev.g.dart';

@Envied(path: '.env.dev')
abstract class EnvDev {
  @EnviedField(obfuscate: true, varName: "BASEDOMAIN")
  static String BASEDOMAIN = _EnvDev.BASEDOMAIN;

  @EnviedField(obfuscate: true, varName: "URLPATH1")
  static String URLPATH1 = _EnvDev.URLPATH1;

  @EnviedField(obfuscate: true, varName: "TOKEN")
  static String TOKEN = _EnvDev.TOKEN;
}