import 'package:kanban_taskmanager/di/AppConfigure.dart';
import 'package:kanban_taskmanager/environment/development/development_env.dart';

import 'my_app.dart';

Future<void> main() async {
  AppConfigure.configure(DevelopmentEnvironment.development());
  await myMain();
}
