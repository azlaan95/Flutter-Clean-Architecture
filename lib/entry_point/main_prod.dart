import 'package:kanban_taskmanager/di/AppConfigure.dart';
import 'package:kanban_taskmanager/environment/development/development_env.dart';
import 'my_app.dart';
import 'package:azl_data/config/app_config.dart';

//Todo: Place you Test Token here
const String testToken = "";

Future<void> main() async {
  AppConfigure.configure(DevelopmentEnvironment.development());
  AppConfig.shared.token = "Bearer $testToken";
  await myMain();
}
