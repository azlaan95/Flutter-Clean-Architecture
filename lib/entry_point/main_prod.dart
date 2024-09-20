import 'package:kanban_taskmanager/di/AppConfigure.dart';
import 'package:kanban_taskmanager/environment/production/production_env.dart';
import 'package:azl_presentation/app_main.dart';

Future<void> main() async {
  AppConfigure.configure(ProductionEnvironment.production(), enableMock: false);
  await myMain();
}
