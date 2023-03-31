import 'package:azl_clean_sample/my_app.dart';

import 'config/app_config.dart';
import 'environment/environment.dart';

Future<void> main() async {
  AppConfig(env: Environment.development());
  await myMain();
}
