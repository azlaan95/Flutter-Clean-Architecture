import 'package:environments/env/env_prod.dart';

main() {
  print("BASEURL IS :: ${EnvProd.BASEDOMAIN}");
  print("PATH IS :: ${EnvProd.URLPATH1}");
  print("TOEN IS :: ${EnvProd.TOKEN}");
}
