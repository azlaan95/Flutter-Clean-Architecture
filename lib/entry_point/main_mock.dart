import 'package:kanban_taskmanager/di/AppConfigure.dart';
import 'package:kanban_taskmanager/environment/development/development_env.dart';
import 'package:azl_presentation/app_main.dart';

Future<void> main() async {
  AppConfigure.configure(DevelopmentEnvironment.development(),
      enableMock: true);
  await myMain();
}
