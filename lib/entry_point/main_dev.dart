import 'package:azl_data/config/app_config.dart';
import 'package:environments/env/env_dev.dart';
import 'package:kanban_taskmanager/di/AppConfigure.dart';
import 'package:kanban_taskmanager/environment/development/development_env.dart';
import 'package:azl_presentation/app_main.dart';


Future<void> main() async {
  AppConfigure.configure(DevelopmentEnvironment.development(), enableMock: false);
  AppConfig.shared.token = "Bearer ${EnvDev.TOKEN}";
  await myMain();
}
