import 'package:azl_clean_sample/my_app.dart';

import 'config/app_config.dart';
import 'environment/environment.dart';
import 'package:azl_clean_sample/main.dart' as app;

Future<void> main() async {
  AppConfig(env: Environment.production());
  await myMain();
}
