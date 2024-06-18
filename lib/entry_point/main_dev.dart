import 'package:azl_data/config/app_config.dart';
import 'package:environments/env/env_dev.dart';
import 'package:kanban_taskmanager/di/AppConfigure.dart';
import 'package:kanban_taskmanager/environment/development/development_env.dart';

import 'my_app.dart';

Future<void> main() async {
  AppConfigure.configure(DevelopmentEnvironment.development());
  AppConfig.shared.token = "Bearer ${EnvDev.TOKEN}";
  await myMain();
}
